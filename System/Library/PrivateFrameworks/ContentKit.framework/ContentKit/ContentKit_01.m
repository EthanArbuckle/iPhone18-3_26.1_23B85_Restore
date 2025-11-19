uint64_t sub_21E1D6FA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB84D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E1D7020()
{
  result = qword_27CEB84E0;
  if (!qword_27CEB84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB84E0);
  }

  return result;
}

unint64_t sub_21E1D7074()
{
  result = qword_27CEB84F8;
  if (!qword_27CEB84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB84F8);
  }

  return result;
}

unint64_t sub_21E1D70CC()
{
  result = qword_27CEB8500;
  if (!qword_27CEB8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8500);
  }

  return result;
}

void sub_21E1D72DC()
{
  sub_21E3435D0();
  if (v0 <= 0x3F)
  {
    sub_21E1D7350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21E1D7350()
{
  if (!qword_27CEB8580)
  {
    sub_21E3435D0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CEB8580);
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

uint64_t sub_21E1D73EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 17))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_21E1D7434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFGenerativeModelName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_21E1D78B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_48_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21E1D7998(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_146(a1);
}

_BYTE *sub_21E1D79E4(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AdapterVersion.Diagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_21E1D7B18(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_48_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E1D7BF4()
{
  result = qword_27CEB8588;
  if (!qword_27CEB8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8588);
  }

  return result;
}

unint64_t sub_21E1D7C4C()
{
  result = qword_27CEB8590;
  if (!qword_27CEB8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8590);
  }

  return result;
}

unint64_t sub_21E1D7CA4()
{
  result = qword_27CEB8598;
  if (!qword_27CEB8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8598);
  }

  return result;
}

unint64_t sub_21E1D7CFC()
{
  result = qword_27CEB85A0;
  if (!qword_27CEB85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85A0);
  }

  return result;
}

unint64_t sub_21E1D7D54()
{
  result = qword_27CEB85A8;
  if (!qword_27CEB85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85A8);
  }

  return result;
}

unint64_t sub_21E1D7DAC()
{
  result = qword_27CEB85B0;
  if (!qword_27CEB85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85B0);
  }

  return result;
}

unint64_t sub_21E1D7E04()
{
  result = qword_27CEB85B8;
  if (!qword_27CEB85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85B8);
  }

  return result;
}

unint64_t sub_21E1D7E5C()
{
  result = qword_27CEB85C0;
  if (!qword_27CEB85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85C0);
  }

  return result;
}

unint64_t sub_21E1D7EB4()
{
  result = qword_27CEB85C8;
  if (!qword_27CEB85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85C8);
  }

  return result;
}

unint64_t sub_21E1D7F0C()
{
  result = qword_27CEB85D0;
  if (!qword_27CEB85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85D0);
  }

  return result;
}

unint64_t sub_21E1D7F64()
{
  result = qword_27CEB85D8;
  if (!qword_27CEB85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85D8);
  }

  return result;
}

unint64_t sub_21E1D7FBC()
{
  result = qword_27CEB85E0;
  if (!qword_27CEB85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85E0);
  }

  return result;
}

unint64_t sub_21E1D8014()
{
  result = qword_27CEB85E8;
  if (!qword_27CEB85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85E8);
  }

  return result;
}

unint64_t sub_21E1D806C()
{
  result = qword_27CEB85F0;
  if (!qword_27CEB85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85F0);
  }

  return result;
}

unint64_t sub_21E1D80C4()
{
  result = qword_27CEB85F8;
  if (!qword_27CEB85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB85F8);
  }

  return result;
}

unint64_t sub_21E1D811C()
{
  result = qword_27CEB8600;
  if (!qword_27CEB8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8600);
  }

  return result;
}

unint64_t sub_21E1D8174()
{
  result = qword_27CEB8608;
  if (!qword_27CEB8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8608);
  }

  return result;
}

unint64_t sub_21E1D81CC()
{
  result = qword_27CEB8610;
  if (!qword_27CEB8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8610);
  }

  return result;
}

unint64_t sub_21E1D8224()
{
  result = qword_27CEB8618;
  if (!qword_27CEB8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8618);
  }

  return result;
}

unint64_t sub_21E1D827C()
{
  result = qword_27CEB8620;
  if (!qword_27CEB8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8620);
  }

  return result;
}

unint64_t sub_21E1D82D4()
{
  result = qword_27CEB8628;
  if (!qword_27CEB8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8628);
  }

  return result;
}

unint64_t sub_21E1D832C()
{
  result = qword_27CEB8630;
  if (!qword_27CEB8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8630);
  }

  return result;
}

unint64_t sub_21E1D8384()
{
  result = qword_27CEB8638;
  if (!qword_27CEB8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8638);
  }

  return result;
}

unint64_t sub_21E1D83DC()
{
  result = qword_27CEB8640;
  if (!qword_27CEB8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8640);
  }

  return result;
}

uint64_t sub_21E1D8430(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21E1C99C4(a1, a2);
  }

  return a1;
}

_OWORD *sub_21E1D8444(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_21E343F40();
}

uint64_t OUTLINED_FUNCTION_38_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return MEMORY[0x2821FD170](a1, 0xD00000000000002BLL, (a2 - 32) | 0x8000000000000000, 0);
}

void OUTLINED_FUNCTION_43_0()
{

  JUMPOUT(0x223D55250);
}

uint64_t OUTLINED_FUNCTION_44_0()
{
}

void OUTLINED_FUNCTION_46_0()
{

  JUMPOUT(0x223D55250);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_allocObject();
}

uint64_t WFContentItem.objectRepresentation<A>(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_21E1D89D8;

  return sub_21E1D8BA0(a1, a2);
}

uint64_t sub_21E1D89D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v5();
  }

  else
  {

    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_21E1D8B04()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[6];
  if (v1)
  {
    v0[2] = v1;
    if (swift_dynamicCast())
    {
      v2 = v0[3];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_21E1D8BA0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_21E1D8BC4, 0, 0);
}

uint64_t sub_21E1D8BC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8748);
  OUTLINED_FUNCTION_6_2();
  *v5 = v6;
  v5[1] = sub_21E1D8CCC;
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_21E1D8CCC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1D8DF4()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_8();

  return v0();
}

void sub_21E1D8E50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8750);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  (*(v8 + 16))(aBlock - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  aBlock[4] = sub_21E1DA4D4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E1D9104;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);

  [a2 getObjectRepresentation:v13 forClass:swift_getObjCClassFromMetadata() options:a4];
  _Block_release(v13);
}

uint64_t sub_21E1D9020(uint64_t a1, int a2, int a3, id a4)
{
  if (a4)
  {
    v6[0] = a4;
    v4 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8750);
    return sub_21E343A60();
  }

  else
  {
    sub_21E1DA574(a1, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB9230);
    swift_dynamicCast();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8750);
    return sub_21E343A70();
  }
}

uint64_t sub_21E1D9104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (!a2)
  {
    memset(v14, 0, sizeof(v14));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  *&v12 = a2;
  sub_21E1D8444(&v12, v14);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_21E3437E0();
  v5 = v9;
LABEL_6:

  swift_unknownObjectRetain();
  v10 = a4;
  v7(v14, v8, v5, a4);

  return sub_21E1CB318(v14);
}

uint64_t WFContentItem.fileRepresentation<A>(coercingTo:intermediaryFileType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E1D91F4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_21E343C70();
  OUTLINED_FUNCTION_6_2();
  *v4 = v5;
  v4[1] = sub_21E1D92FC;
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_21E1D92FC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1D9420()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_8();

  return v0();
}

void sub_21E1D947C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21E343C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
  v10 = sub_21E343A80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - v12;
  (*(v11 + 16))(aBlock - v12, a1, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a3;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_21E1DA308;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E1DA5FC;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);

  [a2 getFileRepresentation:v16 forType:a4];
  _Block_release(v16);
}

void sub_21E1D967C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21E343C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
  v9 = sub_21E343A80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  if (a1)
  {
    v13 = objc_opt_self();
    v14 = a1;
    v15 = [v13 itemWithFile_];
    if (v15)
    {
      v16 = v15;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() typeWithClass_];
      v18 = [objc_allocWithZone(WFCoercionOptions) init];
      (*(v10 + 16))(v12, a4, v9);
      v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = a5;
      (*(v10 + 32))(v20 + v19, v12, v9);
      aBlock[4] = sub_21E1DA3B8;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21E1D9B78;
      aBlock[3] = &block_descriptor_18;
      v21 = _Block_copy(aBlock);

      v22 = v30;
      [v16 getRepresentationsForType:v30 options:v18 completionHandler:v21];
      _Block_release(v21);

      return;
    }
  }

  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v24 = sub_21E3437E0();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v23 = sub_21E1DA258(v24, v26, 0, 0);
  }

  aBlock[0] = v23;
  v28 = a2;
  sub_21E343A60();
}

void sub_21E1D9988(uint64_t a1, id a2)
{
  if (a1 && sub_21E1C905C())
  {
    sub_21E20DAB0(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223D556A0](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 object];
      if (swift_dynamicCast())
      {
        sub_21E343C70();
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
        sub_21E343A80();
        sub_21E343A70();
        swift_unknownObjectRelease();

        return;
      }
    }
  }

  if (!a2)
  {
    v7 = sub_21E3437E0();
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_21E1DA258(v7, v9, 0, 0);
  }

  v11 = a2;
  sub_21E343C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
  sub_21E343A80();
  sub_21E343A60();
}

uint64_t sub_21E1D9B78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_21E1C868C(0, &qword_27CEB8740);
    v4 = sub_21E3439D0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t WFContentItem.fileRepresentation(with:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E1D9C30()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  sub_21E1C868C(0, &qword_27CEB80C0);
  OUTLINED_FUNCTION_6_2();
  *v4 = v5;
  v4[1] = sub_21E1D9D2C;
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_21E1D9D2C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1D9E34()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_8();

  return v0();
}

void sub_21E1D9E90(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_21E1DA138;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E1DA5FC;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  [a2 getFileRepresentation:v12 forType:a3 options:0];
  _Block_release(v12);
}

uint64_t sub_21E1DA054(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0);
    return sub_21E343A70();
  }

  else
  {
    if (!a2)
    {
      v5 = sub_21E3437E0();
      v7 = v6;
      v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_21E1DA258(v5, v7, 0, 0);
    }

    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0);
    return sub_21E343A60();
  }
}

uint64_t sub_21E1DA138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0);
  OUTLINED_FUNCTION_28_0(v0);
  v1 = OUTLINED_FUNCTION_8_1();

  return sub_21E1DA054(v1, v2);
}

void sub_21E1DA1B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21E1DA258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21E3437A0();

  if (a4)
  {
    v8 = sub_21E343730();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void sub_21E1DA308()
{
  OUTLINED_FUNCTION_7_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
  v4 = sub_21E343A80();
  OUTLINED_FUNCTION_28_0(v4);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_21E1D967C(v2, v0, v6, v7, v3);
}

void sub_21E1DA3B8()
{
  OUTLINED_FUNCTION_7_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
  v0 = sub_21E343A80();
  OUTLINED_FUNCTION_28_0(v0);
  v1 = OUTLINED_FUNCTION_8_1();

  sub_21E1D9988(v1, v2);
}

uint64_t objectdestroyTm(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_1_3();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_21E1DA4D4(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8750);
  OUTLINED_FUNCTION_28_0(v8);

  return sub_21E1D9020(a1, a2, a3, a4);
}

uint64_t sub_21E1DA574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB9230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return sub_21E343C70();
}

ContentKit::WFSpotlightSearchOutputType __swiftcall WFSpotlightSearchOutputType.init(name:)(Swift::String name)
{
  object = name._object;
  v3 = v1;
  v4 = name._countAndFlagsBits == 7958081 && name._object == 0xE300000000000000;
  if (v4 || (countAndFlagsBits = name._countAndFlagsBits, (OUTLINED_FUNCTION_0_5() & 1) != 0))
  {

    v7 = 0;
  }

  else
  {
    v9 = countAndFlagsBits == OUTLINED_FUNCTION_2_1() && object == v8;
    if (v9 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v10 = countAndFlagsBits == 0x73746361746E6F43 && object == 0xE800000000000000;
      if (v10 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v11 = countAndFlagsBits == 0x73656C6946 && object == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
        {

          v7 = 3;
        }

        else
        {
          v12 = countAndFlagsBits == 1818845517 && object == 0xE400000000000000;
          if (v12 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
          {

            v7 = 4;
          }

          else
          {
            v13 = countAndFlagsBits == 0x736567617373654DLL && object == 0xE800000000000000;
            if (v13 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
            {

              v7 = 5;
            }

            else
            {
              v14 = countAndFlagsBits == 0x7365746F4ELL && object == 0xE500000000000000;
              if (v14 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
              {

                v7 = 6;
              }

              else
              {
                v15 = countAndFlagsBits == 0x736F746F6850 && object == 0xE600000000000000;
                if (v15 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
                {

                  v7 = 7;
                }

                else
                {
                  v16 = countAndFlagsBits == 0x7265646E696D6552 && object == 0xE900000000000073;
                  if (v16 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
                  {

                    v7 = 8;
                  }

                  else
                  {
                    v17 = countAndFlagsBits == 0xD000000000000010 && 0x800000021E359C50 == object;
                    if (v17 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
                    {

                      v7 = 9;
                    }

                    else if (countAndFlagsBits == 0x6B72616D6B6F6F42 && object == 0xE900000000000073)
                    {

                      v7 = 10;
                    }

                    else
                    {
                      v19 = OUTLINED_FUNCTION_0_5();

                      if (v19)
                      {
                        v7 = 10;
                      }

                      else
                      {
                        v7 = 0;
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

  *v3 = v7;
  return result;
}

Swift::String __swiftcall WFSpotlightSearchOutputType.name()()
{
  v1 = 0xE300000000000000;
  v2 = 7958081;
  switch(*v0)
  {
    case 1:
      v2 = OUTLINED_FUNCTION_2_1();
      break;
    case 2:
      v1 = 0xE800000000000000;
      v2 = 0x73746361746E6F43;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v3 = 1701603654;
      goto LABEL_10;
    case 4:
      v1 = 0xE400000000000000;
      v2 = 1818845517;
      break;
    case 5:
      v1 = 0xE800000000000000;
      v2 = 0x736567617373654DLL;
      break;
    case 6:
      v1 = 0xE500000000000000;
      v3 = 1702129486;
LABEL_10:
      v2 = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 7:
      v1 = 0xE600000000000000;
      v2 = 0x736F746F6850;
      break;
    case 8:
      v2 = 0x7265646E696D6552;
      goto LABEL_13;
    case 9:
      v1 = 0x800000021E359C50;
      v2 = 0xD000000000000010;
      break;
    case 0xA:
      v2 = 0x6B72616D6B6F6F42;
LABEL_13:
      v1 = 0xE900000000000073;
      break;
    default:
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall WFSpotlightSearchOutputType.localizedTypeName()()
{
  sub_21E343870();
  OUTLINED_FUNCTION_1_4();
  sub_21E343870();
  if (qword_27CEB7FA0 != -1)
  {
    swift_once();
  }

  v0 = qword_27CEB8248;
  v1 = sub_21E3437A0();

  v2 = sub_21E3437A0();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_21E3437E0();
  OUTLINED_FUNCTION_1_4();

  v4 = v1;
  v5 = v2;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::Bool __swiftcall WFSpotlightSearchOutputType.isAllowedType()()
{
  if (*v0)
  {
    v1 = *v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t WFSpotlightSearchOutputType.hashValue.getter()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

uint64_t WFSpotlightSearchOutputType.bundleIdentifier.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:

      result = sub_21E3437E0();
      break;
    default:
      result = sub_21E343DD0();
      __break(1u);
      break;
  }

  return result;
}

ContentKit::WFSpotlightSearchOutputType_optional __swiftcall WFSpotlightSearchOutputType.init(spotlightBundleIdentifier:)(Swift::String spotlightBundleIdentifier)
{
  object = spotlightBundleIdentifier._object;
  countAndFlagsBits = spotlightBundleIdentifier._countAndFlagsBits;
  v10 = v1;
  v4 = 0;
  while (2)
  {
    v5 = byte_282F4DEB8[v4++ + 32];
    switch(v5)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        if (sub_21E3437E0() == countAndFlagsBits && v6 == object)
        {
        }

        else
        {
          v8 = OUTLINED_FUNCTION_0_5();

          if ((v8 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        break;
      default:
LABEL_8:
        if (v4 != 11)
        {
          continue;
        }

        LOBYTE(v5) = 11;
        break;
    }

    break;
  }

  *v10 = v5;
  return result;
}

uint64_t WFSpotlightSearchOutputType.linkEntityTypeName.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:

      result = sub_21E3437E0();
      break;
    default:
      result = sub_21E343DD0();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_21E1DB1D4()
{
  result = qword_27CEB8758;
  if (!qword_27CEB8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8758);
  }

  return result;
}

unint64_t sub_21E1DB22C()
{
  result = qword_27CEB8760;
  if (!qword_27CEB8760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB8768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFSpotlightSearchOutputType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFSpotlightSearchOutputType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return sub_21E343F80();
}

id LNCodableValue.duration()()
{
  sub_21E3429C0();
  swift_allocObject();
  sub_21E3429B0();
  v1 = [v0 data];
  v2 = sub_21E342BF0();
  v4 = v3;

  sub_21E3429A0();
  sub_21E1C99C4(v2, v4);

  type metadata accessor for LNDurationBridge(0);
  return LNDurationBridge.init(duration:)();
}

id sub_21E1DB540(void *a1)
{
  v1 = a1;
  v2 = LNCodableValue.duration()();

  return v2;
}

id LNCodableValue.init(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_21E3429E0();
  MEMORY[0x28223BE20](v4 - 8);
  sub_21E342A20();
  swift_allocObject();
  sub_21E342A10();
  sub_21E3429D0();
  sub_21E3429F0();
  LNDurationBridge.duration.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8770);
  sub_21E1DB6EC();
  v5 = sub_21E342A00();
  v7 = v6;
  v8 = sub_21E342BC0();
  v9 = [v2 initWithData_];
  sub_21E1C99C4(v5, v7);

  return v9;
}

unint64_t sub_21E1DB6EC()
{
  result = qword_27CEB8778;
  if (!qword_27CEB8778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB8770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8778);
  }

  return result;
}

id _sSo14LNCodableValueC10ContentKitEyABSo16LNDurationBridgeCcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDuration_];

  return v2;
}

id LNValue.init(_:)(void *a1)
{
  v2 = v1;
  sub_21E343BA0();
  LNDurationBridge.duration.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8770);
  sub_21E1DB6EC();
  v4 = sub_21E343B90();
  sub_21E1C9ED8();
  v5 = sub_21E343BE0();
  v6 = [v2 initWithValue:v4 valueType:v5];

  return v6;
}

id WFLanguageRecognizer.init(supportedLanguages:currentLocaleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(type metadata accessor for WFLanguageRecognizer() + 28);
  v9 = sub_21E342CA0();
  __swift_storeEnumTagSinglePayload(a4 + v8, 1, 1, v9);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  result = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  a4[3] = result;
  return result;
}

uint64_t type metadata accessor for WFLanguageRecognizer()
{
  result = qword_27CEB8788;
  if (!qword_27CEB8788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WFLanguageRecognizer.locale(for:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v211 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v221 = v8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v216 = v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v215 = &v195 - v17;
  v219 = sub_21E342CA0();
  OUTLINED_FUNCTION_5();
  v210 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v217 = v24;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  v200 = &v195 - v26;
  v27 = type metadata accessor for WFLanguageRecognizer();
  MEMORY[0x28223BE20](v27 - 8);
  v205 = (&v195 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v213 = v29;
  v214 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_0();
  v218 = v35;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_0();
  v38 = v37;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  v42 = &v195 - v41;
  v43 = sub_21E342A50();
  OUTLINED_FUNCTION_5();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v195 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = v3;
  v49 = *(v3 + 24);
  v50 = sub_21E3437A0();
  [v49 processString_];

  v51 = swift_allocObject();
  v212 = v51;
  *(v51 + 16) = 0;
  v206 = (v51 + 16);
  v52 = sub_21E3438B0();
  v53 = MEMORY[0x277D7A440];
  if (v52 <= 19 && (v224 = a1, v225 = a2, sub_21E342A40(), sub_21E1CB3C4(), sub_21E343C90(), v55 = v54, (*(v45 + 8))(v48, v43), (v55 & 1) != 0))
  {
    sub_21E343100();
    v56 = sub_21E3434C0();
    v57 = sub_21E343B80();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21E1BD000, v56, v57, "WFLanguageRecognizer: isShortSingleWordText = YES", v58, 2u);
      OUTLINED_FUNCTION_5_0();
    }

    v59 = v213;
    (*(v214 + 8))(v42, v213);
    v60 = v38;
    v61 = v59;
  }

  else
  {
    v62 = sub_21E1DD018(a1, a2);
    v60 = v38;
    v61 = v213;
    if ((v62 & 1) == 0)
    {
      goto LABEL_11;
    }

    v63 = v208;
    sub_21E343100();
    v64 = v205;
    sub_21E1DD994(v220, v205);
    v65 = sub_21E3434C0();
    v66 = sub_21E343B80();
    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_34();
      v67 = OUTLINED_FUNCTION_6_3();
      v224 = v67;
      *v63 = 136446210;
      v68 = *(v64 + 1);
      v69 = *(v64 + 2);

      sub_21E1DD9F8(v64);
      v70 = v68;
      v53 = MEMORY[0x277D7A440];
      v71 = sub_21E1C80B4(v70, v69, &v224);

      *(v63 + 4) = v71;
      _os_log_impl(&dword_21E1BD000, v65, v66, "WFLanguageRecognizer: isLikelyMath = YES; prioritizing currentLocaleId %{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      (*(v214 + 8))(v208, v61);
    }

    else
    {

      sub_21E1DD9F8(v64);
      (*(v214 + 8))(v63, v61);
    }
  }

  sub_21E1DCC50(v220, v212);
LABEL_11:
  v72 = sub_21E343C00();
  v224 = sub_21E1DD6FC(v72);
  v73 = 0;
  sub_21E1DD7E0(&v224);

  v74 = v224;
  v75 = *v53;
  sub_21E343100();

  v76 = sub_21E3434C0();
  v77 = sub_21E343B80();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_34();
    v79 = swift_slowAlloc();
    v224 = v79;
    *v78 = 136446210;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A0);
    v81 = MEMORY[0x223D55330](v74, v80);
    v73 = v82;
    v53 = sub_21E1C80B4(v81, v82, &v224);

    *(v78 + 4) = v53;
    _os_log_impl(&dword_21E1BD000, v76, v77, "WFLanguageRecognizer: topLanguages = %{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v83 = *(v214 + 8);
  v83(v60, v61);
  v84 = v221;
  v85 = v74[2];
  if (v85)
  {
    v209 = v75;
    v205 = v83;
    v86 = v74[4];
    v216 = v74 + 4;
    v87 = (v74 + 5);
    v88 = *(v74 + 5);
    v89 = *(v220 + 16);
    v221 = *(v220 + 8);
    v208 = v86;
    v90 = 0;
    while (v90 < v74[2])
    {
      v91 = *(v87 - 1);
      v92 = *v87;
      v73 = sub_21E3437E0();
      v93 = v91;
      LOBYTE(v91) = sub_21E343930();

      if (v91)
      {
        v73 = v74;
        v94 = vabdd_f64(v92, v88);
        v95 = v217;
        if (v94 >= 0.3)
        {
        }

        else
        {
          v96 = v215;
          sub_21E1DD480(v221, v89, v215);
          if (__swift_getEnumTagSinglePayload(v96, 1, v219) != 1)
          {

            v109 = v210;
            v110 = *(v210 + 32);
            v111 = v200;
            v112 = v219;
            (v110)(v200, v96, v219);
            OUTLINED_FUNCTION_15_2();
            sub_21E343100();
            (*(v109 + 16))(v95, v111, v112);
            v113 = sub_21E3434C0();
            v114 = sub_21E343B80();
            if (OUTLINED_FUNCTION_9_2(v114))
            {
              swift_slowAlloc();
              v224 = OUTLINED_FUNCTION_6_3();
              *v110 = 136446466;
              sub_21E342C80();
              v115 = OUTLINED_FUNCTION_10_2();
              v116 = (*(v109 + 8))(v115, v219);
              OUTLINED_FUNCTION_22_2(v116, v117, &v224);
              OUTLINED_FUNCTION_10_2();

              *(v110 + 4) = v95;
              *(v110 + 12) = 2050;
              *(v110 + 14) = v94;
              OUTLINED_FUNCTION_3_4();
              _os_log_impl(v118, v119, v120, v121, v122, 0x16u);
              OUTLINED_FUNCTION_23_2();
              v112 = v219;
              OUTLINED_FUNCTION_5_0();
              OUTLINED_FUNCTION_5_0();

              OUTLINED_FUNCTION_14_2();
            }

            else
            {

              OUTLINED_FUNCTION_14_2();
              (*(v109 + 8))(v95, v112);
            }

            OUTLINED_FUNCTION_8_2();
            OUTLINED_FUNCTION_11_1();
            v150();
            v151 = OUTLINED_FUNCTION_12_2();
            (v110)(v151, v200, v112);
            v152 = OUTLINED_FUNCTION_13_2();
            v155 = v112;
            goto LABEL_43;
          }

          sub_21E1DD84C(v96);
        }

        v74 = v73;
      }

      else
      {
      }

      ++v90;
      v87 += 2;
      if (v85 == v90)
      {
        v97 = v206;
        result = swift_beginAccess();
        i = 0;
        v100 = v211;
        v101 = v207;
        if (*v97 != 1)
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_21_1(&v226);
        v73 = v219;
        if (__swift_getEnumTagSinglePayload(v97, 1, v219) == 1)
        {
          for (i = 0; ; ++i)
          {
            result = sub_21E1DD84C(v97);
LABEL_45:
            if (i == v85)
            {
              break;
            }

            if (i >= v74[2])
            {
              __break(1u);
              return result;
            }

            v158 = v216[2 * i];
            v159 = sub_21E3437E0();
            v73 = v160;
            v161 = v158;
            sub_21E1DD480(v159, v73, v101);

            if (__swift_getEnumTagSinglePayload(v101, 1, v219) != 1)
            {

              v171 = v210;
              v172 = v203;
              v173 = v219;
              v221 = *(v210 + 32);
              v221(v203, v101, v219);
              OUTLINED_FUNCTION_15_2();
              sub_21E343100();
              v174 = v198;
              (*(v171 + 16))(v198, v172, v173);
              v175 = sub_21E3434C0();
              v176 = sub_21E343B80();
              if (os_log_type_enabled(v175, v176))
              {
                v177 = OUTLINED_FUNCTION_34();
                v178 = swift_slowAlloc();
                v222[0] = v178;
                *v177 = 136446210;
                v179 = sub_21E342C80();
                v180 = v174;
                v182 = v181;
                (*(v171 + 8))(v180, v173);
                v183 = sub_21E1C80B4(v179, v182, v222);

                *(v177 + 4) = v183;
                _os_log_impl(&dword_21E1BD000, v175, v176, "WFLanguageRecognizer: picking first model-supported locale %{public}s", v177, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v178);
                OUTLINED_FUNCTION_5_0();
                OUTLINED_FUNCTION_5_0();

                OUTLINED_FUNCTION_14_2();
              }

              else
              {

                OUTLINED_FUNCTION_14_2();
                (*(v171 + 8))(v174, v173);
              }

              OUTLINED_FUNCTION_8_2();
              OUTLINED_FUNCTION_11_1();
              v184();
              v185 = OUTLINED_FUNCTION_12_2();
              v221(v185, v203, v173);
              v152 = OUTLINED_FUNCTION_13_2();
              v155 = v173;
              goto LABEL_43;
            }

            v97 = v101;
          }

          OUTLINED_FUNCTION_21_1(&v227);
          v162 = v201;
          OUTLINED_FUNCTION_15_2();
          sub_21E343100();
          v163 = v202;
          sub_21E1DD8B4(v97, v202);
          v164 = sub_21E3434C0();
          v165 = sub_21E343B80();
          if (OUTLINED_FUNCTION_9_2(v165))
          {
            OUTLINED_FUNCTION_34();
            v223 = OUTLINED_FUNCTION_6_3();
            *v73 = 136446210;
            v166 = v195;
            sub_21E1DD8B4(v163, v195);
            v167 = v219;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v166, 1, v219);
            v169 = v205;
            if (EnumTagSinglePayload == 1)
            {
              sub_21E1DD84C(v166);
              v170 = 0;
              v163 = 0;
            }

            else
            {
              v170 = v166;
              sub_21E342C80();
              OUTLINED_FUNCTION_16_2();
              v186(v166, v167);
            }

            v222[0] = v170;
            v222[1] = v163;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780);
            v187 = sub_21E343830();
            v188 = sub_21E1DD84C(v202);
            OUTLINED_FUNCTION_22_2(v188, v189, &v223);
            OUTLINED_FUNCTION_10_2();

            *(v73 + 4) = v187;
            OUTLINED_FUNCTION_3_4();
            _os_log_impl(v190, v191, v192, v193, v194, 0xCu);
            OUTLINED_FUNCTION_23_2();
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_14_2();

            OUTLINED_FUNCTION_20_2();
            v169(v201);
          }

          else
          {
            OUTLINED_FUNCTION_14_2();

            sub_21E1DD84C(v163);
            OUTLINED_FUNCTION_20_2();
            (v205)(v162);
          }

          v148 = v204;
          v149 = v100;
          goto LABEL_60;
        }

        v123 = v210;
        v124 = *(v210 + 32);
        v125 = v197;
        v124(v197, v97, v73);
        OUTLINED_FUNCTION_15_2();
        sub_21E343100();
        v126 = v196;
        (*(v123 + 16))(v196, v125, v73);
        v127 = sub_21E3434C0();
        v128 = sub_21E343B80();
        if (OUTLINED_FUNCTION_9_2(v128))
        {
          OUTLINED_FUNCTION_34();
          v222[0] = OUTLINED_FUNCTION_6_3();
          *v73 = 136446210;
          sub_21E342C80();
          v129 = OUTLINED_FUNCTION_10_2();
          v130 = (*(v123 + 8))(v129, v219);
          OUTLINED_FUNCTION_22_2(v130, v131, v222);
          OUTLINED_FUNCTION_10_2();

          *(v73 + 4) = v126;
          OUTLINED_FUNCTION_3_4();
          _os_log_impl(v132, v133, v134, v135, v136, 0xCu);
          OUTLINED_FUNCTION_23_2();
          v137 = v219;
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_14_2();
        }

        else
        {
          v137 = v73;
          OUTLINED_FUNCTION_14_2();

          (*(v123 + 8))(v126, v73);
        }

        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_11_1();
        v156();
        v157 = OUTLINED_FUNCTION_12_2();
        v124(v157, v125, v137);
        v152 = OUTLINED_FUNCTION_13_2();
        v155 = v137;
LABEL_43:
        __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
      }
    }

    __break(1u);

    __break(1u);
    goto LABEL_43;
  }

  v102 = v216;
  sub_21E1DD480(*(v220 + 8), *(v220 + 16), v216);
  v103 = v209;
  sub_21E343100();
  sub_21E1DD8B4(v102, v84);
  v104 = sub_21E3434C0();
  v105 = sub_21E343B60();
  if (OUTLINED_FUNCTION_9_2(v105))
  {
    OUTLINED_FUNCTION_34();
    v222[0] = OUTLINED_FUNCTION_6_3();
    *v102 = 136446210;
    v106 = v199;
    sub_21E1DD8B4(v84, v199);
    v107 = v219;
    if (__swift_getEnumTagSinglePayload(v106, 1, v219) == 1)
    {
      sub_21E1DD84C(v106);
      v108 = 0;
      v53 = 0;
    }

    else
    {
      v108 = v106;
      sub_21E342C80();
      OUTLINED_FUNCTION_16_2();
      v138(v106, v107);
    }

    v224 = v108;
    v225 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780);
    v139 = sub_21E343830();
    v140 = sub_21E1DD84C(v84);
    OUTLINED_FUNCTION_22_2(v140, v141, v222);
    OUTLINED_FUNCTION_10_2();

    *(v102 + 4) = v139;
    OUTLINED_FUNCTION_3_4();
    _os_log_impl(v142, v143, v144, v145, v146, 0xCu);
    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();

    OUTLINED_FUNCTION_20_2();
    v147 = OUTLINED_FUNCTION_15_2();
    (v83)(v147);
    v102 = v216;
  }

  else
  {

    sub_21E1DD84C(v84);
    OUTLINED_FUNCTION_20_2();
    (v83)(v103);
  }

  v148 = v102;
  v149 = v211;
LABEL_60:
  sub_21E1DD924(v148, v149);
}

uint64_t sub_21E1DCC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFLanguageRecognizer();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E3434D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E343100();
  sub_21E1DD994(a1, v6);
  v11 = sub_21E3434C0();
  v12 = sub_21E343B80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136446210;
    v25 = v7;
    v17 = *(v6 + 1);
    v16 = *(v6 + 2);

    sub_21E1DD9F8(v6);
    v18 = sub_21E1C80B4(v17, v16, v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_21E1BD000, v11, v12, "WFLanguageRecognizer: prioritizing currentLocaleId %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x223D57360](v15, -1, -1);
    v19 = v14;
    a2 = v26;
    MEMORY[0x223D57360](v19, -1, -1);

    (*(v8 + 8))(v10, v25);
  }

  else
  {

    sub_21E1DD9F8(v6);
    (*(v8 + 8))(v10, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB87B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3522F0;

  v21 = sub_21E1DCF58(2);
  MEMORY[0x223D551B0](v21);

  v22 = sub_21E3437A0();

  *(inited + 32) = v22;
  *(inited + 40) = 0x3FE0000000000000;
  type metadata accessor for NLLanguage(0);
  sub_21E1DDC0C();
  sub_21E343760();
  sub_21E343BF0();
  result = swift_beginAccess();
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_21E1DCF58(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21E3438E0();
    v1 = sub_21E343980();

    return v1;
  }

  return result;
}

uint64_t sub_21E1DD018(uint64_t a1, unint64_t a2)
{
  v4 = sub_21E3434D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || sub_21E3438B0() > 29)
  {
    return 0;
  }

  v9 = sub_21E343840();
  v10 = v9;
  v12 = v11;
  v13 = HIBYTE(v11) & 0xF;
  v30 = v9;
  v31 = v11;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v32 = 0;
  v33 = v13;

  v14 = 0;
  while (1)
  {
    sub_21E343910();
    if (!v15)
    {
      break;
    }

    v16 = sub_21E343770();

    v17 = __OFADD__(v14, v16 & 1);
    v14 += v16 & 1;
    if (v17)
    {
      __break(1u);
      break;
    }
  }

  if (v14 / sub_21E3438B0() < 0.25)
  {

    return 0;
  }

  v29[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3535B0;
  *(inited + 32) = 43;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 45;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 42;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = 47;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 61;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 60;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = 62;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = 94;
  *(inited + 152) = 0xE100000000000000;
  *(inited + 160) = 37;
  *(inited + 168) = 0xE100000000000000;
  *(inited + 176) = 33;
  *(inited + 184) = 0xE100000000000000;
  *(inited + 192) = 10127586;
  *(inited + 200) = 0xA300000000000000;
  *(inited + 208) = 11241698;
  *(inited + 216) = 0xA300000000000000;
  *(inited + 224) = 41934;
  *(inited + 232) = 0xA200000000000000;
  *(inited + 240) = 38094;
  *(inited + 248) = 0xA200000000000000;
  *(inited + 256) = 32975;
  *(inited + 264) = 0xA200000000000000;
  *(inited + 272) = 45250;
  *(inited + 280) = 0xA200000000000000;
  *(inited + 288) = 10389730;
  *(inited + 296) = 0xA300000000000000;
  *(inited + 304) = 678324595;
  *(inited + 312) = 0xE400000000000000;
  *(inited + 320) = 678653795;
  *(inited + 328) = 0xE400000000000000;
  *(inited + 336) = 678322548;
  *(inited + 344) = 0xE400000000000000;
  *(inited + 352) = 677867372;
  *(inited + 360) = 0xE400000000000000;
  *(inited + 368) = 2649708;
  *(inited + 376) = 0xE300000000000000;
  *(inited + 384) = 0x2874727173;
  *(inited + 392) = 0xE500000000000000;
  *(inited + 400) = 678650465;
  *(inited + 408) = 0xE400000000000000;
  *(inited + 416) = 0x286C696563;
  *(inited + 424) = 0xE500000000000000;
  *(inited + 432) = 0x28726F6F6C66;
  *(inited + 440) = 0xE600000000000000;
  *(inited + 448) = 0x28646E756F72;
  *(inited + 456) = 0xE600000000000000;
  *(inited + 464) = 678459493;
  *(inited + 472) = 0xE400000000000000;
  *(inited + 480) = 26992;
  *(inited + 488) = 0xE200000000000000;
  *(inited + 496) = 678262131;
  *(inited + 504) = 0xE400000000000000;
  *(inited + 512) = 677869153;
  *(inited + 520) = 0xE400000000000000;
  *(inited + 528) = 678324589;
  *(inited + 536) = 0xE400000000000000;
  *(inited + 544) = 678977901;
  *(inited + 552) = 0xE400000000000000;
  sub_21E1CB3C4();
  v19 = 0;
  do
  {
    v20 = v19 + 16;
    if (v19 == 528)
    {

      swift_setDeallocating();
      sub_21E23BB3C();
      return 0;
    }

    v23 = (inited + v19 + 32);
    v21 = *v23;
    v22 = v23[1];
    v30 = v10;
    v31 = v12;
    v29[1] = v21;
    v29[2] = v22;
    v24 = sub_21E343CD0();
    v19 = v20;
  }

  while ((v24 & 1) == 0);

  swift_setDeallocating();
  sub_21E23BB3C();
  sub_21E343100();
  v25 = sub_21E3434C0();
  v26 = sub_21E343B80();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_21E1BD000, v25, v26, "WFLanguageRecognizer: isLikelyMath=YES because >= 15%% of chars are numbers and we found one or more math symbols", v27, 2u);
    MEMORY[0x223D57360](v27, -1, -1);
  }

  (*(v29[0] + 8))(v7, v4);
  return 1;
}

uint64_t sub_21E1DD480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = (*v3 + 40);
  v9 = *(*v3 + 16) + 1;
  while (--v9)
  {
    if (*(v8 - 1) != a1 || *v8 != a2)
    {
      v8 += 2;
      if ((sub_21E343F80() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (sub_21E3437E0() == a1 && v11 == a2)
  {
LABEL_25:

    goto LABEL_26;
  }

  v13 = OUTLINED_FUNCTION_17_2();

  if (v13)
  {
    goto LABEL_26;
  }

  if (sub_21E3437E0() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_17_2();

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v25 = v3[1];
  v24 = v3[2];
  v26 = v25 == 0x57545F687ALL && v24 == 0xE500000000000000;
  if (v26 || (OUTLINED_FUNCTION_19_2() & 1) != 0 || (v25 == 0x4B485F687ALL ? (v27 = v24 == 0xE500000000000000) : (v27 = 0), v27 || (OUTLINED_FUNCTION_19_2() & 1) != 0))
  {
LABEL_26:
    sub_21E342C70();
    v22 = 0;
LABEL_27:
    v23 = sub_21E342CA0();

    return __swift_storeEnumTagSinglePayload(a3, v22, 1, v23);
  }

LABEL_19:

  v17 = sub_21E1DCF58(2);
  MEMORY[0x223D551B0](v17);

  v19 = 0;
  v20 = *(v7 + 16);
  for (i = v7 + 40; ; i += 16)
  {
    if (v20 == v19)
    {

      v22 = 1;
      goto LABEL_27;
    }

    if (v19 >= *(v7 + 16))
    {
      break;
    }

    if (sub_21E343930())
    {
      goto LABEL_25;
    }

    ++v19;
  }

  __break(1u);
  return result;
}

void *sub_21E1DD6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_21E1CE098(*(a1 + 16), 0);
  v4 = sub_21E1DE680(&v6, v3 + 4, v1, a1);

  sub_21E1DE7E0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_21E1DD7E0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21E1DD7CC(v2);
    v2 = v3;
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_21E1DDC64(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_21E1DD84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E1DD8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1DD924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1DD994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFLanguageRecognizer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1DD9F8(uint64_t a1)
{
  v2 = type metadata accessor for WFLanguageRecognizer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21E1DDA7C()
{
  sub_21E1DDB20();
  if (v0 <= 0x3F)
  {
    sub_21E1DDB70();
    if (v1 <= 0x3F)
    {
      sub_21E1DDBB4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21E1DDB20()
{
  if (!qword_27CEB8798)
  {
    v0 = sub_21E343A30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEB8798);
    }
  }
}

unint64_t sub_21E1DDB70()
{
  result = qword_27CEB87A0;
  if (!qword_27CEB87A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB87A0);
  }

  return result;
}

void sub_21E1DDBB4()
{
  if (!qword_27CEB87A8)
  {
    sub_21E342CA0();
    v0 = sub_21E343C70();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEB87A8);
    }
  }
}

unint64_t sub_21E1DDC0C()
{
  result = qword_27CEB8038;
  if (!qword_27CEB8038)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8038);
  }

  return result;
}

uint64_t sub_21E1DDC64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21E343F50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A0);
        v6 = sub_21E343A10();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21E1DDDD8(v7, v8, a1, v4);
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
    return sub_21E1DDD68(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21E1DDD68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21E1DDDD8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (*(v33 - 1) >= v31)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E1CDE0C();
        v8 = v79;
      }

      v36 = v8[2];
      v37 = v36 + 1;
      if (v36 >= v8[3] >> 1)
      {
        sub_21E1CDE0C();
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_56:
            if (v46)
            {
              goto LABEL_96;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_99;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_104;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v37 < 2)
          {
            goto LABEL_98;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_71:
          if (v61)
          {
            goto LABEL_101;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_103;
          }

          if (v68 < v60)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_21E1DE3E8((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v84);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v75 < v73)
          {
            goto LABEL_91;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_92;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_93;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_85;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_94;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_95;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_97;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_100;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_105;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_21E1DE2BC(&v86, *a1, a3);
LABEL_89:
}

uint64_t sub_21E1DE2BC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21E1DE56C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21E1DE3E8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21E1DE3E8(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21E1D5838(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[1] >= v6[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_21E1D5838(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v15 = v6 - 2;
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

char *sub_21E1DE580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_21E1DE680(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (v15 << 9) | (8 * __clz(__rbit64(v9)));
      v17 = *(*(a4 + 48) + v16);
      v18 = *(*(a4 + 56) + v16);
      v9 &= v9 - 1;
      *v11 = v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_9_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_14_2()
{
  v2 = *(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return sub_21E343F80();
}

uint64_t OUTLINED_FUNCTION_19_2()
{

  return sub_21E343F80();
}

uint64_t OUTLINED_FUNCTION_21_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  v5 = *(v2 - 184);

  return sub_21E1DD480(v5, v1, v4);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_21E1C80B4(v3, v4, a3);
}

uint64_t WFContentCollection.objectRepresentation(for:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_21E1DE97C, 0, 0);
}

uint64_t sub_21E1DE97C()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21E1DEA28;
  v2 = swift_continuation_init();
  sub_21E1DEB6C(v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21E1DEA28()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v1[10];
    v6 = v1[11];
    v7 = v1[12];
    v8 = v2[1];

    return v8(v5, v6, v7);
  }
}

void sub_21E1DEB6C(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6[4] = sub_21E1DEFE4;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_21E1D9104;
  v6[3] = &block_descriptor_0;
  v5 = _Block_copy(v6);

  [a2 getObjectRepresentation:v5 forClass:swift_getObjCClassFromMetadata()];
  _Block_release(v5);
}

uint64_t sub_21E1DEC50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB80E8);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x282200958](a5, v7);
  }

  else
  {
    sub_21E1DA574(a1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB9230);
    v12 = swift_dynamicCast();
    v13 = v16;
    if (!v12)
    {
      v13 = 0;
    }

    v14 = *(*(a5 + 64) + 40);
    *v14 = v13;
    v14[1] = a2;
    v14[2] = a3;

    return swift_continuation_throwingResume();
  }
}

uint64_t WFContentCollection.objectRepresentation<A>(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_21E1DEE04;

  return WFContentCollection.objectRepresentation(for:)(a1);
}

uint64_t sub_21E1DEE04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21E1DEF44, 0, 0);
  }
}

uint64_t sub_21E1DEF44()
{
  v1 = v0[6];
  if (v1)
  {
    v0[2] = v1;
    if (swift_dynamicCast())
    {
      v2 = v0[3];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WFGeneratedOutputType.init(name:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0x6974616D6F747541 && a2 == 0xE900000000000063;
  if (!v6 && (OUTLINED_FUNCTION_0_5() & 1) == 0)
  {
    v10 = a1 == 1954047316 && a2 == 0xE400000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v8 = 0;
      v9 = 1;
      goto LABEL_7;
    }

    v11 = a1 == 0x7265626D754ELL && a2 == 0xE600000000000000;
    if (v11 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v8 = 0;
      v9 = 2;
      goto LABEL_7;
    }

    v12 = a1 == OUTLINED_FUNCTION_12_3() && a2 == 0xE700000000000000;
    if (v12 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v8 = 0;
      v9 = 3;
      goto LABEL_7;
    }

    v13 = a1 == 1953720652 && a2 == 0xE400000000000000;
    if (v13 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v8 = 0;
      v9 = 4;
      goto LABEL_7;
    }

    v15 = a1 == OUTLINED_FUNCTION_14_3() && a2 == v14;
    if (v15 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v8 = 0;
      v9 = 5;
      goto LABEL_7;
    }

    v17 = a1 == OUTLINED_FUNCTION_3_5() && a2 == v16;
    if (v17 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v8 = 0;
      v9 = 6;
      goto LABEL_7;
    }

    v18 = a1 == 1702125892 && a2 == 0xE400000000000000;
    if (v18 || (OUTLINED_FUNCTION_0_5() & 1) != 0)
    {

      v8 = 0;
      v9 = 7;
      goto LABEL_7;
    }

    if (sub_21E343930())
    {
      v19 = sub_21E3438B0();
      v20 = sub_21E1DF284(v19, a1, a2);
      v8 = MEMORY[0x223D551B0](v20);
      v9 = v21;

      goto LABEL_7;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_7:
  *a3 = v8;
  a3[1] = v9;
  return result;
}

unint64_t sub_21E1DF284(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_21E3438E0();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_21E343980();

      return v7;
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall WFGeneratedOutputType.name()()
{
  v1 = v0[1];
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747541;
  switch(v1)
  {
    case 0:
      break;
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1954047316;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x7265626D754ELL;
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_12_3();
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1953720652;
      break;
    case 5:
      v3 = OUTLINED_FUNCTION_14_3();
      break;
    case 6:
      v3 = OUTLINED_FUNCTION_3_5();
      break;
    case 7:
      v2 = 0xE400000000000000;
      v3 = 1702125892;
      break;
    default:
      MEMORY[0x223D55250](*v0, v1);
      v3 = 0x694C797469746E45;
      v2 = 0xEB000000003A7473;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall WFGeneratedOutputType.localizedTypeName()()
{
  v3 = *v0;
  v4 = v0[1];
  switch(v4)
  {
    case 0uLL:
      sub_21E343870();
      OUTLINED_FUNCTION_6_4();
      sub_21E343870();
      OUTLINED_FUNCTION_5_3();
      if (qword_27CEB7FA0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    case 1uLL:
      sub_21E343870();
      OUTLINED_FUNCTION_6_4();
      sub_21E343870();
      OUTLINED_FUNCTION_5_3();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    case 2uLL:
      sub_21E343870();
      OUTLINED_FUNCTION_6_4();
      sub_21E343870();
      OUTLINED_FUNCTION_5_3();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    case 3uLL:
      sub_21E343870();
      OUTLINED_FUNCTION_6_4();
      sub_21E343870();
      OUTLINED_FUNCTION_5_3();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    case 4uLL:
      sub_21E343870();
      OUTLINED_FUNCTION_6_4();
      sub_21E343870();
      OUTLINED_FUNCTION_5_3();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    case 5uLL:
      sub_21E343870();
      OUTLINED_FUNCTION_6_4();
      sub_21E343870();
      OUTLINED_FUNCTION_5_3();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    case 6uLL:
      v10 = sub_21E343DD0();
      __break(1u);
      goto LABEL_25;
    case 7uLL:
      sub_21E343870();
      OUTLINED_FUNCTION_6_4();
      sub_21E343870();
      OUTLINED_FUNCTION_5_3();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_16;
      }

LABEL_18:
      OUTLINED_FUNCTION_0_0();
LABEL_16:
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_8_3();
      v7 = OUTLINED_FUNCTION_9_3();
      v8 = OUTLINED_FUNCTION_1_5(v7, sel_localizedStringForKey_value_table_);

      v5 = sub_21E3437E0();
      v6 = v9;

      break;
    default:
      v5 = v3;
      v6 = v4;
      break;
  }

  sub_21E1DF880(v3, v4);
  v10 = v5;
  v11 = v6;
LABEL_25:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_21E1DF880(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t static WFGeneratedOutputType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v4)
      {
        goto LABEL_19;
      }

      v5 = OUTLINED_FUNCTION_7_4(*a1, 0);
      v6 = 0;
      goto LABEL_26;
    case 1uLL:
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      v7 = 1;
      v8 = OUTLINED_FUNCTION_7_4(*a1, 1uLL);
      sub_21E1DFA50(v8, 1uLL);
      return v7;
    case 2uLL:
      if (v4 != 2)
      {
        goto LABEL_19;
      }

      v5 = OUTLINED_FUNCTION_7_4(*a1, 2uLL);
      v6 = 2;
      goto LABEL_26;
    case 3uLL:
      if (v4 != 3)
      {
        goto LABEL_19;
      }

      v5 = OUTLINED_FUNCTION_7_4(*a1, 3uLL);
      v6 = 3;
      goto LABEL_26;
    case 4uLL:
      if (v4 != 4)
      {
        goto LABEL_19;
      }

      v5 = OUTLINED_FUNCTION_7_4(*a1, 4uLL);
      v6 = 4;
      goto LABEL_26;
    case 5uLL:
      if (v4 != 5)
      {
        goto LABEL_19;
      }

      v5 = OUTLINED_FUNCTION_7_4(*a1, 5uLL);
      v6 = 5;
      goto LABEL_26;
    case 6uLL:
      if (v4 != 6)
      {
        goto LABEL_19;
      }

      v5 = OUTLINED_FUNCTION_7_4(*a1, 6uLL);
      v6 = 6;
      goto LABEL_26;
    case 7uLL:
      if (v4 != 7)
      {
        goto LABEL_19;
      }

      v5 = OUTLINED_FUNCTION_7_4(*a1, 7uLL);
      v6 = 7;
      goto LABEL_26;
    default:
      if (v4 >= 8)
      {
        v13 = *a1;
        if (v2 != *a2 || v3 != v4)
        {
          v15 = sub_21E343F80();
          v16 = OUTLINED_FUNCTION_13_3();
          OUTLINED_FUNCTION_4_5(v16, v17);
          v18 = OUTLINED_FUNCTION_13_3();
          sub_21E1DFA50(v18, v19);
          return v15 & 1;
        }

        OUTLINED_FUNCTION_4_5(v13, v3);
        v5 = v2;
        v6 = v3;
LABEL_26:
        sub_21E1DFA50(v5, v6);
        return 1;
      }

      else
      {
LABEL_19:
        v9 = OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_4_5(v9, v10);
        v11 = OUTLINED_FUNCTION_13_3();
        sub_21E1DFA50(v11, v12);
        return 0;
      }
  }
}

uint64_t sub_21E1DFA50(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t WFGeneratedOutputType.hash(into:)()
{
  switch(*(v0 + 8))
  {
    case 0:
      v1 = 0;
      goto LABEL_10;
    case 1:
      v1 = 1;
      goto LABEL_10;
    case 2:
      v1 = 2;
      goto LABEL_10;
    case 3:
      v1 = 3;
      goto LABEL_10;
    case 4:
      v1 = 4;
      goto LABEL_10;
    case 5:
      v1 = 5;
      goto LABEL_10;
    case 6:
      v1 = 7;
      goto LABEL_10;
    case 7:
      v1 = 8;
LABEL_10:
      result = MEMORY[0x223D55980](v1);
      break;
    default:
      MEMORY[0x223D55980](6);

      result = sub_21E3438A0();
      break;
  }

  return result;
}

uint64_t WFGeneratedOutputType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_21E344020();
  switch(v1)
  {
    case 0:
      v2 = 0;
      goto LABEL_10;
    case 1:
      v2 = 1;
      goto LABEL_10;
    case 2:
      v2 = 2;
      goto LABEL_10;
    case 3:
      v2 = 3;
      goto LABEL_10;
    case 4:
      v2 = 4;
      goto LABEL_10;
    case 5:
      v2 = 5;
      goto LABEL_10;
    case 6:
      v2 = 7;
      goto LABEL_10;
    case 7:
      v2 = 8;
LABEL_10:
      MEMORY[0x223D55980](v2);
      break;
    default:
      MEMORY[0x223D55980](6);
      sub_21E3438A0();
      break;
  }

  return sub_21E344040();
}

uint64_t sub_21E1DFC38()
{
  sub_21E344020();
  WFGeneratedOutputType.hash(into:)();
  return sub_21E344040();
}

unint64_t sub_21E1DFC84()
{
  result = qword_27CEB87B8;
  if (!qword_27CEB87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB87B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ContentKit21WFGeneratedOutputTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21E1DFCF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E1DFD44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_1_5(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, unint64_t a2)
{
  sub_21E1DF880(a1, a2);
  sub_21E1DF880(v2, v3);

  return sub_21E1DFA50(v2, v3);
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_21E3437A0();
}

uint64_t OUTLINED_FUNCTION_9_3()
{
}

uint64_t OUTLINED_FUNCTION_10_3()
{
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_21E3437A0();
}

id static LNValue.placeDescriptorValue(withPlacemark:)(void *a1)
{
  sub_21E1C868C(0, &qword_27CEB87C0);
  v2 = sub_21E343C10();
  v3 = sub_21E1CAFDC(0xD00000000000001ALL, 0x800000021E35A090, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 identifier];
  sub_21E3437E0();

  v5 = objc_allocWithZone(MEMORY[0x277D23808]);
  v6 = sub_21E1E06B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21E353700;
  v28 = sub_21E1C868C(0, &qword_27CEB87C8);
  v8 = objc_opt_self();
  v9 = a1;
  v10 = [v8 placemarkValueType];
  v11 = objc_allocWithZone(MEMORY[0x277D23950]);
  v12 = sub_21E1C7778(v27, v10);
  v13 = objc_allocWithZone(MEMORY[0x277D238D0]);
  *(v7 + 32) = sub_21E1C77F0(0x72616D6563616C70, 0xE90000000000006BLL, v12);
  sub_21E1C868C(0, &qword_27CEB87D0);
  v14 = sub_21E1E0240();
  v15 = objc_allocWithZone(MEMORY[0x277D23950]);
  v16 = MEMORY[0x277D84F90];
  v17 = sub_21E1E0738(MEMORY[0x277D84F90], v14);
  v18 = objc_allocWithZone(MEMORY[0x277D238D0]);
  *(v7 + 40) = sub_21E1C77F0(0x6E65736572706572, 0xEF736E6F69746174, v17);
  v19 = sub_21E1E0240();
  v20 = objc_allocWithZone(MEMORY[0x277D23950]);
  v21 = sub_21E1E0738(v16, v19);
  v22 = objc_allocWithZone(MEMORY[0x277D238D0]);
  *(v7 + 48) = sub_21E1C77F0(0xD000000000000019, 0x800000021E35A0F0, v21);
  v23 = objc_allocWithZone(MEMORY[0x277D237F8]);
  v24 = sub_21E1E07BC(1, v6, v7, 0, 0);
  v28 = sub_21E1C868C(0, &qword_27CEB87D8);
  v27[0] = v24;
  v25 = objc_allocWithZone(MEMORY[0x277D23950]);
  return sub_21E1C7778(v27, v3);
}

id sub_21E1E0240()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21E3437A0();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

id sub_21E1E02B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = static LNValue.placeDescriptorValue(withPlacemark:)(v3);

  return v4;
}

id sub_21E1E02F8(void *a1)
{
  v1 = a1;
  LNEntity.placemark.getter();
  v3 = v2;

  return v3;
}

void LNEntity.placemark.getter()
{
  v1 = v0;
  sub_21E1C868C(0, &qword_27CEB87C0);
  v2 = sub_21E343C10();
  v3 = sub_21E1CAFDC(0xD00000000000001ALL, 0x800000021E35A090, v2);

  if (v3)
  {
    v4 = [v0 identifier];
    v5 = [v4 typeIdentifier];

    v6 = sub_21E3437E0();
    v8 = v7;

    v9 = [v3 identifier];
    v10 = sub_21E3437E0();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
    }

    else
    {
      v14 = sub_21E343F80();

      if ((v14 & 1) == 0)
      {

        return;
      }
    }

    v15 = [v1 properties];
    sub_21E1C868C(0, &qword_27CEB80B8);
    v16 = sub_21E3439D0();

    v17 = sub_21E1C905C(v16);
    for (i = 0; ; ++i)
    {
      if (v17 == i)
      {

        return;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x223D556A0](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v21 = [v19 identifier];
      v22 = sub_21E3437E0();
      v24 = v23;

      if (v22 == 0x72616D6563616C70 && v24 == 0xE90000000000006BLL)
      {
        break;
      }

      v26 = sub_21E343F80();

      if (v26)
      {
        goto LABEL_24;
      }
    }

LABEL_24:

    v27 = [v20 value];

    if (v27)
    {
      v28 = [v27 value];

      sub_21E343CE0();
      swift_unknownObjectRelease();

      sub_21E1C868C(0, &qword_27CEB87C8);
      swift_dynamicCast();
    }

    else
    {
    }
  }
}

id sub_21E1E06B0()
{
  v1 = sub_21E3437A0();

  v2 = sub_21E3437A0();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

id sub_21E1E0738(uint64_t a1, void *a2)
{
  sub_21E1C868C(0, &qword_27CEB87E0);
  v4 = sub_21E3439C0();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

id sub_21E1E07BC(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21E1C868C(0, &qword_27CEB80B8);
  v9 = sub_21E3439C0();

  if (a5)
  {
    v10 = sub_21E3437A0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithTransient:a1 & 1 identifier:a2 properties:v9 managedAccountIdentifier:v10];

  return v11;
}

uint64_t static WFAskLLMModelCatalog.getModel(modelName:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = type metadata accessor for WFChatGPTModel();
      result = swift_allocObject();
      *(result + 16) = 1;
      v5 = &protocol witness table for WFChatGPTModel;
    }

    else
    {
      v3 = type metadata accessor for WFAFMDevice3BModel();
      result = swift_allocObject();
      v5 = &protocol witness table for WFAFMDevice3BModel;
    }
  }

  else
  {
    v3 = type metadata accessor for WFAFMInstructServerV1Model();
    result = swift_allocObject();
    v5 = &protocol witness table for WFAFMInstructServerV1Model;
  }

  a2[3] = v3;
  a2[4] = v5;
  *a2 = result;
  return result;
}

uint64_t sub_21E1E09D8(char a1, char a2)
{
  v5 = sub_21E342DE0();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  if (a1)
  {
    if (a2)
    {
      sub_21E342DD0();
    }

    else
    {
      sub_21E342DC0();
    }
  }

  else if (a2)
  {
    sub_21E342DA0();
  }

  else
  {
    sub_21E342D90();
  }

  v9 = sub_21E342DB0();
  (*(v7 + 8))(v2, v5);
  return v9;
}

uint64_t sub_21E1E0AC0()
{
  if (sub_21E1E1F98())
  {
    sub_21E342D20();
  }

  else
  {
    sub_21E342D00();
  }

  v0 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1 = OUTLINED_FUNCTION_4_6(*(*(v0 + 8) + 8));
  OUTLINED_FUNCTION_3_6(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_21E1E0C74()
{
  if (sub_21E1E20BC())
  {
    sub_21E342D30();
  }

  else
  {
    sub_21E342D10();
  }

  v0 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1 = OUTLINED_FUNCTION_4_6(*(v0 + 8));
  OUTLINED_FUNCTION_3_6(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_21E1E0DD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_21E342DE0();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  a3();
  v9 = sub_21E342DB0();
  (*(v7 + 8))(v3, v5);
  return v9;
}

uint64_t sub_21E1E0EEC()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_21E1E0F48();
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;

    sub_21E1E13C8(v3);
  }

  sub_21E1E13D8(v1);
  return v2;
}

uint64_t sub_21E1E0F48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E353720;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x800000021E35A330;
  *(inited + 48) = 0xD000000000000025;
  *(inited + 56) = 0x800000021E35A360;
  *(inited + 64) = 0xD000000000000027;
  *(inited + 72) = 0x800000021E35A390;
  *(inited + 80) = 0xD000000000000025;
  *(inited + 88) = 0x800000021E35A3C0;
  *(inited + 96) = 0xD000000000000029;
  *(inited + 104) = 0x800000021E35A3F0;
  *(inited + 112) = 0xD000000000000028;
  *(inited + 120) = 0x800000021E35A420;
  *(inited + 128) = 0xD00000000000002BLL;
  *(inited + 136) = 0x800000021E35A450;
  *(inited + 144) = 0xD00000000000002FLL;
  *(inited + 152) = 0x800000021E35A480;
  v34 = MEMORY[0x277D84F90];
  sub_21E1D5A64(0, 8, 0);
  v1 = v34;
  v3 = *(inited + 32);
  v2 = *(inited + 40);
  v4 = *(v34 + 16);
  v5 = *(v34 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    sub_21E1D5A64((v5 > 1), v4 + 1, 1);
    v1 = v34;
    v5 = *(v34 + 24);
    v6 = v5 >> 1;
  }

  *(v1 + 16) = v7;
  v8 = v1 + 40 * v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v8 + 56) = 129;
  *(v8 + 64) = 2;
  if (v6 <= v7)
  {
    sub_21E1D5A64((v5 > 1), v4 + 2, 1);
    v1 = v34;
  }

  *(v1 + 16) = v4 + 2;
  v9 = v1 + 40 * v7;
  *(v9 + 32) = 0xD000000000000025;
  *(v9 + 40) = 0x800000021E35A360;
  *(v9 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v9 + 56) = 129;
  *(v9 + 64) = 2;
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    sub_21E1D5A64((v10 > 1), v11 + 1, 1);
  }

  v13 = v34;
  *(v34 + 16) = v12;
  v14 = v34 + 40 * v11;
  *(v14 + 32) = 0xD000000000000027;
  *(v14 + 40) = 0x800000021E35A390;
  *(v14 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v14 + 56) = 129;
  *(v14 + 64) = 2;
  v15 = *(v34 + 24);
  v16 = v11 + 2;
  if (v12 >= v15 >> 1)
  {
    sub_21E1D5A64((v15 > 1), v16, 1);
    v13 = v34;
  }

  *(v13 + 16) = v16;
  v17 = v13 + 40 * v12;
  *(v17 + 32) = 0xD000000000000025;
  *(v17 + 40) = 0x800000021E35A3C0;
  *(v17 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v17 + 56) = 129;
  *(v17 + 64) = 2;
  v19 = *(v13 + 16);
  v18 = *(v13 + 24);
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    sub_21E1D5A64((v18 > 1), v19 + 1, 1);
    v13 = v34;
    v18 = *(v34 + 24);
    v20 = v18 >> 1;
  }

  *(v13 + 16) = v21;
  v22 = v13 + 40 * v19;
  *(v22 + 32) = 0xD000000000000029;
  *(v22 + 40) = 0x800000021E35A3F0;
  *(v22 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v22 + 56) = 129;
  *(v22 + 64) = 2;
  v23 = v19 + 2;
  if (v20 <= v21)
  {
    sub_21E1D5A64((v18 > 1), v19 + 2, 1);
  }

  v24 = v34;
  *(v34 + 16) = v23;
  v25 = v34 + 40 * v21;
  *(v25 + 32) = 0xD000000000000028;
  *(v25 + 40) = 0x800000021E35A420;
  *(v25 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v25 + 56) = 129;
  *(v25 + 64) = 2;
  v27 = *(v34 + 16);
  v26 = *(v34 + 24);
  v28 = v26 >> 1;
  v29 = v27 + 1;
  if (v26 >> 1 <= v27)
  {
    sub_21E1D5A64((v26 > 1), v27 + 1, 1);
    v24 = v34;
    v26 = *(v34 + 24);
    v28 = v26 >> 1;
  }

  *(v24 + 16) = v29;
  v30 = v24 + 40 * v27;
  *(v30 + 32) = 0xD00000000000002BLL;
  *(v30 + 40) = 0x800000021E35A450;
  *(v30 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v30 + 56) = 129;
  *(v30 + 64) = 2;
  v31 = v27 + 2;
  if (v28 <= v29)
  {
    sub_21E1D5A64((v26 > 1), v31, 1);
    v24 = v34;
  }

  *(v24 + 16) = v31;
  v32 = v24 + 40 * v29;
  *(v32 + 32) = 0xD00000000000002FLL;
  *(v32 + 40) = 0x800000021E35A480;
  *(v32 + 48) = "{{ specialToken.chat.role.user }}{{ userContent }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v32 + 56) = 129;
  *(v32 + 64) = 2;
  swift_setDeallocating();
  sub_21E23BB3C();
  return sub_21E2344F8(v24);
}

uint64_t sub_21E1E13C8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21E1E13D8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21E1E13E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_21E1E13C8(v2);
}

uint64_t (*sub_21E1E13F8(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21E1E0EEC();
  return sub_21E1E1440;
}

uint64_t sub_21E1E1440(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 16);
  *(v2 + 16) = *a1;
  if (a2)
  {

    sub_21E1E13C8(v3);
  }

  else
  {

    return sub_21E1E13C8(v3);
  }
}

uint64_t sub_21E1E14B0()
{
  sub_21E342CF0();
  v0 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1 = OUTLINED_FUNCTION_4_6(*(*(v0 + 8) + 8));
  OUTLINED_FUNCTION_3_6(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_21E1E151C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB87E8);
  sub_21E343440();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21E3522F0;
  sub_21E343430();
  return v0;
}

uint64_t sub_21E1E1600@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t *a2@<X8>)
{
  a1(v8);
  v3 = v9;
  v4 = v10;
  v5 = __swift_project_boxed_opaque_existential_1(v8, v9);
  a2[3] = v3;
  a2[4] = *(v4 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t WFChatGPTModel.__deallocating_deinit()
{
  sub_21E1E13C8(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for WFAskLLMModelCatalog(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for WFAskLLMModelCatalog(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x282188380](a1, a2, 0);
}

uint64_t OUTLINED_FUNCTION_4_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);

  return MEMORY[0x282187FA0](v1, v3);
}

uint64_t sub_21E1E1F98()
{
  sub_21E3437E0();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_8_4();
  v3 = sub_21E232D14(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_21E3437A0();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_21E3437E0();
      v9 = v8;

      v10 = v7 == 12662 && v9 == 0xE200000000000000;
      if (v10 || (OUTLINED_FUNCTION_4_7() & 1) != 0)
      {

        v11 = 0;
LABEL_17:

        return v11;
      }

      if (v7 != 12918 || v9 != 0xE200000000000000)
      {
        OUTLINED_FUNCTION_4_7();
      }
    }

    v11 = 1;
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_21E1E20BC()
{
  sub_21E3437E0();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_8_4();
  result = sub_21E232D14(v1, v2);
  if (result)
  {
    v4 = result;
    v5 = sub_21E3437A0();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_21E3437E0();
      v9 = v8;

      v10 = v7 == 12662 && v9 == 0xE200000000000000;
      if (!v10 && (OUTLINED_FUNCTION_4_7() & 1) == 0)
      {
        if (v7 == 12918 && v9 == 0xE200000000000000)
        {
        }

        else
        {
          v12 = OUTLINED_FUNCTION_4_7();

          if ((v12 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_21E1E21F0(uint64_t a1)
{
  sub_21E1C4248(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMInstructServerV1Model();
  if (OUTLINED_FUNCTION_2_3())
  {

    return 1;
  }

  else
  {
    sub_21E1C4248(a1, v3);
    type metadata accessor for WFAFMDevice3BModel();
    result = OUTLINED_FUNCTION_2_3();
    if (result)
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_21E1E2280(uint64_t a1)
{
  sub_21E1C4248(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMInstructServerV1Model();
  if (OUTLINED_FUNCTION_2_3())
  {

    LOBYTE(v2) = sub_21E1E1F98();
  }

  else
  {
    sub_21E1C4248(a1, v4);
    type metadata accessor for WFAFMDevice3BModel();
    v2 = OUTLINED_FUNCTION_2_3();
    if (v2)
    {

      LOBYTE(v2) = sub_21E1E20BC();
    }
  }

  return v2 & 1;
}

uint64_t sub_21E1E2324(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5672657470616461 && a2 == 0xEF736E6F69737265;
  if (v4 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E61686E75 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

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

uint64_t sub_21E1E23FC(char a1)
{
  if (a1)
  {
    return 0x656C646E61686E75;
  }

  else
  {
    return 0x5672657470616461;
  }
}

uint64_t sub_21E1E2454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1E2324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1E247C(uint64_t a1)
{
  v2 = sub_21E1E26D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1E24B8(uint64_t a1)
{
  v2 = sub_21E1E26D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdapterVersion.Diagnostics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB87F0);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *v1;
  v12[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E1E26D0();

  sub_21E344060();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8800);
  sub_21E1E2994(&qword_27CEB8808, sub_21E1E2724);
  sub_21E343F40();

  if (!v2)
  {
    v13 = 1;
    sub_21E343F10();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_21E1E26D0()
{
  result = qword_27CEB87F8;
  if (!qword_27CEB87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB87F8);
  }

  return result;
}

unint64_t sub_21E1E2724()
{
  result = qword_27CEB8810;
  if (!qword_27CEB8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8810);
  }

  return result;
}

uint64_t AdapterVersion.Diagnostics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8818);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E1E26D0();
  sub_21E344050();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8800);
  v14[15] = 0;
  sub_21E1E2994(&qword_27CEB8820, sub_21E1E2A18);
  sub_21E343EC0();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_21E343E90();
  (*(v7 + 8))(v10, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_21E1E2994(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB8800);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E1E2A18()
{
  result = qword_27CEB8828;
  if (!qword_27CEB8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8828);
  }

  return result;
}

unint64_t static AdapterVersion.diagnostics(wasBlockedBySafety:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_21E1E1F98();
  swift_isUniquelyReferenced_nonNull_native();
  v4 = OUTLINED_FUNCTION_9_4();
  sub_21E1E2E24(v4, v5, 0);
  sub_21E1E20BC();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = OUTLINED_FUNCTION_9_4();
  result = sub_21E1E2E24(v6, v7, 2);
  *a2 = v9;
  *(a2 + 8) = a1;
  return result;
}

void static AdapterVersion.diagnosticsAsJSON(wasBlockedBySafety:)(char a1)
{
  sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v2);
  v3 = sub_21E343820();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21E342A20();
  swift_allocObject();
  sub_21E342A10();
  static AdapterVersion.diagnostics(wasBlockedBySafety:)(a1, &v7);
  sub_21E1E2F54();
  v4 = sub_21E342A00();
  v6 = v5;

  sub_21E343810();
  sub_21E343800();
  sub_21E1C99C4(v4, v6);
  OUTLINED_FUNCTION_10_4();
}

unint64_t sub_21E1E2E24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_21E1E773C(a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB8870);
  if ((sub_21E343DA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_21E1E773C(a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_21E343FA0();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (v15[7] + 16 * v11);
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {

    return sub_21E1E3744(v11, a3, a1, a2, v15);
  }
}

unint64_t sub_21E1E2F54()
{
  result = qword_27CEB8830;
  if (!qword_27CEB8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8830);
  }

  return result;
}

uint64_t sub_21E1E2FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AdapterVersion(_BYTE *result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21E1E30D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_21E1E3110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AdapterVersion.Diagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E1E3240()
{
  result = qword_27CEB8838;
  if (!qword_27CEB8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8838);
  }

  return result;
}

unint64_t sub_21E1E3298()
{
  result = qword_27CEB8840;
  if (!qword_27CEB8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8840);
  }

  return result;
}

unint64_t sub_21E1E32F0()
{
  result = qword_27CEB8848;
  if (!qword_27CEB8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8848);
  }

  return result;
}

_OWORD *sub_21E1E3344(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_6(a1, a2);
  sub_21E1E76DC();
  OUTLINED_FUNCTION_1_6();
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8868);
  if ((OUTLINED_FUNCTION_3_7() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_6_5();
  v8 = sub_21E1E76DC();
  if ((v7 & 1) != (v9 & 1))
  {
LABEL_13:
    result = sub_21E343FA0();
    __break(1u);
    return result;
  }

  v6 = v8;
LABEL_5:
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(*v2 + 56) + 32 * v6);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_10_4();

    return sub_21E1D8444(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    sub_21E1E378C(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_10_4();
  }
}

uint64_t sub_21E1E3438(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_6(a1, a2);
  sub_21E1E76DC();
  OUTLINED_FUNCTION_1_6();
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8858);
  if ((OUTLINED_FUNCTION_3_7() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_6_5();
  v8 = sub_21E1E76DC();
  if ((v7 & 1) != (v9 & 1))
  {
LABEL_13:
    result = sub_21E343FA0();
    __break(1u);
    return result;
  }

  v6 = v8;
LABEL_5:
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(*v2 + 56) + 40 * v6);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_10_4();

    return sub_21E1C2B8C(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    sub_21E1E37F8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_10_4();
  }
}

uint64_t sub_21E1E3530(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_6(a1, a2);
  sub_21E1E7780();
  OUTLINED_FUNCTION_1_6();
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8860);
  if ((OUTLINED_FUNCTION_3_7() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_6_5();
  v8 = sub_21E1E7780();
  if ((v7 & 1) != (v9 & 1))
  {
LABEL_13:
    result = sub_21E343FA0();
    __break(1u);
    return result;
  }

  v6 = v8;
LABEL_5:
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(*v2 + 56) + 40 * v6);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_10_4();

    return sub_21E1C2B8C(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    sub_21E1E37F8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_10_4();

    return sub_21E1DF880(v19, v20);
  }
}

void sub_21E1E362C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21E1E76DC();
  OUTLINED_FUNCTION_1_6();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8850);
  if ((OUTLINED_FUNCTION_3_7() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_21E1E76DC();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_21E343FA0();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
    OUTLINED_FUNCTION_10_4();
  }

  else
  {
    sub_21E1E3868(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_10_4();
  }
}

unint64_t sub_21E1E3744(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_21E1E378C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21E1D8444(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_21E1E37F8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21E1C2B8C(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21E1E3868(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return sub_21E343DA0();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return sub_21E343F80();
}

Swift::String __swiftcall WFGenerativeModelName.localizedName()()
{
  v0 = sub_21E1E3A30();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t WFGenerativeModelName.rawValue.getter()
{
  v1 = 0x54504774616843;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

Swift::String __swiftcall WFGenerativeModelName.localizedShortName()()
{
  v0 = sub_21E1E3A30();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_21E1E3A30()
{
  sub_21E343870();
  if (qword_27CEB7FA0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = qword_27CEB8248;
  v1 = sub_21E3437A0();
  v2 = sub_21E3437A0();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = sub_21E3437E0();
  return v4;
}

uint64_t WFGenerativeModelName.localizedCaption(using:)()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      v1 = WFMontaraEnablementHelper.selectedModelLocalizedName.getter();
      if (!v2)
      {
        return WFMontaraEnablementHelper.defaultModelLocalizedName.getter();
      }

      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21E343870();
    if (qword_27CEB7FA0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = qword_27CEB8248;
    v5 = sub_21E3437A0();
    v6 = sub_21E3437A0();

    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v3 = sub_21E3437E0();
  }

  return v3;
}

uint64_t WFGenerativeModelName.symbolName(using:)()
{
  if (!*v0)
  {
    return 0x69662E64756F6C63;
  }

  if (*v0 != 1)
  {
    return 0x656E6F687069;
  }

  result = WFMontaraEnablementHelper.selectedModelSymbolName.getter();
  if (!v2)
  {
    return WFMontaraEnablementHelper.defaultModelSymbolName.getter();
  }

  return result;
}

uint64_t WFGenerativeModelName.punchOutURL(using:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  if (*v1 == 1)
  {
    return WFMontaraEnablementHelper.selectedModelPunchoutURL.getter(a1);
  }

  sub_21E342BA0();
  v7 = sub_21E342BB0();
  result = __swift_getEnumTagSinglePayload(v5, 1, v7);
  if (result != 1)
  {
    return (*(*(v7 - 8) + 32))(a1, v5, v7);
  }

  __break(1u);
  return result;
}

ContentKit::WFGenerativeModelName_optional __swiftcall WFGenerativeModelName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21E343E40();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_21E1E3E4C@<X0>(unint64_t *a1@<X8>)
{
  result = WFGenerativeModelName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static WFGenerativeModelNameObject.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CEB8880 = a1;
  return result;
}

uint64_t sub_21E1E4050@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CEB8880;
  return result;
}

uint64_t sub_21E1E409C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CEB8880 = v1;
  return result;
}

id WFGenerativeModelNameObject.__allocating_init(model:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC10ContentKit27WFGenerativeModelNameObject_model] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id WFGenerativeModelNameObject.init(model:)(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC10ContentKit27WFGenerativeModelNameObject_model] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFGenerativeModelNameObject();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_21E1E41B4(void *a1)
{
  v2 = sub_21E3437A0();

  v3 = sub_21E3437A0();
  [a1 encodeObject:v2 forKey:v3];
}

uint64_t WFGenerativeModelNameObject.init(coder:)(void *a1)
{
  sub_21E1E4434();
  v2 = sub_21E343C20();
  if (v2)
  {
    v3 = v2;
    v5 = 0;
    v6 = 0;
    sub_21E3437D0();
  }

  type metadata accessor for WFGenerativeModelNameObject();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_21E1E4434()
{
  result = qword_27CEB8898;
  if (!qword_27CEB8898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8898);
  }

  return result;
}

id WFGenerativeModelNameObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFGenerativeModelNameObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFGenerativeModelNameObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21E1E454C()
{
  result = qword_27CEB88A0;
  if (!qword_27CEB88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88A0);
  }

  return result;
}

unint64_t sub_21E1E45A4()
{
  result = qword_27CEB88A8;
  if (!qword_27CEB88A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB88B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFGenerativeModelName(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E1E475C()
{
  result = qword_27CEB88C0;
  if (!qword_27CEB88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88C0);
  }

  return result;
}

uint64_t SafetyRejectionCause.RegionalRejectionSource.init(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v42 = v8 - v7;
  sub_21E343280();
  OUTLINED_FUNCTION_5();
  v45 = v10;
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v44 = v12 - v11;
  v13 = sub_21E3432B0();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_1();
  v19 = v18 - v17;
  v20 = sub_21E3432D0();
  OUTLINED_FUNCTION_5();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_1();
  v26 = v25 - v24;
  if (sub_21E3432E0())
  {
    v41 = a2;
    sub_21E343270();
    v27 = sub_21E3432C0();
    result = (*(v22 + 8))(v26, v20);
    v29 = 0;
    v30 = *(v27 + 16);
    do
    {
      if (v30 == v29)
      {

        a2 = v41;
        goto LABEL_9;
      }

      if (v29 >= *(v27 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v15 + 16))(v19, v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v29++, v13);
      v31 = sub_21E3432A0();
      result = (*(v15 + 8))(v19, v13);
    }

    while ((v31 & 1) == 0);

    sub_21E343290();
    v32 = (*(v45 + 88))(v44, v46);
    if (v32 == *MEMORY[0x277D0DA60])
    {
      sub_21E3432F0();
      OUTLINED_FUNCTION_1_3();
      result = (*(v33 + 8))(a1);
      v34 = 0;
    }

    else if (v32 == *MEMORY[0x277D0DA68])
    {
      sub_21E3432F0();
      OUTLINED_FUNCTION_1_3();
      result = (*(v36 + 8))(a1);
      v34 = 1;
    }

    else
    {
      sub_21E343100();
      v37 = sub_21E3434C0();
      v38 = sub_21E343B70();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_21E1BD000, v37, v38, "SafetyRejectedErrorInfo added a new, unhandled regional rejection origin", v39, 2u);
        MEMORY[0x223D57360](v39, -1, -1);
      }

      sub_21E3432F0();
      OUTLINED_FUNCTION_1_3();
      (*(v40 + 8))(a1);
      (*(v43 + 8))(v42, v4);
      result = (*(v45 + 8))(v44, v46);
      v34 = 2;
    }

    a2 = v41;
  }

  else
  {
LABEL_9:
    sub_21E3432F0();
    OUTLINED_FUNCTION_1_3();
    result = (*(v35 + 8))(a1);
    v34 = 2;
  }

  *a2 = v34;
  return result;
}

uint64_t sub_21E1E4C98()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

unint64_t sub_21E1E4CE0()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v3 = v0[1];
    sub_21E343D20();

    OUTLINED_FUNCTION_14_4();
    v10 = 0xD000000000000020;
    MEMORY[0x223D55250](v1, v3);
    return v10;
  }

  if (*(v0 + 16) == 1)
  {
    v10 = 0;
    sub_21E343D20();
    MEMORY[0x223D55250](0xD00000000000003ALL, 0x800000021E35B490);
    v2 = sub_21E343F60();
    MEMORY[0x223D55250](v2);

    return v10;
  }

  switch(v1)
  {
    case 1:
      result = 0xD00000000000002ELL;
      break;
    case 2:
      OUTLINED_FUNCTION_2_4();
      result = v6 + 7;
      break;
    case 3:
      OUTLINED_FUNCTION_2_4();
      result = v7 - 19;
      break;
    case 4:
      OUTLINED_FUNCTION_2_4();
      result = v5 - 21;
      break;
    case 5:
      OUTLINED_FUNCTION_2_4();
      result = v8 - 18;
      break;
    case 6:
      OUTLINED_FUNCTION_2_4();
      result = v9 - 9;
      break;
    default:
      result = 0xD00000000000002ELL;
      break;
  }

  return result;
}

uint64_t WFAskLLMError.FailedCoercionType.hashValue.getter()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

uint64_t WFAskLLMError.errorCode.getter()
{
  sub_21E1E7674(v0, v5);
  result = 100;
  switch(v10)
  {
    case 1:
      sub_21E1E76AC(v5);
      result = 200;
      break;
    case 2:
      sub_21E1E76AC(v5);
      result = 600;
      break;
    case 3:
      sub_21E1E76AC(v5);
      result = 700;
      break;
    case 4:
      sub_21E1E76AC(v5);
      result = 701;
      break;
    case 5:
      result = 800;
      break;
    case 6:
      sub_21E1E76AC(v5);
      result = 900;
      break;
    case 7:
      result = 1000;
      break;
    case 8:

      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      result = 1100;
      break;
    case 9:
      result = 1200;
      break;
    case 10:
      sub_21E1E76AC(v5);
      result = 1300;
      break;
    case 11:
      v2 = v6[1] | v6[0] | v5[1];
      if (v8 | v9 | v5[0] | v7 | v2)
      {
        v3 = v8 | v9 | v7 | v2;
        if (v5[0] != 1 || v3)
        {
          if (v5[0] != 2 || v3)
          {
            if (v5[0] != 3 || v3)
            {
              if (v5[0] != 4 || v3)
              {
                if (v5[0] != 5 || v3)
                {
                  if (v5[0] != 6 || v3)
                  {
                    if (v5[0] != 7 || v3)
                    {
                      if (v5[0] != 8 || v3)
                      {
                        if (v5[0] != 9 || v3)
                        {
                          if (v5[0] != 10 || v3)
                          {
                            if (v5[0] != 11 || v3)
                            {
                              if (v5[0] != 12 || v3)
                              {
                                if (v5[0] != 13 || v3)
                                {
                                  if (v5[0] != 14 || v3)
                                  {
                                    if (v5[0] != 15 || v3)
                                    {
                                      if (v5[0] != 16 || v3)
                                      {
                                        if (v5[0] != 17 || v3)
                                        {
                                          if (v5[0] != 18 || v3)
                                          {
                                            if (v5[0] != 19 || v3)
                                            {
                                              if (v3)
                                              {
                                                v4 = 0;
                                              }

                                              else
                                              {
                                                v4 = v5[0] == 20;
                                              }

                                              if (v4)
                                              {
                                                result = 1400;
                                              }

                                              else
                                              {
                                                result = 1401;
                                              }
                                            }

                                            else
                                            {
                                              result = 714;
                                            }
                                          }

                                          else
                                          {
                                            result = 713;
                                          }
                                        }

                                        else
                                        {
                                          result = 712;
                                        }
                                      }

                                      else
                                      {
                                        result = 711;
                                      }
                                    }

                                    else
                                    {
                                      result = 710;
                                    }
                                  }

                                  else
                                  {
                                    result = 709;
                                  }
                                }

                                else
                                {
                                  result = 708;
                                }
                              }

                              else
                              {
                                result = 707;
                              }
                            }

                            else
                            {
                              result = 706;
                            }
                          }

                          else
                          {
                            result = 1001;
                          }
                        }

                        else
                        {
                          result = 503;
                        }
                      }

                      else
                      {
                        result = 501;
                      }
                    }

                    else
                    {
                      result = 502;
                    }
                  }

                  else
                  {
                    result = 705;
                  }
                }

                else
                {
                  result = 703;
                }
              }

              else
              {
                result = 702;
              }
            }

            else
            {
              result = 717;
            }
          }

          else
          {
            result = 716;
          }
        }

        else
        {
          result = 715;
        }
      }

      else
      {
        result = 601;
      }

      break;
    default:
      return result;
  }

  return result;
}

id WFAskLLMError.errorMessage.getter()
{
  sub_21E1E7674(v0, &v66);
  v3 = v66;
  v2 = v67;
  switch(v72)
  {
    case 1:
      sub_21E1E76AC(&v66);
      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 != -1)
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    case 2:
      sub_21E1E76AC(&v66);
      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_101;
      }

      goto LABEL_103;
    case 3:
      if (v67)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_24_2();
        if (qword_27CEB7FA0 != -1)
        {
          goto LABEL_107;
        }

        goto LABEL_27;
      }

      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 != -1)
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    case 4:
      if (!v67)
      {
        goto LABEL_54;
      }

      v7 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v7 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_24_2();
        if (qword_27CEB7FA0 != -1)
        {
LABEL_107:
          OUTLINED_FUNCTION_0_0();
        }

LABEL_27:
        OUTLINED_FUNCTION_13_4();
        v13 = sub_21E3437A0();
        OUTLINED_FUNCTION_13_4();
        v14 = sub_21E3437A0();

        v16 = OUTLINED_FUNCTION_4_1(v15, sel_localizedStringForKey_value_table_);

        sub_21E3437E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180);
        v17 = OUTLINED_FUNCTION_21_2();
        *(v17 + 16) = xmmword_21E3522F0;
        *(v17 + 56) = MEMORY[0x277D837D0];
        *(v17 + 64) = sub_21E1C8A10();
        *(v17 + 32) = v3;
        *(v17 + 40) = v2;
        OUTLINED_FUNCTION_20_1();
        sub_21E3437B0();
        OUTLINED_FUNCTION_1_4();

        goto LABEL_50;
      }

LABEL_54:
      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 != -1)
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    case 5:
      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_101;
      }

      goto LABEL_103;
    case 6:
      sub_21E1E76AC(&v66);
      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_101;
      }

      goto LABEL_103;
    case 7:
      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_101;
      }

      goto LABEL_103;
    case 8:
      sub_21E1C2B8C(&v68, v65);
      sub_21E1C4248(v65, &v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
      type metadata accessor for WFChatGPTModel();
      if (swift_dynamicCast())
      {

        sub_21E343870();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_45;
        }
      }

      else
      {
        sub_21E343870();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_45;
        }
      }

      OUTLINED_FUNCTION_0_0();
LABEL_45:
      v26 = OUTLINED_FUNCTION_29_2();
      v27 = OUTLINED_FUNCTION_29_2();

      v28 = OUTLINED_FUNCTION_18_2();

      sub_21E3437E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_21E353BB0;
      v30 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      v31 = sub_21E1C8A10();
      *(v29 + 64) = v31;
      *(v29 + 32) = v3;
      *(v29 + 40) = v2;
      v32 = v65[4];
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      v33 = OUTLINED_FUNCTION_1();
      v34(v33, v32);
      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      v39 = sub_21E3437A0();
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_1();

      v2 = OUTLINED_FUNCTION_19_3();

      v40 = sub_21E3437E0();
      v42 = v41;

      *(v29 + 96) = v30;
      *(v29 + 104) = v31;
      *(v29 + 72) = v40;
      *(v29 + 80) = v42;
      sub_21E3437B0();
      OUTLINED_FUNCTION_1_4();

      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      return v2;
    case 9:
      sub_21E343870();
      OUTLINED_FUNCTION_24_2();
      if (qword_27CEB7FA0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v8 = qword_27CEB8248;
      OUTLINED_FUNCTION_13_4();
      v9 = sub_21E3437A0();
      OUTLINED_FUNCTION_13_4();
      v10 = sub_21E3437A0();

      v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

      sub_21E3437E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180);
      v12 = OUTLINED_FUNCTION_21_2();
      *(v12 + 16) = xmmword_21E3522F0;
      sub_21E343870();
      v36 = v35;
      v37 = sub_21E3437A0();
      v38 = sub_21E3437A0();

      v2 = [v8 localizedStringForKey:v37 value:v38 table:0];

      sub_21E3437E0();
      OUTLINED_FUNCTION_25_2();

      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_21E1C8A10();
      *(v12 + 32) = v36;
      *(v12 + 40) = v38;
      sub_21E3437B0();
      OUTLINED_FUNCTION_1_4();

      goto LABEL_50;
    case 10:
      v18 = *(&v68 + 1);
      sub_21E343870();
      if (qword_27CEB7FA0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v19 = qword_27CEB8248;
      v20 = sub_21E3437A0();
      v21 = sub_21E3437A0();

      v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

      sub_21E3437E0();
      OUTLINED_FUNCTION_25_2();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180);
      v23 = OUTLINED_FUNCTION_21_2();
      *(v23 + 16) = xmmword_21E3522F0;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_21E1C8A10();
      *(v23 + 32) = v3;
      *(v23 + 40) = v2;
      sub_21E3437B0();
      OUTLINED_FUNCTION_1_4();

      v65[0] = v2;
      v65[1] = v22;
      if (!VCIsInternalBuild())
      {
        goto LABEL_50;
      }

      if (v18)
      {
        sub_21E343D20();

        OUTLINED_FUNCTION_14_4();
        v64 = v24;
        v25 = OUTLINED_FUNCTION_20_1();
        MEMORY[0x223D55250](v25);

        MEMORY[0x223D55250](93, 0xE100000000000000);
        MEMORY[0x223D55250](0xD000000000000012, v64);

        return v65[0];
      }

      return v2;
    case 11:
      v4 = v70 | v69 | *(&v68 + 1);
      if (!(v68 | v67 | v66 | v71 | v4))
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      v5 = v68 | v67 | v71 | v4;
      if (v66 == 1 && v5 == 0)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 2 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 3 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 4 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 5 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 6 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 7 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 8 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 9 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 == 10 && !v5)
      {
        sub_21E343870();
        OUTLINED_FUNCTION_5_4();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (v66 != 11 || v5)
      {
        if (v66 != 12 || v5)
        {
          if (v66 != 13 || v5)
          {
            if (v66 == 14 && !v5)
            {
              sub_21E343870();
              OUTLINED_FUNCTION_5_4();
              if (qword_27CEB7FA0 == -1)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            if (v66 == 15 && !v5)
            {
              sub_21E343870();
              OUTLINED_FUNCTION_5_4();
              if (qword_27CEB7FA0 == -1)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            if (v66 == 16 && !v5)
            {
              sub_21E343870();
              OUTLINED_FUNCTION_5_4();
              if (qword_27CEB7FA0 == -1)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            if (v66 == 17 && !v5)
            {
              sub_21E343870();
              OUTLINED_FUNCTION_5_4();
              if (qword_27CEB7FA0 == -1)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            if (v66 == 18 && !v5)
            {
              sub_21E343870();
              OUTLINED_FUNCTION_5_4();
              if (qword_27CEB7FA0 == -1)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            if (v66 == 19 && !v5)
            {
              sub_21E343870();
              OUTLINED_FUNCTION_5_4();
              if (qword_27CEB7FA0 == -1)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            if (v66 != 20 || v5)
            {
              sub_21E343870();
              OUTLINED_FUNCTION_5_4();
              if (qword_27CEB7FA0 == -1)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            v55 = [objc_opt_self() currentDevice];
            [v55 idiom];

            sub_21E343870();
            if (qword_27CEB7FA0 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v56 = qword_27CEB8248;
            OUTLINED_FUNCTION_20_1();
            v57 = sub_21E3437A0();
            OUTLINED_FUNCTION_20_1();
            v58 = sub_21E3437A0();

            v59 = [v56 localizedStringForKey:v57 value:v58 table:0];

            sub_21E3437E0();
            OUTLINED_FUNCTION_24_2();

            sub_21E343870();
            if (qword_27CEB7FA0 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v60 = sub_21E3437A0();
            v61 = sub_21E3437A0();

            v2 = [v56 localizedStringForKey:v60 value:v61 table:0];

            sub_21E3437E0();
            OUTLINED_FUNCTION_22_3();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180);
            v62 = OUTLINED_FUNCTION_21_2();
            *(v62 + 16) = xmmword_21E3522F0;
            *(v62 + 56) = MEMORY[0x277D837D0];
            *(v62 + 64) = sub_21E1C8A10();
            *(v62 + 32) = v58;
            *(v62 + 40) = v57;
            sub_21E3437B0();
            OUTLINED_FUNCTION_1_4();

LABEL_50:

            return v2;
          }

          v48 = [objc_opt_self() currentDevice];
          sub_21E1E8028(v48);
          if (!v49)
          {
            sub_21E343870();
            OUTLINED_FUNCTION_5_4();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_101;
            }

            goto LABEL_103;
          }

          OUTLINED_FUNCTION_1_4();
          sub_21E343870();
          if (qword_27CEB7FA0 == -1)
          {
LABEL_123:
            OUTLINED_FUNCTION_17_3();
            v50 = sub_21E3437A0();
            OUTLINED_FUNCTION_17_3();
            v51 = sub_21E3437A0();

            v53 = OUTLINED_FUNCTION_29(v52, sel_localizedStringForKey_value_table_);

            sub_21E3437E0();
            OUTLINED_FUNCTION_22_3();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180);
            v54 = OUTLINED_FUNCTION_21_2();
            *(v54 + 16) = xmmword_21E3522F0;
            *(v54 + 56) = MEMORY[0x277D837D0];
            *(v54 + 64) = sub_21E1C8A10();
            *(v54 + 32) = v2;
            *(v54 + 40) = &v66;
            sub_21E3437B0();
            OUTLINED_FUNCTION_1_4();

            goto LABEL_50;
          }
        }

        else
        {
          v46 = [objc_opt_self() currentDevice];
          sub_21E1E8028(v46);
          if (!v47)
          {
            sub_21E343870();
            OUTLINED_FUNCTION_5_4();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_101;
            }

            goto LABEL_103;
          }

          OUTLINED_FUNCTION_1_4();
          sub_21E343870();
          if (qword_27CEB7FA0 == -1)
          {
            goto LABEL_123;
          }
        }

        OUTLINED_FUNCTION_0_0();
        goto LABEL_123;
      }

      sub_21E343870();
      OUTLINED_FUNCTION_5_4();
      if (qword_27CEB7FA0 != -1)
      {
LABEL_103:
        OUTLINED_FUNCTION_0_0();
      }

LABEL_101:
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1();

      v44 = OUTLINED_FUNCTION_1_7(v43, sel_localizedStringForKey_value_table_);

      sub_21E3437E0();
      OUTLINED_FUNCTION_1_4();

      return v2;
    default:
      switch(v66)
      {
        case 1:
          sub_21E343870();
          OUTLINED_FUNCTION_5_4();
          if (qword_27CEB7FA0 != -1)
          {
            goto LABEL_103;
          }

          break;
        case 2:
          sub_21E343870();
          OUTLINED_FUNCTION_5_4();
          if (qword_27CEB7FA0 != -1)
          {
            goto LABEL_103;
          }

          break;
        case 3:
          sub_21E343870();
          OUTLINED_FUNCTION_5_4();
          if (qword_27CEB7FA0 != -1)
          {
            goto LABEL_103;
          }

          break;
        case 4:
          sub_21E343870();
          OUTLINED_FUNCTION_5_4();
          if (qword_27CEB7FA0 != -1)
          {
            goto LABEL_103;
          }

          break;
        case 5:
          sub_21E343870();
          OUTLINED_FUNCTION_5_4();
          if (qword_27CEB7FA0 != -1)
          {
            goto LABEL_103;
          }

          break;
        default:
          sub_21E343870();
          OUTLINED_FUNCTION_5_4();
          if (qword_27CEB7FA0 != -1)
          {
            goto LABEL_103;
          }

          break;
      }

      goto LABEL_101;
  }
}

uint64_t sub_21E1E6CF8()
{
  sub_21E1E7674(v0, &v14);
  v2 = v14;
  v1 = v15;
  v4 = v16;
  v3 = v17;
  switch(v21)
  {
    case 2:
      goto LABEL_18;
    case 5:
      sub_21E343D20();
      MEMORY[0x223D55250](0xD00000000000002ELL, 0x800000021E35B440);
      v22 = v2;
      v5 = sub_21E343F60();
      MEMORY[0x223D55250](v5);

      MEMORY[0x223D55250](0x756D6978616D202CLL, 0xEC000000203D206DLL);
      v22 = v1;
      v6 = sub_21E343F60();
      MEMORY[0x223D55250](v6);

      MEMORY[0x223D55250](46, 0xE100000000000000);
      v2 = 0;
      v1 = 0xE000000000000000;
      goto LABEL_18;
    case 6:
      v7 = v18;

      v8 = sub_21E1E4CE0();
      v10 = v9;
      sub_21E1E8098(v2, v1, v4);
      v22 = v8;
      v23 = v10;
      if (v7 == 2)
      {
        v1 = v10;
        v2 = v8;
      }

      else
      {
        BYTE8(v13) = 0;
        sub_21E343D20();
        MEMORY[0x223D55250](0xD00000000000001DLL, 0x800000021E35B470);
        *&v13 = v7 & 1;
        sub_21E343D90();
        MEMORY[0x223D55250](93, 0xE100000000000000);
        MEMORY[0x223D55250](*(&v13 + 1), 0xE000000000000000);

        v2 = v22;
        v1 = v23;
      }

      goto LABEL_19;
    case 10:

      if (v3)
      {
        v2 = v4;
      }

      else
      {
        v2 = 0x6E776F6E6B6E753CLL;
      }

      if (v3)
      {
        v1 = v3;
      }

      else
      {
        v1 = 0xE90000000000003ELL;
      }

      goto LABEL_18;
    case 11:
      if (v14 != 21 || (v20 | v19 | v18 | v15 | v16 | v17) != 0)
      {
        goto LABEL_15;
      }

      v2 = 0xD000000000000013;
      v1 = 0x800000021E35B420;
LABEL_18:
      v22 = v2;
      v23 = v1;
LABEL_19:
      v14 = 0;
      v15 = 0xE000000000000000;
      sub_21E343D20();

      v14 = 0x65746E4920BFA3EFLL;
      v15 = 0xAE00203A6C616E72;
      MEMORY[0x223D55250](v2, v1);

      result = v14;
      break;
    default:
LABEL_15:
      sub_21E1E76AC(&v14);
      result = 0;
      break;
  }

  return result;
}

uint64_t WFAskLLMError.errorUserInfo.getter()
{
  v3 = MEMORY[0x277D837D0];
  sub_21E343760();
  if (VCIsInternalBuild() && (sub_21E1E6CF8(), v4))
  {
    OUTLINED_FUNCTION_25_2();
    v5 = sub_21E3437E0();
    v49 = v3;
    *&v46 = WFAskLLMError.errorMessage.getter();
    *(&v46 + 1) = v6;
    OUTLINED_FUNCTION_28_2(&v46, &v51);
    v7 = OUTLINED_FUNCTION_10_5();
    sub_21E1E3344(v7, v5);

    v8 = sub_21E3437E0();
    v49 = v3;
    *&v46 = v1;
    *(&v46 + 1) = v2;
    OUTLINED_FUNCTION_28_2(&v46, &v51);
    v9 = OUTLINED_FUNCTION_10_5();
    sub_21E1E3344(v9, v8);
  }

  else
  {
    sub_21E3437E0();
    OUTLINED_FUNCTION_25_2();
    v49 = v3;
    *&v46 = WFAskLLMError.errorMessage.getter();
    *(&v46 + 1) = v10;
    OUTLINED_FUNCTION_28_2(&v46, &v51);
    v11 = OUTLINED_FUNCTION_10_5();
    sub_21E1E3344(v11, v1);
  }

  v12 = v45;
  sub_21E1E7674(v0, &v46);
  if (v50 == 7)
  {
    if (v46)
    {
      if (v46 == 1)
      {
        v21 = 0x54504774616843;
        v22 = 0xE700000000000000;
      }

      else
      {
        OUTLINED_FUNCTION_14_4();
        v21 = v24 + 9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_4();
      v21 = v23 - 1;
    }

    *(&v52 + 1) = v3;
    *&v51 = v21;
    *(&v51 + 1) = v22;
    v25 = OUTLINED_FUNCTION_28_2(&v51, &v45);
    OUTLINED_FUNCTION_16_3(v25, v26, v27, v28, v29, v30);
    return v43;
  }

  if (v50 == 6)
  {
    v13 = 0x54504774616843;
    v14 = v46;
    isUniquelyReferenced_nonNull_native = v48;
    v42 = v49;
    v16 = v47;
    v44 = v46;
    v17 = sub_21E1E4CE0();
    v19 = v18;
    *(&v52 + 1) = v3;
    sub_21E1E8098(v14, *(&v14 + 1), v16);
    *&v51 = v17;
    *(&v51 + 1) = v19;
    OUTLINED_FUNCTION_28_2(&v51, &v45);
    sub_21E1E3344(&v45, 0xD00000000000001DLL);
    v20 = 0xE700000000000000;
    switch(isUniquelyReferenced_nonNull_native)
    {
      case 1:
        goto LABEL_17;
      case 2:
        OUTLINED_FUNCTION_14_4();
        v13 = 0xD00000000000001CLL;
        goto LABEL_17;
      case 3:
        v38 = sub_21E1E76DC();
        if (v39)
        {
          v40 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v45 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8868);
          sub_21E343DA0();
          v12 = v45;

          sub_21E1D8444((*(v12 + 56) + 32 * v40), &v51);
          sub_21E343DC0();
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
        }

        v37 = v42;
        sub_21E1CB318(&v51);
        goto LABEL_22;
      default:
        OUTLINED_FUNCTION_14_4();
        v13 = 0xD000000000000012;
LABEL_17:
        *(&v52 + 1) = v3;
        *&v51 = v13;
        *(&v51 + 1) = v20;
        v31 = OUTLINED_FUNCTION_28_2(&v51, &v45);
        OUTLINED_FUNCTION_16_3(v31, v32, v33, v34, v35, v36);
        v12 = v44;
        v37 = v42;
LABEL_22:
        sub_21E342A20();
        swift_allocObject();
        sub_21E342A10();
        *&v45 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB88D0);
        sub_21E1E80AC();
        sub_21E342A00();
        OUTLINED_FUNCTION_22_3();

        *(&v52 + 1) = MEMORY[0x277CC9318];
        *&v51 = isUniquelyReferenced_nonNull_native;
        *(&v51 + 1) = v14;
        OUTLINED_FUNCTION_28_2(&v51, &v45);
        v43 = v12;
        sub_21E1E3344(&v45, 0xD00000000000001BLL);

        break;
    }

    return v43;
  }

  sub_21E1E76AC(&v46);
  return v12;
}

uint64_t sub_21E1E75D4(uint64_t a1)
{
  v2 = sub_21E1E86E8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21E1E7610(uint64_t a1)
{
  v2 = sub_21E1E86E8();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_21E1E76DC()
{
  OUTLINED_FUNCTION_20_3();
  sub_21E3438A0();
  sub_21E344040();
  v0 = OUTLINED_FUNCTION_17_3();

  return sub_21E1E794C(v0, v1, v2);
}

unint64_t sub_21E1E773C(char a1)
{
  v3 = sub_21E212204(*(v1 + 40), a1);

  return sub_21E1E7A00(a1, v3);
}

unint64_t sub_21E1E7780()
{
  OUTLINED_FUNCTION_20_3();
  switch(v0)
  {
    case 0:
      v1 = 0;
      goto LABEL_10;
    case 1:
      v1 = 1;
      goto LABEL_10;
    case 2:
      v1 = 2;
      goto LABEL_10;
    case 3:
      v1 = 3;
      goto LABEL_10;
    case 4:
      v1 = 4;
      goto LABEL_10;
    case 5:
      v1 = 5;
      goto LABEL_10;
    case 6:
      v1 = 7;
      goto LABEL_10;
    case 7:
      v1 = 8;
LABEL_10:
      MEMORY[0x223D55980](v1);
      break;
    default:
      MEMORY[0x223D55980](6);
      sub_21E3438A0();
      break;
  }

  sub_21E344040();
  v2 = OUTLINED_FUNCTION_17_3();

  return sub_21E1E7B94(v2, v3, v4);
}

unint64_t sub_21E1E787C()
{
  sub_21E3437E0();
  OUTLINED_FUNCTION_22_3();
  sub_21E344020();
  sub_21E3438A0();
  sub_21E344040();

  v0 = OUTLINED_FUNCTION_13_4();

  return sub_21E1E7E70(v0, v1);
}

unint64_t sub_21E1E7908(uint64_t a1)
{
  v2 = sub_21E343C50();

  return sub_21E1E7F68(a1, v2);
}

unint64_t sub_21E1E794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21E343F80() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21E1E7A00(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x54504774616843;
        }

        else
        {
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000021E359450;
        }
      }

      else
      {
        v8 = 0xD000000000000012;
        v7 = 0x800000021E359430;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x54504774616843 : 0xD00000000000001CLL;
        v10 = a1 == 1 ? 0xE700000000000000 : 0x800000021E359450;
      }

      else
      {
        v9 = 0xD000000000000012;
        v10 = 0x800000021E359430;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_21E343F80();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_21E1E7B94(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (2)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    switch(v11)
    {
      case 0uLL:
        if (a2)
        {
          sub_21E1DF880(a1, a2);
          v11 = 0;
          goto LABEL_22;
        }

        v14 = *v9;
        v15 = 0;
        goto LABEL_41;
      case 1uLL:
        if (a2 == 1)
        {
          v14 = *v9;
          v15 = 1;
          goto LABEL_41;
        }

        sub_21E1DF880(a1, a2);
        v11 = 1;
        goto LABEL_22;
      case 2uLL:
        if (a2 == 2)
        {
          v14 = *v9;
          v15 = 2;
          goto LABEL_41;
        }

        sub_21E1DF880(a1, a2);
        v11 = 2;
        goto LABEL_22;
      case 3uLL:
        if (a2 == 3)
        {
          v14 = *v9;
          v15 = 3;
          goto LABEL_41;
        }

        sub_21E1DF880(a1, a2);
        v11 = 3;
        goto LABEL_22;
      case 4uLL:
        if (a2 == 4)
        {
          v14 = *v9;
          v15 = 4;
          goto LABEL_41;
        }

        sub_21E1DF880(a1, a2);
        v11 = 4;
        goto LABEL_22;
      case 5uLL:
        if (a2 == 5)
        {
          v14 = *v9;
          v15 = 5;
          goto LABEL_41;
        }

        sub_21E1DF880(a1, a2);
        v11 = 5;
        goto LABEL_22;
      case 6uLL:
        if (a2 == 6)
        {
          v14 = *v9;
          v15 = 6;
          goto LABEL_41;
        }

        sub_21E1DF880(a1, a2);
        v11 = 6;
        goto LABEL_22;
      case 7uLL:
        if (a2 == 7)
        {
          v14 = *v9;
          v15 = 7;
          goto LABEL_41;
        }

        sub_21E1DF880(a1, a2);
        v11 = 7;
        goto LABEL_22;
      default:
        if (a2 < 8)
        {
          sub_21E1DF880(a1, a2);
          sub_21E1DF880(v10, v11);
LABEL_22:
          sub_21E1DFA50(v10, v11);
          sub_21E1DFA50(a1, a2);
LABEL_23:
          v5 = (v5 + 1) & v8;
          if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            return v5;
          }

          continue;
        }

        if (v10 != a1 || v11 != a2)
        {
          v13 = sub_21E343F80();
          sub_21E1DF880(a1, a2);
          sub_21E1DF880(v10, v11);
          sub_21E1DFA50(v10, v11);
          sub_21E1DFA50(a1, a2);
          if (v13)
          {
            return v5;
          }

          goto LABEL_23;
        }

        sub_21E1DF880(a1, a2);
        sub_21E1DF880(a1, a2);
        v14 = a1;
        v15 = a2;
LABEL_41:
        sub_21E1DFA50(v14, v15);
        sub_21E1DFA50(a1, a2);
        return v5;
    }
  }
}

unint64_t sub_21E1E7E70(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_21E3437E0();
    v7 = v6;
    if (v5 == sub_21E3437E0() && v7 == v8)
    {

      return i;
    }

    v10 = sub_21E343F80();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_21E1E7F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_21E1E4434();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_21E343C60();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21E1E8028(void *a1)
{
  v2 = [a1 localizedModel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21E3437E0();

  return v3;
}

uint64_t sub_21E1E8098(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_21E1E80AC()
{
  result = qword_27CEB88D8;
  if (!qword_27CEB88D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB88D0);
    sub_21E1E8130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88D8);
  }

  return result;
}

unint64_t sub_21E1E8130()
{
  result = qword_27CEB84A8;
  if (!qword_27CEB84A8)
  {
    type metadata accessor for WFAskLLMConversation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB84A8);
  }

  return result;
}

unint64_t sub_21E1E818C()
{
  result = qword_27CEB88E0;
  if (!qword_27CEB88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88E0);
  }

  return result;
}

unint64_t sub_21E1E81E4()
{
  result = qword_27CEB88E8;
  if (!qword_27CEB88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88E8);
  }

  return result;
}

unint64_t sub_21E1E823C()
{
  result = qword_27CEB88F0;
  if (!qword_27CEB88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88F0);
  }

  return result;
}

unint64_t sub_21E1E8290()
{
  result = qword_27CEB92D0;
  if (!qword_27CEB92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB92D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ContentKit20SafetyRejectionCauseO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21E1E8300(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_21E1E8340(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21E1E8384(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *sub_21E1E83B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10ContentKit13WFAskLLMErrorO(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 0xA)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21E1E84C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 57))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xC)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E1E8500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_21E1E8550(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WFAskLLMError.FailedCoercionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFAskLLMError.FailedCoercionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E1E86E8()
{
  result = qword_27CEB88F8;
  if (!qword_27CEB88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB88F8);
  }

  return result;
}

id OUTLINED_FUNCTION_1_7(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_21E3437A0();
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_21E3437A0();
}

_OWORD *OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_21E1E3344(va, 0xD000000000000013);
}

id OUTLINED_FUNCTION_18_2()
{

  return [v0 localizedStringForKey:v2 value:v1 table:0];
}

id OUTLINED_FUNCTION_19_3()
{

  return [v1 (v3 + 3668)];
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_21E344020();
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28_2(_OWORD *a1, _OWORD *a2)
{
  sub_21E1D8444(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_21E3437A0();
}

id WFContentProperty.valueItemClass.getter()
{
  result = [v0 valueItemClass];
  if (result)
  {
    swift_getObjCClassMetadata();
    sub_21E1C93E0();
    return swift_dynamicCastMetatype();
  }

  return result;
}

uint64_t WFContentPropertyPossibleValuesGetter.unsafeValues.getter()
{
  v1 = WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore(v0);
  v2 = sub_21E3439D0();

  return v2;
}

uint64_t sub_21E1E89CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21E1C2B8C(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_21E1E3530(v8, a2);
    result = sub_21E1DFA50(a2, a3);
    *v3 = v7;
  }

  else
  {
    sub_21E1C377C(a1, &qword_27CEB8950);
    sub_21E20EA60(v8);
    sub_21E1DFA50(a2, a3);
    return sub_21E1C377C(v8, &qword_27CEB8950);
  }

  return result;
}

id WFAskLLMModelSession.conversation.getter()
{
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void WFAskLLMModelSession.conversation.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t WFAskLLMModelSession.__allocating_init(generativeModel:conversation:useCaseId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_137();
  WFAskLLMModelSession.init(generativeModel:conversation:useCaseId:)(v7, v8, a3, a4);
  return v6;
}

void *WFAskLLMModelSession.init(generativeModel:conversation:useCaseId:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v109 = a4;
  v5 = v4;
  v97 = a3;
  v111 = a2;
  v107 = *v4;
  v95 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v100 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v101 = (v10 - v9);
  v11 = sub_21E342F20();
  v12 = OUTLINED_FUNCTION_28_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v104 = v14 - v13;
  sub_21E342FA0();
  OUTLINED_FUNCTION_5();
  v98 = v16;
  v99 = v15;
  v17 = MEMORY[0x28223BE20](v15);
  v96 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8900);
  v21 = OUTLINED_FUNCTION_28_0(v20);
  MEMORY[0x28223BE20](v21);
  v102 = v93 - v22;
  sub_21E342F40();
  OUTLINED_FUNCTION_5();
  v105 = v24;
  v106 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_1();
  v27 = v26 - v25;
  v28 = sub_21E342E20();
  OUTLINED_FUNCTION_5();
  v30 = v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = v93 - v35;
  v37 = OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_locale;
  v38 = sub_21E342CA0();
  __swift_storeEnumTagSinglePayload(v5 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_responseCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8908);
  sub_21E20DA10();
  *(v5 + v39) = sub_21E343760();
  v110 = v5;
  sub_21E1C4248(a1, (v5 + 4));
  v41 = a1[3];
  v40 = a1[4];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v42 = v108;
  (*(v40 + 104))(v41, v40);
  if (v42)
  {

    v43 = v112;
LABEL_21:
    v68 = v110;
    __swift_destroy_boxed_opaque_existential_1Tm((v110 + 4));
    sub_21E1C377C(v68 + OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_locale, &qword_27CEB8260);

    swift_deallocPartialClassInstance();
    v71 = v43;
    goto LABEL_22;
  }

  v94 = v27;
  v44 = v103;
  v93[1] = 0;
  v45 = v30;
  v46 = *(v30 + 16);
  v108 = v36;
  v46(v34, v36, v28);
  v47 = v102;
  sub_21E342F30();
  v48 = v106;
  v49 = v45;
  if (__swift_getEnumTagSinglePayload(v47, 1, v106) == 1)
  {
    v50 = v28;

    sub_21E1C377C(v47, &qword_27CEB8900);
    v51 = v101;
    sub_21E343100();
    v43 = v112;
    sub_21E1C4248(v112, v113);
    v52 = sub_21E3434C0();
    v53 = sub_21E343B60();
    v54 = os_log_type_enabled(v52, v53);
    v109 = v45;
    if (v54)
    {
      v55 = v50;
      OUTLINED_FUNCTION_130();
      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v106 = swift_slowAlloc();
      v114 = v106;
      *v56 = 136315138;
      v57 = v113[4];
      __swift_project_boxed_opaque_existential_1(v113, v113[3]);
      v58 = OUTLINED_FUNCTION_399();
      v59(v58, v57);
      v60 = v95;
      v93[0] = v55;
      sub_21E343870();
      if (qword_27CEB7FA0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v72 = qword_27CEB8248;
      sub_21E3437A0();
      OUTLINED_FUNCTION_399();
      v73 = sub_21E3437A0();

      v74 = [v72 localizedStringForKey:v51 value:v73 table:0];

      v75 = sub_21E3437E0();
      v77 = v76;

      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      sub_21E1C80B4(v75, v77, &v114);
      OUTLINED_FUNCTION_399();

      *(v56 + 4) = v75;
      _os_log_impl(&dword_21E1BD000, v52, v53, "Could not get model bundle for %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      v78 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x223D57360](v78);
      v79 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x223D57360](v79);

      (*(v100 + 8))(v101, v60);
      v43 = v112;
      v50 = v93[0];
    }

    else
    {

      (*(v100 + 8))(v51, v95);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
    }

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    v81 = v80;
    v82 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v83 = OUTLINED_FUNCTION_399();
    v84(v83, v82);
    if (LOBYTE(v113[0]))
    {
      if (LOBYTE(v113[0]) == 1)
      {
        sub_21E343870();
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_21E343870();
        if (qword_27CEB7FA0 == -1)
        {
LABEL_20:
          v85 = OUTLINED_FUNCTION_29_2();
          v86 = OUTLINED_FUNCTION_29_2();

          v88 = OUTLINED_FUNCTION_285(v87, sel_localizedStringForKey_value_table_);

          v89 = sub_21E3437E0();
          v91 = v90;

          *v81 = v89;
          *(v81 + 8) = v91;
          *(v81 + 56) = 1;
          swift_willThrow();

          (*(v109 + 8))(v108, v50);
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_21E343870();
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_0_0();
    goto LABEL_20;
  }

  v61 = v105;
  v62 = v94;
  (*(v105 + 32))(v94, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8918);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_21E3522F0;
  (*(v61 + 16))(v64 + v63, v62, v48);
  sub_21E342F10();
  sub_21E342F90();
  v66 = v98;
  v65 = v99;
  (*(v98 + 16))(v96, v44, v99);
  sub_21E342F00();
  OUTLINED_FUNCTION_234();
  swift_allocObject();
  v67 = sub_21E342EE0();
  v68 = v110;
  v110[3] = v67;
  v69 = v111;
  if (!v111)
  {
    v69 = [objc_allocWithZone(type metadata accessor for WFAskLLMConversation()) init];
  }

  v70 = MEMORY[0x277D84F90];
  v68[2] = v69;
  (*(v66 + 8))(v44, v65);
  (*(v105 + 8))(v94, v106);
  (*(v49 + 8))(v108, v28);
  v68[9] = v70;
  v71 = v112;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return v68;
}