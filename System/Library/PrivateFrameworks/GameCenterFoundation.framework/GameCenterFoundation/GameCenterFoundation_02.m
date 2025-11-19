uint64_t sub_227A066A0(void *a1)
{
  v1 = [a1 username];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227A724EC();

  return v3;
}

id sub_227A06704(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227A724BC();

  v5 = [a3 accountPropertyForKey_];

  return v5;
}

uint64_t sub_227A06768(void *a1)
{
  v2 = [a1 token];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A724EC();

  return v3;
}

unint64_t sub_227A067DC()
{
  result = qword_27D7DC960;
  if (!qword_27D7DC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC960);
  }

  return result;
}

uint64_t _s11GKConstantsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11GKConstantsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t FastSyncActivity.metadata.getter()
{
  v1 = sub_227A71ECC();
  OUTLINED_FUNCTION_51(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_49_0();

  return v5(v4, v0);
}

uint64_t FastSyncActivity.metadata.setter(uint64_t a1)
{
  v3 = sub_227A71ECC();
  v4 = OUTLINED_FUNCTION_51(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t FastSyncActivity.id.getter()
{
  v1 = (v0 + *(type metadata accessor for FastSyncActivity(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_227A06AF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_227A72E5C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_227A06C14(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 1701667182;
}

uint64_t sub_227A06C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A06AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A06CA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A06C00();
  *a1 = result;
  return result;
}

uint64_t sub_227A06CD0(uint64_t a1)
{
  v2 = sub_227A06E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A06D0C(uint64_t a1)
{
  v2 = sub_227A06E80();

  return MEMORY[0x2821FE720](a1, v2);
}

void FastSyncActivity.encode(to:)()
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC968, &qword_227AA1240);
  OUTLINED_FUNCTION_92(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A06E80();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_45_0();
  sub_227A71ECC();
  OUTLINED_FUNCTION_23_0();
  sub_227A07200(v5, v6);
  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v7 = type metadata accessor for FastSyncActivity(0);
    OUTLINED_FUNCTION_10_2(v7);
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DCC();
  }

  v8 = OUTLINED_FUNCTION_15_3();
  v9(v8);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

unint64_t sub_227A06E80()
{
  result = qword_27D7DC970;
  if (!qword_27D7DC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC970);
  }

  return result;
}

void FastSyncActivity.init(from:)()
{
  OUTLINED_FUNCTION_41_0();
  v2 = v1;
  v36 = v3;
  v4 = sub_227A71ECC();
  v5 = OUTLINED_FUNCTION_92(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC980, &qword_227AA1248);
  OUTLINED_FUNCTION_92(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_0();
  v37 = type metadata accessor for FastSyncActivity(0);
  v16 = OUTLINED_FUNCTION_51(v37);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_2();
  v21 = v20 - v19;
  sub_227A71EBC();
  v22 = v2[3];
  v23 = v2[4];
  OUTLINED_FUNCTION_12_2(v2);
  sub_227A06E80();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    (*(v38 + 8))(v21, v4);
  }

  else
  {
    OUTLINED_FUNCTION_23_0();
    sub_227A07200(v24, v25);
    OUTLINED_FUNCTION_22_0();
    sub_227A72D7C();
    (*(v38 + 40))(v21, v11, v4);
    OUTLINED_FUNCTION_37_0();
    v26 = sub_227A72D4C();
    v27 = (v21 + *(v37 + 20));
    *v27 = v26;
    v27[1] = v28;
    OUTLINED_FUNCTION_51_0();
    v29 = sub_227A72D4C();
    v35 = v30;
    v31 = v29;
    v32 = OUTLINED_FUNCTION_34_0();
    v33(v32);
    v34 = (v21 + *(v37 + 24));
    *v34 = v31;
    v34[1] = v35;
    sub_227A0CDA0(v21, v36, type metadata accessor for FastSyncActivity);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    sub_227A0CE00(v21, type metadata accessor for FastSyncActivity);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A07200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227A073A0()
{
  FastSyncActivity.metadata.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227A07414@<X0>(uint64_t *a1@<X8>)
{
  result = FastSyncActivity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227A07494()
{
  result = sub_227A71ECC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_227A07580()
{
  if (!qword_27D7DC9D0)
  {
    sub_227A075DC();
    v0 = sub_227A7286C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7DC9D0);
    }
  }
}

unint64_t sub_227A075DC()
{
  result = qword_27D7DC9D8;
  if (!qword_27D7DC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC9D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_227A0763C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_227A0767C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FastSyncActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7D)
  {
    if (a2 + 131 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 131) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 132;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7C)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for FastSyncActionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227A0783C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_227A0786C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = (a2 & 1 | (a2 >> 1 << 6)) + 64;
  }

  *result = v2;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  v3 = OUTLINED_FUNCTION_27_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43_0(v5);
  if (*(v6 + 84) != v1)
  {
    return OUTLINED_FUNCTION_26_1(*(v0 + *(v2 + 20) + 8));
  }

  v7 = OUTLINED_FUNCTION_49_0();

  return __swift_getEnumTagSinglePayload(v7, v1, v8);
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  v4 = OUTLINED_FUNCTION_20_0();
  v6 = v5(v4);
  result = OUTLINED_FUNCTION_43_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = OUTLINED_FUNCTION_8_2();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_227A07A88()
{
  result = sub_227A71C6C();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_57_0();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  OUTLINED_FUNCTION_27_1();
  v3 = sub_227A71C6C();
  OUTLINED_FUNCTION_43_0(v3);
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_26_1(*(v0 + *(v2 + 24) + 8));
  }

  v5 = OUTLINED_FUNCTION_49_0();

  return __swift_getEnumTagSinglePayload(v5, v1, v6);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_20_0();
  v4 = sub_227A71C6C();
  result = OUTLINED_FUNCTION_43_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_8_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }

  return result;
}

void sub_227A07C5C()
{
  sub_227A71C6C();
  if (v0 <= 0x3F)
  {
    sub_227A07580();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_57_0();
    }
  }
}

unint64_t sub_227A07CF4()
{
  result = qword_27D7DCA10;
  if (!qword_27D7DCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCA10);
  }

  return result;
}

uint64_t sub_227A07D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_227A72E5C();

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

uint64_t sub_227A07E10(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 1635017060;
  }
}

void sub_227A07E34()
{
  OUTLINED_FUNCTION_74_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDD8, &qword_227AA2950);
  OUTLINED_FUNCTION_92(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A0E7A8();
  sub_227A72F6C();
  v12 = *v0;
  v13 = v0[1];
  sub_2279E3ED0(*v0, v13);
  sub_227A0E850();
  sub_227A72DBC();
  sub_2279E3F90(v12, v13);
  if (!v1)
  {
    v9 = *(type metadata accessor for DataMessage(0) + 20);
    sub_227A71C6C();
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v10, v11);
    sub_227A72DFC();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A07FCC()
{
  OUTLINED_FUNCTION_41_0();
  v2 = v1;
  v29 = v3;
  v31 = sub_227A71C6C();
  v4 = OUTLINED_FUNCTION_92(v31);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v10 = v9 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDC0, &qword_227AA2948);
  OUTLINED_FUNCTION_92(v32);
  v30 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_0();
  v15 = type metadata accessor for DataMessage(0);
  v16 = OUTLINED_FUNCTION_51(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_2();
  v21 = (v20 - v19);
  v22 = v2[4];
  OUTLINED_FUNCTION_168(v2, v2[3]);
  sub_227A0E7A8();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    sub_227A0E7FC();
    sub_227A72D3C();
    *v21 = v33;
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v23, v24);
    sub_227A72D7C();
    v25 = *(v30 + 8);
    v26 = OUTLINED_FUNCTION_69_0();
    v27(v26);
    (*(v28 + 32))(&v21[*(v15 + 20)], v10, v31);
    sub_227A0CDA0(v21, v29, type metadata accessor for DataMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    sub_227A0CE00(v21, type metadata accessor for DataMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A082B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A07D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A082DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A07E08();
  *a1 = result;
  return result;
}

uint64_t sub_227A08304(uint64_t a1)
{
  v2 = sub_227A0E7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A08340(uint64_t a1)
{
  v2 = sub_227A0E7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0837C(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = sub_227A71C6C();
  OUTLINED_FUNCTION_51(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_49_0();

  return v6(v5);
}

unint64_t sub_227A08414(unsigned __int8 a1)
{
  v2 = a1 >> 6;
  result = 0x616843206E696F4ALL;
  switch(v2)
  {
    case 1:
      return result;
    case 2:
      if (a1 == 128)
      {
        result = 0x6E776F6E6B6E55;
      }

      else
      {
        result = 0x75512065726F6353;
      }

      break;
    case 3:
      if (a1 == 192)
      {
        result = 0xD000000000000014;
      }

      else
      {
        result = 0xD000000000000013;
      }

      break;
    default:
      if (a1)
      {
        v4 = 0x6168437962626F6CLL;
      }

      else
      {
        v4 = 0x6E616843656D6167;
      }

      if (a1)
      {
        v5 = 0xEC0000006C656E6ELL;
      }

      else
      {
        v5 = 0xEB000000006C656ELL;
      }

      MEMORY[0x22AA9FE40](v4, v5);

      MEMORY[0x22AA9FE40](41, 0xE100000000000000);
      result = 0x6F6974617267694DLL;
      break;
  }

  return result;
}

uint64_t sub_227A08580(char a1)
{
  if (a1)
  {
    return 0x6168437962626F6CLL;
  }

  else
  {
    return 0x6E616843656D6167;
  }
}

uint64_t sub_227A085C8(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    v1 = 0;
  }

  else
  {
    if (a1)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_227A72E5C();
    }
  }

  return v1 & 1;
}

uint64_t sub_227A08660()
{
  v0 = sub_227A72CFC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A086D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227A08660();
  *a2 = result;
  return result;
}

uint64_t sub_227A08708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227A08580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227A087E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6974617267696DLL && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65755165726F6373 && a2 == 0xEA00000000007972;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000227A98B20 == a2;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000227A98B40 == a2;
          if (v9 || (sub_227A72E5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6168436E696F6ALL && a2 == 0xEB000000006C656ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_227A72E5C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_227A089F8(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6F6974617267696DLL;
      break;
    case 2:
      result = 0x65755165726F6373;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6E6168436E696F6ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A08ACC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A08B44()
{
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x22AAA07F0](0);
  return sub_227A72F4C();
}

void sub_227A08B8C()
{
  OUTLINED_FUNCTION_41_0();
  v46 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBB0, &qword_227AA1AB0);
  v45 = OUTLINED_FUNCTION_92(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBB8, &qword_227AA1AB8);
  OUTLINED_FUNCTION_92(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBC0, &qword_227AA1AC0);
  OUTLINED_FUNCTION_92(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBC8, &qword_227AA1AC8);
  OUTLINED_FUNCTION_92(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBD0, &qword_227AA1AD0);
  OUTLINED_FUNCTION_92(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_54_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBD8, &qword_227AA1AD8);
  OUTLINED_FUNCTION_92(v25);
  v44 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_31_0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBE0, &qword_227AA1AE0);
  OUTLINED_FUNCTION_92(v47);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_53_0();
  v35 = v4[4];
  OUTLINED_FUNCTION_168(v4, v4[3]);
  sub_227A0CFCC();
  sub_227A72F6C();
  switch(v46 >> 6)
  {
    case 1:
      sub_227A0D020();
      sub_227A72D9C();
      sub_227A0D26C();
      sub_227A72DFC();
      v39 = OUTLINED_FUNCTION_42_0();
      v40(v39, v45);
      (*(v31 + 8))(v1, v47);
      break;
    case 2:
      v38 = (v31 + 8);
      if (v46 == 128)
      {
        sub_227A0D218();
        v35 = v47;
        sub_227A72D9C();
        (*(v44 + 8))(v0, v25);
        goto LABEL_13;
      }

      sub_227A0D170();
      OUTLINED_FUNCTION_19_1();
      goto LABEL_12;
    case 3:
      v38 = (v31 + 8);
      if (v46 == 192)
      {
        sub_227A0D11C();
      }

      else
      {
        sub_227A0D0C8();
      }

      OUTLINED_FUNCTION_19_1();
LABEL_12:
      v41 = OUTLINED_FUNCTION_42_0();
      v43(v41, v42);
LABEL_13:
      (*v38)(v1, v35);
      break;
    default:
      sub_227A0D1C4();
      OUTLINED_FUNCTION_19_1();
      sub_227A0D26C();
      sub_227A72DFC();
      v36 = OUTLINED_FUNCTION_42_0();
      v37(v36, v21);
      (*(v31 + 8))(v1, v35);
      break;
  }

  OUTLINED_FUNCTION_40_0();
}

void sub_227A0913C()
{
  OUTLINED_FUNCTION_41_0();
  v4 = v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB30, &qword_227AA1A70);
  OUTLINED_FUNCTION_92(v75);
  v77 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36_0();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB38, &qword_227AA1A78);
  OUTLINED_FUNCTION_92(v79);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB40, &qword_227AA1A80);
  OUTLINED_FUNCTION_92(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB48, &qword_227AA1A88);
  OUTLINED_FUNCTION_92(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36_0();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB50, &qword_227AA1A90);
  OUTLINED_FUNCTION_92(v74);
  v76 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_54_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB58, &qword_227AA1A98);
  OUTLINED_FUNCTION_92(v24);
  v78 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_31_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB60, &unk_227AA1AA0);
  OUTLINED_FUNCTION_92(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_30_0();
  v35 = v4[4];
  v80 = v4;
  OUTLINED_FUNCTION_168(v4, v4[3]);
  sub_227A0CFCC();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v0)
  {
    goto LABEL_8;
  }

  v73 = v24;
  v81 = v31;
  v36 = sub_227A72D8C();
  sub_227A46010(v36, 0);
  if (v38 == v39 >> 1)
  {
    goto LABEL_7;
  }

  if (v38 < (v39 >> 1))
  {
    v40 = *(v37 + v38);
    sub_227A46008(v38 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      switch(v40)
      {
        case 1:
          sub_227A0D1C4();
          sub_227A72D0C();
          sub_227A0D074();
          OUTLINED_FUNCTION_71_0();
          swift_unknownObjectRelease();
          v63 = *(v76 + 8);
          v64 = OUTLINED_FUNCTION_82();
          v65(v64);
          v66 = OUTLINED_FUNCTION_55_0();
          v67(v66);
          break;
        case 2:
          sub_227A0D170();
          OUTLINED_FUNCTION_11_3();
          swift_unknownObjectRelease();
          v55 = OUTLINED_FUNCTION_42_0();
          v56(v55);
          v57 = OUTLINED_FUNCTION_8_5();
          v58(v57);
          break;
        case 3:
          sub_227A0D11C();
          OUTLINED_FUNCTION_11_3();
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_42_0();
          v60(v59);
          v61 = OUTLINED_FUNCTION_8_5();
          v62(v61);
          break;
        case 4:
          sub_227A0D0C8();
          OUTLINED_FUNCTION_11_3();
          swift_unknownObjectRelease();
          v51 = OUTLINED_FUNCTION_42_0();
          v52(v51, v79);
          v53 = OUTLINED_FUNCTION_8_5();
          v54(v53);
          break;
        case 5:
          sub_227A0D020();
          OUTLINED_FUNCTION_11_3();
          sub_227A0D074();
          OUTLINED_FUNCTION_71_0();
          swift_unknownObjectRelease();
          v68 = *(v77 + 8);
          v69 = OUTLINED_FUNCTION_82();
          v70(v69);
          v71 = OUTLINED_FUNCTION_55_0();
          v72(v71);
          break;
        default:
          sub_227A0D218();
          OUTLINED_FUNCTION_11_3();
          swift_unknownObjectRelease();
          (*(v78 + 8))(v1, v73);
          v45 = OUTLINED_FUNCTION_8_5();
          v46(v45);
          break;
      }

      goto LABEL_8;
    }

LABEL_7:
    v47 = sub_227A72B5C();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB70, &qword_227AA2E00) + 48);
    *v49 = &type metadata for FastSyncActionType;
    sub_227A72D1C();
    sub_227A72B4C();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v81 + 8))(v2, v29);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    OUTLINED_FUNCTION_40_0();
    return;
  }

  __break(1u);
}

uint64_t sub_227A09990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A087E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A099B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A089F0();
  *a1 = result;
  return result;
}

uint64_t sub_227A099E0(uint64_t a1)
{
  v2 = sub_227A0CFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09A1C(uint64_t a1)
{
  v2 = sub_227A0CFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09A78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2279DE6E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_227A09AA4(uint64_t a1)
{
  v2 = sub_227A0D020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09AE0(uint64_t a1)
{
  v2 = sub_227A0D020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09B1C(uint64_t a1)
{
  v2 = sub_227A0D1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09B58(uint64_t a1)
{
  v2 = sub_227A0D1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09B98(uint64_t a1)
{
  v2 = sub_227A0D170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09BD4(uint64_t a1)
{
  v2 = sub_227A0D170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09C10(uint64_t a1)
{
  v2 = sub_227A0D11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09C4C(uint64_t a1)
{
  v2 = sub_227A0D11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09C88(uint64_t a1)
{
  v2 = sub_227A0D218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09CC4(uint64_t a1)
{
  v2 = sub_227A0D218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09D00(uint64_t a1)
{
  v2 = sub_227A0D0C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09D3C(uint64_t a1)
{
  v2 = sub_227A0D0C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_227A09D78(_BYTE *a1@<X8>)
{
  sub_227A0913C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227A09DC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44497265646E6573 && a2 == 0xE800000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_227A72E5C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_227A09F1C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x44497265646E6573;
      break;
    case 2:
      result = 0x65726F6373;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

void sub_227A09F88()
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC18, &qword_227AA1B00);
  OUTLINED_FUNCTION_92(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A0D314();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  sub_227A07200(v7, v8);
  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
    OUTLINED_FUNCTION_10_2(ScoresActionMessage);
    v10 = *(v1 + *(v2 + 24));
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DEC();
    v13 = *(v1 + *(v2 + 28));
    OUTLINED_FUNCTION_61_0();
    sub_227A0CE58();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
  }

  v11 = OUTLINED_FUNCTION_15_3();
  v12(v11);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_41_0();
  v14 = v13;
  v40 = v15;
  v16 = sub_227A71C6C();
  v17 = OUTLINED_FUNCTION_92(v16);
  v41 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_2();
  v42 = v22 - v21;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC08, &qword_227AA1AF8);
  OUTLINED_FUNCTION_92(v43);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30_0();
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v27 = OUTLINED_FUNCTION_51(ScoresActionMessage);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_29_0();
  v31 = v14[3];
  v30 = v14[4];
  OUTLINED_FUNCTION_12_2(v14);
  sub_227A0D314();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v32, v33);
    OUTLINED_FUNCTION_22_0();
    sub_227A72D7C();
    (*(v41 + 32))(v12, v42, v16);
    OUTLINED_FUNCTION_37_0();
    v34 = sub_227A72D4C();
    v35 = (v12 + ScoresActionMessage[5]);
    *v35 = v34;
    v35[1] = v36;
    OUTLINED_FUNCTION_51_0();
    sub_227A72D6C();
    *(v12 + ScoresActionMessage[6]) = v37;
    OUTLINED_FUNCTION_61_0();
    sub_227A0CCF8();
    sub_227A72D7C();
    v38 = OUTLINED_FUNCTION_33_0();
    v39(v38);
    *(v12 + ScoresActionMessage[7]) = a11;
    sub_227A0CDA0(v12, v40, type metadata accessor for QueryScoresActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(0);
    sub_227A0CE00(v12, type metadata accessor for QueryScoresActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0A4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A09DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0A4C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A09F14();
  *a1 = result;
  return result;
}

uint64_t sub_227A0A4F0(uint64_t a1)
{
  v2 = sub_227A0D314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0A52C(uint64_t a1)
{
  v2 = sub_227A0D314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0A598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44497265646E6573 && a2 == 0xE800000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_227A72E5C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_227A0A6E4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x44497265646E6573;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

void sub_227A0A750()
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC00, &qword_227AA1AF0);
  OUTLINED_FUNCTION_92(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A0D2C0();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  sub_227A07200(v7, v8);
  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
    OUTLINED_FUNCTION_10_2(ScoresResponseActionMessage);
    v13 = *(v1 + *(v2 + 24));
    sub_227A0CE58();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    v10 = *(v1 + *(v2 + 28));
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DEC();
  }

  v11 = OUTLINED_FUNCTION_15_3();
  v12(v11);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

uint64_t sub_227A0A8CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227A71C6C();
  v6 = OUTLINED_FUNCTION_92(v5);
  v33 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  v34 = v11 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBF0, &qword_227AA1AE8);
  OUTLINED_FUNCTION_92(v35);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_67_0();
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(v15);
  v17 = OUTLINED_FUNCTION_51(ScoresResponseActionMessage);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_29_0();
  v21 = a1[3];
  v20 = a1[4];
  OUTLINED_FUNCTION_12_2(a1);
  sub_227A0D2C0();
  sub_227A72F5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  OUTLINED_FUNCTION_0_14();
  sub_227A07200(v22, v23);
  sub_227A72D7C();
  (*(v33 + 32))(v3, v34, v5);
  v24 = sub_227A72D4C();
  v25 = (v3 + ScoresResponseActionMessage[5]);
  *v25 = v24;
  v25[1] = v26;
  sub_227A0CCF8();
  sub_227A72D7C();
  *(v3 + ScoresResponseActionMessage[6]) = v36;
  sub_227A72D6C();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_32_0();
  v30(v29);
  *(v3 + ScoresResponseActionMessage[7]) = v28;
  sub_227A0CDA0(v3, a2, type metadata accessor for QueryScoresResponseActionMessage);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_227A0CE00(v3, type metadata accessor for QueryScoresResponseActionMessage);
}

uint64_t sub_227A0ACA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0A598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0ACC8(uint64_t a1)
{
  v2 = sub_227A0D2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0AD04(uint64_t a1)
{
  v2 = sub_227A0D2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  else
  {
    return sub_227A72E5C();
  }
}

uint64_t sub_227A0ADA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796E6F6475657370 && a2 == 0xE90000000000006DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_227A72E5C();

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

uint64_t sub_227A0AE70(char a1)
{
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x22AAA07F0](a1 & 1);
  return sub_227A72F4C();
}

uint64_t sub_227A0AEB0(char a1)
{
  if (a1)
  {
    return 0x796E6F6475657370;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

void sub_227A0AEEC()
{
  OUTLINED_FUNCTION_41_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB28, &qword_227AA1A68);
  OUTLINED_FUNCTION_92(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31_0();
  v10 = v3[4];
  OUTLINED_FUNCTION_168(v3, v3[3]);
  sub_227A0CF78();
  sub_227A72F6C();
  sub_227A72DCC();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_227A72DCC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0B034()
{
  OUTLINED_FUNCTION_73_0();
  sub_227A7255C();
  return sub_227A72F4C();
}

void sub_227A0B07C()
{
  OUTLINED_FUNCTION_41_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB18, &qword_227AA1A60);
  OUTLINED_FUNCTION_92(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_0();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_12_2(v2);
  sub_227A0CF78();
  sub_227A72F5C();
  if (!v0)
  {
    sub_227A72D4C();
    OUTLINED_FUNCTION_37_0();
    sub_227A72D4C();
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_82();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0B228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0ADA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0B250(uint64_t a1)
{
  v2 = sub_227A0CF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0B28C(uint64_t a1)
{
  v2 = sub_227A0CF78();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_227A0B2C8(void *a1@<X8>)
{
  sub_227A0B07C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_227A0B2F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_227A0AEEC();
}

uint64_t sub_227A0B318()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_227A0B034();
}

uint64_t sub_227A0B328()
{
  v1 = *v0;
  v2 = v0[1];
  sub_227A72F2C();
  sub_227A7255C();
  return sub_227A72F4C();
}

void sub_227A0B37C()
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC30, &unk_227AA1B10);
  OUTLINED_FUNCTION_92(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A0D368();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  sub_227A07200(v5, v6);
  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v7 = type metadata accessor for ChannelMigrationActionMessage(0);
    OUTLINED_FUNCTION_21_1(v7);
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DCC();
    OUTLINED_FUNCTION_60_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_6_3();
    sub_227A0CEAC(v8, v9);
    OUTLINED_FUNCTION_9_3();
  }

  v10 = OUTLINED_FUNCTION_15_3();
  v11(v10);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0B52C()
{
  OUTLINED_FUNCTION_41_0();
  v3 = OUTLINED_FUNCTION_72_0(v2);
  v4 = OUTLINED_FUNCTION_92(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC20, &qword_227AA1B08);
  OUTLINED_FUNCTION_92(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_53_0();
  v11 = type metadata accessor for ChannelMigrationActionMessage(0);
  v12 = OUTLINED_FUNCTION_51(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_2();
  v17 = v16 - v15;
  v19 = v1[3];
  v18 = v1[4];
  v20 = OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_168(v20, v21);
  sub_227A0D368();
  OUTLINED_FUNCTION_56_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v22, v23);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_48_0();
    v24 = OUTLINED_FUNCTION_59_0();
    v25(v24);
    sub_227A0CCF8();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_68_0();
    *v28 = v26;
    v28[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_5_1();
    sub_227A0CEAC(v29, v30);
    OUTLINED_FUNCTION_44_0();
    v31 = OUTLINED_FUNCTION_47_0();
    v32(v31);
    *(v17 + *(v17 + 28)) = v34;
    sub_227A0CDA0(v17, v33, type metadata accessor for ChannelMigrationActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    sub_227A0CE00(v17, type metadata accessor for ChannelMigrationActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0B854(uint64_t a1)
{
  v2 = sub_227A0D368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0B890(uint64_t a1)
{
  v2 = sub_227A0D368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0B8FC(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA20, type metadata accessor for ChannelMigrationActionMessage);
  a1[2] = sub_227A07200(&qword_27D7DCA28, type metadata accessor for ChannelMigrationActionMessage);
  result = sub_227A07200(&qword_27D7DCA30, type metadata accessor for ChannelMigrationActionMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0B9A8(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA38, type metadata accessor for ChannelMigrationActionMessage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0BA00(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA40, type metadata accessor for QueryScoresActionMessage);
  a1[2] = sub_227A07200(&qword_27D7DCA48, type metadata accessor for QueryScoresActionMessage);
  result = sub_227A07200(&qword_27D7DCA50, type metadata accessor for QueryScoresActionMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0BAAC(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA58, type metadata accessor for QueryScoresActionMessage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0BB04(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA60, type metadata accessor for QueryScoresResponseActionMessage);
  a1[2] = sub_227A07200(&qword_27D7DCA68, type metadata accessor for QueryScoresResponseActionMessage);
  result = sub_227A07200(&qword_27D7DCA70, type metadata accessor for QueryScoresResponseActionMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0BBB0(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA78, type metadata accessor for QueryScoresResponseActionMessage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0BC08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000227A98B00 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_227A72E5C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_227A0BD18(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0xD000000000000013;
}

void sub_227A0BD60()
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDB8, &qword_227AA2940);
  OUTLINED_FUNCTION_92(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A0E754();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  sub_227A07200(v7, v8);
  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    updated = type metadata accessor for UpdateParticipantsActionMessage(0);
    OUTLINED_FUNCTION_21_1(updated);
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    v14 = *(v1 + *(v2 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_6_3();
    sub_227A0CEAC(v10, v11);
    OUTLINED_FUNCTION_9_3();
  }

  v12 = OUTLINED_FUNCTION_15_3();
  v13(v12);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_41_0();
  v15 = v14;
  v40 = v16;
  v17 = sub_227A71C6C();
  v18 = OUTLINED_FUNCTION_92(v17);
  v41 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_2();
  v42 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDA8, &qword_227AA2938);
  OUTLINED_FUNCTION_92(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  v28 = OUTLINED_FUNCTION_67_0();
  updated = type metadata accessor for UpdateParticipantsActionMessage(v28);
  v30 = OUTLINED_FUNCTION_51(updated);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_29_0();
  v33 = v15[4];
  OUTLINED_FUNCTION_168(v15, v15[3]);
  sub_227A0E754();
  sub_227A72F5C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v34, v35);
    OUTLINED_FUNCTION_22_0();
    sub_227A72D7C();
    (*(v41 + 32))(v13, v42, v17);
    sub_227A0CCF8();
    sub_227A72D7C();
    *(v13 + *(updated + 20)) = a12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_5_1();
    sub_227A0CEAC(v36, v37);
    sub_227A72D7C();
    v38 = OUTLINED_FUNCTION_52_0();
    v39(v38);
    *(v13 + *(updated + 24)) = v43;
    sub_227A0CDA0(v13, v40, type metadata accessor for UpdateParticipantsActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    sub_227A0CE00(v13, type metadata accessor for UpdateParticipantsActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0BC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0C2B0(uint64_t a1)
{
  v2 = sub_227A0E754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0C2EC(uint64_t a1)
{
  v2 = sub_227A0E754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0C358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_50_0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_50_0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x444977656ELL && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_50_0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x8000000227A98B00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_50_0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_227A0C47C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x22AAA07F0](a1);
  return sub_227A72F4C();
}

void sub_227A0C4BC()
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAF0, &qword_227AA1A58);
  OUTLINED_FUNCTION_92(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A0CCA4();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  sub_227A07200(v5, v6);
  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v7 = type metadata accessor for JoinChannelActionMessage(0);
    OUTLINED_FUNCTION_21_1(v7);
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DCC();
    OUTLINED_FUNCTION_60_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_6_3();
    sub_227A0CEAC(v8, v9);
    OUTLINED_FUNCTION_9_3();
  }

  v10 = OUTLINED_FUNCTION_15_3();
  v11(v10);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0C66C()
{
  OUTLINED_FUNCTION_41_0();
  v3 = OUTLINED_FUNCTION_72_0(v2);
  v4 = OUTLINED_FUNCTION_92(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAB8, &qword_227AA1A48);
  OUTLINED_FUNCTION_92(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_53_0();
  v11 = type metadata accessor for JoinChannelActionMessage(0);
  v12 = OUTLINED_FUNCTION_51(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_2();
  v17 = v16 - v15;
  v19 = v1[3];
  v18 = v1[4];
  v20 = OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_168(v20, v21);
  sub_227A0CCA4();
  OUTLINED_FUNCTION_56_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v22, v23);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_48_0();
    v24 = OUTLINED_FUNCTION_59_0();
    v25(v24);
    sub_227A0CCF8();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_68_0();
    *v28 = v26;
    v28[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_5_1();
    sub_227A0CEAC(v29, v30);
    OUTLINED_FUNCTION_44_0();
    v31 = OUTLINED_FUNCTION_47_0();
    v32(v31);
    *(v17 + *(v17 + 28)) = v34;
    sub_227A0CDA0(v17, v33, type metadata accessor for JoinChannelActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    sub_227A0CE00(v17, type metadata accessor for JoinChannelActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0C994(uint64_t a1)
{
  v2 = sub_227A0CCA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0C9D0(uint64_t a1)
{
  v2 = sub_227A0CCA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0CA0C()
{
  v1 = sub_227A71C6C();
  OUTLINED_FUNCTION_51(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_49_0();

  return v5(v4, v0);
}

uint64_t sub_227A0CA98(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA80, type metadata accessor for JoinChannelActionMessage);
  a1[2] = sub_227A07200(&qword_27D7DCA88, type metadata accessor for JoinChannelActionMessage);
  result = sub_227A07200(&qword_27D7DCA90, type metadata accessor for JoinChannelActionMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0CB44(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA98, type metadata accessor for JoinChannelActionMessage);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227A0CBA0()
{
  result = qword_27D7DCAA0;
  if (!qword_27D7DCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAA0);
  }

  return result;
}

unint64_t sub_227A0CBF8()
{
  result = qword_27D7DCAA8;
  if (!qword_27D7DCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAA8);
  }

  return result;
}

unint64_t sub_227A0CC50()
{
  result = qword_27D7DCAB0;
  if (!qword_27D7DCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAB0);
  }

  return result;
}

unint64_t sub_227A0CCA4()
{
  result = qword_27D7DCAC0;
  if (!qword_27D7DCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAC0);
  }

  return result;
}

unint64_t sub_227A0CCF8()
{
  result = qword_27D7DCAD0;
  if (!qword_27D7DCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAD0);
  }

  return result;
}

unint64_t sub_227A0CD4C()
{
  result = qword_27D7DCAE8;
  if (!qword_27D7DCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAE8);
  }

  return result;
}

uint64_t sub_227A0CDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_51(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_227A0CE00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_51(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_227A0CE58()
{
  result = qword_27D7DCB00;
  if (!qword_27D7DCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB00);
  }

  return result;
}

uint64_t sub_227A0CEAC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DCAD8, &qword_227AA1A50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227A0CF24()
{
  result = qword_27D7DCB10;
  if (!qword_27D7DCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB10);
  }

  return result;
}

unint64_t sub_227A0CF78()
{
  result = qword_27D7DCB20;
  if (!qword_27D7DCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB20);
  }

  return result;
}

unint64_t sub_227A0CFCC()
{
  result = qword_27D7DCB68;
  if (!qword_27D7DCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB68);
  }

  return result;
}

unint64_t sub_227A0D020()
{
  result = qword_27D7DCB78;
  if (!qword_27D7DCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB78);
  }

  return result;
}

unint64_t sub_227A0D074()
{
  result = qword_27D7DCB80;
  if (!qword_27D7DCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB80);
  }

  return result;
}

unint64_t sub_227A0D0C8()
{
  result = qword_27D7DCB88;
  if (!qword_27D7DCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB88);
  }

  return result;
}

unint64_t sub_227A0D11C()
{
  result = qword_27D7DCB90;
  if (!qword_27D7DCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB90);
  }

  return result;
}

unint64_t sub_227A0D170()
{
  result = qword_27D7DCB98;
  if (!qword_27D7DCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB98);
  }

  return result;
}

unint64_t sub_227A0D1C4()
{
  result = qword_27D7DCBA0;
  if (!qword_27D7DCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBA0);
  }

  return result;
}

unint64_t sub_227A0D218()
{
  result = qword_27D7DCBA8;
  if (!qword_27D7DCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBA8);
  }

  return result;
}

unint64_t sub_227A0D26C()
{
  result = qword_27D7DCBE8;
  if (!qword_27D7DCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBE8);
  }

  return result;
}

unint64_t sub_227A0D2C0()
{
  result = qword_27D7DCBF8;
  if (!qword_27D7DCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBF8);
  }

  return result;
}

unint64_t sub_227A0D314()
{
  result = qword_27D7DCC10;
  if (!qword_27D7DCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC10);
  }

  return result;
}

unint64_t sub_227A0D368()
{
  result = qword_27D7DCC28;
  if (!qword_27D7DCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC28);
  }

  return result;
}

void sub_227A0D404()
{
  sub_227A71C6C();
  if (v0 <= 0x3F)
  {
    sub_227A07580();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227A0D4D8()
{
  sub_227A0D55C();
  if (v0 <= 0x3F)
  {
    sub_227A71C6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227A0D55C()
{
  if (!qword_27D7DCC58)
  {
    v0 = sub_227A729BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7DCC58);
    }
  }
}

uint64_t getEnumTagSinglePayload for FastSyncActionType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FastSyncActionType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227A0D790(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_65(a1);
}

_BYTE *sub_227A0D7DC(_BYTE *result, int a2, int a3)
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

uint64_t sub_227A0D898(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66_0(-1);
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
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_66_0(v8);
}

_BYTE *sub_227A0D91C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_64_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_62_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_63_0(result, v6);
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
          result = OUTLINED_FUNCTION_46_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A0D9FC()
{
  result = qword_27D7DCC60;
  if (!qword_27D7DCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC60);
  }

  return result;
}

unint64_t sub_227A0DA54()
{
  result = qword_27D7DCC68;
  if (!qword_27D7DCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC68);
  }

  return result;
}

unint64_t sub_227A0DAAC()
{
  result = qword_27D7DCC70;
  if (!qword_27D7DCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC70);
  }

  return result;
}

unint64_t sub_227A0DB04()
{
  result = qword_27D7DCC78;
  if (!qword_27D7DCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC78);
  }

  return result;
}

unint64_t sub_227A0DB5C()
{
  result = qword_27D7DCC80;
  if (!qword_27D7DCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC80);
  }

  return result;
}

unint64_t sub_227A0DBB4()
{
  result = qword_27D7DCC88;
  if (!qword_27D7DCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC88);
  }

  return result;
}

unint64_t sub_227A0DC0C()
{
  result = qword_27D7DCC90;
  if (!qword_27D7DCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC90);
  }

  return result;
}

unint64_t sub_227A0DC64()
{
  result = qword_27D7DCC98;
  if (!qword_27D7DCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC98);
  }

  return result;
}

unint64_t sub_227A0DCBC()
{
  result = qword_27D7DCCA0;
  if (!qword_27D7DCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCA0);
  }

  return result;
}

uint64_t sub_227A0DD10(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCCA8, type metadata accessor for UpdateParticipantsActionMessage);
  a1[2] = sub_227A07200(&qword_27D7DCCB0, type metadata accessor for UpdateParticipantsActionMessage);
  result = sub_227A07200(&qword_27D7DCCB8, type metadata accessor for UpdateParticipantsActionMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0DDBC(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCCC0, type metadata accessor for UpdateParticipantsActionMessage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0DE14(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCCC8, type metadata accessor for DataMessage);
  a1[2] = sub_227A07200(&qword_27D7DCCD0, type metadata accessor for DataMessage);
  result = sub_227A07200(&qword_27D7DCCD8, type metadata accessor for DataMessage);
  a1[3] = result;
  return result;
}

unint64_t sub_227A0DEC4()
{
  result = qword_27D7DCCE0;
  if (!qword_27D7DCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCE0);
  }

  return result;
}

unint64_t sub_227A0DF1C()
{
  result = qword_27D7DCCE8;
  if (!qword_27D7DCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCE8);
  }

  return result;
}

unint64_t sub_227A0DF74()
{
  result = qword_27D7DCCF0;
  if (!qword_27D7DCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCF0);
  }

  return result;
}

unint64_t sub_227A0DFCC()
{
  result = qword_27D7DCCF8;
  if (!qword_27D7DCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCF8);
  }

  return result;
}

unint64_t sub_227A0E024()
{
  result = qword_27D7DCD00;
  if (!qword_27D7DCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD00);
  }

  return result;
}

unint64_t sub_227A0E07C()
{
  result = qword_27D7DCD08;
  if (!qword_27D7DCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD08);
  }

  return result;
}

unint64_t sub_227A0E0D4()
{
  result = qword_27D7DCD10;
  if (!qword_27D7DCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD10);
  }

  return result;
}

unint64_t sub_227A0E12C()
{
  result = qword_27D7DCD18;
  if (!qword_27D7DCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD18);
  }

  return result;
}

unint64_t sub_227A0E184()
{
  result = qword_27D7DCD20;
  if (!qword_27D7DCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD20);
  }

  return result;
}

unint64_t sub_227A0E1DC()
{
  result = qword_27D7DCD28;
  if (!qword_27D7DCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD28);
  }

  return result;
}

unint64_t sub_227A0E234()
{
  result = qword_27D7DCD30;
  if (!qword_27D7DCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD30);
  }

  return result;
}

unint64_t sub_227A0E28C()
{
  result = qword_27D7DCD38;
  if (!qword_27D7DCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD38);
  }

  return result;
}

unint64_t sub_227A0E2E4()
{
  result = qword_27D7DCD40;
  if (!qword_27D7DCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD40);
  }

  return result;
}

unint64_t sub_227A0E33C()
{
  result = qword_27D7DCD48;
  if (!qword_27D7DCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD48);
  }

  return result;
}

unint64_t sub_227A0E394()
{
  result = qword_27D7DCD50;
  if (!qword_27D7DCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD50);
  }

  return result;
}

unint64_t sub_227A0E3EC()
{
  result = qword_27D7DCD58;
  if (!qword_27D7DCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD58);
  }

  return result;
}

unint64_t sub_227A0E444()
{
  result = qword_27D7DCD60;
  if (!qword_27D7DCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD60);
  }

  return result;
}

unint64_t sub_227A0E49C()
{
  result = qword_27D7DCD68;
  if (!qword_27D7DCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD68);
  }

  return result;
}

unint64_t sub_227A0E4F4()
{
  result = qword_27D7DCD70;
  if (!qword_27D7DCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD70);
  }

  return result;
}

unint64_t sub_227A0E54C()
{
  result = qword_27D7DCD78;
  if (!qword_27D7DCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD78);
  }

  return result;
}

unint64_t sub_227A0E5A4()
{
  result = qword_27D7DCD80;
  if (!qword_27D7DCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD80);
  }

  return result;
}

unint64_t sub_227A0E5FC()
{
  result = qword_27D7DCD88;
  if (!qword_27D7DCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD88);
  }

  return result;
}

unint64_t sub_227A0E654()
{
  result = qword_27D7DCD90;
  if (!qword_27D7DCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD90);
  }

  return result;
}

unint64_t sub_227A0E6AC()
{
  result = qword_27D7DCD98;
  if (!qword_27D7DCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD98);
  }

  return result;
}

unint64_t sub_227A0E700()
{
  result = qword_27D7DCDA0;
  if (!qword_27D7DCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDA0);
  }

  return result;
}

unint64_t sub_227A0E754()
{
  result = qword_27D7DCDB0;
  if (!qword_27D7DCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDB0);
  }

  return result;
}

unint64_t sub_227A0E7A8()
{
  result = qword_27D7DCDC8;
  if (!qword_27D7DCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDC8);
  }

  return result;
}

unint64_t sub_227A0E7FC()
{
  result = qword_27D7DCDD0;
  if (!qword_27D7DCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDD0);
  }

  return result;
}

unint64_t sub_227A0E850()
{
  result = qword_27D7DCDE0;
  if (!qword_27D7DCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDE0);
  }

  return result;
}

uint64_t sub_227A0E8A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66_0(-1);
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
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_66_0(v8);
}

_BYTE *sub_227A0E928(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_64_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_62_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_63_0(result, v6);
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
          result = OUTLINED_FUNCTION_46_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227A0E9F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_66_0(v8);
}

_BYTE *sub_227A0EA78(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_64_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_62_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_63_0(result, v6);
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
          result = OUTLINED_FUNCTION_46_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A0EB48()
{
  result = qword_27D7DCDE8;
  if (!qword_27D7DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDE8);
  }

  return result;
}

unint64_t sub_227A0EBA0()
{
  result = qword_27D7DCDF0;
  if (!qword_27D7DCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDF0);
  }

  return result;
}

unint64_t sub_227A0EBF8()
{
  result = qword_27D7DCDF8;
  if (!qword_27D7DCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDF8);
  }

  return result;
}

unint64_t sub_227A0EC50()
{
  result = qword_27D7DCE00;
  if (!qword_27D7DCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE00);
  }

  return result;
}

unint64_t sub_227A0ECA8()
{
  result = qword_27D7DCE08;
  if (!qword_27D7DCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE08);
  }

  return result;
}

unint64_t sub_227A0ED00()
{
  result = qword_27D7DCE10;
  if (!qword_27D7DCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return sub_227A72DFC();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_227A72DFC();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{
  v4 = (v1 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  *(v2 - 66) = 1;

  return sub_227A72DCC();
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_227A72D0C();
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return sub_227A72F6C();
}

uint64_t OUTLINED_FUNCTION_19_1()
{
  v2 = *(v0 - 96);

  return sub_227A72D9C();
}

unint64_t OUTLINED_FUNCTION_21_1(uint64_t a1)
{
  *(v2 - 66) = *(v1 + *(a1 + 20));
  *(v2 - 67) = 1;

  return sub_227A0CE58();
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  v2 = (v0 + *(v1 + 24));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_26_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_32_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  *(v1 + *(v0 + 20)) = *(v2 - 66);
  *(v2 - 68) = 2;
  v4 = *(v2 - 96);

  return sub_227A72D4C();
}

uint64_t OUTLINED_FUNCTION_44_0()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 104);
  return *(v1 - 96);
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return sub_227A72E5C();
}

uint64_t OUTLINED_FUNCTION_56_0()
{
  *(v1 - 96) = v0;

  return sub_227A72F5C();
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  v2 = *(v0 - 96);

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_72_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_227A71C6C();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return sub_227A72F2C();
}

unint64_t GKGroupActivityDeclineToJoinReason.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_227A0F3E8()
{
  result = qword_27D7DCE18;
  if (!qword_27D7DCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE18);
  }

  return result;
}

unint64_t sub_227A0F454@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GKGroupActivityDeclineToJoinReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_227A0F554()
{
  result = qword_27D7DCE20;
  if (!qword_27D7DCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE20);
  }

  return result;
}

uint64_t type metadata accessor for GKGroupActivityMessage()
{
  result = qword_27D7DCE28;
  if (!qword_27D7DCE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227A0F61C()
{
  sub_227A71C6C();
  if (v0 <= 0x3F)
  {
    sub_227A71C2C();
    if (v1 <= 0x3F)
    {
      sub_227A0D55C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GKGroupActivityMessageType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GKGroupActivityMessageType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_227A0F740(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A0F75C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

BOOL sub_227A0F78C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }
      }

      else if ((a4 & 1) == 0 || a3 <= 1)
      {
        return 0;
      }
    }

    else if ((a4 & 1) == 0 || a3)
    {
      return 0;
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a1 == a3;
  }
}

uint64_t sub_227A0F7E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x5474736575716572 && a2 == 0xED00006E696F4A6FLL;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000227A98B60 == a2;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5474736575716572 && a2 == 0xEE00657661654C6FLL;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1635017060 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_227A72E5C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_227A0F954(char a1)
{
  result = 0x5474736575716572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A0F9DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A0FA64(void *a1, uint64_t a2, int a3)
{
  v55 = a2;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCEC8, &qword_227AA2E08);
  v5 = OUTLINED_FUNCTION_92(v4);
  v52 = v6;
  v53 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36_0();
  v51 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCED0, &qword_227AA2E10);
  v12 = OUTLINED_FUNCTION_92(v11);
  v49 = v13;
  v50 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36_0();
  v48 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCED8, &qword_227AA2E18);
  OUTLINED_FUNCTION_92(v18);
  v54 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCEE0, &qword_227AA2E20);
  v26 = OUTLINED_FUNCTION_92(v25);
  v46 = v27;
  v47 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  v32 = &v46 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCEE8, &qword_227AA2E28);
  OUTLINED_FUNCTION_92(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  v40 = &v46 - v39;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A117E0();
  sub_227A72F6C();
  if (v57)
  {
    if (v55)
    {
      if (v55 == 1)
      {
        v60 = 2;
        sub_227A11888();
        v42 = v48;
        OUTLINED_FUNCTION_11_4();
        v44 = v49;
        v43 = v50;
      }

      else
      {
        v61 = 3;
        sub_227A11834();
        v42 = v51;
        OUTLINED_FUNCTION_11_4();
        v44 = v52;
        v43 = v53;
      }

      (*(v44 + 8))(v42, v43);
    }

    else
    {
      v58 = 0;
      sub_227A11984();
      OUTLINED_FUNCTION_11_4();
      (*(v46 + 8))(v32, v47);
    }

    return (*(v35 + 8))(v40, v33);
  }

  else
  {
    v59 = 1;
    sub_227A118DC();
    OUTLINED_FUNCTION_11_4();
    v56 = v55;
    sub_227A119D8();
    sub_227A72DFC();
    (*(v54 + 8))(v24, v18);
    return (*(v35 + 8))(v40, v33);
  }
}

uint64_t sub_227A0FE78(uint64_t *a1)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE70, &qword_227AA2DD8);
  OUTLINED_FUNCTION_92(v80);
  v77 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36_0();
  v79 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE78, &qword_227AA2DE0);
  v8 = OUTLINED_FUNCTION_92(v7);
  v72 = v9;
  v73 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36_0();
  v76 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE80, &qword_227AA2DE8);
  v15 = OUTLINED_FUNCTION_92(v14);
  v74 = v16;
  v75 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE88, &qword_227AA2DF0);
  OUTLINED_FUNCTION_92(v22);
  v71 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE90, &qword_227AA2DF8);
  OUTLINED_FUNCTION_92(v29);
  v78 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  v35 = &v67 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A117E0();
  v37 = v81;
  sub_227A72F5C();
  if (v37)
  {
    goto LABEL_8;
  }

  v68 = v22;
  v69 = v28;
  v70 = v21;
  v38 = v79;
  v39 = v80;
  v81 = a1;
  v40 = sub_227A72D8C();
  result = sub_227A46010(v40, 0);
  if (v43 == v44 >> 1)
  {
LABEL_7:
    v28 = sub_227A72B5C();
    swift_allocError();
    v55 = v54;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB70, &qword_227AA2E00) + 48);
    *v55 = &type metadata for GKGroupActivityMessageType;
    sub_227A72D1C();
    sub_227A72B4C();
    (*(*(v28 - 8) + 104))(v55, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v57 = OUTLINED_FUNCTION_1_9();
    v58(v57);
    a1 = v81;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v28;
  }

  if (v43 < (v44 >> 1))
  {
    v45 = *(v42 + v43);
    sub_227A46008(v43 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      v50 = v77;
      switch(v45)
      {
        case 1:
          v84 = 1;
          sub_227A118DC();
          OUTLINED_FUNCTION_7_6();
          sub_227A11930();
          sub_227A72D7C();
          v64 = v78;
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_15_4();
          v66(v65);
          (*(v64 + 8))(v35, v29);
          v28 = v82;
          break;
        case 2:
          v85 = 2;
          sub_227A11888();
          v59 = v76;
          OUTLINED_FUNCTION_7_6();
          swift_unknownObjectRelease();
          (*(v72 + 8))(v59, v73);
          v60 = OUTLINED_FUNCTION_1_9();
          v61(v60);
          v28 = 1;
          break;
        case 3:
          v86 = 3;
          sub_227A11834();
          OUTLINED_FUNCTION_7_6();
          swift_unknownObjectRelease();
          (*(v50 + 8))(v38, v39);
          v62 = OUTLINED_FUNCTION_1_9();
          v63(v62);
          v28 = 2;
          break;
        default:
          v83 = 0;
          sub_227A11984();
          v51 = v69;
          OUTLINED_FUNCTION_7_6();
          swift_unknownObjectRelease();
          (*(v71 + 8))(v51, v68);
          v52 = OUTLINED_FUNCTION_1_9();
          v53(v52);
          v28 = 0;
          break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      return v28;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_227A10540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0F7E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A10568(uint64_t a1)
{
  v2 = sub_227A117E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A105A4(uint64_t a1)
{
  v2 = sub_227A117E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A105E0(uint64_t a1)
{
  v2 = sub_227A11834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A1061C(uint64_t a1)
{
  v2 = sub_227A11834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A10658(uint64_t a1)
{
  v2 = sub_227A11984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A10694(uint64_t a1)
{
  v2 = sub_227A11984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A106D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0F9DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_227A10700(uint64_t a1)
{
  v2 = sub_227A118DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A1073C(uint64_t a1)
{
  v2 = sub_227A118DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A10778(uint64_t a1)
{
  v2 = sub_227A11888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A107B4(uint64_t a1)
{
  v2 = sub_227A11888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A1080C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_227A0FE78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_227A10860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069636974726170 && a2 == 0xED00004449746E61;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657469766E497369 && a2 == 0xE900000000000072;
          if (v9 || (sub_227A72E5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_227A72E5C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1635017060 && a2 == 0xE400000000000000;
              if (v11 || (sub_227A72E5C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_227A72E5C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227A10AEC(unsigned __int8 a1)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a1);
  return sub_227A72F4C();
}

uint64_t sub_227A10B34(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x4449726579616C70;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0x657469766E497369;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 1635017060;
      break;
    case 7:
      result = 0x656B6F5468737570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A10C18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE58, &qword_227AA2DD0);
  OUTLINED_FUNCTION_92(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A11638();
  sub_227A72F6C();
  LOBYTE(v27) = 0;
  sub_227A71C6C();
  OUTLINED_FUNCTION_6_4();
  sub_227A11744(v14, v15);
  OUTLINED_FUNCTION_10_3();
  sub_227A72DFC();
  if (!v2)
  {
    v16 = type metadata accessor for GKGroupActivityMessage();
    v17 = v16[5];
    LOBYTE(v27) = 1;
    sub_227A71C2C();
    OUTLINED_FUNCTION_5_2();
    sub_227A11744(v18, v19);
    OUTLINED_FUNCTION_10_3();
    sub_227A72DFC();
    OUTLINED_FUNCTION_16_3(v16[6]);
    LOBYTE(v27) = 2;
    OUTLINED_FUNCTION_10_3();
    sub_227A72DCC();
    OUTLINED_FUNCTION_16_3(v16[7]);
    LOBYTE(v27) = 3;
    OUTLINED_FUNCTION_10_3();
    sub_227A72DCC();
    v20 = *(v3 + v16[8]);
    LOBYTE(v27) = 4;
    OUTLINED_FUNCTION_10_3();
    sub_227A72DDC();
    v21 = v3 + v16[9];
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 8);
    v27 = v22;
    LOBYTE(v28) = v21;
    v29 = 5;
    sub_227A1178C();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10_3();
    sub_227A72DFC();
    v27 = OUTLINED_FUNCTION_16_3(v16[10]);
    v28 = v23;
    v29 = 6;
    sub_2279E3ED0(v27, v23);
    sub_227A0E850();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10_3();
    sub_227A72DBC();
    sub_2279E3F90(v27, v28);
    v27 = OUTLINED_FUNCTION_16_3(v16[11]);
    v28 = v24;
    v29 = 7;
    sub_2279E3ED0(v27, v24);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10_3();
    sub_227A72DBC();
    sub_2279E3F90(v27, v28);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_227A10F28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_227A71C2C();
  v4 = OUTLINED_FUNCTION_92(v3);
  v66 = v5;
  v67 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v10 = v9 - v8;
  v11 = sub_227A71C6C();
  v12 = OUTLINED_FUNCTION_92(v11);
  v68 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_2();
  v18 = v17 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE38, &qword_227AA2DC8);
  OUTLINED_FUNCTION_92(v65);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v63 - v24;
  v26 = type metadata accessor for GKGroupActivityMessage();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_2();
  v30 = v29 - v28;
  v32 = (v29 - v28 + v31[10]);
  v71 = v31;
  v72 = v32;
  *v32 = xmmword_227AA0100;
  v33 = v30;
  v73 = (v30 + v31[11]);
  v74 = a1;
  *v73 = xmmword_227AA0100;
  v34 = a1[4];
  v35 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A11638();
  v69 = v25;
  v36 = v70;
  sub_227A72F5C();
  if (!v36)
  {
    v70 = v20;
    LOBYTE(v75) = 0;
    OUTLINED_FUNCTION_6_4();
    sub_227A11744(v38, v39);
    OUTLINED_FUNCTION_9_4();
    sub_227A72D7C();
    (*(v68 + 32))(v33, v18, v11);
    LOBYTE(v75) = 1;
    OUTLINED_FUNCTION_5_2();
    sub_227A11744(v42, v43);
    v44 = v67;
    OUTLINED_FUNCTION_9_4();
    sub_227A72D7C();
    v45 = v71;
    (*(v66 + 32))(v33 + v71[5], v10, v44);
    OUTLINED_FUNCTION_2_5(2);
    v46 = sub_227A72D4C();
    v47 = v72;
    v48 = (v33 + v45[6]);
    *v48 = v46;
    v48[1] = v49;
    OUTLINED_FUNCTION_2_5(3);
    v50 = sub_227A72D4C();
    v51 = (v33 + v45[7]);
    *v51 = v50;
    v51[1] = v52;
    OUTLINED_FUNCTION_2_5(4);
    *(v33 + v45[8]) = sub_227A72D5C() & 1;
    v77 = 5;
    sub_227A1168C();
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_9_4();
    sub_227A72D7C();
    v53 = v76;
    v54 = v33 + v45[9];
    *v54 = v75;
    *(v54 + 8) = v53;
    v77 = 6;
    sub_227A0E7FC();
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_9_4();
    sub_227A72D3C();
    v55 = v75;
    v56 = v76;
    sub_2279E3F90(*v47, *(v47 + 1));
    *v47 = v55;
    *(v47 + 1) = v56;
    v77 = 7;
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_9_4();
    sub_227A72D3C();
    v57 = OUTLINED_FUNCTION_3_5();
    v58(v57);
    v59 = v75;
    v60 = v76;
    v61 = v73;
    sub_2279E3F90(*v73, v73[1]);
    *v61 = v59;
    v61[1] = v60;
    sub_227A116E0(v33, v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    return sub_2279F354C(v33);
  }

  OUTLINED_FUNCTION_14_3();
  v37 = v11;
  v40 = v71;
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  if (v34)
  {
    (*(v68 + 8))(v33, v37);
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (!v20)
    {
      goto LABEL_7;
    }

LABEL_10:
    v41 = *(v33 + v40[6] + 8);

    goto LABEL_7;
  }

  if (!v35)
  {
    goto LABEL_9;
  }

LABEL_6:
  (*(v66 + 8))(v33 + v40[5], v67);
  if (v20)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_2279E3F90(*v18, *(v18 + 8));
  return sub_2279E3F90(*v73, v73[1]);
}

uint64_t sub_227A11540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A10860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A11568@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A10AE4();
  *a1 = result;
  return result;
}

uint64_t sub_227A11590(uint64_t a1)
{
  v2 = sub_227A11638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A115CC(uint64_t a1)
{
  v2 = sub_227A11638();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227A11638()
{
  result = qword_27D7DCE40;
  if (!qword_27D7DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE40);
  }

  return result;
}

unint64_t sub_227A1168C()
{
  result = qword_27D7DCE50;
  if (!qword_27D7DCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE50);
  }

  return result;
}

uint64_t sub_227A116E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GKGroupActivityMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A11744(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227A1178C()
{
  result = qword_27D7DCE68;
  if (!qword_27D7DCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE68);
  }

  return result;
}

unint64_t sub_227A117E0()
{
  result = qword_27D7DCE98;
  if (!qword_27D7DCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE98);
  }

  return result;
}

unint64_t sub_227A11834()
{
  result = qword_27D7DCEA0;
  if (!qword_27D7DCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEA0);
  }

  return result;
}

unint64_t sub_227A11888()
{
  result = qword_27D7DCEA8;
  if (!qword_27D7DCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEA8);
  }

  return result;
}

unint64_t sub_227A118DC()
{
  result = qword_27D7DCEB0;
  if (!qword_27D7DCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEB0);
  }

  return result;
}

unint64_t sub_227A11930()
{
  result = qword_27D7DCEB8;
  if (!qword_27D7DCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEB8);
  }

  return result;
}

unint64_t sub_227A11984()
{
  result = qword_27D7DCEC0;
  if (!qword_27D7DCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEC0);
  }

  return result;
}

unint64_t sub_227A119D8()
{
  result = qword_27D7DCEF0;
  if (!qword_27D7DCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GKGroupActivityMessageType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessageType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessageType.RequestToJoinDeclinedCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GKGroupActivityMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A11DD4()
{
  result = qword_27D7DCEF8;
  if (!qword_27D7DCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEF8);
  }

  return result;
}

unint64_t sub_227A11E2C()
{
  result = qword_27D7DCF00;
  if (!qword_27D7DCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF00);
  }

  return result;
}

unint64_t sub_227A11E84()
{
  result = qword_27D7DCF08;
  if (!qword_27D7DCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF08);
  }

  return result;
}

unint64_t sub_227A11EDC()
{
  result = qword_27D7DCF10;
  if (!qword_27D7DCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF10);
  }

  return result;
}

unint64_t sub_227A11F34()
{
  result = qword_27D7DCF18;
  if (!qword_27D7DCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF18);
  }

  return result;
}

unint64_t sub_227A11F8C()
{
  result = qword_27D7DCF20;
  if (!qword_27D7DCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF20);
  }

  return result;
}

unint64_t sub_227A11FE4()
{
  result = qword_27D7DCF28;
  if (!qword_27D7DCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF28);
  }

  return result;
}

unint64_t sub_227A1203C()
{
  result = qword_27D7DCF30;
  if (!qword_27D7DCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF30);
  }

  return result;
}

unint64_t sub_227A12094()
{
  result = qword_27D7DCF38;
  if (!qword_27D7DCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF38);
  }

  return result;
}

unint64_t sub_227A120EC()
{
  result = qword_27D7DCF40;
  if (!qword_27D7DCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF40);
  }

  return result;
}

unint64_t sub_227A12144()
{
  result = qword_27D7DCF48;
  if (!qword_27D7DCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF48);
  }

  return result;
}

unint64_t sub_227A1219C()
{
  result = qword_27D7DCF50;
  if (!qword_27D7DCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF50);
  }

  return result;
}

unint64_t sub_227A121F4()
{
  result = qword_27D7DCF58;
  if (!qword_27D7DCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF58);
  }

  return result;
}

unint64_t sub_227A1224C()
{
  result = qword_27D7DCF60;
  if (!qword_27D7DCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF60);
  }

  return result;
}

unint64_t sub_227A122A4()
{
  result = qword_27D7DCF68;
  if (!qword_27D7DCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_227A72D0C();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_227A72D9C();
}

uint64_t OUTLINED_FUNCTION_16_3@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_227A12404()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF80, &qword_227AA33A8);
  v0 = *(sub_227A721BC() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_227AA0BF0;
  sub_227A7217C();
  sub_227A7218C();
  sub_227A7219C();
  result = sub_227A721AC();
  off_280B54D58 = v3;
  return result;
}

id sub_227A124E4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata setForCurrentProcessAllowingPDF_];
}

void sub_227A12544(int a1)
{
  v85 = sub_227A721BC();
  v2 = OUTLINED_FUNCTION_92(v85);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF88, &unk_227AA33B0);
  inited = swift_initStaticObject();
  v9 = 0;
  atomic_compare_exchange_strong_explicit((inited + 16), &v9, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v9)
  {
    OUTLINED_FUNCTION_3_6();
    if (!v11)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v40 = sub_227A7227C();
    v85 = OUTLINED_FUNCTION_9_5(v40, qword_280B551E8);
    v41 = sub_227A7289C();
    if (os_log_type_enabled(v85, v41))
    {
      v42 = OUTLINED_FUNCTION_6_5();
      *v42 = 0;
      _os_log_impl(&dword_227904000, v85, v41, "Image restrictions have already been set for the current process", v42, 2u);
      MEMORY[0x22AAA1930](v42, -1, -1);
    }

    v43 = v85;
  }

  else
  {
    v10 = CGImageSourceDisableRAWDecoding();
    if (v10 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v11)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v12 = sub_227A7227C();
      v13 = OUTLINED_FUNCTION_9_5(v12, qword_280B551E8);
      v14 = sub_227A728BC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_6_5();
        *v15 = 0;
        OUTLINED_FUNCTION_8_7(&dword_227904000, v16, v17, "CGImageSourceDisableRAWDecoding() failed");
        MEMORY[0x22AAA1930](v15, -1, -1);
      }
    }

    v18 = CGImageSourceDisableMetadataParsing();
    if (v18 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v11)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v19 = sub_227A7227C();
      v20 = OUTLINED_FUNCTION_9_5(v19, qword_280B551E8);
      v21 = sub_227A728BC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_6_5();
        *v22 = 0;
        OUTLINED_FUNCTION_8_7(&dword_227904000, v23, v24, "CGImageSourceDisableMetadataParsing() failed");
        MEMORY[0x22AAA1930](v22, -1, -1);
      }
    }

    if (qword_280B54D50 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v25 = off_280B54D58;
    v26 = *(off_280B54D58 + 2);
    if (v26)
    {
      HIDWORD(v81) = a1;
      v86 = MEMORY[0x277D84F90];
      sub_227A20388(0, v26, 0);
      v27 = v86;
      v29 = *(v4 + 16);
      v28 = v4 + 16;
      v30 = &v25[(*(v28 + 64) + 32) & ~*(v28 + 64)];
      v82 = *(v28 + 56);
      v83 = v29;
      v31 = (v28 - 8);
      do
      {
        v33 = v84;
        v32 = v85;
        v83(v84, v30, v85);
        v34 = sub_227A7216C();
        v36 = v35;
        (*v31)(v33, v32);
        v86 = v27;
        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_227A20388(v37 > 1, v38 + 1, 1);
          v27 = v86;
        }

        *(v27 + 16) = v38 + 1;
        v39 = v27 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        v30 += v82;
        --v26;
      }

      while (v26);
      LOBYTE(a1) = BYTE4(v81);
    }

    v44 = sub_227A7268C();

    v45 = CGImageSourceSetAllowableTypes();

    if (v45 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v11)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v46 = sub_227A7227C();
      v47 = OUTLINED_FUNCTION_9_5(v46, qword_280B551E8);
      v48 = sub_227A728BC();
      if (OUTLINED_FUNCTION_5_3(v48))
      {
        *OUTLINED_FUNCTION_6_5() = 0;
        OUTLINED_FUNCTION_2_6();
        _os_log_impl(v49, v50, v51, v52, v53, 2u);
        OUTLINED_FUNCTION_4_3();
      }
    }

    v54 = CGImageSourceDisableMetadataParsing();
    if (v54 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v11)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v55 = sub_227A7227C();
      v56 = OUTLINED_FUNCTION_9_5(v55, qword_280B551E8);
      v57 = sub_227A728BC();
      if (OUTLINED_FUNCTION_5_3(v57))
      {
        *OUTLINED_FUNCTION_6_5() = 0;
        OUTLINED_FUNCTION_2_6();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_4_3();
      }
    }

    v63 = CGImageSourceDisableHardwareDecoding();
    if (v63 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v11)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v64 = sub_227A7227C();
      v65 = OUTLINED_FUNCTION_9_5(v64, qword_280B551E8);
      v66 = sub_227A728BC();
      if (OUTLINED_FUNCTION_5_3(v66))
      {
        *OUTLINED_FUNCTION_6_5() = 0;
        OUTLINED_FUNCTION_2_6();
        _os_log_impl(v67, v68, v69, v70, v71, 2u);
        OUTLINED_FUNCTION_4_3();
      }
    }

    if ((a1 & 1) == 0)
    {
      CGEnterLockdownModeForPDF();
    }

    CGEnterLockdownModeForFonts();
    OUTLINED_FUNCTION_3_6();
    if (!v11)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v72 = sub_227A7227C();
    v73 = OUTLINED_FUNCTION_9_5(v72, qword_280B551E8);
    v74 = sub_227A7289C();
    if (OUTLINED_FUNCTION_5_3(v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 67109120;
      v75[1] = a1 & 1;
      OUTLINED_FUNCTION_2_6();
      _os_log_impl(v76, v77, v78, v79, v80, 8u);
      OUTLINED_FUNCTION_4_3();
    }
  }
}

BOOL sub_227A12B80(uint64_t a1, unint64_t a2)
{
  if (qword_280B54D50 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v5 = off_280B54D58;
  sub_2279E3EE4(a1, a2);

  return sub_227A12C00(v5, v2, a1, a2);
}

BOOL sub_227A12C00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19 = a2;
  v7 = sub_227A721BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v20 = *(a1 + 16);
  sub_2279E3EE4(a3, a4);
  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (v20 == v12)
    {
      break;
    }

    (*(v8 + 16))(v11, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12++, v7);
    sub_2279E3EE4(a3, a4);
    v14 = sub_227A13080(v11, v19, a3, a4);
    (*(v8 + 8))(v11, v7);
    if (v14)
    {

      break;
    }
  }

  v15 = v20 != v13;
  sub_2279E3FA4(a3, a4);
  sub_2279E3FA4(a3, a4);
  return v15;
}

uint64_t sub_227A12E18(uint64_t a1, unint64_t a2)
{
  v4 = sub_227A721BC();
  v5 = OUTLINED_FUNCTION_92(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B54D50 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v12 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v13 = *(off_280B54D58 + 2);
  if (v13)
  {
    v14 = v7 + 16;
    v27 = *(v7 + 16);
    v28 = v7 + 16;
    v15 = off_280B54D58 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v26 = *(v14 + 56);
    v16 = (v14 - 8);
    do
    {
      v27(v11, v15, v4);
      sub_2279E3EE4(a1, a2);
      v17 = sub_227A13080(v11, v29, a1, a2);
      if (v17)
      {
        v18 = v17;
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, 0, 0);

        v20 = (*v16)(v11, v4);
        if (ImageAtIndex)
        {
          MEMORY[0x22AA9FF30](v20);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_227A726BC();
          }

          sub_227A726DC();
          v12 = v30;
        }
      }

      else
      {
        (*v16)(v11, v4);
      }

      v15 += v26;
      --v13;
    }

    while (v13);
  }

  result = sub_227A06998(v12);
  if (!result)
  {

    return 0;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x22AAA03F0](0, v12);
    goto LABEL_16;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v12 + 32);
LABEL_16:
    v23 = v22;

    v24 = v23;
    return v23;
  }

  __break(1u);
  return result;
}

CGImageSourceRef sub_227A13080(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF78, &qword_227AA33A0);
  inited = swift_initStackObject();
  v7 = MEMORY[0x277CD35A8];
  *(inited + 16) = xmmword_227AA0BF0;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v10 = *MEMORY[0x277CD35B8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 1;
  v11 = *MEMORY[0x277CD3648];
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  *(inited + 120) = 1;
  v12 = *MEMORY[0x277CD3668];
  *(inited + 144) = v9;
  *(inited + 152) = v12;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_227A7216C();
  v17 = sub_227A724BC();

  type metadata accessor for CFString(0);
  *(inited + 184) = v18;
  *(inited + 160) = v17;
  sub_227A13378();
  sub_227A7243C();
  v19 = sub_227A7240C();

  v20 = sub_227A71B8C();
  v21 = CGImageSourceCreateWithData(v20, v19);

  if (v21 && CGImageSourceGetStatus(v21))
  {

    v21 = 0;
  }

  sub_2279E3FA4(a3, a4);
  return v21;
}

GKImageRestrictions __swiftcall GKImageRestrictions.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for GKImageRestrictions()
{
  result = qword_27D7DCF70;
  if (!qword_27D7DCF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DCF70);
  }

  return result;
}

unint64_t sub_227A13378()
{
  result = qword_27D7DC710;
  if (!qword_27D7DC710)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC710);
  }

  return result;
}

unint64_t sub_227A133D0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_5_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_227A7226C();
}

uint64_t sub_227A134A4()
{
  v1 = sub_227A71EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 104);
  v6(v5, *MEMORY[0x277CCB180], v1);
  v7 = sub_227A71F5C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  *(v0 + 16) = sub_227A71F2C();
  v6(v5, *MEMORY[0x277CCB178], v1);
  v10 = *(v7 + 48);
  v11 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_227A71F2C();
  return v0;
}

uint64_t sub_227A135F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A136D8(a3);
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a3;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  sub_227A71F0C();
}

uint64_t sub_227A136D8(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_227A72C9C();
      __break(1u);
      return result;
    }

    v2 = 24;
  }

  else
  {
    v2 = 16;
  }

  v3 = *(v1 + v2);
}

void sub_227A1376C(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_227A1387C();
    v7 = swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = a4;
    *(v8 + 24) = a1;
    *(v8 + 32) = 96;
    v9 = a1;
    v10 = a1;
    a2(v7);
  }
}

uint64_t sub_227A13818()
{
  sub_2279DFD34();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_227A1387C()
{
  result = qword_27D7DCF90;
  if (!qword_27D7DCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF90);
  }

  return result;
}

uint64_t sub_227A138F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = *(v4 + 16);
  v9(v20 - v10, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF98, &qword_227AA3468);
  if (swift_dynamicCast())
  {
    sub_22790B104(v20, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = (*(v12 + 16))(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_227A13B5C(v20);
    v9(v8, v2, a1);
    v14 = sub_227A72E3C();
    if (v14)
    {
      v15 = v14;
      (*(v4 + 8))(v8, a1);
    }

    else
    {
      v15 = swift_allocError();
      (*(v4 + 32))(v16, v8, a1);
    }

    v17 = sub_227A71A4C();

    v18 = [v17 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    v13 = sub_227A7269C();
  }

  return v13;
}

uint64_t sub_227A13B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCFA0, &unk_227AA3470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A13BC4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    sub_227A20388(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = HIBYTE(*v4) & 0xF;
      if ((*v4 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = *v4;

        sub_227A725FC();
        v9 = sub_227A7245C();
        v11 = v10;

        sub_227A054A0(1uLL, v5, v6);
        sub_227A13DBC();
        sub_227A7257C();

        v12 = v9;
        v13 = v11;
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_227A20388(v14 > 1, v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
  sub_227A13E10();
  v17 = sub_227A7246C();

  return v17;
}

unint64_t sub_227A13DBC()
{
  result = qword_27D7DCFA8;
  if (!qword_27D7DCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCFA8);
  }

  return result;
}

unint64_t sub_227A13E10()
{
  result = qword_27D7DC858;
  if (!qword_27D7DC858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC850, &qword_227AA0C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC858);
  }

  return result;
}

uint64_t sub_227A13E74(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_86();
    result = sub_227A7285C();
    v1 = v24[4];
    v3 = v24[5];
    v4 = v24[6];
    v5 = v24[7];
    v6 = v24[8];
  }

  else
  {
    v7 = *(a1 + 32);
    OUTLINED_FUNCTION_55_1();
    v3 = v1 + 56;
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(v8 << v10);
    }

    else
    {
      v11 = v8;
    }

    v6 = v11 & *(v1 + 56);

    v5 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v5;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    OUTLINED_FUNCTION_43_1();
    v16 = v15 & v14;
    v18 = *(*(v1 + 48) + ((v13 << 9) | (8 * v17)));
    if (!v18)
    {
      return sub_2279F34F8();
    }

    while (1)
    {
      result = sub_227A5B268(v18);
      if (!v20)
      {
        break;
      }

      v21 = result;
      v22 = v20;
      result = sub_227A5B274(v18);
      if (!v23)
      {
        goto LABEL_23;
      }

      sub_227A20F88(v24, v21, v22, result, v23);

      v5 = v13;
      v6 = v16;
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v19 = sub_227A72A7C();
      if (v19)
      {
        v24[10] = v19;
        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        swift_dynamicCast();
        v18 = v24[0];
        v13 = v5;
        v16 = v6;
        if (v24[0])
        {
          continue;
        }
      }

      return sub_2279F34F8();
    }
  }

  else
  {
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= ((v4 + 64) >> 6))
      {
        return sub_2279F34F8();
      }

      ++v12;
      if (*(v3 + 8 * v13))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_227A140A0(uint64_t a1)
{
  v38 = sub_227A7212C();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v31 = v1;
  v41 = MEMORY[0x277D84F90];
  sub_227A204C8(0, v6, 0);
  v7 = v41;
  result = sub_227A5B37C(a1);
  v11 = result;
  v12 = 0;
  v13 = a1 + 56;
  v36 = v3 + 32;
  v37 = v3;
  v32 = a1 + 64;
  v14 = v33;
  v34 = v6;
  v35 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v40 = v10;
      v39 = v9;
      v16 = a1;
      v17 = (*(a1 + 48) + 16 * v11);
      v18 = *v17;
      v19 = v17[1];

      sub_227A7211C();
      v41 = v7;
      v20 = v14;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_227A204C8(v21 > 1, v22 + 1, 1);
        v7 = v41;
      }

      *(v7 + 16) = v22 + 1;
      result = (*(v37 + 32))(v7 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v20, v38);
      if (v40)
      {
        goto LABEL_30;
      }

      v23 = 1 << *(v16 + 32);
      if (v11 >= v23)
      {
        goto LABEL_27;
      }

      v14 = v20;
      a1 = v16;
      v13 = v35;
      v24 = *(v35 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v39)
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_227A24020(v11, v39, 0);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_227A24020(v11, v39, 0);
LABEL_19:
        v14 = v33;
      }

      if (++v12 == v34)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v23;
      if (v23 < 0)
      {
        break;
      }
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

void sub_227A143B8()
{
  (*(**(v0 + 16) + 136))();

  JUMPOUT(0x22AA9F640);
}

uint64_t sub_227A1440C()
{
  v1 = *(**(v0 + 16) + 136);

  v1(v2);

  sub_227A71D9C();

  return swift_unknownObjectRelease();
}

uint64_t sub_227A14498()
{
  v1 = v0[2];
  [v1 lock];
  v3 = v0[3];
  v2 = v0[4];

  [v1 unlock];
  return v3;
}

id sub_227A144F4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  [v5 lock];
  v6 = v2[4];
  v2[3] = a1;
  v2[4] = a2;

  return [v5 unlock];
}

uint64_t FastSyncTransport.init(clientDelegate:reporter:daemonProxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCFC0, &qword_227AA3480);
  OUTLINED_FUNCTION_110();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_78_0();
  *&v3[v8] = sub_227A1F208(v9);
  v10 = OBJC_IVAR___GKFastSyncTransport_atomicGameChannel;
  OUTLINED_FUNCTION_110();
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_78_0();
  *&v3[v10] = sub_227A1F208(v11);
  *&v3[OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask] = 0;
  *&v3[OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask] = 0;
  *&v3[OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask] = 0;
  v12 = OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCFF0, &qword_227AA3488);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_57_1();
  *&v4[v12] = sub_227A1F254(v14, v15);
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR___GKFastSyncTransport_reporter] = a2;
  *&v4[OBJC_IVAR___GKFastSyncTransport_daemonProxy] = a3;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_init);
  OUTLINED_FUNCTION_13();
  swift_unknownObjectRelease();
  return v13;
}

id sub_227A14770()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask))
  {

    sub_227A727DC();
  }

  if (*(v0 + OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask))
  {
    v2 = *(v0 + OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask);

    sub_227A727DC();
  }

  if (*(v0 + OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask))
  {
    v3 = *(v0 + OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask);

    sub_227A727DC();
  }

  v4 = *(v0 + OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel);
  sub_227A1440C();
  v5 = *(v1 + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel);
  sub_227A1440C();
  v6 = *(v1 + OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle);
  return sub_227A144F4(0, 0);
}

uint64_t FastSyncTransport.connectToPlayers(with:)()
{
  OUTLINED_FUNCTION_31();
  v1[2] = v2;
  v1[3] = v0;
  sub_227A7273C();
  v1[4] = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[5] = v3;
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227A14908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v23 = *(v20 + 24);
  v24 = [*(v20 + 16) pseudonym];
  v25 = sub_227A724EC();
  v27 = v26;

  v28 = *(v23 + OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle);
  sub_227A144F4(v25, v27);
  v29 = sub_227A14498();
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    v33 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v33 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      if (qword_27D7DC4E0 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v34 = *(v20 + 16);
      v35 = sub_227A7227C();
      __swift_project_value_buffer(v35, qword_27D7DE210);
      OUTLINED_FUNCTION_13();

      v36 = v34;
      v37 = sub_227A7226C();
      v38 = sub_227A7289C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v20 + 16);
        OUTLINED_FUNCTION_63_1();
        v40 = OUTLINED_FUNCTION_90_0();
        v41 = OUTLINED_FUNCTION_107();
        a10 = v41;
        *v36 = 136315394;
        v42 = sub_227A46730(v31, v32, &a10);

        *(v36 + 1) = v42;
        *(v36 + 6) = 2112;
        *(v36 + 14) = v39;
        *v40 = v39;
        v43 = v39;
        _os_log_impl(&dword_227904000, v37, v38, "[%s] Request to connect with transport context: %@", v36, 0x16u);
        sub_2279F3774(v40, &unk_27D7DD270, &qword_227AA10E0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }

      else
      {
      }

      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_104_0(v63);
      *v64 = v65;
      v64[1] = sub_227A14C14;
      v66 = *(v20 + 24);
      OUTLINED_FUNCTION_108(*(v20 + 16));
      OUTLINED_FUNCTION_34_1();

      return sub_227A14F9C(v67);
    }
  }

  v44 = *(v20 + 32);

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v45 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v45, qword_27D7DE210);
  v46 = sub_227A7226C();
  v47 = sub_227A728BC();
  if (OUTLINED_FUNCTION_46_1(v47))
  {
    OUTLINED_FUNCTION_28_0();
    v48 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v48);
    OUTLINED_FUNCTION_10_4();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_34_1();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
}

uint64_t sub_227A14C14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = v3[6];

    return MEMORY[0x2822009F8](sub_227A14EE4, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v3[9] = v11;
    *v11 = v7;
    v11[1] = sub_227A14D64;
    v12 = v3[3];
    v13 = OUTLINED_FUNCTION_108(v3[2]);

    return sub_227A160B4(v13);
  }
}

uint64_t sub_227A14D64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v1 + 72);
  *v4 = *v2;
  *(v3 + 80) = v0;

  OUTLINED_FUNCTION_50_1();
  v7 = *(v6 + 48);
  v8 = *(v1 + 40);
  if (v0)
  {
    v9 = sub_227A14F40;
  }

  else
  {
    v9 = sub_227A14E8C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_227A14E8C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_227A14EE4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_227A14F40()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_227A14F9C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_227A7273C();
  v2[11] = sub_227A7272C();
  v4 = sub_227A726EC();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_227A15034, v4, v3);
}

uint64_t sub_227A15034()
{
  v88 = v0;
  v1 = sub_2279FEC00(*(v0 + 72));
  *(v0 + 112) = v2;
  if (!v2)
  {
    v6 = *(v0 + 88);

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v7 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v7, qword_27D7DE210);
    v8 = sub_227A7226C();
    v9 = sub_227A7289C();
    if (OUTLINED_FUNCTION_46_1(v9))
    {
      OUTLINED_FUNCTION_28_0();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v10);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

LABEL_19:

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_106_0();

    __asm { BRAA            X1, X16 }
  }

  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 80);
  v16 = sub_227A1AA80(3u);
  v18 = v17;
  v19 = *(*(v0 + 80) + OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel);
  sub_227A143B8();
  *(v0 + 120) = v20;
  v21 = *(v0 + 72);
  if (!v20)
  {

    v58 = [v21 lobbyParticipants];
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_76();
    *(v0 + 224) = sub_227A7282C();

    v85 = swift_task_alloc();
    *(v0 + 232) = v85;
    *v85 = v0;
    v86 = sub_227A15D44;
LABEL_29:
    v85[1] = v86;
    v59 = *(v0 + 80);
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_106_0();

    return sub_227A1BDB8(v60, v61, v62);
  }

  v22 = v20;
  v23 = [*(v0 + 72) lobbyParticipants];
  *(v0 + 128) = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
  *(v0 + 136) = sub_227A23DEC();
  sub_227A7282C();

  LOBYTE(v23) = sub_227A4B830();

  if (v23)
  {
    v24 = *(v22 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type) == v3 && *(v22 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8) == v4;
    if (v24 || (sub_227A72E5C() & 1) != 0)
    {
      v25 = *(v0 + 88);

      if (qword_27D7DC4E0 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v26 = sub_227A7227C();
      OUTLINED_FUNCTION_104(v26, qword_27D7DE210);
      v8 = sub_227A7226C();
      v27 = sub_227A7289C();
      if (OUTLINED_FUNCTION_46_1(v27))
      {
        OUTLINED_FUNCTION_28_0();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_36_1(v28);
        OUTLINED_FUNCTION_10_4();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }

      goto LABEL_19;
    }
  }

  v36 = *(v0 + 72);
  v37 = [v36 lobbyParticipants];
  v38 = sub_227A7282C();

  v87 = MEMORY[0x277D84FA0];
  sub_227A13E74(v38);

  *(v0 + 64) = v87;
  v39 = [v36 localPlayerID];
  v40 = sub_227A724EC();
  v42 = v41;

  sub_227A20F88(&v87, v40, v42, v16, v18);

  v43 = OUTLINED_FUNCTION_30_1();
  if (sub_227A4AD64(v43, v44))
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v45 = sub_227A7227C();
    __swift_project_value_buffer(v45, qword_27D7DE210);
    OUTLINED_FUNCTION_13();

    v46 = sub_227A7226C();
    v47 = sub_227A7289C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_63_1();
      v87 = OUTLINED_FUNCTION_82_0();
      *v48 = 136315394;
      v49 = OUTLINED_FUNCTION_30_1();
      *(v48 + 4) = sub_227A46730(v49, v50, v51);
      *(v48 + 12) = 2080;
      OUTLINED_FUNCTION_9_2();
      swift_beginAccess();
      v52 = *(v0 + 64);
      sub_227A075DC();
      OUTLINED_FUNCTION_100_0();

      v53 = sub_227A7283C();
      v55 = v54;

      v56 = sub_227A46730(v53, v55, &v87);

      *(v48 + 14) = v56;
      _os_log_impl(&dword_227904000, v46, v47, "Migrating the lobby channel to newID: %s, with all participants: %s", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    OUTLINED_FUNCTION_9_2();
    swift_beginAccess();
    *(v0 + 144) = *(v0 + 64);

    v57 = OUTLINED_FUNCTION_30_1();
    sub_227A4AF54(v57);
    v83 = *(v0 + 72);

    v84 = [v83 lobbyParticipants];
    *(v0 + 152) = sub_227A7282C();

    v85 = swift_task_alloc();
    *(v0 + 160) = v85;
    *v85 = v0;
    v86 = sub_227A1582C;
    goto LABEL_29;
  }

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v65 = sub_227A7227C();
  __swift_project_value_buffer(v65, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v66 = sub_227A7226C();
  sub_227A7289C();
  OUTLINED_FUNCTION_94_0();

  if (OUTLINED_FUNCTION_143())
  {
    v67 = OUTLINED_FUNCTION_106();
    v68 = OUTLINED_FUNCTION_107();
    v87 = v68;
    *v67 = 136315138;
    v69 = OUTLINED_FUNCTION_30_1();
    *(v67 + 4) = sub_227A46730(v69, v70, v71);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v72, v73, v74, v75, v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v76 = [*(v0 + 72) lobbyParticipants];
  *(v0 + 176) = sub_227A7282C();

  v77 = swift_task_alloc();
  *(v0 + 184) = v77;
  *v77 = v0;
  OUTLINED_FUNCTION_64_1(v77);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_106_0();

  return sub_227A1A264(v78, v79, v80, v81);
}

uint64_t sub_227A1582C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A16028;
  }

  else
  {
    v12 = v3[19];
    v13 = v3[14];

    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A1593C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A1593C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];

  OUTLINED_FUNCTION_23();

  return v4();
}

uint64_t sub_227A159AC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A15F20;
  }

  else
  {
    v12 = v3[22];
    v13 = v3[14];

    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A15ABC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A15ABC()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = [v4 lobbyParticipants];
  v6 = sub_227A7282C();

  sub_227A4A708(v6);

  v7 = [v4 gameParticipants];
  v8 = sub_227A7282C();
  v0[25] = v8;

  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_64_1(v9);

  return sub_227A1B910(v8);
}

uint64_t sub_227A15BD4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[27] = v0;

  if (v0)
  {
    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A15FAC;
  }

  else
  {
    v12 = v3[25];

    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A15CD8;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A15CD8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[15];
  v2 = v0[11];

  v3 = v0[8];

  OUTLINED_FUNCTION_23();

  return v4();
}

uint64_t sub_227A15D44()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[30] = v0;

  if (v0)
  {
    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A15EAC;
  }

  else
  {
    v12 = v3[28];
    v13 = v3[14];

    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A15E54;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A15E54()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_227A15EAC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[28];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[30];
  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A15F20()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[22];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  v5 = v0[8];

  v6 = v0[24];
  OUTLINED_FUNCTION_41();

  return v7();
}

uint64_t sub_227A15FAC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[11];

  v4 = v0[8];

  v5 = v0[27];
  OUTLINED_FUNCTION_41();

  return v6();
}

uint64_t sub_227A16028()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  v6 = v0[21];
  OUTLINED_FUNCTION_41();

  return v7();
}

uint64_t sub_227A160B4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_227A7273C();
  v2[11] = sub_227A7272C();
  v4 = sub_227A726EC();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_227A1614C, v4, v3);
}

uint64_t sub_227A1614C()
{
  v64 = v0;
  *(v0 + 112) = sub_227A23D8C(*(v0 + 72));
  *(v0 + 120) = v1;
  if (!v1)
  {
    v3 = *(v0 + 88);

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v4 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v4, qword_27D7DE210);
    v5 = sub_227A7226C();
    v6 = sub_227A7289C();
    if (OUTLINED_FUNCTION_46_1(v6))
    {
      OUTLINED_FUNCTION_28_0();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v7);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    goto LABEL_7;
  }

  v2 = *(v0 + 80);
  v15 = sub_227A1AA80(1u);
  v17 = v16;
  v18 = *(*(v0 + 80) + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel);
  sub_227A143B8();
  if (!v19)
  {

    goto LABEL_24;
  }

  v20 = OUTLINED_FUNCTION_30_1();
  if ((sub_227A4AD64(v20, v21) & 1) == 0)
  {
    v43 = *(v0 + 88);

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v44 = sub_227A7227C();
    __swift_project_value_buffer(v44, qword_27D7DE210);
    OUTLINED_FUNCTION_13();

    v5 = sub_227A7226C();
    sub_227A7289C();
    OUTLINED_FUNCTION_94_0();

    if (!OUTLINED_FUNCTION_143())
    {

LABEL_8:
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_1();

      __asm { BRAA            X1, X16 }
    }

    v45 = OUTLINED_FUNCTION_106();
    v46 = OUTLINED_FUNCTION_107();
    v63 = v46;
    *v45 = 136315138;
    v47 = OUTLINED_FUNCTION_30_1();
    v50 = sub_227A46730(v47, v48, v49);

    *(v45 + 4) = v50;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v51, v52, v53, v54, v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();

LABEL_7:

    goto LABEL_8;
  }

  v22 = *(v0 + 72);
  v23 = [v22 gameParticipants];
  sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
  sub_227A23DEC();
  v24 = sub_227A7282C();

  v63 = MEMORY[0x277D84FA0];
  sub_227A13E74(v24);

  *(v0 + 64) = v63;
  v25 = [v22 localPlayerID];
  v26 = sub_227A724EC();
  v28 = v27;

  sub_227A20F88(&v63, v26, v28, v15, v17);

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v29 = sub_227A7227C();
  __swift_project_value_buffer(v29, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v30 = sub_227A7226C();
  v31 = sub_227A7289C();

  if (os_log_type_enabled(v30, v31))
  {
    v62 = v31;
    v32 = OUTLINED_FUNCTION_63_1();
    v63 = OUTLINED_FUNCTION_82_0();
    *v32 = 136315394;
    v33 = OUTLINED_FUNCTION_30_1();
    *(v32 + 4) = sub_227A46730(v33, v34, v35);
    *(v32 + 12) = 2080;
    OUTLINED_FUNCTION_9_2();
    swift_beginAccess();
    v36 = *(v0 + 64);
    sub_227A075DC();

    v37 = sub_227A7283C();
    v39 = v38;

    v40 = sub_227A46730(v37, v39, &v63);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_227904000, v30, v62, "Migrating the game channel to newID: %s, with all participants: %s", v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v41 = *(v0 + 64);

  v42 = OUTLINED_FUNCTION_30_1();
  sub_227A4AF54(v42);
  swift_bridgeObjectRelease_n();

LABEL_24:
  v55 = [*(v0 + 72) gameParticipants];
  *(v0 + 128) = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
  *(v0 + 136) = sub_227A23DEC();
  OUTLINED_FUNCTION_76();
  *(v0 + 144) = sub_227A7282C();

  v56 = swift_task_alloc();
  *(v0 + 152) = v56;
  *v56 = v0;
  OUTLINED_FUNCTION_64_1(v56);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_68_1();

  return sub_227A1AF08(v57, v58, v59);
}

uint64_t sub_227A16740()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[20] = v0;

  if (v0)
  {
    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A1698C;
  }

  else
  {
    v12 = v3[18];

    v9 = v3[12];
    v10 = v3[13];
    v11 = sub_227A16844;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A16844()
{
  OUTLINED_FUNCTION_132();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  v3 = *(v2 + OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel);
  sub_227A143B8();
  if (!v4)
  {
    v6 = *(v0 + 120);
    goto LABEL_5;
  }

  if (sub_227A4B350())
  {
    v5 = *(v0 + 120);

LABEL_5:

LABEL_6:
    OUTLINED_FUNCTION_23();
    goto LABEL_7;
  }

  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = [*(v0 + 72) gameParticipants];
  v15 = sub_227A7282C();

  sub_227A13E74(v15);

  sub_227A4B3BC();
  v16 = *(v0 + 120);

  if (!v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_41();
LABEL_7:

  return v7();
}

uint64_t sub_227A1698C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];

  v4 = v0[20];
  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A16A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_227A7273C();
  v3[5] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A16ABC, v5, v4);
}

uint64_t sub_227A16ABC()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_104_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_26_2(v8);

  return FastSyncTransport.connectToPlayers(with:)();
}

uint64_t FastSyncTransport.disconnectAll(with:)()
{
  OUTLINED_FUNCTION_31();
  v1[18] = v2;
  v1[19] = v0;
  sub_227A7273C();
  v1[20] = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[21] = v3;
  v1[22] = v4;
  v5 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227A16BE8()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v2, qword_27D7DE210);
  v3 = v1;
  v4 = sub_227A7226C();
  LOBYTE(v1) = sub_227A728AC();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[18];
    v6 = OUTLINED_FUNCTION_106();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_10_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_2279F3774(v7, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v14 = v0[19];

  v15 = *(v14 + OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel);
  sub_227A143B8();
  v0[23] = v16;
  if (v16)
  {
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v18 = sub_227A16EC0;
LABEL_9:
    v17[1] = v18;
    OUTLINED_FUNCTION_161();

    return sub_227A47C2C();
  }

  v19 = *(v0[19] + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel);
  sub_227A143B8();
  v0[26] = v20;
  if (v20)
  {
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_33_1();
    goto LABEL_9;
  }

  v24 = *(v0[19] + OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle);
  sub_227A14498();
  if (v25)
  {
    OUTLINED_FUNCTION_39_0();
    v27 = *(v26 + OBJC_IVAR___GKFastSyncTransport_daemonProxy);
    v28 = sub_227A724BC();
    OUTLINED_FUNCTION_89_0(v28);
    OUTLINED_FUNCTION_103_0();
    v0[2] = v29;
    OUTLINED_FUNCTION_9_6();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD008, &qword_227AA34B8);
    OUTLINED_FUNCTION_8_8(v30);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_91_1(v31, sel_revokePseudonym_completionHandler_);
    OUTLINED_FUNCTION_161();

    return MEMORY[0x282200938](v32, v33, v34, v35, v36, v37, v38, v39);
  }

  else
  {
    v40 = v0[20];

    v41 = v0[19];
    sub_227A14770();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_161();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49);
  }
}

uint64_t sub_227A16EC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = v3[22];
    v11 = sub_227A174F8;
  }

  else
  {
    v12 = v3[23];

    v9 = v3[21];
    v10 = v3[22];
    v11 = sub_227A16FC4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A16FC4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *(v0[19] + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel);
  sub_227A143B8();
  v0[26] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_33_1();
    *(v4 + 8) = v5;
    OUTLINED_FUNCTION_161();

    return sub_227A47C2C();
  }

  else
  {
    v8 = *(v0[19] + OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle);
    sub_227A14498();
    if (v9)
    {
      OUTLINED_FUNCTION_39_0();
      v11 = *(v10 + OBJC_IVAR___GKFastSyncTransport_daemonProxy);
      v12 = sub_227A724BC();
      OUTLINED_FUNCTION_89_0(v12);
      OUTLINED_FUNCTION_103_0();
      v0[2] = v13;
      OUTLINED_FUNCTION_9_6();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD008, &qword_227AA34B8);
      OUTLINED_FUNCTION_8_8(v14);
      v0[11] = 1107296256;
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_91_1(v15, sel_revokePseudonym_completionHandler_);
      OUTLINED_FUNCTION_161();

      return MEMORY[0x282200938](v16, v17, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      v24 = v0[20];

      v25 = v0[19];
      sub_227A14770();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_161();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }
}

uint64_t sub_227A17150()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = v3[22];
    v11 = sub_227A17560;
  }

  else
  {
    v12 = v3[26];

    v9 = v3[21];
    v10 = v3[22];
    v11 = sub_227A17254;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A17254()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *(v0[19] + OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle);
  sub_227A14498();
  if (v2)
  {
    OUTLINED_FUNCTION_39_0();
    v4 = *(v3 + OBJC_IVAR___GKFastSyncTransport_daemonProxy);
    v5 = sub_227A724BC();
    OUTLINED_FUNCTION_89_0(v5);
    OUTLINED_FUNCTION_103_0();
    v0[2] = v6;
    OUTLINED_FUNCTION_9_6();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD008, &qword_227AA34B8);
    OUTLINED_FUNCTION_8_8(v7);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_91_1(v8, sel_revokePseudonym_completionHandler_);
    OUTLINED_FUNCTION_161();

    return MEMORY[0x282200938](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = v0[20];

    v18 = v0[19];
    sub_227A14770();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_161();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_227A1736C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_32();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 240) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_227A175C8;
  }

  else
  {
    v7 = sub_227A17490;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_227A17490()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[29];
  v2 = v0[20];

  v3 = v0[19];
  sub_227A14770();
  OUTLINED_FUNCTION_23();

  return v4();
}

uint64_t sub_227A174F8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[23];
  v2 = v0[20];

  v3 = v0[25];
  OUTLINED_FUNCTION_41();

  return v4();
}

uint64_t sub_227A17560()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[26];
  v2 = v0[20];

  v3 = v0[28];
  OUTLINED_FUNCTION_41();

  return v4();
}

uint64_t sub_227A175C8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[20];

  swift_willThrow();

  v4 = v0[30];
  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A17638(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_227A2B1D0(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_227A176C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_227A7273C();
  v3[5] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A17764, v5, v4);
}

uint64_t sub_227A17764()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_104_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_26_2(v8);

  return FastSyncTransport.disconnectAll(with:)();
}

uint64_t sub_227A17810()
{
  OUTLINED_FUNCTION_56();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[6];
  if (v2)
  {
    v11 = sub_227A71A4C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v12 = v9[1];

  return v12();
}

uint64_t FastSyncTransport.sendScopedData(_:to:dataMode:dataScope:transportContext:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_227A06998(a3))
  {
    v37 = a1;
    v12 = sub_227A065CC(a3);
    v13 = MEMORY[0x277D84F90];
    v38 = a2;
    if (!v12)
    {
LABEL_12:
      v26 = sub_227A17C58(v13);
      sub_227A17EB8(v37, v38, v26, a4, a5, a6);
    }

    v14 = v12;
    v39 = MEMORY[0x277D84F90];
    sub_227A20388(0, v12 & ~(v12 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v35 = a6;
      v36 = a4;
      v15 = 0;
      v13 = v39;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AAA03F0](v15, a3);
        }

        else
        {
          v16 = *(a3 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = [v16 internal];
        v19 = [v18 playerID];

        v20 = sub_227A724EC();
        v22 = v21;

        v24 = *(v39 + 16);
        v23 = *(v39 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_227A20388(v23 > 1, v24 + 1, 1);
        }

        ++v15;
        *(v39 + 16) = v24 + 1;
        v25 = v39 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
      }

      while (v14 != v15);
      a4 = v36;
      a6 = v35;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_27D7DC4E0 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v28 = sub_227A7227C();
  v29 = __swift_project_value_buffer(v28, qword_27D7DE210);
  v30 = sub_227A7226C();
  sub_227A728AC();
  v31 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_28_0();
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_227904000, v30, v29, "Skipping send scoped data with empty players list.", v33, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  sub_227A1387C();
  OUTLINED_FUNCTION_95_0();
  swift_allocError();
  *v34 = 0xD000000000000012;
  *(v34 + 8) = 0x8000000227A98C80;
  *(v34 + 16) = a4;
  *(v34 + 24) = 0;
  *(v34 + 32) = 101;
  return swift_willThrow();
}

uint64_t sub_227A17C58(uint64_t a1)
{
  result = MEMORY[0x22AAA0100](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_227A2095C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_227A17D18()
{
  OUTLINED_FUNCTION_105_0();
  v2 = sub_227A7212C();
  v3 = OUTLINED_FUNCTION_70_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(v0 + 16);
  sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290]);
  v14 = OUTLINED_FUNCTION_76();
  v25 = MEMORY[0x22AAA0100](v14);
  v15 = *(v0 + 16);
  if (v15)
  {
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = *(v16 + 64);
    v24 = v0;
    v20 = v0 + ((v19 + 32) & ~v19);
    v21 = *(v16 + 56);
    do
    {
      OUTLINED_FUNCTION_75_1();
      v17(v22);
      sub_227A20AA4(v12, v10);
      (*(v16 - 8))(v12, v1);
      v20 += v21;
      --v15;
    }

    while (v15);

    return v25;
  }

  else
  {
    OUTLINED_FUNCTION_13();
  }

  return v13;
}

uint64_t sub_227A17EB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v7 = v6;
  v65 = a3;
  v66 = a4;
  v11 = type metadata accessor for DataMessage(0);
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v58 - v15);
  v17 = a5;
  v72 = v7;
  sub_227A18810(a5);
  if (v18)
  {
    v64 = v18;
    v19 = *&v72[OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle];
    v20 = sub_227A14498();
    v22 = v20;
    if (v21)
    {
      *v16 = a1;
      v16[1] = a2;
      v23 = v20;
      v24 = *(v11 + 20);
      v59 = v21;
      sub_2279E3EE4(a1, a2);
      sub_227A71C5C();
      v70 = v11;
      v71 = sub_227A20870(&qword_27D7DD018, type metadata accessor for DataMessage);
      v25 = __swift_allocate_boxed_opaque_existential_1(&v67);
      v60 = type metadata accessor for DataMessage;
      sub_227A24238(v16, v25);
      sub_227A24238(v16, v14);
      v26 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      *(v30 + 16) = v64;
      sub_227A2418C(v14, v30 + v26);
      v31 = (v30 + v27);
      v32 = v23;
      *v31 = v23;
      v33 = v59;
      v31[1] = v59;
      v34 = v65;
      *(v30 + v28) = v65;
      v35 = v72;
      *(v30 + v29) = v72;
      v36 = v63;
      *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;

      v37 = v35;
      v38 = v36;

      sub_227A4843C(&v67, v32, v33, v34, v66, sub_227A207AC, v30, v39, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      sub_227A241E4();

      return __swift_destroy_boxed_opaque_existential_0Tm(&v67);
    }

    else
    {
      sub_227A1387C();
      swift_allocError();
      *v57 = v22;
      *(v57 + 8) = 0;
      *(v57 + 16) = v66;
      *(v57 + 24) = v17;
      *(v57 + 32) = 98;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v41 = sub_227A7227C();
    __swift_project_value_buffer(v41, qword_27D7DE210);
    v42 = v65;

    v43 = sub_227A7226C();
    v44 = sub_227A728AC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67 = v46;
      *v45 = 136315394;
      v47 = sub_227A483BC(v42);
      v49 = sub_227A46730(v47, v48, &v67);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = GKMatchSendDataScope.description.getter(v17);
      v52 = sub_227A46730(v50, v51, &v67);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_227904000, v43, v44, "Skipping send scoped data to %s with nil channel for: %s.", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v46, -1, -1);
      MEMORY[0x22AAA1930](v45, -1, -1);
    }

    v67 = 0;
    v68 = 0xE000000000000000;
    sub_227A72B1C();

    v67 = 0xD000000000000017;
    v68 = 0x8000000227A98F40;
    v53 = GKMatchSendDataScope.description.getter(v17);
    MEMORY[0x22AA9FE40](v53);

    v54 = v67;
    v55 = v68;
    sub_227A1387C();
    swift_allocError();
    *v56 = v54;
    *(v56 + 8) = v55;
    *(v56 + 16) = v66;
    *(v56 + 24) = v17;
    *(v56 + 32) = 97;
    return swift_willThrow();
  }
}

id GKMatchSendDataScope.description.getter(uint64_t a1)
{
  v1 = 0x53746C7561666544;
  switch(a1)
  {
    case 0:
      return v1;
    case 2:
      return 0xD000000000000011;
    case 1:
      return 0xD000000000000010;
  }

  result = [objc_opt_self() shared];
  if (result)
  {
    v4 = result;
    v5 = [result isInternalBuild];

    if (v5)
    {
      if (qword_280B551E0 != -1)
      {
        swift_once();
      }

      v6 = sub_227A7227C();
      OUTLINED_FUNCTION_104(v6, qword_280B551E8);
      v7 = sub_227A7226C();
      v8 = sub_227A728CC();
      if (OUTLINED_FUNCTION_27_0(v8))
      {
        OUTLINED_FUNCTION_106();
        v9 = OUTLINED_FUNCTION_100();
        v13 = v9;
        *v5 = 136315138;
        v10 = GKMatchSendDataScope.description.getter(a1);
        v12 = sub_227A46730(v10, v11, &v13);

        *(v5 + 4) = v12;
        _os_log_impl(&dword_227904000, v7, v8, "Unexpected GKMatchSendDataScope value: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }
    }

    return v1;
  }

  __break(1u);
  return result;
}

void sub_227A18810(uint64_t a1)
{
  v2 = v1;
  if (a1 == 2 || (v3 = *(v1 + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel), sub_227A143B8(), !v4))
  {
    v5 = *(v2 + OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel);
    sub_227A143B8();
  }
}

void sub_227A1885C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a7;
  v58 = a8;
  v55 = a5;
  v56 = a6;
  v54 = a4;
  v11 = type metadata accessor for DataMessage(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  swift_getErrorValue();
  if (sub_227A35B18(v63))
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v53 = a2;
    v20 = sub_227A7227C();
    __swift_project_value_buffer(v20, qword_27D7DE210);
    v21 = sub_227A7226C();
    v22 = sub_227A728AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_227904000, v21, v22, "Falling back to reliable data sending upon maxPayloadSizeExceeded error", v23, 2u);
      MEMORY[0x22AAA1930](v23, -1, -1);
    }

    v61 = v11;
    v62 = sub_227A20870(&qword_27D7DD018, type metadata accessor for DataMessage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
    sub_227A24238(a3, boxed_opaque_existential_1);
    sub_227A24238(a3, v19);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_227A2418C(v19, v27 + v25);
    v28 = v57;
    v29 = v58;
    *(v27 + v26) = v57;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
    v30 = v28;
    v31 = v29;
    sub_227A4843C(v60, v54, v55, v56, 0, sub_227A208B8, v27, v32, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v61, v62);

    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v33 = sub_227A7227C();
    __swift_project_value_buffer(v33, qword_27D7DE210);
    sub_227A24238(a3, v17);
    v34 = a1;
    v35 = sub_227A7226C();
    v36 = sub_227A728BC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60[0] = v39;
      *v37 = 136315394;
      v40 = *(v11 + 20);
      sub_227A71C6C();
      sub_227A20870(&qword_27D7DC568, MEMORY[0x277CC95F0]);
      v41 = sub_227A72E1C();
      v43 = v42;
      sub_227A241E4();
      v44 = sub_227A46730(v41, v43, v60);

      *(v37 + 4) = v44;
      *(v37 + 12) = 2112;
      v45 = a1;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v46;
      *v38 = v46;
      _os_log_impl(&dword_227904000, v35, v36, "Async message[%s] send error: %@", v37, 0x16u);
      sub_2279F3774(v38, &unk_27D7DD270, &qword_227AA10E0);
      MEMORY[0x22AAA1930](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x22AAA1930](v39, -1, -1);
      MEMORY[0x22AAA1930](v37, -1, -1);
    }

    else
    {

      sub_227A241E4();
    }

    v47 = *&v57[OBJC_IVAR___GKFastSyncTransport_reporter];
    sub_227A1387C();
    v48 = swift_allocError();
    *v49 = a1;
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    v50 = MEMORY[0x28223BE20](v48);
    *(&v53 - 4) = v47;
    *(&v53 - 3) = v50;
    v51 = v58;
    *(&v53 - 2) = v58;
    v52 = a1;
    sub_2279FA2E8(v51, 0, 0, sub_2279FF2D8, (&v53 - 6));
  }
}

void sub_227A190F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DataMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v12 = sub_227A7227C();
  __swift_project_value_buffer(v12, qword_27D7DE210);
  sub_227A24238(a2, v11);
  v13 = a1;
  v14 = sub_227A7226C();
  v15 = sub_227A728BC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v17 = 136315394;
    v20 = *(v8 + 20);
    sub_227A71C6C();
    sub_227A20870(&qword_27D7DC568, MEMORY[0x277CC95F0]);
    v21 = sub_227A72E1C();
    v23 = v22;
    sub_227A241E4();
    v24 = sub_227A46730(v21, v23, &v34);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2112;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v26;
    *v18 = v26;
    _os_log_impl(&dword_227904000, v14, v15, "Fallback reliable message[%s] send error: %@", v17, 0x16u);
    sub_2279F3774(v18, &unk_27D7DD270, &qword_227AA10E0);
    MEMORY[0x22AAA1930](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x22AAA1930](v19, -1, -1);
    v27 = v17;
    a3 = v33;
    MEMORY[0x22AAA1930](v27, -1, -1);
  }

  else
  {

    sub_227A241E4();
  }

  v28 = *(a3 + OBJC_IVAR___GKFastSyncTransport_reporter);
  sub_227A1387C();
  v29 = swift_allocError();
  *v30 = a1;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  v31 = MEMORY[0x28223BE20](v29);
  *(&v33 - 4) = v28;
  *(&v33 - 3) = v31;
  *(&v33 - 2) = a4;
  v32 = a1;
  sub_2279FA2E8(a4, 0, 0, sub_2279FF2D8, (&v33 - 6));
}

uint64_t FastSyncTransport.chooseBestHostingPlayer(with:)()
{
  OUTLINED_FUNCTION_31();
  v1[10] = v2;
  v1[11] = v0;
  sub_227A7273C();
  v1[12] = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[13] = v3;
  v1[14] = v4;
  v5 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227A194EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v23 = *(v20 + 88);
  sub_227A18810(0);
  *(v20 + 120) = v24;
  if (v24)
  {
    v25 = swift_task_alloc();
    *(v20 + 128) = v25;
    *v25 = v20;
    v25[1] = sub_227A19878;
    OUTLINED_FUNCTION_34_1();

    return sub_227A4901C();
  }

  else
  {
    v28 = *(v20 + 96);

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v29 = *(v20 + 88);
    v30 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v30, qword_27D7DE210);
    v31 = v29;
    v32 = sub_227A7226C();
    v33 = sub_227A728BC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = 7104878;
      v35 = *(v20 + 88);
      v36 = OUTLINED_FUNCTION_63_1();
      a9 = OUTLINED_FUNCTION_82_0();
      *v36 = 136315394;
      v37 = *(v35 + OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel);
      sub_227A143B8();
      if (v38)
      {
        *(v20 + 72) = v38;
        type metadata accessor for FastSyncChannel();
        v39 = sub_227A7251C();
        v41 = v40;
      }

      else
      {
        v41 = 0xE300000000000000;
        v39 = 7104878;
      }

      v42 = *(v20 + 88);
      v43 = sub_227A46730(v39, v41, &a9);

      *(v36 + 4) = v43;
      *(v36 + 12) = 2080;
      v44 = *(v42 + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel);
      sub_227A143B8();
      if (v45)
      {
        *(v20 + 64) = v45;
        type metadata accessor for FastSyncChannel();
        v34 = sub_227A7251C();
        v47 = v46;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v48 = sub_227A46730(v34, v47, &a9);

      *(v36 + 14) = v48;
      _os_log_impl(&dword_227904000, v32, v33, "There is no valid channel for .default scope. lobbyChannel:%s, gameChannel:%s", v36, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_101_0();
    OUTLINED_FUNCTION_95_0();
    v49 = swift_allocError();
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 32;
    v51 = v49;
    swift_willThrow();
    *(v20 + 56) = v49;
    v52 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    if (!swift_dynamicCast() || (v53 = *(v20 + 48) & 0xE0, sub_227A203A8(*(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48)), v51 = v49, v53 != 64))
    {
      OUTLINED_FUNCTION_95_0();
      v54 = swift_allocError();
      OUTLINED_FUNCTION_71_1(v54, v55);
    }

    v56 = *(v20 + 80);
    v57 = *(*(v20 + 88) + OBJC_IVAR___GKFastSyncTransport_reporter);
    v58 = swift_task_alloc();
    OUTLINED_FUNCTION_108_0(v58);
    v59 = v51;
    OUTLINED_FUNCTION_29_1();

    v60 = *(v20 + 8);
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_34_1();

    return v64(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
  }
}

uint64_t sub_227A19878()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v1 + 128);
  v6 = *v2;
  OUTLINED_FUNCTION_32();
  *v7 = v6;
  v10[17] = v8;
  v10[18] = v9;
  v10[19] = v0;

  OUTLINED_FUNCTION_50_1();
  v12 = *(v11 + 112);
  v13 = *(v1 + 104);
  if (v0)
  {
    v14 = sub_227A19B1C;
  }

  else
  {
    v14 = sub_227A199A8;
  }

  return MEMORY[0x2822009F8](v14, v13, v12);
}

uint64_t sub_227A199A8()
{
  v1 = v0[12];

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = v0[18];
  v3 = sub_227A7227C();
  __swift_project_value_buffer(v3, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v4 = sub_227A7226C();
  sub_227A7289C();
  OUTLINED_FUNCTION_94_0();

  if (OUTLINED_FUNCTION_143())
  {
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[15];
    v8 = OUTLINED_FUNCTION_106();
    v23 = OUTLINED_FUNCTION_107();
    *v8 = 136315138;
    v9 = OUTLINED_FUNCTION_82();
    *(v8 + 4) = sub_227A46730(v9, v10, v11);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v12, v13, v14, v15, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930](v16);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930](v17);
  }

  else
  {
    v18 = v0[15];
  }

  v19 = v0[17];
  v20 = v0[18];
  v21 = v0[1];

  return v21(v19, v20);
}