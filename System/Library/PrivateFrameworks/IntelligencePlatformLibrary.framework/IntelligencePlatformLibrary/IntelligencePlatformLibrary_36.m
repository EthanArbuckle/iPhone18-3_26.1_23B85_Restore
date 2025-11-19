uint64_t sub_1936E2158(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = v17;
      memcpy(v18, a1, sizeof(v18));
      sub_19393C640();

      sub_1936E2F80();
      sub_19393C540();

      result = sub_19393CB00();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x193B18030](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1936E22CC()
{
  result = qword_1EAE40C10;
  if (!qword_1EAE40C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C10);
  }

  return result;
}

unint64_t sub_1936E2324()
{
  result = qword_1EAE40C18;
  if (!qword_1EAE40C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C18);
  }

  return result;
}

unint64_t sub_1936E237C()
{
  result = qword_1EAE40C20;
  if (!qword_1EAE40C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C20);
  }

  return result;
}

unint64_t sub_1936E23D4()
{
  result = qword_1EAE40C28;
  if (!qword_1EAE40C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C28);
  }

  return result;
}

unint64_t sub_1936E242C()
{
  result = qword_1EAE40C30;
  if (!qword_1EAE40C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C30);
  }

  return result;
}

unint64_t sub_1936E2484()
{
  result = qword_1EAE40C38;
  if (!qword_1EAE40C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C38);
  }

  return result;
}

unint64_t sub_1936E24DC()
{
  result = qword_1EAE40C40;
  if (!qword_1EAE40C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C40);
  }

  return result;
}

unint64_t sub_1936E2534()
{
  result = qword_1EAE40C48;
  if (!qword_1EAE40C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C48);
  }

  return result;
}

unint64_t sub_1936E258C()
{
  result = qword_1EAE40C50;
  if (!qword_1EAE40C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C50);
  }

  return result;
}

unint64_t sub_1936E25E4()
{
  result = qword_1EAE40C58;
  if (!qword_1EAE40C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C58);
  }

  return result;
}

unint64_t sub_1936E263C()
{
  result = qword_1EAE40C60;
  if (!qword_1EAE40C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C60);
  }

  return result;
}

unint64_t sub_1936E2694()
{
  result = qword_1EAE40C68;
  if (!qword_1EAE40C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C68);
  }

  return result;
}

unint64_t sub_1936E26EC()
{
  result = qword_1EAE40C70;
  if (!qword_1EAE40C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C70);
  }

  return result;
}

unint64_t sub_1936E2744()
{
  result = qword_1EAE40C78;
  if (!qword_1EAE40C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C78);
  }

  return result;
}

unint64_t sub_1936E279C()
{
  result = qword_1EAE40C80;
  if (!qword_1EAE40C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C80);
  }

  return result;
}

unint64_t sub_1936E27F4()
{
  result = qword_1EAE40C88;
  if (!qword_1EAE40C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C88);
  }

  return result;
}

unint64_t sub_1936E284C()
{
  result = qword_1EAE40C90;
  if (!qword_1EAE40C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C90);
  }

  return result;
}

unint64_t sub_1936E28A4()
{
  result = qword_1EAE40C98;
  if (!qword_1EAE40C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C98);
  }

  return result;
}

unint64_t sub_1936E28FC()
{
  result = qword_1EAE40CA0;
  if (!qword_1EAE40CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CA0);
  }

  return result;
}

unint64_t sub_1936E2954()
{
  result = qword_1EAE40CA8;
  if (!qword_1EAE40CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CA8);
  }

  return result;
}

unint64_t sub_1936E29AC()
{
  result = qword_1EAE40CB0;
  if (!qword_1EAE40CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CB0);
  }

  return result;
}

unint64_t sub_1936E2A04()
{
  result = qword_1EAE40CB8;
  if (!qword_1EAE40CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CB8);
  }

  return result;
}

unint64_t sub_1936E2A5C()
{
  result = qword_1EAE40CC0;
  if (!qword_1EAE40CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CC0);
  }

  return result;
}

unint64_t sub_1936E2AB4()
{
  result = qword_1EAE40CC8;
  if (!qword_1EAE40CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CC8);
  }

  return result;
}

unint64_t sub_1936E2B0C()
{
  result = qword_1EAE40CD0;
  if (!qword_1EAE40CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CD0);
  }

  return result;
}

unint64_t sub_1936E2B64()
{
  result = qword_1EAE40CD8;
  if (!qword_1EAE40CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CD8);
  }

  return result;
}

unint64_t sub_1936E2BBC()
{
  result = qword_1EAE40CE0;
  if (!qword_1EAE40CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CE0);
  }

  return result;
}

unint64_t sub_1936E2C14()
{
  result = qword_1EAE40CE8;
  if (!qword_1EAE40CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CE8);
  }

  return result;
}

unint64_t sub_1936E2C6C()
{
  result = qword_1EAE40CF0;
  if (!qword_1EAE40CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CF0);
  }

  return result;
}

unint64_t sub_1936E2CC4()
{
  result = qword_1EAE40CF8;
  if (!qword_1EAE40CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CF8);
  }

  return result;
}

unint64_t sub_1936E2D1C()
{
  result = qword_1EAE40D00;
  if (!qword_1EAE40D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D00);
  }

  return result;
}

unint64_t sub_1936E2D74()
{
  result = qword_1EAE40D08;
  if (!qword_1EAE40D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D08);
  }

  return result;
}

unint64_t sub_1936E2DCC()
{
  result = qword_1EAE40D10;
  if (!qword_1EAE40D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D10);
  }

  return result;
}

unint64_t sub_1936E2E24()
{
  result = qword_1EAE40D18;
  if (!qword_1EAE40D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D18);
  }

  return result;
}

unint64_t sub_1936E2E7C()
{
  result = qword_1EAE40D20;
  if (!qword_1EAE40D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D20);
  }

  return result;
}

unint64_t sub_1936E2ED4()
{
  result = qword_1EAE40D28;
  if (!qword_1EAE40D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D28);
  }

  return result;
}

unint64_t sub_1936E2F2C()
{
  result = qword_1EAE40D30;
  if (!qword_1EAE40D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D30);
  }

  return result;
}

unint64_t sub_1936E2F80()
{
  result = qword_1EAE40D48;
  if (!qword_1EAE40D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D48);
  }

  return result;
}

unint64_t sub_1936E2FD4()
{
  result = qword_1EAE3A7B8;
  if (!qword_1EAE3A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7B8);
  }

  return result;
}

unint64_t sub_1936E3028()
{
  result = qword_1EAE40DD0;
  if (!qword_1EAE40DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40DD0);
  }

  return result;
}

unint64_t sub_1936E307C()
{
  result = qword_1EAE40DD8;
  if (!qword_1EAE40DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40DD8);
  }

  return result;
}

unint64_t sub_1936E30D0()
{
  result = qword_1EAE40E18;
  if (!qword_1EAE40E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E18);
  }

  return result;
}

unint64_t sub_1936E3124()
{
  result = qword_1EAE40E20;
  if (!qword_1EAE40E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E20);
  }

  return result;
}

unint64_t sub_1936E3178()
{
  result = qword_1EAE40E88;
  if (!qword_1EAE40E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E88);
  }

  return result;
}

unint64_t sub_1936E31CC()
{
  result = qword_1EAE40E90;
  if (!qword_1EAE40E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_38()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_60_19()
{
  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

__n128 OUTLINED_FUNCTION_97_8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_101_13@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 16);
  v2 = *(a1 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_118_11()
{
  result = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  return result;
}

uint64_t OUTLINED_FUNCTION_120_7()
{
}

void OUTLINED_FUNCTION_121_8(uint64_t a1@<X8>)
{
  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_140_8()
{
  v3 = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
}

uint64_t OUTLINED_FUNCTION_141_7()
{

  return sub_1936E1EFC();
}

uint64_t OUTLINED_FUNCTION_142_8@<X0>(uint64_t a1@<X8>)
{
  v4 = *((v2 & a1) + 0x10);
  v5 = *((v1 & a1) + 0x10);
}

void sub_1936E365C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC1B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("seconds");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "nanos");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936E378C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C170();
      *(v0 + 8) = 0;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
      OUTLINED_FUNCTION_92_11();
      if (!v5)
      {
        v4 = 0;
      }

      *v0 = v4;
    }
  }

  return result;
}

uint64_t sub_1936E3840()
{
  OUTLINED_FUNCTION_96_3();
  result = *v0;
  v3 = *(v0 + 8);
  if (*v0)
  {
    OUTLINED_FUNCTION_62_6();
    result = sub_19393C360();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_62_6();
      return sub_19393C350();
    }
  }

  return result;
}

void sub_1936E3904()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC1D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("typeUrl");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "value");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E3A34()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C140();
      OUTLINED_FUNCTION_29_7();
      if (!v6 & v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7;
      }

      if (!v6 & v5)
      {
        v10 = 0xC000000000000000;
      }

      else
      {
        v10 = v8;
      }

      sub_193446A6C(v1[2], v1[3]);
      v1[2] = v9;
      v1[3] = v10;
    }

    else if (v2 == 1)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
      v4 = v1[1];

      *v1 = 0;
      v1[1] = 0xE000000000000000;
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936E3B20()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = v0[2];
  v4 = v0[3];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_286();
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
      v2 = v1;
    }
  }

  if (v2)
  {
    goto LABEL_17;
  }

  v6 = v4 >> 62;
  if (v4 >> 62 == 3)
  {
    goto LABEL_17;
  }

  if (!v6)
  {
    v7 = BYTE6(v4);
    goto LABEL_15;
  }

  if (v6 != 1)
  {
    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (v10)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v7)
    {
      OUTLINED_FUNCTION_193_1();
      OUTLINED_FUNCTION_24_2();
      sub_19393C330();
    }

LABEL_17:
    OUTLINED_FUNCTION_27();
    return;
  }

  LODWORD(v7) = HIDWORD(v3) - v3;
  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    v7 = v7;
    goto LABEL_15;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1936E3C60()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC1E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("primitive");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "custom");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_16_6(v13, "builtin");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_0_0(v15, "attributed");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  *v17 = "codable";
  *(v17 + 1) = 7;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E3DF4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        *&__src[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *&__src[0];
        if ((~*&__src[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v5 = swift_allocObject();
          OUTLINED_FUNCTION_642(v5);
        }

        OUTLINED_FUNCTION_173_0();
        v6 = swift_allocObject();
        *(v6 + 16) = v2;
        *v1 = v6;
        break;
      case 2:
        __src[0] = xmmword_1939526A0;
        __src[1] = 0uLL;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *(&__src[0] + 1);
        if (*(&__src[0] + 1) == 1)
        {
          ToolKitToolTypeIdentifier.Custom.init()();
          v2 = *(&__dst[0] + 1);
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_95();
        v14 = swift_allocObject();
        OUTLINED_FUNCTION_292_0(v14, v15, v16, v17, v18, v19, v20, v21, v22);
        OUTLINED_FUNCTION_257_0(v23);
        break;
      case 3:
        *&__src[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *&__src[0];
        if ((~*&__src[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v8 = swift_allocObject();
          OUTLINED_FUNCTION_642(v8);
        }

        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        OUTLINED_FUNCTION_277(v9);
        break;
      case 4:
        sub_1936E41B8(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_193498018();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_605(v28);
        OUTLINED_FUNCTION_605(v29);
        if (sub_19346CD80(v29) == 1)
        {
          ToolKitToolTypeIdentifier.Attributed.init()();
          OUTLINED_FUNCTION_605(v26);
          sub_19344E6DC(v26, &qword_1EAE41948, &qword_19397F950);
        }

        else
        {
          OUTLINED_FUNCTION_605(v25);
          memcpy(v26, v28, sizeof(v26));
          sub_1936C02B4(v26, v24);
          sub_19344E6DC(v25, &qword_1EAE41948, &qword_19397F950);
          memcpy(v27, v28, sizeof(v27));
        }

        v12 = swift_allocObject();
        v13 = OUTLINED_FUNCTION_151_1(v12);
        memcpy(v13, v27, 0xF0uLL);
        *v1 = v2 | 0x6000000000000000;
        break;
      case 5:
        __src[0] = xmmword_1939526A0;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *(&__src[0] + 1);
        if (*(&__src[0] + 1) == 1)
        {
          v7 = __dst;
          ToolKitToolTypeIdentifier.Codable.init()();
          v2 = *(&__dst[0] + 1);
        }

        else
        {
          v7 = __src;
        }

        v10 = *v7;
        OUTLINED_FUNCTION_123_1();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v2;
        OUTLINED_FUNCTION_285(v11);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

double sub_1936E41B8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  return result;
}

void sub_1936E41E4()
{
  OUTLINED_FUNCTION_103_10();
  switch(v1)
  {
    case 1:
      v8 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 32);
      __dst[0] = *(v8 + 16);
      __dst[1] = v9;
      break;
    case 2:
      *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      break;
    case 3:
      memcpy(__dst, ((v0 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v2 = memcpy(v10, __dst, sizeof(v10));
      OUTLINED_FUNCTION_174(v2, v3, v4, &type metadata for ToolKitToolTypeIdentifier.Attributed, v5, &off_1F07E2A60, v6, v7, v10[0]);
      break;
    case 4:
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      break;
    default:
      *&__dst[0] = *(v0 + 16);
      break;
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_1936E4388()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC200);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v75 = OUTLINED_FUNCTION_108_2();
  *(v75 + 16) = xmmword_1939775A0;
  v4 = v75 + v0 + dword_1EAEAC238;
  *(v75 + v0) = 1;
  *v4 = "none_p";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  *(v4 + 24) = "noneP";
  *(v4 + 32) = 5;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x1E69AADD8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  (v8)(v4, v5, v6);
  v9 = OUTLINED_FUNCTION_58_18();
  *v9 = "BOOLType";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v8();
  v11 = OUTLINED_FUNCTION_9_4((v75 + v0 + 2 * v3));
  *v11 = "intType";
  *(v11 + 1) = 7;
  v12 = OUTLINED_FUNCTION_114_11(v11);
  (v8)(v12);
  v13 = OUTLINED_FUNCTION_9_64();
  *v13 = "number";
  *(v13 + 1) = 6;
  v14 = OUTLINED_FUNCTION_114_11(v13);
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_21_39();
  *v15 = "decimal";
  *(v15 + 1) = 7;
  v16 = OUTLINED_FUNCTION_114_11(v15);
  (v8)(v16);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v17);
  *v18 = "string";
  v18[1] = v19;
  v20 = OUTLINED_FUNCTION_114_11(v18);
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_52_0();
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_103_11(v21, 4);
  (v8)(v23);
  OUTLINED_FUNCTION_33_0(8 * v3);
  OUTLINED_FUNCTION_121_1(v24);
  *v25 = "dateComponents";
  v25[1] = 14;
  v26 = OUTLINED_FUNCTION_114_11(v25);
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_55_2((v75 + v0 + 8 * v3));
  v28 = OUTLINED_FUNCTION_103_11(v27, 3);
  (v8)(v28);
  v29 = OUTLINED_FUNCTION_44(9 * v3);
  *v30 = 10;
  *v29 = "dictionary";
  v29[1] = 10;
  v31 = OUTLINED_FUNCTION_114_11(v29);
  (v8)(v31);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_377_0(v32);
  *v33 = "attributedString";
  v33[1] = 16;
  v34 = OUTLINED_FUNCTION_114_11(v33);
  (v8)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v75 + v0 + 11 * v3);
  *v36 = 12;
  *v35 = "measurement";
  v35[1] = v37;
  v38 = OUTLINED_FUNCTION_114_11(v35);
  (v8)(v38);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_631(v39);
  *v40 = "currencyAmount";
  v40[1] = 14;
  v41 = OUTLINED_FUNCTION_114_11(v40);
  (v8)(v41);
  v42 = OUTLINED_FUNCTION_52_0();
  *v43 = 14;
  *v42 = "paymentMethod";
  v42[1] = 12;
  v44 = OUTLINED_FUNCTION_114_11(v42);
  (v8)(v44);
  v45 = OUTLINED_FUNCTION_105_14((v75 + v0 + 14 * v3));
  v46 = OUTLINED_FUNCTION_103_11(v45, 9);
  (v8)(v46);
  OUTLINED_FUNCTION_33_0(16 * v3);
  OUTLINED_FUNCTION_256_1(v47);
  v49 = OUTLINED_FUNCTION_103_11(v48, 6);
  (v8)(v49);
  v50 = OUTLINED_FUNCTION_131_1((v75 + v0 + 16 * v3));
  v51 = OUTLINED_FUNCTION_103_11(v50, 4);
  (v8)(v51);
  v52 = OUTLINED_FUNCTION_44(17 * v3);
  *v53 = 18;
  v54 = OUTLINED_FUNCTION_103_11(v52, 3);
  (v8)(v54);
  v55 = OUTLINED_FUNCTION_52_0();
  *v56 = 19;
  *v55 = "searchableItem";
  v55[1] = 14;
  v57 = OUTLINED_FUNCTION_114_11(v55);
  (v8)(v57);
  v58 = OUTLINED_FUNCTION_52_0();
  *v59 = 20;
  v60 = OUTLINED_FUNCTION_103_11(v58, 11);
  (v8)(v60);
  v61 = OUTLINED_FUNCTION_72();
  *v62 = 21;
  v63 = OUTLINED_FUNCTION_103_11(v61, 8);
  (v8)(v63);
  v64 = OUTLINED_FUNCTION_52_0();
  *v65 = 22;
  v66 = OUTLINED_FUNCTION_103_11(v64, 14);
  (v8)(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 23;
  v69 = OUTLINED_FUNCTION_103_11(v67, 12);
  (v8)(v69);
  v70 = OUTLINED_FUNCTION_52_0();
  *v71 = 24;
  *v70 = "personNameComponents";
  v70[1] = 20;
  v72 = OUTLINED_FUNCTION_114_11(v70);
  (v8)(v72);
  v73 = OUTLINED_FUNCTION_52_0();
  *v74 = 25;
  *v73 = "duration";
  *(v73 + 8) = 8;
  *(v73 + 16) = 2;
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E48B8()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v5 = swift_allocObject();
        *(v5 + 16) = v2;
        *v1 = v5;
        continue;
      case 2:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v20 = swift_allocObject();
        *(v20 + 16) = v2;
        OUTLINED_FUNCTION_629(v20);
        continue;
      case 3:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v15 = swift_allocObject();
        *(v15 + 16) = v2;
        OUTLINED_FUNCTION_347(v15);
        continue;
      case 4:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0x1000000000000004;
        goto LABEL_30;
      case 5:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v10 = swift_allocObject();
        *(v10 + 16) = v2;
        OUTLINED_FUNCTION_257_0(v10);
        continue;
      case 6:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v23 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v23);
        v9 = v24 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
        goto LABEL_30;
      case 7:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v29 = swift_allocObject();
        *(v29 + 16) = v2;
        OUTLINED_FUNCTION_330(v29);
        continue;
      case 8:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v18 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v18);
        v9 = v19 & 0xFFFFFFFFFFFFLL | 0x3000000000000000;
        goto LABEL_30;
      case 9:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v30 = swift_allocObject();
        *(v30 + 16) = v2;
        OUTLINED_FUNCTION_277(v30);
        continue;
      case 10:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v12 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v12);
        v9 = v13 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
        goto LABEL_30;
      case 11:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0x5000000000000000;
        goto LABEL_30;
      case 12:
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        v2 = 0;
        OUTLINED_FUNCTION_123_1();
        v8 = swift_allocObject();
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v9 = 0x5000000000000004;
        goto LABEL_30;
      case 13:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        OUTLINED_FUNCTION_285_1(v11);
        continue;
      case 14:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v27 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v27);
        v9 = v28 & 0xFFFFFFFFFFFFLL | 0x6000000000000000;
        goto LABEL_30;
      case 15:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        OUTLINED_FUNCTION_332(v7);
        continue;
      case 16:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v16 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v16);
        v9 = v17 & 0xFFFFFFFFFFFFLL | 0x7000000000000000;
        goto LABEL_30;
      case 17:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v6 = swift_allocObject();
        *(v6 + 16) = v2;
        OUTLINED_FUNCTION_285(v6);
        continue;
      case 18:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v21 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v21);
        v9 = v22 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
        goto LABEL_30;
      case 19:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0x9000000000000000;
        goto LABEL_30;
      case 20:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v31 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v31);
        v9 = v32 & 0xFFFFFFFFFFFFLL | 0x9000000000000000;
        goto LABEL_30;
      case 21:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0xA000000000000000;
        goto LABEL_30;
      case 22:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v25 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v25);
        v9 = v26 & 0xFFFFFFFFFFFFLL | 0xA000000000000000;
        goto LABEL_30;
      case 23:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0xB000000000000000;
        goto LABEL_30;
      case 24:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v33 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v33);
        v9 = v34 & 0xFFFFFFFFFFFFLL | 0xB000000000000000;
LABEL_30:
        OUTLINED_FUNCTION_266_1(v8, v9);
        break;
      case 25:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v14 = swift_allocObject();
        *(v14 + 16) = v2;
        OUTLINED_FUNCTION_331(v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936E50D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch((*v8 >> 59) & 0x1E | (*v8 >> 2) & 1)
  {
    case 1uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_182_0(v42, v43, v44, &type metadata for ToolKitToolNullValue, v45, &off_1F07E4EA0, v46, v47, v67);
      break;
    case 2uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_135_1(v24, v25, v26, &type metadata for ToolKitToolNullValue, v27, &off_1F07E4EA0, v28, v29, v67);
      break;
    case 3uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_174(v30, v31, v32, &type metadata for ToolKitToolNullValue, v33, &off_1F07E4EA0, v34, v35, v67);
      break;
    case 4uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_302_1(v18, v19, v20, &type metadata for ToolKitToolNullValue, v21, &off_1F07E4EA0, v22, v23, v67);
      break;
    case 5uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_303_0(v48, v49, v50, &type metadata for ToolKitToolNullValue, v51, &off_1F07E4EA0, v52, v53, v67);
      break;
    case 6uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_653(v60, v61, v62, &type metadata for ToolKitToolNullValue, v63, &off_1F07E4EA0, v64, v65, v67);
      break;
    case 7uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_654(v36, v37, v38, &type metadata for ToolKitToolNullValue, v39, &off_1F07E4EA0, v40, v41, v67);
      break;
    case 8uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 9;
      break;
    case 9uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 10;
      break;
    case 0xAuLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 11;
      break;
    case 0xBuLL:
      OUTLINED_FUNCTION_49_19();
      v17 = *(v16 + 16);
      LOBYTE(v16) = *(v16 + 24);
      v67 = v17;
      v68 = v16;
      v13 = &type metadata for ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType;
      v15 = &off_1F07E29D8;
      v10 = &v67;
      v11 = 12;
      break;
    case 0xCuLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 13;
      break;
    case 0xDuLL:
      OUTLINED_FUNCTION_49_20(v9);
      v10 = OUTLINED_FUNCTION_655(v54, v55, v56, &type metadata for ToolKitToolNullValue, v57, &off_1F07E4EA0, v58, v59, v67);
      break;
    case 0xEuLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 15;
      break;
    case 0xFuLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 16;
      break;
    case 0x10uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 17;
      break;
    case 0x11uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 18;
      break;
    case 0x12uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 19;
      break;
    case 0x13uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 20;
      break;
    case 0x14uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 21;
      break;
    case 0x15uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 22;
      break;
    case 0x16uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 23;
      break;
    case 0x17uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 24;
      break;
    case 0x18uLL:
      OUTLINED_FUNCTION_49_20(v9);
      v13 = &type metadata for ToolKitToolNullValue;
      v15 = &off_1F07E4EA0;
      v10 = &v67;
      v11 = 25;
      break;
    default:
      v10 = OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for ToolKitToolNullValue, a3, &off_1F07E4EA0, a7, a8, *(v9 + 16));
      break;
  }

  return sub_193447324(v10, v11, v12, v13, v14, v15);
}

void sub_1936E54A8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC218);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v57 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v57, xmmword_19397F8F0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("MeasurementUnitTypeUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_4_9();
  v11 = OUTLINED_FUNCTION_16_6(v10, "MeasurementUnitTypeLength");
  v8(v11);
  v12 = OUTLINED_FUNCTION_35_4();
  v13 = OUTLINED_FUNCTION_28_4(v12, 23);
  v8(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "MeasurementUnitTypeTemperature");
  v8(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_16_6(v16, "MeasurementUnitTypeVolume");
  v8(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  *v18 = "MeasurementUnitTypeSpeed";
  *(v18 + 1) = 24;
  v19 = OUTLINED_FUNCTION_1_3(v18);
  v8(v19);
  v20 = OUTLINED_FUNCTION_14_4(6);
  v21 = OUTLINED_FUNCTION_16_6(v20, "MeasurementUnitTypeEnergy");
  v8(v21);
  OUTLINED_FUNCTION_120();
  v23 = OUTLINED_FUNCTION_30_0((v0 + v22));
  v24 = OUTLINED_FUNCTION_0_0(v23, "MeasurementUnitTypeDuration");
  v8(v24);
  v25 = OUTLINED_FUNCTION_39_3(&v0[v4]);
  v26 = OUTLINED_FUNCTION_0_0(v25, "MeasurementUnitTypeAcceleration");
  v8(v26);
  v27 = OUTLINED_FUNCTION_55_2((v0 + 9 * v4));
  v28 = OUTLINED_FUNCTION_18_1(v27, "MeasurementUnitTypeAngle");
  v8(v28);
  v29 = OUTLINED_FUNCTION_14_4(10);
  v30 = OUTLINED_FUNCTION_28_4(v29, 23);
  v8(v30);
  v31 = OUTLINED_FUNCTION_14_4(11);
  v32 = OUTLINED_FUNCTION_0_0(v31, "MeasurementUnitTypeConcentrationMass");
  v8(v32);
  v33 = OUTLINED_FUNCTION_14_4(12);
  v34 = OUTLINED_FUNCTION_0_0(v33, "MeasurementUnitTypeDispersion");
  v8(v34);
  v35 = OUTLINED_FUNCTION_14_4(13);
  v36 = OUTLINED_FUNCTION_16_6(v35, "MeasurementUnitTypeElectricCharge");
  v8(v36);
  v37 = OUTLINED_FUNCTION_14_4(14);
  v38 = OUTLINED_FUNCTION_0_0(v37, "MeasurementUnitTypeElectricCurrent");
  v8(v38);
  OUTLINED_FUNCTION_45_2(15 * v4);
  OUTLINED_FUNCTION_180_0(v39);
  v41 = OUTLINED_FUNCTION_0_0(v40, "MeasurementUnitTypeElectricPotentialDifference");
  v8(v41);
  v42 = OUTLINED_FUNCTION_98_14(&v0[2 * v4]);
  v43 = OUTLINED_FUNCTION_18_1(v42, "MeasurementUnitTypeElectricResistance");
  v8(v43);
  v44 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v45 = 17;
  v46 = OUTLINED_FUNCTION_0_0(v44, "MeasurementUnitTypeFrequency");
  v8(v46);
  v47 = OUTLINED_FUNCTION_14_4(18);
  v48 = OUTLINED_FUNCTION_16_6(v47, "MeasurementUnitTypeFuelEfficiency");
  v8(v48);
  v49 = OUTLINED_FUNCTION_14_4(19);
  v50 = OUTLINED_FUNCTION_28_4(v49, 30);
  v8(v50);
  v51 = OUTLINED_FUNCTION_14_4(20);
  v52 = OUTLINED_FUNCTION_18_1(v51, "MeasurementUnitTypeInformationStorage");
  v8(v52);
  v53 = OUTLINED_FUNCTION_14_4(21);
  v54 = OUTLINED_FUNCTION_28_4(v53, 24);
  v8(v54);
  v55 = OUTLINED_FUNCTION_14_4(22);
  *v55 = "MeasurementUnitTypePressure";
  *(v55 + 1) = 27;
  v56 = OUTLINED_FUNCTION_1_3(v55);
  v8(v56);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E591C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC230);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("bundleIdentifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "typeName");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E5A80()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC248);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v51 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_11_3(v51, xmmword_193969E40);
  *v0 = "app";
  v0[1] = 3;
  OUTLINED_FUNCTION_107_3();
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "boundNumber");
  v9(v12);
  v13 = OUTLINED_FUNCTION_46_10();
  *v14 = 3;
  v15 = OUTLINED_FUNCTION_0_0(v13, "calendar");
  v9(v15);
  v16 = OUTLINED_FUNCTION_22_3();
  *v17 = 4;
  *v16 = "color";
  v16[1] = 5;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  v9(v18);
  v19 = OUTLINED_FUNCTION_67_1((v1 + 4 * v5));
  v20 = OUTLINED_FUNCTION_28_4(v19, 8);
  v9(v20);
  OUTLINED_FUNCTION_45_2(5 * v5);
  OUTLINED_FUNCTION_270_1(v21);
  v23 = OUTLINED_FUNCTION_16_6(v22, "file");
  v9(v23);
  v24 = OUTLINED_FUNCTION_30_0((v1 + 6 * v5));
  v25 = OUTLINED_FUNCTION_28_4(v24, 8);
  v9(v25);
  OUTLINED_FUNCTION_120();
  v27 = OUTLINED_FUNCTION_39_3((v1 + v26));
  v28 = OUTLINED_FUNCTION_18_1(v27, "mediaRoute");
  v9(v28);
  v29 = OUTLINED_FUNCTION_55_2((v1 + 8 * v5));
  v30 = OUTLINED_FUNCTION_16_6(v29, "paymentMethod");
  v9(v30);
  v31 = OUTLINED_FUNCTION_45_2(9 * v5);
  *v32 = 10;
  v33 = OUTLINED_FUNCTION_28_4(v31, 7);
  v9(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v35 = 11;
  v36 = OUTLINED_FUNCTION_28_4(v34, 6);
  v9(v36);
  OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  OUTLINED_FUNCTION_632(v37);
  v39 = OUTLINED_FUNCTION_28_4(v38, 9);
  v9(v39);
  v40 = OUTLINED_FUNCTION_60_1((v1 + 11 * v5));
  v41 = OUTLINED_FUNCTION_18_1(v40, "rideshareOption");
  v9(v41);
  v42 = OUTLINED_FUNCTION_157_9((v1 + 13 * v5));
  v43 = OUTLINED_FUNCTION_28_4(v42, 3);
  v9(v43);
  v44 = OUTLINED_FUNCTION_67_1((v1 + 13 * v5));
  v45 = OUTLINED_FUNCTION_28_4(v44, 8);
  v9(v45);
  OUTLINED_FUNCTION_45_2(15 * v5);
  OUTLINED_FUNCTION_256_1(v46);
  v48 = OUTLINED_FUNCTION_28_4(v47, 5);
  v9(v48);
  v49 = OUTLINED_FUNCTION_131_1((v1 + 16 * v5));
  *v49 = "measurement";
  *(v49 + 1) = 11;
  v50 = OUTLINED_FUNCTION_1_3(v49);
  v9(v50);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E6248()
{
  switch((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    case 1:
      OUTLINED_FUNCTION_62_19();
      v7 = OUTLINED_FUNCTION_165_4(v13, v14, v15, &type metadata for ToolKitToolNullValue, v16, &off_1F07E4EA0, v17, v18, v19, v20);
      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 3;
      goto LABEL_19;
    case 3:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 4;
      goto LABEL_19;
    case 4:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 5;
      goto LABEL_19;
    case 5:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 6;
      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 7;
      goto LABEL_19;
    case 7:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 8;
      goto LABEL_19;
    case 8:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 9;
      goto LABEL_19;
    case 9:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 10;
      goto LABEL_19;
    case 0xALL:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 11;
      goto LABEL_19;
    case 0xBLL:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 12;
      goto LABEL_19;
    case 0xCLL:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 13;
      goto LABEL_19;
    case 0xDLL:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 14;
      goto LABEL_19;
    case 0xELL:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 15;
      goto LABEL_19;
    case 0xFLL:
      OUTLINED_FUNCTION_62_19();
      sub_193447600();
      return;
    case 0x10:
      OUTLINED_FUNCTION_62_19();
      v10 = &type metadata for ToolKitToolNullValue;
      v12 = &off_1F07E4EA0;
      v7 = &v20;
      v8 = 17;
      goto LABEL_19;
    default:
      OUTLINED_FUNCTION_185_5();
      v7 = OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ToolKitToolNullValue, v4, &off_1F07E4EA0, v5, v6, v19, v20);
LABEL_19:
      sub_193447324(v7, v8, v9, v10, v11, v12);
      return;
  }
}

void sub_1936E6524()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC260);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("sourceContainer");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "attributionContainer");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "typeName");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E6674()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

uint64_t sub_1936E6860()
{
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_318_0();
    return sub_19393C3C0();
  }

  return result;
}

void sub_1936E6900()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC290);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v56 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v56, xmmword_193969E30);
  OUTLINED_FUNCTION_171_5("unk");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_58_18();
  *v10 = "mailAccount";
  v10[1] = 11;
  v11 = OUTLINED_FUNCTION_41(v10);
  v8(v11);
  v12 = OUTLINED_FUNCTION_59_5();
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_5_4(v12, "mailAddressee");
  v8(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_23_7(v15, "mailMessage");
  v8(v16);
  v17 = OUTLINED_FUNCTION_21_39();
  v18 = OUTLINED_FUNCTION_36_0(v17, "mailbox");
  v8(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v19);
  v21 = OUTLINED_FUNCTION_15(v20, 13);
  v8(v21);
  v22 = OUTLINED_FUNCTION_72();
  *v23 = 7;
  v24 = OUTLINED_FUNCTION_36_0(v22, "messageGroup");
  v8(v24);
  OUTLINED_FUNCTION_33_0(8 * v4);
  OUTLINED_FUNCTION_121_1(v25);
  v27 = OUTLINED_FUNCTION_5_4(v26, "messageParticipants");
  v8(v27);
  v28 = OUTLINED_FUNCTION_55_2((v0 + 8 * v4));
  v29 = OUTLINED_FUNCTION_36_0(v28, "uniqueEntity");
  v8(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v4);
  *v31 = 10;
  v32 = OUTLINED_FUNCTION_5_4(v30, "intentUpdatableEntity");
  v8(v32);
  v33 = OUTLINED_FUNCTION_72();
  *v34 = 11;
  v35 = OUTLINED_FUNCTION_5_4(v33, "urlRepresentable");
  v8(v35);
  v36 = OUTLINED_FUNCTION_72();
  *v37 = 12;
  v38 = OUTLINED_FUNCTION_36_0(v36, "visualSearch");
  v8(v38);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_625(v39);
  v41 = OUTLINED_FUNCTION_36_0(v40, "visualSearchOcr");
  v8(v41);
  v42 = OUTLINED_FUNCTION_72();
  *v43 = 14;
  v44 = OUTLINED_FUNCTION_36_0(v42, "assistantSchema");
  v8(v44);
  v45 = OUTLINED_FUNCTION_72();
  *v46 = 15;
  v47 = OUTLINED_FUNCTION_36_0(v45, "updatableEntity");
  v8(v47);
  OUTLINED_FUNCTION_33_0(16 * v4);
  OUTLINED_FUNCTION_256_1(v48);
  v50 = OUTLINED_FUNCTION_5_4(v49, "persistentFileIdentifiable");
  v8(v50);
  v51 = OUTLINED_FUNCTION_131_1((v0 + 16 * v4));
  v52 = OUTLINED_FUNCTION_36_0(v51, "transientEntity");
  v8(v52);
  v53 = OUTLINED_FUNCTION_44(17 * v4);
  *v54 = 18;
  *v53 = "indexedEntity";
  v53[1] = 13;
  v55 = OUTLINED_FUNCTION_41(v53);
  v8(v55);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E6C88()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v5 = swift_allocObject();
        *(v5 + 16) = v2;
        *v1 = v5;
        continue;
      case 2:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v22 = swift_allocObject();
        *(v22 + 16) = v2;
        OUTLINED_FUNCTION_629(v22);
        continue;
      case 3:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v16 = swift_allocObject();
        *(v16 + 16) = v2;
        OUTLINED_FUNCTION_347(v16);
        continue;
      case 4:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        v11 = 0x1000000000000004;
        goto LABEL_26;
      case 5:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v12 = swift_allocObject();
        *(v12 + 16) = v2;
        OUTLINED_FUNCTION_257_0(v12);
        continue;
      case 6:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v25 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v25);
        v11 = v26 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
        goto LABEL_26;
      case 7:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v30 = swift_allocObject();
        *(v30 + 16) = v2;
        OUTLINED_FUNCTION_330(v30);
        continue;
      case 8:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v20 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v20);
        v11 = v21 & 0xFFFFFFFFFFFFLL | 0x3000000000000000;
        goto LABEL_26;
      case 9:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        OUTLINED_FUNCTION_277(v31);
        continue;
      case 10:
        v37[0] = xmmword_1939526A0;
        sub_193498018();
        OUTLINED_FUNCTION_340();
        v14 = *(&v37[0] + 1);
        if (*(&v37[0] + 1) == 1)
        {
          v15 = __dst;
          ToolKitToolSystemTypeProtocol.IntentUpdatableEntity.init()();
          v14 = __dst[1];
        }

        else
        {
          v15 = v37;
        }

        v2 = *v15;
        OUTLINED_FUNCTION_123_1();
        v18 = swift_allocObject();
        *(v18 + 16) = v2;
        *(v18 + 24) = v14;
        v19 = 0x4000000000000004;
        goto LABEL_30;
      case 11:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        v11 = 0x5000000000000000;
        goto LABEL_26;
      case 12:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v8);
        v11 = v10 & 0xFFFFFFFFFFFFLL | 0x5000000000000000;
        goto LABEL_26;
      case 13:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v13 = swift_allocObject();
        *(v13 + 16) = v2;
        OUTLINED_FUNCTION_285_1(v13);
        continue;
      case 14:
        v37[0] = xmmword_19395BB80;
        *&v27 = OUTLINED_FUNCTION_619(v37);
        *(v28 + 48) = v27;
        *(v28 + 64) = v27;
        sub_193498018();
        OUTLINED_FUNCTION_340();
        if (*(&v37[0] + 1) == 2)
        {
          ToolKitToolSystemTypeProtocol.AssistantSchema.init()(v29);
        }

        else
        {
          __src[1] = v37[1];
          __src[2] = v37[2];
          __src[3] = v37[3];
          __src[4] = v37[4];
          __src[0] = v37[0];
        }

        OUTLINED_FUNCTION_137_7();
        v33 = swift_allocObject();
        v34 = OUTLINED_FUNCTION_151_1(v33);
        memcpy(v34, __src, 0x50uLL);
        v32 = 0x60000001F07ECA94uLL;
        goto LABEL_33;
      case 15:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        OUTLINED_FUNCTION_332(v7);
        continue;
      case 16:
        *&v37[0] = 0;
        sub_193498018();
        OUTLINED_FUNCTION_340();
        v17 = *&v37[0];
        if (!*&v37[0])
        {
          ToolKitToolSystemTypeProtocol.PersistentFileIdentifiable.init()();
          v17 = __dst[0];
        }

        OUTLINED_FUNCTION_173_0();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        v19 = 0x7000000000000004;
LABEL_30:
        v32 = v18 | v19;
LABEL_33:
        *v1 = v32;
        break;
      case 17:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v6 = swift_allocObject();
        *(v6 + 16) = v2;
        OUTLINED_FUNCTION_285(v6);
        break;
      case 18:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v23 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v23);
        v11 = v24 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
LABEL_26:
        OUTLINED_FUNCTION_266_1(v9, v11);
        break;
      default:
        continue;
    }
  }
}

void sub_1936E7324()
{
  v1 = *v0;
  switch((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    case 1uLL:
      OUTLINED_FUNCTION_65_19(v1);
      OUTLINED_FUNCTION_617(v9, v10, v11, &type metadata for ToolKitToolNullValue, v12, &off_1F07E4EA0, v13, v14, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], __dst[0]);
      goto LABEL_10;
    case 2uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
      OUTLINED_FUNCTION_65_19(v1);
      goto LABEL_10;
    case 3uLL:
      OUTLINED_FUNCTION_65_19(v1);
      OUTLINED_FUNCTION_618(v3, v4, v5, &type metadata for ToolKitToolNullValue, v6, &off_1F07E4EA0, v7, v8, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], __dst[0]);
      goto LABEL_10;
    case 9uLL:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_93_10(v2);
      goto LABEL_8;
    case 0xDuLL:
      OUTLINED_FUNCTION_49_19();
      memcpy(__dst, (v15 + 16), sizeof(__dst));
      v16 = memcpy(v28, __dst, sizeof(v28));
      OUTLINED_FUNCTION_655(v16, v17, v18, &type metadata for ToolKitToolSystemTypeProtocol.AssistantSchema, v19, &off_1F07E2B20, v20, v21, v28[0]);
      goto LABEL_8;
    case 0xFuLL:
      OUTLINED_FUNCTION_65_19(v1);
LABEL_8:
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
      break;
    default:
      *__dst = *(v1 + 16);
LABEL_10:
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v22, v23, v24, v25, v26, v27);
      break;
  }
}

void sub_1936E77AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC308);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("primitive");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "entity");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "enumeration");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_16_6(v15, "query");
  v9(v16);
  v17 = OUTLINED_FUNCTION_60_1((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "codable");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E7940()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v41 = xmmword_1939526A0;
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        *&__src[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *&__src[0];
        if ((~*&__src[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v11 = swift_allocObject();
          OUTLINED_FUNCTION_642(v11);
        }

        OUTLINED_FUNCTION_173_0();
        v12 = swift_allocObject();
        *(v12 + 16) = v2;
        *v1 = v12;
        break;
      case 2:
        memset(__src, 0, sizeof(__src));
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_615();
        memcpy(v29, v30, 0x50uLL);
        memcpy(__dst, __src, sizeof(__dst));
        *&v46 = v2;
        *(&v46 + 1) = 0xF000000000000007;
        memcpy(v47, &__src[1], sizeof(v47));
        sub_1936C1000(&v46, v42);
        sub_19344E6DC(__dst, &qword_1EAE41968, &qword_19397F970);
        memcpy(&v44[2], v45, 0x50uLL);
        v44[0] = v2;
        v44[1] = 0xF000000000000007;
        OUTLINED_FUNCTION_209_0();
        v37 = swift_allocObject();
        v38 = OUTLINED_FUNCTION_151_1(v37);
        memcpy(v38, v44, 0x60uLL);
        *v1 = v2 | 0x2000000000000000;
        break;
      case 3:
        memset(__src, 0, 88);
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_615();
        memcpy(v15, v16, 0x48uLL);
        memcpy(__dst, __src, 0x58uLL);
        *&v46 = v2;
        *(&v46 + 1) = 0xF000000000000007;
        memcpy(v47, &__src[1], 0x48uLL);
        sub_1936C1448(&v46, v42);
        sub_19344E6DC(__dst, &qword_1EAE41960, &qword_19397F968);
        memcpy(&v49[2], v45, 0x48uLL);
        v49[0] = v2;
        v49[1] = 0xF000000000000007;
        v35 = swift_allocObject();
        v36 = OUTLINED_FUNCTION_151_1(v35);
        memcpy(v36, v49, 0x58uLL);
        *v1 = v2 | 0x4000000000000000;
        break;
      case 4:
        *&v17 = OUTLINED_FUNCTION_613(v3, v4, v5, v6, v7, v8, v9, v10, v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
        __src[3] = v17;
        __src[4] = v17;
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *(&__src[0] + 1);
        v18 = *&__src[0];
        v45[0] = __src[1];
        v45[1] = __src[2];
        v45[2] = __src[3];
        v45[3] = __src[4];
        if (*(&__src[0] + 1) == 1)
        {
          ToolKitToolTypeDefinition.Version1.Query.init()();
          v27 = OUTLINED_FUNCTION_346(v19, v20, v21, v22, v23, v24, v25, v26, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], *&v45[0], *(&v45[0] + 1), *&v45[1], *(&v45[1] + 1), *&v45[2], *(&v45[2] + 1), *&v45[3], *(&v45[3] + 1), *&v45[4], *(&v45[4] + 1), v46);
          memcpy(v27, v28, 0x50uLL);
          sub_19344E6DC(&v46, &qword_1EAE41958, &qword_19397F960);
        }

        else
        {
          memcpy(__dst, __src, 0x50uLL);
          v46 = __src[0];
          v47[0] = __src[1];
          v47[1] = __src[2];
          v47[2] = __src[3];
          v47[3] = __src[4];
          sub_1936C17FC(&v46, v42);
          sub_19344E6DC(__dst, &qword_1EAE41958, &qword_19397F960);
          v50[1] = v45[0];
          v50[2] = v45[1];
          v50[3] = v45[2];
          v50[4] = v45[3];
          v50[0] = __PAIR128__(v2, v18);
        }

        OUTLINED_FUNCTION_137_7();
        v33 = swift_allocObject();
        v34 = OUTLINED_FUNCTION_151_1(v33);
        memcpy(v34, v50, 0x50uLL);
        *v1 = v2 | 0x6000000000000000;
        break;
      case 5:
        OUTLINED_FUNCTION_613(v3, v4, v5, v6, v7, v8, v9, v10, v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
        *&__src[3] = 0;
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v13 = *(&__src[0] + 1);
        if (*(&__src[0] + 1) == 1)
        {
          v14 = &v46;
          ToolKitToolTypeDefinition.Version1.Codable.init()(&v46);
          v13 = *(&v46 + 1);
          v39 = v47[0];
          v40 = v47[1];
          v2 = *&v47[2];
        }

        else
        {
          v2 = *&__src[3];
          v14 = __src;
          v39 = __src[1];
          v40 = __src[2];
        }

        v31 = *v14;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        *(v32 + 24) = v13;
        *(v32 + 32) = v39;
        *(v32 + 48) = v40;
        *(v32 + 64) = v2;
        OUTLINED_FUNCTION_285(v32);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_193613BF4(a3, a4, a5, a6, a7);
  }
}

void sub_1936E7F24()
{
  OUTLINED_FUNCTION_103_10();
  switch(v9)
  {
    case 1:
      v30 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], __src[0]);
      memcpy(v30, v31, 0x60uLL);
      v32 = memcpy(v38, __src, sizeof(v38));
      OUTLINED_FUNCTION_182_0(v32, v33, v34, &type metadata for ToolKitToolTypeDefinition.Version1.Entity, v35, &off_1F07E2BE0, v36, v37, v38[0]);
      break;
    case 2:
      v14 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], __src[0]);
      memcpy(v14, v15, 0x58uLL);
      v16 = memcpy(v38, __src, 0x58uLL);
      OUTLINED_FUNCTION_135_1(v16, v17, v18, &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration, v19, &off_1F07E2C68, v20, v21, v38[0]);
      break;
    case 3:
      v22 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], __src[0]);
      memcpy(v22, v23, 0x50uLL);
      v24 = memcpy(v38, __src, 0x50uLL);
      OUTLINED_FUNCTION_174(v24, v25, v26, &type metadata for ToolKitToolTypeDefinition.Version1.Query, v27, &off_1F07E2CF0, v28, v29, v38[0]);
      break;
    case 4:
      v10 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v11 = *(v10 + 64);
      v12 = *(v10 + 32);
      v13 = *(v10 + 48);
      __src[0] = *(v10 + 16);
      __src[1] = v12;
      __src[2] = v13;
      *&__src[3] = v11;
      break;
    default:
      *&__src[0] = *(v8 + 16);
      break;
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_1936E8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAC320);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v12);
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v36 = OUTLINED_FUNCTION_152_10();
  OUTLINED_FUNCTION_8_18(v36, xmmword_1939526B0);
  OUTLINED_FUNCTION_171_5("identifier");
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v16);
  v18 = *(v17 + 104);
  v19 = OUTLINED_FUNCTION_50_1();
  v18(v19);
  v20 = OUTLINED_FUNCTION_58_18();
  v21 = OUTLINED_FUNCTION_36_0(v20, "properties");
  v18(v21);
  v22 = OUTLINED_FUNCTION_9_4((v10 + 2 * v14));
  v23 = OUTLINED_FUNCTION_5_4(v22, "runtimeRequirements");
  v18(v23);
  v24 = OUTLINED_FUNCTION_9_64();
  v25 = OUTLINED_FUNCTION_5_4(v24, "displayRepresentation");
  v18(v25);
  v26 = OUTLINED_FUNCTION_21_39();
  v27 = OUTLINED_FUNCTION_5_4(v26, "sampleInvocations");
  v18(v27);
  v28 = OUTLINED_FUNCTION_38_2();
  *v29 = 6;
  v30 = OUTLINED_FUNCTION_5_4(v28, "systemProtocols");
  v18(v30);
  v31 = OUTLINED_FUNCTION_30_0((v10 + 6 * v14));
  v32 = OUTLINED_FUNCTION_5_4(v31, "runtimeFlags");
  v18(v32);
  OUTLINED_FUNCTION_33_0(a10);
  OUTLINED_FUNCTION_121_1(v33);
  *v34 = "coercions";
  v34[1] = 9;
  v35 = OUTLINED_FUNCTION_41(v34);
  v18(v35);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936E8318()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_9;
      case 2:
        v4 = OUTLINED_FUNCTION_242_2();
        goto LABEL_13;
      case 3:
        v4 = OUTLINED_FUNCTION_196_3();
        goto LABEL_13;
      case 4:
        OUTLINED_FUNCTION_319_0();
LABEL_9:
        sub_193498018();
        continue;
      case 5:
        v4 = v0 + 64;
        goto LABEL_13;
      case 6:
        OUTLINED_FUNCTION_180_6();
        goto LABEL_13;
      case 7:
        OUTLINED_FUNCTION_89_2();
        sub_1934984D4(v5, v6, v7, v8, v9);
        continue;
      case 8:
        OUTLINED_FUNCTION_147_0();
LABEL_13:
        sub_193498238(v4);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E8480()
{
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_75_3();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v45 = v0[10];
  v48 = v0[11];
  OUTLINED_FUNCTION_66_21();
  if (!v8)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_129_4();
      sub_193451CFC(v9, v10, v11, v12, v13, v14);
    }

    if (*(v4 + 16))
    {
      OUTLINED_FUNCTION_134_11();
      sub_193451CFC(v15, v16, v17, v18, v19, v20);
    }

    if (v5)
    {
      v46 = *(v0 + 3);
      v47 = *(v0 + 5);
      OUTLINED_FUNCTION_145_8();
      sub_193447600();
    }

    if (*(v6 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v21, v22, v23, v24, v25, v26);
    }

    if (*(v7 + 16))
    {
      OUTLINED_FUNCTION_154_8();
      sub_193451CFC(v27, v28, v29, v30, v31, v32);
    }

    if (*(v45 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193498B44(v33, v34, v35, v36, v37, v38);
    }

    if (*(v48 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v39, v40, v41, v42, v43, v44);
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_1936E8694()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC338);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("RuntimeFlagsUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "RuntimeFlagsTransientAppEntity");
  v9(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E87F4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC350);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "displayName");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_48(v13, "type");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E8948()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }
}

void sub_1936E89DC()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_110();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  if (v0[1])
  {
    OUTLINED_FUNCTION_318_0();
    OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_181();
    }

    if ((~v4 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_1936E8ADC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC368);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("identifier");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_58_18();
  v12 = OUTLINED_FUNCTION_5_4(v11, "cases");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_5_4(v13, "runtimeRequirements");
  v9(v14);
  v15 = OUTLINED_FUNCTION_26_5();
  *v16 = 4;
  v17 = OUTLINED_FUNCTION_5_4(v15, "displayRepresentation");
  v9(v17);
  v18 = OUTLINED_FUNCTION_21_39();
  v19 = OUTLINED_FUNCTION_23_7(v18, "kind");
  v9(v19);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v20);
  *v21 = "systemProtocols";
  v21[1] = 15;
  v22 = OUTLINED_FUNCTION_41(v21);
  v9(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E8CA4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_9;
      case 2:
        v3 = OUTLINED_FUNCTION_242_2();
        goto LABEL_12;
      case 3:
        v3 = OUTLINED_FUNCTION_196_3();
        goto LABEL_12;
      case 4:
        OUTLINED_FUNCTION_319_0();
LABEL_9:
        sub_193498018();
        continue;
      case 5:
        OUTLINED_FUNCTION_301_0();
        sub_1934982A8();
        continue;
      case 6:
        OUTLINED_FUNCTION_62();
LABEL_12:
        sub_193498238(v3);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E8F84()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC380);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v6, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("KindUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v12 = "KindAppEnum";
  *(v12 + 1) = 11;
  v12[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "KindActionEnum");
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v16 = OUTLINED_FUNCTION_25(v15, "KindTriggerEnum");
  (v10)(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E9138()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC398);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBE0);
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "displayRepresentation");
  v9(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E92A0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC3B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "templates");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E93D0()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936E945C()
{
  OUTLINED_FUNCTION_50_13();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_66_21();
  if (!v4)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v0)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_651();
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }
  }
}

void sub_1936E9550()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC3C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v6, xmmword_193952660);
  *v0 = "comparison";
  *(v0 + 8) = 10;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  v10(v11);
  v12 = OUTLINED_FUNCTION_58_18();
  v13 = OUTLINED_FUNCTION_5_4(v12, "stringSearch");
  v10(v13);
  v14 = OUTLINED_FUNCTION_59_5();
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_5_4(v14, "idSearch");
  v10(v16);
  v17 = OUTLINED_FUNCTION_9_64();
  v18 = OUTLINED_FUNCTION_23_7(v17, "all");
  v10(v18);
  v19 = OUTLINED_FUNCTION_21_39();
  v20 = OUTLINED_FUNCTION_5_4(v19, "suggested");
  v10(v20);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v21);
  v23 = OUTLINED_FUNCTION_5_4(v22, "sampleInvocations");
  v10(v23);
  v24 = OUTLINED_FUNCTION_30_0((v1 + 3 * v5));
  v25 = OUTLINED_FUNCTION_5_4(v24, "searchableItem");
  v10(v25);
  v26 = OUTLINED_FUNCTION_33_0(8 * v5);
  *v27 = 8;
  v28 = OUTLINED_FUNCTION_15(v26, 5);
  v10(v28);
  OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  OUTLINED_FUNCTION_384(v29);
  v31 = OUTLINED_FUNCTION_5_4(v30, "valueSearch");
  v10(v31);
  v32 = OUTLINED_FUNCTION_55_2((v1 + 9 * v5));
  *v32 = "metadata";
  *(v32 + 1) = 8;
  v33 = OUTLINED_FUNCTION_41(v32);
  v10(v33);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E97BC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_125();
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_242_2();
        goto LABEL_12;
      case 3:
      case 4:
      case 5:
      case 8:
        goto LABEL_12;
      case 6:
        v3 = OUTLINED_FUNCTION_196_3();
LABEL_9:
        sub_193498238(v3);
        continue;
      case 7:
        OUTLINED_FUNCTION_319_0();
        goto LABEL_12;
      case 9:
        OUTLINED_FUNCTION_146_0();
        goto LABEL_12;
      case 10:
        OUTLINED_FUNCTION_301_0();
LABEL_12:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E9960()
{
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_50_13();
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 10);
  v5 = *(v1 + 11);
  v6 = *(v1 + 16);
  v21 = *(v1 + 25);
  v22 = *(v1 + 24);
  v24 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = *(v1 + 48);
  if (*(*v1 + 16))
  {
    OUTLINED_FUNCTION_108_1();
    sub_193451CFC(v7, v8, v9, v10, v11, v12);
  }

  if (!v0)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_145_8();
      sub_193447600();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (*(v6 + 16))
    {
      OUTLINED_FUNCTION_154_8();
      sub_193451CFC(v13, v14, v15, v16, v17, v18);
    }

    if ((v22 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v21 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v24 & 0xF000000000000007) != 0xD000000000000007)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v20 != 1)
    {
      v23 = *(v1 + 56);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_1936E9BC8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC3E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("queryIdentifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "bundleIdentifier");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E9D2C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC3F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "displayRepresentation");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E9E5C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }
}

void sub_1936E9EDC()
{
  OUTLINED_FUNCTION_50_13();
  v7 = v1[1];
  v8 = v1[6];
  if (v7)
  {
    v9 = *v1;
    v2 = OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v8)
    {
      v10 = *(v1 + 2);
      OUTLINED_FUNCTION_104_11(v2, v7, v3, &type metadata for ToolKitToolTypeDisplayRepresentation, v4, &off_1F07E4988, v5, v6, v1[2]);
      sub_193447600();
    }
  }
}

uint64_t sub_1936E9FC4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_173_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16) & 0xFFFFFFFFFFFFFFFLL;

  OUTLINED_FUNCTION_173_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1936EA048@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_173_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

void sub_1936EA080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAC410);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v12);
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v37 = OUTLINED_FUNCTION_152_10();
  OUTLINED_FUNCTION_8_18(v37, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("primitive");
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v16);
  v18 = *(v17 + 104);
  v19 = OUTLINED_FUNCTION_50_1();
  v18(v19);
  v20 = OUTLINED_FUNCTION_58_18();
  v21 = OUTLINED_FUNCTION_5_4(v20, "enumeration");
  v18(v21);
  v22 = OUTLINED_FUNCTION_9_4((v10 + 2 * v14));
  v23 = OUTLINED_FUNCTION_23_7(v22, "entity");
  v18(v23);
  v24 = OUTLINED_FUNCTION_9_64();
  v25 = OUTLINED_FUNCTION_5_4(v24, "collection");
  v18(v25);
  v26 = OUTLINED_FUNCTION_21_39();
  v27 = OUTLINED_FUNCTION_5_4(v26, "query");
  v18(v27);
  v28 = OUTLINED_FUNCTION_38_2();
  *v29 = 6;
  v30 = OUTLINED_FUNCTION_5_4(v28, "entityIdentifier");
  v18(v30);
  v31 = OUTLINED_FUNCTION_72();
  *v32 = 7;
  v33 = OUTLINED_FUNCTION_36_0(v31, "deferred");
  v18(v33);
  v34 = OUTLINED_FUNCTION_33_0(a10);
  *v35 = 8;
  *v34 = "codable";
  v34[1] = 7;
  v36 = OUTLINED_FUNCTION_41(v34);
  v18(v36);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936EA28C()
{
  OUTLINED_FUNCTION_26();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  *v76 = xmmword_1939526A0;
  while (1)
  {
    OUTLINED_FUNCTION_32_4();
    v9 = sub_19393C0E0();
    if (v1 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        *&v119[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v3 = *&v119[0];
        if ((~*&v119[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v3 = swift_allocObject();
          *(v3 + 16) = 0;
        }

        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v3;
        *v4 = v11;
        break;
      case 2:
        OUTLINED_FUNCTION_641();
        *&v119[1] = 1;
        *&v24 = OUTLINED_FUNCTION_216_2();
        *(&v119[5] + 8) = v24;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        v25 = OUTLINED_FUNCTION_369();
        v33 = OUTLINED_FUNCTION_367_0(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76[0], v76[1], v77, *(&v77 + 1), v78, *(&v78 + 1), *v79, *&v79[8], *&v79[16], *&v79[24], *&v79[32], *&v79[40], *&v79[48], *&v79[56], *&v79[64], *&v79[72], *&v79[80], *&v79[88], *&v79[96], v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
        if (v2 == 1)
        {
          ToolKitToolTypedValue.EnumerationValue.init()(v79, v33);
          v34 = OUTLINED_FUNCTION_335();
          memcpy(v34, v35, 0x68uLL);
          sub_19344E6DC(&v117, &qword_1EAE41988, &qword_19397F990);
        }

        else
        {
          memcpy(v116, v119, 0x68uLL);
          OUTLINED_FUNCTION_349();
          sub_1936C6124(&v117, __src);
          sub_19344E6DC(v116, &qword_1EAE41988, &qword_19397F990);
          *v79 = v99;
          memcpy(&v79[24], __dst, 0x50uLL);
          *&v79[16] = v2;
        }

        v64 = swift_allocObject();
        v65 = OUTLINED_FUNCTION_232_3(v64);
        memcpy(v65, v79, 0x68uLL);
        *v4 = v3 | 0x2000000000000000;
        break;
      case 3:
        sub_1936EACA0(v119);
        v16 = OUTLINED_FUNCTION_335();
        memcpy(v16, v17, 0x90uLL);
        sub_193498018();
        OUTLINED_FUNCTION_369();
        OUTLINED_FUNCTION_606(__src);
        OUTLINED_FUNCTION_606(v116);
        if (sub_1936EACA8(v116) == 1)
        {
          ToolKitToolTypedValue.EntityValue.init()(v114);
          OUTLINED_FUNCTION_606(__dst);
          sub_19344E6DC(__dst, &qword_1EAE41980, &qword_19397F988);
        }

        else
        {
          OUTLINED_FUNCTION_606(&v99);
          memcpy(__dst, __src, sizeof(__dst));
          sub_1936C6424(__dst, &v81);
          sub_19344E6DC(&v99, &qword_1EAE41980, &qword_19397F988);
          memcpy(v114, __src, sizeof(v114));
        }

        v62 = swift_allocObject();
        v63 = OUTLINED_FUNCTION_232_3(v62);
        memcpy(v63, v114, 0x90uLL);
        *v4 = v3 | 0x4000000000000000;
        break;
      case 4:
        OUTLINED_FUNCTION_641();
        *&v119[1] = 0;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v3 = *(&v119[0] + 1);
        if (*(&v119[0] + 1))
        {
          v18 = *&v119[1];
          v19 = *&v119[0];
          sub_193437C90(*&v119[0]);

          sub_193437C90(v18);
          sub_1936EAC54(v19, v3, v18);
        }

        else
        {
          ToolKitToolTypedValue.CollectionValue.init()();
          v70 = OUTLINED_FUNCTION_192_1();
          sub_1936EAC54(v70, v71, v72);
          v3 = *(&v117 + 1);
          v19 = v117;
          v18 = *&v118[0];
        }

        OUTLINED_FUNCTION_97_6();
        v73 = swift_allocObject();
        *(v73 + 16) = v19;
        *(v73 + 24) = v3;
        *(v73 + 32) = v18;
        v69 = v73 | 0x6000000000000000;
        goto LABEL_36;
      case 5:
        v2 = 0xD000000000000007;
        *&v119[0] = 0xD000000000000007;
        *(v119 + 8) = 0u;
        *(&v119[1] + 8) = 0u;
        BYTE8(v119[2]) = 0;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v12 = *&v119[0];
        if ((*&v119[0] & 0xF000000000000007) == 0xD000000000000007)
        {
          ToolKitToolTypedValue.QueryValue.init()(&v117);
          v13 = OUTLINED_FUNCTION_192_1();
          sub_1936EABBC(v13, v14);
          v77 = v117;
          v78 = v118[0];
          v3 = *&v118[1];
          v15 = BYTE8(v118[1]);
        }

        else
        {
          v15 = BYTE8(v119[2]);
          v3 = *&v119[2];
          v53 = v6;
          v54 = v4;
          v55 = *(&v119[1] + 1);
          v2 = *&v119[1];
          v75 = v8;
          v56 = *(&v119[0] + 1);
          sub_193437C90(*&v119[0]);
          v57 = OUTLINED_FUNCTION_55();
          sub_1936C6B18(v57);
          OUTLINED_FUNCTION_98();
          sub_1936EABBC(v58, v59);
          *&v60 = v2;
          *(&v60 + 1) = v55;
          v78 = v60;
          v4 = v54;
          v6 = v53;
          *&v60 = v12;
          *(&v60 + 1) = v56;
          v77 = v60;
          v8 = v75;
        }

        v61 = swift_allocObject();
        *(v61 + 16) = v77;
        *(v61 + 32) = v78;
        *(v61 + 48) = v3;
        *(v61 + 56) = v15;
        *v4 = v61 | 0x8000000000000000;
        break;
      case 6:
        OUTLINED_FUNCTION_641();
        *&v119[1] = 1;
        *&v36 = OUTLINED_FUNCTION_216_2();
        *(&v119[5] + 8) = v36;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        v37 = OUTLINED_FUNCTION_369();
        v45 = OUTLINED_FUNCTION_367_0(v37, v38, v39, v40, v41, v42, v43, v44, v74, v75, v76[0], v76[1], v77, *(&v77 + 1), v78, *(&v78 + 1), *v79, *&v79[8], *&v79[16], *&v79[24], *&v79[32], *&v79[40], *&v79[48], *&v79[56], *&v79[64], *&v79[72], *&v79[80], *&v79[88], *&v79[96], v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
        if (v2 == 1)
        {
          ToolKitToolTypedValue.EntityIdentifierValue.init()(v120, v45);
          v46 = OUTLINED_FUNCTION_335();
          memcpy(v46, v47, 0x68uLL);
          sub_19344E6DC(&v117, &qword_1EAE41978, &qword_19397F980);
        }

        else
        {
          memcpy(v116, v119, 0x68uLL);
          OUTLINED_FUNCTION_349();
          sub_1936C6D94(&v117, __src);
          sub_19344E6DC(v116, &qword_1EAE41978, &qword_19397F980);
          *v120 = v99;
          memcpy(&v120[24], __dst, 0x50uLL);
          *&v120[16] = v2;
        }

        v2 = swift_allocObject();
        memcpy((v2 + 16), v120, 0x68uLL);
        *v4 = v2 | 0xA000000000000000;
        break;
      case 7:
        OUTLINED_FUNCTION_641();
        v2 = 0x7000000000000007;
        *&v119[1] = 0x7000000000000007;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v3 = *&v119[1];
        if ((*&v119[1] & 0xF000000000000007) == 0x7000000000000007)
        {
          ToolKitToolTypedValue.DeferredValue.init()();
          v48 = OUTLINED_FUNCTION_192_1();
          sub_1936EAB60(v48, v49, v50);
          v51 = *(&v117 + 1);
          v52 = v117;
          v3 = *&v118[0];
        }

        else
        {
          v51 = *(&v119[0] + 1);
          v52 = *&v119[0];
          sub_193437C90(*&v119[0]);
          sub_193437C90(v51);
          sub_193438D88(v3);
          v66 = OUTLINED_FUNCTION_19_3();
          sub_1936EAB60(v66, v67, v3);
        }

        OUTLINED_FUNCTION_97_6();
        v68 = swift_allocObject();
        *(v68 + 16) = v52;
        *(v68 + 24) = v51;
        *(v68 + 32) = v3;
        v69 = v68 | 0xC000000000000000;
LABEL_36:
        *v4 = v69;
        break;
      case 8:
        v119[0] = *v76;
        *&v20 = OUTLINED_FUNCTION_358_0();
        v119[5] = v20;
        v119[6] = v20;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        v3 = v8;
        OUTLINED_FUNCTION_369();
        v21 = v119[0];
        memcpy(__dst, &v119[1], 0x60uLL);
        if (*(&v119[0] + 1) == 1)
        {
          ToolKitToolTypedValue.CodableValue.init()(v121);
          v22 = OUTLINED_FUNCTION_335();
          memcpy(v22, v23, 0x70uLL);
          sub_19344E6DC(&v117, &qword_1EAE41970, &qword_19397F978);
        }

        else
        {
          memcpy(v116, v119, 0x70uLL);
          v117 = v119[0];
          memcpy(v118, &v119[1], sizeof(v118));
          sub_1936C673C(&v117, __src);
          sub_19344E6DC(v116, &qword_1EAE41970, &qword_19397F978);
          memcpy(&v121[1], __dst, 0x60uLL);
          v121[0] = v21;
        }

        OUTLINED_FUNCTION_136_6();
        v2 = swift_allocObject();
        memcpy((v2 + 16), v121, 0x70uLL);
        *v4 = v2 | 0xE000000000000000;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936EAB60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xF000000000000007) != 0x7000000000000007)
  {
    sub_193444060(result);
    sub_193444060(a2);

    return sub_19347549C(a3);
  }

  return result;
}

uint64_t sub_1936EABBC(uint64_t result, uint64_t a2)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    sub_193444060(result);

    return sub_1936EAC3C(a2);
  }

  return result;
}

uint64_t sub_1936EAC3C(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xE000000000000007)
  {
    return sub_193444048(result);
  }

  return result;
}

uint64_t sub_1936EAC54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_193444060(result);

    return sub_193444060(a3);
  }

  return result;
}

uint64_t sub_1936EACA8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1936EACC0()
{
  OUTLINED_FUNCTION_103_10();
  switch(v9)
  {
    case 1:
      v48 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v85, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      v50 = memcpy(v48, v49, 0x68uLL);
      v58 = OUTLINED_FUNCTION_313(v50, v51, v52, v53, v54, v55, v56, v57, v90);
      v60 = memcpy(v58, v59, 0x68uLL);
      OUTLINED_FUNCTION_182_0(v60, v61, v62, &type metadata for ToolKitToolTypedValue.EnumerationValue, v63, &off_1F07E3398, v64, v65, v91);
      break;
    case 2:
      v11 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v85, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      v13 = memcpy(v11, v12, 0x90uLL);
      v21 = OUTLINED_FUNCTION_313(v13, v14, v15, v16, v17, v18, v19, v20, v86);
      v23 = memcpy(v21, v22, 0x90uLL);
      OUTLINED_FUNCTION_135_1(v23, v24, v25, &type metadata for ToolKitToolTypedValue.EntityValue, v26, &off_1F07E33C8, v27, v28, v87);
      break;
    case 3:
      v29 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v114 = *(v29 + 16);
      v117 = *(v29 + 32);
      break;
    case 4:
      v10 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v113 = *(v10 + 16);
      v116 = *(v10 + 32);
      v119 = *(v10 + 48);
      v120 = *(v10 + 56);
      break;
    case 5:
      v66 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v85, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      v68 = memcpy(v66, v67, 0x68uLL);
      v76 = OUTLINED_FUNCTION_313(v68, v69, v70, v71, v72, v73, v74, v75, v92);
      v78 = memcpy(v76, v77, 0x68uLL);
      OUTLINED_FUNCTION_303_0(v78, v79, v80, &type metadata for ToolKitToolTypedValue.EntityIdentifierValue, v81, &off_1F07E34B8, v82, v83, v93);
      break;
    case 6:
      v84 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v115 = *(v84 + 16);
      v118 = *(v84 + 32);
      break;
    case 7:
      v30 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v85, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      v32 = memcpy(v30, v31, 0x70uLL);
      v40 = OUTLINED_FUNCTION_313(v32, v33, v34, v35, v36, v37, v38, v39, v88);
      v42 = memcpy(v40, v41, 0x70uLL);
      OUTLINED_FUNCTION_654(v42, v43, v44, &type metadata for ToolKitToolTypedValue.CodableValue, v45, &off_1F07E3428, v46, v47, v89);
      break;
    default:
      v112 = *(v8 + 16);
      break;
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_1936EAF28()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC428);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("serializedVariable");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "typeInstance");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "identifier");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EB078()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C140();
        break;
    }
  }
}

void sub_1936EB114()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v4 = v0[1];
  v3 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_634();
  if (!(!v8 & v7))
  {
    v9 = *v0;
    v10 = OUTLINED_FUNCTION_216();
    sub_193450688(v10, v11);
    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_24_2();
    sub_19393C330();
    v2 = v1;
    sub_19345012C(v9, v4);
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_380();
    if (!v8)
    {
      sub_193447600();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_334();
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1936EB264()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC440);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v73 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v73, xmmword_19397F900);
  OUTLINED_FUNCTION_83_0("noneVariant");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_58_18();
  v11 = OUTLINED_FUNCTION_5_4(v10, "BOOLType");
  v8(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v13 = OUTLINED_FUNCTION_23_7(v12, "intType");
  v8(v13);
  v14 = OUTLINED_FUNCTION_9_64();
  v15 = OUTLINED_FUNCTION_36_0(v14, "number");
  v8(v15);
  v16 = OUTLINED_FUNCTION_21_39();
  v17 = OUTLINED_FUNCTION_23_7(v16, "decimal");
  v8(v17);
  v18 = OUTLINED_FUNCTION_38_2();
  *v19 = 6;
  v20 = OUTLINED_FUNCTION_36_0(v18, "string");
  v8(v20);
  v21 = OUTLINED_FUNCTION_52_0();
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_15(v21, 4);
  v8(v23);
  OUTLINED_FUNCTION_33_0(8 * v4);
  OUTLINED_FUNCTION_121_1(v24);
  v26 = OUTLINED_FUNCTION_5_4(v25, "dateComponents");
  v8(v26);
  v27 = OUTLINED_FUNCTION_55_2((v0 + 8 * v4));
  v28 = OUTLINED_FUNCTION_15(v27, 3);
  v8(v28);
  v29 = OUTLINED_FUNCTION_44(9 * v4);
  *v30 = 10;
  v31 = OUTLINED_FUNCTION_5_4(v29, "attributedString");
  v8(v31);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_377_0(v32);
  *v33 = "measurement";
  v33[1] = v34;
  v35 = OUTLINED_FUNCTION_41(v33);
  v8(v35);
  v36 = OUTLINED_FUNCTION_72();
  *v37 = 12;
  v38 = OUTLINED_FUNCTION_15(v36, 14);
  v8(v38);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_625(v39);
  v41 = OUTLINED_FUNCTION_23_7(v40, "paymentMethod");
  v8(v41);
  v42 = OUTLINED_FUNCTION_72();
  *v43 = 14;
  v44 = OUTLINED_FUNCTION_15(v42, 9);
  v8(v44);
  v45 = OUTLINED_FUNCTION_105_14((v0 + 14 * v4));
  v46 = OUTLINED_FUNCTION_36_0(v45, "person");
  v8(v46);
  OUTLINED_FUNCTION_33_0(16 * v4);
  OUTLINED_FUNCTION_256_1(v47);
  v49 = OUTLINED_FUNCTION_15(v48, 4);
  v8(v49);
  v50 = OUTLINED_FUNCTION_131_1((v0 + 16 * v4));
  v51 = OUTLINED_FUNCTION_15(v50, 3);
  v8(v51);
  v52 = OUTLINED_FUNCTION_44(17 * v4);
  *v53 = 18;
  v54 = OUTLINED_FUNCTION_23_7(v52, "searchableItem");
  v8(v54);
  v55 = OUTLINED_FUNCTION_52_0();
  *v56 = 19;
  v57 = OUTLINED_FUNCTION_5_4(v55, "encodedDateComponents");
  v8(v57);
  v58 = OUTLINED_FUNCTION_52_0();
  *v59 = 20;
  v60 = OUTLINED_FUNCTION_15(v58, 8);
  v8(v60);
  v61 = OUTLINED_FUNCTION_52_0();
  *v62 = 22;
  v63 = OUTLINED_FUNCTION_15(v61, 14);
  v8(v63);
  v64 = OUTLINED_FUNCTION_3_1(v0 + 21 * v4);
  *v65 = 23;
  v66 = OUTLINED_FUNCTION_15(v64, 12);
  v8(v66);
  v67 = OUTLINED_FUNCTION_72();
  *v68 = 24;
  v69 = OUTLINED_FUNCTION_15(v67, 20);
  v8(v69);
  v70 = OUTLINED_FUNCTION_52_0();
  *v71 = 25;
  *v70 = "duration";
  v70[1] = 8;
  v72 = OUTLINED_FUNCTION_41(v70);
  v8(v72);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936EB6EC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v5 = v1;
  v7 = v6;
  v9 = v8;
LABEL_2:
  v10 = v136;
  while (1)
  {
    v11 = sub_19393C0E0();
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    switch(v11)
    {
      case 1:
        OUTLINED_FUNCTION_362_0();
        OUTLINED_FUNCTION_94_13();
        sub_1934982A8();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_633();
        OUTLINED_FUNCTION_173_0();
        v13 = swift_allocObject();
        *(v13 + 16) = v3;
        *v5 = v13;
        continue;
      case 2:
        LOBYTE(v142) = 2;
        OUTLINED_FUNCTION_123_13();
        sub_19393C0F0();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        v3 = v142;
        v26 = swift_allocObject();
        *(v26 + 16) = v3 & 1;
        *v5 = v26 | 4;
        continue;
      case 3:
        OUTLINED_FUNCTION_362_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C190();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_633();
        OUTLINED_FUNCTION_173_0();
        v21 = swift_allocObject();
        *(v21 + 16) = v3;
        *v5 = v21 | 0x1000000000000000;
        continue;
      case 4:
        OUTLINED_FUNCTION_362_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C1E0();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        if (BYTE8(v142))
        {
          v22 = 0.0;
        }

        else
        {
          v22 = *&v142;
        }

        OUTLINED_FUNCTION_173_0();
        v18 = swift_allocObject();
        *(v18 + 16) = v22;
        v20 = 0x1000000000000004;
        goto LABEL_39;
      case 5:
        OUTLINED_FUNCTION_376_0();
        *&v143[0] = 768;
        OUTLINED_FUNCTION_216_2();
        WORD4(v143[4]) = 0;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        v3 = *&v143[0];
        if ((v143[0] & 0xFF00) == 0x300)
        {
          ToolKitToolTypedValue.PrimitiveValue.Decimal.init()(v131);
        }

        else
        {
          v131[0] = v142;
          memcpy(&v131[1] + 8, v143 + 8, 0x42uLL);
          *&v131[1] = *&v143[0];
        }

        OUTLINED_FUNCTION_209_0();
        v88 = swift_allocObject();
        v89 = OUTLINED_FUNCTION_232_3(v88);
        memcpy(v89, v131, 0x5AuLL);
        v83 = 0x2FFFFFFFFFFFFFFBLL;
        goto LABEL_76;
      case 6:
        OUTLINED_FUNCTION_376_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C200();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_630();
        if (v16)
        {
          v10 = 0xE000000000000000;
        }

        else
        {
          v10 = v30;
        }

        OUTLINED_FUNCTION_123_1();
        v31 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v31);
        v20 = v32 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
        goto LABEL_39;
      case 7:
        *&v142 = 0;
        DWORD2(v142) = 0;
        BYTE12(v142) = 1;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        if (BYTE12(v142) == 1)
        {
          v33 = __src;
          ToolKitToolTimestamp.init()(__src);
        }

        else
        {
          v33 = &v142;
        }

        v38 = *(v33 + 2);
        v3 = *v33;
        OUTLINED_FUNCTION_123_1();
        v39 = swift_allocObject();
        *(v39 + 16) = v3;
        *(v39 + 24) = v38;
        *v5 = v39 | 0x3000000000000000;
        v10 = v136;
        continue;
      case 8:
        v142 = xmmword_193950B20;
        OUTLINED_FUNCTION_123_13();
        sub_19393C140();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_220_3();
        if (!v16 & v15)
        {
          v10 = 0xC000000000000000;
        }

        else
        {
          v10 = v23;
        }

        OUTLINED_FUNCTION_123_1();
        v24 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v24);
        v20 = v25 & 0xFFFFFFFFFFFFLL | 0x3000000000000000;
        goto LABEL_39;
      case 9:
        OUTLINED_FUNCTION_376_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C200();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_630();
        if (v16)
        {
          v35 = 0xE000000000000000;
        }

        else
        {
          v35 = v34;
        }

        OUTLINED_FUNCTION_123_1();
        v36 = swift_allocObject();
        *(v36 + 16) = v3;
        *(v36 + 24) = v35;
        v10 = v136;
        *v5 = v36 | 0x4000000000000000;
        continue;
      case 10:
        v142 = xmmword_193950B20;
        OUTLINED_FUNCTION_123_13();
        sub_19393C140();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_220_3();
        if (!v16 & v15)
        {
          v10 = 0xC000000000000000;
        }

        else
        {
          v10 = v14;
        }

        OUTLINED_FUNCTION_123_1();
        v17 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v17);
        v20 = v19 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
        goto LABEL_39;
      case 11:
        v142 = xmmword_1939526A0;
        memset(v143, 0, 26);
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        v128 = v9;
        v129 = v7;
        v130 = v5;
        OUTLINED_FUNCTION_326();
        v118 = *(&v142 + 1);
        if (*(&v142 + 1) == 1)
        {
          v119 = __src;
          ToolKitToolTypedValue.PrimitiveValue.Measurement.init()(__src);
          v118 = *(&__src[0] + 1);
          v120 = *&__src[1];
          v121 = BYTE8(__src[1]);
          v122 = *&__src[2];
          v3 = BYTE8(__src[2]);
          LOBYTE(v123) = BYTE9(__src[2]);
        }

        else
        {
          v122 = *&v143[1];
          v121 = BYTE8(v143[0]);
          v120 = *&v143[0];
          v3 = BYTE8(v143[1]);
          v123 = HIBYTE(WORD4(v143[1])) & 1;
          v119 = &v142;
        }

        v126 = *v119;
        v127 = swift_allocObject();
        *(v127 + 16) = v126;
        *(v127 + 24) = v118;
        *(v127 + 32) = v120;
        *(v127 + 40) = v121 & 1;
        *(v127 + 48) = v122;
        *(v127 + 56) = v3;
        *(v127 + 57) = v123;
        v7 = v129;
        v5 = v130;
        *v130 = v127 | 0x5000000000000000;
        v9 = v128;
        goto LABEL_2;
      case 12:
        sub_1936ECA10(&v142);
        v57 = OUTLINED_FUNCTION_219_1();
        memcpy(v57, v58, 0xC0uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_368_0(v139);
        v59 = OUTLINED_FUNCTION_267_1();
        memcpy(v59, v60, 0xC0uLL);
        if (sub_19346CD80(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.init()(v132);
          OUTLINED_FUNCTION_368_0(__dst);
          sub_19344E6DC(__dst, &qword_1EAE419D8, &qword_19397F9E0);
        }

        else
        {
          OUTLINED_FUNCTION_368_0(v136);
          memcpy(__dst, v139, 0xC0uLL);
          sub_1936C35DC(__dst, v135);
          sub_19344E6DC(v136, &qword_1EAE419D8, &qword_19397F9E0);
          memcpy(v132, v139, sizeof(v132));
        }

        OUTLINED_FUNCTION_287_0();
        v97 = swift_allocObject();
        v98 = OUTLINED_FUNCTION_232_3(v97);
        memcpy(v98, v132, 0xC0uLL);
        v76 = 0x5000000000000004;
        goto LABEL_75;
      case 13:
        OUTLINED_FUNCTION_376_0();
        *&v143[0] = 0;
        *(&v143[0] + 1) = 1;
        memset(&v143[1], 0, 80);
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        v136[0] = v142;
        v45 = *(&v143[0] + 1);
        *&v136[1] = *&v143[0];
        memcpy(__dst, &v143[1], 0x50uLL);
        if (*(&v143[0] + 1) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.init()(v133);
          v46 = OUTLINED_FUNCTION_219_1();
          memcpy(v46, v47, 0x70uLL);
          sub_19344E6DC(__src, &qword_1EAE419D0, &qword_19397F9D8);
        }

        else
        {
          v77 = OUTLINED_FUNCTION_374();
          memcpy(v77, v78, 0x70uLL);
          __src[0] = v142;
          *&__src[1] = *&v143[0];
          *(&__src[1] + 1) = v45;
          memcpy(&__src[2], &v143[1], 0x50uLL);
          v79 = OUTLINED_FUNCTION_375();
          sub_1936C37E0(v79, v80);
          sub_19344E6DC(v140, &qword_1EAE419D0, &qword_19397F9D8);
          v133[0] = v136[0];
          *&v133[1] = *&v136[1];
          memcpy(&v133[2], __dst, 0x50uLL);
          *(&v133[1] + 1) = v45;
        }

        OUTLINED_FUNCTION_136_6();
        v81 = swift_allocObject();
        v82 = OUTLINED_FUNCTION_232_3(v81);
        memcpy(v82, v133, 0x70uLL);
        v83 = v45 | 0x6000000000000000;
        goto LABEL_76;
      case 14:
        *&v61 = OUTLINED_FUNCTION_313_0();
        *(&v143[4] + 10) = v61;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_255_1();
        *(v10 + 26) = *(&v143[4] + 10);
        v99 = OUTLINED_FUNCTION_374();
        memcpy(v99, v100, 0x6AuLL);
        OUTLINED_FUNCTION_247_1();
        *(v101 + 90) = *(&v143[4] + 10);
        v102 = OUTLINED_FUNCTION_375();
        sub_1936C39F0(v102, v103);
        sub_19344E6DC(v140, &qword_1EAE419C8, &qword_19397F9D0);
        v134[0] = *__dst;
        v134[1] = *&__dst[16];
        v134[2] = *&__dst[32];
        v134[4] = v136[0];
        v134[5] = v136[1];
        *(&v134[5] + 10) = *(v10 + 26);
        *&v134[3] = *&__dst[48];
        *(&v134[3] + 1) = 0xFFFFFFFFFFFFFFBLL;
        v104 = swift_allocObject();
        v105 = OUTLINED_FUNCTION_232_3(v104);
        memcpy(v105, v134, 0x6AuLL);
        v76 = 0x6000000000000004;
        goto LABEL_75;
      case 15:
        sub_1936EC9CC(&v142);
        v48 = OUTLINED_FUNCTION_219_1();
        memcpy(v48, v49, 0x1A2uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        memcpy(v139, __src, 0x1A2uLL);
        v50 = OUTLINED_FUNCTION_267_1();
        memcpy(v50, v51, 0x1A2uLL);
        if (sub_1936EC9EC(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.Person.init()(v138);
          memcpy(__dst, __src, sizeof(__dst));
          sub_19344E6DC(__dst, &qword_1EAE419C0, &qword_19397F9C8);
        }

        else
        {
          memcpy(v136, __src, 0x1A2uLL);
          memcpy(__dst, v139, sizeof(__dst));
          sub_1936C3E24(__dst, v135);
          sub_19344E6DC(v136, &qword_1EAE419C0, &qword_19397F9C8);
          memcpy(v138, v139, 0x1A2uLL);
        }

        v84 = swift_allocObject();
        v85 = OUTLINED_FUNCTION_232_3(v84);
        memcpy(v85, v138, 0x1A2uLL);
        v83 = 0x7FFFFFFFFFFFFFFBLL;
        goto LABEL_76;
      case 16:
        *&v44 = OUTLINED_FUNCTION_313_0();
        v143[5] = v44;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_255_1();
        v136[2] = v143[5];
        v69 = OUTLINED_FUNCTION_374();
        memcpy(v69, v70, 0x70uLL);
        OUTLINED_FUNCTION_247_1();
        *(v71 + 96) = v143[5];
        v72 = OUTLINED_FUNCTION_375();
        sub_1936C46CC(v72, v73);
        sub_19344E6DC(v140, &qword_1EAE419B8, &qword_19397F9C0);
        v144[0] = *__dst;
        v144[1] = *&__dst[16];
        v144[2] = *&__dst[32];
        v144[4] = v136[0];
        v144[5] = v136[1];
        v144[6] = v136[2];
        *&v144[3] = *&__dst[48];
        *(&v144[3] + 1) = 0xFFFFFFFFFFFFFFBLL;
        OUTLINED_FUNCTION_136_6();
        v74 = swift_allocObject();
        v75 = OUTLINED_FUNCTION_232_3(v74);
        memcpy(v75, v144, 0x70uLL);
        v76 = 0x7000000000000004;
        goto LABEL_75;
      case 17:
        v142 = xmmword_1939526A0;
        *&v62 = OUTLINED_FUNCTION_358_0();
        v143[4] = v62;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_366_0();
        v106 = OUTLINED_FUNCTION_374();
        memcpy(v106, v107, 0x60uLL);
        OUTLINED_FUNCTION_365_0();
        v108 = OUTLINED_FUNCTION_375();
        sub_1936C4880(v108, v109);
        sub_19344E6DC(v140, &qword_1EAE419B0, &qword_19397F9B8);
        memcpy(&v145[2], __dst, 0x50uLL);
        v145[0] = &v142;
        v145[1] = 0xFFFFFFFFFFFFFFBLL;
        OUTLINED_FUNCTION_209_0();
        v110 = swift_allocObject();
        v111 = OUTLINED_FUNCTION_232_3(v110);
        memcpy(v111, v145, 0x60uLL);
        v96 = 0x8FFFFFFFFFFFFFFBLL;
        goto LABEL_72;
      case 18:
        v142 = xmmword_193950B20;
        OUTLINED_FUNCTION_123_13();
        sub_19393C140();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_220_3();
        if (!v16 & v15)
        {
          v10 = 0xC000000000000000;
        }

        else
        {
          v10 = v27;
        }

        OUTLINED_FUNCTION_123_1();
        v28 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v28);
        v20 = v29 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
        goto LABEL_39;
      case 19:
        sub_1936EC8D4(&v142);
        v52 = OUTLINED_FUNCTION_219_1();
        memcpy(v52, v53, 0x139uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        memcpy(v139, __src, 0x139uLL);
        v54 = OUTLINED_FUNCTION_267_1();
        memcpy(v54, v55, 0x139uLL);
        if (sub_1936EC8F8(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.DateComponents.init()(v146);
        }

        else
        {
          memcpy(v146, v139, 0x139uLL);
        }

        v86 = swift_allocObject();
        v87 = OUTLINED_FUNCTION_232_3(v86);
        memcpy(v87, v146, 0x139uLL);
        v76 = 0x9000000000000000;
        goto LABEL_75;
      case 20:
        v142 = xmmword_1939526A0;
        *&v56 = OUTLINED_FUNCTION_358_0();
        v143[4] = v56;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_366_0();
        v90 = OUTLINED_FUNCTION_374();
        memcpy(v90, v91, 0x60uLL);
        OUTLINED_FUNCTION_365_0();
        v92 = OUTLINED_FUNCTION_375();
        sub_1936C4AE4(v92, v93);
        sub_19344E6DC(v140, &qword_1EAE419A0, &qword_19397F9A8);
        memcpy(&v147[2], __dst, 0x50uLL);
        v147[0] = &v142;
        v147[1] = 0xFFFFFFFFFFFFFFBLL;
        OUTLINED_FUNCTION_209_0();
        v94 = swift_allocObject();
        v95 = OUTLINED_FUNCTION_232_3(v94);
        memcpy(v95, v147, 0x60uLL);
        v96 = 0x9FFFFFFFFFFFFFFFLL;
LABEL_72:
        *v5 = v96;
        continue;
      case 22:
        sub_193665964(&v142);
        v63 = OUTLINED_FUNCTION_219_1();
        memcpy(v63, v64, 0xF8uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        memcpy(v139, __src, 0xF8uLL);
        v65 = OUTLINED_FUNCTION_267_1();
        memcpy(v65, v66, 0xF8uLL);
        if (sub_1936EC8BC(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.init()(v148);
        }

        else
        {
          memcpy(v148, v139, sizeof(v148));
        }

        v112 = swift_allocObject();
        v113 = OUTLINED_FUNCTION_232_3(v112);
        memcpy(v113, v148, 0xF8uLL);
        v76 = 0xA000000000000000;
        goto LABEL_75;
      case 23:
        memset(v143, 0, 25);
        v142 = 0u;
        BYTE9(v143[1]) = 1;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        if (BYTE9(v143[1]))
        {
          ToolKitToolTypedValue.PrimitiveValue.DateInterval.init()(&v149);
        }

        else
        {
          v149 = v142;
          *v150 = v143[0];
          *&v150[16] = *&v143[1];
          v150[24] = BYTE8(v143[1]);
        }

        v18 = swift_allocObject();
        v37 = *v150;
        *(v18 + 16) = v149;
        *(v18 + 32) = v37;
        *(v18 + 41) = *&v150[9];
        v20 = 0xA000000000000004;
LABEL_39:
        *v5 = v18 | v20;
        continue;
      case 24:
        sub_1936EC8A8(&v142);
        v40 = OUTLINED_FUNCTION_219_1();
        memcpy(v40, v41, 0xC0uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_368_0(v139);
        v42 = OUTLINED_FUNCTION_267_1();
        memcpy(v42, v43, 0xC0uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.init()(&v151);
        }

        else
        {
          memcpy(&v151, v139, 0xC0uLL);
        }

        OUTLINED_FUNCTION_287_0();
        v67 = swift_allocObject();
        v68 = OUTLINED_FUNCTION_232_3(v67);
        memcpy(v68, &v151, 0xC0uLL);
        v76 = 0xB000000000000000;
LABEL_75:
        v83 = v76 | 0xFFFFFFFFFFFFFFBLL;
LABEL_76:
        *v5 = v83;
        break;
      case 25:
        OUTLINED_FUNCTION_376_0();
        *&v143[0] = 0;
        WORD4(v143[0]) = 256;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        v114 = v9;
        OUTLINED_FUNCTION_326();
        if (BYTE9(v143[0]))
        {
          v115 = __src;
          ToolKitToolTypedValue.PrimitiveValue.Duration.init()(__src);
          v116 = BYTE8(__src[0]);
          v3 = *&__src[1];
          v117 = BYTE8(__src[1]);
        }

        else
        {
          v3 = *&v143[0];
          v116 = BYTE8(v142);
          v115 = &v142;
          v117 = BYTE8(v143[0]);
        }

        v124 = *v115;
        OUTLINED_FUNCTION_95();
        v125 = swift_allocObject();
        *(v125 + 16) = v124;
        *(v125 + 24) = v116 & 1;
        *(v125 + 32) = v3;
        *(v125 + 40) = v117 & 1;
        *v5 = v125 | 0xB000000000000004;
        v9 = v114;
        goto LABEL_2;
      default:
        continue;
    }
  }
}

uint64_t sub_1936EC8BC(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1936EC8D4(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  bzero((a1 + 96), 0xD9uLL);
}

uint64_t sub_1936EC8F8(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t objectdestroy_151Tm()
{
  v1 = v0[3];

  if (v0[9])
  {
    v2 = v0[5];

    v3 = v0[6];
    OUTLINED_FUNCTION_130_9();
    if (!v4)
    {
    }

    OUTLINED_FUNCTION_289_0();
    if (!v4)
    {
    }

    v5 = v0[8];
    OUTLINED_FUNCTION_66_21();
    if (!v4)
    {
    }

    v6 = v0[9];

    OUTLINED_FUNCTION_298_0();
    if (!v4)
    {
      v7 = v0[11];
      OUTLINED_FUNCTION_29_7();
      if (!(!v4 & v9))
      {
        sub_193446A6C(v0[10], v8);
        v10 = v0[13];
      }
    }
  }

  OUTLINED_FUNCTION_209_0();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

void sub_1936EC9CC(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  bzero((a1 + 64), 0x162uLL);
}

uint64_t sub_1936EC9EC(uint64_t a1)
{
  v1 = *(a1 + 56);
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

double sub_1936ECA10(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

void sub_1936ECA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch((*v8 >> 59) & 0x1E | (*v8 >> 2) & 1)
  {
    case 1:
      OUTLINED_FUNCTION_49_19();
      v86 = *(v85 + 16);
      OUTLINED_FUNCTION_15_11();
      sub_19393C2E0();
      return;
    case 2:
      OUTLINED_FUNCTION_49_19();
      v82 = *(v81 + 16);
      OUTLINED_FUNCTION_15_11();
      sub_19393C360();
      return;
    case 3:
      OUTLINED_FUNCTION_49_19();
      v84 = *(v83 + 16);
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
      return;
    case 4:
      v51 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v53 = memcpy(v51, v52, 0x5AuLL);
      v61 = OUTLINED_FUNCTION_135_6(v53, v54, v55, v56, v57, v58, v59, v60, v148);
      v63 = memcpy(v61, v62, 0x5AuLL);
      OUTLINED_FUNCTION_302_1(v63, v64, v65, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal, v66, &off_1F07E2E40, v67, v68, v149);
      goto LABEL_20;
    case 5:
    case 8:
      OUTLINED_FUNCTION_49_19();
      v141 = *(v140 + 16);
      v142 = *(v140 + 24);

      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
      OUTLINED_FUNCTION_258_1();

      return;
    case 6:
      OUTLINED_FUNCTION_49_19();
      v212 = *(v126 + 16);
      v214 = *(v126 + 24);
      goto LABEL_20;
    case 7:
    case 9:
    case 0x11:
      OUTLINED_FUNCTION_49_19();
      v88 = *(v87 + 16);
      v89 = *(v87 + 24);
      v90 = OUTLINED_FUNCTION_25_2();
      sub_193450688(v90, v91);
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_24_2();
      sub_19393C330();
      v92 = OUTLINED_FUNCTION_25_2();
      sub_193446A6C(v92, v93);
      return;
    case 0xALL:
      OUTLINED_FUNCTION_49_19();
      v213 = *(v139 + 16);
      v215 = *(v139 + 32);
      v216 = *(v139 + 40);
      v217 = *(v139 + 48);
      v218 = *(v139 + 56);
      v219 = *(v139 + 57);
      goto LABEL_20;
    case 0xBLL:
    case 0x16:
      v39 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v41 = memcpy(v39, v40, 0xC0uLL);
      v49 = OUTLINED_FUNCTION_135_6(v41, v42, v43, v44, v45, v46, v47, v48, v147);
      memcpy(v49, v50, 0xC0uLL);
      goto LABEL_20;
    case 0xCLL:
    case 0xFLL:
      v69 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v71 = memcpy(v69, v70, 0x70uLL);
      v79 = OUTLINED_FUNCTION_135_6(v71, v72, v73, v74, v75, v76, v77, v78, v150);
      memcpy(v79, v80, 0x70uLL);
      goto LABEL_20;
    case 0xDLL:
      v108 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v110 = memcpy(v108, v109, 0x6AuLL);
      v118 = OUTLINED_FUNCTION_135_6(v110, v111, v112, v113, v114, v115, v116, v117, v153);
      v120 = memcpy(v118, v119, 0x6AuLL);
      OUTLINED_FUNCTION_655(v120, v121, v122, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark, v123, &off_1F07E2F80, v124, v125, v154);
      goto LABEL_20;
    case 0xELL:
      v27 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v29 = memcpy(v27, v28, 0x1A2uLL);
      v37 = OUTLINED_FUNCTION_135_6(v29, v30, v31, v32, v33, v34, v35, v36, v146);
      memcpy(v37, v38, 0x1A2uLL);
      goto LABEL_20;
    case 0x10:
    case 0x13:
      v15 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v17 = memcpy(v15, v16, 0x60uLL);
      v25 = OUTLINED_FUNCTION_135_6(v17, v18, v19, v20, v21, v22, v23, v24, v145);
      memcpy(v25, v26, 0x60uLL);
      goto LABEL_20;
    case 0x12:
      v127 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v129 = memcpy(v127, v128, 0x139uLL);
      v137 = OUTLINED_FUNCTION_135_6(v129, v130, v131, v132, v133, v134, v135, v136, v155);
      memcpy(v137, v138, 0x139uLL);
      goto LABEL_20;
    case 0x14:
      v94 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v144, v156, v157, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
      v96 = memcpy(v94, v95, 0xF8uLL);
      v104 = OUTLINED_FUNCTION_135_6(v96, v97, v98, v99, v100, v101, v102, v103, v151);
      memcpy(v104, v105, 0xF8uLL);
      goto LABEL_20;
    case 0x15:
      OUTLINED_FUNCTION_49_19();
      *(v107 + 25) = *(v106 + 41);
      v152 = v106[1];
      *v158 = v106[2];
      *&v158[9] = *(v107 + 25);
      goto LABEL_20;
    case 0x17:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_294_1(v143);
LABEL_20:
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
      break;
    default:
      v211 = *(*v8 + 16);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v9, v10, v11, v12, v13, v14);
      break;
  }
}

void sub_1936ECF88()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC458);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("sign");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "exponent");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "isCompact");
  v9(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_16_6(v15, "length");
  v9(v16);
  v17 = OUTLINED_FUNCTION_60_1((v0 + 4 * v4));
  *v17 = "mantissa";
  *(v17 + 1) = 8;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936ED12C()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C170();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 6:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936ED380()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC470);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SignUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "SignMinus");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "SignPlus");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936ED500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v10 = sub_19393C420();
  __swift_allocate_value_buffer(v10, qword_1EAEAC488);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v11);
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v44 = OUTLINED_FUNCTION_152_10();
  *(v44 + 16) = xmmword_1939526B0;
  v14 = (v44 + v10);
  v15 = v14 + dword_1EAEAC4C0;
  *v14 = 1;
  *v15 = "_0";
  *(v15 + 1) = 2;
  v15[16] = 2;
  *(v15 + 3) = "0";
  *(v15 + 4) = 1;
  v15[40] = 2;
  v16 = *MEMORY[0x1E69AADD8];
  v17 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_50_1();
  (v19)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v14 + v13);
  *v22 = 2;
  v23 = OUTLINED_FUNCTION_329(v21, "_1");
  v24 = OUTLINED_FUNCTION_140_9(v23, "1");
  (v19)(v24);
  v25 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v26 = OUTLINED_FUNCTION_329(v25, "_2");
  v27 = OUTLINED_FUNCTION_140_9(v26, "2");
  (v19)(v27);
  v28 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v29 = OUTLINED_FUNCTION_329(v28, "_3");
  v30 = OUTLINED_FUNCTION_140_9(v29, "3");
  (v19)(v30);
  v31 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v32 = OUTLINED_FUNCTION_329(v31, "_4");
  v33 = OUTLINED_FUNCTION_140_9(v32, "4");
  (v19)(v33);
  v34 = dword_1EAEAC4C0;
  v35 = (v14 + 5 * v13);
  *v35 = 6;
  v36 = OUTLINED_FUNCTION_329(v35 + v34, "_5");
  v37 = OUTLINED_FUNCTION_140_9(v36, "5");
  (v19)(v37);
  v38 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v39 = OUTLINED_FUNCTION_329(v38, "_6");
  v40 = OUTLINED_FUNCTION_140_9(v39, "6");
  (v19)(v40);
  v41 = dword_1EAEAC4C0;
  v42 = (v14 + a10 - v13);
  *v42 = 8;
  v43 = OUTLINED_FUNCTION_329(v42 + v41, "_7");
  *(v43 + 24) = "7";
  *(v43 + 32) = 1;
  *(v43 + 40) = 2;
  OUTLINED_FUNCTION_2_0();
  v19();
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1936ED7C8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      default:
        continue;
    }
  }
}

void sub_1936ED874()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v3 = *(v1 + 12);
  v4 = v1[4];
  v5 = *(v1 + 20);
  v6 = v1[6];
  v7 = *(v1 + 28);
  v16[0] = *(v1 + 36);
  v12 = v1[10];
  v15 = *(v1 + 44);
  v10 = v1[12];
  v13 = *(v1 + 52);
  v14 = v1[8];
  v9 = v1[14];
  v11 = *(v1 + 60);
  if ((v1[1] & 1) == 0)
  {
    v8 = *v1;
    OUTLINED_FUNCTION_95_3();
    sub_19393C3D0();
  }

  if (!v0)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v16[0] & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936EDA34()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC4A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("unit");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "value");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "unitType");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EDB80()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C200();
        break;
    }
  }
}

void sub_1936EDC1C()
{
  OUTLINED_FUNCTION_50_13();
  v2 = v1[2];
  v3 = *(v1 + 24);
  v4 = *(v1 + 41);
  if (v1[1])
  {
    v5 = *v1;
    OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_667();
    }

    if ((v4 & 1) == 0)
    {
      v12 = v1[4];
      v13 = *(v1 + 40);
      OUTLINED_FUNCTION_134_11();
      sub_193447324(v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1936EDD28()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC4B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("amount");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "currencyIdentifier");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "displayRepresentation");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EDE78()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
LABEL_10:
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936EDF20()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  v9 = *(v2 + 12);
  v10 = *(v2 + 13);
  v11 = *(v2 + 19);
  if ((v2[1] & 0xFF00) != 0x300)
  {
    v20 = *v2;
    v12 = memcpy(v22 + 8, v2 + 24, 0x42uLL);
    OUTLINED_FUNCTION_134(v12, v13, v14, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal, v15, &off_1F07E2E40, v16, v17, v20);
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v0 = v1;
  }

  if (!v0)
  {
    if (!v10 || (OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_24_2(), v3 = sub_19393C3C0(), !v1))
    {
      if (v11)
      {
        v21 = v2[7];
        v22[0] = v2[8];
        v18 = *(v2 + 18);
        v19 = v2[11];
        v22[2] = v2[10];
        v22[3] = v19;
        *&v22[1] = v18;
        *(&v22[1] + 1) = v11;
        OUTLINED_FUNCTION_135_1(v3, v4, v5, &type metadata for ToolKitToolDisplayRepresentation, v6, &off_1F07E49E8, v7, v8, v21);
        OUTLINED_FUNCTION_78_1();
        sub_193447600();
      }
    }
  }
}

void sub_1936EE08C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC4D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("type");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "identificationHint");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "displayRepresentation");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EE1D8()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        sub_1934982A8();
        break;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936EE288()
{
  OUTLINED_FUNCTION_50_13();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 72);
  if ((*(v1 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_133_0();
    v11 = OUTLINED_FUNCTION_85_3(v5, v6, v7, &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type, v8, &off_1F07E2F58, v9, v10, v17);
    sub_193447324(v11, v12, v13, v14, v15, v16);
  }

  if (!v0)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_193_1();
      OUTLINED_FUNCTION_181();
    }

    if (v4)
    {
      v18 = *(v1 + 32);
      v19 = *(v1 + 48);
      v21 = *(v1 + 80);
      v22 = *(v1 + 96);
      v20 = *(v1 + 64);
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }
  }
}

void sub_1936EE3A8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC4E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193951270);
  *v0 = 0;
  OUTLINED_FUNCTION_63("TypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "TypeChecking");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_28_4(v13, 11);
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "TypeBrokerage");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "TypeDebit");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v20 = OUTLINED_FUNCTION_0_0(v19, "TypeCredit");
  v9(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  v22 = OUTLINED_FUNCTION_28_4(v21, 11);
  v9(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_30_0((v0 + v23));
  v25 = OUTLINED_FUNCTION_16_6(v24, "TypeStore");
  v9(v25);
  v26 = OUTLINED_FUNCTION_39_3(&v0[v4]);
  *v26 = "TypeApplePay";
  *(v26 + 1) = 12;
  v27 = OUTLINED_FUNCTION_1_3(v26);
  v9(v27);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EE614()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC500);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("placemark");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "displayRepresentation");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "type");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EE764()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C140();
        break;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936EE968()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC518);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("TypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "TypePlacemark");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "TypeCurrentLocation");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EEAE8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC530);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v35 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v35, xmmword_1939526F0);
  OUTLINED_FUNCTION_171_5("person");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_58_18();
  v11 = OUTLINED_FUNCTION_5_4(v10, "displayRepresentation");
  v8(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v13 = OUTLINED_FUNCTION_36_0(v12, "handle");
  v8(v13);
  v14 = OUTLINED_FUNCTION_9_64();
  v15 = OUTLINED_FUNCTION_5_4(v14, "nameComponents");
  v8(v15);
  v16 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v17 = 5;
  v18 = OUTLINED_FUNCTION_15(v16, 11);
  v8(v18);
  v19 = OUTLINED_FUNCTION_38_2();
  *v20 = 6;
  v21 = OUTLINED_FUNCTION_23_7(v19, "image");
  v8(v21);
  v22 = OUTLINED_FUNCTION_30_0((v0 + 6 * v4));
  v23 = OUTLINED_FUNCTION_36_0(v22, "contactIdentifier");
  v8(v23);
  OUTLINED_FUNCTION_33_0(8 * v4);
  OUTLINED_FUNCTION_121_1(v24);
  v26 = OUTLINED_FUNCTION_5_4(v25, "customIdentifier");
  v8(v26);
  v27 = OUTLINED_FUNCTION_55_2((v0 + 8 * v4));
  v28 = OUTLINED_FUNCTION_5_4(v27, "relationship");
  v8(v28);
  v29 = OUTLINED_FUNCTION_44(9 * v4);
  *v30 = 10;
  v31 = OUTLINED_FUNCTION_36_0(v29, "contactSuggestion");
  v8(v31);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_377_0(v32);
  *v33 = "isMe";
  v33[1] = 4;
  v34 = OUTLINED_FUNCTION_41(v33);
  v8(v34);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936EED70()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C140();
        continue;
      case 2:
        OUTLINED_FUNCTION_196_3();
        OUTLINED_FUNCTION_180_6();
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_8;
      case 4:
        OUTLINED_FUNCTION_147_0();
LABEL_8:
        sub_193498018();
        break;
      case 5:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 10:
      case 11:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936EEE98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_146_5();
  v3 = *(v2 + 8);
  v4 = *(v2 + 56);
  v5 = *(v2 + 104);
  v31 = *(v2 + 96);
  v27 = *(v2 + 336);
  v23 = *(v2 + 368);
  v24 = *(v2 + 352);
  v21 = *(v2 + 384);
  v22 = *(v2 + 392);
  v20 = *(v2 + 408);
  v19 = *(v2 + 416);
  v18 = *(v2 + 417);
  v25 = *(v2 + 376);
  v26 = *(v2 + 360);
  v28 = *(v2 + 344);
  if (v3 >> 60 != 15)
  {
    v17 = *(v2 + 400);
    v6 = *v2;
    v7 = OUTLINED_FUNCTION_82();
    sub_193450688(v7, v8);
    OUTLINED_FUNCTION_82();
    v1 = v0;
    sub_19393C330();
    sub_19345012C(v6, v3);
  }

  if (!v0)
  {
    if (!v4)
    {
      goto LABEL_28;
    }

    v9 = *(v2 + 32);
    __dst[0] = *(v2 + 16);
    __dst[1] = v9;
    v10 = *(v2 + 48);
    v11 = *(v2 + 80);
    __dst[3] = *(v2 + 64);
    __dst[4] = v11;
    *&__dst[2] = v10;
    *(&__dst[2] + 1) = v4;
    OUTLINED_FUNCTION_601();
    v0 = v1;
    if (!v1)
    {
LABEL_28:
      if (v5 == 1 || (v12 = *(v2 + 128), __dst[1] = *(v2 + 112), __dst[2] = v12, *&__dst[0] = v31, *(&__dst[0] + 1) = v5, OUTLINED_FUNCTION_601(), (v0 = v1) == 0))
      {
        memcpy(__dst, (v2 + 144), 0xC0uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v29, __dst, sizeof(v29)), OUTLINED_FUNCTION_601(), (v0 = v1) == 0))
        {
          if (!v28 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
          {
            if (v26 >> 60 == 15)
            {
              goto LABEL_27;
            }

            v13 = OUTLINED_FUNCTION_25_2();
            sub_193450688(v13, v14);
            OUTLINED_FUNCTION_25_2();
            OUTLINED_FUNCTION_226_2();
            sub_19393C330();
            v0 = v1;
            v15 = OUTLINED_FUNCTION_25_2();
            sub_19345012C(v15, v16);
            if (!v1)
            {
LABEL_27:
              if (!v25 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
              {
                if (!v22 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
                {
                  if (!v20 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
                  {
                    if (v19 == 2 || (sub_19393C2E0(), !v0))
                    {
                      if (v18 != 2)
                      {
                        sub_19393C2E0();
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

  OUTLINED_FUNCTION_27();
}

void sub_1936EF1E0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC548);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("value");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "type";
  v11[1] = 4;
  v13 = OUTLINED_FUNCTION_143_6(v11);
  v9(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "label";
  *(v14 + 1) = 5;
  v15 = OUTLINED_FUNCTION_143_6(v14);
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EF33C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
    }
  }
}

void sub_1936EF3D0()
{
  OUTLINED_FUNCTION_75_3();
  v7 = v0[1];
  v8 = *(v0 + 25);
  v9 = v0[4];
  v10 = v0[5];
  if (v7)
  {
    v11 = *v0;
    v2 = OUTLINED_FUNCTION_224_0();
  }

  if (!v1)
  {
    if ((v8 & 1) == 0)
    {
      v18 = *(v0 + 24);
      v12 = OUTLINED_FUNCTION_104_11(v2, v7, v3, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type, v4, &off_1F07E3038, v5, v6, v0[2]);
      sub_193447324(v12, v13, v14, v15, v16, v17);
    }

    if (v10)
    {
      OUTLINED_FUNCTION_228_3();
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_1936EF4D0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC560);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("TypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "TypeEmailAddress");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "TypePhoneNumber");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EF650()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC578);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_11_3(v5, xmmword_193952700);
  OUTLINED_FUNCTION_63("namePrefix");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "givenName");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_16_6(v13, "middleName");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  *v15 = "familyName";
  *(v15 + 1) = 10;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "nameSuffix");
  v9(v18);
  v19 = OUTLINED_FUNCTION_66_22();
  v20 = OUTLINED_FUNCTION_0_0(v19, "nickname");
  v9(v20);
  v21 = OUTLINED_FUNCTION_30_0((v0 + 10 * v4));
  v22 = OUTLINED_FUNCTION_0_0(v21, "phoneticRepresentation");
  v9(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EF82C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 7:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1936EF8F4()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_364_1();
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v14 = v2[6];
  v8 = v2[8];
  v16 = v2[7];
  v13 = v2[9];
  v11 = v2[10];
  v12 = v2[11];
  v9 = v2[12];
  v10 = v2[13];
  if (v3)
  {
    OUTLINED_FUNCTION_645();
    v1 = v0;
    sub_19393C3C0();
    if (v0)
    {
      return;
    }
  }

  else if (v0)
  {
    return;
  }

  if (!v5 || (OUTLINED_FUNCTION_325_0(), !v1))
  {
    if (!v7 || (OUTLINED_FUNCTION_125_3(), OUTLINED_FUNCTION_325_0(), !v1))
    {
      if (!v16 || (OUTLINED_FUNCTION_325_0(), !v1))
      {
        if (!v13 || (OUTLINED_FUNCTION_325_0(), !v1))
        {
          if (!v12 || (OUTLINED_FUNCTION_325_0(), !v1))
          {
            if (v10 != 1)
            {
              memcpy(v15, v2 + 14, sizeof(v15));
              OUTLINED_FUNCTION_203_2();
              sub_193447600();
            }
          }
        }
      }
    }
  }
}

void sub_1936EFAEC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC590);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("namePrefix");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_58_18();
  v12 = OUTLINED_FUNCTION_5_4(v11, "givenName");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_23_7(v13, "middleName");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  *v15 = "familyName";
  *(v15 + 1) = 10;
  v16 = OUTLINED_FUNCTION_41(v15);
  v9(v16);
  v17 = OUTLINED_FUNCTION_21_39();
  v18 = OUTLINED_FUNCTION_23_7(v17, "nameSuffix");
  v9(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v19);
  *v20 = "nickname";
  v20[1] = 8;
  v21 = OUTLINED_FUNCTION_41(v20);
  v9(v21);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936EFCB0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1936EFD4C()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v13 = v1[9];
  v10 = v1[10];
  v8 = v1[11];
  v11 = v8;
  v12 = v1[8];
  if (v1[1])
  {
    v9 = *v1;
    OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_234_2();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_228_3();
      OUTLINED_FUNCTION_181();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_181();
    }

    if (v13)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v11)
    {
      OUTLINED_FUNCTION_181();
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936EFE7C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC5A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("file");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "displayRepresentation");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "url");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EFFC4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C140();
        break;
    }
  }
}

void sub_1936F01B4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC5C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("bundleIdentifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "displayRepresentation");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F0348()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC5D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "displayRepresentation");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F0478()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }
}

void sub_1936F04F8()
{
  OUTLINED_FUNCTION_50_13();
  v7 = v1[1];
  v8 = v1[7];
  if (v7)
  {
    v9 = *v1;
    v2 = OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v8)
    {
      v10 = *(v1 + 2);
      v12 = *(v1 + 4);
      v13 = *(v1 + 5);
      v11 = v1[6];
      OUTLINED_FUNCTION_104_11(v2, v7, v3, &type metadata for ToolKitToolDisplayRepresentation, v4, &off_1F07E49E8, v5, v6, v1[2]);
      sub_193447600();
    }
  }
}

void sub_1936F05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAC5F0);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v12);
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v60 = OUTLINED_FUNCTION_293_2();
  OUTLINED_FUNCTION_8_18(v60, xmmword_193952750);
  OUTLINED_FUNCTION_83_0("calendar");
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v16);
  v18 = *(v17 + 104);
  v19 = OUTLINED_FUNCTION_50_1();
  v18(v19);
  v20 = OUTLINED_FUNCTION_58_18();
  v21 = OUTLINED_FUNCTION_5_4(v20, "timeZoneIdentifier");
  v18(v21);
  v22 = OUTLINED_FUNCTION_9_4((v10 + 2 * v14));
  v23 = OUTLINED_FUNCTION_5_4(v22, "era");
  v18(v23);
  v24 = OUTLINED_FUNCTION_26_5();
  *v25 = 4;
  v26 = OUTLINED_FUNCTION_23_7(v24, "year");
  v18(v26);
  v27 = OUTLINED_FUNCTION_21_39();
  v28 = OUTLINED_FUNCTION_5_4(v27, "month");
  v18(v28);
  v29 = OUTLINED_FUNCTION_38_2();
  *v30 = 6;
  v31 = OUTLINED_FUNCTION_15(v29, 3);
  v18(v31);
  v32 = OUTLINED_FUNCTION_30_0((v10 + 6 * v14));
  v33 = OUTLINED_FUNCTION_23_7(v32, "hour");
  v18(v33);
  OUTLINED_FUNCTION_33_0(8 * v14);
  OUTLINED_FUNCTION_121_1(v34);
  v36 = OUTLINED_FUNCTION_36_0(v35, "minute");
  v18(v36);
  v37 = OUTLINED_FUNCTION_55_2((v10 + 8 * v14));
  v38 = OUTLINED_FUNCTION_36_0(v37, "second");
  v18(v38);
  OUTLINED_FUNCTION_44(9 * v14);
  OUTLINED_FUNCTION_384(v39);
  *v40 = "nanosecond";
  v40[1] = v41;
  v42 = OUTLINED_FUNCTION_41(v40);
  v18(v42);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_377_0(v43);
  v45 = OUTLINED_FUNCTION_15(v44, 7);
  v18(v45);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_632(v46);
  v48 = OUTLINED_FUNCTION_23_7(v47, "weekdayOrdinal");
  v18(v48);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_631(v49);
  v51 = OUTLINED_FUNCTION_15(v50, 7);
  v18(v51);
  v52 = OUTLINED_FUNCTION_52_0();
  *v53 = 14;
  v54 = OUTLINED_FUNCTION_15(v52, 11);
  v18(v54);
  v55 = OUTLINED_FUNCTION_105_14((v10 + 14 * v14));
  v56 = OUTLINED_FUNCTION_15(v55, 10);
  v18(v56);
  OUTLINED_FUNCTION_33_0(a10);
  OUTLINED_FUNCTION_256_1(v57);
  *v58 = "yearForWeekOfYear";
  v58[1] = 17;
  v59 = OUTLINED_FUNCTION_41(v58);
  v18(v59);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936F08E4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      default:
        continue;
    }
  }
}

void sub_1936F0A00()
{
  OUTLINED_FUNCTION_664();
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v29 = *(v0 + 12);
  v35 = *(v0 + 104);
  v27 = *(v0 + 14);
  v34 = *(v0 + 120);
  v25 = *(v0 + 16);
  v28 = *(v0 + 136);
  v23 = *(v0 + 18);
  v26 = *(v0 + 152);
  v21 = *(v0 + 20);
  v24 = *(v0 + 168);
  v19 = *(v0 + 22);
  v22 = *(v0 + 184);
  v17 = *(v0 + 24);
  v20 = *(v0 + 200);
  v15 = *(v0 + 26);
  v18 = *(v0 + 216);
  v13 = *(v0 + 28);
  v16 = *(v0 + 232);
  v11 = *(v0 + 30);
  v14 = *(v0 + 248);
  v10 = *(v0 + 32);
  v12 = *(v0 + 264);
  v4 = *(v0 + 34);
  v5 = *(v0 + 280);
  v6 = *(v0 + 36);
  v7 = *(v0 + 296);
  v8 = *(v0 + 38);
  v9 = *(v0 + 312);
  if (*(v0 + 3) != 1)
  {
    v30 = *v0;
    v32 = v0[2];
    *v33 = v0[3];
    *&v33[9] = *(v0 + 57);
    v31 = *(v0 + 2);
    sub_193447600();
  }

  if (!v1)
  {
    if (v3)
    {
      sub_19393C3C0();
    }

    if ((v35 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v34 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v28 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v26 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v24 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v22 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v18 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v9 & 1) == 0)
    {
      sub_19393C360();
    }
  }

  OUTLINED_FUNCTION_663();
}

void sub_1936F0DE0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC608);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v75 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v75, xmmword_1939526D0);
  OUTLINED_FUNCTION_171_5("CalendarIdentifierUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v5));
  v12 = OUTLINED_FUNCTION_5_4(v11, "CalendarIdentifierGregorian");
  v9(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_5_4(v13, "CalendarIdentifierBuddhist");
  v9(v15);
  v16 = OUTLINED_FUNCTION_9_4((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_36_0(v16, "CalendarIdentifierChinese");
  v9(v17);
  v18 = OUTLINED_FUNCTION_13((v0 + 4 * v5));
  v19 = OUTLINED_FUNCTION_23_7(v18, "CalendarIdentifierCoptic");
  v9(v19);
  v20 = OUTLINED_FUNCTION_19_2((v0 + 5 * v5));
  v21 = OUTLINED_FUNCTION_5_4(v20, "CalendarIdentifierEthiopicAmeteMihret");
  v9(v21);
  v22 = OUTLINED_FUNCTION_95_13(6);
  v23 = OUTLINED_FUNCTION_5_4(v22, "CalendarIdentifierEthiopicAmeteAlem");
  v9(v23);
  v24 = OUTLINED_FUNCTION_30_0((v0 + 7 * v5));
  v25 = OUTLINED_FUNCTION_23_7(v24, "CalendarIdentifierHebrew");
  v9(v25);
  v26 = OUTLINED_FUNCTION_39_3((v0 + 8 * v5));
  v27 = OUTLINED_FUNCTION_36_0(v26, "CalendarIdentifierIso8601");
  v9(v27);
  v28 = OUTLINED_FUNCTION_55_2((v0 + 9 * v5));
  v29 = OUTLINED_FUNCTION_23_7(v28, "CalendarIdentifierIndian");
  v9(v29);
  v30 = OUTLINED_FUNCTION_95_13(10);
  v31 = OUTLINED_FUNCTION_36_0(v30, "CalendarIdentifierIslamic");
  v9(v31);
  v32 = OUTLINED_FUNCTION_95_13(11);
  v33 = OUTLINED_FUNCTION_5_4(v32, "CalendarIdentifierIslamicCivil");
  v9(v33);
  v34 = OUTLINED_FUNCTION_95_13(12);
  v35 = OUTLINED_FUNCTION_15(v34, 26);
  v9(v35);
  v36 = OUTLINED_FUNCTION_95_13(13);
  v37 = OUTLINED_FUNCTION_36_0(v36, "CalendarIdentifierPersian");
  v9(v37);
  v38 = OUTLINED_FUNCTION_95_13(14);
  v39 = OUTLINED_FUNCTION_5_4(v38, "CalendarIdentifierRepublicOfChina");
  v9(v39);
  OUTLINED_FUNCTION_44(15 * v5);
  OUTLINED_FUNCTION_180_0(v40);
  v42 = OUTLINED_FUNCTION_5_4(v41, "CalendarIdentifierIslamicTabular");
  v9(v42);
  v43 = OUTLINED_FUNCTION_98_14((v0 + 16 * v5));
  v44 = OUTLINED_FUNCTION_5_4(v43, "CalendarIdentifierIslamicUmmAlQura");
  v9(v44);
  v45 = OUTLINED_FUNCTION_44(17 * v5);
  *v46 = 17;
  v47 = OUTLINED_FUNCTION_23_7(v45, "CalendarIdentifierBangla");
  v9(v47);
  v48 = OUTLINED_FUNCTION_95_13(18);
  v49 = OUTLINED_FUNCTION_15(v48, 26);
  v9(v49);
  v50 = OUTLINED_FUNCTION_95_13(19);
  v51 = OUTLINED_FUNCTION_36_0(v50, "CalendarIdentifierKannada");
  v9(v51);
  v52 = OUTLINED_FUNCTION_95_13(20);
  v53 = OUTLINED_FUNCTION_15(v52, 27);
  v9(v53);
  v54 = OUTLINED_FUNCTION_95_13(21);
  v55 = OUTLINED_FUNCTION_36_0(v54, "CalendarIdentifierMarathi");
  v9(v55);
  v56 = OUTLINED_FUNCTION_95_13(22);
  v58 = OUTLINED_FUNCTION_15(v56, v57);
  v9(v58);
  v59 = OUTLINED_FUNCTION_67_1((v0 + 23 * v5));
  v60 = OUTLINED_FUNCTION_36_0(v59, "CalendarIdentifierTamil");
  v9(v60);
  v61 = OUTLINED_FUNCTION_60_1((v0 + 24 * v5));
  v62 = OUTLINED_FUNCTION_23_7(v61, "CalendarIdentifierTelugu");
  v9(v62);
  v63 = OUTLINED_FUNCTION_3_1(v0 + 25 * v5);
  *v64 = v65;
  v66 = OUTLINED_FUNCTION_23_7(v63, "CalendarIdentifierVikram");
  v9(v66);
  v67 = OUTLINED_FUNCTION_3_1(v0 + 26 * v5);
  *v68 = v69;
  v70 = OUTLINED_FUNCTION_36_0(v67, "CalendarIdentifierDangi");
  v9(v70);
  v71 = OUTLINED_FUNCTION_3_1(v0 + 27 * v5);
  *v72 = v73;
  *v71 = "CalendarIdentifierVietnamese";
  v71[1] = 28;
  v74 = OUTLINED_FUNCTION_41(v71);
  v9(v74);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936F1308()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC620);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("identifier");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "timeZoneIdentifier");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "localeIdentifier");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_0_0(v15, "firstWeekday");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "minimumDaysInFirstWeek");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F149C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      default:
        continue;
    }
  }
}

void sub_1936F1560()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_129_10();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 56);
  v13 = v0[8];
  v14 = v0[6];
  v17[0] = *(v0 + 72);
  if ((*(v0 + 9) & 1) == 0)
  {
    v15 = *v0;
    v16 = *(v0 + 8);
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v7, v8, v9, v10, v11, v12);
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_233_2();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_233_2();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_144_7();
      sub_19393C360();
    }

    if ((v17[0] & 1) == 0)
    {
      OUTLINED_FUNCTION_144_7();
      sub_19393C360();
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936F16AC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC638);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v45 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v45, xmmword_193952670);
  OUTLINED_FUNCTION_63("calendar");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "frequency");
  v9(v12);
  v13 = OUTLINED_FUNCTION_46_10();
  *v14 = 3;
  v15 = OUTLINED_FUNCTION_28_4(v13, 8);
  v9(v15);
  v16 = OUTLINED_FUNCTION_14_6();
  v17 = OUTLINED_FUNCTION_18_1(v16, "end");
  v9(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  *v18 = "matchingPolicy";
  *(v18 + 1) = 14;
  v19 = OUTLINED_FUNCTION_1_3(v18);
  v9(v19);
  v20 = OUTLINED_FUNCTION_66_22();
  v21 = OUTLINED_FUNCTION_0_0(v20, "repeatedTimePolicy");
  v9(v21);
  v22 = OUTLINED_FUNCTION_30_0((v1 + v5 * v0));
  v23 = OUTLINED_FUNCTION_16_6(v22, "months");
  v9(v23);
  OUTLINED_FUNCTION_120();
  v25 = OUTLINED_FUNCTION_39_3((v1 + v24));
  v26 = OUTLINED_FUNCTION_0_0(v25, "daysOfTheYear");
  v9(v26);
  v27 = OUTLINED_FUNCTION_55_2((v1 + 8 * v5));
  v28 = OUTLINED_FUNCTION_18_1(v27, "daysOfTheMonth");
  v9(v28);
  v29 = OUTLINED_FUNCTION_45_2(9 * v5);
  *v30 = 10;
  v31 = OUTLINED_FUNCTION_16_6(v29, "weeks");
  v9(v31);
  v32 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v33 = 11;
  v34 = OUTLINED_FUNCTION_28_4(v32, 8);
  v9(v34);
  v35 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v36 = 12;
  v37 = OUTLINED_FUNCTION_16_6(v35, "hours");
  v9(v37);
  OUTLINED_FUNCTION_3_1(v1 + 12 * v5);
  OUTLINED_FUNCTION_625(v38);
  v40 = OUTLINED_FUNCTION_18_1(v39, "minutes");
  v9(v40);
  v41 = OUTLINED_FUNCTION_157_9((v1 + 5 * v5));
  v42 = OUTLINED_FUNCTION_18_1(v41, "seconds");
  v9(v42);
  v43 = OUTLINED_FUNCTION_105_14((v1 + 5 * v5));
  *v43 = "setPositions";
  *(v43 + 1) = 12;
  v44 = OUTLINED_FUNCTION_1_3(v43);
  v9(v44);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936F19D8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_7;
      case 2:
      case 5:
      case 6:
        sub_1934982A8();
        continue;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        continue;
      case 4:
LABEL_7:
        sub_193498018();
        continue;
      case 7:
        OUTLINED_FUNCTION_62();
        goto LABEL_11;
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
      case 14:
      case 15:
        OUTLINED_FUNCTION_98();
        sub_19393C130();
        continue;
      case 11:
        OUTLINED_FUNCTION_89_2();
LABEL_11:
        sub_193498238(v3);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936F1B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 89);
  v68 = *(v8 + 104);
  v56 = *(v8 + 70);
  v55 = *(v8 + 34);
  v67 = *(v8 + 153);
  HIDWORD(v52) = *(v8 + 169);
  v53 = *(v8 + 22);
  v54 = *(v8 + 24);
  v49 = *(v8 + 23);
  v50 = *(v8 + 25);
  v12 = *(v8 + 27);
  v51 = *(v8 + 26);
  v14 = *(v8 + 28);
  v13 = *(v8 + 29);
  v15 = *(v8 + 30);
  if (*(v8 + 3) != 1)
  {
    v57 = *v8;
    v65 = v8[2];
    *v66 = v8[3];
    *&v66[9] = *(v8 + 57);
    v63 = *(v8 + 2);
    v48 = *(v8 + 12);
    sub_193447600();
  }

  if (!v9)
  {
    if ((v11 & 1) == 0)
    {
      v60 = *(v8 + 88);
      v16 = OUTLINED_FUNCTION_617(a1, a2, a3, &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency, a5, &off_1F07E3280, a7, a8, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(v8 + 10));
      a1 = sub_193447324(v16, v17, a2, v18, v20, v19);
    }

    if ((v68 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      a1 = sub_19393C360();
    }

    if (((v55 | (v56 << 32)) & 0xFF0000000000) != 0x30000000000)
    {
      v64 = *(v8 + 16);
      OUTLINED_FUNCTION_618(a1, a2, a3, &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd, a5, &off_1F07E32A8, a7, a8, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v8[7]);
      OUTLINED_FUNCTION_217_2();
      sub_193447600();
    }

    if ((v67 & 1) == 0)
    {
      v58 = *(v8 + 18);
      v61 = *(v8 + 152);
      OUTLINED_FUNCTION_217_2();
      sub_193447324(v21, v22, v23, v24, v25, v26);
    }

    v28 = v53;
    v27 = v54;
    if ((v52 & 0x100000000) == 0)
    {
      v59 = *(v8 + 20);
      v62 = *(v8 + 168);
      OUTLINED_FUNCTION_217_2();
      sub_193447324(v29, v30, v31, v32, v33, v34);
      v28 = v53;
      v27 = v54;
    }

    if (*(v28 + 16))
    {
      OUTLINED_FUNCTION_217_2();
      sub_193451CFC(v35, v36, v37, v38, v39, v40);
      v27 = v54;
    }

    if (*(v49 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
      v27 = v54;
    }

    if (*(v27 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v50 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v51 + 16))
    {
      OUTLINED_FUNCTION_217_2();
      sub_193451CFC(v41, v42, v43, v44, v45, v46);
    }

    if (*(v12 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v14 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v13 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v15 + 16))
    {
      sub_19393C320();
    }
  }
}

void sub_1936F1FB0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC650);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("CalendarMatchingPolicyUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_25(v11, "CalendarMatchingPolicyNextTime");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_25(v13, "CalendarMatchingPolicyNextTimePreservingSmallerComponents");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_25(v15, "CalendarMatchingPolicyPreviousTimePreservingSmallerComponents");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_25(v17, "CalendarMatchingPolicyStrict");
  v9(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F217C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC668);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("CalendarRepeatedTimePolicyUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_48(v11, "CalendarRepeatedTimePolicyFirst");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_48(v13, "CalendarRepeatedTimePolicyLast");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F22FC()
{
  OUTLINED_FUNCTION_108_0();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC680);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v27 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v27, xmmword_1939526B0);
  OUTLINED_FUNCTION_171_5("LocaleWeekdayUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v5));
  v12 = OUTLINED_FUNCTION_5_4(v11, "LocaleWeekdayMonday");
  v9(v12);
  v13 = OUTLINED_FUNCTION_59_5();
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_36_0(v13, "LocaleWeekdayTuesday");
  v9(v15);
  v16 = OUTLINED_FUNCTION_9_4((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_5_4(v16, "LocaleWeekdayWednesday");
  v9(v17);
  v18 = OUTLINED_FUNCTION_13((v0 + 4 * v5));
  v19 = OUTLINED_FUNCTION_23_7(v18, "LocaleWeekdayThursday");
  v9(v19);
  v20 = OUTLINED_FUNCTION_19_2((v0 + 5 * v5));
  v21 = OUTLINED_FUNCTION_36_0(v20, "LocaleWeekdayFriday");
  v9(v21);
  v22 = (v0 + 6 * v5);
  v23 = v22 + dword_1EAEAC6B8;
  *v22 = 6;
  v24 = OUTLINED_FUNCTION_23_7(v23, "LocaleWeekdaySaturday");
  v9(v24);
  v25 = OUTLINED_FUNCTION_30_0((v0 + 7 * v5));
  *v25 = "LocaleWeekdaySunday";
  *(v25 + 1) = 19;
  v26 = OUTLINED_FUNCTION_41(v25);
  v9(v26);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936F2560()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC698);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193952700);
  *v0 = 0;
  OUTLINED_FUNCTION_63("RecurrenceRuleFrequencyUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_9();
  v12 = OUTLINED_FUNCTION_0_0(v11, "RecurrenceRuleFrequencyMinutely");
  v9(v12);
  v13 = OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_16_6(v13, "RecurrenceRuleFrequencyHourly");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "RecurrenceRuleFrequencyDaily");
  v9(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "RecurrenceRuleFrequencyWeekly");
  v9(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v20 = OUTLINED_FUNCTION_28_4(v19, 30);
  v9(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  *v21 = "RecurrenceRuleFrequencyYearly";
  *(v21 + 1) = 29;
  v22 = OUTLINED_FUNCTION_1_3(v21);
  v9(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F2778()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC6B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("occurences");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "date");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "never");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F28C8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C190();
        break;
    }
  }
}

void sub_1936F2964()
{
  OUTLINED_FUNCTION_129_10();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  v5 = *(v0 + 29);
  if ((*(v0 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_144_7();
    sub_19393C360();
  }

  if (!v1)
  {
    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_144_7();
      sub_19393C2E0();
    }
  }
}

void sub_1936F2A7C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC6C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("RecurrenceRuleWeekdayWeekday");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "RecurrenceRuleWeekdayEvery");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "RecurrenceRuleWeekdayNth");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F2BCC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
    }
  }
}

void sub_1936F2C6C()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *(v0 + 10);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_221_1();
    v11 = OUTLINED_FUNCTION_85_3(v5, v6, v7, &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday, v8, &off_1F07E3258, v9, v10, v17);
    sub_193447324(v11, v12, v13, v14, v15, v16);
  }

  if (!v1)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_62_6();
      sub_19393C2E0();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_388();
      OUTLINED_FUNCTION_62_6();
      sub_19393C360();
    }
  }
}

void sub_1936F2D78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC6E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("index");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "isLeap");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936F2EA8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C190();
    }
  }

  return result;
}

void sub_1936F2F10()
{
  OUTLINED_FUNCTION_129_10();
  v2 = *(v0 + 9);
  if ((*(v0 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_144_7();
    sub_19393C360();
  }

  if (!v1 && v2 != 2)
  {
    OUTLINED_FUNCTION_144_7();
    sub_19393C2E0();
  }
}

void sub_1936F2FD8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC6F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("start");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  *v10 = "end";
  v10[1] = 3;
  v11 = OUTLINED_FUNCTION_70(v10);
  v8(v11);
  v12 = OUTLINED_FUNCTION_46_10();
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_48(v12, "duration");
  v8(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F3130()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C1E0();
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_1936F31C4()
{
  OUTLINED_FUNCTION_50_13();
  v8 = *(v1 + 28);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  if ((*(v1 + 12) & 1) == 0)
  {
    v11 = *(v1 + 8);
    OUTLINED_FUNCTION_85_3(v2, v3, v4, &type metadata for ToolKitToolTimestamp, v5, &off_1F07E2918, v6, v7, *v1);
    sub_193447600();
  }

  if (!v0)
  {
    if ((v8 & 1) == 0)
    {
      v12 = *(v1 + 24);
      OUTLINED_FUNCTION_104_11(v2, v3, v4, &type metadata for ToolKitToolTimestamp, v5, &off_1F07E2918, v6, v7, *(v1 + 16));
      sub_193447600();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_667();
    }
  }
}

void sub_1936F32EC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC710);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("seconds");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "attoSeconds");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F341C()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if ((*(v0 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_62_6();
    sub_19393C360();
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    sub_19393C360();
  }
}

void sub_1936F34EC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC728);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("type");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "caseValue");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "displayRepresentation");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F369C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC740);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("type");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_58_18();
  v12 = OUTLINED_FUNCTION_23_7(v11, "identifier");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_23_7(v13, "properties");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_64();
  v16 = OUTLINED_FUNCTION_5_4(v15, "displayRepresentation");
  v9(v16);
  v17 = OUTLINED_FUNCTION_21_39();
  v18 = OUTLINED_FUNCTION_5_4(v17, "hydratedAppEntity");
  v9(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v19);
  *v20 = "siriKitEntity";
  v20[1] = 13;
  v21 = OUTLINED_FUNCTION_41(v20);
  v9(v21);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F3AE8()
{
  OUTLINED_FUNCTION_379();
  v3 = v1;
  OUTLINED_FUNCTION_22_0();
  v4 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  v8 = v0[9];
  v22 = v0[14];
  v23 = v0[15];
  v21 = v0[16];
  v29 = v0[17];
  OUTLINED_FUNCTION_66_21();
  if (!v9)
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v3 = v1;
  }

  if (!v3)
  {
    if (!v7 || (OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_24_2(), sub_19393C3C0(), (v3 = v1) == 0))
    {
      if (!*(v6 + 16) || (v1 = v3, sub_1936F3C94(v6), OUTLINED_FUNCTION_314_0(), sub_193451CFC(v10, v11, v12, v13, v2, v14), OUTLINED_FUNCTION_258_1(), , !v3))
      {
        if (!v8)
        {
          goto LABEL_17;
        }

        v24 = *(v0 + 2);
        v25 = *(v0 + 3);
        v27 = *(v0 + 5);
        v28 = *(v0 + 6);
        v26 = v0[8];
        OUTLINED_FUNCTION_78_1();
        sub_193447600();
        v3 = v1;
        if (!v1)
        {
LABEL_17:
          OUTLINED_FUNCTION_634();
          if (!v9 & v15 || (sub_193450688(v22, v23), OUTLINED_FUNCTION_24_2(), sub_19393C330(), v16 = OUTLINED_FUNCTION_258_1(), sub_19345012C(v16, v23), !v3))
          {
            if (v29 >> 60 != 15)
            {
              v17 = OUTLINED_FUNCTION_25_2();
              sub_193450688(v17, v18);
              OUTLINED_FUNCTION_25_2();
              OUTLINED_FUNCTION_24_2();
              sub_19393C330();
              v19 = OUTLINED_FUNCTION_25_2();
              sub_19345012C(v19, v20);
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_378();
}

uint64_t sub_1936F3C94(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_19371043C(0, v4, 0);
    v6 = v43;
    result = sub_19371072C(v3);
    v9 = result;
    v10 = 0;
    v11 = v3 + 64;
    v34 = v7;
    v35 = v4;
    v33 = v3 + 72;
    v36 = v3 + 64;
    v37 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v3 + 36) != v7)
      {
        goto LABEL_24;
      }

      v41 = v7;
      v38 = v8;
      v39 = v10;
      v13 = (*(v3 + 48) + 16 * v9);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v3 + 56) + 8 * v9);

      MEMORY[0x1EEE9AC00](v17);
      static Buildable.with(_:)(sub_193710F54, &type metadata for ToolKitToolTypedValue.EntityValue.PropertiesEntry, &off_1F07E52B0, v42);
      v40 = v2;

      v19 = v42[0];
      v18 = v42[1];
      v20 = v42[2];
      v21 = v6;
      v43 = v6;
      v22 = *(v6 + 16);
      v23 = *(v21 + 24);
      if (v22 >= v23 >> 1)
      {
        result = sub_19371043C((v23 > 1), v22 + 1, 1);
        v21 = v43;
      }

      *(v21 + 16) = v22 + 1;
      v24 = (v21 + 24 * v22);
      v24[4] = v19;
      v24[5] = v18;
      v24[6] = v20;
      v3 = v37;
      v25 = 1 << *(v37 + 32);
      if (v9 >= v25)
      {
        goto LABEL_25;
      }

      v11 = v36;
      v26 = *(v36 + 8 * v12);
      if ((v26 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v6 = v21;
      if (*(v37 + 36) != v41)
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v9 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v2 = v40;
      }

      else
      {
        v28 = v12 << 6;
        v29 = v12 + 1;
        v30 = (v33 + 8 * v12);
        v2 = v40;
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_19371076C(v9, v41, v38 & 1);
            v25 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_19371076C(v9, v41, v38 & 1);
      }

LABEL_19:
      v8 = 0;
      v10 = v39 + 1;
      v9 = v25;
      v7 = v34;
      if (v39 + 1 == v35)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1936F3F78(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_193710474(0, v2, 0);
    v36 = v40;
    result = sub_19371072C(v1);
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v31 = v4;
    v32 = v2;
    v30 = v1 + 72;
    v33 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_24;
      }

      v35 = v4;
      v34 = v5;
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v1;
      v14 = *(*(v1 + 56) + 8 * v6);

      MEMORY[0x1EEE9AC00](v15);
      static Buildable.with(_:)(sub_193710A98, &type metadata for ToolKitToolToolInvocationSignature.ValueConstraintsEntry, &off_1F07E5748, &v38);

      v16 = v38;
      v17 = v39;
      v18 = v36;
      v40 = v36;
      v20 = *(v36 + 16);
      v19 = *(v36 + 24);
      if (v20 >= v19 >> 1)
      {
        v37 = v39;
        result = sub_193710474((v19 > 1), v20 + 1, 1);
        v17 = v37;
        v18 = v40;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 24 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      v22 = 1 << *(v13 + 32);
      if (v6 >= v22)
      {
        goto LABEL_25;
      }

      v1 = v13;
      v8 = v33;
      v23 = *(v33 + 8 * v9);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v36 = v18;
      if (*(v1 + 36) != v35)
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_19371076C(v6, v35, v34 & 1);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_19371076C(v6, v35, v34 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v22;
      v4 = v31;
      if (v7 == v32)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1936F425C()
{
  OUTLINED_FUNCTION_26();
  v43 = v2;
  v44 = v3;
  v42 = v4;
  v5 = v0;
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v51 = MEMORY[0x1E69E7CC0];
    v36 = v1;
    v1(0, v8, 0);
    v49 = v51;
    v11 = sub_19371072C(v7);
    v12 = 0;
    v13 = v7 + 64;
    v38 = v9;
    v39 = v8;
    v37 = v7 + 72;
    v40 = v7 + 64;
    v41 = v7;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v7 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v7 + 36) != v9)
      {
        goto LABEL_23;
      }

      v48 = v9;
      v45 = v10;
      v46 = v12;
      v15 = (*(v7 + 48) + 16 * v11);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v7 + 56) + 8 * v11);

      MEMORY[0x1EEE9AC00](v19);
      static Buildable.with(_:)(v42, v43, v44, v50);
      v47 = v5;

      v21 = v50[0];
      v20 = v50[1];
      v22 = v50[2];
      v23 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        v36(v24 > 1, v25 + 1, 1);
        v23 = v49;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (v23 + 24 * v25);
      v26[4] = v21;
      v26[5] = v20;
      v26[6] = v22;
      v7 = v41;
      v27 = 1 << *(v41 + 32);
      if (v11 >= v27)
      {
        goto LABEL_24;
      }

      v13 = v40;
      v28 = *(v40 + 8 * v14);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      v49 = v23;
      if (*(v41 + 36) != v48)
      {
        goto LABEL_26;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v5 = v47;
        v30 = v39;
      }

      else
      {
        v31 = v14 << 6;
        v32 = v14 + 1;
        v33 = (v37 + 8 * v14);
        v5 = v47;
        v30 = v39;
        while (v32 < (v27 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_19371076C(v11, v48, v45 & 1);
            v27 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        sub_19371076C(v11, v48, v45 & 1);
      }

LABEL_19:
      v10 = 0;
      v12 = v46 + 1;
      v11 = v27;
      v9 = v38;
      if (v46 + 1 == v30)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_27();
  }
}

void sub_1936F4598()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC758);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "value");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F47DC()
{
  v2 = v1;
  OUTLINED_FUNCTION_184_6();
  v3 = v0[2];
  if (*v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[1] == 0xE000000000000000;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_82();
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_82();
      OUTLINED_FUNCTION_32_20();
      OUTLINED_FUNCTION_66_17();
      sub_19393C3C0();
      v2 = v1;
    }
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_173_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_173_0();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v5 + 16) = v6;
    v13 = v5;
    sub_193710F00();
    swift_retain_n();
    OUTLINED_FUNCTION_616();
    LOBYTE(v5) = sub_19393C550();

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_165_4(v7, v8, v9, &type metadata for ToolKitToolTypedValue, v10, &off_1F07E2DB0, v11, v12, v13, v3);
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
    }
  }
}

void sub_1936F4984()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC770);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("identifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "data");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "displayRepresentation");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F4AD4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C140();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C200();
        break;
    }
  }
}

void sub_1936F4B70()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 72);
  if (*(v2 + 8))
  {
    OUTLINED_FUNCTION_645();
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
    v0 = v1;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_634();
    if (!v13 & v12 || (v14 = OUTLINED_FUNCTION_165_1(), sub_193450688(v14, v15), OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_24_2(), sub_19393C330(), v16 = OUTLINED_FUNCTION_165_1(), v6 = sub_19345012C(v16, v17), !v1))
    {
      if (v5)
      {
        v18 = *(v2 + 48);
        v20 = *(v2 + 80);
        v21 = *(v2 + 96);
        v19 = *(v2 + 64);
        OUTLINED_FUNCTION_135_1(v6, v7, v8, &type metadata for ToolKitToolDisplayRepresentation, v9, &off_1F07E49E8, v10, v11, *(v2 + 32));
        OUTLINED_FUNCTION_78_1();
        sub_193447600();
      }
    }
  }
}

void sub_1936F4CAC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC788);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("type");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "values");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "typeInstance");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F4DF8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_196_3();
        OUTLINED_FUNCTION_180_6();
LABEL_10:
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_193498238(v3);
        break;
      case 1:
        OUTLINED_FUNCTION_147_0();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936F4EB0()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  OUTLINED_FUNCTION_66_21();
  if (!v5)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_129_4();
      sub_193451CFC(v6, v7, v8, v9, v10, v11);
    }

    if ((~v4 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }
  }
}

void sub_1936F4FE4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC7A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_56_18("type");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "query");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F5110()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936F519C()
{
  OUTLINED_FUNCTION_50_13();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_66_21();
  if (!v4)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v0 && (v3 & 0xF000000000000007) != 0xE000000000000007)
  {
    *v5 = *(v1 + 1);
    *&v5[9] = *(v1 + 25);
    OUTLINED_FUNCTION_129_4();
    sub_193447600();
  }
}

void sub_1936F52A8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC7B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("type");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "identifier");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "displayRepresentation");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F53F4()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
LABEL_10:
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936F549C()
{
  OUTLINED_FUNCTION_50_13();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[8];
  OUTLINED_FUNCTION_66_21();
  if (!v13)
  {
    OUTLINED_FUNCTION_85_3(v6, v7, v8, &type metadata for ToolKitToolTypeIdentifier, v9, &off_1F07E2978, v10, v11, v12);
    sub_193447600();
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_193_1();
      OUTLINED_FUNCTION_181();
    }

    if (v5)
    {
      v14 = *(v1 + 3);
      v15 = *(v1 + 5);
      v17 = *(v1 + 9);
      v18 = *(v1 + 11);
      v16 = v1[7];
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }
  }
}

void sub_1936F5598()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC7D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("type");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "expectedTypeInstance");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "storage");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F56E4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_196_3();
        OUTLINED_FUNCTION_180_6();
LABEL_10:
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_10;
      case 1:
        OUTLINED_FUNCTION_147_0();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936F5794()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_129_10();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  OUTLINED_FUNCTION_66_21();
  if (!v5)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    if ((~v3 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }

    if ((~v4 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_130_10();
      sub_193447600();
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_1936F58C4(void *a1@<X8>)
{
  OUTLINED_FUNCTION_95();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.init()();
  *a1 = v1;
}

void sub_1936F5900()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC7E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("contentItemProperty");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "defaultValue");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F5C10()
{
  OUTLINED_FUNCTION_279();
  if (v6 < 0)
  {
    v7 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v9 = *(v7 + 32);
    OUTLINED_FUNCTION_182_0(v0, v1, v2, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, v3, &off_1F07E3578, v4, v5, *(v7 + 16));
  }

  else
  {
    v8 = *(v6 + 32);
    OUTLINED_FUNCTION_134(v0, v1, v2, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, v3, &off_1F07E3548, v4, v5, *(v6 + 16));
  }

  sub_193447600();
}

void sub_1936F5CE8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC800);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_56_18("data");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "propertyKey");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F5E78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC818);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("actionIdentifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "parameterKey");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F6014()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC830);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_11_3(v5, xmmword_193952700);
  OUTLINED_FUNCTION_63("type");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_16_6(v11, "collection");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "optionalVariant");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_0_0(v15, "unionType");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_16_6(v17, "restricted");
  v9(v18);
  v19 = OUTLINED_FUNCTION_66_22();
  v20 = OUTLINED_FUNCTION_0_0(v19, "deferred");
  v9(v20);
  v21 = OUTLINED_FUNCTION_30_0((v0 + 10 * v4));
  v22 = OUTLINED_FUNCTION_0_0(v21, "constrained");
  v9(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F66AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch(*v8 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_182_0(v29, v30, v31, &type metadata for ToolKitToolTypeInstance, v32, &off_1F07E35A8, v33, v34, v42);
      break;
    case 2uLL:
      OUTLINED_FUNCTION_357();
      OUTLINED_FUNCTION_135_1(v17, v18, v19, &type metadata for ToolKitToolTypeInstance.Optional, v20, &off_1F07E35D8, v21, v22, v42);
      break;
    case 3uLL:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_174(v23, v24, v25, &type metadata for ToolKitToolTypeInstance.Union, v26, &off_1F07E3608, v27, v28, v42);
      break;
    case 4uLL:
      v16 = v9 & 0x1FFFFFFFFFFFFFFFLL;
      v43 = *(v16 + 24);
      OUTLINED_FUNCTION_302_1(a1, a2, a2, &type metadata for ToolKitToolTypeInstance.Restricted, a3, &off_1F07E3638, a7, a8, *(v16 + 16));
      break;
    case 5uLL:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_303_0(v35, v36, v37, &type metadata for ToolKitToolTypeInstance.Deferred, v38, &off_1F07E3668, v39, v40, v42);
      break;
    case 6uLL:
      v41 = v9 & 0x1FFFFFFFFFFFFFFFLL;
      v44 = *(v41 + 24);
      OUTLINED_FUNCTION_653(a1, a2, a2, &type metadata for ToolKitToolTypeInstance.Constrained, a3, &off_1F07E3698, a7, a8, *(v41 + 16));
      break;
    default:
      OUTLINED_FUNCTION_190_2();
      OUTLINED_FUNCTION_134(v10, v11, v12, &type metadata for ToolKitToolTypeIdentifier, v13, &off_1F07E2978, v14, v15, v42);
      break;
  }

  sub_193447600();
}

void sub_1936F6868()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC848);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("value");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "defaultValue");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936F6A30()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_1936F6AE4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC878);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "context");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F6D14()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC8A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("instance");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "context");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F6E44()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_121_9();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_607();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_372_0();
      sub_193498238(v3);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_155_6();
      sub_193498018();
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936F6EC0()
{
  OUTLINED_FUNCTION_96_3();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_66_21();
  if (!v4)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_129_4();
      sub_193451CFC(v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1936F6FC4(void *a1@<X8>)
{
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  ToolKitToolRestrictionContext.InSet.init()(v3);
  *a1 = v1;
}

void sub_1936F7004()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC8C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_11_3(v5, xmmword_193952700);
  OUTLINED_FUNCTION_63("inSet");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "representableAs");
  v9(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_16_6(v13, "personReachableAs");
  v9(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_16_6(v15, "dateExpressibleAs");
  v9(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "textTypedWith");
  v9(v18);
  v19 = OUTLINED_FUNCTION_66_22();
  v20 = OUTLINED_FUNCTION_0_0(v19, "measurementExpressibleAs");
  v9(v20);
  v21 = OUTLINED_FUNCTION_30_0((v0 + 17 * v4));
  v22 = OUTLINED_FUNCTION_0_0(v21, "inInclusiveRange");
  v9(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F71DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        sub_1937100F8(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_193498018();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_608(v29);
        OUTLINED_FUNCTION_608(v30);
        if (sub_193710124(v30) == 1)
        {
          ToolKitToolRestrictionContext.InSet.init()(v28);
          OUTLINED_FUNCTION_608(v27);
          sub_19344E6DC(v27, &qword_1EAE419E8, &qword_19397F9F0);
        }

        else
        {
          OUTLINED_FUNCTION_608(v26);
          memcpy(v27, v29, sizeof(v27));
          sub_1936C801C(v27, v25);
          sub_19344E6DC(v26, &qword_1EAE419E8, &qword_19397F9F0);
          memcpy(v28, v29, sizeof(v28));
        }

        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_232_3(v18);
        memcpy(v19, v28, 0x120uLL);
        *v1 = value;
        break;
      case 2:
        *&__src[0] = 0;
        OUTLINED_FUNCTION_355_0();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        value = *__src;
        if (!*&__src[0])
        {
          ToolKitToolRestrictionContext.RepresentableAs.init()();
          value = __dst[0].lowerBound.value;
        }

        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        *(v9 + 16) = value;
        OUTLINED_FUNCTION_257_0(v9);
        break;
      case 3:
        *&__src[0] = 0;
        WORD4(__src[0]) = 256;
        OUTLINED_FUNCTION_355_0();
        sub_1934982A8();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_353_0();
        OUTLINED_FUNCTION_123_1();
        v5 = swift_allocObject();
        v6 = OUTLINED_FUNCTION_359_0(v5);
        OUTLINED_FUNCTION_277(v6);
        break;
      case 4:
        *&__src[0] = 0;
        WORD4(__src[0]) = 256;
        OUTLINED_FUNCTION_355_0();
        sub_1934982A8();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_353_0();
        OUTLINED_FUNCTION_123_1();
        v7 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_359_0(v7);
        OUTLINED_FUNCTION_285_1(v8);
        break;
      case 5:
        *&__src[0] = 3;
        *(__src + 8) = 0u;
        *(&__src[1] + 8) = 0u;
        *(&__src[2] + 2) = 0u;
        OUTLINED_FUNCTION_355_0();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        if (LOBYTE(__src[0]) == 3)
        {
          ToolKitToolRestrictionContext.TextTypedWith.init()(v33);
        }

        else
        {
          *(v33 + 8) = *(__src + 8);
          *(&v33[1] + 8) = *(&__src[1] + 8);
          *&v33[0] = *&__src[0];
          *(&v33[2] + 1) = *(&__src[2] + 1);
          v34 = __src[3];
        }

        v16 = swift_allocObject();
        v17 = v33[1];
        *(v16 + 16) = v33[0];
        *(v16 + 32) = v17;
        *(v16 + 48) = v33[2];
        *(v16 + 64) = v34;
        OUTLINED_FUNCTION_285(v16);
        break;
      case 6:
        __src[0] = xmmword_1939526A0;
        LOWORD(__src[1]) = 0;
        OUTLINED_FUNCTION_355_0();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        value = *(__src + 1);
        if (*(&__src[0] + 1) == 1)
        {
          v10 = __dst;
          ToolKitToolRestrictionContext.MeasurementExpressibleAs.init()();
          value = *&__dst[0].lowerBound.is_nil;
          value_high = HIBYTE(__dst[0].upperBound.value);
          LOBYTE(v12) = __dst[0].upperBound.is_nil;
        }

        else
        {
          value_high = __src[1];
          v12 = HIBYTE(LOWORD(__src[1]));
          v10 = __src;
        }

        v20 = v10->lowerBound.value;
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = value;
        *(v21 + 32) = value_high;
        *(v21 + 33) = v12;
        v22 = v21 | 0xA000000000000000;
        goto LABEL_26;
      case 7:
        memset(__src, 0, 24);
        WORD4(__src[1]) = 256;
        OUTLINED_FUNCTION_355_0();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        if (BYTE9(__src[1]))
        {
          v13 = __dst;
          ToolKitToolRestrictionContext.InInclusiveRange.init()(__dst);
          is_nil = __dst[0].lowerBound.is_nil;
          value = *(&__dst[0].upperBound.value + 7);
          v15 = BYTE6(__dst[1].lowerBound.value);
        }

        else
        {
          value = *&__src[1];
          is_nil = BYTE8(__src[0]);
          v13 = __src;
          v15 = BYTE8(__src[1]);
        }

        v23 = v13->lowerBound.value;
        OUTLINED_FUNCTION_95();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = is_nil & 1;
        *(v24 + 32) = value;
        *(v24 + 40) = v15 & 1;
        v22 = v24 | 0xC000000000000000;
LABEL_26:
        *v1 = v22;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936F76CC()
{
  OUTLINED_FUNCTION_103_10();
  switch(v7)
  {
    case 1:
      *&__dst[0] = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_8;
    case 2:
    case 3:
      OUTLINED_FUNCTION_121_8(v6);
      OUTLINED_FUNCTION_23_3();
      sub_193447324(v16, v17, v18, v19, v20, v21);
      return;
    case 4:
      v14 = v6 & 0x1FFFFFFFFFFFFFFFLL;
      v15 = *(v14 + 32);
      __dst[0] = *(v14 + 16);
      __dst[1] = v15;
      __dst[2] = *(v14 + 48);
      LOWORD(__dst[3]) = *(v14 + 64);
      *(&v28[0] + 1) = *(&__dst[0] + 1);
      v28[1] = v15;
      v28[2] = __dst[2];
      LOWORD(v28[3]) = __dst[3];
      OUTLINED_FUNCTION_302_1(v0, v1, v2, &type metadata for ToolKitToolRestrictionContext.TextTypedWith, v3, &off_1F07E38F8, v4, v5, *&__dst[0]);
      goto LABEL_8;
    case 5:
      v22 = v6 & 0x1FFFFFFFFFFFFFFFLL;
      v23 = *(v22 + 32);
      __dst[0] = *(v22 + 16);
      LOWORD(__dst[1]) = v23;
      goto LABEL_8;
    case 6:
      OUTLINED_FUNCTION_294_1(v6 & 0x1FFFFFFFFFFFFFFFLL);
      *&__dst[0] = v24;
      BYTE8(__dst[0]) = v25;
      *&__dst[1] = v26;
      BYTE8(__dst[1]) = v27;
      goto LABEL_8;
    default:
      memcpy(__dst, (v6 + 16), sizeof(__dst));
      v8 = memcpy(v28, __dst, sizeof(v28));
      OUTLINED_FUNCTION_134(v8, v9, v10, &type metadata for ToolKitToolRestrictionContext.InSet, v11, &off_1F07E3748, v12, v13, *&v28[0]);
LABEL_8:
      OUTLINED_FUNCTION_23_3();
      sub_193447600();
      return;
  }
}

void sub_1936F78E8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC8D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_43_2(v6, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("PersonReachableAsUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v12 = "PersonReachableAsContact";
  *(v12 + 1) = 24;
  v12[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_63_1(v13, "PersonReachableAsPhone");
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v16 = OUTLINED_FUNCTION_63_1(v15, "PersonReachableAsEmail");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v18 = OUTLINED_FUNCTION_25(v17, "PersonReachableAsEmailOrPhone");
  (v10)(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F7AB8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC8F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("DateExpressibleAsUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v12 = OUTLINED_FUNCTION_63_1(v11, "DateExpressibleAsDate");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_63_1(v13, "DateExpressibleAsTime");
  v9(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v16 = OUTLINED_FUNCTION_25(v15, "DateExpressibleAsDateAndTime");
  v9(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F7C60()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC908);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("definition");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "templates");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F7D90()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_355();
}