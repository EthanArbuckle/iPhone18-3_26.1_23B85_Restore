void *sub_25BB0367C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38B0, &qword_25BCBB870);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38A8, &qword_25BCBB868);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB03794(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38B8, &qword_25BCBB878);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38A0, &qword_25BCBB860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB038AC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3890, &qword_25BCBB850);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3888, &qword_25BCBB848);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB039BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3898, &qword_25BCBB858);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3880, &qword_25BCBB840);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB03ACC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3990, &qword_25BCBB930);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC563FC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3988, &qword_25BCBB928);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB03BE4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_25BAC947C(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB03CF4()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_39_2();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_25BB03DB0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E78, &qword_25BCCC700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E80, &qword_25BCBBDD8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB03EC8()
{
  OUTLINED_FUNCTION_75();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_52(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_87(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_121();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_111(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_54_0();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BB03F74(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BC56454((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E90, &qword_25BCBBDE8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB0408C()
{
  OUTLINED_FUNCTION_21_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_20(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * v17 - 64;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_23_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_78();
    memcpy(v19, v20, v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BB04148(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3860, &qword_25BCBB828);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_25BC5615C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB04260()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D98, &qword_25BCBBD18);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DA0, &qword_25BCBBD20);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04314()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B10, &qword_25BCBBA90);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B18, &qword_25BCBBA98);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB043C8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BC0, &qword_25BCBBB40);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BC8, &qword_25BCBBB48);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB0447C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B80, &qword_25BCBBB00);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B88, &qword_25BCBBB08);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04530()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BE0, &qword_25BCBBB60);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BE8, &qword_25BCBBB68);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB045E4()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AE0, &qword_25BCBBA60);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AE8, &qword_25BCBBA68);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04698()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AF0, &qword_25BCBBA70);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AF8, &qword_25BCBBA78);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB0474C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D88, &qword_25BCBBD08);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D90, &qword_25BCBBD10);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04800()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A90, &qword_25BCBBA10);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A98, &qword_25BCBBA18);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB048B4()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C88, &qword_25BCBBC08);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C90, &qword_25BCBBC10);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04968()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C78, &qword_25BCBBBF8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C80, &qword_25BCBBC00);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04A1C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CD8, &qword_25BCBBC58);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CE0, &qword_25BCBBC60);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04AD0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CC8, &qword_25BCBBC48);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CD0, &qword_25BCBBC50);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04B84()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CF8, &qword_25BCBBC78);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D00, &qword_25BCBBC80);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04C38()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CE8, &qword_25BCBBC68);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CF0, &qword_25BCBBC70);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04CEC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C48, &qword_25BCBBBC8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C50, &qword_25BCBBBD0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04DA0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C38, &qword_25BCBBBB8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C40, &qword_25BCBBBC0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04E54()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D18, &qword_25BCBBC98);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D20, &qword_25BCBBCA0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04F08()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D08, &qword_25BCBBC88);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D10, &qword_25BCBBC90);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB04FBC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C68, &qword_25BCBBBE8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C70, &qword_25BCBBBF0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05070()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C58, &qword_25BCBBBD8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C60, &qword_25BCBBBE0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05124()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B70, &qword_25BCBBAF0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B78, &qword_25BCBBAF8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB051D8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B00, &qword_25BCBBA80);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B08, &qword_25BCBBA88);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB0528C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B60, &qword_25BCBBAE0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B68, &qword_25BCBBAE8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05340()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B20, &qword_25BCBBAA0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B28, &qword_25BCBBAA8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB053F4()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BF0, &qword_25BCBBB70);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BF8, &qword_25BCBBB78);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB054A8()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B40, &qword_25BCBBAC0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B48, &qword_25BCBBAC8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB0555C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A40, &qword_25BCBB9C0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A48, &qword_25BCBB9C8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05610()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C00, &qword_25BCBBB80);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C08, &qword_25BCBBB88);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB056C4()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BD0, &qword_25BCBBB50);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BD8, &qword_25BCBBB58);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05778()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B90, &qword_25BCBBB10);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B98, &qword_25BCBBB18);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB0582C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AA0, &qword_25BCBBA20);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AA8, &qword_25BCBBA28);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB058E0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AC0, &qword_25BCBBA40);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AC8, &qword_25BCBBA48);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05994()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BB0, &qword_25BCBBB30);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BB8, &qword_25BCBBB38);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05A48()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BA0, &qword_25BCBBB20);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BA8, &qword_25BCBBB28);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05AFC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A70, &qword_25BCBB9F0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A78, &qword_25BCBB9F8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05BB0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B30, &qword_25BCBBAB0);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B38, &qword_25BCBBAB8);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05C64()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CA8, &qword_25BCBBC28);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CB0, &qword_25BCBBC30);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05D18()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C98, &qword_25BCBBC18);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CA0, &qword_25BCBBC20);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05DCC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A80, &qword_25BCBBA00);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A88, &qword_25BCBBA08);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05E80()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D38, &qword_25BCBBCB8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D40, &qword_25BCBBCC0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BB05F34()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D28, &qword_25BCBBCA8);
      v8 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_1_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC947C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D30, &qword_25BCBBCB0);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BB06024(uint64_t *a1, uint64_t (*a2)(uint64_t *))
{
  v4 = *a1;
  result = a2(&v4);
  if (v2)
  {
    return swift_allocError();
  }

  return result;
}

unint64_t sub_25BB0607C()
{
  result = qword_27FBB3908;
  if (!qword_27FBB3908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBB3908);
  }

  return result;
}

uint64_t sub_25BB060C0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      result = swift_unknownObjectRelease();
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_25BB060F0(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 4:
    case 5:
    case 6:
    case 7:
      result = sub_25BCB617C();
      break;
    case 8:
      result = swift_unknownObjectRetain();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB06134(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    case 8:
      result = swift_unknownObjectRelease();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB06178(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) == 0)
  {
    return sub_25BB06184(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25BB06184(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      break;
    case 3uLL:
      return result;
    default:
      result = sub_25BCB617C();
      break;
  }

  return result;
}

unint64_t sub_25BB061B4(unint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_25BAFADB0(a1, a2, v2[4]);
}

uint64_t sub_25BB061C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *a1;
  v7 = *(a1 + 3);
  v11[0] = *(a1 + 1);
  v11[1] = v7;
  v11[2] = *(a1 + 5);
  result = v4(v6, v11);
  *a2 = result;
  a2[1] = v9;
  a2[2] = v10;
  return result;
}

void sub_25BB0622C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[7];
  sub_25BAFAEA4(a1, v2[4], v2[6], a2);
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_95(__n128 a1)
{
  *(v1 + 16) = v4;
  v7 = (v1 + v3 * v2);
  v7[2].n128_u64[0] = v5;
  v7[2].n128_u64[1] = v6;
  v7[3] = a1;
}

uint64_t OUTLINED_FUNCTION_101_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{

  return sub_25BA92684(v4, v3, a3);
}

uint64_t sub_25BB06478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA8, &qword_25BCBBF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_71();
  a25 = v30;
  a26 = v31;
  v53 = v32;
  v34 = v33;
  v36 = *v35;
  v52 = v35[1];
  v51 = *(v35 + 16);
  OUTLINED_FUNCTION_14_5();
  if (v41 < 1)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_0_7();
    __break(1u);
  }

  else
  {
    v42 = v40;
    v43 = v39;
    v44 = v38;
    v45 = v37;
    v46 = a28;
    sub_25BB6D9C8(v40, &a13);
    OUTLINED_FUNCTION_11_1(v42);
    (*(v47 + 8))(v45, v42);
    OUTLINED_FUNCTION_21_1(a13);
    *(v34 + 80) = v53 & 1;
    *(v34 + 88) = v36;
    *(v34 + 96) = v52;
    *(v34 + 104) = v51;
    if (!v44)
    {
      v49 = a29;
      v48 = a30;
      v50 = a27;
      v43 = swift_allocObject();
      v43[2] = v42;
      v43[3] = v50;
      v43[4] = v46;
      v43[5] = v49;
      v43[6] = v48;
      v44 = sub_25BB0759C;
    }

    *(v34 + 64) = v44;
    *(v34 + 72) = v43;
    OUTLINED_FUNCTION_64();
  }
}

void *Dataset.init<>(samples:sampler:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)@<X0>(char a1@<W4>, uint64_t *a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a2[1];
  v22 = *a2;
  v20 = *(a2 + 16);
  OUTLINED_FUNCTION_14_5();
  if (v13 < 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_0_7();
    __break(1u);
  }

  else
  {
    v14 = v12;
    v15 = v11;
    v16 = v10;
    v17 = v9;
    sub_25BB6DA90(v10, a4, &v24);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_11_1(a4);
    (*(v18 + 8))(v17, a4);
    result = OUTLINED_FUNCTION_21_1(v24);
    *(a3 + 80) = a1 & 1;
    *(a3 + 88) = v22;
    *(a3 + 96) = v21;
    *(a3 + 104) = v20;
    if (!v15)
    {
      result = swift_allocObject();
      v14 = result;
      result[2] = a4;
      result[3] = a5;
      result[4] = a6;
      result[5] = a7;
      result[6] = a8;
      v15 = sub_25BB0689C;
    }

    *(a3 + 64) = v15;
    *(a3 + 72) = v14;
  }

  return result;
}

uint64_t Dataset.makeIterator()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 104) == 1)
  {
    v5 = *(v2 + 8);
    *&__dst[0] = *v2;
    *(&__dst[0] + 1) = v5;
    v6 = a1[2];
    v7 = a1[4];
    type metadata accessor for Sampling();
    v8 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x25F876E40](&v100, v3, v8);
    v91 = v100;
    v92 = v101;
    OUTLINED_FUNCTION_11_1(a1);
    v68 = *(v9 + 16);
    v72 = v9 + 16;
    v68(__src, v2, a1);
    OUTLINED_FUNCTION_13_1();
    v10 = swift_allocObject();
    *&v11 = v6;
    *(&v11 + 1) = a1[3];
    *&v12 = v7;
    *(&v12 + 1) = a1[5];
    *(v10 + 16) = v11;
    *(v10 + 32) = v12;
    OUTLINED_FUNCTION_10_1(v10, a1[6], v46, v49, v53, a1[6], v7, *(&v12 + 1), v6, *(&v11 + 1), v65, v68, v72, a2, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), *&v82[0], *(&v82[0] + 1), *&v82[1], *(&v82[1] + 1), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, __src[0]);
    v13 = sub_25BCB711C();
    OUTLINED_FUNCTION_3_6();
    WitnessTable = swift_getWitnessTable();
    sub_25BB67658(1, 0, sub_25BB07598, v10, v13, WitnessTable, v102);

    OUTLINED_FUNCTION_5_8();
    LOBYTE(v10) = *(v2 + 80);
    OUTLINED_FUNCTION_4_9();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_12_0();
    v15 = type metadata accessor for LazyPrefetchingMapSequence();
    OUTLINED_FUNCTION_2_3();
    swift_getWitnessTable();
    v16 = OUTLINED_FUNCTION_17_0();
    sub_25BC9CFDC(v16, v10, v15, v17);
  }

  else
  {
    v52 = *(v2 + 88);
    v56 = *(v2 + 96);
    v31 = *(v2 + 8);
    *&__dst[0] = *v2;
    *(&__dst[0] + 1) = v31;
    v32 = a1[2];
    v33 = a1[4];
    OUTLINED_FUNCTION_12_0();
    type metadata accessor for Sampling();
    v34 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x25F876E40](&v100, v3, v34);
    v91 = v100;
    v92 = v101;
    OUTLINED_FUNCTION_11_1(a1);
    v71 = *(v35 + 16);
    v75 = v35 + 16;
    v71(__src, v2, a1);
    OUTLINED_FUNCTION_13_1();
    v36 = swift_allocObject();
    *&v37 = v32;
    *(&v37 + 1) = a1[3];
    *&v38 = v33;
    *(&v38 + 1) = a1[5];
    *(v36 + 16) = v37;
    *(v36 + 32) = v38;
    OUTLINED_FUNCTION_10_1(v36, a1[6], v46, v52, v56, a1[6], v33, *(&v38 + 1), v32, *(&v37 + 1), v65, v71, v75, a2, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), *&v82[0], *(&v82[0] + 1), *&v82[1], *(&v82[1] + 1), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, __src[0]);
    v39 = sub_25BCB711C();
    OUTLINED_FUNCTION_3_6();
    v40 = swift_getWitnessTable();
    sub_25BB67658(v50, v54, sub_25BB06EC0, v36, v39, v40, v102);

    OUTLINED_FUNCTION_5_8();
    v15 = *(v2 + 80);
    OUTLINED_FUNCTION_4_9();
    swift_getWitnessTable();
    v41 = type metadata accessor for LazyPrefetchingMapSequence();
    OUTLINED_FUNCTION_2_3();
    swift_getWitnessTable();
    v42 = OUTLINED_FUNCTION_17_0();
    sub_25BC9CFDC(v42, v15, v41, v43);
  }

  OUTLINED_FUNCTION_6_11(v18, v19, v20, v21, v22, v23, v24, v25, v47, v50, v54, v57, v59, v61, v62, v64, v66, v69, v73, v77, __dst[0], __dst[1], *&__dst[2], *(&__dst[2] + 1), *&__dst[3], SBYTE8(__dst[3]));
  type metadata accessor for Batches();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_11_1(v15);
  (*(v26 + 8))(&v100, v15);
  v27 = OUTLINED_FUNCTION_9_2();
  v28(v27);
  OUTLINED_FUNCTION_13_1();
  v29 = swift_allocObject();
  *(v29 + 16) = v63;
  *(v29 + 32) = *v60;
  OUTLINED_FUNCTION_10_1(v29, v58, v48, v51, v55, v58, v60[0], v60[1], v63, *(&v63 + 1), v67, v70, v74, v78, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), *&v82[0], *(&v82[0] + 1), *&v82[1], *(&v82[1] + 1), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, __src[0]);
  OUTLINED_FUNCTION_12_0();
  v30 = sub_25BCB711C();
  swift_getWitnessTable();
  sub_25BCB75FC();

  v102[0] = v80;
  v102[1] = v81;
  v103[0] = v82[0];
  *(v103 + 9) = *(v82 + 9);
  OUTLINED_FUNCTION_11_1(v30);
  (*(v44 + 8))(v102, v30);
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_12_0();
  sub_25BCB735C();
  return sub_25BCB734C();
}

uint64_t sub_25BB06E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a3;
  v8[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = sub_25BB074EC();
  return sub_25BAB2B20(sub_25BB074BC, v8, v4, a3, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
}

uint64_t sub_25BB06EC0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  return v1();
}

uint64_t sub_25BB06EE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  sub_25BB073E4(a2 + 24, &v22);
  if (v23)
  {
    sub_25BA97060(&v22, v24);
    v9 = v25;
    v10 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    *&v22 = v8;
    v11 = *(v10 + 8);
    v12 = sub_25BCB68CC();
    WitnessTable = swift_getWitnessTable();
    v14 = v11(&v22, v12, WitnessTable, v9, v10);
    v15 = sub_25BB06E2C(v14, v8, a4);

    *&v22 = v15;
    v16 = *(a6 + 8);
    OUTLINED_FUNCTION_1_1();
    v17 = swift_getWitnessTable();
    v16(&v22, v12, v17, a4, a6);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_25BB07454(&v22);
    v24[0] = v8;
    v19 = *(a6 + 8);
    v20 = sub_25BCB68CC();
    sub_25BCB617C();
    OUTLINED_FUNCTION_1_1();
    v21 = swift_getWitnessTable();
    return v19(v24, v20, v21, a4, a6);
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[7];

  if (v0[13])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  }

  v2 = v0[16];

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_25BB07108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  Dataset.makeIterator()(a1, a2);
  v4 = *(*(a1 - 1) + 8);

  return v4(v2, a1);
}

uint64_t Dataset<>.count.getter(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v8 = v2[1];
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  type metadata accessor for Sampling();
  return Sampling<>.count.getter();
}

uint64_t sub_25BB07208()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks7Sampler_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BB07270(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_25BB072B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25BB07340(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB07360(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25BB07390(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB073AC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_25BB073E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA8, &qword_25BCBBF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB07454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA8, &qword_25BCBBF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB074BC(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_25BCB690C();
}

unint64_t sub_25BB074EC()
{
  result = qword_27FBB3FB0;
  if (!qword_27FBB3FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FB0);
  }

  return result;
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

uint64_t sub_25BB075A4()
{
  result = sub_25BB075C8();
  byte_27FBDB4B8 = result & 1;
  return result;
}

uint64_t sub_25BB075C8()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &v4, &v3, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v4 == 0;
  }

  result = !v0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BB0766C()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v3 = OUTLINED_FUNCTION_5();
  *(v3 + 16) = xmmword_25BCBB6D0;
  v4 = v1 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (!v2)
  {
    if (!v4)
    {
LABEL_6:
      v5 = *(v1 + 32);
LABEL_7:
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_2_4();
      v11 = sub_25BB07C28(v6, v7, v8, v9, v10);
      goto LABEL_13;
    }

LABEL_14:
    OUTLINED_FUNCTION_4_4();
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v12 = *(v1 + 32);
  }

  v1 = v12;
  v13 = *(v0 + 132);
  if (!*(v0 + 136))
  {
    v14 = *(v0 + 132);
  }

  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_4();
  v11 = sub_25BB07BA4(v17, v21, v18, v19, v20);
LABEL_13:
  v22 = v11;

  *(v3 + 32) = v22;
  return v3;
}

uint64_t sub_25BB077B8()
{
  OUTLINED_FUNCTION_3_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = OUTLINED_FUNCTION_5();
  *(v1 + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_1_6();
  if ((v0 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v2 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_4();
  v8 = sub_25BB07C28(v3, v4, v5, v6, v7);

  *(v1 + 32) = v8;
  return v1;
}

double sub_25BB07870()
{
  OUTLINED_FUNCTION_3_7();
  v5 = v4 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (v5)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v6 = v3[4];
  }

  v7 = v6;
  sub_25BAB4D78(1, v5 == 0, v3);
  if (v5)
  {
    MEMORY[0x25F8779B0](1, v3);
  }

  else
  {
    v8 = v3[5];
  }

  OUTLINED_FUNCTION_0_8();
  v9 = sub_25BB07CA4(v7, v3, v1, v0, v2, &selRef_reLUGradientWithIncomingGradient_sourceTensor_name_);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v10 = OUTLINED_FUNCTION_5();
  *&result = 1;
  *(v10 + 16) = xmmword_25BCBB6D0;
  *(v10 + 32) = v9;
  return result;
}

uint64_t sub_25BB07964(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = OUTLINED_FUNCTION_5();
  *(v5 + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_1_6();
  if ((a2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  v8 = v2[16];
  v10 = v2[3];
  v9 = v2[4];
  sub_25BCB617C();
  v11 = sub_25BB07CA4(v7, v8, v10, v9, a1, &selRef_softMaxWithTensor_axis_name_);

  *(v5 + 32) = v11;
  return v5;
}

uint64_t sub_25BB07A40(uint64_t a1)
{
  result = sub_25BB07B50(qword_28154F128, type metadata accessor for SoftmaxOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07A84(uint64_t a1)
{
  result = sub_25BB07B50(qword_28154E000, type metadata accessor for ReLUGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07AC8(uint64_t a1)
{
  result = sub_25BB07B50(&unk_28154F9C0, type metadata accessor for ReLUOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07B0C(uint64_t a1)
{
  result = sub_25BB07B50(&qword_27FBB3FB8, type metadata accessor for ActivationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07B50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB07BA4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a5 leakyReLUWithTensor:a1 alpha:v8 name:a2];

  return v9;
}

id sub_25BB07C28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a4 *a5];

  return v9;
}

id sub_25BB07CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a5 *a6];

  return v11;
}

void sub_25BB07D88(uint64_t a1)
{
  (*(*v1 + 120))();
  sub_25BCB625C();

  v3 = v1[6];

  sub_25BAD4C78(a1, v3);
}

BOOL sub_25BB07E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25BAC4018();
  v6 = *(v2 + 40);
  v7 = sub_25BAC4018();
  if (v5 == v7)
  {
    v8 = *(v3 + 40);
    *(v3 + 40) = a2;
  }

  return v5 == v7;
}

void *sub_25BB07E80()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t sub_25BB07EB8()
{
  sub_25BB07E80();

  return swift_deallocClassInstance();
}

__n128 sub_25BB07F58@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 104);
  result = *(v1 + 114);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BB07FC0(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BB0801C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a6;
  v11 = *(a6 + 8);
  *(v9 + 136) = a8;
  *(v9 + 144) = a9;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(1701603700, 0xE400000000000000);
  }

  return OUTLINED_FUNCTION_0_9(a1, a2, a3);
}

uint64_t sub_25BB08084()
{
  sub_25BB07E80();
  v1 = *(v0 + 144);
  sub_25BA9D148(*(v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t sub_25BB080FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 136);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BB08164(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = *(a7 + 8);
  *(v7 + 136) = a4;
  if (!a3)
  {
    v10 = OUTLINED_FUNCTION_1_7();
    a1 = sub_25BAA5EA0(v10, v11);
  }

  return OUTLINED_FUNCTION_0_9(a1, a2, a3);
}

uint64_t sub_25BB081B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!sub_25BB07E0C(a1, a2))
  {
    v5 = sub_25BAC4018();
    v6 = *(v2 + 136);
    if (v5 == sub_25BAC4018())
    {
      v7 = *(v3 + 136);
      *(v3 + 136) = a2;
    }
  }

  return 1;
}

uint64_t sub_25BB08230()
{
  sub_25BB07E80();
  v1 = *(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB08290(uint64_t a1)
{
  result = sub_25BB08340(&qword_27FBB3FC0, type metadata accessor for TileGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB082E8(uint64_t a1)
{
  result = sub_25BB08340(&qword_27FBB3FD0, type metadata accessor for BaseTileOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB08340(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static RegularizationKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_25BB084A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BB0856C(char a1)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1 & 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB085C0(char a1)
{
  if (a1)
  {
    return 0x656C616373;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_25BB08608()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB08654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB084A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB0869C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB0716C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB086C4(uint64_t a1)
{
  v2 = sub_25BB0890C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB08700(uint64_t a1)
{
  v2 = sub_25BB0890C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RegularizationKind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FD8, &qword_25BCBC1F0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB0890C();
  sub_25BCB7B2C();
  if (!v2)
  {
    v18[14] = 0;
    sub_25BB08960();
    sub_25BCB76AC();
    v14 = v19;
    if (v19)
    {
      v18[13] = 1;
    }

    else
    {
      v18[12] = 1;
    }

    sub_25BCB768C();
    v16 = v15;
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
    *(a2 + 4) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BB0890C()
{
  result = qword_27FBB3FE0;
  if (!qword_27FBB3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FE0);
  }

  return result;
}

unint64_t sub_25BB08960()
{
  result = qword_27FBB3FE8;
  if (!qword_27FBB3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FE8);
  }

  return result;
}

uint64_t RegularizationKind.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FF0, &qword_25BCBC1F8);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v15[3] = *v1;
  v12 = *(v1 + 4);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB0890C();
  sub_25BCB7B6C();
  if (v12)
  {
    v20 = 1;
    v19 = 0;
    sub_25BB08B7C();
    sub_25BCB779C();
    if (!v2)
    {
      v18 = 1;
LABEL_6:
      sub_25BCB777C();
    }
  }

  else
  {
    v17 = 0;
    sub_25BB08B7C();
    sub_25BCB779C();
    if (!v2)
    {
      v16 = 1;
      goto LABEL_6;
    }
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_25BB08B7C()
{
  result = qword_27FBB3FF8;
  if (!qword_27FBB3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FF8);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RegularizationKind(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 5))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for RegularizationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayerVariableReference.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB08D60(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB08E40()
{
  result = qword_27FBB4000;
  if (!qword_27FBB4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4000);
  }

  return result;
}

unint64_t sub_25BB08E98()
{
  result = qword_27FBB4008;
  if (!qword_27FBB4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4008);
  }

  return result;
}

unint64_t sub_25BB08EF0()
{
  result = qword_27FBB4010;
  if (!qword_27FBB4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4010);
  }

  return result;
}

unint64_t sub_25BB08F48()
{
  result = qword_27FBB4018;
  if (!qword_27FBB4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4018);
  }

  return result;
}

unint64_t sub_25BB08F9C()
{
  result = qword_27FBB4020;
  if (!qword_27FBB4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4020);
  }

  return result;
}

uint64_t sub_25BB08FF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *v2;
  if (v2[1])
  {
    v5 = *a2;
    OUTLINED_FUNCTION_0_10(v3);
    v7 = *(v6 + 160);
    sub_25BAA51C8(v52, v51);
    v50 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = v4;
    v44 = v7;
    v9 = sub_25BAA51C8(v51, v35);
    OUTLINED_FUNCTION_1_8(v9, v10, v11, v12, v13, v14, v15, v16, v29, v30, v31, v32, v33, v34, v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_25BA9C2C8(v51);
    sub_25BA9C2C8(v52);
    v52[0] = v5;
    static Tensor.* infix(_:_:)();
  }

  else
  {
    OUTLINED_FUNCTION_0_10(v3);
    v18 = *(v17 + 160);
    sub_25BAA51C8(v52, v51);
    v50 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_25BCBAE50;
    *(v19 + 32) = v4;
    v44 = v18;
    v20 = sub_25BAA51C8(v51, v35);
    OUTLINED_FUNCTION_1_8(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, v33, v34, v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_25BA9C2C8(v51);
    sub_25BA9C2C8(v52);
  }

  static Tensor.+ infix(_:_:)();
}

void sub_25BB09180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v67 = v24;
  v68 = v21;
  v61 = v26;
  v62 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v61 - v33;
  v35 = sub_25BCB598C();
  v36 = OUTLINED_FUNCTION_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v45 = *v20;
  v44 = v20[1];
  v46 = v20[3];
  v65 = v20[2];
  v66 = v44;
  v64 = v46;
  sub_25BAD6FB0(v45 + 88, v74);
  type metadata accessor for LazyTensorFunctionBuilder();
  swift_initStackObject();
  sub_25BC47C64(v74);
  v63 = v47;
  a10 = v30;
  v73 = v28;
  sub_25BB0CD18(v62, v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    v48 = v67;
    sub_25BCB617C();
    sub_25BCB617C();
    v49 = sub_25BB0CDB0(v34);
  }

  else
  {
    (*(v38 + 32))(v43, v34, v35);
    v69 = v45;
    v70 = v66;
    v71 = v65;
    v72 = v64;
    sub_25BCB617C();
    sub_25BCB617C();
    v50 = v68;
    v51 = sub_25BB094E0(v30, v28, v43, v67);
    v68 = v50;
    if (v50)
    {
      (*(v38 + 8))(v43, v35);

LABEL_9:

      goto LABEL_10;
    }

    v53 = v52;
    v48 = v67;
    v54 = *(v38 + 8);
    v62 = v51;
    v54(v43, v35);

    a10 = v62;
    v73 = v53;
  }

  MEMORY[0x28223BE20](v49);
  *(&v61 - 5) = *(v48 + 16);
  v56 = v65;
  v55 = v66;
  *(&v61 - 8) = v45;
  *(&v61 - 7) = v55;
  v58 = v63;
  v57 = v64;
  *(&v61 - 6) = v56;
  *(&v61 - 5) = v57;
  *(&v61 - 4) = &a10;
  *(&v61 - 3) = v58;
  *(&v61 - 2) = &v73;
  sub_25BC44FE0(sub_25BB0CE18);
  sub_25BAD6344();
  if (*(v59 + 16) != 1)
  {

    sub_25BB0A3A4();
    swift_allocError();
    *v60 = 0xD000000000000079;
    v60[1] = 0x800000025BCD95E0;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_25BAD6FB0(v59 + 32, v61);

LABEL_10:
  OUTLINED_FUNCTION_16();
}

void (*sub_25BB094E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(char *, uint64_t, uint64_t, __n128)
{
  v31 = a1;
  v32 = a4;
  v27 = a2;
  v7 = sub_25BCB598C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MILBlobStorageWriter(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v4;
  v29 = v4[1];
  v30 = v17;
  v18 = v4[3];
  v28 = v4[2];
  v37 = v18;
  v19 = *(v8 + 16);
  v19(v11, a3, v7, v14);
  sub_25BB9332C();
  if (v5)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v20 = v27;
    (v19)(v16, v11, v7);
    v21 = &v16[v12[5]];
    *v21 = 0x200000000;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 7) = 0;
    (*(v8 + 8))(v11, v7);
    *&v16[v12[8]] = MEMORY[0x277D84F90];
    *&v16[v12[6]] = 64;
    *&v16[v12[7]] = 64;
    v23 = v29;
    v22 = v30;
    v33 = v30;
    v34 = v29;
    v24 = v28;
    v35 = v28;
    v36 = v37;
    v25 = v32;
    v19 = sub_25BB099F0(v31, v16, v32, sub_25BB0CF80);
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v36 = v37;
    sub_25BB099F0(v20, v16, v25, sub_25BB0CE54);
    sub_25BB0CF28(v16, type metadata accessor for MILBlobStorageWriter);
  }

  return v19;
}

uint64_t sub_25BB097B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9)
{
  v28 = *(a3 + 16);
  _s9IOMappingVMa();
  sub_25BCB68CC();
  sub_25BCB617C();
  swift_getWitnessTable();
  sub_25BCB662C();

  if (v25)
  {
    if (v24 == 1)
    {
      v12 = *a7;
    }

    else
    {
      if (v24 != 2)
      {
LABEL_9:
      }

      v12 = *a9;
    }

    if (*(v12 + 16))
    {
      v13 = sub_25BA9266C(*(&v24 + 1), v25);
      if (v14)
      {
        v15 = *(*(v12 + 56) + 8 * v13);
        v16 = *(v15 + 16);
        swift_retain_n();

        v17 = sub_25BA928B4();
        [v17 lock];

        sub_25BA92920(v16, 0, 0, &v24);
        [*(v16 + 224) unlock];

        v18 = v24;
        v19 = *(v15 + 16);

        v20 = sub_25BAC44E4();
        v22 = v21;

        type metadata accessor for TensorRepresentation();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0;
        swift_allocObject();
        LOBYTE(v28) = 1;
        v23 = sub_25BC5F404(v18, *(&v18 + 1), v20, v22, &v24, 0x100000000);
        sub_25BC4445C(a2, v23);
      }
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_25BB099F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = *v4;
  v9 = v4[1];
  v14 = MEMORY[0x277D84F98];
  v12 = *(a3 + 16);
  v13 = *(v4 + 1);
  v10 = objc_autoreleasePoolPush();
  sub_25BB0ACB8(a2, a4);
  objc_autoreleasePoolPop(v10);
  if (v5)
  {
  }

  else
  {
    return v14;
  }
}

uint64_t sub_25BB09A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v56 = a7;
  v55 = sub_25BCB598C();
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v18 = _s9IOMappingVMa();
  sub_25BCB617C();
  v19 = sub_25BCB674C();
  v62 = v19;
  if (v19 == sub_25BCB681C())
  {
  }

  v52 = a8;
  v53 = a1;
  v57 = v9;
  v20 = v17 + 32;
  v48 = (v14 + 16);
  v49 = v17 + 32;
  v50 = v18;
  v51 = a9;
  while (1)
  {
    v21 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = v20 + 48 * v19;
    v23 = *(v22 + 16);
    v58 = *(v22 + 8);
    v24 = *v22;
    sub_25BCB617C();
    sub_25BCB68AC();
    if (sub_25BADE04C(v24, 1))
    {
      v25 = v57;
      v26 = v53;
      if (!*(a6 + 16) || (v27 = sub_25BA9266C(v58, v23), (v28 & 1) == 0))
      {

        *&v59[0] = 0;
        *(&v59[0] + 1) = 0xE000000000000000;
        sub_25BCB70FC();

        *&v59[0] = 0xD000000000000024;
        *(&v59[0] + 1) = 0x800000025BCD9690;
        MEMORY[0x25F876C90](v58, v23);

        MEMORY[0x25F876C90](11815, 0xE200000000000000);
        v45 = v59[0];
        sub_25BB0A3A4();
        swift_allocError();
        *v46 = v45;
        return swift_willThrow();
      }

      v29 = *(*(a6 + 56) + 8 * v27);
      *&v59[0] = v29;

      sub_25BB92CA4();
      if (v25)
      {
      }

      v31 = v30;
      v57 = 0;
      v32 = v54;
      (*v48)(v54, v26, v55);
      v33 = *(v29 + 16);
      *&v59[0] = *(v33 + 152);
      v61[0] = *(v33 + 160);
      v34 = type metadata accessor for DataSourceTensorStorage();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_25BB9AB48(v32, v31, v59, v61);
      type metadata accessor for TensorRepresentation();
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v37 = swift_allocObject();
      sub_25BCB617C();

      v61[0] = 1;
      v39 = sub_25BBF1C1C(v38, v59, 0x100000000, v37);
      type metadata accessor for TensorHandle();
      *(swift_allocObject() + 16) = v39;

      sub_25BAA6EB0();
      v40 = a6;
      v41 = v56;
      v42 = *v56;
      swift_isUniquelyReferenced_nonNull_native();
      *&v59[0] = *v41;
      sub_25BC19C08();
      *v41 = *&v59[0];
      a6 = v40;

      v20 = v49;
    }

    else
    {
    }

    v43 = sub_25BCB681C();
    v19 = v62;
    if (v62 == v43)
    {
    }
  }

  result = sub_25BCB717C();
  __break(1u);
  return result;
}

uint64_t sub_25BB09EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v56 = a7;
  v55 = sub_25BCB598C();
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v18 = _s9IOMappingVMa();
  sub_25BCB617C();
  v19 = sub_25BCB674C();
  v62 = v19;
  if (v19 == sub_25BCB681C())
  {
  }

  v52 = a8;
  v53 = a1;
  v57 = v9;
  v20 = v17 + 32;
  v48 = (v14 + 16);
  v49 = v17 + 32;
  v50 = v18;
  v51 = a9;
  while (1)
  {
    v21 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = v20 + 48 * v19;
    v23 = *(v22 + 16);
    v58 = *(v22 + 8);
    v24 = *v22;
    sub_25BCB617C();
    sub_25BCB68AC();
    if (sub_25BADE04C(v24, 2))
    {
      v25 = v57;
      v26 = v53;
      if (!*(a6 + 16) || (v27 = sub_25BA9266C(v58, v23), (v28 & 1) == 0))
      {

        *&v59[0] = 0;
        *(&v59[0] + 1) = 0xE000000000000000;
        sub_25BCB70FC();

        *&v59[0] = 0xD000000000000020;
        *(&v59[0] + 1) = 0x800000025BCD9660;
        MEMORY[0x25F876C90](v58, v23);

        MEMORY[0x25F876C90](11815, 0xE200000000000000);
        v45 = v59[0];
        sub_25BB0A3A4();
        swift_allocError();
        *v46 = v45;
        return swift_willThrow();
      }

      v29 = *(*(a6 + 56) + 8 * v27);
      *&v59[0] = v29;

      sub_25BB92CA4();
      if (v25)
      {
      }

      v31 = v30;
      v57 = 0;
      v32 = v54;
      (*v48)(v54, v26, v55);
      v33 = *(v29 + 16);
      *&v59[0] = *(v33 + 152);
      v61[0] = *(v33 + 160);
      v34 = type metadata accessor for DataSourceTensorStorage();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_25BB9AB48(v32, v31, v59, v61);
      type metadata accessor for TensorRepresentation();
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v37 = swift_allocObject();
      sub_25BCB617C();

      v61[0] = 1;
      v39 = sub_25BBF1C1C(v38, v59, 0x100000000, v37);
      type metadata accessor for TensorHandle();
      *(swift_allocObject() + 16) = v39;

      sub_25BAA6EB0();
      v40 = a6;
      v41 = v56;
      v42 = *v56;
      swift_isUniquelyReferenced_nonNull_native();
      *&v59[0] = *v41;
      sub_25BC19C08();
      *v41 = *&v59[0];
      a6 = v40;

      v20 = v49;
    }

    else
    {
    }

    v43 = sub_25BCB681C();
    v19 = v62;
    if (v62 == v43)
    {
    }
  }

  result = sub_25BCB717C();
  __break(1u);
  return result;
}

uint64_t ModelWritingError.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BCB617C();
  return v1;
}

uint64_t ModelWritingError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BCB617C();
  return v1;
}

unint64_t sub_25BB0A3A4()
{
  result = qword_27FBB4028;
  if (!qword_27FBB4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4028);
  }

  return result;
}

uint64_t sub_25BB0A41C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25BB0A45C(uint64_t result, int a2, int a3)
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

void sub_25BB0A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  v73 = v25;
  v77 = v27;
  v78 = v26;
  v80 = v29;
  v81 = v28;
  v79 = v30;
  v76 = v31;
  HIDWORD(v72) = v32;
  v86 = *MEMORY[0x277D85DE8];
  v33 = sub_25BCB598C();
  v34 = OUTLINED_FUNCTION_2(v33);
  v74 = v35;
  v75 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  v43 = [v42 currentDirectoryPath];

  v44 = v43;
  v45 = v43;
  v82 = v43;
  v83 = v43;
  if (!v43)
  {
    sub_25BCB636C();
    v83 = sub_25BCB633C();

    sub_25BCB636C();
    v82 = sub_25BCB633C();

    sub_25BCB636C();
    v45 = sub_25BCB633C();

    sub_25BCB636C();
    v44 = sub_25BCB633C();
  }

  v46 = v43;
  sub_25BCB58DC();
  v47 = [v41 defaultManager];
  v48 = sub_25BCB592C();
  v84 = 0;
  v49 = [v47 createDirectoryAtURL:v48 withIntermediateDirectories:1 attributes:0 error:&v84];

  if (v49)
  {
    v50 = v84;

    v51 = [v41 &selRef_setMean_ + 3];
    sub_25BCB595C();
    v52 = sub_25BCB633C();

    v53 = [v51 changeCurrentDirectoryPath_];

    if (v53)
    {

      sub_25BB0B0D8(v40, BYTE4(v72) & 1, v76, v78, v79, v81, v80, v77, a21, a22, a23, a24, v72, v73, v24, v74, v75, v76, v77, v78, a22, v79, a21, v80);
      if (!v24)
      {
        v69 = OUTLINED_FUNCTION_3_8();
        v70(v69);

        v71 = [v41 defaultManager];
        [v71 changeCurrentDirectoryPath_];

        goto LABEL_10;
      }

      v54 = OUTLINED_FUNCTION_3_8();
      v55(v54);

      v45 = v44;
    }

    else
    {

      v84 = 0;
      v85 = 0xE000000000000000;
      sub_25BCB70FC();

      OUTLINED_FUNCTION_5_9();
      v84 = v60;
      v85 = v59;
      v61 = sub_25BCB595C();
      MEMORY[0x25F876C90](v61);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v62 = v84;
      v63 = v85;
      sub_25BB0A3A4();
      swift_allocError();
      *v64 = v62;
      v64[1] = v63;
      swift_willThrow();
      v65 = OUTLINED_FUNCTION_3_8();
      v66(v65);
      v45 = v82;
    }
  }

  else
  {
    v56 = v84;

    sub_25BCB58CC();
    swift_willThrow();
    v57 = OUTLINED_FUNCTION_3_8();
    v58(v57);
  }

  v67 = [v41 defaultManager];
  [v67 changeCurrentDirectoryPath_];

LABEL_10:
  v68 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
}

void sub_25BB0ACB8(uint64_t a1, void (*a2)(char *))
{
  v32 = a2;
  v35 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MILBlobStorageWriter.BlobWriter(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BCB598C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BB0CE80();
  (*(v9 + 16))(v12, a1, v8);
  v13 = sub_25BB0AF90(v12);
  if (!v2)
  {
    v14 = v13;
    sub_25BB0CEC4(a1, v7);
    *&v7[*(v4 + 20)] = v14;
    v15 = v14;
    v32(v7);
    v16 = type metadata accessor for MILBlobStorageWriter(0);
    v17 = *(v16 + 20);
    v18 = (a1 + v17);
    v19 = *&v7[v17 + 16];
    *v18 = *&v7[v17];
    v18[1] = v19;
    v20 = *&v7[v17 + 48];
    v18[2] = *&v7[v17 + 32];
    v18[3] = v20;
    v21 = *(v16 + 32);
    v22 = *(a1 + v21);
    *(a1 + v21) = *&v7[v21];
    sub_25BCB617C();

    v33 = 0;
    v23 = [v15 seekToOffset:0 error:&v33];
    v24 = v33;
    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }

    v25 = v18[1];
    v34[0] = *v18;
    v34[1] = v25;
    v26 = v18[3];
    v34[2] = v18[2];
    v34[3] = v26;
    v27 = v33;
    sub_25BB9391C(v34, v15);
    v33 = 0;
    v28 = [v15 closeAndReturnError_];
    v24 = v33;
    if (v28)
    {
      v29 = v33;
      sub_25BB0CF28(v7, type metadata accessor for MILBlobStorageWriter.BlobWriter);
    }

    else
    {
LABEL_7:
      v30 = v24;
      sub_25BCB58CC();

      swift_willThrow();
      sub_25BB0CF28(v7, type metadata accessor for MILBlobStorageWriter.BlobWriter);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

id sub_25BB0AF90(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB592C();
  v14[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v14];

  v4 = v14[0];
  if (v3)
  {
    v5 = sub_25BCB598C();
    OUTLINED_FUNCTION_9_3(v5);
    v7 = *(v6 + 8);
    v8 = v4;
    v7(a1, v5);
  }

  else
  {
    v9 = v14[0];
    sub_25BCB58CC();

    swift_willThrow();
    v10 = sub_25BCB598C();
    OUTLINED_FUNCTION_9_3(v10);
    (*(v11 + 8))(a1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_25BB0B0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  v149 = v24;
  v159 = v26;
  v160 = v25;
  v155 = v28;
  v156 = v27;
  v161 = v29;
  v157 = v30;
  HIDWORD(v148) = v31;
  v150 = v32;
  v154 = a22;
  v158 = a21;
  v173 = *MEMORY[0x277D85DE8];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v144 = &v139 - v35;
  OUTLINED_FUNCTION_7();
  v147 = sub_25BCB57CC();
  v36 = OUTLINED_FUNCTION_2(v147);
  v145 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v146 = v41 - v40;
  OUTLINED_FUNCTION_7();
  v151 = sub_25BCB58FC();
  v42 = OUTLINED_FUNCTION_2(v151);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v152 = sub_25BCB598C();
  v50 = OUTLINED_FUNCTION_2(v152);
  v153 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4_0();
  v143 = v54 - v55;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v56);
  v162 = &v139 - v57;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v58);
  v60 = &v139 - v59;
  v61 = sub_25BCB5A8C();
  v62 = OUTLINED_FUNCTION_2(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1();
  v69 = v68 - v67;
  v70 = sub_25BCB614C();
  sub_25BCB5A7C();
  v71 = sub_25BCB5A6C();
  v73 = v72;
  (*(v64 + 8))(v69, v61);
  v168 = 0x302E302E31;
  v169 = 0xE500000000000000;
  v170 = v70;
  v171 = v71;
  v172 = v73;
  OUTLINED_FUNCTION_5_9();
  v163 = (v75 + 2);
  v164 = v74;
  v76 = *(v44 + 104);
  HIDWORD(v141) = *MEMORY[0x277CC91D8];
  v77 = v151;
  v142 = v44 + 104;
  v140 = v76;
  v76(v49);
  sub_25BB0CFFC();
  sub_25BCB597C();
  v78 = *(v44 + 8);
  v150 = v49;
  v78(v49, v77);
  v79 = objc_opt_self();

  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();

  v80 = [v79 defaultManager];
  v81 = [v80 currentDirectoryPath];

  v82 = v81;
  v83 = v81;
  v84 = v81;
  v85 = v81;
  if (!v81)
  {
    sub_25BCB636C();
    v85 = sub_25BCB633C();

    sub_25BCB636C();
    v84 = sub_25BCB633C();

    sub_25BCB636C();
    v83 = sub_25BCB633C();

    sub_25BCB636C();
    v82 = sub_25BCB633C();
  }

  v86 = v81;
  sub_25BCB58DC();
  v87 = [v79 defaultManager];
  v88 = sub_25BCB592C();
  v163 = 0;
  v89 = [v87 createDirectoryAtURL:v88 withIntermediateDirectories:1 attributes:0 error:&v163];

  if (v89)
  {
    v139 = v60;
    v90 = v163;

    v91 = [v79 defaultManager];
    sub_25BCB595C();
    v92 = sub_25BCB633C();

    v93 = [v91 changeCurrentDirectoryPath_];

    v94 = v160;
    v95 = v155;
    if (v93)
    {

      v96 = v162;
      v97 = v149;
      sub_25BB0BD94(v162, BYTE4(v148) & 1, v157, v156, v161, v94, v95, v159, v158, v154, &v168, a23, a24, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
      v149 = v97;
      if (v97)
      {
        v98 = *(v153 + 8);
        v99 = v152;
        v98(v96, v152);

        v100 = [v79 defaultManager];
        [v100 changeCurrentDirectoryPath_];

        v98(v139, v99);
      }

      else
      {
        v117 = v96;
        v118 = v153 + 8;
        v119 = *(v153 + 8);
        v120 = v152;
        (v119)(v117, v152);

        v121 = v118;
        v122 = [v79 defaultManager];
        [v122 changeCurrentDirectoryPath_];

        v153 = v121;
        (v119)(v139, v120);
        v123 = sub_25BCB580C();
        v124 = *(v123 + 48);
        v125 = *(v123 + 52);
        swift_allocObject();
        sub_25BCB57FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4048, &qword_25BCBC5C0);
        v126 = *(v145 + 72);
        v127 = (*(v145 + 80) + 32) & ~*(v145 + 80);
        v128 = swift_allocObject();
        v128[1] = xmmword_25BCBAE70;
        sub_25BCB57AC();
        sub_25BCB57BC();
        v163 = v128;
        sub_25BB0D050();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4058, &unk_25BCBC5C8);
        sub_25BB0D0A8();
        sub_25BCB702C();
        sub_25BCB57DC();
        v163 = v168;
        v164 = v169;
        v165 = v170;
        v166 = v171;
        v167 = v172;
        sub_25BB0D10C();
        sub_25BCB617C();
        sub_25BCB617C();
        sub_25BCB617C();
        v129 = v149;
        v130 = sub_25BCB57EC();
        if (!v129)
        {
          v132 = v130;
          v133 = v131;
          v162 = v119;

          OUTLINED_FUNCTION_12_1();
          __swift_storeEnumTagSinglePayload(v134, v135, v136, v152);
          v140(v150, HIDWORD(v141), v151);
          v137 = v143;
          sub_25BCB596C();
          sub_25BCB5A5C();
          (v162)(v137, v152);
          sub_25BB0D160(v132, v133);

          goto LABEL_10;
        }
      }
    }

    else
    {

      v163 = 0;
      v164 = 0xE000000000000000;
      sub_25BCB70FC();

      OUTLINED_FUNCTION_5_9();
      v163 = v106;
      v164 = v105;
      v107 = v162;
      v108 = sub_25BCB595C();
      MEMORY[0x25F876C90](v108);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v109 = v163;
      v110 = v164;
      sub_25BB0A3A4();
      swift_allocError();
      *v111 = v109;
      v111[1] = v110;
      swift_willThrow();
      v112 = *(v153 + 8);
      v113 = v107;
      v114 = v152;
      v112(v113, v152);
      v115 = [v79 defaultManager];
      [v115 changeCurrentDirectoryPath_];

      v112(v139, v114);
    }
  }

  else
  {
    v101 = v163;

    sub_25BCB58CC();
    swift_willThrow();
    v102 = *(v153 + 8);
    v103 = v152;
    v102(v162, v152);
    v104 = [v79 defaultManager];
    [v104 changeCurrentDirectoryPath_];

    v102(v60, v103);
  }

LABEL_10:
  v116 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
}

void sub_25BB0BD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void (*a24)(void *__return_ptr, unint64_t, uint64_t, char *, uint64_t, unint64_t, unint64_t, unint64_t), void (*a25)(void *, uint64_t))
{
  OUTLINED_FUNCTION_17_1();
  v231 = v27;
  v232 = v26;
  v228 = v29;
  v229 = v28;
  v242 = v30;
  v240 = v31;
  v33 = v32;
  v230 = a24;
  v34 = sub_25BCB5A8C();
  v35 = OUTLINED_FUNCTION_2(v34);
  v215 = v36;
  v216 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v214 = v40 - v39;
  OUTLINED_FUNCTION_7();
  v41 = sub_25BCB598C();
  v42 = OUTLINED_FUNCTION_2(v41);
  v217 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v235 = v47 - v46;
  OUTLINED_FUNCTION_7();
  v234 = sub_25BCB5B9C();
  v48 = OUTLINED_FUNCTION_2(v234);
  v222 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4_0();
  v224 = v52 - v53;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v54);
  v225 = &v200 - v55;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v56);
  v58 = &v200 - v57;
  v241 = sub_25BCB5BCC();
  v59 = OUTLINED_FUNCTION_2(v241);
  v239 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_4_0();
  v223 = v63 - v64;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v65);
  v226 = &v200 - v66;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v67);
  v236 = &v200 - v68;
  OUTLINED_FUNCTION_7();
  v69 = sub_25BCB5C8C();
  v70 = OUTLINED_FUNCTION_2(v69);
  v220 = v71;
  v221 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1();
  v233 = v75 - v74;
  OUTLINED_FUNCTION_7();
  v76 = sub_25BCB58FC();
  v77 = OUTLINED_FUNCTION_2(v76);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_1();
  v84 = v83 - v82;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  OUTLINED_FUNCTION_4_0();
  v89 = v87 - v88;
  MEMORY[0x28223BE20](v90);
  v92 = &v200 - v91;
  v237 = v76;
  v238 = v79;
  v218 = v89;
  v227 = v58;
  if (v33)
  {
    v93 = MEMORY[0x277CC91D8];
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v41);
    (*(v79 + 104))(v84, *v93, v76);
    sub_25BCB596C();
    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = v84;
  __swift_storeEnumTagSinglePayload(v92, v97, 1, v41);
  v230(v245, v228, v231, v92, v240, v229, v232, v242);
  if (v25)
  {
    v105 = v92;
LABEL_7:
    sub_25BB0CDB0(v105);
    goto LABEL_8;
  }

  v99 = v41;
  sub_25BAD6FB0(v245, &v244);
  sub_25BC46E18(v246);
  type metadata accessor for MILProgramBuilder();
  swift_allocObject();
  OUTLINED_FUNCTION_12_1();
  v104 = sub_25BBA35C4(v100, v101, v102, v103);
  sub_25BBA003C();
  v204 = v92;
  v106 = *(v104 + 316);
  v108 = v107;
  a25(v245, v106);
  v109 = v233;
  sub_25BB319C0(v108, 1852399981, 0xE400000000000000, v233);
  v231 = 0;
  v201 = v98;
  v202 = v108;
  v203 = v104;
  v110 = *(sub_25BCB5C2C() + 16);

  v230 = v99;
  v212 = v110;
  if (v110)
  {
    v111 = 0;
    v210 = (v239 + 8);
    v211 = (v239 + 16);
    v207 = (v222 + 16);
    v112 = *(a21 + 16);
    v206 = (v239 + 40);
    v205 = (v222 + 8);
    v208 = v112 + 1;
    v209 = (a21 + 64);
    v113 = v235;
    while (2)
    {
      v114 = v111;
      v115 = sub_25BCB5C2C();
      if (v114 >= *(v115 + 16))
      {
        __break(1u);
        goto LABEL_73;
      }

      v232 = v114 + 1;
      v116 = v239;
      v228 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v229 = v114;
      v117 = *(v239 + 16);
      v219 = *(v239 + 72) * v114;
      v118 = v236;
      v119 = v241;
      v117(v236, v115 + v228 + v219, v241);

      v120 = sub_25BCB5BBC();
      v122 = v121;
      (*(v116 + 8))(v118, v119);
      v123 = v208;
      v124 = v209;
      while (--v123)
      {
        v125 = *(v124 - 4);
        v126 = *(v124 - 3);
        v127 = *(v124 - 2);
        v242 = *(v124 - 1);
        v258 = *v124;
        if (v125 != v120 || v126 != v122)
        {
          v124 += 5;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        sub_25BCB617C();
        v129 = OUTLINED_FUNCTION_2_5();
        v132 = sub_25BB06178(v129, v130, v131);
        v133 = sub_25BB0AB74(v132);
        v134 = *(v133 + 16);
        v213 = v133;
        v135 = (v133 + 48);
        v136 = v134 + 1;
        do
        {
          if (!--v136)
          {

            v149 = OUTLINED_FUNCTION_2_5();
            sub_25BB0D1B8(v149, v150, v151);

            v109 = v233;
            v99 = v230;
            goto LABEL_33;
          }

          v137 = *v135;
          if (*(v135 - 2) == v120 && *(v135 - 1) == v122)
          {
            break;
          }

          v135 += 3;
        }

        while ((sub_25BCB789C() & 1) == 0);
        sub_25BCB617C();

        v243[0] = v127;
        v243[1] = v242;
        v243[2] = v258;
        v139 = v227;
        v140 = v231;
        sub_25BBAA588(v137, v120, v122, v227);
        if (v140)
        {

          (*(v220 + 8))(v233, v221);
          sub_25BA9AC78(v245);
          sub_25BB0CDB0(v204);

          v192 = OUTLINED_FUNCTION_2_5();
          sub_25BB0D1B8(v192, v193, v194);
          goto LABEL_8;
        }

        v231 = 0;
        (*v207)(v225, v139, v234);
        sub_25BCB5BAC();
        v109 = v233;
        v141 = sub_25BCB5C1C();
        v143 = v142;
        v144 = *v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v143 = v144;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF1514(v144);
          v144 = v154;
          *v143 = v154;
        }

        v99 = v230;
        if (v229 < *(v144 + 16))
        {
          (*v206)(v144 + v228 + v219, v226, v241);
          v141(v243, 0);

          v146 = OUTLINED_FUNCTION_2_5();
          sub_25BB0D1B8(v146, v147, v148);
          (*v205)(v227, v234);
LABEL_33:
          v113 = v235;
          goto LABEL_34;
        }

        goto LABEL_74;
      }

      v99 = v230;
LABEL_34:
      v111 = v232;
      v152 = v237;
      v153 = v238;
      if (v232 != v212)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v113 = v235;
    v152 = v237;
    v153 = v238;
  }

  v155 = *(sub_25BCB5C5C() + 16);

  v227 = v155;
  if (!v155)
  {
LABEL_63:
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v99);
    (*(v153 + 104))(v201, *MEMORY[0x277CC91D8], v152);
    sub_25BCB596C();
    v191 = v231;
    sub_25BCB5C0C();
    if (v191)
    {

      (*(v217 + 8))(v113, v99);
      (*(v220 + 8))(v109, v221);
    }

    else
    {
      (*(v217 + 8))(v113, v99);
      if (__swift_getEnumTagSinglePayload(v204, 1, v99) != 1)
      {
        v195 = v214;
        sub_25BCB5A7C();
        sub_25BCB5A6C();
        (*(v215 + 8))(v195, v216);
        v250 = 0xD000000000000010;
        v251 = 0x800000025BCD9740;
        v252 = 0xD000000000000014;
        v253 = 0x800000025BCD9780;
        v254 = 0x73746867696577;
        v255 = 0xE700000000000000;
        v256 = 0xD000000000000018;
        v257 = 0x800000025BCD9760;
        v196 = a23[2];
        swift_isUniquelyReferenced_nonNull_native();
        v243[0] = a23[2];
        sub_25BC1AA6C();
        a23[2] = v243[0];
      }

      v197 = a23[3];
      v198 = a23[4];
      v246[8] = 0xD000000000000010;
      v246[9] = 0x800000025BCD9740;
      v246[10] = 0xD00000000000001ALL;
      v246[11] = 0x800000025BCD9720;
      strcpy(v247, "model.mlmodel");
      v247[7] = -4864;
      v248 = 0xD00000000000001ELL;
      v249 = 0x800000025BCD9700;
      sub_25BCB617C();
      v199 = a23[2];
      swift_isUniquelyReferenced_nonNull_native();
      v243[0] = a23[2];
      sub_25BC1AA6C();
      a23[2] = v243[0];

      (*(v220 + 8))(v233, v221);
    }

    sub_25BA9AC78(v245);
    sub_25BB0CDB0(v204);
LABEL_8:
    OUTLINED_FUNCTION_16();
    return;
  }

  v156 = 0;
  v226 = (v239 + 16);
  v219 = v239 + 8;
  v212 = (v222 + 16);
  v157 = *(a22 + 16);
  v211 = (v239 + 40);
  v210 = (v222 + 8);
  v222 = a22 + 48;
  v213 = v157 + 1;
  while (2)
  {
    v158 = v156;
    v159 = sub_25BCB5C5C();
    if (v158 < *(v159 + 16))
    {
      v259 = (v158 + 1);
      v160 = v239;
      v232 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v161 = *(v239 + 72);
      v242 = v158;
      v162 = v161 * v158;
      v163 = *(v239 + 16);
      v229 = v162;
      v164 = v236;
      v165 = v241;
      v163(v236, v159 + v232 + v162, v241);

      v166 = sub_25BCB5BBC();
      v168 = v167;
      (*(v160 + 8))(v164, v165);
      v169 = v213;
      v170 = v222;
      while (--v169)
      {
        v171 = *v170;
        if (*(v170 - 2) != v166 || *(v170 - 1) != v168)
        {
          v170 += 12;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        v173 = sub_25BCB617C();
        v174 = sub_25BB0AA2C(v173);
        v175 = *(v174 + 16);
        v228 = v174;
        v176 = (v174 + 48);
        v177 = v175 + 1;
        do
        {
          if (!--v177)
          {

            v109 = v233;
            goto LABEL_61;
          }

          v178 = *v176;
          if (*(v176 - 2) == v166 && *(v176 - 1) == v168)
          {
            break;
          }

          v176 += 3;
        }

        while ((sub_25BCB789C() & 1) == 0);
        sub_25BCB617C();

        LOWORD(v243[0]) = v171;
        v180 = v224;
        v181 = v231;
        sub_25BBAB404(v178, v166, v168, v224);
        if (v181)
        {

          (*(v220 + 8))(v233, v221);
          sub_25BA9AC78(v245);
          v105 = v204;
          goto LABEL_7;
        }

        v231 = 0;

        (*v212)(v225, v180, v234);
        sub_25BCB5BAC();
        v109 = v233;
        v182 = sub_25BCB5C4C();
        v184 = v183;
        v185 = *v183;
        v186 = swift_isUniquelyReferenced_nonNull_native();
        *v184 = v185;
        if ((v186 & 1) == 0)
        {
          sub_25BBF1514(v185);
          v185 = v187;
          *v184 = v187;
        }

        v99 = v230;
        v113 = v235;
        if (v242 < *(v185 + 16))
        {
          (*v211)(v185 + v232 + v229, v223, v241);
          v182(v243, 0);

          (*v210)(v224, v234);
          goto LABEL_62;
        }

        goto LABEL_75;
      }

LABEL_61:
      v99 = v230;
      v113 = v235;
LABEL_62:
      v152 = v237;
      v153 = v238;
      v156 = v259;
      if (v259 != v227)
      {
        continue;
      }

      goto LABEL_63;
    }

    break;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

uint64_t sub_25BB0CD18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB0CDB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB0CE18(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  return sub_25BB097B8(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80));
}

unint64_t sub_25BB0CE80()
{
  result = qword_27FBB4038;
  if (!qword_27FBB4038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBB4038);
  }

  return result;
}

uint64_t sub_25BB0CEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MILBlobStorageWriter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB0CF28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_25BB0CFFC()
{
  result = qword_27FBB4040;
  if (!qword_27FBB4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4040);
  }

  return result;
}

unint64_t sub_25BB0D050()
{
  result = qword_27FBB4050;
  if (!qword_27FBB4050)
  {
    sub_25BCB57CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4050);
  }

  return result;
}

unint64_t sub_25BB0D0A8()
{
  result = qword_27FBB4060;
  if (!qword_27FBB4060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4058, &unk_25BCBC5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4060);
  }

  return result;
}

unint64_t sub_25BB0D10C()
{
  result = qword_27FBB4068;
  if (!qword_27FBB4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4068);
  }

  return result;
}

uint64_t sub_25BB0D160(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BB0D1B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) == 0)
  {
    return sub_25BB0D1C4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25BB0D1C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_25BB0D200(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = sub_25BCB54EC();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v60 = (v20 - v21);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  v25 = *(v1 + 5);
  v26 = sub_25BAC4018();
  v27 = sub_25BB3EE04(v26, a1);
  if (v27)
  {
    v29 = v27;
    v30 = v28;
    type metadata accessor for NativeTensorStorage();
    v62 = *(v2 + 9);
    v58 = v2;
    v61 = v2[80];
    sub_25BCB617C();
    v31 = OUTLINED_FUNCTION_7_6();
    v32 = v59;
    sub_25BBC0130(v31, v33, v34);
    v56 = v32;
    v57 = v35;
    if (*(*(v35 + 16) + 16))
    {
      v36 = *(v35 + 16);
      sub_25BCB617C();
    }

    v59 = v10;
    OUTLINED_FUNCTION_5_0();

    ObjectType = swift_getObjectType();
    (*(v30 + 16))(&v62, ObjectType, v30);
    v39 = v24;
    if (!*(v62 + 16))
    {
    }

    v40 = v60;
    OUTLINED_FUNCTION_5_0();

    v55 = v17;
    v41 = *(v17 + 16);
    v41(v13, v39, v14);
    OUTLINED_FUNCTION_2_6(v13);
    v42 = v13;
    v43 = v59;
    v41(v59, v40, v14);
    v44 = OUTLINED_FUNCTION_2_6(v43);
    v45 = MEMORY[0x28223BE20](v44);
    *(&v54 - 4) = v58;
    *(&v54 - 3) = v39;
    v58 = v39;
    *(&v54 - 2) = v29;
    *(&v54 - 1) = v30;
    MEMORY[0x28223BE20](v45);
    *(&v54 - 6) = v29;
    *(&v54 - 5) = v30;
    *(&v54 - 4) = v43;
    *(&v54 - 3) = sub_25BB0E76C;
    *(&v54 - 2) = v46;
    v47 = v57;

    v48 = v56;
    sub_25BB0E340(v42, sub_25BB0E9FC, (&v54 - 8), v49);
    if (v48)
    {

      swift_unknownObjectRelease();
      sub_25BB0EA20(v42);
      a1 = v55 + 8;
      v50 = *(v55 + 8);
      v51 = OUTLINED_FUNCTION_8_8();
      v50(v51);
      sub_25BB0EA20(v43);
    }

    else
    {

      sub_25BB0EA20(v42);
      sub_25BB0EA20(v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      a1 = swift_allocObject();
      *(a1 + 16) = xmmword_25BCBAE50;
      *(a1 + 32) = v47;
      *(a1 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v50 = *(v55 + 8);
      v52 = OUTLINED_FUNCTION_8_8();
      v50(v52);
    }

    (v50)(v58, v14);
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    OUTLINED_FUNCTION_4_10(v37, 37);
  }

  return a1;
}

uint64_t sub_25BB0D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = a5;
  v24 = a6;
  v9 = sub_25BCB54EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25BCB537C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_25BB0D8F8(v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1;
  v17 = *(a1 + 144);
  (*(v10 + 16))(v13, a4, v9);
  sub_25BCB6D8C();
  v18 = *(a3 + 64);
  sub_25BCB510C();
  if (sub_25BCB50FC())
  {
    ObjectType = swift_getObjectType();
    (*(v24 + 16))(&v35, ObjectType);
    if (!*(v35 + 16))
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = -1;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v33 = -1;
      v34 = 4;
      sub_25BADDD28();
    }

    v20 = *(v35 + 32);

    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v22 = 0xD000000000000035;
    *(v22 + 8) = 0x800000025BCD98F0;
    *(v22 + 16) = 0x2000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB0D8F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = sub_25BCB537C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D82F88];
  if (v3 != 2)
  {
    v6 = MEMORY[0x277D82F90];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_25BB0D97C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v79 = v8 - v9;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v10);
  v80 = v71 - v11;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  v14 = v71 - v13;
  v15 = sub_25BCB54EC();
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v83 = (v21 - v22);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v23);
  v25 = v71 - v24;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v26);
  v28 = v71 - v27;
  v29 = *(v1 + 152);
  v30 = sub_25BAC4018();
  v31 = sub_25BB3EE04(v30, a1);
  v82 = v32;
  if (!v31)
  {
    goto LABEL_10;
  }

  v33 = v31;
  v84 = v28;
  v34 = *(v2 + 40);
  v35 = sub_25BAC4018();
  v36 = sub_25BB3EE04(v35, a1);
  v81 = v37;
  if (!v36)
  {
    swift_unknownObjectRelease();
LABEL_10:
    sub_25BB0E2EC();
    swift_allocError();
    OUTLINED_FUNCTION_4_10(v50, 46);
    return a1;
  }

  v38 = v36;
  type metadata accessor for NativeTensorStorage();
  v86 = *(v2 + 72);
  v85 = *(v2 + 80);
  sub_25BCB617C();
  v39 = OUTLINED_FUNCTION_7_6();
  v40 = v78;
  sub_25BBC0130(v39, v41, v42);
  v78 = v43;
  v76 = v40;
  ObjectType = swift_getObjectType();
  v45 = *(v82 + 16);
  v75 = ObjectType;
  v45(&v86);
  if (!*(v86 + 16))
  {
  }

  v46 = v25;
  OUTLINED_FUNCTION_5_0();

  v47 = swift_getObjectType();
  (*(v81 + 16))(&v86, v47);
  v48 = v78;
  if (!*(v86 + 16))
  {
  }

  OUTLINED_FUNCTION_5_0();

  v49 = *(*(v48 + 16) + 16);
  v77 = v38;
  v73 = v2;
  v74 = v33;
  if (v49)
  {
    sub_25BCB617C();
  }

  v51 = v83;
  OUTLINED_FUNCTION_5_0();

  v52 = *(v18 + 16);
  v53 = v14;
  v54 = v14;
  v55 = v84;
  v52(v53, v84, v15);
  OUTLINED_FUNCTION_2_6(v54);
  v56 = v80;
  v52(v80, v46, v15);
  OUTLINED_FUNCTION_2_6(v56);
  v72 = v46;
  v57 = v79;
  v52(v79, v51, v15);
  v58 = OUTLINED_FUNCTION_2_6(v57);
  v71[1] = v71;
  v59 = MEMORY[0x28223BE20](v58);
  v71[-4] = v73;
  v71[-3] = v55;
  v60 = v77;
  v61 = v81;
  v71[-2] = v77;
  v71[-1] = v61;
  MEMORY[0x28223BE20](v59);
  v71[-8] = v60;
  v71[-7] = v62;
  v63 = v78;
  v71[-6] = v56;
  v71[-5] = v63;
  v71[-4] = &off_286D4DBE0;
  v71[-3] = v57;
  v71[-2] = sub_25BB0ECE8;
  v71[-1] = v64;

  v65 = v76;
  sub_25BC675C0(sub_25BB0ED08, &v71[-10], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v65)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_25BB0EA20(v54);
    v66 = v56;
    a1 = *(v18 + 8);
    (a1)(v83, v15);
    (a1)(v72, v15);
    sub_25BB0EA20(v57);
    sub_25BB0EA20(v66);
    v67 = OUTLINED_FUNCTION_8_8();
    (a1)(v67);
  }

  else
  {

    sub_25BB0EA20(v54);
    sub_25BB0EA20(v57);
    sub_25BB0EA20(v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_25BCBAE50;
    *(a1 + 32) = v63;
    *(a1 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v69 = *(v18 + 8);
    v69(v83, v15);
    v69(v72, v15);
    v70 = OUTLINED_FUNCTION_8_8();
    (v69)(v70);
  }

  return a1;
}

uint64_t sub_25BB0DF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a3;
  v25 = a6;
  v26 = a7;
  v30 = a2;
  v10 = sub_25BCB54EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25BCB537C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_25BB0D8F8(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a5;
  v28 = a1;
  v18 = *(a1 + 144);
  v19 = *(v11 + 16);
  v19(v14, a5, v10);
  sub_25BCB6D8C();
  v20 = *(a4 + 64);
  sub_25BCB510C();
  if (sub_25BCB50FC())
  {
    ObjectType = swift_getObjectType();
    (*(v26 + 16))(&v40, ObjectType);
    if (!*(v40 + 16))
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = -1;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v38 = -1;
      v39 = 4;
      sub_25BADDD28();
    }

    v22 = *(v40 + 32);

    v19(v14, v27, v10);
    sub_25BCB6D8C();
    sub_25BCB50BC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v24 = 0xD000000000000035;
    *(v24 + 8) = 0x800000025BCD98F0;
    *(v24 + 16) = 0x2000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB0E210(uint64_t a1)
{
  result = sub_25BB0E298(&qword_27FBB4070, type metadata accessor for ResizeGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB0E254(uint64_t a1)
{
  result = sub_25BB0E298(&qword_27FBB4078, type metadata accessor for ResizeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB0E298(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25BB0E2EC()
{
  result = qword_27FBB4088;
  if (!qword_27FBB4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4088);
  }

  return result;
}

uint64_t sub_25BB0E340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39 = a3;
  v40 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v15 = OUTLINED_FUNCTION_6_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = sub_25BCB54EC();
  v21 = OUTLINED_FUNCTION_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v5 + 24);
  if (v28 > 0xC || ((1 << v28) & 0x1777) == 0)
  {
    goto LABEL_15;
  }

  sub_25BB0EC04(a1, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    if (*(*(v5 + 16) + 16))
    {
      v29 = *(v5 + 16);
      sub_25BCB617C();
    }

    v30 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v30);
    sub_25BCB54FC();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_25BB0EA20(v19);
    }
  }

  else
  {
    (*(v23 + 32))(v27, v19, v20);
  }

  v31 = sub_25BCB54AC();
  if (v31 < 0)
  {
    __break(1u);
LABEL_15:
    LODWORD(v37) = 0;
    v36 = 13;
LABEL_17:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](v31);
  v36 = v27;
  v33 = sub_25BB0E6E4(sub_25BB0EC74, (&v38 - 4), 0, v32);
  if (v33)
  {
    LODWORD(v37) = 0;
    v36 = 16;
    goto LABEL_17;
  }

  MEMORY[0x28223BE20](v33);
  *(&v38 - 4) = v5;
  *(&v38 - 3) = v27;
  v36 = a2;
  v37 = v39;
  if (*(v5 + 40))
  {
    v34 = *(v5 + 48);
  }

  sub_25BB0EC94(v40);
  return (*(v23 + 8))(v27, v20);
}

uint64_t sub_25BB0E6E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = a3;
  while (1)
  {
    v9 = v8;
    if (a4 == v8)
    {
      return a4 == v9;
    }

    if (a4 < a3)
    {
      break;
    }

    if (v8 >= a4)
    {
      goto LABEL_9;
    }

    v10 = v8;
    result = v7(&v10);
    if (!v4)
    {
      v8 = v9 + 1;
      if (result)
      {
        continue;
      }
    }

    return a4 == v9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25BB0E78C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(_DWORD *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v15[2] = a4;
  v16 = a3;
  v15[1] = a5;
  v7 = sub_25BCB54EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_25BCB6F2C();
  v12 = *(a1 + 24);
  (*(v8 + 16))(v11, a2, v7);
  LODWORD(a1) = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  v18 = v12;
  v13 = sub_25BBF4F40();
  v17 = v12;
  LODWORD(a2) = sub_25BBF4F40();
  (*(v8 + 8))(v11, v7);
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v19[0] = 0;
  v19[1] = a1;
  v28 = v15[0];
  v29 = v13;
  v30 = 0;
  v31 = a2;
  v32 = 1065353216;
  return v16(v19);
}

uint64_t sub_25BB0E950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  swift_getObjectType();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  return sub_25BC675C0(sub_25BB0ECB4, v9, MEMORY[0x277D84F78] + 8, a4);
}

uint64_t sub_25BB0E9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25BB0E950(a1, v2[5], v2[6], a2);
}

uint64_t sub_25BB0EA20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB0EA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  swift_getObjectType();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a1;
  return sub_25BC675C0(sub_25BB0ED3C, v14, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BB0EB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  swift_getObjectType();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  return sub_25BC675C0(sub_25BB0ED60, v11, MEMORY[0x277D84F78] + 8, a5);
}

uint64_t sub_25BB0EC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB0ED08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25BB0EA88(a1, v2[5], v2[6], v2[7], v2[8], a2, v2[9]);
}

uint64_t sub_25BB0ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25BB0EB4C(a1, v2[5], v2[6], v2[7], a2);
}

uint64_t sub_25BB0EE34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v169 = a8;
  v175 = a7;
  v15 = a10;
  v189 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  v171 = v16;
  v18 = *(v17 + 64);
  v19 = a12;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v178 = v22 - v21;
  OUTLINED_FUNCTION_9();
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v30 = *v29;
  v31 = *(v29 + 2);
  v181 = *(v29 + 1);
  *&v180 = v31;
  v179 = v29[24];
  v172 = v32;
  (*(v32 + 16))(v28);
  v184 = a11;
  v185 = v28;
  sub_25BB77708();
  LODWORD(v182) = v30;
  v164 = a1;
  if (v30)
  {
    if (v30 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v34 = 1;
    goto LABEL_9;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_16_8();

  if (v188)
  {
    v33 = *(v188 + 24);
    sub_25BAA4AF4(v187);
    if (v33)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_25BAA4AF4(v187);
  }

LABEL_8:
  v34 = 2;
LABEL_9:
  LOBYTE(v187[0]) = v34;
  Layer.prepare(for:)(v187);
  v177 = a9;
  v35 = a5(a3);
  v36 = *(*v35 + 88);
  v170 = v35;
  v37 = v36(a3);
  v186 = v37;
  v38 = *(v37 + 16);
  v39 = MEMORY[0x277D84F90];
  v176 = a12;
  if (v38)
  {
    v40 = v37;
    *&v187[0] = MEMORY[0x277D84F90];
    sub_25BCB617C();
    sub_25BAC5590();
    v39 = *&v187[0];
    v41 = *(*&v187[0] + 16);
    v42 = 48;
    do
    {
      v43 = *(v40 + v42);
      *&v187[0] = v39;
      v44 = *(v39 + 24);

      if (v41 >= v44 >> 1)
      {
        sub_25BAC5590();
        v39 = *&v187[0];
      }

      *(v39 + 16) = v41 + 1;
      *(v39 + 8 * v41 + 32) = v43;
      v42 += 24;
      ++v41;
      --v38;
    }

    while (v38);

    v15 = a10;
    v19 = v176;
  }

  v187[0] = 0uLL;
  Array<A>.resolve(descriptor:)(v187, v39);

  v45 = v182;
  LOBYTE(v187[0]) = v182;
  OUTLINED_FUNCTION_6_12();
  v46 = sub_25BB0FF78(v185, v187, v177, v15, v184, v19);
  v47 = v46;
  if (v182)
  {
    if (v182 != 1)
    {
      v45 = 0;
    }
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_16_8();

    if (v188)
    {
      v45 = *(v188 + 24) & 1;
    }

    else
    {
      v45 = 0;
    }

    v46 = sub_25BAA4AF4(v187);
  }

  v48 = v183;
  MEMORY[0x28223BE20](v46);
  v161[-6] = v177;
  v161[-5] = v15;
  v161[-4] = v184;
  v161[-3] = v19;
  v159 = v185;
  v160 = a3;
  v174 = v15;
  v173 = sub_25BC32E60(v178, v45);
  v168 = v48;
  v49 = 0;
  v50 = *(v47 + 16);
  v183 = MEMORY[0x277D84F90];
LABEL_23:
  v51 = (v47 + 56 + 32 * v49);
  while (v50 != v49)
  {
    if (v49 >= *(v47 + 16))
    {
      __break(1u);
    }

    v53 = *(v51 - 3);
    v52 = *(v51 - 2);
    v55 = *(v51 - 1);
    v54 = *v51;
    swift_bridgeObjectRetain_n();

    v55(v187, v56);

    v57 = *&v187[0];

    if (v57)
    {
      OUTLINED_FUNCTION_12_2();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v58 = v183;
      }

      else
      {
        v61 = *(v183 + 16);
        sub_25BAFDDD8();
      }

      v59 = *(v58 + 16);
      if (v59 >= *(v58 + 24) >> 1)
      {
        sub_25BAFDDD8();
      }

      ++v49;
      *(v58 + 16) = v59 + 1;
      v183 = v58;
      v60 = (v58 + 24 * v59);
      v60[4] = v53;
      v60[5] = v52;
      v60[6] = v57;
      goto LABEL_23;
    }

    v51 += 4;
    ++v49;
  }

  v62 = v178;
  v63 = v175(v178);
  v64 = *(*v63 + 88);
  v169 = v63;
  v167 = v64(v62);
  v65 = v184;
  v66 = v176;
  Layer.namedParameterKeyPaths(recursively:)();
  v166 = v161;
  *&v187[0] = v67;
  MEMORY[0x28223BE20](v67);
  v161[-8] = v65;
  v161[-7] = v66;
  LOBYTE(v161[-6]) = v182;
  OUTLINED_FUNCTION_3_9(v161);
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v68 = sub_25BCB68CC();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  v165 = v69;
  WitnessTable = swift_getWitnessTable();
  v71 = v69;
  v72 = MEMORY[0x277D84AC0];
  v73 = v168;
  v175 = sub_25BAB2B20(sub_25BB139F8, &v161[-10], v68, v71, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v74);
  v168 = v73;

  Layer.namedLayerStateKeyPaths(recursively:)();
  v76 = v75;
  *&v187[0] = v75;
  MEMORY[0x28223BE20](v75);
  v161[-8] = v65;
  v161[-7] = v66;
  v77 = v182;
  LOBYTE(v161[-6]) = v182;
  OUTLINED_FUNCTION_3_9(v161);
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v78 = sub_25BCB68CC();
  v79 = swift_getWitnessTable();
  v80 = v168;
  v82 = sub_25BAB2B20(sub_25BB13A18, &v161[-10], v78, v165, MEMORY[0x277D84A98], v79, v72, v81);
  v83 = v80;

  if (v77)
  {
    v84 = v77 == 1;
    v85 = v174;
    v86 = v173;
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_16_8();

    v86 = v173;
    if (v188)
    {
      v84 = *(v188 + 24) & 1;
    }

    else
    {
      v84 = 0;
    }

    v85 = v174;
    OUTLINED_FUNCTION_10_3();
    sub_25BAA4AF4(v187);
  }

  v87 = v177;
  sub_25BB10CE8(v187);
  v88 = sub_25BB109DC(&v186, v76, v77, v183, v82, v84, v187, v87, v85);
  if (!v80)
  {
    v83 = v88;

    sub_25BABF0A8(v187);

    if (v182)
    {
      if (v182 == 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      OUTLINED_FUNCTION_16_8();

      if (!v188)
      {
        v167 = 0;
        sub_25BAA4AF4(v187);
        goto LABEL_57;
      }

      v92 = *(v188 + 24);
      sub_25BAA4AF4(v187);
      if (v92)
      {
LABEL_45:
        sub_25BC4F4CC();
        v167 = 0;
        v93 = sub_25BC4F508();
        v94 = v93[2];
        v166 = v83;
        if (v94)
        {
          v95 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v95, v94, 0);
          v96 = *&v187[0];
          type metadata accessor for TensorHandle();
          v168 = v93;
          v97 = v93 + 6;
          do
          {
            v98 = *(v97 - 2);
            v83 = *(v97 - 1);
            v99 = *v97;
            v100 = swift_allocObject();
            OUTLINED_FUNCTION_2_7(v100);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v187[0] = v96;
            v102 = *(v96 + 16);
            v101 = *(v96 + 24);
            v103 = v96;
            if (v102 >= v101 >> 1)
            {
              v106 = OUTLINED_FUNCTION_4_11(v101);
              sub_25BB005D0(v106, v102 + 1, 1);
              v103 = *&v187[0];
            }

            *(v103 + 16) = v102 + 1;
            OUTLINED_FUNCTION_13_3((v103 + 24 * v102));
            v96 = v104;
          }

          while (!v105);

          OUTLINED_FUNCTION_1_9();
        }

        else
        {

          v96 = MEMORY[0x277D84F90];
        }

        v163 = v96;
        v118 = sub_25BC4F5E4();
        v119 = v118[2];
        if (v119)
        {
          v120 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v120, v119, 0);
          v121 = *&v187[0];
          v168 = type metadata accessor for TensorHandle();
          v165 = v118;
          v122 = v118 + 6;
          do
          {
            v123 = *(v122 - 2);
            v83 = *(v122 - 1);
            v124 = *v122;
            v125 = OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_2_7(v125);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v187[0] = v121;
            v127 = v121[2];
            v126 = v121[3];
            if (v127 >= v126 >> 1)
            {
              v128 = OUTLINED_FUNCTION_4_11(v126);
              sub_25BB005D0(v128, v127 + 1, 1);
              v121 = *&v187[0];
            }

            v121[2] = v127 + 1;
            OUTLINED_FUNCTION_13_3(&v121[3 * v127]);
          }

          while (!v105);
          v162 = v121;
          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_1_9();
        }

        else
        {

          v162 = MEMORY[0x277D84F90];
        }

        v129 = sub_25BC4F5FC();
        v130 = v129[2];
        if (v130)
        {
          v131 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v131, v130, 0);
          v132 = *&v187[0];
          v168 = type metadata accessor for TensorHandle();
          v165 = v129;
          v133 = v129 + 6;
          do
          {
            v134 = *(v133 - 2);
            v83 = *(v133 - 1);
            v135 = *v133;
            v136 = OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_2_7(v136);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v187[0] = v132;
            v138 = *(v132 + 16);
            v137 = *(v132 + 24);
            if (v138 >= v137 >> 1)
            {
              v140 = OUTLINED_FUNCTION_4_11(v137);
              sub_25BB005D0(v140, v138 + 1, 1);
              v132 = *&v187[0];
            }

            *(v132 + 16) = v138 + 1;
            v139 = (v132 + 24 * v138);
            v139[4] = v134;
            v139[5] = v83;
            v139[6] = v86;
            v133 += 3;
            --v130;
          }

          while (v130);
          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_1_9();
        }

        else
        {

          v132 = MEMORY[0x277D84F90];
        }

        v141 = sub_25BC4F614();
        v142 = v141[2];
        v165 = v132;
        if (v142)
        {
          v143 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v143, v142, 0);
          v144 = *&v187[0];
          v168 = type metadata accessor for TensorHandle();
          v161[1] = v141;
          v145 = v141 + 6;
          do
          {
            v146 = *(v145 - 2);
            v83 = *(v145 - 1);
            v147 = *v145;
            v148 = OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_2_7(v148);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v187[0] = v144;
            v150 = *(v144 + 16);
            v149 = *(v144 + 24);
            if (v150 >= v149 >> 1)
            {
              v152 = OUTLINED_FUNCTION_4_11(v149);
              sub_25BB005D0(v152, v150 + 1, 1);
              v144 = *&v187[0];
            }

            *(v144 + 16) = v150 + 1;
            v151 = (v144 + 24 * v150);
            v151[4] = v146;
            v151[5] = v83;
            v151[6] = v86;
            v145 += 3;
            --v142;
          }

          while (v142);

          OUTLINED_FUNCTION_1_9();
          v132 = v165;
        }

        else
        {

          v144 = MEMORY[0x277D84F90];
        }

        v108 = v177;
        v153 = v174;
        sub_25BB10CE8(v187);
        v154 = v167;
        v155 = sub_25BB10DE8(v163, v162, v132, v144, v173, v187, v108, v153);
        v167 = v154;
        if (v154)
        {

          OUTLINED_FUNCTION_17_2();
          OUTLINED_FUNCTION_15_3();

          OUTLINED_FUNCTION_12_2();

          OUTLINED_FUNCTION_14_7();

          sub_25BABF0A8(v187);
LABEL_87:
          v157 = OUTLINED_FUNCTION_0_11();
          v158(v157, v153);
          v91 = v172;
          goto LABEL_42;
        }

        v107 = v155;
        sub_25BABF0A8(v187);

        OUTLINED_FUNCTION_14_7();

        v156 = v167;
        sub_25BC4F4CC();
        v167 = v156;
        if (v156)
        {

          OUTLINED_FUNCTION_12_2();

          OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_17_2();

          goto LABEL_87;
        }

LABEL_58:
        LOBYTE(v187[0]) = v182;
        OUTLINED_FUNCTION_6_12();
        v109 = v183;
        v110 = v174;
        v111 = v184;
        sub_25BB11958(v185, v183, v187, v108, v174, v184, v176);
        sub_25BCA617C(v83, v107, v170, v169, v187);
        v181 = *(&v187[0] + 1);
        v182 = *&v187[0];
        v180 = v187[1];

        sub_25BAF9C80(v175);

        v83 = sub_25BAFA620();
        sub_25BAF9C80(v109);

        sub_25BAFA620();

        v112 = OUTLINED_FUNCTION_0_11();
        v113(v112, v110);
        v114 = v164;
        v115 = v181;
        *v164 = v182;
        v114[1] = v115;
        *(v114 + 1) = v180;
        (*(v172 + 8))(v185, v111);
        goto LABEL_59;
      }
    }

    v167 = 0;
LABEL_57:
    v107 = 0;
    v108 = v177;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_15_3();

  sub_25BABF0A8(v187);
  v89 = OUTLINED_FUNCTION_0_11();
  v90(v89, v85);

  v91 = v172;
LABEL_42:
  (*(v91 + 8))(v185, v184);
LABEL_59:
  v116 = *MEMORY[0x277D85DE8];
  return v83;
}

unint64_t *sub_25BB0FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = a5;
  v89 = a1;
  v84 = *(a5 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BCB736C();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for RecursiveStoredPropertiesIterator();
  v85 = *(v13 - 8);
  v14 = v85[8];
  MEMORY[0x28223BE20](v13);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v79 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v79 - v21;
  v23 = *(a2 + 8);
  v86 = *(a2 + 16);
  v87 = v23;
  v88 = *(a2 + 24);
  v24 = type metadata accessor for AnyLayerVariablePathCache();
  v25 = a6;
  v26 = v89;
  v27 = sub_25BAB5DD8(v7, &type metadata for LayerState, 1, v7);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v79[1] = v24;
    *&v92 = sub_25BCB604C();
    *&v95 = MEMORY[0x277D84FA0];
    v90 = MEMORY[0x277D84FA0];
    (*(v84 + 16))(v11, v26, v7);
    v29 = swift_allocObject();
    *(v29 + 16) = v7;
    *(v29 + 24) = v25;
    *(v29 + 32) = 1;
    *(v29 + 36) = 4;
    v84 = v12;
    sub_25BAB1090(v11, sub_25BAB60DC, v29, v22);
    v30 = v85;
    (v85[2])(v16, v22, v13);
    v31 = swift_getWitnessTable();
    MEMORY[0x25F876DC0](v13, v31);
    v32 = MEMORY[0x277D84F90];
    v33 = v25;
    v34 = &type metadata for LayerState;
    v35 = v19;
    v82 = v22;
    v83 = v13;
    v81 = v7;
    while (1)
    {
      sub_25BAB173C(v13, &v96);
      v36 = v96;
      if (!v96)
      {
        break;
      }

      v37 = v34;
      v38 = v33;
      v39 = v97;
      v40 = v98;
      v41 = sub_25BCB681C();
      v96 = v36;
      sub_25BCB68CC();

      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v32 + 16);
        sub_25BAB22A0();
        v32 = v44;
      }

      v42 = *(v32 + 16);
      if (v42 >= *(v32 + 24) >> 1)
      {
        sub_25BAB22A0();
        v32 = v45;
      }

      *(v32 + 16) = v42 + 1;
      *(v32 + 8 * v42 + 32) = v39;
      if ((v40 & 0x400000000) != 0)
      {
        sub_25BAA2CDC(&v96, v41);
      }

      v34 = v37;
      if (v40)
      {
        sub_25BAA2CDC(&v96, v41);
      }

      v33 = v38;
      v7 = v81;
      v22 = v82;
      v13 = v83;
      v30 = v85;
    }

    v46 = v30[1];
    v46(v35, v13);
    v96 = v7;
    v97 = v34;
    v98 = v33;
    v99 = &protocol witness table for LayerState;
    type metadata accessor for LayerVariablePaths();
    sub_25BAB2794();
    v28 = v47;
    sub_25BAB61C4();
    sub_25BAB61CC(v28);
    v46(v22, v13);
  }

  v48 = sub_25BC41DA0();

  v96 = v48;
  v82 = v28;
  *&v95 = sub_25BAB9528();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  v50 = sub_25BCB68CC();
  v51 = sub_25BB13C38();
  v52 = swift_getWitnessTable();
  sub_25BCB793C();

  v95 = v92;
  v96 = v49;
  v97 = v50;
  v98 = v51;
  v99 = v52;
  sub_25BCB715C();
  sub_25BCB712C();
  v85 = MEMORY[0x277D84F90];
  while (1)
  {
    *&v92 = v49;
    *(&v92 + 1) = v50;
    v93 = v51;
    v94 = v52;
    sub_25BCB714C();
    sub_25BCB713C();
    v53 = *(&v92 + 1);
    if (!*(&v92 + 1))
    {
      break;
    }

    v54 = v92;
    if ((v88 & 1) == 0)
    {
      *&v95 = 46;
      *(&v95 + 1) = 0xE100000000000000;
      v90 = v87;
      v91 = v86;
      sub_25BB0CFFC();
      v54 = sub_25BCB6F3C();
      v56 = v55;

      v53 = v56;
    }

    swift_getAtKeyPath();

    v57 = *(v92 + 32);
    if ((~v57 & 0xF000000000000007) != 0)
    {
      if (v57 < 0)
      {
        sub_25BAB3020(*(v92 + 32));
        sub_25BAB69FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = v85[2];
          sub_25BAFDD24();
          v85 = v76;
        }

        v67 = v85[2];
        v66 = v85[3];
        v83 = v67 + 1;
        v84 = v67;
        if (v67 >= v66 >> 1)
        {
          sub_25BAFDD24();
          v85 = v77;
        }

        v81 = v57 & 0x7FFFFFFFFFFFFFFFLL;
        sub_25BAB310C(v57);

        v68 = v85;
        v69 = v84;
        v85[2] = v83;
        v70 = &v68[4 * v69];
        v70[4] = v54;
        v70[5] = v53;
        v71 = v81;
        v70[6] = sub_25BB13CAC;
        v70[7] = v71;
      }

      else
      {
        v84 = swift_allocObject();
        *(v84 + 16) = 0;
        v58 = swift_allocObject();
        v83 = v58;
        v59 = v84;
        *(v58 + 16) = v57;
        *(v58 + 24) = v59;
        type metadata accessor for ParameterInitializer();
        v60 = swift_allocObject();
        v61 = v83;
        *(v60 + 16) = sub_25BB13C9C;
        *(v60 + 24) = v61;
        *(v60 + 100) = 4;
        *&v92 = v60;
        sub_25BAB3020(v57);

        sub_25BAB3020(v57);

        sub_25BACED40(&v92);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = v85[2];
          sub_25BAFDD24();
          v85 = v73;
        }

        v62 = v85[3];
        v81 = v85[2];
        WitnessTable = v81 + 1;
        if (v81 >= v62 >> 1)
        {
          sub_25BAFDD24();
          v85 = v74;
        }

        sub_25BAB310C(v57);

        v63 = v84;
        v64 = v85;
        v85[2] = WitnessTable;
        v65 = &v64[4 * v81];
        v65[4] = v54;
        v65[5] = v53;
        v65[6] = sub_25BB13CA4;
        v65[7] = v63;
      }
    }

    else
    {
    }
  }

  return v85;
}

uint64_t sub_25BB108D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, v11);
  Layer.callAsFunction(_:)(a2, a5, a6);
  return (*(v9 + 8))(v13, a5);
}

uint64_t sub_25BB109DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t a9)
{
  v11 = v9;
  v33 = a7;
  v46 = a5;
  v36 = a3;
  v37 = a4;
  v35 = a1;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  v34 = a2;
  if (v14)
  {
    v10 = v9;
    v44[0] = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v17 = (a2 + 48);
    do
    {
      v18 = *v17;
      v17 += 3;
      v19 = *(v18 + 16);

      sub_25BCB723C();
      v20 = *(v44[0] + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v14;
    }

    while (v14);
    v15 = v44[0];
    v11 = v9;
  }

  v21 = 0xD000000000000027;
  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v44[0]) = a6 & 1;
  v44[1] = MEMORY[0x277D84FA0];
  if (!sub_25BACF298(v15, v44))
  {
    v29 = "ent operation.";
LABEL_11:
    type metadata accessor for Function.CompilationError();
    swift_getWitnessTable();
    swift_allocError();
    sub_25BCA6188(v21, v29 | 0x8000000000000000, v30);
    swift_willThrow();
    return v10;
  }

  sub_25BAD6344();
  v23 = v22;

  if (*(v23 + 16) != 1)
  {

    v29 = "e a computational graph";
    v21 = 0xD00000000000007CLL;
    goto LABEL_11;
  }

  sub_25BAD6FB0(v23 + 32, v44);

  v25 = v35;
  v26 = *v35;
  MEMORY[0x28223BE20](v24);
  v32[2] = v44;
  v27 = v11;
  v28 = sub_25BC6F934(sub_25BB13C1C, v32, v26);
  v32[5] = v27;

  *v25 = v28;
  sub_25BAA51C8(&v45, &v38);
  if (*(&v39 + 1))
  {
    v42[0] = v38;
    v42[1] = v39;
    v42[2] = v40;
    v43 = v41;
  }

  else
  {
    sub_25BABEF40(v33, v42);
    if (*(&v39 + 1))
    {
      sub_25BA9C2C8(&v38);
    }
  }

  v10 = sub_25BB11F68(v44, v28, v36, v37, 0, 0, v46, v34, 0, v42, a8, a9);
  sub_25BABF0A8(v42);
  sub_25BA9AC78(v44);
  return v10;
}

uint64_t sub_25BB10CE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_28154E200 != -1)
  {
    swift_once();
  }

  v2 = qword_2815573E8;
  v3 = unk_2815573F0;
  __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7);
  return sub_25BC16FAC(1, v9, v2, v3, a1);
}

unint64_t sub_25BB10DE8(uint64_t a1, int64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  p_Kind = a2;
  sub_25BCB617C();
  v11 = sub_25BCB617C();
  v96 = a3;
  sub_25BC03458(v11);
  v12 = p_Kind;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v109 = p_Kind;
  v111 = v13;
  if (v13)
  {
    p_Kind = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v14 = p_Kind;
    v15 = p_Kind[2];
    v16 = (a1 + 48);
    do
    {
      v17 = *v16;
      p_Kind = v14;
      v18 = *(v14 + 24);

      if (v15 >= v18 >> 1)
      {
        sub_25BAC5590();
        v14 = p_Kind;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17;
      v16 += 3;
      ++v15;
      --v13;
    }

    while (v13);
    v12 = v109;
    v13 = v111;
  }

  v19 = v12[2];
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    p_Kind = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v21 = p_Kind;
    v22 = p_Kind[2];
    v23 = v12 + 6;
    do
    {
      v24 = *v23;
      p_Kind = v21;
      v25 = *(v21 + 24);

      if (v22 >= v25 >> 1)
      {
        sub_25BAC5590();
        v21 = p_Kind;
      }

      *(v21 + 16) = v22 + 1;
      *(v21 + 8 * v22 + 32) = v24;
      v23 += 3;
      ++v22;
      --v19;
    }

    while (v19);
    v20 = MEMORY[0x277D84F90];
    v13 = v111;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v26 = sub_25BAC1988(v14, v21, a5);

  if (v13)
  {
    v103 = v26;
    *&v119 = v20;
    sub_25BB005D0(0, v13, 0);
    v27 = 0;
    v114 = v20;
    v106 = a1 + 32;
    v28 = &unk_286D427E8;
    do
    {
      v29 = (v106 + 24 * v27);
      v30 = v29[1];
      v20 = v29[2];
      p_Kind = *v29;
      v123 = v30;
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F876C90](0x646172675FLL, 0xE500000000000000);
      v31 = p_Kind;
      v32 = v123;
      v33 = *(v20 + 16);
      v34 = *(v33 + 160);

      v35 = 0;
      while (v35 != 8)
      {
        v36 = &unk_286D427E8 + v35++;
        if (v36[32] == v34)
        {
          goto LABEL_22;
        }
      }

      if (!sub_25BAA80BC(v34, &unk_286D42270))
      {
        goto LABEL_83;
      }

      LOBYTE(v34) = *(v33 + 160);
LABEL_22:
      v133[0] = *(v33 + 152);
      v134 = v34;
      sub_25BCB617C();

      sub_25BAA51C8(v33 + 168, &p_Kind);

      Tensor.init(ones:scalarType:on:)(v133, &v134, &p_Kind, &v115);

      v37 = v114;
      v38 = v115;
      *&v119 = v114;
      v40 = *(v114 + 16);
      v39 = *(v114 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_25BB005D0((v39 > 1), v40 + 1, 1);
        v37 = v119;
      }

      ++v27;
      *(v37 + 16) = v41;
      v114 = v37;
      v42 = (v37 + 24 * v40);
      v42[4] = v31;
      v42[5] = v32;
      v42[6] = v38;
    }

    while (v27 != v111);
    v20 = MEMORY[0x277D84F90];
    v26 = v103;
  }

  else
  {
    v41 = *(v20 + 16);
    v114 = v20;
    v43 = v20;
    if (!v41)
    {
      goto LABEL_31;
    }
  }

  p_Kind = v20;
  sub_25BAC5590();
  v43 = p_Kind;
  v44 = p_Kind[2];
  v45 = 48;
  do
  {
    v46 = *(v114 + v45);
    p_Kind = v43;
    v47 = *(v43 + 24);

    if (v44 >= v47 >> 1)
    {
      sub_25BAC5590();
      v43 = p_Kind;
    }

    *(v43 + 16) = v44 + 1;
    *(v43 + 8 * v44 + 32) = v46;
    v45 += 24;
    ++v44;
    --v41;
  }

  while (v41);
LABEL_31:
  v48 = v26(v43);

  v28 = v109;
  v49 = v109[2];
  if (v49)
  {
    *&v115 = v20;
    sub_25BB005D0(0, v49, 0);
    v43 = 0;
    v112 = v109[2];
    v50 = v115;
    v51 = v109 + 6;
    v104 = v49;
    v107 = v48;
    while (v112 != v43)
    {
      if (v43 >= v28[2])
      {
        goto LABEL_80;
      }

      if (v43 >= *(v48 + 16))
      {
        goto LABEL_81;
      }

      v52 = *(v51 - 2);
      v53 = *(v51 - 1);
      v54 = *v51;
      v55 = *(v48 + 8 * v43 + 32);
      v56 = v55[2];
      swift_retain_n();
      sub_25BCB617C();

      v57 = sub_25BA928B4();
      [v57 lock];

      swift_beginAccess();
      sub_25BA9323C(v56 + 40, &p_Kind);
      if (v130)
      {
        if (v130 == 1)
        {

          swift_unknownObjectRelease();
          sub_25BA977E0(v126);
        }

        else
        {
          sub_25BA9778C(&p_Kind);
        }

        [*(v56 + 224) unlock];

        sub_25BCB617C();
        p_Kind = v55;
        identity(_:)(v120, &p_Kind);

        v55 = *&v120[0];
      }

      else
      {
        sub_25BA9778C(&p_Kind);
        [*(v56 + 224) unlock];

        *&v120[0] = v55;
      }

      *&v115 = v50;
      v59 = v50[2];
      v58 = v50[3];
      v20 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        sub_25BB005D0((v58 > 1), v59 + 1, 1);
        v50 = v115;
      }

      ++v43;
      v50[2] = v20;
      v60 = &v50[3 * v59];
      v60[4] = v52;
      v60[5] = v53;
      v60[6] = v55;
      v51 += 3;
      v48 = v107;
      v28 = v109;
      if (v104 == v43)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    *&v115 = v20;
    v90 = Tensor.scalarType.getter();
    v92 = v91;
    p_Kind = v28;
    sub_25BC03500(&unk_286D42270);
    v93 = p_Kind;
    p_Kind = &v90->Kind;
    v123 = v92;
    v124 = 0;
    v125 = 0;
    v126[0] = -1;
    v127 = v93;
    v128 = 1;
    v131 = 3;
    sub_25BADDD28();
  }

  v50 = MEMORY[0x277D84F90];
LABEL_47:
  v61 = v50[2];
  v62 = MEMORY[0x277D84F90];
  v99 = v50;
  if (v61)
  {
    p_Kind = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v63 = v50 + 6;
    do
    {
      v64 = *v63;
      v63 += 3;
      v43 = *(v64 + 16);

      sub_25BCB723C();
      v65 = p_Kind[2];
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v61;
    }

    while (v61);
    v62 = p_Kind;
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(p_Kind) = 0;
  v123 = MEMORY[0x277D84FA0];
  if (!sub_25BACF298(v62, &p_Kind))
  {

    v43 = a7;
    type metadata accessor for Function.CompilationError();
    swift_getWitnessTable();
    swift_allocError();
    v84 = v83;
    v85 = 0x800000025BCD9A20;
    v86 = 0xD000000000000027;
LABEL_70:
    sub_25BCA6188(v86, v85, v84);
    swift_willThrow();

    return v43;
  }

  sub_25BAD6344();
  v67 = v66;

  if (*(v67 + 16) != 1)
  {

    v43 = a7;
    type metadata accessor for Function.CompilationError();
    swift_getWitnessTable();
    swift_allocError();
    v84 = v87;
    v86 = 0xD00000000000007CLL;
    v85 = 0x800000025BCD9A50;
    goto LABEL_70;
  }

  sub_25BAD6FB0(v67 + 32, &p_Kind);

  v108 = v129;
  v110 = sub_25BA9BEA0(v129);
  v68 = 0;
  v105 = v108 & 0xC000000000000001;
  v113 = MEMORY[0x277D84F90];
LABEL_54:
  while (v68 != v110)
  {
    v28 = (v108 & 0xC000000000000001);
    sub_25BAB4D78(v68, v105 == 0, v108);
    if (v105)
    {
      MEMORY[0x25F8779B0](v68, v108);
    }

    else
    {
      v69 = *(v108 + 32 + 8 * v68);
    }

    if (__OFADD__(v68++, 1))
    {
      goto LABEL_82;
    }

    v71 = a2[2] + 1;
    v72 = a2 + 6;
    do
    {
      if (!--v71)
      {

        goto LABEL_54;
      }

      v73 = v72 + 3;
      v20 = *(v72 - 1);
      v74 = *v72;
      v75 = *(v72 - 2);
      v76 = *(*v72 + 16);
      v43 = sub_25BAC4018();
      v77 = sub_25BAC4018();
      v72 = v73;
    }

    while (v43 != v77);
    sub_25BCB617C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = *(v113 + 16);
      sub_25BAFDDD8();
      v113 = v81;
    }

    v78 = *(v113 + 16);
    if (v78 >= *(v113 + 24) >> 1)
    {
      sub_25BAFDDD8();
      v113 = v82;
    }

    *(v113 + 16) = v78 + 1;
    v79 = (v113 + 24 * v78);
    v79[4] = v75;
    v79[5] = v20;
    v79[6] = v74;
  }

  sub_25BAA51C8(&v132, &v115);
  if (*(&v116 + 1))
  {
    v119 = v115;
    v120[0] = v116;
    v120[1] = v117;
    v121 = v118;
  }

  else
  {
    sub_25BABEF40(a6, &v119);
    if (*(&v116 + 1))
    {
      sub_25BA9C2C8(&v115);
    }
  }

  *&v115 = v114;
  sub_25BC03458(v113);
  *&v94 = 1684107879;
  *(&v94 + 1) = 0xE400000000000000;
  v88 = sub_25BB11F68(&p_Kind, v115, v96, a4, 0, 0, MEMORY[0x277D84F90], v99, v94, &v119, a7, a8);
  if (!v98)
  {
    v43 = v88;
  }

  sub_25BABF0A8(&v119);

  sub_25BA9AC78(&p_Kind);
  return v43;
}

uint64_t sub_25BB11958(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a3;
  v12 = *(a3 + 1);
  v13 = *(a3 + 2);
  v14 = a3[24];
  Layer.namedLayerStateKeyPaths(recursively:)();
  v46 = v15;
  v39 = a4;
  v40 = a5;
  v41 = a7;
  v42 = v11;
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = sub_25BB13B94;
  v37 = &v38;
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v16 = sub_25BCB68CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_25BAB2B20(sub_25BB13BCC, v31, v16, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v46 = v20;
  sub_25BCB68CC();
  swift_getWitnessTable();
  sub_25BCB615C();
  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = (a2 + 48);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v46 = *(v22 - 2);
      v47 = v23;
      sub_25BCB617C();

      sub_25BCB61BC();

      if (v48)
      {
        v25 = *(v24 + 16);
        v26 = sub_25BAC4018();
        Layer.value<A>(for:)();
        v27 = *(v46 + 16);

        v28 = sub_25BAC4018();

        if (v26 != v28)
        {
          v48 = v24;
          Layer.updateValue<A>(_:for:)();
        }
      }

      else
      {
      }

      v22 += 3;
      --v21;
    }

    while (v21);
  }
}

uint64_t sub_25BB11C68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  type metadata accessor for TensorHandle();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_retain_n();
  sub_25BAA6EB0();

  *a2 = v4;
  return result;
}

uint64_t sub_25BB11CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v8 = *a1;
  ParameterInitializer.callAsFunction(shape:)();
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v7;

  *a3 = v7;
  return result;
}

uint64_t sub_25BB11D4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
}

uint64_t sub_25BB11D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_25BCB617C();
  }

  else
  {
    sub_25BB0CFFC();
    a1 = sub_25BCB6F3C();
  }

  return a1;
}

uint64_t sub_25BB11E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = a1[1];
  v15 = *a1;
  v3 = a1[2];
  v4 = *(a2 + 88);
  result = sub_25BA9BEA0(v4);
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      v13 = 0;
      v12 = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F8779B0](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v9 = *(v3 + 16);
    v10 = sub_25BAC4018();
    v11 = sub_25BAC4018();

    ++v7;
    if (v10 == v11)
    {
      v12 = v14;
      sub_25BCB617C();

      v13 = v15;
LABEL_11:
      *a3 = v13;
      a3[1] = v12;
      a3[2] = v3;
      return result;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25BB11F68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12)
{
  v83 = a12;
  v81 = a11;
  FunctionTypeMetadata1 = *(&a9 + 1);
  v76 = a9;
  sub_25BAD6FB0(a1, v90);
  type metadata accessor for LazyTensorFunctionBuilder();
  swift_allocObject();
  sub_25BC47C64(v90);
  v19 = v18;
  v91 = a2;
  v78 = a2;
  sub_25BCB617C();
  v20 = sub_25BCB617C();
  v79 = a3;
  sub_25BC03458(v20);
  v21 = sub_25BCB617C();
  v80 = a4;
  sub_25BC03458(v21);
  v22 = v91;
  sub_25BCB617C();
  sub_25BC45110(v19, v22);
  v86[0] = a8;
  sub_25BCB617C();
  v23 = sub_25BCB617C();
  v77 = a7;
  sub_25BC03458(v23);
  v24 = a8;
  sub_25BCB617C();
  sub_25BC454D8(v19, a8);
  v74 = v12;
  v89 = MEMORY[0x277D84FA0];
  v88 = a9;
  if (*(&a9 + 1))
  {
    sub_25BCB617C();

    v25 = v83;
  }

  else
  {
    v26 = *(v22 + 16);
    v27 = MEMORY[0x277D84F90];
    v75 = v19;
    v72 = a8;
    v73 = a8;
    if (v26)
    {
      v86[0] = MEMORY[0x277D84F90];
      sub_25BB004E4();
      v28 = v27;
      v29 = (v22 + 40);
      do
      {
        v30 = *(v29 - 1);
        v31 = *v29;
        v86[0] = v28;
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        sub_25BCB617C();
        if (v33 >= v32 >> 1)
        {
          sub_25BB004E4();
          v28 = v86[0];
        }

        *(v28 + 16) = v33 + 1;
        v34 = v28 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v29 += 3;
        --v26;
      }

      while (v26);

      v25 = v83;
      v19 = v75;
      v24 = v72;
      v27 = MEMORY[0x277D84F90];
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
      v25 = v83;
    }

    sub_25BB14688(v28);
    v36 = v35;
    v89 = v35;
    v37 = *(v24 + 16);
    if (v37)
    {
      v86[0] = v27;
      sub_25BCB617C();
      sub_25BB004E4();
      v38 = v27;
      v39 = (v24 + 40);
      do
      {
        v40 = *(v39 - 1);
        v41 = *v39;
        v86[0] = v38;
        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        sub_25BCB617C();
        if (v43 >= v42 >> 1)
        {
          sub_25BB004E4();
          v38 = v86[0];
        }

        *(v38 + 16) = v43 + 1;
        v44 = v38 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v39 += 3;
        --v37;
      }

      while (v37);

      v25 = v83;
      v19 = v75;
    }

    else
    {
      sub_25BCB617C();

      v38 = MEMORY[0x277D84F90];
    }

    sub_25BB14688(v38);
    v46 = sub_25BB12B20(v45, v36);

    if ((v46 & 1) == 0)
    {

      v88 = xmmword_25BCBC670;
    }
  }

  v47 = v81;
  _s9IOMappingVMa();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v87 = sub_25BCB604C();
  MEMORY[0x28223BE20](v87);
  v63 = v81;
  v64 = v25;
  v48 = v19;
  sub_25BC45AE0(sub_25BB13A78);
  v49 = swift_allocObject();
  sub_25BCB6E8C();
  swift_getFunctionTypeMetadata1();
  v50 = sub_25BCB604C();
  *(v49 + 16) = v50;
  MEMORY[0x28223BE20](v50);
  v65 = v47;
  v66 = v25;
  v67[0] = v78;
  v67[1] = v19;
  v68 = v49;
  v69 = v79;
  v70 = v80;
  sub_25BC44FE0(sub_25BB13AB8);
  sub_25BAD6344();
  if (*(v51 + 16) == 1)
  {
    v80 = a10;
    sub_25BAD6FB0(v51 + 32, v86);

    v52 = swift_beginAccess();
    v78 = &v71;
    v84[0] = *(v49 + 16);
    MEMORY[0x28223BE20](v52);
    v75 = v19;
    v68 = v47;
    v69 = v25;
    v70 = v86;
    sub_25BCB68CC();
    sub_25BCB617C();
    v53 = swift_checkMetadataState();
    swift_getWitnessTable();
    v54 = v74;
    v79 = sub_25BCB65BC();
    v77 = v54;

    v78 = v67;
    v84[0] = v87;
    MEMORY[0x28223BE20](v55);
    v63 = v47;
    v64 = v83;
    v65 = v86;
    v56 = sub_25BCB68CC();
    sub_25BCB617C();
    WitnessTable = swift_getWitnessTable();
    v59 = sub_25BAB2B20(sub_25BB13B0C, &v62, v56, v53, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v58);

    _s11ComputePassCMa();
    sub_25BABEF40(v80, v85);
    sub_25BAD6FB0(v86, v84);
    v48 = sub_25BC4F710(v79, v59, v85, v84);
    sub_25BA9AC78(v86);
  }

  else
  {

    type metadata accessor for Function.CompilationError();
    swift_getWitnessTable();
    swift_allocError();
    sub_25BCA6188(0xD00000000000007ALL, 0x800000025BCD9B40, v60);
    swift_willThrow();
  }

  return v48;
}

BOOL sub_25BB12724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = *(a7 + 16);
  v10 = a7 + 48;
  while (v9 != v8)
  {
    v11 = *(*v10 + 16);
    v12 = sub_25BAC4018();
    if (v12 == sub_25BAC4018())
    {
      goto LABEL_6;
    }

    ++v8;
    v10 += 24;
  }

  v8 = v9;
LABEL_6:
  v13 = 0;
  v14 = a7 + 48;
  while (v9 != v13)
  {
    v15 = *(*v14 + 16);
    v16 = sub_25BAC4018();
    if (v16 == sub_25BAC4018())
    {
      v9 = v13;
      return v8 < v9;
    }

    ++v13;
    v14 += 24;
  }

  return v8 < v9;
}

uint64_t sub_25BB12800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 8);
    v6 = *(v3 - 16);
    v7 = *(*v3 + 16);
    v8 = sub_25BAC4018();
    v3 += 24;
    if (v8 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v6;
    }
  }

  return 0;
}

uint64_t sub_25BB128A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 8);
    v6 = *(v3 - 16);
    v7 = *(*v3 + 16);
    v8 = sub_25BAC4018();
    v3 += 24;
    if (v8 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v6;
    }
  }

  return 0;
}

uint64_t sub_25BB1294C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 8);
    v6 = *(v3 - 16);
    v7 = *(*v3 + 16);
    v8 = sub_25BAC4018();
    v3 += 24;
    if (v8 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v6;
    }
  }

  return 0;
}

uint64_t sub_25BB129F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 8);
    v6 = *(v3 - 16);
    v7 = *(*v3 + 16);
    v8 = sub_25BAC4018();
    v3 += 24;
    if (v8 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v6;
    }
  }

  return 0;
}

uint64_t sub_25BB12A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2)
  {
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](a1, a2);
    return a3;
  }

  else
  {
    sub_25BCB617C();
  }

  return v3;
}

uint64_t sub_25BB12B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_25BCB617C();
  result = sub_25BCB617C();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_25BCB79CC();
      sub_25BCB617C();
      sub_25BCB625C();
      v19 = sub_25BCB7A3C();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_25BCB789C();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB12CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = sub_25BB1294C(a2, a3);
  if (!v16)
  {
    v15 = sub_25BB129F4(a2, a4);
    if (!v16)
    {
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000021, 0x800000025BCD9BC0);
      v30 = sub_25BAC44E4();
      MEMORY[0x25F876C90](v30);

      MEMORY[0x25F876C90](0xD000000000000028, 0x800000025BCD9BF0);
      sub_25BCB617C();
      sub_25BA97890();
    }
  }

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = a10;
  *(v23 + 24) = a11;
  *(v23 + 32) = a1;
  *(v23 + 40) = v19;
  *(v23 + 48) = v20;
  *(v23 + 56) = v21;
  *(v23 + 64) = v22;
  v24 = swift_allocObject();
  v24[2] = a10;
  v24[3] = a11;
  v24[4] = sub_25BB13B80;
  v24[5] = v23;
  _s9IOMappingVMa();
  swift_getFunctionTypeMetadata1();
  sub_25BCB68CC();
  sub_25BCB617C();

  sub_25BCB687C();
  if ((a6 & 1) != 0 || (v25 = *a7, sub_25BCB617C(), v26 = sub_25BB9FED4(v19, v20, v25), , v26))
  {
    v28 = *a8;
    v27 = a8[1];
    sub_25BCB617C();
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  sub_25BB12A9C(v28, v27, v19);

  sub_25BB0CFFC();
  sub_25BCB6F3C();

  sub_25BC4595C();
}

uint64_t sub_25BB13028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v11 = *(a1 + 152);
  sub_25BAB4D78(a2, (v11 & 0xC000000000000001) == 0, v11);
  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](a2, v11);
  }

  else
  {
    v12 = *(v11 + 8 * a2 + 32);
  }

  v13 = sub_25BC458D0();
  v15 = v14;

  sub_25BC4F6FC(a5, a3, a4, v13, v15, a2, v18);
  v16 = v18[1];
  *a6 = v18[0];
  a6[1] = v16;
  a6[2] = v18[2];

  return sub_25BCB617C();
}

uint64_t sub_25BB13130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1;
  if (sub_25BB13338(a1))
  {
  }

  else
  {
    v20[0] = *(v14 + 152);
    v24 = *(v14 + 160);
    type metadata accessor for TensorRepresentation();
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    swift_allocObject();
    sub_25BCB617C();
    v21 = 1;
    v15 = sub_25BC5F250(v20, &v24, v22, 0x100000000);

    sub_25BC4445C(v14, v15);

    v14 = v15;
  }

  v16 = sub_25BAC4018();
  v17 = swift_allocObject();
  *(v17 + 16) = a8;
  *(v17 + 24) = a9;
  *(v17 + 32) = v16;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 64) = a5;
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a9;
  v18[4] = sub_25BB13B30;
  v18[5] = v17;
  v20[0] = sub_25BB13B44;
  v20[1] = v18;
  swift_beginAccess();
  _s9IOMappingVMa();
  sub_25BCB6E8C();
  swift_getFunctionTypeMetadata1();
  sub_25BCB68CC();
  sub_25BCB617C();

  sub_25BCB687C();
  swift_endAccess();

  return v14;
}

BOOL sub_25BB13338(uint64_t a1)
{

  v2 = sub_25BA928B4();
  [v2 lock];

  swift_beginAccess();
  sub_25BA9323C(a1 + 40, v6);
  if (v8)
  {
    if (v8 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v7);
    }

    else
    {
      sub_25BA9778C(v6);
    }

    [*(a1 + 224) unlock];

    return 0;
  }

  sub_25BA9778C(v6);
  [*(a1 + 224) unlock];

  v3 = sub_25BAB3058();
  if (!v3)
  {
    return 0;
  }

  v4 = object_getClass(v3) == _TtC14NeuralNetworks14InputOperation;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_25BB13444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W5>, void *a6@<X8>)
{
  v8 = *(a1 + 88);
  result = sub_25BA9BEA0(v8);
  v10 = result;
  v11 = 0;
  v12 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v10 == v11)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
LABEL_16:
      *a6 = v17;
      a6[1] = v18;
      a6[2] = v19;
      a6[3] = v20;
      a6[4] = v21;
      a6[5] = v22;
      return result;
    }

    v13 = v8 + 8 * v11;
    if (!v12)
    {
      break;
    }

    MEMORY[0x25F8779B0](v11, v8);
LABEL_6:
    v15 = sub_25BAC4018();

    if (v15 == a2)
    {
      sub_25BAB4D78(v11, v12 == 0, v8);
      if (v12)
      {
        MEMORY[0x25F8779B0](v11, v8);
      }

      else
      {
        v23 = *(v13 + 32);
      }

      v24 = sub_25BC458D0();
      v26 = v25;

      sub_25BC4F6FC(a5, a3, a4, v24, v26, v11, v30);
      v17 = v30[0];
      v18 = v31;
      v19 = v32;
      v20 = v33;
      v21 = v34;
      v22 = v35;
      result = sub_25BCB617C();
      goto LABEL_16;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_18;
    }
  }

  if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);

    goto LABEL_6;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25BB135E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_25BB12800(a2, a3);
  if (v16)
  {
    sub_25BB13130(a2, v15, v16, v17, 0, a4, a5, a8, a9);
LABEL_5:
    sub_25BC45C10();
LABEL_6:

    goto LABEL_7;
  }

  v18 = sub_25BB128A4(a2, a6);
  if (v19)
  {
    sub_25BB13130(a2, v18, v19, v20, 1, a4, a5, a8, a9);
    goto LABEL_5;
  }

  v22 = sub_25BB129F4(a2, a7);
  if (v23)
  {
    sub_25BB13130(a2, v22, v23, v24, 2, a4, a5, a8, a9);
    sub_25BC45C10();
    goto LABEL_6;
  }

  v25 = sub_25BA928B4();
  [v25 lock];

  sub_25BA92920(a2, 0, 0, v31);
  [*(a2 + 224) unlock];

  v26 = v31[0];
  v27 = sub_25BAC44E4();
  v29 = v28;
  type metadata accessor for TensorRepresentation();
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  swift_allocObject();
  v30 = sub_25BC5F404(v26, *(&v26 + 1), v27, v29, v31, 0x100000000);
  sub_25BC4445C(a2, v30);
LABEL_7:
}

double sub_25BB13830@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + 8);
  (*a1)(v8, a2);
  result = *v8;
  v6 = v8[1];
  v7 = v8[2];
  *a3 = v8[0];
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

__n128 sub_25BB1388C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  (*a1)(&v8, a2);
  result = v9;
  v6 = v10;
  v7 = v11;
  *a3 = v8;
  *(a3 + 8) = result;
  *(a3 + 24) = v6;
  *(a3 + 40) = v7;
  return result;
}

void sub_25BB138F8(uint64_t *a1@<X0>, char a2@<W4>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  if (a2)
  {
    v8 = sub_25BCB617C();
  }

  else
  {
    sub_25BB0CFFC();
    v6 = sub_25BCB6F3C();
    v8 = v9;
  }

  *a3 = v6;
  a3[1] = v8;
  Layer.value<A>(for:)();
}

void sub_25BB13A38(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  v7 = *(v2 + 64);
  v8 = *(v2 + 32);
  sub_25BB138F8(a1, *(v2 + 56), a2);
}

double sub_25BB13AEC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_25BB13830(a1, v2[4], a2);
}

double sub_25BB13B0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  *&result = sub_25BB1388C(a1, v2[4], a2).n128_u64[0];
  return result;
}

uint64_t sub_25BB13B30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 56);
  return sub_25BB13444(a1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 64), a2);
}

double sub_25BB13B44()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1(v13);
  *&result = OUTLINED_FUNCTION_11_9(v3, v4, v5, v6, v7, v8, v9, v10, v13[0], v13[1], v11).n128_u64[0];
  return result;
}

uint64_t sub_25BB13B80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 56);
  return sub_25BB13028(a1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 64), a2);
}

uint64_t sub_25BB13B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  return sub_25BB11D98(a1, a2, a3, *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64));
}

uint64_t sub_25BB13BCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  result = v4(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

unint64_t sub_25BB13C38()
{
  result = qword_27FBB4098;
  if (!qword_27FBB4098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4098);
  }

  return result;
}

void ParameterInitializer.callAsFunction(shape:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v4 = *v3;
  OUTLINED_FUNCTION_35();
  sub_25BB14570(v0 + 16, &v84);
  switch(v92)
  {
    case 1:
      v25 = v85;
      OUTLINED_FUNCTION_22_2();
      v83 = v91;
      v27 = dynamic_cast_existential_2_conditional(v26);
      if (!v27)
      {
        *&v77 = 0xD000000000000043;
        *(&v77 + 1) = 0x800000025BCD9DB0;
        v81 = 9;
        OUTLINED_FUNCTION_2_8();
        sub_25BA97890();
      }

      sub_25BB149E8(v27, v4, v25, v82 + 1, v27, v28, v29, v93);
      goto LABEL_65;
    case 2:
      _KR00_8 = v84;
      v8 = v85;
      v7 = v86;
      v9 = OUTLINED_FUNCTION_22_2();
      v83 = v91;
      v11 = *(v10 + 8);
      (*(v11 + 32))(v82, v7, v11, v9);
      OUTLINED_FUNCTION_46_0();
      switch(v12)
      {
        case 0:
          sub_25BCB617C();
          if (v8)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          __asm
          {
            FCVT            H9, S9
            FCVT            H8, S8
          }

          sub_25BAA51C8(v82 + 1, &v77);
          OUTLINED_FUNCTION_1_10();
          goto LABEL_64;
        case 1:
          sub_25BCB617C();
          if (v8)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          sub_25BB155AC(v4, SWORD1(_KR00_8), SHIWORD(_KR00_8), v11, v8, &v77, v93);
          goto LABEL_65;
        case 2:
          if (v8)
          {
            goto LABEL_42;
          }

          sub_25BCB617C();
          OUTLINED_FUNCTION_17_3();
          break;
        case 3:
          sub_25BCB617C();
          if (v8)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          sub_25BAA51C8(v82 + 1, &v77);
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_20_0();
          goto LABEL_61;
        default:
          goto LABEL_74;
      }

LABEL_58:
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_1_10();
      sub_25BB15A80();
LABEL_65:

      v5 = v82 + 1;
      goto LABEL_66;
    case 3:
      v13 = v84;
      v14 = BYTE1(v84);
      v15 = *(&v84 + 1);
      v16 = v85;
      v11 = v86;
      OUTLINED_FUNCTION_22_2();
      v83 = v91;
      *&v77 = v4;
      v7 = &v77;
      v17 = sub_25BB175F0();
      v19 = v17;
      if (!v13)
      {
        v19 = (v17 + v18) * 0.5;
      }

      v20 = v15 / v19;
      if (v14)
      {
        if (v14 == 1)
        {
          v21 = OUTLINED_FUNCTION_6_13();
          v22(v21);
          OUTLINED_FUNCTION_46_0();
          _S8 = sqrtf(v20);
          switch(v24)
          {
            case 0:
              goto LABEL_19;
            case 1:
              goto LABEL_31;
            case 2:
              goto LABEL_27;
            case 3:
              goto LABEL_29;
            default:
              goto LABEL_76;
          }
        }

        v40 = OUTLINED_FUNCTION_6_13();
        v41(v40);
        OUTLINED_FUNCTION_46_0();
        v42 = sqrtf(v20);
        _S8 = (v42 + v42) / 0.87963;
        switch(v43)
        {
          case 0:
LABEL_19:
            __asm { FCVT            H8, S8; jumptable 000000025BB13EC4 case 0 }

            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_28_3();
            OUTLINED_FUNCTION_20_0();
            sub_25BB160E0(v55, v56, v57, v58, v59, v60, v61);
            goto LABEL_65;
          case 1:
LABEL_31:
            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            sub_25BB165CC(v4, 0, SHIWORD(_S8), v11, v16, &v77, v93);
            goto LABEL_65;
          case 2:
LABEL_27:
            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_28_3();
            OUTLINED_FUNCTION_20_0();
            sub_25BB16AB0(v62, v63, v64, v65, v66, v67, v68);
            goto LABEL_65;
          case 3:
LABEL_29:
            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_28_3();
            OUTLINED_FUNCTION_20_0();
            sub_25BB16F9C(v48, v49, v50, v51, v52, v53, v54);
            goto LABEL_65;
          default:
            goto LABEL_76;
        }
      }

      v30 = OUTLINED_FUNCTION_6_13();
      v31(v30);
      OUTLINED_FUNCTION_46_0();
      _S8 = sqrtf(v20 * 3.0);
      switch(v33)
      {
        case 0:
          __asm
          {
            FCVT            H8, S8; jumptable 000000025BB13F68 case 0
            FCMP            H8, #0
          }

          if (_NF != _VF)
          {
            goto LABEL_72;
          }

          sub_25BCB617C();
          if (v16)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          OUTLINED_FUNCTION_1_10();
LABEL_64:
          sub_25BB1527C();
          goto LABEL_65;
        case 1:
          v47 = (LODWORD(_S8) ^ 0x80000000) >> 16;
          if (v47 > HIWORD(LODWORD(_S8)))
          {
            goto LABEL_73;
          }

          sub_25BCB617C();
          if (v16)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          sub_25BB14DA8(v4, LODWORD(_S8) & 0xFFFF0000 | v47, v11, v16, &v77, v93);
          goto LABEL_65;
        case 2:
          if (_S8 < 0.0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            *&v77 = v7;
            *(&v77 + 1) = v11;
            v78 = 0uLL;
            OUTLINED_FUNCTION_3_10(255);
            OUTLINED_FUNCTION_2_8();
LABEL_77:
            sub_25BADDD28();
          }

          if (v16)
          {
LABEL_42:
            sub_25BCB617C();

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            sub_25BCB617C();
            OUTLINED_FUNCTION_17_3();
          }

          goto LABEL_58;
        case 3:
          if (_S8 < 0.0)
          {
            goto LABEL_71;
          }

          sub_25BCB617C();
          if (v16)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_20_0();
LABEL_61:
          sub_25BB15DB0();
          goto LABEL_65;
        default:
LABEL_76:
          OUTLINED_FUNCTION_32_2();
          OUTLINED_FUNCTION_3_10(v75);
          OUTLINED_FUNCTION_2_8();
          goto LABEL_77;
      }

    case 4:
      *&v77 = v4;
      v84(v93, &v77);

      goto LABEL_67;
    default:
      v77 = v87;
      v78 = v88;
      v79 = v89;
      v80 = v90;
      sub_25BB148DC(v85, v4, &v77, v85, v86);
      v5 = &v77;
LABEL_66:
      sub_25BA9C2C8(v5);
LABEL_67:
      v69 = v93[0];
      OUTLINED_FUNCTION_29_4();
      v74 = sub_25BAA2C4C(v70, v71, v72, v73);
      v76 = *(v69 + 16);
      MEMORY[0x28223BE20](v74);

      sub_25BB18650(sub_25BB186F4);

      swift_unknownObjectRelease();
      *v2 = v69;
      OUTLINED_FUNCTION_37_0();
      return;
  }
}