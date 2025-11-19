uint64_t sub_25861DF28(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25861DFB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25861E0AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 33))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 32) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x7B)
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

uint64_t sub_25861E0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

void (*sub_25861E188(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_25861CAFC(a3);
  sub_25861CB08(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x259C84AC0](a2, a3);
  }

  *a1 = v7;
  return sub_25861E214;
}

uint64_t sub_25861E21C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_258621064();
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
    result = sub_258615FB8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_25861EE98(0, &qword_27F954C38, 0x277D27980);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_25861E390(0, &unk_27F954C40);
        sub_25861E3D4();
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_25861E188(v12, i, a3);
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

void sub_25861E390(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_30(a1, a2))
  {
    OUTLINED_FUNCTION_32(0, v3, v4, v5);
    v6 = sub_258620D14();
    if (!v7)
    {
      atomic_store(v6, v2);
    }
  }
}

unint64_t sub_25861E3D4()
{
  result = qword_27F954C48;
  if (!qword_27F954C48)
  {
    sub_25861E390(255, &unk_27F954C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C48);
  }

  return result;
}

void sub_25861E444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25861E860(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_29();
  sub_25861D070(v4, v5);
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  return a2;
}

uint64_t sub_25861E924(uint64_t a1)
{
  sub_25861E980();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25861E980()
{
  if (!qword_27F954C60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F954C60);
    }
  }
}

uint64_t sub_25861E9E8()
{
  sub_25861ECB8(0, &unk_27F954C68);
  OUTLINED_FUNCTION_23_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_25_0();

  return sub_258617ABC(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25861EA78()
{
  result = qword_27F954C70;
  if (!qword_27F954C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C70);
  }

  return result;
}

void sub_25861EACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, MEMORY[0x277D84F70] + 8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_25861EB2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25861EB88()
{
  result = qword_27F954C80;
  if (!qword_27F954C80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F954C80);
  }

  return result;
}

void sub_25861EBD8()
{
  if (!qword_27F954C88)
  {
    sub_25861E390(255, &unk_27F954B50);
    v0 = sub_258620D54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954C88);
    }
  }
}

uint64_t sub_25861EC58()
{
  sub_25861EBD8();
  OUTLINED_FUNCTION_23_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_25_0();

  return sub_25861700C(v3);
}

void sub_25861ECB8(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_30(a1, a2))
  {
    OUTLINED_FUNCTION_32(0, v3, v4, v5);
    sub_258611170(255, &qword_281548FF8);
    OUTLINED_FUNCTION_22_0();
    v6 = sub_258620D54();
    if (!v7)
    {
      atomic_store(v6, v2);
    }
  }
}

uint64_t objectdestroy_388Tm(uint64_t a1)
{
  sub_25861ECB8(0, a1);
  OUTLINED_FUNCTION_8_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_25861EDB0(void *a1, void *a2)
{
  sub_25861ECB8(0, &unk_27F954C90);
  OUTLINED_FUNCTION_23_0(v4);
  v6 = *(v5 + 80);

  return sub_2586169E8(a1, a2);
}

unint64_t sub_25861EE44()
{
  result = qword_27F954C98;
  if (!qword_27F954C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954C98);
  }

  return result;
}

uint64_t sub_25861EE98(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25861EED8(unsigned int *a1, int a2)
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

_BYTE *sub_25861EF28(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_25861EFD8()
{
  result = qword_27F954CA8;
  if (!qword_27F954CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F954CA8);
  }

  return result;
}

void OUTLINED_FUNCTION_0_3(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_25861E444(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  return result;
}

void OUTLINED_FUNCTION_7_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D83940];

  sub_25861E444(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t result, uint64_t a2)
{
  v2[9] = result;
  v2[10] = a2;
  v2[11] = 0;
  v2[12] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211F2F8](a1, a2, 0, 0, 0, 1, v2, v2);
}

void OUTLINED_FUNCTION_19_0()
{

  JUMPOUT(0x259C847B0);
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t result, uint64_t a2)
{
  v2[19] = result;
  v2[20] = a2;
  v2[21] = 0;
  v2[22] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t result, uint64_t a2)
{
  v2[14] = result;
  v2[15] = a2;
  v2[16] = 0;
  v2[17] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 64;
  return result;
}

uint64_t OUTLINED_FUNCTION_31()
{

  return sub_2586210E4();
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{

  return sub_25861EE98(255, a3, a4);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_258621164();
}

uint64_t waitForDebugger(for:)()
{
  OUTLINED_FUNCTION_6_1();
  v0[9] = v1;
  v0[10] = v2;
  v3 = sub_258620D64();
  v0[11] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v0[12] = v4;
  v6 = *(v5 + 64);
  v0[13] = OUTLINED_FUNCTION_19_1();
  v7 = sub_258620AF4();
  v0[14] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v0[15] = v8;
  v10 = *(v9 + 64);
  v0[16] = OUTLINED_FUNCTION_19_1();
  v11 = sub_258620B24();
  v0[17] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v0[18] = v12;
  v14 = *(v13 + 64);
  v0[19] = OUTLINED_FUNCTION_19_1();
  sub_2586206F8(0, &qword_27F954B18, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  v0[20] = OUTLINED_FUNCTION_19_1();
  v17 = sub_258620FE4();
  v0[21] = v17;
  OUTLINED_FUNCTION_3_0(v17);
  v0[22] = v18;
  v0[23] = *(v19 + 64);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v20 = sub_258621004();
  v0[26] = v20;
  OUTLINED_FUNCTION_3_0(v20);
  v0[27] = v21;
  v0[28] = *(v22 + 64);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25861F5A4, 0, 0);
}

uint64_t sub_25861F5A4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v35 = v1;
  v36 = v0[23];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];
  v37 = v0[28];
  v38 = v0[9];
  v40 = v0[10];
  sub_258620FF4();
  sub_258620FA4();
  v10 = sub_258620D84();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  (*(v8 + 16))(v6, v5, v7);
  (*(v3 + 16))(v1, v2, v4);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (v36 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v8 + 32))(v13 + v11, v6, v7);
  (*(v3 + 32))(v13 + v12, v35, v4);
  v14 = (v13 + ((v37 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v38;
  v14[1] = v40;
  v15 = sub_258615614(0, 0, v9, &unk_2586242E8, v13);
  v0[31] = v15;
  LODWORD(v9) = isatty(0);
  sub_2586204A4();
  v16 = OUTLINED_FUNCTION_18_1();
  *(v16 + 16) = xmmword_2586216B0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  if (v9 == 1)
  {
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[16];
    v20 = v0[15];
    v39 = v0[14];
    v41 = v0[17];
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_13_1(v21);
    sub_258621154();

    v22 = sub_258620AC4();
    fflush(v22);
    v23 = sub_258620AE4();
    v24 = signal(2, v23);
    sub_2586204F8();
    v25 = sub_258620E64();
    swift_getObjectType();
    v0[6] = sub_258620590;
    v0[7] = v15;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_258620598;
    v0[5] = &block_descriptor_0;
    v26 = _Block_copy(v0 + 2);

    sub_258620B14();
    sub_2586205F4();
    sub_258620E74();
    _Block_release(v26);
    (*(v20 + 8))(v19, v39);
    (*(v18 + 8))(v17, v41);
    v27 = v0[7];

    sub_258620E94();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_13_1(v28);
    sub_258621154();

    v24 = 0;
    v25 = 0;
  }

  v0[32] = v24;
  v0[33] = v25;
  v29 = *(MEMORY[0x277D857C8] + 4);
  v30 = swift_task_alloc();
  v0[34] = v30;
  v31 = sub_258614170();
  v0[35] = v31;
  *v30 = v0;
  v30[1] = sub_25861F99C;
  v32 = MEMORY[0x277D84950];
  v33 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v31, v15, v33, v31, v32);
}

uint64_t sub_25861F99C()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v8 = v7;
  *(v9 + 288) = v0;

  if (v0)
  {
    v10 = sub_25861FBF4;
  }

  else
  {
    v10 = sub_25861FAA4;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25861FAA4()
{
  if (*(v0 + 264))
  {
    v1 = *(v0 + 264);
    swift_getObjectType();
    sub_258620E84();
  }

  if (isatty(0) == 1)
  {
    v2 = *(v0 + 256);
    if (!v2)
    {
      v2 = sub_258620AD4();
    }

    signal(2, v2);
    sub_2586204A4();
    v3 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_0_4(v3, MEMORY[0x277D837D0], xmmword_2586216B0);

    v4 = sub_258620AC4();
    fflush(v4);
  }

  OUTLINED_FUNCTION_1_3();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_7_3();
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_3();
  v8(v7);

  OUTLINED_FUNCTION_4_3();

  return v9();
}

uint64_t sub_25861FBF4()
{
  *(v0 + 64) = *(v0 + 288);
  v1 = *(v0 + 280);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  MEMORY[0x259C85040]();
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);

    (*(v5 + 8))(v4, v6);
    if (*(v0 + 264))
    {
      v7 = *(v0 + 264);
      swift_getObjectType();
      sub_258620E84();
    }

    if (isatty(0) == 1)
    {
      v8 = *(v0 + 256);
      if (!v8)
      {
        v8 = sub_258620AD4();
      }

      signal(2, v8);
      sub_2586204A4();
      v9 = OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_0_4(v9, MEMORY[0x277D837D0], xmmword_2586216B0);

      v10 = sub_258620AC4();
      fflush(v10);
    }

    OUTLINED_FUNCTION_1_3();
    swift_unknownObjectRelease();
    v11 = OUTLINED_FUNCTION_7_3();
    v12(v11);
    v13 = OUTLINED_FUNCTION_6_3();
    v14(v13);

    OUTLINED_FUNCTION_4_3();
  }

  else
  {

    if (isatty(0) == 1)
    {
      v16 = *(v0 + 256);
      if (!v16)
      {
        v16 = sub_258620AD4();
      }

      signal(2, v16);
      sub_2586204A4();
      v17 = OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_0_4(v17, MEMORY[0x277D837D0], xmmword_2586216B0);

      v18 = sub_258620AC4();
      fflush(v18);
    }

    OUTLINED_FUNCTION_1_3();
    swift_unknownObjectRelease();
    v19 = OUTLINED_FUNCTION_7_3();
    v20(v19);
    v21 = OUTLINED_FUNCTION_6_3();
    v22(v21);

    v15 = *(v0 + 8);
    v23 = *(v0 + 288);
  }

  return v15();
}

uint64_t sub_25861FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258620FE4();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25861FF5C, 0, 0);
}

uint64_t sub_25861FF5C()
{
  OUTLINED_FUNCTION_9_2();
  sub_258620FD4();
  v4 = OUTLINED_FUNCTION_5_3();
  v3(v4);
  if (OUTLINED_FUNCTION_16_0() & 1) == 0 || (MSVProcessIsDebugging())
  {
    v6 = v1[8];
    v5 = v1[9];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_10_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_8_3();
  (v3)(v0, v2);
  v9 = *(MEMORY[0x277D858F0] + 4);
  v10 = swift_task_alloc();
  v1[12] = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_3_3(v10);
  OUTLINED_FUNCTION_10_1();

  return MEMORY[0x282200618]();
}

uint64_t sub_25862006C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 88);
  (*(v2 + 80))(*(v2 + 64), *(v2 + 48));
  if (v0)
  {
    v7 = sub_2586201D8;
  }

  else
  {
    v7 = sub_25861FF5C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2586201D8()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_258620240()
{
  v2 = sub_258620FE4();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_258621004();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = (v0 + ((*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_2586203B8;
  OUTLINED_FUNCTION_10_1();

  return sub_25861FE8C(v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_2586203B8()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void sub_2586204A4()
{
  if (!qword_27F954CB0)
  {
    v0 = sub_2586210B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F954CB0);
    }
  }
}

unint64_t sub_2586204F8()
{
  result = qword_281549008;
  if (!qword_281549008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281549008);
  }

  return result;
}

uint64_t sub_25862053C(uint64_t a1)
{
  v2 = sub_258614170();
  v3 = MEMORY[0x277D84950];
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200438](a1, v4, v2, v3);
}

uint64_t sub_258620598(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2586205F4()
{
  sub_258620AF4();
  sub_2586206A0();
  sub_2586206F8(0, &qword_27F954CB8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25862075C();
  return sub_258620F14();
}

unint64_t sub_2586206A0()
{
  result = qword_281549028;
  if (!qword_281549028)
  {
    sub_258620AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281549028);
  }

  return result;
}

void sub_2586206F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_25862075C()
{
  result = qword_281549020;
  if (!qword_281549020)
  {
    sub_2586206F8(255, &qword_27F954CB8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281549020);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(__n128 *a1@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[3].n128_u64[1] = a2;
  a1[2].n128_u64[0] = 0x4B325B1B0DLL;
  a1[2].n128_u64[1] = 0xE500000000000000;

  return sub_258621154();
}

uint64_t OUTLINED_FUNCTION_1_3()
{
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  v14 = v0[20];
  v15 = v0[19];
  v12 = v0[16];
  v16 = v0[13];
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{
  *(a1 + 8) = sub_25862006C;
  v2 = *(v1 + 24);
  return *(v1 + 64);
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  *(v1 + 80) = *(v2 + 8);
  *(v1 + 88) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return MEMORY[0x282200638](100000000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return sub_258620FA4();
}

uint64_t OUTLINED_FUNCTION_13_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return MEMORY[0x2821FE648](v0, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_17_1()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[3];

  return sub_258620FA4();
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return swift_task_alloc();
}