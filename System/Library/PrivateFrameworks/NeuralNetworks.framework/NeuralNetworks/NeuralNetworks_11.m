unint64_t sub_25BB60334()
{
  result = qword_27FBB4C58;
  if (!qword_27FBB4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C58);
  }

  return result;
}

unint64_t sub_25BB6038C()
{
  result = qword_27FBB4C60;
  if (!qword_27FBB4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C60);
  }

  return result;
}

unint64_t sub_25BB603E4()
{
  result = qword_27FBB4C68;
  if (!qword_27FBB4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C68);
  }

  return result;
}

unint64_t sub_25BB6043C()
{
  result = qword_27FBB4C70;
  if (!qword_27FBB4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C70);
  }

  return result;
}

unint64_t sub_25BB60494()
{
  result = qword_27FBB4C78;
  if (!qword_27FBB4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C78);
  }

  return result;
}

unint64_t sub_25BB604EC()
{
  result = qword_27FBB4C80;
  if (!qword_27FBB4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C80);
  }

  return result;
}

unint64_t sub_25BB60544()
{
  result = qword_27FBB4C88;
  if (!qword_27FBB4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C88);
  }

  return result;
}

unint64_t sub_25BB6059C()
{
  result = qword_27FBB4C90;
  if (!qword_27FBB4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C90);
  }

  return result;
}

unint64_t sub_25BB605F4()
{
  result = qword_27FBB4C98;
  if (!qword_27FBB4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C98);
  }

  return result;
}

unint64_t sub_25BB6064C()
{
  result = qword_27FBB4CA0;
  if (!qword_27FBB4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CA0);
  }

  return result;
}

unint64_t sub_25BB606A4()
{
  result = qword_27FBB4CA8;
  if (!qword_27FBB4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CA8);
  }

  return result;
}

unint64_t sub_25BB606FC()
{
  result = qword_27FBB4CB0;
  if (!qword_27FBB4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CB0);
  }

  return result;
}

ValueMetadata *OUTLINED_FUNCTION_51_6()
{

  return sub_25BC8FACC();
}

uint64_t sub_25BB607A0()
{
  v0 = sub_25BCB78FC();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BB60818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB607A0();
  *a2 = result;
  return result;
}

unint64_t sub_25BB60848@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BABE12C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for UnaryArithmeticOperation.Operator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnaryArithmeticOperation.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB609EC()
{
  result = qword_27FBB4CB8;
  if (!qword_27FBB4CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4CC0, qword_25BCC1818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CB8);
  }

  return result;
}

unint64_t sub_25BB60A54()
{
  result = qword_27FBB4CC8;
  if (!qword_27FBB4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CC8);
  }

  return result;
}

unint64_t sub_25BB60AA8(uint64_t a1)
{
  result = sub_25BB60AD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB60AD0()
{
  result = qword_28154D4F0;
  if (!qword_28154D4F0)
  {
    type metadata accessor for UnaryArithmeticOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154D4F0);
  }

  return result;
}

uint64_t sub_25BB60BAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 104);
  *(v1 + 32) = *(v0 + 96);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

void *sub_25BB60C10()
{
  v1 = v0[4];

  v2 = v0[5];

  sub_25BB2B680((v0 + 6));
  v3 = v0[11];

  v4 = v0[12];

  return v0;
}

uint64_t sub_25BB60C50()
{
  sub_25BB60C10();

  return swift_deallocClassInstance();
}

__n128 sub_25BB60CF4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 144);
  result = *(v1 + 154);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BB60D34(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

void sub_25BB60D80(uint64_t a1)
{
  (*(*v1 + 128))();
  sub_25BCB625C();

  sub_25BB2B624((v1 + 6), &v22);
  if (v23 > 2)
  {
    sub_25BA97060(&v22, v21);
    sub_25BAC27B0(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_0_28())
    {
      sub_25BCB7A0C();
    }

    else if (OUTLINED_FUNCTION_0_28())
    {
      v3 = v19;
      if (v19 == 0.0)
      {
        v3 = 0.0;
      }

      MEMORY[0x25F878240](*&v3);
    }

    else
    {
      sub_25BCB625C();
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_25BCB625C();
  }

  v4 = v1[11];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE70;
      *(inited + 32) = v8;
      v11 = (inited + 32);
      *(inited + 40) = v9;
      v12 = *(v7 + 16);
      if (__OFADD__(v12, 2))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v13 = *(v7 + 24) >> 1, v13 < v12 + 2))
      {
        sub_25BA96630();
        v7 = v14;
        v13 = *(v14 + 24) >> 1;
      }

      v15 = *(v7 + 16);
      if (v13 - v15 < 2)
      {
        goto LABEL_24;
      }

      *(v7 + 8 * v15 + 32) = *v11;

      v16 = *(v7 + 16);
      v17 = __OFADD__(v16, 2);
      v18 = v16 + 2;
      if (v17)
      {
        goto LABEL_25;
      }

      v6 += 2;
      *(v7 + 16) = v18;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_22:
    sub_25BAD4C78(a1, v7);
  }
}

uint64_t sub_25BB61090()
{
  sub_25BB60C10();
  v1 = *(v0 + 184);
  sub_25BA9D148(*(v0 + 176));

  return swift_deallocClassInstance();
}

uint64_t sub_25BB610F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 176);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BB61158(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, _OWORD *a9)
{
  v13 = *a8;
  v14 = *(a8 + 8);
  *(v9 + 176) = a4;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x646172675F646170, 0xE800000000000000);
  }

  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  v15 = *(a6 + 16);
  *(v9 + 48) = *a6;
  *(v9 + 64) = v15;
  *(v9 + 80) = *(a6 + 32);
  *(v9 + 88) = a7;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 154) = *(a9 + 42);
  v16 = a9[2];
  *(v9 + 128) = a9[1];
  *(v9 + 144) = v16;
  *(v9 + 112) = *a9;
  return v9;
}

uint64_t sub_25BB61204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!sub_25BB07E0C(a1, a2))
  {
    v5 = sub_25BAC4018();
    v6 = *(v2 + 176);
    if (v5 == sub_25BAC4018())
    {
      v7 = *(v3 + 176);
      *(v3 + 176) = a2;
    }
  }

  return 1;
}

uint64_t sub_25BB6127C()
{
  sub_25BB60C10();
  v1 = *(v0 + 176);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB612DC(uint64_t a1)
{
  result = sub_25BB6138C(&qword_27FBB4510, type metadata accessor for PadGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61334(uint64_t a1)
{
  result = sub_25BB6138C(&qword_27FBB4CD0, type metadata accessor for BasePadOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB6138C(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_25BB613F0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_61_3();
  *a1 = result;
  return result;
}

uint64_t sub_25BB61424@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC68878(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB61454@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB06270(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB61484@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC16D20(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB614BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16D30(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25BB614F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16D94(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25BB6153C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC16DF8(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_25BB615AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25BB615C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC16A40(a1);
  *a2 = result;
  return result;
}

unint64_t sub_25BB615F4()
{
  result = qword_27FBB4CD8;
  if (!qword_27FBB4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CD8);
  }

  return result;
}

unint64_t sub_25BB6164C()
{
  result = qword_27FBB4CE0;
  if (!qword_27FBB4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CE0);
  }

  return result;
}

unint64_t sub_25BB616A4()
{
  result = qword_27FBB4CE8;
  if (!qword_27FBB4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CE8);
  }

  return result;
}

unint64_t sub_25BB616FC()
{
  result = qword_27FBB4CF0;
  if (!qword_27FBB4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CF0);
  }

  return result;
}

uint64_t sub_25BB61750()
{
  OUTLINED_FUNCTION_2_25();
  if (!v3)
  {
    v1 = sub_25BAA5EA0(0x74726F735F677261, 0xE800000000000000);
  }

  *(v0 + 64) = OUTLINED_FUNCTION_0_29(v1, v2, v3);
  OUTLINED_FUNCTION_1_23(2);
  return v0;
}

uint64_t sub_25BB61828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 64);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BB6188C()
{
  OUTLINED_FUNCTION_2_25();
  if (!v4)
  {
    v2 = sub_25BAA5EA0(1953656691, 0xE400000000000000);
  }

  v5 = OUTLINED_FUNCTION_0_29(v2, v3, v4);
  v6 = *(v1 + 160);
  *(v0 + 64) = v5;
  OUTLINED_FUNCTION_1_23(v6);
  return v0;
}

void *sub_25BB618E4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[8];

  return v0;
}

uint64_t sub_25BB61914()
{
  sub_25BB618E4();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6197C()
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v0 + 48));
  v1 = *(v0 + 56);
  return sub_25BCB79EC();
}

uint64_t sub_25BB619E4(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4CF8, type metadata accessor for SortOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61A3C(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4D00, type metadata accessor for SortOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61A94(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4D08, type metadata accessor for ArgumentSortOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61AEC(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4D10, type metadata accessor for ArgumentSortOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61B44(unint64_t *a1, void (*a2)(void))
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

double sub_25BB61B9C(void *a1, uint64_t a2)
{
  v5 = *(v2 + 160);
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v6)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1, v6 == 0, a2);
  if (v6)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = v9;
  v11 = *(v2 + 152);
  v12 = *(v2 + 160);
  v13 = 1;
  if ((v12 & 1) == 0)
  {
    v13 = 2;
  }

  if (v12 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v5 == 2)
  {
    v15 = *(v2 + 24);
    v16 = *(v2 + 32);
    sub_25BCB617C();
    MEMORY[0x25F876C90](0x65657571736E755FLL, 0xEB0000000064657ALL);
    v18 = v15;
    v17 = v16;
  }

  else
  {
    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    sub_25BCB617C();
    v15 = v18;
    v16 = v17;
  }

  v19 = sub_25BB6203C(v8, v10, v11, v14, v18, v17, a1);

  if (v5 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_25BCBB6D0;
    *(v20 + 32) = sub_25BCB6A6C();
    sub_25BB50DF0();
    v21 = sub_25BCB672C();

    sub_25BCB617C();
    v22 = sub_25BB620D8(v19, v21, v15, v16, a1);

    v19 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v23 = swift_allocObject();
  *&result = 1;
  *(v23 + 16) = xmmword_25BCBB6D0;
  *(v23 + 32) = v19;
  return result;
}

uint64_t sub_25BB61DCC(void *a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1, v6 == 0, a2);
  if (v6)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = v9;
  sub_25BAB4D78(2, v6 == 0, a2);
  if (v6)
  {
    v11 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  v12 = v11;
  v13 = *(v2 + 136);
  v14 = *(v2 + 144);
  v15 = 1;
  if ((v14 & 1) == 0)
  {
    v15 = 2;
  }

  if (v14 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v18 = *(v2 + 24);
  v17 = *(v2 + 32);
  sub_25BCB617C();
  v19 = sub_25BB6215C(v8, v10, v12, v13, v16, v18, v17, a1);

  *(v5 + 32) = v19;
  return v5;
}

uint64_t sub_25BB61F60(uint64_t a1)
{
  result = sub_25BB61FE8(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61FA4(uint64_t a1)
{
  result = sub_25BB61FE8(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61FE8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB6203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a7 softMaxCrossEntropyWithSourceTensor:a1 labelsTensor:a2 axis:a3 reductionType:a4 name:v12];

  return v13;
}

id sub_25BB620D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a5 squeezeTensor:a1 axes:a2 name:v8];

  return v9;
}

id sub_25BB6215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 softMaxCrossEntropyGradientWithIncomingGradientTensor:a1 sourceTensor:a2 labelsTensor:a3 axis:a4 reductionType:a5 name:v14];

  return v15;
}

uint64_t (*DataSample.labels.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t DataSample.init(features:labels:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_11_1(a2);
  (*(v7 + 32))(a4);
  v8 = type metadata accessor for DataSample();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 36);

  return v9(v10, a1, a3);
}

uint64_t static DataSample<>.== infix(_:_:)()
{
  if ((sub_25BCB630C() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for DataSample() + 36);
  return sub_25BCB630C() & 1;
}

uint64_t sub_25BB62458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  return static DataSample<>.== infix(_:_:)();
}

uint64_t DataSample<>.init<A>(collating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a1;
  v68 = a6;
  v66 = a8;
  v13 = *(a7 + 8);
  v65 = sub_25BCB735C();
  OUTLINED_FUNCTION_11_1(v65);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v63 = v56 - v17;
  v18 = a3;
  v60 = a3;
  OUTLINED_FUNCTION_11_1(a3);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_4();
  v64 = v22;
  v23 = v13;
  v24 = sub_25BCB711C();
  v70 = *(v24 - 8);
  v25 = *(v70 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v56 - v26;
  v61 = v23;
  v62 = sub_25BCB735C();
  OUTLINED_FUNCTION_11_1(v62);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v32 = v56 - v31;
  OUTLINED_FUNCTION_11_1(a2);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_4();
  v69 = v36;
  MEMORY[0x25F876E40](a4, v23);
  v77 = a2;
  v78 = v18;
  v79 = a4;
  v80 = a5;
  v37 = v68;
  v81 = v68;
  v82 = a7;
  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[2] = a4;
  v39[3] = a5;
  v39[4] = v37;
  v39[5] = a7;
  v40 = a7;
  v39[6] = KeyPath;
  WitnessTable = swift_getWitnessTable();
  sub_25BCB75FC();

  v41 = *(v70 + 8);
  v70 += 8;
  v57 = v41;
  v41(v27, v24);
  v42 = *(a5 + 8);
  v84 = v40;
  v56[1] = MEMORY[0x277D84300];
  v43 = v62;
  v44 = swift_getWitnessTable();
  v59 = a2;
  v42(v32, v43, v44, a2, a5);
  MEMORY[0x25F876E40](a4, v61);
  v71 = a2;
  v45 = v60;
  v72 = v60;
  v73 = a4;
  v46 = v68;
  v74 = a5;
  v75 = v68;
  v76 = v40;
  v47 = swift_getKeyPath();
  v48 = swift_allocObject();
  v48[2] = a4;
  v48[3] = a5;
  v48[4] = v46;
  v48[5] = v40;
  v48[6] = v47;
  v49 = v63;
  sub_25BCB75FC();

  v57(v27, v24);
  v50 = *(v46 + 8);
  v83 = v40;
  v51 = v65;
  v52 = swift_getWitnessTable();
  v53 = v64;
  v50(v49, v51, v52, v45, v46);
  OUTLINED_FUNCTION_11_1(a4);
  (*(v54 + 8))(v67, a4);
  return DataSample.init(features:labels:)(v53, v59, v45, v66);
}

uint64_t sub_25BB6299C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB62A28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_25BB62BF0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BB62E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v4(ObjectType, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BB62F08()
{
  OUTLINED_FUNCTION_1_25();
  v1 = *(v0 + 56);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_31();
  v1(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BB62F84()
{
  OUTLINED_FUNCTION_1_25();
  v1 = *(v0 + 64);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_31();
  v1(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BB63000()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_25BB63028()
{
  sub_25BB63000();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB630C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_20;
  }

  v6 = result;
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    result = sub_25BB00B9C(0, v5 & ~(v5 >> 63), 0);
    if (a2 < v6 || v5 < 0)
    {
      goto LABEL_21;
    }

    result = v22;
    v8 = v6 + 4;
    v10 = a4;
    v9 = a5;
    v11 = a3;
    while ((v6 & 0x8000000000000000) == 0)
    {
      v12 = v8 - 4;
      if ((v8 - 4) >= *(*v11 + 16))
      {
        goto LABEL_16;
      }

      if (v12 >= *(*v10 + 16))
      {
        goto LABEL_17;
      }

      v13 = *(*v11 + 8 * v8);
      v14 = *(*v10 + 8 * v8);
      if (v14 < v13)
      {
        goto LABEL_18;
      }

      if (v12 >= *(*v9 + 16))
      {
        goto LABEL_19;
      }

      v15 = *(*v9 + 8 * v8);
      v23 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25BB00B9C(v16 > 1, v17 + 1, 1);
        v11 = a3;
        v10 = a4;
        v9 = a5;
        result = v23;
      }

      *(result + 16) = v17 + 1;
      v18 = (result + 24 * v17);
      v18[4] = v13;
      v18[5] = v14;
      v18[6] = v15;
      ++v8;
      if (!--v5)
      {
        return result;
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
  }

  return result;
}

void sub_25BB63258(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x277D84F90];
  sub_25BB00BBC();
  v7 = v6;
  v8 = v32;
  v31 = a1;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v4;
    v12 = v5;
    while (v11)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

      v13 = *v9;
      v14 = *v10;
      if (*v10 < *v9)
      {
        goto LABEL_28;
      }

      v33 = v8;
      v15 = *(v8 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v8 + 24) >> 1)
      {
        sub_25BB00BBC();
        v16 = v15 + 1;
        v8 = v33;
      }

      *(v8 + 16) = v16;
      v17 = v8 + 16 * v15;
      --v12;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      OUTLINED_FUNCTION_47_7();
      if (v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v18 = v4;
    v19 = v5;
LABEL_15:
    v21 = a2 + 32;
    while (v18 != v7)
    {
      if (v7 >= v18)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_30;
      }

      if (v19 == v7)
      {
        return;
      }

      if (v7 >= v19)
      {
        goto LABEL_31;
      }

      v22 = *(v31 + 32 + 8 * v7);
      v23 = *(v21 + 8 * v7);
      if (v23 < v22)
      {
        goto LABEL_32;
      }

      v34 = v8;
      v24 = *(v8 + 16);
      if (v24 >= *(v8 + 24) >> 1)
      {
        v30 = v7;
        OUTLINED_FUNCTION_45_0();
        v27 = v26;
        v29 = v28;
        sub_25BB00BBC();
        v7 = v30;
        v19 = v29;
        v18 = v27;
        v8 = v34;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v23;
      ++v7;
    }
  }
}

void sub_25BB63448(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v25 = MEMORY[0x277D84F90];
  sub_25BAA21EC();
  v7 = v6;
  v8 = v25;
  v24 = a1;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_27;
      }

      v12 = *v9 + *v10;
      if (__OFADD__(*v9, *v10))
      {
        goto LABEL_28;
      }

      v26 = v8;
      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_25BAA21EC();
        v8 = v26;
      }

      --v11;
      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v12;
      OUTLINED_FUNCTION_47_7();
      if (v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v14 = v5;
LABEL_15:
    v16 = a2 + 32;
    while (v4 != v7)
    {
      if (v7 >= v4)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_30;
      }

      if (v14 == v7)
      {
        return;
      }

      if (v7 >= v14)
      {
        goto LABEL_31;
      }

      v17 = *(v24 + 32 + 8 * v7);
      v18 = *(v16 + 8 * v7);
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_32;
      }

      v27 = v8;
      v20 = *(v8 + 16);
      if (v20 >= *(v8 + 24) >> 1)
      {
        v21 = v7;
        OUTLINED_FUNCTION_45_0();
        v23 = v22;
        sub_25BAA21EC();
        v7 = v21;
        v14 = v23;
        v8 = v27;
      }

      *(v8 + 16) = v20 + 1;
      *(v8 + 8 * v20 + 32) = v19;
      ++v7;
    }
  }
}

uint64_t sub_25BB63620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_25BAA21EC();
  v7 = v6;
  result = v27;
  v25 = a2;
  v26 = v4;
  v24 = a1;
  if (!v6)
  {
    v13 = v5;
    goto LABEL_14;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v5;
  while (v4)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    v14 = *v9 - *v10;
    if (__OFSUB__(*v9, *v10))
    {
      goto LABEL_26;
    }

    v28 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v22 = v7;
      v23 = v13;
      sub_25BAA21EC();
      v7 = v22;
      v13 = v23;
      result = v28;
    }

    --v12;
    *(result + 16) = v15 + 1;
    *(result + 8 * v15 + 32) = v14;
    --v4;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_14:
      while (v26 != v7)
      {
        if (v7 >= v26)
        {
          goto LABEL_27;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        if (v13 == v7)
        {
          return result;
        }

        if (v7 >= v13)
        {
          goto LABEL_29;
        }

        v16 = *(v24 + 32 + 8 * v7);
        v17 = *(v25 + 32 + 8 * v7);
        v18 = v16 - v17;
        if (__OFSUB__(v16, v17))
        {
          goto LABEL_30;
        }

        v29 = result;
        v19 = *(result + 16);
        if (v19 >= *(result + 24) >> 1)
        {
          v20 = v7;
          v21 = v13;
          sub_25BAA21EC();
          v7 = v20;
          v13 = v21;
          result = v29;
        }

        *(result + 16) = v19 + 1;
        *(result + 8 * v19 + 32) = v18;
        ++v7;
      }

      return result;
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
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t Tensor.slice(lowerBounds:upperBounds:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_50_4(a1, a2);
  if (v7 && (v8 = *v3, v6 == *(*(*(v8 + 16) + 152) + 16)))
  {
    sub_25BB63258(v4, v5);
    sub_25BB638B4(v9, v8, v2);
  }

  else
  {
    result = OUTLINED_FUNCTION_25_0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB638B4@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1].i64[0];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_29_0();
    result = sub_25BB00B9C(v8, v9, v10);
    v6 = v22;
    v12 = a1 + 2;
    while (1)
    {
      v13 = *v12;
      if (vmovn_s64(vcgtq_s64(*v12, vdupq_laneq_s64(*v12, 1))).u32[0])
      {
        break;
      }

      v15 = v22[2];
      v14 = v22[3];
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_81(v14);
        OUTLINED_FUNCTION_45_0();
        v21 = v17;
        result = sub_25BB00B9C(v18, v19, v20);
        v13 = v21;
      }

      v22[2] = v15 + 1;
      v16 = &v22[3 * v15];
      v16[2] = v13;
      v16[3].i64[0] = 1;
      ++v12;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_25BB63B88(v6, a2, a3);
  }

  return result;
}

uint64_t Tensor.slice<A>(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D18, &unk_25BCC1F70);
  v10 = sub_25BAB2B20(sub_25BB63B68, 0, a1, v8, MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], v9);
  sub_25BB63B88(v10, v7, a3);
}

{
  v5 = *v3;
  if (!*(*(*(*v3 + 16) + 152) + 16))
  {
    OUTLINED_FUNCTION_7_0();
LABEL_12:
    result = OUTLINED_FUNCTION_25_0();
    __break(1u);
    return result;
  }

  v8 = *(a2 + 8);
  v9 = sub_25BCB667C();
  if (v9)
  {
    v68[0] = sub_25BAB2B20(sub_25BB64720, 0, a1, MEMORY[0x277D83B88], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], v16);
    v65[0] = *(*(v5 + 16) + 160);
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    return sub_25BC03F70(v68);
  }

  v59 = a3;
  v18 = OUTLINED_FUNCTION_9_17(v9, v10, v11, v12, v13, v14, v15, v16);
  v26 = OUTLINED_FUNCTION_9_17(v18, v19, v20, v21, v22, v23, v24, v25);
  v34 = OUTLINED_FUNCTION_9_17(v26, v27, v28, v29, v30, v31, v32, v33);
  v57 = v18;
  sub_25BCA3D28();
  v35 = *&v60[0];
  if (!*&v60[0])
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_12;
  }

  v36 = *(v5 + 16);
  *&v60[0] = v5;
  v37 = Tensor.scalarType.getter();
  v39 = v38;
  v40 = *(v38 + 32);
  v58 = v36;

  v40(&v67, v37, v39);
  v66 = v35;
  *&v60[0] = v5;
  Tensor.scalarType.getter();
  (*(v41 + 32))(v68);
  if (sub_25BAA80BC(v68[0], &unk_286D42270))
  {
    v42 = *(*(v5 + 16) + 152);
    *&v60[0] = v5;
    v43 = Tensor.scalarType.getter();
    v45 = v44;
    v46 = swift_allocObject();
    v47 = v57;
    v46[2] = v57;
    v46[3] = v26;
    v46[4] = v34;
    v46[5] = v42;
    v46[6] = v43;
    v46[7] = v45;
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    v48 = sub_25BAAF074(sub_25BB66B8C);
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
    v47 = v57;
  }

  v65[55] = 0;
  v68[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SliceOps.swift";
  v68[1] = 110;
  v69 = 2;
  v70 = xmmword_25BCC1F50;
  v71 = "init(id:operand:starts:ends:strides:resultDescriptor:creationSite:backward:)";
  v72 = 76;
  v73 = 2;
  type metadata accessor for SliceOperation();
  swift_allocObject();
  v51 = sub_25BCA2B84(0, 0, 0, v58, v47, v26, v34, &v66, v68, v48, v50);
  sub_25BAA486C(*(v5 + 16) + 168, v65, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA486C(v65, v64, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v52 = v63;

  sub_25BAA4AF4(v60);
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v53 = v62;

  sub_25BAA4AF4(v60);
  type metadata accessor for TensorRepresentation();
  v54 = swift_allocObject();
  LOBYTE(v60[0]) = 1;
  v55 = sub_25BC0D8D4(v51, 0, v64, 0x100000000, v52, v53, v54);
  type metadata accessor for TensorHandle();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;

  sub_25BAA6EB0();

  result = sub_25BAA6F5C(v65, &qword_27FBB6730, &qword_25BCBC4B0);
  *v59 = v56;
  return result;
}

uint64_t Tensor.slice(lowerBounds:sizes:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_50_4(a1, a2);
  if (v7 && (v8 = *v3, v6 == *(*(*(*v3 + 16) + 152) + 16)))
  {
    sub_25BB63448(v4, v5);
    v10 = v9;
    v11 = sub_25BCB617C();
    sub_25BB63258(v11, v10);
    v13 = v12;

    sub_25BB638B4(v13, v8, v2);
  }

  else
  {
    result = OUTLINED_FUNCTION_25_0();
    __break(1u);
  }

  return result;
}

void *sub_25BB63B68@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (v2 < *result)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    a2[1] = v2;
    a2[2] = 1;
  }

  return result;
}

uint64_t sub_25BB63B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (*(*(v4 + 152) + 16))
  {
    v5 = a2;
    v7 = a1[2];
    v8 = a1 + 4;
    v9 = a1 + 5;
    v10 = v7 + 1;
    while (--v10)
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v9 += 3;
      if (v12 == v11)
      {
        *&v60[0] = MEMORY[0x277D84F90];
        sub_25BAA21EC();
        v13 = *&v60[0];
        v14 = a1 + 5;
        while (1)
        {
          v15 = *(v14 - 1);
          v16 = *v14 - v15;
          if (__OFSUB__(*v14, v15))
          {
            break;
          }

          *&v60[0] = v13;
          v17 = *(v13 + 16);
          if (v17 >= *(v13 + 24) >> 1)
          {
            sub_25BAA21EC();
            v13 = *&v60[0];
          }

          v14 += 3;
          *(v13 + 16) = v17 + 1;
          *(v13 + 8 * v17 + 32) = v16;
          if (!--v7)
          {
            v68[0] = v13;
            v65[0] = *(v4 + 160);
            v61 = 0;
            memset(v60, 0, sizeof(v60));
            return sub_25BC03F70(v68);
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v58 = a3;
    v18 = MEMORY[0x277D84F90];
    v59 = *(a2 + 16);
    if (v7)
    {
      *&v60[0] = MEMORY[0x277D84F90];
      sub_25BAA21EC();
      v19 = *&v60[0];
      v20 = *(*&v60[0] + 16);
      v21 = v7;
      do
      {
        v23 = *v8;
        v8 += 3;
        v22 = v23;
        *&v60[0] = v19;
        if (v20 >= *(v19 + 24) >> 1)
        {
          sub_25BAA21EC();
          v19 = *&v60[0];
        }

        *(v19 + 16) = v20 + 1;
        *(v19 + 8 * v20++ + 32) = v22;
        --v21;
      }

      while (v21);
      *&v60[0] = v18;
      sub_25BAA21EC();
      v25 = v18;
      v26 = *(v18 + 16);
      v27 = a1 + 5;
      v28 = v7;
      do
      {
        v30 = *v27;
        v27 += 3;
        v29 = v30;
        *&v60[0] = v25;
        if (v26 >= *(v25 + 24) >> 1)
        {
          sub_25BAA21EC();
          v25 = *&v60[0];
        }

        *(v25 + 16) = v26 + 1;
        *(v25 + 8 * v26++ + 32) = v29;
        --v28;
      }

      while (v28);
      *&v60[0] = v18;
      sub_25BAA21EC();
      v31 = *(v18 + 16);
      v32 = a1 + 6;
      do
      {
        v34 = *v32;
        v32 += 3;
        v33 = v34;
        *&v60[0] = v18;
        if (v31 >= *(v18 + 24) >> 1)
        {
          sub_25BAA21EC();
          v18 = *&v60[0];
        }

        *(v18 + 16) = v31 + 1;
        *(v18 + 8 * v31++ + 32) = v33;
        --v7;
      }

      while (v7);
      v5 = a2;
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
    }

    sub_25BCA3D28();
    v35 = *&v60[0];
    if (*&v60[0])
    {
      *&v60[0] = v5;
      v36 = Tensor.scalarType.getter();
      v38 = v37;
      v39 = v5;
      v40 = *(v37 + 32);

      v40(&v67, v36, v38);
      v66 = v35;
      *&v60[0] = v39;
      Tensor.scalarType.getter();
      (*(v41 + 32))(v68);
      if (sub_25BAA80BC(v68[0], &unk_286D42270))
      {
        v42 = *(v59 + 152);
        *&v60[0] = v39;
        v43 = Tensor.scalarType.getter();
        v45 = v44;
        v46 = swift_allocObject();
        v46[2] = v19;
        v46[3] = v25;
        v46[4] = v18;
        v46[5] = v42;
        v46[6] = v43;
        v46[7] = v45;
        sub_25BCB617C();
        sub_25BCB617C();
        sub_25BCB617C();
        sub_25BCB617C();
        v47 = sub_25BAAF074(sub_25BB66DF8);
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0;
      }

      v65[55] = 0;
      v68[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SliceOps.swift";
      v68[1] = 110;
      v69 = 2;
      v70 = xmmword_25BCC1F50;
      v71 = "init(id:operand:starts:ends:strides:resultDescriptor:creationSite:backward:)";
      v72 = 76;
      v73 = 2;
      type metadata accessor for SliceOperation();
      swift_allocObject();
      v50 = sub_25BCA2B84(0, 0, 0, v59, v19, v25, v18, &v66, v68, v47, v49);
      sub_25BAA486C(v59 + 168, v65, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v65, v64, &qword_27FBB6730, &qword_25BCBC4B0);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v60);

      v51 = v63;

      sub_25BAA4AF4(v60);
      sub_25BAA49B8();
      sub_25BAA4A5C(v60);

      v52 = v62;

      sub_25BAA4AF4(v60);
      type metadata accessor for TensorRepresentation();
      v53 = swift_allocObject();
      LOBYTE(v60[0]) = 1;
      v54 = sub_25BC0D8D4(v50, 0, v64, 0x100000000, v51, v52, v53);
      type metadata accessor for TensorHandle();
      v55 = swift_allocObject();
      *(v55 + 16) = v54;

      sub_25BAA6EB0();

      result = sub_25BAA6F5C(v65, &qword_27FBB6730, &qword_25BCBC4B0);
      *v58 = v55;
      return result;
    }
  }

LABEL_32:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

void *sub_25BB64720@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (__OFSUB__(v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 - *result;
  }

  return result;
}

uint64_t sub_25BB64750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 16))
  {
    if (*(result + 16))
    {
      v25 = *(*(result + 32) + 16);
      v26 = *(result + 32);
      v27 = *(a2 + 32);
      v23 = *(a8 + 32);
      v24 = *(v27 + 16);

      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BCB617C();
      v23(v29, a7, a8);
      v28 = a6;
      v39 = 0;
      v32 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SliceOps.swift";
      v33 = 110;
      v34 = 2;
      v35 = xmmword_25BCC1F60;
      v36 = "init(id:gradientOperand:operand:starts:ends:strides:resultDescriptor:creationSite:)";
      v37 = 83;
      v38 = 2;
      type metadata accessor for SliceGradientOperation();
      swift_allocObject();
      v14 = sub_25BCA2C4C(0, 0, 0, v25, v24, a3, a4, a5, &v28);
      sub_25BAA486C(*(v26 + 16) + 168, v31, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v31, v30, &qword_27FBB6730, &qword_25BCBC4B0);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v28);

      v15 = v29[9];

      sub_25BAA4AF4(&v28);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v28);

      v16 = v29[8];

      sub_25BAA4AF4(&v28);
      type metadata accessor for TensorRepresentation();
      v17 = swift_allocObject();
      LOBYTE(v28) = 1;
      v18 = sub_25BC0DB70(v14, 0, v30, 0x100000000, v15, v16, v17);
      type metadata accessor for TensorHandle();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v31, &qword_27FBB6730, &qword_25BCBC4B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_25BCBAE50;
      *(v20 + 32) = v19;
      v21 = *(v27 + 16);

      *(v20 + 40) = sub_25BAC42B0();
      *(v20 + 48) = v22;

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 TensorRange.tensorRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

BOOL static TensorRange.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  switch(*(a1 + 24))
  {
    case 1:
      if (v8 != 1)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6 && v4 == v7;
    case 2:
      if (v8 != 2)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6 && v4 == v7;
    case 3:
      if (v8 != 3)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6;
    case 4:
      if (v8 != 4)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6;
    case 5:
      if (v8 != 5)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6;
    case 6:
      v12 = v4 | v3;
      if (!(v12 | v2))
      {
        v16 = v7 | v6 | v5;
        return v8 == 6 && v16 == 0;
      }

      if (v2 == 1 && v12 == 0)
      {
        v14 = v7 | v6;
        v15 = v8 == 6 && v5 == 1;
      }

      else
      {
        v14 = v7 | v6;
        v15 = v8 == 6 && v5 == 2;
      }

      return v15 && v14 == 0;
    default:
      if (*(a2 + 24))
      {
        return 0;
      }

      return v2 == v5;
  }
}

uint64_t Int.tensorRange.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t Range<>.tensorRange.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  *(a3 + 24) = 1;
  return result;
}

void ClosedRange<>.tensorRange.getter(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 1;
  OUTLINED_FUNCTION_22_12(a1);
}

void PartialRangeFrom<>.tensorRange.getter(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_22_12(a1);
}

void PartialRangeUpTo<>.tensorRange.getter(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_22_12(a1);
}

void PartialRangeThrough<>.tensorRange.getter(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_22_12(a1);
}

uint64_t Tensor.IndexPath.init(begin:end:strides:beginMask:endMask:ellipsisMask:newAxisMask:squeezeAxisMask:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t Tensor.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v44 = *v3;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v55 = MEMORY[0x277D84F90];
    sub_25BB00C00(0, v6, 0);
    v7 = v55;
    v9 = a1 + 32;
    do
    {
      sub_25BAA486C(v9, v56, &qword_27FBB4D20, &unk_25BCC1F80);
      sub_25BAA486C(v56, v52, &qword_27FBB4D20, &unk_25BCC1F80);
      v10 = v53;
      if (v53)
      {
        v5 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        OUTLINED_FUNCTION_43_6();
        v11(v10, v5);
        v12 = sub_25BAA6F5C(v56, &qword_27FBB4D20, &unk_25BCC1F80);
        OUTLINED_FUNCTION_41_7(v12, v13, v14, v15, v16, v17, v18, v19, v42, v43, v44);
      }

      else
      {
        sub_25BAA6F5C(v56, &qword_27FBB4D20, &unk_25BCC1F80);
        sub_25BAA6F5C(v52, &qword_27FBB4D20, &unk_25BCC1F80);
        OUTLINED_FUNCTION_49_7();
      }

      v55 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      v4 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_81(v20);
        sub_25BB00C00(v22, v21 + 1, 1);
        v7 = v55;
      }

      *(v7 + 16) = v4;
      OUTLINED_FUNCTION_48_5((v7 + 32 * v21), v42, v43, v44, v45, v46);
      v9 += 40;
      --v6;
    }

    while (v6);
  }

  v56[0] = &unk_286D44720;
  sub_25BC0358C(v7);
  v23 = v56[0];
  if (*(v56[0] + 16))
  {
    v24 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_46_6();
      v25 = v25 && (v2 | v5 | v4) == 0;
      if (v25)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56[0] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v27 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v27, v28, v29);
          v24 = v56[0];
        }

        OUTLINED_FUNCTION_27_11();
        if (v31)
        {
          v32 = OUTLINED_FUNCTION_81(v30);
          OUTLINED_FUNCTION_40_9(v32);
          v24 = v56[0];
        }

        OUTLINED_FUNCTION_32_8();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v25);
  }

  OUTLINED_FUNCTION_39_8();
  if (v2 > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26();
    __break(1u);
  }

  else
  {
    v33 = sub_25BB64F00(v23, v56);
    OUTLINED_FUNCTION_54_5(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46.n128_i64[0], v46.n128_i64[1], v47, v48, v49, v50, v51, v52[0], v52[1], v52[2], v53, v54, v55, v56[0]);
    return sub_25BB66B90(v56);
  }

  return result;
}

uint64_t sub_25BB64F00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_118;
  }

  v5 = (a1 + 56);
  v6 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  do
  {
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v10 = *(v5 - 1);
    if (*v5 == 6 && (v10 | v9 | v8) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v12 = OUTLINED_FUNCTION_8_0();
        sub_25BB00C00(v12, v13, v14);
      }

      OUTLINED_FUNCTION_27_11();
      if (v16)
      {
        v18 = OUTLINED_FUNCTION_81(v15);
        OUTLINED_FUNCTION_40_9(v18);
      }

      *(v6 + 16) = v2;
      v17 = v6 + 32 * v3;
      *(v17 + 32) = v8;
      *(v17 + 40) = v9;
      *(v17 + 48) = v10;
      *(v17 + 56) = 6;
    }

    v5 += 32;
    --v7;
  }

  while (v7);
  OUTLINED_FUNCTION_39_8();
  if (v5 >= 2)
  {
    OUTLINED_FUNCTION_7_0();
    goto LABEL_120;
  }

  v19 = *(a1 + 16);
  v20 = sub_25BAC0E14(0, v19);
  v21 = sub_25BAC0E14(0, v19);
  v22 = sub_25BAC0E14(1, v19);
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v23 = 0;
  v24 = (a1 + 56);
  while (2)
  {
    v25 = *(v24 - 3);
    v26 = *(v24 - 2);
    v27 = *(v24 - 1);
    switch(*v24)
    {
      case 0:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20);
          v20 = v48;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_105;
        }

        OUTLINED_FUNCTION_52_5();
        if (__OFADD__(v25, 1))
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21);
          v21 = v54;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_51_7();
        OUTLINED_FUNCTION_18_18();
        v65 |= v28;
        goto LABEL_98;
      case 1:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20);
          v20 = v49;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_106;
        }

        OUTLINED_FUNCTION_52_5();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21);
          v21 = v52;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_109;
        }

        *(v21 + 8 * v23 + 32) = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22);
          v22 = v55;
        }

        OUTLINED_FUNCTION_37_6();
        if (!v16)
        {
          goto LABEL_97;
        }

        goto LABEL_114;
      case 2:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20);
          v20 = v45;
        }

        OUTLINED_FUNCTION_33_9();
        if (!v16)
        {
          OUTLINED_FUNCTION_52_5();
          if (v26 == -1)
          {
            OUTLINED_FUNCTION_18_18();
            v66 |= v43;
          }

          else
          {
            if (__OFADD__(v26, 1))
            {
              goto LABEL_116;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_25BAA2110(v21);
              v21 = v58;
            }

            OUTLINED_FUNCTION_38_8();
            if (v16)
            {
              goto LABEL_117;
            }

            OUTLINED_FUNCTION_51_7();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAA2110(v22);
            v22 = v57;
          }

          OUTLINED_FUNCTION_37_6();
          if (v16)
          {
            goto LABEL_115;
          }

LABEL_97:
          *(v22 + 8 * v23 + 32) = v27;
LABEL_98:
          ++v23;
          v24 += 32;
          if (v4 == v23)
          {

            *a2 = v20;
            a2[1] = v21;
            a2[2] = v22;
            a2[3] = v64;
            a2[4] = v66;
            a2[5] = v62;
            a2[6] = v63;
            a2[7] = v65;
            return result;
          }

          continue;
        }

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
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_7_0();
LABEL_120:
        result = OUTLINED_FUNCTION_25_0();
        __break(1u);
        return result;
      case 3:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20);
          v20 = v46;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_52_5();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22);
          v22 = v51;
        }

        OUTLINED_FUNCTION_37_6();
        if (v16)
        {
          goto LABEL_110;
        }

        *(v22 + 8 * v23 + 32) = v26;
LABEL_53:
        OUTLINED_FUNCTION_18_18();
        v66 |= v29;
        goto LABEL_98;
      case 4:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21);
          v21 = v44;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_51_7();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22);
          v22 = v50;
        }

        OUTLINED_FUNCTION_37_6();
        if (!v16)
        {
          goto LABEL_72;
        }

        goto LABEL_107;
      case 5:
        if (__OFADD__(v25, 1))
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21);
          v21 = v53;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_51_7();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22);
          v22 = v56;
        }

        OUTLINED_FUNCTION_37_6();
        if (v16)
        {
          goto LABEL_112;
        }

LABEL_72:
        *(v22 + 8 * v23 + 32) = v26;
        OUTLINED_FUNCTION_18_18();
        v64 |= v30;
        goto LABEL_98;
      case 6:
        v31 = v27 | v26 | v25;
        v32 = 1 << v23;
        if (v23 >= 0x40)
        {
          v32 = 0;
        }

        v34 = v62;
        v33 = v63;
        v35 = v32 | v62;
        v36 = 1 << v23;
        if (v23 >= 0x40)
        {
          v36 = 0;
        }

        v37 = v36 | v63;
        v38 = 1 << v23;
        if (v23 >= 0x40)
        {
          v38 = 0;
        }

        v39 = v65;
        v40 = v38 | v65;
        v41 = v25 == 1 && (v27 | v26) == 0;
        if (v41)
        {
          v42 = v65;
        }

        else
        {
          v42 = v40;
        }

        if (!v41)
        {
          v37 = v63;
        }

        if (v31)
        {
          v39 = v42;
        }

        v65 = v39;
        if (v31)
        {
          v33 = v37;
        }

        else
        {
          v34 = v35;
        }

        v62 = v34;
        v63 = v33;
        goto LABEL_98;
      default:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20);
          v20 = v47;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_104;
        }

        *(v20 + 8 * v23 + 32) = 0;
        goto LABEL_53;
    }
  }
}

uint64_t sub_25BB654CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3 == *(a1[1] + 16) && v3 == *(a1[2] + 16))
  {
    v5 = *v2;
    return sub_25BB66154(a1, a2);
  }

  else
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_25_0();
    __break(1u);
  }

  return result;
}

uint64_t Tensor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  sub_25BAA486C(a1, v84, &qword_27FBB4D20, &unk_25BCC1F80);
  v10 = v85;
  if (v85)
  {
    v11 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    OUTLINED_FUNCTION_4_23();
    v13 = v12(v10, v11);
    v21 = OUTLINED_FUNCTION_6_26(v13, v14, v15, v16, v17, v18, v19, v20, v69, v70, v71, v72, v73, v74, v75.n128_i64[0], v75.n128_i64[1], v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_21_13(v22, v21);
  }

  else
  {
    sub_25BAA6F5C(v84, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_19_14();
  }

  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = 6;
  v23 = *(a4 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v72 = inited;
    v83 = MEMORY[0x277D84F90];
    v25 = OUTLINED_FUNCTION_29_0();
    sub_25BB00C00(v25, v26, v27);
    v24 = v83;
    v28 = a4 + 32;
    v4 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v29, v30, v31, v32);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v33, v34, v35, v36);
      if (v81)
      {
        v6 = v82;
        __swift_project_boxed_opaque_existential_1(&v80, v81);
        v37 = OUTLINED_FUNCTION_5_22();
        v38(v37);
        v39 = OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_17_17(v39, v40, v41, v42, v43, v44, v45, v46, v69, v70, v71, v72);
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_24_8(&v80);
        OUTLINED_FUNCTION_16_19();
      }

      v83 = v24;
      v48 = *(v24 + 16);
      v47 = *(v24 + 24);
      v5 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v49 = OUTLINED_FUNCTION_81(v47);
        OUTLINED_FUNCTION_42_7(v49);
        v24 = v83;
      }

      *(v24 + 16) = v5;
      OUTLINED_FUNCTION_15_15((v24 + 32 * v48), v69, v70, v71, v72, v73, v74, v75);
      v28 += 40;
      --v23;
    }

    while (v23);
    inited = v72;
  }

  v84[0] = inited;
  sub_25BC0358C(v24);
  v50 = v84[0];
  if (*(v84[0] + 16))
  {
    v51 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_12_16();
      v52 = v52 && (v6 | v5 | v4) == 0;
      if (v52)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84[0] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v54 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v54, v55, v56);
          v51 = v84[0];
        }

        OUTLINED_FUNCTION_28_10();
        if (v58)
        {
          v59 = OUTLINED_FUNCTION_81(v57);
          OUTLINED_FUNCTION_40_9(v59);
          v51 = v84[0];
        }

        OUTLINED_FUNCTION_10_15();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v52);
  }

  OUTLINED_FUNCTION_39_8();
  if (inited > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26();
    __break(1u);
  }

  else
  {
    v60 = sub_25BB64F00(v50, v84);
    OUTLINED_FUNCTION_20_13(v60, v61, v62, v63, v64, v65, v66, v67, v69, v70, v71, v72, v73, v74);
    return sub_25BB66B90(v84);
  }

  return result;
}

uint64_t Tensor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE90;
  sub_25BAA486C(a1, v96, &qword_27FBB4D20, &unk_25BCC1F80);
  v13 = v97;
  if (v97)
  {
    v14 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    OUTLINED_FUNCTION_4_23();
    v16 = v15(v13, v14);
    v24 = OUTLINED_FUNCTION_6_26(v16, v17, v18, v19, v20, v21, v22, v23, v81, v82, v83, v84, v85, v86, v87.n128_i64[0], v87.n128_i64[1], v88, v89, v90, v91, v92);
    OUTLINED_FUNCTION_21_13(v25, v24);
  }

  else
  {
    sub_25BAA6F5C(v96, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_19_14();
  }

  sub_25BAA486C(a2, v96, &qword_27FBB4D20, &unk_25BCC1F80);
  v26 = v97;
  if (v97)
  {
    v27 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    OUTLINED_FUNCTION_4_23();
    v29 = v28(v26, v27);
    v37 = OUTLINED_FUNCTION_6_26(v29, v30, v31, v32, v33, v34, v35, v36, v81, v82, v83, v84, v85, v86, v87.n128_i64[0], v87.n128_i64[1], v88, v89, v90, v91, v92);
    OUTLINED_FUNCTION_55_2(v38, v37);
  }

  else
  {
    sub_25BAA6F5C(v96, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_53_6();
  }

  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 6;
  v39 = *(a5 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    OUTLINED_FUNCTION_30_9();
    v40 = v95;
    v41 = a5 + 32;
    v6 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v42, v43, v44, v45);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v46, v47, v48, v49);
      v7 = v93;
      if (v93)
      {
        v8 = v94;
        __swift_project_boxed_opaque_existential_1(&v92, v93);
        v50 = OUTLINED_FUNCTION_5_22();
        v51(v50);
        v52 = OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_17_17(v52, v53, v54, v55, v56, v57, v58, v59, v81, v82, v83, v84);
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_24_8(&v92);
        OUTLINED_FUNCTION_16_19();
      }

      OUTLINED_FUNCTION_44_5();
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_81(v60);
        OUTLINED_FUNCTION_42_7(v62);
        v40 = v95;
      }

      *(v40 + 16) = v7;
      OUTLINED_FUNCTION_15_15((v40 + 32 * v5), v81, v82, v83, v84, v85, v86, v87);
      v41 += 40;
      --v39;
    }

    while (v39);
    inited = v84;
  }

  v96[0] = inited;
  sub_25BC0358C(v40);
  v63 = v96[0];
  if (*(v96[0] + 16))
  {
    v64 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_12_16();
      v65 = v65 && (v8 | v7 | v6) == 0;
      if (v65)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96[0] = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v67 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v67, v68, v69);
          v64 = v96[0];
        }

        OUTLINED_FUNCTION_28_10();
        if (v61)
        {
          v71 = OUTLINED_FUNCTION_81(v70);
          OUTLINED_FUNCTION_40_9(v71);
          v64 = v96[0];
        }

        OUTLINED_FUNCTION_10_15();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v65);
  }

  OUTLINED_FUNCTION_39_8();
  if (inited > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26();
    __break(1u);
  }

  else
  {
    v72 = sub_25BB64F00(v63, v96);
    OUTLINED_FUNCTION_20_13(v72, v73, v74, v75, v76, v77, v78, v79, v81, v82, v83, v84, v85, v86);
    return sub_25BB66B90(v96);
  }

  return result;
}

uint64_t Tensor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  sub_25BAA486C(a1, v110, &qword_27FBB4D20, &unk_25BCC1F80);
  v15 = v111;
  if (v111)
  {
    v7 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    OUTLINED_FUNCTION_4_23();
    v17 = v16(v15, v7);
    v25 = OUTLINED_FUNCTION_6_26(v17, v18, v19, v20, v21, v22, v23, v24, v95, v96, v97, v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_21_13(v26, v25);
  }

  else
  {
    sub_25BAA6F5C(v110, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_19_14();
  }

  sub_25BAA486C(a2, v110, &qword_27FBB4D20, &unk_25BCC1F80);
  v27 = v111;
  if (v111)
  {
    v28 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    OUTLINED_FUNCTION_4_23();
    v30 = v29(v27, v28);
    v38 = OUTLINED_FUNCTION_6_26(v30, v31, v32, v33, v34, v35, v36, v37, v95, v96, v97, v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_55_2(v39, v38);
  }

  else
  {
    sub_25BAA6F5C(v110, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_53_6();
  }

  sub_25BAA486C(a3, v110, &qword_27FBB4D20, &unk_25BCC1F80);
  v40 = v111;
  if (v111)
  {
    v41 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    OUTLINED_FUNCTION_4_23();
    v43 = v42(v40, v41);
    *(inited + 96) = OUTLINED_FUNCTION_6_26(v43, v44, v45, v46, v47, v48, v49, v50, v95, v96, v97, v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, v103, v104, v105, v106);
    *(inited + 112) = v51;
    *(inited + 120) = v52;
    __swift_destroy_boxed_opaque_existential_1(v110);
  }

  else
  {
    sub_25BAA6F5C(v110, &qword_27FBB4D20, &unk_25BCC1F80);
    *(inited + 96) = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
    *(inited + 120) = -1;
  }

  *(inited + 128) = 0;
  *(inited + 136) = 0;
  *(inited + 144) = 0;
  *(inited + 152) = 6;
  v53 = *(a6 + 16);
  v54 = MEMORY[0x277D84F90];
  if (v53)
  {
    OUTLINED_FUNCTION_30_9();
    v54 = v109;
    v55 = a6 + 32;
    v7 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v56, v57, v58, v59);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v60, v61, v62, v63);
      v8 = v107;
      if (v107)
      {
        v9 = v108;
        __swift_project_boxed_opaque_existential_1(&v106, v107);
        v64 = OUTLINED_FUNCTION_5_22();
        v65(v64);
        v66 = OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_17_17(v66, v67, v68, v69, v70, v71, v72, v73, v95, v96, v97, v98);
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_24_8(&v106);
        OUTLINED_FUNCTION_16_19();
      }

      OUTLINED_FUNCTION_44_5();
      if (v75)
      {
        v76 = OUTLINED_FUNCTION_81(v74);
        OUTLINED_FUNCTION_42_7(v76);
        v54 = v109;
      }

      *(v54 + 16) = v8;
      OUTLINED_FUNCTION_15_15((v54 + 32 * v6), v95, v96, v97, v98, v99, v100, v101);
      v55 += 40;
      --v53;
    }

    while (v53);
    inited = v98;
  }

  v110[0] = inited;
  sub_25BC0358C(v54);
  v77 = v110[0];
  if (*(v110[0] + 16))
  {
    v78 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_12_16();
      v79 = v79 && (v9 | v8 | v7) == 0;
      if (v79)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110[0] = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v81 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v81, v82, v83);
          v78 = v110[0];
        }

        OUTLINED_FUNCTION_28_10();
        if (v75)
        {
          v85 = OUTLINED_FUNCTION_81(v84);
          OUTLINED_FUNCTION_40_9(v85);
          v78 = v110[0];
        }

        OUTLINED_FUNCTION_10_15();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v79);
  }

  OUTLINED_FUNCTION_39_8();
  if (inited > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26();
    __break(1u);
  }

  else
  {
    v86 = sub_25BB64F00(v77, v110);
    OUTLINED_FUNCTION_20_13(v86, v87, v88, v89, v90, v91, v92, v93, v95, v96, v97, v98, v99, v100);
    return sub_25BB66B90(v110);
  }

  return result;
}

uint64_t Tensor.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v56 = *v3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v67 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_29_0();
    sub_25BB00C00(v8, v9, v10);
    v11 = v67;
    v12 = a1 + 32;
    v4 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v13, v14, v15, v16);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v17, v18, v19, v20);
      v21 = v65;
      if (v65)
      {
        v5 = v66;
        __swift_project_boxed_opaque_existential_1(v64, v65);
        OUTLINED_FUNCTION_43_6();
        v22(v21, v5);
        v23 = OUTLINED_FUNCTION_24_8(v68);
        OUTLINED_FUNCTION_41_7(v23, v24, v25, v26, v27, v28, v29, v30, v54, v55, v56);
      }

      else
      {
        OUTLINED_FUNCTION_24_8(v68);
        OUTLINED_FUNCTION_24_8(v64);
        OUTLINED_FUNCTION_49_7();
      }

      v67 = v11;
      v32 = *(v11 + 16);
      v31 = *(v11 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_81(v31);
        OUTLINED_FUNCTION_45_0();
        sub_25BB00C00(v33, v34, v35);
        v11 = v67;
      }

      *(v11 + 16) = v32 + 1;
      OUTLINED_FUNCTION_48_5((v11 + 32 * v32), v54, v55, v56, v57, v58);
      v12 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_24;
    }
  }

  v36 = MEMORY[0x277D84F90];
  do
  {
    OUTLINED_FUNCTION_46_6();
    v37 = v37 && (v2 | v5 | v4) == 0;
    if (v37)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68[0] = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v39 = OUTLINED_FUNCTION_8_0();
        sub_25BB00C00(v39, v40, v41);
        v36 = v68[0];
      }

      OUTLINED_FUNCTION_27_11();
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_81(v42);
        OUTLINED_FUNCTION_40_9(v44);
        v36 = v68[0];
      }

      OUTLINED_FUNCTION_32_8();
    }

    OUTLINED_FUNCTION_34_9();
  }

  while (!v37);
LABEL_24:
  OUTLINED_FUNCTION_39_8();
  if (v2 > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26();
    __break(1u);
  }

  else
  {
    v45 = sub_25BB64F00(v11, v68);
    OUTLINED_FUNCTION_54_5(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58.n128_i64[0], v58.n128_i64[1], v59, v60, v61, v62, v63, v64[0], v64[1], v64[2], v65, v66, v67, v68[0]);
    return sub_25BB66B90(v68);
  }

  return result;
}

uint64_t sub_25BB66154@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = *v2;
  v144 = MEMORY[0x277D84F90];
  v145 = MEMORY[0x277D84F90];
  v143 = MEMORY[0x277D84F90];
  v6 = *(*a1 + 16);
  if (!v6)
  {
    v126 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    goto LABEL_107;
  }

  v130 = 0;
  v7 = 0;
  v8 = 0;
  v128 = *(*a1 + 16);
  v129 = a1[5];
  v125 = *a1 + 32;
  v126 = MEMORY[0x277D84F90];
  v132 = -v6;
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  do
  {
    if (v8 <= 0x40)
    {
      v13 = 0x8000000000000000;
      if (v8 != 64)
      {
        v13 = 1 << v8;
      }

      if ((v129 & v13) == 0)
      {
        v40 = a1[6];
        if (v8 != 64)
        {
          if ((v40 & (1 << v8)) != 0)
          {
            goto LABEL_34;
          }

          v12 = v8;
          goto LABEL_40;
        }

        if (v40 < 0)
        {
LABEL_34:
          v41 = *(v9 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = *(v4 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BA96630();
            v4 = v87;
          }

          v43 = *(v4 + 16);
          v42 = *(v4 + 24);
          OUTLINED_FUNCTION_35_7();
          if (v23)
          {
            OUTLINED_FUNCTION_0_32(v44);
            sub_25BA96630();
            v4 = v88;
          }

          *(v4 + 16) = v3;
          *(v4 + 8 * v43 + 32) = v41;
          goto LABEL_102;
        }

LABEL_6:
        v12 = 63;
LABEL_40:
        if ((a1[7] >> v12))
        {
          v45 = *(v9 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = *(v126 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BA96630();
            v126 = v90;
          }

          v47 = *(v126 + 16);
          v46 = *(v126 + 24);
          OUTLINED_FUNCTION_35_7();
          if (v23)
          {
            OUTLINED_FUNCTION_0_32(v48);
            sub_25BA96630();
            v126 = v91;
          }

          *(v126 + 16) = v3;
          *(v126 + 8 * v47 + 32) = v45;
        }

        if (v8 > 0x40 || (v49 = v8, v8 == 64))
        {
          v49 = 63;
        }

        if ((a1[3] >> v49))
        {
          v50 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = *(v9 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BA96630();
            v9 = v93;
          }

          v52 = *(v9 + 16);
          v51 = *(v9 + 24);
          v3 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            OUTLINED_FUNCTION_0_32(v51);
            sub_25BA96630();
            v9 = v94;
          }

          v53 = 0;
        }

        else
        {
          if (__OFADD__(v8, v7))
          {
            goto LABEL_141;
          }

          OUTLINED_FUNCTION_36_6();
          if (v57 != v31 || v54 >= v55)
          {
            goto LABEL_154;
          }

          v59 = (v55 & (v54 >> 63)) + v54;
          if (v59 < 0)
          {
            goto LABEL_142;
          }

          v60 = *(v56 + 8 * v59 + 32);
          v61 = -v60;
          if (__OFSUB__(0, v60))
          {
            goto LABEL_144;
          }

          if (v60 < v61)
          {
            goto LABEL_146;
          }

          v53 = *(v125 + 8 * v8);
          if (v53 >= v60 || v53 < v61)
          {
LABEL_151:
            v135 = 0;
            v136 = 0;
            v134 = v53;
            OUTLINED_FUNCTION_31_9();
            goto LABEL_152;
          }

          if (v53 < 0)
          {
            v31 = __OFADD__(v60, v53);
            v53 += v60;
            if (v31)
            {
              goto LABEL_147;
            }
          }

          v50 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = *(v9 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BA96630();
            v9 = v96;
          }

          v52 = *(v9 + 16);
          v63 = *(v9 + 24);
          v3 = v52 + 1;
          if (v52 >= v63 >> 1)
          {
            OUTLINED_FUNCTION_0_32(v63);
            sub_25BA96630();
            v9 = v97;
          }

          v130 = v7;
        }

        *(v9 + 16) = v3;
        *(v9 + 8 * v52 + 32) = v53;
        v145 = v9;
        if (v8 > 0x40 || (v64 = v8, v8 == 64))
        {
          v64 = 63;
        }

        if ((a1[4] >> v64))
        {
          if (__OFADD__(v8, v130))
          {
            goto LABEL_139;
          }

          OUTLINED_FUNCTION_36_6();
          if (v57 != v31 || v54 >= v55)
          {
LABEL_154:
            v135 = 0;
            v136 = 0;
            v134 = v54;
            v137 = -1;
            v139 = 0;
            v140 = 0;
            v138 = v55;
            v141 = -1;
LABEL_152:
            v142 = 4;
LABEL_150:
            sub_25BADDD28();
          }

          v67 = (v55 & (v54 >> 63)) + v54;
          if (v67 < 0)
          {
            goto LABEL_140;
          }

          v68 = *(v65 + 8 * v67 + 32);
        }

        else
        {
          v69 = a1[1];
          if (v8 >= *(v69 + 16))
          {
            goto LABEL_143;
          }

          v70 = *(v9 + 8 * v3 + 24);
          v31 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v31)
          {
            goto LABEL_145;
          }

          v72 = *(v69 + 8 * v8 + 32);
          if (v71 <= v72)
          {
            v68 = v72;
          }

          else
          {
            v68 = v71;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = *(v10 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BA96630();
          v10 = v81;
        }

        v74 = *(v10 + 16);
        v73 = *(v10 + 24);
        v3 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          OUTLINED_FUNCTION_0_32(v73);
          sub_25BA96630();
          v10 = v82;
        }

        *(v10 + 16) = v3;
        *(v10 + 8 * v74 + 32) = v68;
        v144 = v10;
        v75 = a1[2];
        if (v8 >= *(v75 + 16))
        {
          goto LABEL_138;
        }

        v76 = *(v75 + 8 * v8 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = *(v11 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BA96630();
          v11 = v84;
        }

        v4 = v50;
        v78 = *(v11 + 16);
        v77 = *(v11 + 24);
        OUTLINED_FUNCTION_35_7();
        if (v23)
        {
          OUTLINED_FUNCTION_0_32(v79);
          sub_25BA96630();
          v11 = v85;
        }

        *(v11 + 16) = v3;
        *(v11 + 8 * v78 + 32) = v76;
        v143 = v11;
        goto LABEL_102;
      }
    }

    else if ((v129 & 0x8000000000000000) == 0)
    {
      if ((a1[6] & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_6;
    }

    v14 = *(*(*(v5 + 16) + 152) + 16);
    v15 = *(v9 + 16);
    v16 = v6 - v8;
    v17 = v14 - v15 - v16;
    if (__OFSUB__(v14 - v15, v16))
    {
      goto LABEL_135;
    }

    v130 = v7 + v17;
    if (__OFADD__(v7, v17))
    {
LABEL_136:
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
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      v135 = 0;
      v136 = 0;
      v134 = v3;
      OUTLINED_FUNCTION_31_9();
      v142 = 4;
      goto LABEL_149;
    }

    if (v17 < 0)
    {
      goto LABEL_137;
    }

    v127 = v4;
    v18 = 0;
    v19 = v14 + v132 - v15;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v9 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BA96630();
        v9 = v33;
      }

      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      OUTLINED_FUNCTION_35_7();
      if (v23)
      {
        OUTLINED_FUNCTION_0_32(v22);
        sub_25BA96630();
        v9 = v34;
      }

      *(v9 + 16) = v3;
      *(v9 + 8 * v21 + 32) = 0;
      v24 = *(*(v5 + 16) + 152);
      v3 = *(v10 + 16);
      if (v3 >= *(v24 + 16))
      {
        goto LABEL_148;
      }

      v25 = *(v24 + 8 * v3 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_0();
        sub_25BA96630();
        v10 = v35;
      }

      v27 = *(v10 + 16);
      v26 = *(v10 + 24);
      v3 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_0_32(v26);
        sub_25BA96630();
        v10 = v36;
      }

      *(v10 + 16) = v3;
      if ((OUTLINED_FUNCTION_56_2() & 1) == 0)
      {
        v37 = *(v11 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BA96630();
        v11 = v38;
      }

      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      OUTLINED_FUNCTION_35_7();
      if (v23)
      {
        OUTLINED_FUNCTION_0_32(v30);
        sub_25BA96630();
        v11 = v39;
      }

      *(v11 + 16) = v3;
      *(v11 + 8 * v29 + 32) = 1;
      v143 = v11;
      if (v19 == v18)
      {
        break;
      }

      v31 = __OFADD__(v18++, 1);
      if (v31)
      {
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }
    }

    v145 = v9;
    v7 = v130;
    v4 = v127;
LABEL_102:
    ++v8;
    ++v132;
    v6 = v128;
  }

  while (v8 != v128);
LABEL_107:
  while (*(v9 + 16) < *(*(*(v5 + 16) + 152) + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_0();
      sub_25BA96630();
      v9 = v106;
    }

    v99 = *(v9 + 16);
    v98 = *(v9 + 24);
    if (v99 >= v98 >> 1)
    {
      OUTLINED_FUNCTION_81(v98);
      sub_25BA96630();
      v9 = v107;
    }

    *(v9 + 16) = v99 + 1;
    *(v9 + 8 * v99 + 32) = 0;
    v145 = v9;
    v100 = *(*(v5 + 16) + 152);
    v53 = *(v10 + 16);
    if (v53 >= *(v100 + 16))
    {
      goto LABEL_151;
    }

    v101 = *(v100 + 8 * v53 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_0();
      sub_25BA96630();
      v10 = v108;
    }

    v103 = *(v10 + 16);
    v102 = *(v10 + 24);
    if (v103 >= v102 >> 1)
    {
      OUTLINED_FUNCTION_81(v102);
      sub_25BA96630();
      v10 = v109;
    }

    *(v10 + 16) = v103 + 1;
    if ((OUTLINED_FUNCTION_56_2() & 1) == 0)
    {
      v110 = *(v11 + 16);
      OUTLINED_FUNCTION_45();
      sub_25BA96630();
      v11 = v111;
    }

    v105 = *(v11 + 16);
    v104 = *(v11 + 24);
    if (v105 >= v104 >> 1)
    {
      OUTLINED_FUNCTION_81(v104);
      sub_25BA96630();
      v11 = v112;
    }

    *(v11 + 16) = v105 + 1;
    *(v11 + 8 * v105 + 32) = 1;
    v143 = v11;
  }

  sub_25BCB617C();
  sub_25BCB617C();
  v113 = sub_25BB63620(v10, v9);

  v114 = -*(v113 + 16);
  v115 = 4;
  do
  {
    if (v115 - *(v113 + 16) == 4)
    {
      goto LABEL_127;
    }

    v116 = *(*(v5 + 16) + 152);
    v117 = *(v116 + 16);
    if (v115 - 4 >= v117)
    {
      v135 = 0;
      v136 = 0;
      v134 = v115 - 4;
      v137 = -1;
      v139 = 0;
      v140 = 0;
      v138 = v117;
      v141 = -1;
      v142 = 4;
      sub_25BCB617C();
LABEL_149:
      sub_25BCB617C();
      goto LABEL_150;
    }

    v118 = *(v113 + 8 * v115);
    v119 = *(v116 + 8 * v115++);
  }

  while (v119 >= v118);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25_0();
  __break(1u);
LABEL_127:

  v120 = sub_25BB630C0(0, *(v9 + 16), &v145, &v144, &v143);
  sub_25BB63B88(v120, v5, &v134);

  if (*(v4 + 16))
  {

    Tensor.expandingShape(at:)();

    v134 = v133;
  }

  if (*(v126 + 16))
  {
    v121 = v134;
    v122 = *(*(*(v134 + 16) + 152) + 16);

    if (v122 <= 1)
    {
    }

    else
    {

      Tensor.squeezingShape(at:)();

      v121 = v133;
    }
  }

  else
  {

    v121 = v134;
  }

  *a2 = v121;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TensorRange(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TensorRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 25))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 6)
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

uint64_t storeEnumTagSinglePayload for TensorRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BB66C8C(uint64_t a1)
{
  if (*(a1 + 24) <= 5u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_25BB66CA4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
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

uint64_t sub_25BB66CF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25BB66D38(uint64_t result, int a2, int a3)
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

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25BB66E50()
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BB66EA0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25BB66E50();
}

unint64_t sub_25BB66EB4()
{
  result = qword_28154F208;
  if (!qword_28154F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F208);
  }

  return result;
}

uint64_t sub_25BB66F10(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  v9 = *(v3 + 48);
  v21 = *(v3 + 144);
  v10 = sub_25BC6640C();
  v11 = *(v3 + 80);
  v12 = __swift_project_boxed_opaque_existential_1((v3 + 56), v11);
  v13 = sub_25BB6706C(v12, v11);
  v14 = *(v3 + 120);
  v15 = __swift_project_boxed_opaque_existential_1((v3 + 96), v14);
  v16 = sub_25BB6706C(v15, v14);
  v18 = *(v3 + 24);
  v17 = *(v3 + 32);
  sub_25BCB617C();
  v19 = sub_25BB6750C(v8, v9, v10, v13, v16, v18, v17, a1);

  *(v6 + 32) = v19;
  return v6;
}

double sub_25BB6706C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D28, &qword_25BCC2278);
  if (swift_dynamicCast())
  {
    sub_25BADF778(v28, &v26);
    v8 = v27;
    v9 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    if (sub_25BCB6F9C() < 65)
    {
      v20 = sub_25BCB6FAC();
      v21 = sub_25BCB6F8C();
      (*(v10 + 8))(v13, v8);
      if (v20)
      {
        v14 = v21;
      }

      else
      {
        v14 = v21;
      }
    }

    else
    {
      sub_25BB675B0();
      sub_25BB67604();
      sub_25BCB60DC();
      (*(v10 + 8))(v13, v8);
      v14 = v25;
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D30, &qword_25BCC2280);
  if (swift_dynamicCast())
  {
    sub_25BADF778(v28, &v26);
    v15 = v27;
    v16 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    (*(v19 + 16))(&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_25BB675B0();
    sub_25BCB60BC();
    v14 = v25;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(&v26);
    goto LABEL_12;
  }

  if (!swift_dynamicCast())
  {
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_25BCB70FC();

    *&v26 = 0xD000000000000020;
    *(&v26 + 1) = 0x800000025BCDC760;
    swift_getDynamicType();
    v23 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v23);

    v28[0] = v26;
    v29 = 9;
    sub_25BCB617C();
    sub_25BA97890();
  }

  v14 = LOBYTE(v28[0]);
LABEL_12:
  (*(v4 + 8))(v7, a2);
  return v14;
}

id sub_25BB6750C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 oneHotWithIndicesTensor:a1 depth:a2 dataType:a3 onValue:v14 offValue:a4 name:a5];

  return v15;
}

unint64_t sub_25BB675B0()
{
  result = qword_27FBB4D38;
  if (!qword_27FBB4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4D38);
  }

  return result;
}

unint64_t sub_25BB67604()
{
  result = qword_27FBB4D40[0];
  if (!qword_27FBB4D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB4D40);
  }

  return result;
}

uint64_t sub_25BB67658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_9();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  if (v22 < 1 || a2 < 0)
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    (*(v18 + 16))(v21, v17, a5);
    if (a2)
    {
      v23 = a1;
    }

    else
    {
      v23 = 1;
    }

    v24 = *(a6 + 8);
    sub_25BB67810(v21, v23, a2, a3, a4, a5, a7);
  }

  return result;
}

int *sub_25BB67810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for LazyPrefetchingMapSequence();
  *(a7 + result[11]) = a2;
  *(a7 + result[12]) = a3;
  v13 = (a7 + result[13]);
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_25BB678C8()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  v2 = *(v0 + v1);
  return sub_25BCB617C();
}

uint64_t sub_25BB67968()
{
  v1 = (v0 + *(*v0 + 152));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_25BB6798C(uint64_t result, char a2)
{
  v3 = v2 + *(*v2 + 152);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_25BB67A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_25BB67A74(a1, a2, a3, a4, a5);
  return v13;
}

char *sub_25BB67A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v60 = a5;
  v55 = a1;
  v56 = a3;
  v61 = a2;
  v52 = *v5;
  v7 = v52;
  v57 = *(v52 + 88);
  v58 = sub_25BCB6E8C();
  v8 = OUTLINED_FUNCTION_9_3(v58);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = v50 - v11;
  v53 = sub_25BCB6CFC();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_25BCB6CDC();
  v21 = OUTLINED_FUNCTION_9_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = sub_25BCB603C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_1();
  *&v5[*(v7 + 136)] = 0;
  OUTLINED_FUNCTION_1_27();
  *&v5[*(v26 + 144)] = 0;
  OUTLINED_FUNCTION_1_27();
  v28 = &v5[*(v27 + 152)];
  *v28 = 0;
  v28[8] = 1;
  OUTLINED_FUNCTION_1_27();
  v30 = *(v29 + 160);
  *&v5[v30] = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_1_27();
  *&v5[*(v31 + 168)] = -1;
  OUTLINED_FUNCTION_1_27();
  v51 = *(v32 + 176);
  v33 = sub_25BAADFB0();
  v50[0] = "iteratorDispatchQueue";
  v50[1] = v33;
  sub_25BCB600C();
  v62 = MEMORY[0x277D84F90];
  sub_25BB6A894(&qword_28154BDC0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BB6A8DC(&qword_28154BE40, &qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BCB702C();
  (*(v13 + 104))(v19, *MEMORY[0x277D85260], v53);
  *&v5[v51] = sub_25BCB6D2C();
  OUTLINED_FUNCTION_1_27();
  v35 = *(v34 + 104);
  v37 = *(v36 + 96);
  v38 = *(v36 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = v55;
  (*(v40 + 16))(&v6[v35], v55, AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_27();
  *&v6[*(v42 + 112)] = v56;
  OUTLINED_FUNCTION_1_27();
  v44 = &v6[*(v43 + 120)];
  v45 = v60;
  *v44 = v59;
  *(v44 + 1) = v45;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v46);
  v47 = sub_25BCB68BC();
  (*(v40 + 8))(v41, AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_27();
  *&v6[*(v48 + 128)] = v47;
  return v6;
}

uint64_t LazyPrefetchingMapSequence.Iterator.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_3(AssociatedTypeWitness);
  (*(v5 + 8))(v0 + v1);
  v6 = *(v0 + *(*v0 + 120) + 8);

  v7 = *(v0 + *(*v0 + 128));

  return v0;
}

uint64_t LazyPrefetchingMapSequence.Iterator.__deallocating_deinit()
{
  LazyPrefetchingMapSequence.Iterator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6803C()
{
  v1 = *(v0 + *(*v0 + 176));
  sub_25BCB6D0C();
  return v3;
}

uint64_t sub_25BB6809C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = sub_25BB67968();
  v6 = (v5 & 1) == 0 && *(a1 + *(*a1 + 136)) >= result;
  *a2 = v6;
  return result;
}

uint64_t sub_25BB68108(uint64_t a1, uint64_t a2)
{
  v23[0] = a2;
  v4 = *v2;
  v5 = sub_25BCB5FEC();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BCB603C();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[11];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = v23 - v17;
  v23[1] = *(v2 + v4[22]);
  (*(v15 + 16))(v23 - v17, a1, v14);
  v19 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v4[10];
  *(v20 + 3) = v14;
  *(v20 + 4) = v4[12];
  *(v20 + 5) = v2;
  *(v20 + 6) = v23[0];
  (*(v15 + 32))(&v20[v19], v18, v14);
  aBlock[4] = sub_25BB6A9F0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BB6871C;
  aBlock[3] = &block_descriptor_28;
  v21 = _Block_copy(aBlock);

  sub_25BCB600C();
  v27 = MEMORY[0x277D84F90];
  sub_25BB6A894(&qword_27FBB4E58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E60, &unk_25BCC23E0);
  sub_25BB6A8DC(&qword_27FBB4E68, &qword_27FBB4E60, &unk_25BCC23E0);
  sub_25BCB702C();
  MEMORY[0x25F877540](0, v13, v8, v21);
  _Block_release(v21);
  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v13, v25);
}

void sub_25BB684E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 88);
  v7 = sub_25BCB6E8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_25BB678C8();
  v12 = sub_25BCB681C();

  if (!v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_10;
  }

  v14 = a2 % v12;
  (*(*(v6 - 8) + 16))(v11, a3, v6);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v6);
  v15 = *(*a1 + 128);
  swift_beginAccess();
  v16 = sub_25BCB68CC();
  sub_25BCB67BC();
  v17 = *(a1 + v15);
  sub_25BC19AE4(v14, v17);
  (*(v8 + 40))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, v7);
  nullsub_1(v16, v18);
  swift_endAccess();
  v19 = *(*a1 + 168);
  if (*(a1 + v19) == a2)
  {
    *(a1 + v19) = -1;
    v20 = sub_25BB679B4();
    sub_25BCB6DAC();
  }
}

uint64_t sub_25BB6871C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25BB68760(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v26 - v6;
  v8 = *(v7 + 96);
  v9 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_25BCB6E8C();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v29 = *(AssociatedTypeWitness - 8);
  v16 = *(v29 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  result = sub_25BB6803C();
  if ((result & 1) == 0)
  {
    v26 = v4;
    v27 = v3;
    v20 = *(*v1 + 104);
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_25BCB6EDC();
    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
    {
      result = (*(v28 + 8))(v15, v11);
      v21 = v1 + *(*v1 + 152);
      *v21 = *(v1 + *(*v1 + 144));
      *(v21 + 8) = 0;
    }

    else
    {
      v22 = v29;
      (*(v29 + 32))(v18, v15, AssociatedTypeWitness);
      v23 = v1 + *(*v1 + 120);
      v24 = *(v23 + 8);
      v25 = v30;
      (*v23)(v18);
      sub_25BB68108(v25, *(v2 + *(*v2 + 144)));
      (*(v26 + 8))(v25, v27);
      (*(v22 + 8))(v18, AssociatedTypeWitness);
      return sub_25BB68B24(v2);
    }
  }

  return result;
}

uint64_t sub_25BB68B24(uint64_t result)
{
  v1 = *(*result + 144);
  v2 = *(result + v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(result + v1) = v4;
  }

  return result;
}

uint64_t sub_25BB68B50()
{
  v1 = sub_25BCB5FEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25BCB603C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25BB6803C();
  if ((result & 1) == 0)
  {
    v16 = *(v0 + *(*v0 + 176));
    aBlock[4] = sub_25BB6A88C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BB6871C;
    aBlock[3] = &block_descriptor_16;
    v12 = _Block_copy(aBlock);
    v15 = v6;
    v13 = v12;

    sub_25BCB600C();
    v17 = MEMORY[0x277D84F90];
    sub_25BB6A894(&qword_27FBB4E58, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BB6A8DC(&qword_27FBB4E68, &qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BCB702C();
    MEMORY[0x25F877540](0, v10, v5, v13);
    _Block_release(v13);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v15);
  }

  return result;
}

uint64_t sub_25BB68E24(uint64_t a1)
{
  v2 = *a1;
  result = sub_25BB67968();
  if ((v4 & 1) == 0)
  {
    return result;
  }

  sub_25BB678C8();
  v5 = v2[11];
  sub_25BCB6E8C();
  v6 = sub_25BCB681C();

  v7 = *(a1 + *(*a1 + 144));
  v8 = *(a1 + *(*a1 + 136));
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = __OFSUB__(v6, v10);
  v11 = v6 - v10;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(a1 + *(*a1 + 112)) >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(a1 + *(*a1 + 112));
  }

  if (v12 < 1)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
  v13 = v2[12];
  v14 = v2[10];
  swift_getAssociatedTypeWitness();
  sub_25BB6A94C();
  v15 = sub_25BCB65BC();
  v16 = *(a1 + *(*a1 + 144));
  result = sub_25BCB681C();
  v17 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(a1 + *(*a1 + 144)) = v17;
  if (result < v12)
  {
    v18 = a1 + *(*a1 + 152);
    *v18 = v17;
    *(v18 + 8) = 0;
    if (*(a1 + *(*a1 + 168)) == v17)
    {
      v19 = sub_25BB679B4();
      sub_25BCB6DAC();
    }
  }

  sub_25BB6917C(v16, v15);
}

uint64_t sub_25BB6907C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 104);
  swift_beginAccess();
  v4 = *(v2 + 96);
  v5 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25BCB6EDC();
  return swift_endAccess();
}

uint64_t sub_25BB6917C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = *v2;
  v6 = sub_25BCB5FEC();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BCB603C();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25BCB5FFC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a2;
  v19 = *(v5 + 96);
  v20 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  sub_25BCB68CC();
  swift_getWitnessTable();
  result = sub_25BCB6B6C();
  if ((result & 1) == 0)
  {
    sub_25BAADFB0();
    (*(v15 + 104))(v18, *MEMORY[0x277D851C8], v14);
    v22 = sub_25BCB6D3C();
    (*(v15 + 8))(v18, v14);
    v23 = swift_allocObject();
    v24 = v27;
    v23[2] = a2;
    v23[3] = v24;
    v23[4] = v3;
    aBlock[4] = sub_25BB6A9D8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BB6871C;
    aBlock[3] = &block_descriptor_22;
    v25 = _Block_copy(aBlock);
    sub_25BCB617C();

    sub_25BCB600C();
    v31 = MEMORY[0x277D84F90];
    sub_25BB6A894(&qword_27FBB4E58, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BB6A8DC(&qword_27FBB4E68, &qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BCB702C();
    MEMORY[0x25F877540](0, v13, v9, v25);
    _Block_release(v25);

    (*(v30 + 8))(v9, v6);
    (*(v28 + 8))(v13, v29);
  }

  return result;
}

uint64_t sub_25BB695A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_25BAADFB0();
  v4 = *(v3 + 96);
  v5 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  sub_25BCB681C();
  return sub_25BCB6CEC();
}

uint64_t sub_25BB69668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *a3;
  v8 = *(*a3 + 96);
  v9 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v27 - v14;
  v16 = *(v6 + 88);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x28223BE20](v13);
  v21 = &v27 - v20;
  v22 = __OFADD__(a2, result);
  v23 = a2 + result;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v24 = a3 + *(v7 + 120);
    v26 = *v24;
    v25 = *(v24 + 8);
    sub_25BCB690C();
    v26(v15);
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    sub_25BB68108(v21, v23);
    return (*(v17 + 8))(v21, v16);
  }

  return result;
}

uint64_t sub_25BB69888(uint64_t a1)
{
  if (*(v1 + *(*v1 + 112)) < 1)
  {
    return sub_25BB68760(a1);
  }

  else
  {
    return sub_25BB68B50();
  }
}

uint64_t sub_25BB698B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v22 = 0;
  v6 = *(v1 + *(v4 + 176));
  v7 = swift_allocObject();
  *(v7 + 16) = &v22;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_25BB6A87C;
  *(v8 + 24) = v7;
  v20 = sub_25BACF21C;
  v21 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_25BACF24C;
  v19 = &block_descriptor;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if ((v22 & 1) == 0 && (sub_25BB6803C() & 1) == 0)
  {
    v11 = sub_25BB679B4();
    sub_25BCB6D9C();
  }

  __swift_storeEnumTagSinglePayload(a1, 1, 1, *(v5 + 88));
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_25BB6A884;
  *(v13 + 24) = v12;
  v20 = sub_25BB6AA90;
  v21 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_25BACF24C;
  v19 = &block_descriptor_13;
  v14 = _Block_copy(&aBlock);

  dispatch_sync(v6, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_25BB69BC0(BOOL *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = sub_25BCB6E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *(a2 + *(v4 + 136));
  sub_25BB678C8();
  v12 = sub_25BCB681C();

  if (!v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v11 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_10;
  }

  sub_25BB678C8();
  sub_25BCB690C();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v5);
  result = (*(v7 + 8))(v10, v6);
  *a1 = EnumTagSinglePayload != 1;
  if (EnumTagSinglePayload == 1)
  {
    *(a2 + *(*a2 + 168)) = *(a2 + *(*a2 + 136));
  }

  return result;
}

uint64_t sub_25BB69D84(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = sub_25BCB6E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = *(a2 + *(v4 + 136));
  sub_25BB678C8();
  v12 = sub_25BCB681C();

  if (v12)
  {
    if (v11 == 0x8000000000000000 && v12 == -1)
    {
      goto LABEL_16;
    }

    sub_25BB678C8();
    sub_25BCB690C();

    v15 = *(v7 + 40);
    v15(a1, v10, v6);
    v16 = *(a2 + *(*a2 + 136));
    sub_25BB678C8();
    v17 = sub_25BCB681C();

    if (v17)
    {
      if (v16 == 0x8000000000000000 && v17 == -1)
      {
        goto LABEL_17;
      }

      v19 = v16 % v17;
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v5);
      v20 = *(*a2 + 128);
      swift_beginAccess();
      v21 = sub_25BCB68CC();
      sub_25BCB67BC();
      v22 = *(a2 + v20);
      sub_25BC19AE4(v19, v22);
      v15(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, v6);
      nullsub_1(v21, v23);
      result = swift_endAccess();
      v24 = *(*a2 + 136);
      v25 = *(a2 + v24);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        *(a2 + v24) = v27;
        return result;
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t LazyPrefetchingMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25BB6803C();
  if (v4)
  {
    v5 = *(v3 + 88);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }

  else
  {
    sub_25BB69888(v4);

    return sub_25BB698B0(a1);
  }
}

uint64_t LazyPrefetchingMapSequence.makeIterator()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v14 = *(v13 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v18 = &v27 - v17;
  v19 = *(a1 + 24);
  type metadata accessor for LazyPrefetchingMapSequence.Iterator();
  (*(v6 + 16))(v12, v2, v4);
  sub_25BCB655C();
  v20 = *(v2 + *(a1 + 44));
  v21 = *(v2 + *(a1 + 48));
  v22 = (v2 + *(a1 + 52));
  v23 = *v22;
  v24 = v22[1];

  v25 = sub_25BB67A04(v18, v20, v21, v23, v24);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v25;
}

uint64_t LazyPrefetchingMapSequence.underestimatedCount.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  return sub_25BCB657C();
}

uint64_t sub_25BB6A300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyPrefetchingMapSequence.makeIterator()(a1);
  *a2 = result;
  return result;
}

unint64_t sub_25BB6A32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25BB6A730();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB6A3C4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25BB6A520(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_25BB6A730()
{
  result = qword_27FBB4DC8[0];
  if (!qword_27FBB4DC8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27FBB4DC8);
  }

  return result;
}

uint64_t sub_25BB6A778(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 80);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_25BB6A894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BB6A8DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25BB6A94C()
{
  result = qword_28154BE30;
  if (!qword_28154BE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB429B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE30);
  }

  return result;
}

uint64_t sub_25BB6AA2C@<X0>(BOOL *a1@<X8>)
{
  result = sub_25BB67968();
  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_25BB6AAA8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v2 = sub_25BCB621C();
  swift_endAccess();
  return v2;
}

void sub_25BB6AB18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v15;
  v34 = v12;
  v16 = sub_25BCB6F9C();
  if (v16 < -7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v27[1] = a5;
  v28 = a2;
  v30 = v5;
  v31 = a4;
  v29 = v10;
  if ((v16 + 7) >= 0xF)
  {
    v18 = (v10 + 8);
    v19 = v16 / 8;
    v17 = MEMORY[0x277D84F90];
    v20 = 0x1000000000000000;
    v32 = sub_25BB6D800();
    v21 = 0;
    while (v20)
    {
      v35 = v21;
      sub_25BCB6F7C();
      v22 = sub_25BCB6F8C();
      (*v18)(v14, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v17 + 16);
        sub_25BAFD30C();
        v17 = v25;
      }

      v23 = *(v17 + 16);
      if (v23 >= *(v17 + 24) >> 1)
      {
        sub_25BAFD30C();
        v17 = v26;
      }

      *(v17 + 16) = v23 + 1;
      *(v17 + v23 + 32) = v22;
      --v20;
      v21 += 8;
      if (!--v19)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_4:
  (*(v31 + 16))(v17, v28);
  (*(v29 + 8))(v34, a3);
}

uint64_t sub_25BB6AD70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  sub_25BAC27B0(v5 + 16, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E80, &unk_25BCC2610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E88, &qword_25BCD6CE0);
  if (swift_dynamicCast())
  {
    sub_25BA97060(v19, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = (*(v12 + 24))(a1, a2, a3, a4, a5, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v13;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  result = sub_25BB6D720(v19);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v22[0] = 0;
    v22[1] = a1;
    MEMORY[0x28223BE20](result);
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = v5;
    v18[6] = a2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    v16 = sub_25BB42928();
    return sub_25BAB2B20(sub_25BB6D788, v18, v15, a3, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB6AF9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 16, *(a2 + 40));
  sub_25BCB622C();
  return swift_endAccess();
}

uint64_t UInt64.vector2.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = v2;
  *(inited + 36) = v1;
  return sub_25BC9FBFC(inited);
}

uint64_t sub_25BB6B0E4(int8x16_t a1, double a2)
{
  v2 = vmull_u32(vzip1_s32(*a1.i8, *&vextq_s8(a1, a1, 8uLL)), 0xCD9E8D57D2511F53);
  v3 = v2.i32[2];
  v4 = v2.i32[0];
  v5 = HIDWORD(v2.i64[0]);
  v6 = HIDWORD(v2.i64[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = LODWORD(a2) ^ a1.i32[1] ^ v6;
  *(inited + 36) = v3;
  *(inited + 40) = HIDWORD(a2) ^ a1.i32[3] ^ v5;
  *(inited + 44) = v4;
  return sub_25BCA243C(inited);
}

uint64_t sub_25BB6B190(int8x16_t a1, double a2)
{
  sub_25BB6B0E4(a1, a2);
  sub_25BB6B0E4(v3, COERCE_DOUBLE(vadd_s32(*&a2, 0xBB67AE859E3779B9)));
  sub_25BB6B0E4(v4, COERCE_DOUBLE(vadd_s32(*&a2, 0x76CF5D0A3C6EF372)));
  sub_25BB6B0E4(v5, COERCE_DOUBLE(vadd_s32(*&a2, 0x32370B8FDAA66D2BLL)));
  sub_25BB6B0E4(v6, COERCE_DOUBLE(vadd_s32(*&a2, 0xED9EBA1478DDE6E4)));
  sub_25BB6B0E4(v7, COERCE_DOUBLE(vadd_s32(*&a2, 0xA90668991715609DLL)));
  sub_25BB6B0E4(v8, COERCE_DOUBLE(vadd_s32(*&a2, 0x646E171EB54CDA56)));
  sub_25BB6B0E4(v9, COERCE_DOUBLE(vadd_s32(*&a2, 0x1FD5C5A35384540FLL)));
  sub_25BB6B0E4(v10, COERCE_DOUBLE(vadd_s32(*&a2, 0xDB3D7428F1BBCDC8)));
  v12 = COERCE_DOUBLE(vadd_s32(*&a2, 0x96A522AD8FF34781));

  return sub_25BB6B0E4(v11, v12);
}

uint64_t sub_25BB6B250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && v1 <= 8)
  {
    v2 = 0;
    v3 = 0;
    for (i = 32; ; ++i)
    {
      v5 = *(a1 + i) << v2;
      v6 = __CFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        break;
      }

      v2 += 8;
      if (!--v1)
      {

        UInt64.vector2.getter(v3);
        return 0;
      }
    }

    __break(1u);
  }

  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BB6B364(uint64_t *a1)
{
  v1 = *a1;
  if ((sub_25BAB5C48(*(*(*a1 + 16) + 152), &unk_286D44760) & 1) == 0 || Tensor.scalarType.getter() != MEMORY[0x277D849A8])
  {
    goto LABEL_23;
  }

  v2 = sub_25BBCB800(v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25BB00C20();
    v4 = v13;
    v5 = v13[2];
    v6 = 32;
    do
    {
      v7 = *(v2 + v6);
      if (v5 >= v13[3] >> 1)
      {
        OUTLINED_FUNCTION_45_0();
        sub_25BB00C20();
      }

      v13[2] = v5 + 1;
      *(v13 + v5 + 8) = v7;
      v6 += 4;
      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v8 = v4[2];
  if (v8 < 2)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 == 2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 < 4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 == 4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v8 >= 6)
  {
    if (v8 != 6)
    {
      v9 = *(v4 + 36);
      v10 = *(v4 + 44);
      v11 = *(v4 + 52);

      return 0;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BB6B548()
{
  if (*(v0 + 24) == 1)
  {
    *(v0 + 24) = 0;
    return *(v0 + 32);
  }

  else
  {
    sub_25BB6B190(*v0, *(v0 + 16));
    sub_25BB6B5B0(v2);
    *(v0 + 24) = 1;
    *(v0 + 32) = v3;
    v1 = v4;
    sub_25BB6B95C(v0);
  }

  return v1;
}

uint64_t sub_25BB6B5B0(int8x16_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DC8, &qword_25BCBBD38);
  inited = swift_initStackObject();
  v2 = vextq_s8(a1, a1, 8uLL).u64[0];
  v3 = vshll_n_s32(vzip1_s32(*a1.i8, v2), 0x20uLL);
  v4 = vzip2_s32(*a1.i8, v2);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = vorrq_s8(v3, v5);
  return sub_25BC9FB70(inited);
}

uint64_t sub_25BB6B618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BB6B250(a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_25BB6B668@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v31 = *v1[1].i64;
  sub_25BB6B190(*v1, v31);
  v32 = v4;
  v5 = MEMORY[0x277D84F90];
  *&v33[0] = MEMORY[0x277D84F90];
  sub_25BB005F0();
  v6 = *&v33[0];
  v7 = *(*&v33[0] + 16);
  v8 = *(*&v33[0] + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_25BB005F0();
    v6 = *&v33[0];
    v8 = *(*&v33[0] + 24) >> 1;
  }

  *(v6 + 16) = v9;
  v10 = v32;
  *(v6 + 4 * v7 + 32) = DWORD2(v32);
  v11 = v7 + 2;
  if (v8 < v11)
  {
    OUTLINED_FUNCTION_45_0();
    sub_25BB005F0();
    v10 = v32;
    v6 = *&v33[0];
  }

  *(v6 + 16) = v11;
  *(v6 + 4 * v9 + 32) = HIDWORD(v10);
  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_0_33(v12);
    OUTLINED_FUNCTION_45_0();
    sub_25BB005F0();
    *&v10 = v32;
  }

  v15 = *&v33[0];
  *(*&v33[0] + 16) = v14;
  *(v15 + 4 * v13 + 32) = DWORD1(v10);
  v16 = *(v15 + 24);
  v17 = v13 + 2;
  if (v17 > (v16 >> 1))
  {
    OUTLINED_FUNCTION_0_33(v16);
    sub_25BB005F0();
    LODWORD(v10) = v32;
    v15 = *&v33[0];
  }

  *(v15 + 16) = v17;
  *(v15 + 32 + 4 * v14) = v10;
  *&v33[0] = v5;
  sub_25BB005F0();
  v18 = v5;
  v20 = *(v5 + 16);
  v19 = *(v5 + 24);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    OUTLINED_FUNCTION_0_33(v19);
    OUTLINED_FUNCTION_45_0();
    sub_25BB005F0();
    v18 = *&v33[0];
    v19 = *(*&v33[0] + 24);
    v21 = v19 >> 1;
  }

  *(v18 + 16) = v22;
  v23 = HIDWORD(v31);
  *(v18 + 4 * v20 + 32) = LODWORD(v31);
  v24 = v20 + 2;
  if (v21 < v24)
  {
    OUTLINED_FUNCTION_0_33(v19);
    sub_25BB005F0();
    v23 = HIDWORD(v31);
    v18 = *&v33[0];
  }

  *(v18 + 16) = v24;
  *(v18 + 32 + 4 * v22) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  result = swift_initStackObject();
  *(result + 16) = xmmword_25BCC23F0;
  *(result + 32) = 1;
  v26 = *(v15 + 16);
  if (!v26)
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = result;
  *(result + 36) = *(v15 + 32);
  if (v26 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(result + 40) = *(v15 + 36);
  if (v26 < 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(result + 44) = *(v15 + 40);
  if (v26 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = *(v15 + 44);

  v27[12] = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27[13] = *(v18 + 32);
  if (v29 != 1)
  {
    v30 = *(v18 + 36);

    v27[14] = v30;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_25BB2F098(&unk_286D42810, v27, v33, a1);
    return sub_25BB6B95C(v2);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25BB6B95C(__int128 *a1)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  v3 = 0;
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = v9;
  while (v3 != -16)
  {
    v4 = *(inited + v3 + 44);
    v3 -= 4;
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (!v5)
    {
      *(inited + v3 + 48) = v6;
      goto LABEL_6;
    }
  }

  *(inited + 44) = 0;
LABEL_6:
  result = sub_25BCA243C(inited);
  *a1 = v8;
  return result;
}

uint64_t UInt64.vector4.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = 0;
  *(inited + 40) = v2;
  *(inited + 44) = v1;
  return sub_25BCA243C(inited);
}

Swift::UInt64 __swiftcall SystemArc4RandomNumberGenerator.next()()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  arc4random_buf(v2, 8uLL);
  result = v2[0];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SystemArc4RandomNumberGenerator.next(count:)(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (result)
    {
      v2 = sub_25BCB67DC();
      *(v2 + 16) = v1;
      if (!(v1 >> 60))
      {
LABEL_6:
        arc4random_buf((v2 + 32), 8 * v1);
        *(v2 + 16) = v1;
        return v2;
      }

      __break(1u);
    }

    v2 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t SystemArc4RandomNumberGenerator.next<A>(count:upperBound:)(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (result)
    {
      v2 = sub_25BCB67DC();
      *(v2 + 16) = v1;
      if (!(v1 >> 60))
      {
LABEL_6:
        arc4random_buf((v2 + 32), 8 * v1);
        *(v2 + 16) = v1;
        MEMORY[0x28223BE20](v3);
        v4 = sub_25BCB67EC();

        return v4;
      }

      __break(1u);
    }

    v2 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t *sub_25BB6BC08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](a1);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v22[0] = v16;
    if (!a3)
    {
LABEL_6:
      *v22[0] = a3;
      return result;
    }

    if (*(v17 + 16) >= a3)
    {
      v21 = 0;
      v24 = *result;
      v22[2] = v13 + 40;
      v23 = v17 + 32;
      do
      {
        sub_25BB6BD88(*(v23 + 8 * v21), a5, a6, a7, a8, v19);
        result = (*(v13 + 40))(v24 + *(v13 + 72) * v21++, v19, a6);
      }

      while (a3 != v21);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB6BD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a5;
  v131 = a6;
  v165 = *MEMORY[0x277D85DE8];
  v152 = a4;
  v9 = *(a4 + 8);
  v10 = v9[3];
  swift_getAssociatedTypeWitness();
  v137 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v135 = &v130 - v12;
  v13 = swift_checkMetadataState();
  v146 = *(v13 - 8);
  v14 = *(v146 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v130 - v18;
  MEMORY[0x28223BE20](v17);
  v163 = &v130 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v130 = *(TupleTypeMetadata2 - 8);
  v20 = *(v130 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v153 = &v130 - v21;
  v145 = v10;
  v140 = *(v10 + 16);
  v139 = swift_getAssociatedTypeWitness();
  v22 = *(*(v139 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v139);
  v138 = &v130 - v24;
  v25 = *(a3 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v147 = (&v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v161 = &v130 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v154 = &v130 - v32;
  MEMORY[0x28223BE20](v31);
  v155 = &v130 - v33;
  v34 = sub_25BCB6FAC();
  v151 = a2;
  v133 = v25;
  if ((v34 & 1) == 0)
  {
    v37 = sub_25BCB6FAC();
    v38 = sub_25BCB6F9C();
    if (v37)
    {
      if (v38 > 64)
      {
        goto LABEL_12;
      }

      swift_getAssociatedConformanceWitness();
      sub_25BCB790C();
      v39 = v155;
      sub_25BCB788C();
      v40 = *(v9[4] + 8);
      a2 = v151;
      v41 = sub_25BCB62AC();
      (*(v25 + 8))(v39, a3);
      if ((v41 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v38 >= 64)
      {
        goto LABEL_12;
      }

      a2 = v151;
    }

    goto LABEL_10;
  }

  if (sub_25BCB6F9C() < 64)
  {
LABEL_10:
    if (!sub_25BCB6F8C())
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v164 = 0;
  sub_25BB6D800();
  v35 = v155;
  sub_25BCB6F5C();
  v36 = *(v9[2] + 8);
  while (1)
  {
    v43 = sub_25BCB630C();
    (*(v25 + 8))(v35, a3);
    if ((v43 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v129 = 0;
    v128 = 565;
    sub_25BCB74CC();
    __break(1u);
LABEL_12:
    v164 = 0;
    sub_25BB6D800();
    v35 = v155;
    sub_25BCB6F5C();
    v42 = *(v9[2] + 8);
    a2 = v151;
  }

LABEL_14:
  v164 = a1;
  sub_25BB6D930();
  sub_25BCB6F5C();
  v44 = *(TupleTypeMetadata2 + 48);
  v45 = v153;
  sub_25BCB742C();
  v46 = v163;
  v158 = *(v146 + 16);
  v159 = v146 + 16;
  v158(v163, &v45[v44], v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = sub_25BCB6FAC();
  v49 = sub_25BCB6FAC();
  v162 = v9;
  v157 = AssociatedConformanceWitness;
  if ((v48 ^ v49))
  {
    v50 = sub_25BCB6FAC();
    v51 = sub_25BCB6F9C();
    v52 = sub_25BCB6F9C();
    if (v50)
    {
      v53 = v156;
      v54 = v133;
      if (v52 < v51)
      {
        (*(v133 + 16))(v155, v151, a3);
        sub_25BCB6F5C();
        swift_getAssociatedConformanceWitness();
        v55 = v163;
        v56 = sub_25BCB629C();
        v57 = v53;
        v58 = v146 + 8;
        v59 = *(v146 + 8);
        v59(v57, v13);
        v142 = v58;
        v59(v55, v13);
        goto LABEL_23;
      }

      swift_getAssociatedConformanceWitness();
      sub_25BCB790C();
      sub_25BCB788C();
      swift_getAssociatedConformanceWitness();
      v72 = sub_25BCB629C();
      v73 = v146 + 8;
      v59 = *(v146 + 8);
      v59(v53, v13);
      v74 = v162;
      v75 = v53;
      v45 = v153;
      v142 = v73;
      if (v72)
      {
        v59(v163, v13);
        goto LABEL_33;
      }

      v158(v75, v163, v13);
      sub_25BCB6F5C();
      v79 = *(v74[4] + 8);
      v80 = v155;
      v81 = sub_25BCB629C();
      (*(v54 + 8))(v80, a3);
      v59(v163, v13);
      if (v81)
      {
        goto LABEL_33;
      }

LABEL_53:
      (*(v54 + 8))(v154, a3);
      v124 = v131;
      goto LABEL_56;
    }

    v64 = v155;
    v54 = v133;
    if (v51 < v52)
    {
      v65 = v163;
      v158(v156, v163, v13);
      v66 = v162;
      sub_25BCB6F5C();
      v67 = *(v66[4] + 8);
      v56 = sub_25BCB629C();
      (*(v54 + 8))(v64, a3);
      v59 = *(v146 + 8);
      v142 = v146 + 8;
      v59(v65, v13);
LABEL_23:
      v45 = v153;
      if ((v56 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    swift_getAssociatedConformanceWitness();
    sub_25BCB790C();
    sub_25BCB788C();
    v76 = *(v162[4] + 8);
    v77 = v151;
    v78 = sub_25BCB628C();
    (*(v54 + 8))(v64, a3);
    v45 = v153;
    v46 = v163;
    if ((v78 & 1) == 0)
    {
      (*(v146 + 8))(v163, v13);
      goto LABEL_53;
    }

    (*(v54 + 16))(v64, v77, a3);
    v69 = v156;
LABEL_26:
    sub_25BCB6F5C();
    swift_getAssociatedConformanceWitness();
    v70 = sub_25BCB629C();
    v71 = v146 + 8;
    v59 = *(v146 + 8);
    v59(v69, v13);
    v142 = v71;
    v59(v46, v13);
    if ((v70 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v60 = sub_25BCB6F9C();
  if (v60 >= sub_25BCB6F9C())
  {
    v68 = v133;
    (*(v133 + 16))(v155, a2, a3);
    v69 = v156;
    v54 = v68;
    goto LABEL_26;
  }

  v158(v156, v46, v13);
  v61 = v155;
  sub_25BCB6F5C();
  v62 = *(v9[4] + 8);
  v63 = sub_25BCB629C();
  v54 = v133;
  (*(v133 + 8))(v61, a3);
  v59 = *(v146 + 8);
  v142 = v146 + 8;
  v59(v46, v13);
  if ((v63 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_33:
  v150 = v59;
  v132 = swift_getAssociatedConformanceWitness();
  sub_25BCB790C();
  v82 = v147;
  sub_25BCB788C();
  v83 = v155;
  sub_25BCB743C();
  v85 = v54 + 8;
  v84 = *(v54 + 8);
  v84(v82, a3);
  sub_25BCB6F6C();
  v143 = v84;
  v84(v83, a3);
  v163 = 0;
  v141 = (v85 + 8);
  v144 = v85;
  v146 += 40;
  v147 = (v85 + 32);
  for (i = v44; ; (*v146)(&v45[i], v92, v13))
  {
    v86 = v160;
    v158(v160, &v45[v44], v13);
    v87 = sub_25BCB6FAC();
    v88 = v162;
    if (((v87 ^ sub_25BCB6FAC()) & 1) == 0)
    {
      v99 = sub_25BCB6F9C();
      v94 = v161;
      if (v99 >= sub_25BCB6F9C())
      {
        v93 = v155;
        (*v141)(v155, v94, a3);
        v108 = v156;
        sub_25BCB6F5C();
        swift_getAssociatedConformanceWitness();
        v96 = sub_25BCB629C();
        v109 = v150;
        v150(v108, v13);
        v110 = v86;
        v92 = v108;
        v98 = v109(v110, v13);
      }

      else
      {
        v100 = v156;
        v158(v156, v86, v13);
        v93 = v155;
        sub_25BCB6F5C();
        v101 = *(v88[4] + 8);
        v96 = sub_25BCB629C();
        v143(v93, a3);
        v102 = v86;
        v92 = v100;
        v98 = (v150)(v102, v13);
      }

LABEL_44:
      v45 = v153;
      if ((v96 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

    v89 = sub_25BCB6FAC();
    v90 = sub_25BCB6F9C();
    v91 = sub_25BCB6F9C();
    if (v89)
    {
      v92 = v156;
      if (v91 >= v90)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        swift_getAssociatedConformanceWitness();
        v113 = v160;
        v114 = sub_25BCB629C();
        v115 = v150;
        v150(v92, v13);
        v94 = v161;
        v116 = v162;
        if (v114)
        {
          v98 = v115(v113, v13);
          v45 = v153;
          v93 = v155;
          goto LABEL_45;
        }

        v158(v92, v113, v13);
        v122 = v115;
        v93 = v155;
        sub_25BCB6F5C();
        v123 = *(v116[4] + 8);
        v96 = sub_25BCB629C();
        v143(v93, a3);
        v98 = v122(v113, v13);
      }

      else
      {
        v93 = v155;
        v94 = v161;
        (*v141)(v155, v161, a3);
        sub_25BCB6F5C();
        swift_getAssociatedConformanceWitness();
        v95 = v160;
        v96 = sub_25BCB629C();
        v97 = v150;
        v150(v92, v13);
        v98 = v97(v95, v13);
      }

      goto LABEL_44;
    }

    v45 = v153;
    v92 = v156;
    if (v90 < v91)
    {
      v103 = v160;
      v158(v156, v160, v13);
      v93 = v155;
      v104 = v162;
      sub_25BCB6F5C();
      v105 = *(v104[4] + 8);
      v94 = v161;
      v106 = sub_25BCB629C();
      v143(v93, a3);
      v107 = v103;
      v92 = v156;
      v98 = (v150)(v107, v13);
      if ((v106 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

    sub_25BCB790C();
    v93 = v155;
    sub_25BCB788C();
    v94 = v161;
    v117 = *(v162[4] + 8);
    v118 = sub_25BCB628C();
    v143(v93, a3);
    if ((v118 & 1) == 0)
    {
      break;
    }

    (*v141)(v93, v94, a3);
    sub_25BCB6F5C();
    swift_getAssociatedConformanceWitness();
    v119 = v160;
    v120 = sub_25BCB629C();
    v121 = v150;
    v150(v92, v13);
    v98 = v121(v119, v13);
    if ((v120 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_45:
    MEMORY[0x28223BE20](v98);
    v111 = v152;
    *(&v130 - 4) = a3;
    *(&v130 - 3) = v111;
    v128 = v149;
    v112 = v163;
    sub_25BAB2F30(v154, sub_25BB6D984, (&v130 - 6), a3, MEMORY[0x277D84A98]);
    v163 = v112;
    sub_25BCB742C();
    (*v147)(v45, v93, a3);
    v44 = i;
  }

  v150(v160, v13);
LABEL_55:
  v125 = v143;
  v143(v94, a3);
  v125(v154, a3);
  v124 = v131;
  v54 = v133;
LABEL_56:
  (*(v54 + 16))(v124, v45, a3);
  result = (*(v130 + 8))(v45, TupleTypeMetadata2);
  v127 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_25BB6D40C(uint64_t a1)
{
  result = sub_25BB6D434();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB6D434()
{
  result = qword_27FBB4E70;
  if (!qword_27FBB4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemArc4RandomNumberGenerator(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SystemArc4RandomNumberGenerator(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy40_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BB6D5D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_25BB6D620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25BB6D67C(uint64_t a1)
{
  result = sub_25BB189FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB6D6A4(uint64_t a1)
{
  result = sub_25BB6D6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB6D6CC()
{
  result = qword_27FBB4E78;
  if (!qword_27FBB4E78)
  {
    type metadata accessor for AnyRandomNumberGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4E78);
  }

  return result;
}

uint64_t sub_25BB6D720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E90, &unk_25BCC2620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB6D788(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[6];
  return sub_25BB6AF9C(a1, v1[5]);
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

unint64_t sub_25BB6D800()
{
  result = qword_27FBB4E98;
  if (!qword_27FBB4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4E98);
  }

  return result;
}

uint64_t sub_25BB6D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v7 = swift_allocObject();
  sub_25BA97060(&v9, v7 + 16);
  return v7;
}

unint64_t sub_25BB6D930()
{
  result = qword_27FBB4EA0[0];
  if (!qword_27FBB4EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB4EA0);
  }

  return result;
}

uint64_t sub_25BB6D9C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v2, a1);
  return sub_25BB6DBA0(v10, a2);
}

uint64_t sub_25BB6DA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_9();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, v3, a2);
  sub_25BAC27B0(a1, v15);
  return sub_25BB6DC44(v12, v15, a2, a3);
}

uint64_t sub_25BB6DBA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[1] = sub_25BCB657C();
  type metadata accessor for Sampling.IteratorFactory();
  result = sub_25BB6DC08(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB6DC08(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_25BB6E538(a1);
}

uint64_t sub_25BB6DC44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v17 = *(*(*(v16 + 8) + 8) + 8);
  a4[1] = sub_25BCB657C();
  type metadata accessor for Sampling.SampledIteratorFactory();
  (*(v9 + 16))(v15, a1, a3);
  sub_25BAC27B0(a2, v20);
  v18 = sub_25BB6DD80(v15, v20);
  __swift_destroy_boxed_opaque_existential_1(a2);
  result = (*(v9 + 8))(a1, a3);
  *a4 = v18;
  return result;
}

uint64_t sub_25BB6DD80(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_25BB6E73C(a1, a2);
}

uint64_t (*sub_25BB6DE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>))()
{
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  swift_getAssociatedTypeWitness();
  v16 = swift_allocBox();
  (*(v9 + 16))(v15, a1, a2);
  sub_25BCB655C();
  (*(v9 + 8))(a1, a2);
  result = swift_allocObject();
  *(result + 2) = a2;
  *(result + 3) = a3;
  *(result + 4) = v16;
  *a4 = sub_25BB6ECC4;
  a4[1] = result;
  return result;
}

uint64_t sub_25BB6DF58()
{
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_25BCB6EDC();
  return swift_endAccess();
}

uint64_t sub_25BB6E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  swift_getAssociatedTypeWitness();
  v21 = swift_allocBox();
  (*(v14 + 16))(v20, a2, a4);
  sub_25BCB655C();
  (*(v14 + 8))(a2, a4);
  OUTLINED_FUNCTION_9();
  v23 = v22;
  v24 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v26 = *(v25 + 64);
  v27 = swift_allocObject();
  *(v27 + 2) = a3;
  *(v27 + 3) = a4;
  *(v27 + 4) = a5;
  *(v27 + 5) = a6;
  *(v27 + 6) = v21;
  result = (*(v23 + 32))(&v27[v24], a1, a3);
  *a7 = sub_25BB6EC80;
  a7[1] = v27;
  return result;
}

uint64_t sub_25BB6E1E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v29 = a1;
  v31 = a4;
  v4 = *(*(a3 + 8) + 8);
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_25BCB6E8C();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v27);
  v10 = &v26 - v9;
  v28 = *(AssociatedTypeWitness - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_25BCB6EDC();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v10, v27);
    v14 = *(v4 + 8);
    v15 = swift_getAssociatedTypeWitness();
    v16 = v31;
    v17 = 1;
  }

  else
  {
    v18 = v28;
    (*(v28 + 32))(v13, v10, AssociatedTypeWitness);
    v19 = sub_25BCB6B8C();
    v21 = v20;
    v22 = *(v4 + 8);
    v23 = swift_getAssociatedTypeWitness();
    v24 = v31;
    (*(*(v23 - 8) + 16))(v31, v21, v23);
    v19(v32, 0);
    (*(v18 + 8))(v13, AssociatedTypeWitness);
    v16 = v24;
    v17 = 0;
    v15 = v23;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

uint64_t Sampling.Iterator.next()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t (*sub_25BB6E5AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2 + *(v4 + 96), v5);
  return sub_25BB6DE10(v8, v5, *(v4 + 88), a2);
}

uint64_t sub_25BB6E73C(uint64_t a1, __int128 *a2)
{
  sub_25BA97060(a2, v2 + *(*v2 + 136));

  return sub_25BB6E538(a1);
}

uint64_t sub_25BB6E794@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v19 - v7;
  v9 = *(v4 + 96);
  (*(v10 + 16))(&v19 - v7, v2 + v9, v5);
  v11 = (v2 + *(*v2 + 136));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(v4 + 128);
  v20 = (*(v13 + 8))(v2 + v9, v5, v14, v12, v13);
  v15 = *(*(v14 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v16 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  return sub_25BB6E018(v8, &v20, v5, v16, v14, WitnessTable, a2);
}

uint64_t sub_25BB6E97C()
{
  v0 = sub_25BB6E6B4();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t sub_25BB6E9D8(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6EA30()
{
  Sampling.makeIterator()();
  v1 = *v0;
}

uint64_t sub_25BB6EA60()
{
  v1 = *(*v0 + 80);
  v2 = v0 + *(*v0 + 96);
  return sub_25BCB6ABC();
}

uint64_t sub_25BB6EAD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB6EB24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB6EB78(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB6EC80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  return sub_25BB6E1E4(v1 + ((*(*(v1[2] - 8) + 80) + 56) & ~*(*(v1[2] - 8) + 80)), v1[2], v1[4], a1);
}

uint64_t sub_25BB6ECC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25BB6DF58();
}

uint64_t sub_25BB6ECDC()
{
  v1 = sub_25BC07EE0(v0);

  return v1;
}

uint64_t sub_25BB6ED10()
{
  v0 = sub_25BC08208();

  return v0;
}

unint64_t sub_25BB6ED50(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_25BCB70FC();

    v10 = 0xD00000000000001DLL;
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](0x746F672074756220, 0xEE00206B6E617220);
    v7 = sub_25BCB77FC();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_25BCB70FC();

    v10 = 0xD00000000000001FLL;
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x25F876F80](a1, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v6);

    MEMORY[0x25F876C90](0x746F672074756220, 0xEF20657061687320);
    v7 = MEMORY[0x25F876F80](a2, v5);
LABEL_5:
    MEMORY[0x25F876C90](v7);

    return v10;
  }

  if (a1 | a2)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void sub_25BB6EF44()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v45 = v2;
  v43 = v3;
  v42 = v4;
  v41 = v5;
  v44 = v6;
  v48 = v7;
  v46 = *v0;
  v47 = v8;
  v9 = sub_25BCB6CDC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v11 = sub_25BCB6CFC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_25BCB603C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_1();
  sub_25BB2BA50(0, &qword_28154BDB0, 0x277D85C78);
  sub_25BCB602C();
  (*(v14 + 104))(v19, *MEMORY[0x277D85258], v11);
  sub_25BB72FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BB30E7C(&qword_28154BE40, &qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BCB702C();
  v0[2] = sub_25BCB6D2C();
  *(v0 + 44) = 0;
  v0[12] = 0;
  v0[18] = sub_25BCB614C();
  sub_25BABEF40(v43, (v0 + 3));
  *(v0 + 76) = v45 & 1;
  v0[13] = v48;
  v0[14] = v44;
  v0[15] = v41;
  v0[16] = v42;
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  v22 = sub_25BB6F544(v47, v43, v45 & 1);
  v0[10] = v22;
  v23 = *(v41 + 16);
  v24 = [v22 outputNames];
  v25 = sub_25BCB673C();

  v26 = *(v25 + 16);

  if (v26 < v23)
  {
    goto LABEL_4;
  }

  sub_25BADBF48(v41);
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
  *(swift_allocObject() + 16) = v28;

  v29 = sub_25BB145F8();
  v30 = [v1[10] outputNames];
  v31 = sub_25BCB673C();

  LOBYTE(v30) = sub_25BB6FB88(v31, v29);

  if ((v30 & 1) == 0)
  {
LABEL_4:
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDD110);
    sub_25BADBF48(v41);
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
    *(swift_allocObject() + 16) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5090, &unk_25BCC2AC0);
    sub_25BCB73CC();

    MEMORY[0x25F876C90](0xD00000000000002DLL, 0x800000025BCDD130);
    v35 = [v1[10] outputNames];
    v36 = MEMORY[0x277D837D0];
    v37 = sub_25BCB673C();

    v38 = MEMORY[0x25F876F80](v37, v36);
    v40 = v39;

    MEMORY[0x25F876C90](v38, v40);

    MEMORY[0x25F876C90](11815, 0xE200000000000000);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890();
  }

  sub_25BABF0A8(v43);

  type metadata accessor for EspressoBufferCache();
  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x277D84F98];
  v1[17] = v32;
  OUTLINED_FUNCTION_10_16();
}

id sub_25BB6F544(void *a1, uint64_t a2, char a3)
{
  v6 = sub_25BCB5EBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v14 = sub_25BCB5EEC();
  __swift_project_value_buffer(v14, qword_28154BEB8);
  sub_25BCB5EAC();
  v15 = sub_25BCB5EDC();
  v16 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v17 = swift_slowAlloc();
    v28 = a1;
    v18 = a2;
    v19 = a3;
    v20 = v17;
    *v17 = 0;
    v21 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v15, v16, v21, "Build Espresso Network", "", v20, 2u);
    v22 = v20;
    a3 = v19;
    a2 = v18;
    a1 = v28;
    MEMORY[0x25F8797F0](v22, -1, -1);
  }

  (*(v7 + 16))(v11, v13, v6);
  v23 = sub_25BCB5F2C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_25BCB5F1C();
  (*(v7 + 8))(v13, v6);
  v26 = sub_25BB70B48(a1, a2, a3 & 1);
  sub_25BADBBAC();

  return v26;
}

uint64_t sub_25BB6FB88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    result = sub_25BB3BE50(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v4 = sub_25BAD9FE0(sub_25BADA100, v7, a1);

      return v4;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      return 1;
    }

    return sub_25BB729F0(a1, a2);
  }

  return result;
}

void sub_25BB6FC6C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v2 = sub_25BCB5EBC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_25BCB5EEC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = v1;
  sub_25BAA51C8(v1 + 168, &v49);
  if (*(&v50 + 1))
  {
    sub_25BAC27B0(&v49, &v45);
    sub_25BABF0A8(&v49);
    sub_25BA97060(&v45, v55);
    sub_25BAC27B0(v55, &v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if (!swift_dynamicCast())
    {
      goto LABEL_27;
    }

    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    sub_25BAA6F5C(&v49, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  v42 = v5;
  if (qword_28154BEB0 != -1)
  {
    OUTLINED_FUNCTION_3_18();
  }

  v21 = __swift_project_value_buffer(v11, qword_28154BEB8);
  (*(v14 + 16))(v19, v21, v11);
  sub_25BCB5EAC();
  *swift_slowAlloc() = 0;
  v22 = sub_25BCB5EDC();
  sub_25BCB6D5C();
  v23 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_13_15(&dword_25BA90000, v24, v25, v23, "Build Program", "");
  sub_25BAD6FB0(v1, &v49);
  sub_25BC46E18(v55);
  type metadata accessor for MILProgramBuilder();
  swift_allocObject();
  sub_25BBA35C4(&v49, 0, 0, v55);
  sub_25BBA003C();

  sub_25BCB6D4C();
  v26 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_13_15(&dword_25BA90000, v27, v28, v26, "Build Program", "");

  OUTLINED_FUNCTION_89();
  (*(v42 + 8))(v10, v2);
  v29 = (*(v14 + 8))(v19, v11);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v30 = sub_25BC46FA0(v29);
  sub_25BAA51C8(v1 + 168, &v49);
  v53 = v30;
  if (v30 == 2)
  {
    if (*(&v50 + 1))
    {
      sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
      v43[0] = v49;
      v43[1] = v50;
      v43[2] = v51;
      v44 = v52;
      sub_25BABEF40(v43, &v45);
      v30 = sub_25BB70558(&v45);
      sub_25BABF0A8(v43);
      goto LABEL_15;
    }

    sub_25BB703F4(2, v43);
    sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_4_25();
    v30 = sub_25BB70558(&v45);
    v31 = &unk_27FBB5070;
    v32 = &unk_25BCC2AA8;
  }

  else
  {
    if (*(&v50 + 1))
    {
      sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
      v45 = v49;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      goto LABEL_15;
    }

    sub_25BB703F4(v30 & 1, v43);
    sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_4_25();
    v31 = &qword_27FBB6730;
    v32 = &qword_25BCBC4B0;
  }

  sub_25BAA6F5C(&v49, v31, v32);
LABEL_15:
  sub_25BAA51C8(&v45, &v49);
  if (!*(&v50 + 1))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_27:
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    v45 = v49;
    MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCDD070);
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0xD000000000000034, 0x800000025BCDD090);
    v49 = v45;
    v54 = 3;
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890();
  }

  v33 = *(&v51 + 1);
  sub_25BABF0A8(&v49);
  if (v33 == 1 && (v30 & 1) == 0)
  {
    if (qword_27FBB3390 != -1)
    {
      swift_once();
    }

    v34 = sub_25BCB5F6C();
    __swift_project_value_buffer(v34, qword_27FBDB4C0);
    v35 = sub_25BCB5F4C();
    v36 = sub_25BCB6CBC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *&v49 = swift_slowAlloc();
      *v37 = 136315394;
      v38 = sub_25BB72474(1718378856, 0xE400000000000000, &v49);

      *(v37 + 4) = v38;
      *(v37 + 12) = 2080;
      v39 = sub_25BB72474(0x656C676E6973, 0xE600000000000000, &v49);

      *(v37 + 14) = v39;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_89();
    }
  }

  v40 = OUTLINED_FUNCTION_11_3();
  sub_25BBABA44(v40);
  v41 = OUTLINED_FUNCTION_11_3();
  sub_25BBABAF8(v41);
  sub_25BAA51C8(&v45, &v49);
  if (!*(&v50 + 1))
  {
    goto LABEL_26;
  }

  swift_allocObject();
  sub_25BB6EF44();
  sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BA9AC78(v20);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BB703F4(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2 || (a1 & 1) != 0 || (static ComputeDevice.gpu.getter(&v12), !*(&v13 + 1)))
  {
    if (qword_28154E200 != -1)
    {
      swift_once();
    }

    v4 = qword_2815573E8;
    v5 = unk_2815573F0;
    v6 = __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
    v7 = *(*(v4 - 8) + 64);
    MEMORY[0x28223BE20](v6);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9);
    sub_25BC16FAC(1, v9, v4, v5, a2);
  }

  else
  {
    v3 = v13;
    *a2 = v12;
    *(a2 + 16) = v3;
    *(a2 + 32) = v14;
    *(a2 + 48) = v15;
  }
}

uint64_t sub_25BB70558(uint64_t a1)
{
  sub_25BAA51C8(a1, &v3);
  if (*(&v4 + 1))
  {
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = v5;
    v8 = v6;
    v1 = *(&v5 + 1);
    sub_25BB73038(*(&v5 + 1));
    sub_25BABF0A8(v7);
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0;
      }

      sub_25BB7304C(v1);
    }
  }

  else
  {
    sub_25BAA6F5C(&v3, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  return 1;
}

uint64_t sub_25BB705FC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_25BCB598C();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25BB706C0, 0, 0);
}

uint64_t sub_25BB706C0()
{
  v1 = v0[21];
  (*(v0[20] + 16))(v1, v0[16], v0[19]);
  v2 = type metadata accessor for MILProgramParser();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[22] = sub_25BC2CFC8(v1, 1852399981, 0xE400000000000000);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_25BB707A4;

  return sub_25BC2C79C();
}

uint64_t sub_25BB707A4()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_25BB70AA4;
  }

  else
  {
    v3 = sub_25BB708B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25BB708B8()
{
  v1 = v0[22];
  v2 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs + 8);
      v5 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs);
      if (v5)
      {
        v6 = v0[20];
        v7 = v0[17];
        v16 = v0[16];
        v17 = v0[19];
        v8 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs + 8);
        sub_25BABEF40(v7, (v0 + 2));
        sub_25BABEF40(v7, (v0 + 9));
        sub_25BB73060(v3);
        v2;
        sub_25BB73060(v5);
        sub_25BB70558((v0 + 9));
        sub_25BAA6F5C((v0 + 9), &qword_27FBB6730, &qword_25BCBC4B0);
        v9 = swift_allocObject();
        sub_25BB6EF44();

        sub_25BABF0A8(v7);
        (*(v6 + 8))(v16, v17);
        goto LABEL_7;
      }

      sub_25BB73060(*(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs));
    }
  }

  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[16];
  sub_25BABF0A8(v0[17]);
  (*(v11 + 8))(v12, v10);
  v9 = 0;
LABEL_7:
  v13 = v0[21];

  v14 = v0[1];

  return v14(v9);
}

uint64_t sub_25BB70AA4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  sub_25BABF0A8(v5);
  (*(v4 + 8))(v6, v3);

  v7 = v0[1];
  v8 = v0[24];

  return v7();
}

id sub_25BB70B48(void *a1, uint64_t a2, char a3)
{
  v6 = sub_25BB70D94();
  v7 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  if (v7 == 2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25BCBAE40;
    *(v8 + 32) = sub_25BB70D94();
    if (qword_28154E200 != -1)
    {
      swift_once();
    }

    v9 = qword_2815573E8;
    v10 = unk_2815573F0;
    v11 = __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
    v12 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v11);
    v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v15 + 16))(v14);
    sub_25BC16FAC(1, v14, v9, v10, v24);
    v16 = v25;
    v17 = objc_allocWithZone(SNNComputeUnit);
    v18 = 2;
    if (v16 == 2)
    {
      v18 = 3;
    }

    if (v16 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 initWithComputeUnitKind_];
    sub_25BABF0A8(v24);
    v7 = 0;
    *(v8 + 40) = v20;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25BCBB6D0;
    *(v8 + 32) = sub_25BB70D94();
    if (v7 == 1)
    {
      v7 = 0;
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  v21 = sub_25BB70DEC(a3 & 1);
  objc_allocWithZone(SNNEspressoV1ExecutionContext);
  return sub_25BB71FBC(a1, v6, v8, v7, v21);
}

id sub_25BB70D94()
{
  v1 = *(v0 + 40);
  v2 = objc_allocWithZone(SNNComputeUnit);
  v3 = 2;
  if (v1 == 2)
  {
    v3 = 3;
  }

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return [v2 initWithComputeUnitKind_];
}

id sub_25BB70DEC(char a1)
{
  v2 = objc_allocWithZone(SNNComputePrecision);
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return [v2 initWithComputePrecisionKind_];
}

void sub_25BB70E3C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v2 = *(v0 + 136);

  v3 = sub_25BB70FE0();
  v5 = v4;

  v6 = sub_25BA9BEA0(v3);
  if (v5 != v6)
  {
    if (v5 >= v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    sub_25BAB4D78(v5, (v3 & 0xC000000000000001) == 0, v3);
    sub_25BAB4D78(v7 - 1, (v3 & 0xC000000000000001) == 0, v3);
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v5, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v10 = Strong;

        v11 = sub_25BC76C08();
        [v11 lock];

        if ((*(v10 + 40) & 0x8000000000000000) != 0)
        {
          v12 = *(v10 + 32);
          swift_unknownObjectRetain();
        }

        else
        {
          sub_25BC76F00();
        }

        [*(v10 + 48) unlock];

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      ++v5;
    }

    while (v7 != v5);
  }

  sub_25BABF0A8(v1 + 24);
  v13 = *(v1 + 96);

  v15 = *(v1 + 104);
  v14 = *(v1 + 112);

  v17 = *(v1 + 120);
  v16 = *(v1 + 128);

  v18 = *(v1 + 136);

  v19 = *(v1 + 144);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BB70FE0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 16);
  v4 = sub_25BB7217C();
  sub_25BCA4950();
  v6 = v5;
  sub_25BCB617C();
  sub_25BAB3820();
  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_25BB710B4()
{
  sub_25BB70E3C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB7110C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();

  v4 = *(v1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  sub_25BC1A338();
  *(v1 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_25BB71230@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25BB70FE0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_25BB71310(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB7135C()
{
  sub_25BADB778(&v8);
  result = v8;
  v1 = *(v8 + 16);
  if (v1)
  {
    v2 = (v8 + 32);
    v3 = 1;
    while (1)
    {
      v4 = *v2++;
      v5 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        break;
      }

      v3 = v5;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = 1;
LABEL_7:

  sub_25BADB604(&v7);
  if (v7 - 1 > 0xA)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_25BCC2B60[(v7 - 1)];
  }

  result = v5 * v6;
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_25BB71410(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, char a5, char a6, void *a7)
{
  v13 = *a3;
  v14 = *a4;
  *(v7 + 217) = 0;
  swift_weakInit();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a5 & 1;
  swift_unknownObjectUnownedInit();
  bzero((v7 + 48), 0xA8uLL);
  OUTLINED_FUNCTION_14_19();
  bzero((v7 + 48), 0xA8uLL);
  sub_25BCB617C();
  swift_endAccess();
  *(v7 + 216) = a6 & 1;
  if (v14 >= 0xD || ((0x1515u >> v14) & 1) == 0)
  {
    sub_25BCB74CC();
    __break(1u);
LABEL_6:
    sub_25BCB70FC();

    v18 = MEMORY[0x25F876F80](v13, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v18);

    MEMORY[0x25F876C90](0x6020726F662060, 0xE700000000000000);
    MEMORY[0x25F876C90](a1, a2);
    MEMORY[0x25F876C90](96, 0xE100000000000000);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890();
  }

  v15 = dword_25BCC2B2C[v14];
  OUTLINED_FUNCTION_14_19();
  *(v7 + 208) = v15;
  v16 = *(v13 + 16);
  sub_25BCB617C();
  LODWORD(v16) = espresso_buffer_pack_tensor_shape();
  swift_endAccess();

  if (v16)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t sub_25BB71650()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    v4 = sub_25BC76C08();
    [v4 lock];

    if ((*(v3 + 40) & 0x8000000000000000) != 0)
    {
      v5 = *(v3 + 32);
      swift_unknownObjectRetain();
    }

    else
    {
      sub_25BC76F00();
    }

    [*(v3 + 48) unlock];
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_10();
  }

  v6 = *(v1 + 24);

  swift_unknownObjectUnownedDestroy();
  swift_weakDestroy();
  return v1;
}

uint64_t sub_25BB71700()
{
  sub_25BB71650();

  return swift_deallocClassInstance();
}

_BYTE *sub_25BB71768(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB71848()
{
  result = qword_27FBB5030;
  if (!qword_27FBB5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5030);
  }

  return result;
}

unint64_t sub_25BB718A0()
{
  result = qword_27FBB5038;
  if (!qword_27FBB5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5038);
  }

  return result;
}

uint64_t sub_25BB71938(float *a1, uint64_t a2, const float *a3, uint64_t a4, char a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v26 = a2;
  v25 = a4;
  v13 = sub_25BCB783C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a5;
  v28 = a6;
  ObjectType = swift_getObjectType();
  (*(a8 + 16))(&v27, ObjectType, a8);
  result = v27;
  v20 = *(v27 + 16);
  if (v20)
  {
    v21 = (v27 + 32);
    v22 = 1;
    while (1)
    {
      v23 = *v21++;
      v24 = v22 * v23;
      if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
      {
        break;
      }

      v22 = v24;
      if (!--v20)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    (*(v14 + 104))(v17, *MEMORY[0x277D84660], v13);
    sub_25BAA83F4(a3, v25, &v29, a1, v26, &v28);
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

void *sub_25BB71AE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a3 + 48);
  if (v7)
  {
    if (a1)
    {
      v8 = a2 - a1;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      return memmove(a1, v7, v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BB71B64()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_25BCB783C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *v2;
  sub_25BADB604(v30);
  LOBYTE(v27) = v16;
  if (sub_25BADB724(v30, &v27))
  {
    OUTLINED_FUNCTION_15_16();
    v17 = *(v0 + 48);
    v18 = sub_25BB7135C();
    if (v17)
    {
      v19 = v17 + v18;
    }

    else
    {
      v19 = 0;
    }

    sub_25BADB604(&v29);
    v28 = v16;
    sub_25BADB778(&v27);
    v20 = *(v27 + 16);
    if (v20)
    {
      v21 = (v27 + 32);
      v22 = 1;
      while (1)
      {
        v23 = *v21++;
        v24 = v22 * v23;
        if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
        {
          break;
        }

        v22 = v24;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_16:

    (*(v10 + 104))(v15, *MEMORY[0x277D84660], v7);
    sub_25BAA83F4(v17, v19, &v29, v6, v4, &v28);
    (*(v10 + 8))(v15, v7);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_15_16();
  v25 = *(v0 + 48);
  if (v25)
  {
    if (v6)
    {
      v26 = v4 - v6;
    }

    else
    {
      v26 = 0;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    memmove(v6, v25, v26);
LABEL_17:
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_20:
  __break(1u);
}

void *sub_25BB71D2C(const void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    return memmove(*(a3 + 48), a1, v7);
  }

  __break(1u);
  return result;
}

BOOL sub_25BB71DA0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_25BADB604(&v4);
  v3 = v1;
  return sub_25BADB724(&v4, &v3);
}

uint64_t sub_25BB71DE4(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 32);
  *(a1 + 216);
  sub_25BCB63CC();
  LODWORD(Strong) = espresso_network_bind_buffer();

  if (Strong)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDCEA0);
    type metadata accessor for EspressoBuffer();
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0x74656E206F742060, 0xEC0000006B726F77);
    sub_25BCB617C();
    sub_25BA97890();
  }

  return result;
}

uint64_t sub_25BB71F64@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = getpagesize();
  v5 = (result - 1);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v5 & 0x80000000) == 0)
  {
    *a2 = (v5 & a1) == 0;
    return result;
  }

  __break(1u);
  return result;
}

id sub_25BB71FBC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v17[1] = *MEMORY[0x277D85DE8];
  sub_25BB2BA50(0, &qword_28154BDF8, off_279970B98);
  v11 = sub_25BCB672C();

  v17[0] = 0;
  v12 = [v6 initWithMILProgram:a1 primaryComputeUnit:a2 computeUnits:v11 preferredMetalDevice:a4 computePrecision:a5 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_25BCB58CC();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_25BB720F0()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v1 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v1);
  OUTLINED_FUNCTION_6_27(v2);
  return v0;
}

uint64_t sub_25BB7217C()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v3 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

uint64_t sub_25BB721E8()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE0, &unk_25BCC2B00);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_7_19(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = 2 * (v4 / 24);
  return v0;
}

uint64_t sub_25BB72260()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50E0, &qword_25BCBBD88);
  v1 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v1);
  OUTLINED_FUNCTION_6_27(v2);
  return v0;
}

uint64_t sub_25BB72310()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_8_20(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v5);
  OUTLINED_FUNCTION_6_27(v6);
  return v0;
}

size_t sub_25BB72384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_8_20(a1, a2, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = v5;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB72474(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_25BCB617C();
  v6 = sub_25BB72538(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_25BB2BA90(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25BB72538(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25BB72638(a5, a6);
    *a1 = v9;
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
    result = sub_25BCB71FC();
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

uint64_t sub_25BB72638(uint64_t a1, unint64_t a2)
{
  v4 = sub_25BB72684(a1, a2);
  sub_25BB727AC(&unk_286D424B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25BB72684(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_25BCB649C())
  {
    result = sub_25BB728A4();
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25BCB70EC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_25BCB71FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25BB727AC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_25BB728FC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25BB728A4()
{
  OUTLINED_FUNCTION_5_23();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_8_20(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  v6[2] = v0;
  v6[3] = 2 * v7 - 64;
  return v6;
}

char *sub_25BB728FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5080, &qword_25BCBB958);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_25BB729F0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_25BC42288(0, v5, v6);
    v7 = sub_25BB72B7C(v6, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v7 = sub_25BB72D08(v10, v5, sub_25BB7301C);
    MEMORY[0x25F8797F0](v10, -1, -1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t sub_25BB72B7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v25)
      {
        return v7 != v25;
      }

      if (v5 >= v25)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v26 = v5 + 1;
      v8 = (v24 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a4 + 40);
      sub_25BCB79CC();
      sub_25BCB617C();
      sub_25BCB625C();
      v12 = sub_25BCB7A3C();
      v13 = ~(-1 << *(a4 + 32));
      do
      {
        v14 = v12 & v13;
        v15 = (v12 & v13) >> 6;
        v16 = 1 << (v12 & v13);
        if ((v16 & *(v6 + 8 * v15)) == 0)
        {

          v5 = v26;
          goto LABEL_2;
        }

        v17 = (*(a4 + 48) + 16 * v14);
        if (*v17 == v10 && v17[1] == v9)
        {
          break;
        }

        v19 = sub_25BCB789C();
        v12 = v14 + 1;
      }

      while ((v19 & 1) == 0);

      v20 = *(v23 + 8 * v15);
      *(v23 + 8 * v15) = v20 | v16;
      v5 = v26;
      if ((v20 & v16) != 0)
      {
        continue;
      }

      break;
    }

    v21 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      ++v22;
      if (v21 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v25;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}