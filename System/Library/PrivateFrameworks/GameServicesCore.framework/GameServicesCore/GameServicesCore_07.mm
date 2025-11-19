uint64_t sub_227BAF05C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227BAF098(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_227BAF0EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_227BAF154(char a1)
{
  if (a1)
  {
    return 0x69646E6563736564;
  }

  else
  {
    return 0x6E69646E65637361;
  }
}

uint64_t sub_227BAF194(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  if (a4)
  {
    if (a3)
    {
      v9 = sub_227D4CEF8();
    }

    else
    {
      v9 = sub_227D4CED8();
    }
  }

  else if (a3)
  {
    v9 = sub_227D4CF08();
  }

  else
  {
    v9 = sub_227D4CEE8();
  }

  return v9 & 1;
}

uint64_t sub_227BAF238()
{
  v0 = sub_227D4D868();

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

uint64_t sub_227BAF28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_227BAF2F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_227BAF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_227BAF3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_227BAF40C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BAF238();
  *a2 = result;
  return result;
}

uint64_t sub_227BAF43C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BAF154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BAF470(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = BYTE2(a1);
    BYTE8(v6) = 0;
    sub_227D4D668();
    MEMORY[0x22AAA5DA0](0xD000000000000019, 0x8000000227D75DF0);
    *&v6 = v4 & 1;
    type metadata accessor for SortedValidator.SortOrder();
    swift_getWitnessTable();
    sub_227D4DA68();
    MEMORY[0x22AAA5DA0](0x2E726564726F20, 0xE700000000000000);
    a2 = *(&v6 + 1);
  }

  sub_227D4CE58();
  return a2;
}

uint64_t sub_227BAF59C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v31 = a2;
  v8 = (a2 >> 8) & 1;
  v9 = *(a6 + 8);
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v26[-v16];
  if (a1)
  {
    v18 = a1;
  }

  else
  {
    v18 = sub_227D4D208();
  }

  v32 = v18;
  sub_227D4D248();
  sub_227D4CE58();
  swift_getWitnessTable();
  if (sub_227D4D3E8())
  {
LABEL_9:

    return v8;
  }

  result = sub_227D4D238();
  v20 = result - 1;
  if (result >= 1)
  {
    v27 = HIWORD(v31) & 1;
    v21 = (v11 + 8);
    v22 = 1;
    do
    {
      v8 = v20 == 0;
      if (!v20)
      {
        break;
      }

      v23 = v22 + 1;
      sub_227D4D268();
      sub_227D4D268();
      v24 = sub_227BAF194(v17, v15, v31 & 1, v27, v28, v29);
      v25 = *v21;
      (*v21)(v15, AssociatedTypeWitness);
      v25(v17, AssociatedTypeWitness);
      --v20;
      v22 = v23;
    }

    while ((v24 & 1) != 0);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_227BAF7D8(char a1, char a2, char a3)
{
  if (a1)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 0xFFFEFFFE | a3 & 1 | ((a2 & 1) << 16);
}

uint64_t sub_227BAF7F8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (v1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *v1;
  if (v1[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_227BAF470(v6 | v7, *(v1 + 1), *(v1 + 2));
}

uint64_t sub_227BAF834(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v4[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *v4;
  if (v4[2])
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  return sub_227BAF59C(v5, v7 | v8, a3, a4, a2[2], a2[3], a2[4]);
}

uint64_t sub_227BAF88C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227BAF8C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_227BAF91C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_227BAF988(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227BAFA58(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *v2;
  v8 = *(v2 + 8);
  v11[3] = *(a2 + 24);
  __swift_allocate_boxed_opaque_existential_1(v11);
  v9(a1);
  LOBYTE(a1) = sub_227BADC0C(v11, v4, v5, v6);
  sub_227BA3074(v11);
  return a1 & 1;
}

uint64_t sub_227BAFAF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227BAFB30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_227BAFB70(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227BAFBD4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  sub_227D4CE58();
  return v4;
}

uint64_t sub_227BAFC24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_227D4D4F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, a6) == 1)
  {
    (*(v10 + 8))(v14, v9);
  }

  else
  {
    (*(v15 + 32))(v18, v14, a6);
    v19 = sub_227D4D378();
    (*(v15 + 8))(v18, a6);
    a3 = v19 ^ 1;
  }

  return a3 & 1;
}

uint64_t sub_227BAFE3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227BAFE78(uint64_t *a1, int a2)
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

uint64_t sub_227BAFEB8(uint64_t result, int a2, int a3)
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

uint64_t sub_227BAFF10()
{
  v1 = *v0;
  v2 = v0[1];
  sub_227D4CE58();
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BAFF48(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  v6 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_227BB0054()
{
  (nullsub_1)();

  return nullsub_1(0, 0);
}

void *sub_227BB0084@<X0>(void *a1@<X8>)
{
  v22 = sub_227BB4FE4();
  v21 = sub_227BB2664();
  v20 = sub_227BB2664();
  v19 = sub_227BB4FE4();
  v18 = sub_227BB2664();
  v17 = sub_227BB2664();
  v16 = sub_227BB2664();
  v15 = sub_227BB2664();
  v14 = sub_227BB4FE4();
  v13 = sub_227BB2664();
  v1 = sub_227BB2664();
  v2 = sub_227BB2664();
  v3 = sub_227BB2664();
  v4 = sub_227BB2664();
  v5 = sub_227BB4FE4();
  v6 = sub_227BB2664();
  v7 = sub_227BB2664();
  v8 = sub_227BB4FE4();
  v9 = sub_227BB2664();
  v10 = sub_227BB2664();
  v11 = sub_227BB2664();
  sub_227BB4FF0(v22, v21, v20, v19, v18, v17, v16, v15, __src, v14, v13, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  return memcpy(a1, __src, 0xA8uLL);
}

void *sub_227BB01B8@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  return memcpy(a4 + 2, __src, 0xA8uLL);
}

uint64_t sub_227BB01CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635018093 && a2 == 0xE400000000000000;
  if (v3 || (sub_227D4DA78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_227D4DA78();

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

uint64_t sub_227BB029C(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 1635018093;
  }
}

uint64_t sub_227BB02D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BB01CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BB0300(uint64_t a1)
{
  v2 = sub_227BB0568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BB033C(uint64_t a1)
{
  v2 = sub_227BB0568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BB0378(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7C50, &qword_227D56560);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BB0568();
  sub_227D4DC08();
  v17[0] = *v3;
  v16[0] = 0;
  sub_227BB05BC();
  sub_227D4DA08();
  if (!v2)
  {
    memcpy(__dst, v3 + 1, 0xA8uLL);
    memcpy(v17, v3 + 1, 0xA8uLL);
    __dst[191] = 1;
    sub_227BAFF94(__dst, v16);
    sub_227BB0610();
    sub_227D4DA08();
    memcpy(v16, v17, sizeof(v16));
    sub_227BB0664(v16);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_227BB0568()
{
  result = qword_27D7F56F0[0];
  if (!qword_27D7F56F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F56F0);
  }

  return result;
}

unint64_t sub_227BB05BC()
{
  result = qword_27D7E7C58;
  if (!qword_27D7E7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C58);
  }

  return result;
}

unint64_t sub_227BB0610()
{
  result = qword_27D7E7C60;
  if (!qword_27D7E7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C60);
  }

  return result;
}

void *sub_227BB06B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7C68, qword_227D56568);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BB0568();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_227BB08E8();
  OUTLINED_FUNCTION_2_17();
  v10 = v16;
  v9 = v17;
  __dst[191] = 1;
  sub_227BB093C();
  OUTLINED_FUNCTION_2_17();
  v11 = OUTLINED_FUNCTION_0_26();
  v12(v11);
  memcpy(__dst, v19, 0xA8uLL);
  v15[0] = v16;
  v15[1] = v17;
  memcpy(&v15[2], v19, 0xA8uLL);
  sub_227BB0990(v15, &v16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v16 = v10;
  v17 = v9;
  memcpy(v18, __dst, sizeof(v18));
  sub_227BB09C8(&v16);
  return memcpy(a2, v15, 0xB8uLL);
}

unint64_t sub_227BB08E8()
{
  result = qword_27D7E7C70;
  if (!qword_27D7E7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C70);
  }

  return result;
}

unint64_t sub_227BB093C()
{
  result = qword_27D7E7C78;
  if (!qword_27D7E7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C78);
  }

  return result;
}

unint64_t sub_227BB0A24()
{
  result = qword_27D7E7C80;
  if (!qword_27D7E7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C80);
  }

  return result;
}

unint64_t sub_227BB0A78()
{
  result = qword_27D7E7C88;
  if (!qword_27D7E7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C88);
  }

  return result;
}

unint64_t sub_227BB0ACC(uint64_t a1)
{
  result = sub_227BB0AF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BB0AF4()
{
  result = qword_27D7E7C90;
  if (!qword_27D7E7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C90);
  }

  return result;
}

uint64_t sub_227BB0B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BB0BB0()
{
  result = qword_27D7E7C98;
  if (!qword_27D7E7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C98);
  }

  return result;
}

unint64_t sub_227BB0C04()
{
  result = qword_27D7E7CA0;
  if (!qword_27D7E7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CA0);
  }

  return result;
}

void *sub_227BB0C58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BB06B8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xB8uLL);
  }

  return result;
}

unint64_t sub_227BB0CBC(uint64_t a1)
{
  v2 = sub_227BB0A78();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BB0D00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_227BB0D40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameCenterConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BB0E9C()
{
  result = qword_27D7F5B00[0];
  if (!qword_27D7F5B00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F5B00);
  }

  return result;
}

unint64_t sub_227BB0EF4()
{
  result = qword_27D7F5C10;
  if (!qword_27D7F5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F5C10);
  }

  return result;
}

unint64_t sub_227BB0F4C()
{
  result = qword_27D7F5C18[0];
  if (!qword_27D7F5C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F5C18);
  }

  return result;
}

uint64_t sub_227BB0FA0(uint64_t a1)
{
  v2 = sub_227BB1294();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_227BB0FDC(uint64_t a1)
{
  v2 = sub_227BB1294();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t GameCenterConfigurationError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_227D4D668();
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x22AAA5DA0](v1, v2);
  OUTLINED_FUNCTION_0_27();
  sub_227D4D668();
  MEMORY[0x22AAA5DA0](0xD00000000000004CLL, 0x8000000227D75E90);
  MEMORY[0x22AAA5DA0](v3, v4);
  MEMORY[0x22AAA5DA0](41, 0xE100000000000000);
  sub_227D4CE58();
  MEMORY[0x22AAA5DA0](0, 0xE000000000000000);

  return 0;
}

uint64_t GameCenterConfigurationError.errorUserInfo.getter()
{
  v11 = *v0;
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7CA8, &qword_227D56860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  v4 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_227D4CFA8();
  *(inited + 40) = v5;
  v6 = GameCenterConfigurationError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;
  return sub_227D4CE28();
}

unint64_t sub_227BB1214()
{
  result = qword_27D7E7CB0;
  if (!qword_27D7E7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CB0);
  }

  return result;
}

unint64_t sub_227BB1294()
{
  result = qword_27D7E7CB8;
  if (!qword_27D7E7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CB8);
  }

  return result;
}

uint64_t sub_227BB12F8(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_227BB1324(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E6948707061 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E694870756F7267 && a2 == 0xEA00000000007374;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5_1();

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

uint64_t sub_227BB1418(char a1)
{
  if (!a1)
  {
    return 0x73746E6948707061;
  }

  if (a1 == 1)
  {
    return 0x6E694870756F7267;
  }

  return 0x6E6F6973726576;
}

uint64_t sub_227BB147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BB1324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BB14A4(uint64_t a1)
{
  v2 = sub_227BB16D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BB14E0(uint64_t a1)
{
  v2 = sub_227BB16D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BB151C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7CC0, &unk_227D569B0);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BB16D8();
  sub_227D4DC08();
  v19 = a2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227BAD30C(&qword_27D7E7C10);
  OUTLINED_FUNCTION_1_12();
  if (!v3)
  {
    v19 = a3;
    v18 = 1;
    OUTLINED_FUNCTION_1_12();
    LOBYTE(v19) = 2;
    sub_227BB172C();
    sub_227D4DA08();
  }

  return (*(v10 + 8))(v14, v7);
}

unint64_t sub_227BB16D8()
{
  result = qword_27D7F5E20[0];
  if (!qword_27D7F5E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F5E20);
  }

  return result;
}

unint64_t sub_227BB172C()
{
  result = qword_27D7E7CC8;
  if (!qword_27D7E7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CC8);
  }

  return result;
}

uint64_t sub_227BB1780(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7CD0, &qword_227D569C0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_227BB16D8();
  sub_227D4DBF8();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
    v14 = 0;
    sub_227BAD30C(&qword_27D7E7C20);
    OUTLINED_FUNCTION_0_28();
    v11 = v15;
    v14 = 1;
    OUTLINED_FUNCTION_0_28();
    LOBYTE(v15) = 2;
    sub_227BB1994();
    sub_227D4D938();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

unint64_t sub_227BB1994()
{
  result = qword_27D7E7CD8;
  if (!qword_27D7E7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CD8);
  }

  return result;
}

unint64_t sub_227BB1A14()
{
  result = qword_27D7E7CE0;
  if (!qword_27D7E7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CE0);
  }

  return result;
}

unint64_t sub_227BB1A68()
{
  result = qword_27D7E7CE8;
  if (!qword_27D7E7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CE8);
  }

  return result;
}

unint64_t sub_227BB1ABC(uint64_t a1)
{
  result = sub_227BB08E8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227BB1B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BB1B4C()
{
  result = qword_27D7E7CF0;
  if (!qword_27D7E7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CF0);
  }

  return result;
}

uint64_t sub_227BB1BA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227BB1780(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_227BB1BE8(uint64_t a1)
{
  v2 = sub_227BB1A68();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BB1C24(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_227BB1C78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameCenterConfigurationMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BB1DB8()
{
  result = qword_27D7F6230[0];
  if (!qword_27D7F6230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F6230);
  }

  return result;
}

unint64_t sub_227BB1E10()
{
  result = qword_27D7F6340;
  if (!qword_27D7F6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F6340);
  }

  return result;
}

unint64_t sub_227BB1E68()
{
  result = qword_27D7F6348[0];
  if (!qword_27D7F6348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F6348);
  }

  return result;
}

uint64_t sub_227BB1EBC(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_13();
  sub_227D4DBE8();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_1_13();
    v4 = sub_227D4DA98();
    v6 = v5;
    sub_227D4CE58();
    v7 = sub_227D4D868();

    if (v7)
    {
      v8 = v4 == 0x2D31312D34323032 && v6 == 0xEA00000000003531;
      if (v8 || (sub_227D4DA78() & 1) == 0)
      {
        v10 = sub_227D4D6B8();
        swift_allocError();
        v12 = v11;
        v13 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_227D4DBD8();
        sub_227D4D668();

        MEMORY[0x22AAA5DA0](v4, v6);

        sub_227D4D6A8();
        (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84168], v10);
      }

      else
      {
        sub_227BB1214();
        swift_allocError();
        *v9 = v4;
        v9[1] = v6;
        v9[2] = 0x2D31312D34323032;
        v9[3] = 0xEA00000000003531;
      }

      swift_willThrow();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL sub_227BB211C()
{
  v0 = sub_227D4D868();

  return v0 != 0;
}

unint64_t sub_227BB216C()
{
  result = qword_27D7E7CF8;
  if (!qword_27D7E7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7CF8);
  }

  return result;
}

uint64_t sub_227BB21C4()
{
  sub_227D4DB58();
  sub_227D4D048();
  return sub_227D4DB98();
}

uint64_t sub_227BB2240()
{
  sub_227D4DB58();
  sub_227D4D048();
  return sub_227D4DB98();
}

BOOL sub_227BB2294@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BB211C();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GameCenterConfigurationVersion(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_49_0();
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

_BYTE *storeEnumTagSinglePayload for GameCenterConfigurationVersion(_BYTE *result, int a2, int a3)
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

unint64_t sub_227BB2448()
{
  result = qword_27D7E7D00;
  if (!qword_27D7E7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D00);
  }

  return result;
}

uint64_t sub_227BB24A8(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_227BB24D4(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_227BB2500(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_227BB2534(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_227BB2568(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_227BB259C(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_227BB25D0(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_227BB2604(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_227BB2638(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_227BB2678(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_227BB26AC(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_227BB2700(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_227BB2754(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_227BB27A8(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_227BB27FC(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_227BB2830(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t sub_227BB2884(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t sub_227BB28D0()
{
  v0 = sub_227D4DAC8();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227BB2930(char a1)
{
  result = 0x6D65766569686361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 16:
      OUTLINED_FUNCTION_5_11();
      result = v3 - 7;
      break;
    case 3:
    case 5:
      result = 0x676E656C6C616863;
      break;
    case 4:
    case 6:
      OUTLINED_FUNCTION_5_11();
      result = v7 - 2;
      break;
    case 7:
      OUTLINED_FUNCTION_5_11();
      result = v4 + 9;
      break;
    case 8:
      result = 0x69746341656D6167;
      break;
    case 9:
    case 11:
    case 20:
      OUTLINED_FUNCTION_5_11();
      result = v5 | 1;
      break;
    case 10:
      OUTLINED_FUNCTION_5_11();
      result = v9 - 6;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      OUTLINED_FUNCTION_5_11();
      result = v6 | 7;
      break;
    case 14:
    case 17:
      result = 0x6F6272656461656CLL;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 18:
      OUTLINED_FUNCTION_5_11();
      result = v8 | 3;
      break;
    case 19:
      OUTLINED_FUNCTION_5_11();
      result = v10 - 4;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BB2BA0(char a1, char a2)
{
  v3 = sub_227BB2930(a1);
  v5 = v4;
  if (v3 == sub_227BB2930(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BB2C2C(char a1)
{
  sub_227D4DB58();
  sub_227BB2930(a1);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BB2C98(uint64_t a1, char a2)
{
  sub_227BB2930(a2);
  sub_227D4D048();
}

uint64_t sub_227BB2CF4(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227BB2930(a2);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BB2D54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BB28D0();
  *a2 = result;
  return result;
}

uint64_t sub_227BB2D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BB2930(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BB2DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227BB2924();
  *a1 = result;
  return result;
}

uint64_t sub_227BB2DEC(uint64_t a1)
{
  v2 = sub_227BB3BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BB2E28(uint64_t a1)
{
  v2 = sub_227BB3BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_227BB2E64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D08, &qword_227D56DA0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BB3BC4();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D18, &qword_227D56DA8);
  LOBYTE(v40[0]) = 0;
  sub_227BB3C18();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  v10 = v41[0];
  if (!v41[0])
  {

    v10 = MEMORY[0x277D84F90];
  }

  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D28, &qword_227D56DB0);
  LOBYTE(v40[0]) = 1;
  sub_227BB3C9C();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v24 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D40, &qword_227D56DB8);
    v24 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D48, &qword_227D56DC0);
  LOBYTE(v40[0]) = 2;
  sub_227BB3DAC();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v23 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D60, &qword_227D56DC8);
    v23 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D68, &qword_227D56DD0);
  LOBYTE(v40[0]) = 3;
  sub_227BB3EEC();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  v11 = v41[0];
  if (!v41[0])
  {

    v11 = MEMORY[0x277D84F90];
  }

  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D78, &qword_227D56DD8);
  LOBYTE(v40[0]) = 4;
  sub_227BB3F70();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v21 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D90, &qword_227D56DE0);
    v21 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D98, &qword_227D56DE8);
  LOBYTE(v40[0]) = 5;
  sub_227BB4080();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v20 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DB0, &qword_227D56DF0);
    v20 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DB8, &qword_227D56DF8);
  LOBYTE(v40[0]) = 6;
  sub_227BB41C0();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v19 = v41[0];
  }

  else
  {
    type metadata accessor for ChallengeImage();
    v19 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DC8, &qword_227D56E00);
  LOBYTE(v40[0]) = 7;
  sub_227BB427C();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v39 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DE0, &qword_227D56E08);
    v39 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DE8, &qword_227D56E10);
  LOBYTE(v40[0]) = 8;
  sub_227BB438C();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  v12 = v41[0];
  if (!v41[0])
  {

    v12 = MEMORY[0x277D84F90];
  }

  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DF8, &qword_227D56E18);
  LOBYTE(v40[0]) = 9;
  sub_227BB4410();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v37 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E10, &qword_227D56E20);
    v37 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E18, &qword_227D56E28);
  LOBYTE(v40[0]) = 10;
  sub_227BB4520();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v36 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E30, &qword_227D56E30);
    v36 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E38, &qword_227D56E38);
  LOBYTE(v40[0]) = 11;
  sub_227BB4660();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v35 = v41[0];
  }

  else
  {
    type metadata accessor for GameActivityImage();
    v35 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E48, &qword_227D56E40);
  LOBYTE(v40[0]) = 12;
  sub_227BB471C();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v34 = v41[0];
  }

  else
  {
    sub_227D49188();
    v34 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E58, &qword_227D56E48);
  LOBYTE(v40[0]) = 13;
  sub_227BB62D0(&qword_27D7E7E60, sub_227BB47D8, sub_227BB482C);
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v33 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E78, &unk_227D56E50);
    sub_227BB48D8();
    v33 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E88, &qword_227D56E60);
  LOBYTE(v40[0]) = 14;
  sub_227BB492C();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  v13 = v41[0];
  if (!v41[0])
  {

    v13 = MEMORY[0x277D84F90];
  }

  v32 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E98, &qword_227D56E68);
  LOBYTE(v40[0]) = 15;
  sub_227BB49B0();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v31 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7EB0, &qword_227D56E70);
    v31 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7EB8, &qword_227D56E78);
  LOBYTE(v40[0]) = 16;
  sub_227BB4AC0();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v30 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7ED0, &qword_227D56E80);
    v30 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7ED8, &qword_227D56E88);
  LOBYTE(v40[0]) = 17;
  sub_227BB4C00();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  v14 = v41[0];
  if (!v41[0])
  {

    v14 = MEMORY[0x277D84F90];
  }

  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7EE8, &qword_227D56E90);
  LOBYTE(v40[0]) = 18;
  sub_227BB4C84();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v28 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F00, &qword_227D56E98);
    v28 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F08, &qword_227D56EA0);
  LOBYTE(v40[0]) = 19;
  sub_227BB4D94();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v27 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F20, &qword_227D56EA8);
    v27 = sub_227D4CE28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F28, &qword_227D56EB0);
  LOBYTE(v40[0]) = 20;
  sub_227BB4ED4();
  OUTLINED_FUNCTION_0_29();
  sub_227D4D8D8();
  if (v41[0])
  {
    v17 = OUTLINED_FUNCTION_3_11();
    v18(v17);
    v26 = v41[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F40, &qword_227D56EB8);
    v26 = sub_227D4CE28();
    v15 = OUTLINED_FUNCTION_3_11();
    v16(v15);
  }

  v40[0] = v25;
  v40[1] = v24;
  v40[2] = v23;
  v40[3] = v22;
  v40[4] = v21;
  v40[5] = v20;
  v40[6] = v19;
  v40[7] = v39;
  v40[8] = v38;
  v40[9] = v37;
  v40[10] = v36;
  v40[11] = v35;
  v40[12] = v34;
  v40[13] = v33;
  v40[14] = v32;
  v40[15] = v31;
  v40[16] = v30;
  v40[17] = v29;
  v40[18] = v28;
  v40[19] = v27;
  v40[20] = v26;
  sub_227BAFF94(v40, v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v41[0] = v25;
  v41[1] = v24;
  v41[2] = v23;
  v41[3] = v22;
  v41[4] = v21;
  v41[5] = v20;
  v41[6] = v19;
  v41[7] = v39;
  v41[8] = v38;
  v41[9] = v37;
  v41[10] = v36;
  v41[11] = v35;
  v41[12] = v34;
  v41[13] = v33;
  v41[14] = v32;
  v41[15] = v31;
  v41[16] = v30;
  v41[17] = v29;
  v41[18] = v28;
  v41[19] = v27;
  v41[20] = v26;
  sub_227BB0664(v41);
  return memcpy(v42, v40, 0xA8uLL);
}

unint64_t sub_227BB3BC4()
{
  result = qword_27D7E7D10;
  if (!qword_27D7E7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D10);
  }

  return result;
}

unint64_t sub_227BB3C18()
{
  result = qword_27D7E7D20;
  if (!qword_27D7E7D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D18, &qword_227D56DA8);
    sub_227BA5134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D20);
  }

  return result;
}

unint64_t sub_227BB3C9C()
{
  result = qword_27D7E7D30;
  if (!qword_27D7E7D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D28, &qword_227D56DB0);
    sub_227BB3D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D30);
  }

  return result;
}

unint64_t sub_227BB3D28()
{
  result = qword_27D7E7D38;
  if (!qword_27D7E7D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D40, &qword_227D56DB8);
    sub_227B9D650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D38);
  }

  return result;
}

unint64_t sub_227BB3DAC()
{
  result = qword_27D7E7D50;
  if (!qword_27D7E7D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D48, &qword_227D56DC0);
    sub_227BB3E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D50);
  }

  return result;
}

unint64_t sub_227BB3E38()
{
  result = qword_27D7E7D58;
  if (!qword_27D7E7D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D60, &qword_227D56DC8);
    sub_227BB6A08(&qword_27D7E7578, type metadata accessor for AchievementImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D58);
  }

  return result;
}

unint64_t sub_227BB3EEC()
{
  result = qword_27D7E7D70;
  if (!qword_27D7E7D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D68, &qword_227D56DD0);
    sub_227BA6C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D70);
  }

  return result;
}

unint64_t sub_227BB3F70()
{
  result = qword_27D7E7D80;
  if (!qword_27D7E7D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D78, &qword_227D56DD8);
    sub_227BB3FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D80);
  }

  return result;
}

unint64_t sub_227BB3FFC()
{
  result = qword_27D7E7D88;
  if (!qword_27D7E7D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D90, &qword_227D56DE0);
    sub_227B9E6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7D88);
  }

  return result;
}

unint64_t sub_227BB4080()
{
  result = qword_27D7E7DA0;
  if (!qword_27D7E7DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D98, &qword_227D56DE8);
    sub_227BB410C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7DA0);
  }

  return result;
}

unint64_t sub_227BB410C()
{
  result = qword_27D7E7DA8;
  if (!qword_27D7E7DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DB0, &qword_227D56DF0);
    sub_227BB6A08(&qword_27D7E75D8, type metadata accessor for ChallengeImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7DA8);
  }

  return result;
}

unint64_t sub_227BB41C0()
{
  result = qword_27D7E7DC0;
  if (!qword_27D7E7DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DB8, &qword_227D56DF8);
    sub_227BB6A08(&qword_27D7E75D8, type metadata accessor for ChallengeImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7DC0);
  }

  return result;
}

unint64_t sub_227BB427C()
{
  result = qword_27D7E7DD0;
  if (!qword_27D7E7DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DC8, &qword_227D56E00);
    sub_227BB4308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7DD0);
  }

  return result;
}

unint64_t sub_227BB4308()
{
  result = qword_27D7E7DD8;
  if (!qword_27D7E7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DE0, &qword_227D56E08);
    sub_227BA7BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7DD8);
  }

  return result;
}

unint64_t sub_227BB438C()
{
  result = qword_27D7E7DF0;
  if (!qword_27D7E7DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DE8, &qword_227D56E10);
    sub_227BA91A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7DF0);
  }

  return result;
}

unint64_t sub_227BB4410()
{
  result = qword_27D7E7E00;
  if (!qword_27D7E7E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DF8, &qword_227D56E18);
    sub_227BB449C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E00);
  }

  return result;
}

unint64_t sub_227BB449C()
{
  result = qword_27D7E7E08;
  if (!qword_27D7E7E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E10, &qword_227D56E20);
    sub_227B9F7F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E08);
  }

  return result;
}

unint64_t sub_227BB4520()
{
  result = qword_27D7E7E20;
  if (!qword_27D7E7E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E18, &qword_227D56E28);
    sub_227BB45AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E20);
  }

  return result;
}

unint64_t sub_227BB45AC()
{
  result = qword_27D7E7E28;
  if (!qword_27D7E7E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E30, &qword_227D56E30);
    sub_227BB6A08(&qword_27D7E7638, type metadata accessor for GameActivityImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E28);
  }

  return result;
}

unint64_t sub_227BB4660()
{
  result = qword_27D7E7E40;
  if (!qword_27D7E7E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E38, &qword_227D56E38);
    sub_227BB6A08(&qword_27D7E7638, type metadata accessor for GameActivityImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E40);
  }

  return result;
}

unint64_t sub_227BB471C()
{
  result = qword_27D7E7E50;
  if (!qword_27D7E7E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E48, &qword_227D56E40);
    sub_227BB6A08(&qword_27D7E7540, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E50);
  }

  return result;
}

unint64_t sub_227BB47D8()
{
  result = qword_27D7E7E68;
  if (!qword_27D7E7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E68);
  }

  return result;
}

unint64_t sub_227BB482C()
{
  result = qword_27D7E7E70;
  if (!qword_27D7E7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E78, &unk_227D56E50);
    sub_227BAD30C(&qword_27D7E7C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E70);
  }

  return result;
}

unint64_t sub_227BB48D8()
{
  result = qword_27D7E7E80;
  if (!qword_27D7E7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E80);
  }

  return result;
}

unint64_t sub_227BB492C()
{
  result = qword_27D7E7E90;
  if (!qword_27D7E7E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E88, &qword_227D56E60);
    sub_227BAB3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7E90);
  }

  return result;
}

unint64_t sub_227BB49B0()
{
  result = qword_27D7E7EA0;
  if (!qword_27D7E7EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E98, &qword_227D56E68);
    sub_227BB4A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7EA0);
  }

  return result;
}

unint64_t sub_227BB4A3C()
{
  result = qword_27D7E7EA8;
  if (!qword_27D7E7EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7EB0, &qword_227D56E70);
    sub_227BA1004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7EA8);
  }

  return result;
}

unint64_t sub_227BB4AC0()
{
  result = qword_27D7E7EC0;
  if (!qword_27D7E7EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7EB8, &qword_227D56E78);
    sub_227BB4B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7EC0);
  }

  return result;
}

unint64_t sub_227BB4B4C()
{
  result = qword_27D7E7EC8;
  if (!qword_27D7E7EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7ED0, &qword_227D56E80);
    sub_227BB6A08(&qword_27D7E7698, type metadata accessor for LeaderboardImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7EC8);
  }

  return result;
}

unint64_t sub_227BB4C00()
{
  result = qword_27D7E7EE0;
  if (!qword_27D7E7EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7ED8, &qword_227D56E88);
    sub_227BAC878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7EE0);
  }

  return result;
}

unint64_t sub_227BB4C84()
{
  result = qword_27D7E7EF0;
  if (!qword_27D7E7EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7EE8, &qword_227D56E90);
    sub_227BB4D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7EF0);
  }

  return result;
}

unint64_t sub_227BB4D10()
{
  result = qword_27D7E7EF8;
  if (!qword_27D7E7EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F00, &qword_227D56E98);
    sub_227BA1E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7EF8);
  }

  return result;
}

unint64_t sub_227BB4D94()
{
  result = qword_27D7E7F10;
  if (!qword_27D7E7F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F08, &qword_227D56EA0);
    sub_227BB4E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F10);
  }

  return result;
}

unint64_t sub_227BB4E20()
{
  result = qword_27D7E7F18;
  if (!qword_27D7E7F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F20, &qword_227D56EA8);
    sub_227BB6A08(&qword_27D7E76F8, type metadata accessor for LeaderboardSetImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F18);
  }

  return result;
}

unint64_t sub_227BB4ED4()
{
  result = qword_27D7E7F30;
  if (!qword_27D7E7F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F28, &qword_227D56EB0);
    sub_227BB4F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F30);
  }

  return result;
}

unint64_t sub_227BB4F60()
{
  result = qword_27D7E7F38;
  if (!qword_27D7E7F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F40, &qword_227D56EB8);
    sub_227BAD474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F38);
  }

  return result;
}

void *sub_227BB4FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  __src[8] = a10;
  __src[9] = a11;
  __src[10] = a12;
  __src[11] = a13;
  __src[12] = a14;
  __src[13] = a15;
  __src[14] = a16;
  __src[15] = a17;
  __src[16] = a18;
  __src[17] = a19;
  __src[18] = a20;
  __src[19] = a21;
  __src[20] = a22;
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = a7;
  v26[7] = a8;
  v26[8] = a10;
  v26[9] = a11;
  v26[10] = a12;
  v26[11] = a13;
  v26[12] = a14;
  v26[13] = a15;
  v26[14] = a16;
  v26[15] = a17;
  v26[16] = a18;
  v26[17] = a19;
  v26[18] = a20;
  v26[19] = a21;
  v26[20] = a22;
  sub_227BAFF94(__src, v24);
  sub_227BB0664(v26);
  return memcpy(a9, __src, 0xA8uLL);
}

uint64_t sub_227BB50C0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F48, &qword_227D56EC0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BB3BC4();
  sub_227D4DC08();
  if (!*(*v4 + 16) || (v19 = *v4, v18 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D18, &qword_227D56DA8), sub_227BB57CC(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
  {
    if (!*(v4[1] + 16) || (v19 = v4[1], v18 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D28, &qword_227D56DB0), sub_227BB5850(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
    {
      if (!*(v4[2] + 16) || (v19 = v4[2], v18 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D48, &qword_227D56DC0), sub_227BB5960(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
      {
        if (!*(v4[3] + 16) || (v19 = v4[3], v18 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D68, &qword_227D56DD0), sub_227BB5AA0(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
        {
          if (!*(v4[4] + 16) || (v19 = v4[4], v18 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D78, &qword_227D56DD8), sub_227BB5B24(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
          {
            if (!*(v4[5] + 16) || (v19 = v4[5], v18 = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7D98, &qword_227D56DE8), sub_227BB5C34(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
            {
              if (!*(v4[6] + 16) || (v19 = v4[6], v18 = 6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DB8, &qword_227D56DF8), sub_227BB5D74(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
              {
                if (!*(v4[7] + 16) || (v19 = v4[7], v18 = 7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DC8, &qword_227D56E00), sub_227BB5E30(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
                {
                  if (!*(v4[8] + 16) || (v19 = v4[8], v18 = 8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DE8, &qword_227D56E10), sub_227BB5F40(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
                  {
                    if (!*(v4[9] + 16) || (v19 = v4[9], v18 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7DF8, &qword_227D56E18), sub_227BB5FC4(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
                    {
                      if (!*(v4[10] + 16) || (v19 = v4[10], v18 = 10, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E18, &qword_227D56E28), sub_227BB60D4(), OUTLINED_FUNCTION_1_14(), (v3 = v2) == 0))
                      {
                        v15 = v4[11];
                        v20 = v15;
                        if (*(v15 + 16))
                        {
                          v19 = v15;
                          v18 = 11;
                          sub_227D4CE58();
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E38, &qword_227D56E38);
                          sub_227BB6214();
                          v2 = v3;
                          sub_227D4DA08();
                          if (v3)
                          {
                            sub_227B2746C(&v20, &qword_27D7E7E38, &qword_227D56E38);
                            return (*(v9 + 8))(v13, v6);
                          }

                          if (*(v15 + 16))
                          {
                            v19 = v20;
                            v18 = 11;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E38, &qword_227D56E38);
                            sub_227D4DA08();
                          }
                        }

                        else
                        {
                          sub_227D4CE58();
                        }

                        sub_227B2746C(&v20, &qword_27D7E7E38, &qword_227D56E38);
                        if (!*(v4[13] + 16) || (v19 = v4[13], v18 = 13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E58, &qword_227D56E48), sub_227BB62D0(&qword_27D7E7FE8, sub_227BB6360, sub_227BB63B4), OUTLINED_FUNCTION_1_14(), !v2))
                        {
                          if (!*(v4[14] + 16) || (v19 = v4[14], v18 = 14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E88, &qword_227D56E60), sub_227BB6460(), OUTLINED_FUNCTION_1_14(), !v2))
                          {
                            if (!*(v4[15] + 16) || (v19 = v4[15], v18 = 15, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7E98, &qword_227D56E68), sub_227BB64E4(), OUTLINED_FUNCTION_1_14(), !v2))
                            {
                              if (!*(v4[16] + 16) || (v19 = v4[16], v18 = 16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7EB8, &qword_227D56E78), sub_227BB65F4(), OUTLINED_FUNCTION_1_14(), !v2))
                              {
                                if (!*(v4[17] + 16) || (v19 = v4[17], v18 = 17, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7ED8, &qword_227D56E88), sub_227BB6734(), OUTLINED_FUNCTION_1_14(), !v2))
                                {
                                  if (!*(v4[18] + 16) || (v19 = v4[18], v18 = 18, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7EE8, &qword_227D56E90), sub_227BB67B8(), OUTLINED_FUNCTION_1_14(), !v2))
                                  {
                                    if (!*(v4[19] + 16) || (v19 = v4[19], v18 = 19, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F08, &qword_227D56EA0), sub_227BB68C8(), OUTLINED_FUNCTION_1_14(), !v2))
                                    {
                                      if (*(v4[20] + 16))
                                      {
                                        v19 = v4[20];
                                        v18 = 20;
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7F28, &qword_227D56EB0);
                                        sub_227BB6A50();
                                        OUTLINED_FUNCTION_1_14();
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
              }
            }
          }
        }
      }
    }
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_227BB57CC()
{
  result = qword_27D7E7F50;
  if (!qword_27D7E7F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D18, &qword_227D56DA8);
    sub_227BA5244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F50);
  }

  return result;
}

unint64_t sub_227BB5850()
{
  result = qword_27D7E7F58;
  if (!qword_27D7E7F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D28, &qword_227D56DB0);
    sub_227BB58DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F58);
  }

  return result;
}

unint64_t sub_227BB58DC()
{
  result = qword_27D7E7F60;
  if (!qword_27D7E7F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D40, &qword_227D56DB8);
    sub_227B9D760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F60);
  }

  return result;
}

unint64_t sub_227BB5960()
{
  result = qword_27D7E7F68;
  if (!qword_27D7E7F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D48, &qword_227D56DC0);
    sub_227BB59EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F68);
  }

  return result;
}

unint64_t sub_227BB59EC()
{
  result = qword_27D7E7F70;
  if (!qword_27D7E7F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D60, &qword_227D56DC8);
    sub_227BB6A08(&qword_27D7E7588, type metadata accessor for AchievementImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F70);
  }

  return result;
}

unint64_t sub_227BB5AA0()
{
  result = qword_27D7E7F78;
  if (!qword_27D7E7F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D68, &qword_227D56DD0);
    sub_227BA6DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F78);
  }

  return result;
}

unint64_t sub_227BB5B24()
{
  result = qword_27D7E7F80;
  if (!qword_27D7E7F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D78, &qword_227D56DD8);
    sub_227BB5BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F80);
  }

  return result;
}

unint64_t sub_227BB5BB0()
{
  result = qword_27D7E7F88;
  if (!qword_27D7E7F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D90, &qword_227D56DE0);
    sub_227B9E7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F88);
  }

  return result;
}

unint64_t sub_227BB5C34()
{
  result = qword_27D7E7F90;
  if (!qword_27D7E7F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7D98, &qword_227D56DE8);
    sub_227BB5CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F90);
  }

  return result;
}

unint64_t sub_227BB5CC0()
{
  result = qword_27D7E7F98;
  if (!qword_27D7E7F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DB0, &qword_227D56DF0);
    sub_227BB6A08(&qword_27D7E75E8, type metadata accessor for ChallengeImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7F98);
  }

  return result;
}

unint64_t sub_227BB5D74()
{
  result = qword_27D7E7FA0;
  if (!qword_27D7E7FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DB8, &qword_227D56DF8);
    sub_227BB6A08(&qword_27D7E75E8, type metadata accessor for ChallengeImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FA0);
  }

  return result;
}

unint64_t sub_227BB5E30()
{
  result = qword_27D7E7FA8;
  if (!qword_27D7E7FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DC8, &qword_227D56E00);
    sub_227BB5EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FA8);
  }

  return result;
}

unint64_t sub_227BB5EBC()
{
  result = qword_27D7E7FB0;
  if (!qword_27D7E7FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DE0, &qword_227D56E08);
    sub_227BA7CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FB0);
  }

  return result;
}

unint64_t sub_227BB5F40()
{
  result = qword_27D7E7FB8;
  if (!qword_27D7E7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DE8, &qword_227D56E10);
    sub_227BA92B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FB8);
  }

  return result;
}

unint64_t sub_227BB5FC4()
{
  result = qword_27D7E7FC0;
  if (!qword_27D7E7FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7DF8, &qword_227D56E18);
    sub_227BB6050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FC0);
  }

  return result;
}

unint64_t sub_227BB6050()
{
  result = qword_27D7E7FC8;
  if (!qword_27D7E7FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E10, &qword_227D56E20);
    sub_227B9F908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FC8);
  }

  return result;
}

unint64_t sub_227BB60D4()
{
  result = qword_27D7E7FD0;
  if (!qword_27D7E7FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E18, &qword_227D56E28);
    sub_227BB6160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FD0);
  }

  return result;
}

unint64_t sub_227BB6160()
{
  result = qword_27D7E7FD8;
  if (!qword_27D7E7FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E30, &qword_227D56E30);
    sub_227BB6A08(&qword_27D7E7648, type metadata accessor for GameActivityImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FD8);
  }

  return result;
}

unint64_t sub_227BB6214()
{
  result = qword_27D7E7FE0;
  if (!qword_27D7E7FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E38, &qword_227D56E38);
    sub_227BB6A08(&qword_27D7E7648, type metadata accessor for GameActivityImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FE0);
  }

  return result;
}

uint64_t sub_227BB62D0(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E58, &qword_227D56E48);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BB6360()
{
  result = qword_27D7E7FF0;
  if (!qword_27D7E7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FF0);
  }

  return result;
}

unint64_t sub_227BB63B4()
{
  result = qword_27D7E7FF8;
  if (!qword_27D7E7FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E78, &unk_227D56E50);
    sub_227BAD30C(&qword_27D7E7C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7FF8);
  }

  return result;
}

unint64_t sub_227BB6460()
{
  result = qword_27D7E8000;
  if (!qword_27D7E8000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E88, &qword_227D56E60);
    sub_227BAB4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8000);
  }

  return result;
}

unint64_t sub_227BB64E4()
{
  result = qword_27D7E8008;
  if (!qword_27D7E8008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7E98, &qword_227D56E68);
    sub_227BB6570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8008);
  }

  return result;
}

unint64_t sub_227BB6570()
{
  result = qword_27D7E8010;
  if (!qword_27D7E8010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7EB0, &qword_227D56E70);
    sub_227BA1114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8010);
  }

  return result;
}

unint64_t sub_227BB65F4()
{
  result = qword_27D7E8018;
  if (!qword_27D7E8018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7EB8, &qword_227D56E78);
    sub_227BB6680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8018);
  }

  return result;
}

unint64_t sub_227BB6680()
{
  result = qword_27D7E8020;
  if (!qword_27D7E8020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7ED0, &qword_227D56E80);
    sub_227BB6A08(&qword_27D7E76A8, type metadata accessor for LeaderboardImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8020);
  }

  return result;
}

unint64_t sub_227BB6734()
{
  result = qword_27D7E8028;
  if (!qword_27D7E8028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7ED8, &qword_227D56E88);
    sub_227BAC988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8028);
  }

  return result;
}

unint64_t sub_227BB67B8()
{
  result = qword_27D7E8030;
  if (!qword_27D7E8030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7EE8, &qword_227D56E90);
    sub_227BB6844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8030);
  }

  return result;
}

unint64_t sub_227BB6844()
{
  result = qword_27D7E8038;
  if (!qword_27D7E8038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F00, &qword_227D56E98);
    sub_227BA1FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8038);
  }

  return result;
}

unint64_t sub_227BB68C8()
{
  result = qword_27D7E8040;
  if (!qword_27D7E8040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F08, &qword_227D56EA0);
    sub_227BB6954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8040);
  }

  return result;
}

unint64_t sub_227BB6954()
{
  result = qword_27D7E8048;
  if (!qword_27D7E8048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F20, &qword_227D56EA8);
    sub_227BB6A08(&qword_27D7E7708, type metadata accessor for LeaderboardSetImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8048);
  }

  return result;
}

uint64_t sub_227BB6A08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227BB6A50()
{
  result = qword_27D7E8050;
  if (!qword_27D7E8050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F28, &qword_227D56EB0);
    sub_227BB6ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8050);
  }

  return result;
}

unint64_t sub_227BB6ADC()
{
  result = qword_27D7E8058;
  if (!qword_27D7E8058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7F40, &qword_227D56EB8);
    sub_227BAD584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8058);
  }

  return result;
}

void *sub_227BB6B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BB2E64(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xA8uLL);
  }

  return result;
}

unint64_t sub_227BB6BC4(uint64_t a1)
{
  v2 = sub_227BB7C98();

  return sub_227BA2760(a1, v2);
}

unint64_t sub_227BB6C00(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v60 = *(v2 + 160);
  v3 = v60;
  v4 = sub_227D4CE58();
  sub_227BB7100(v4, v47);
  v5 = *(v3 + 36);
  v48[0] = 1 << *(v3 + 32);
  v48[1] = v5;
  v49 = 0;
  v50 = 0;
  v51 = 1;
  v6 = sub_227BB727C(v47, v48, v3);
  sub_227B2746C(v48, &qword_27D7E8060, &qword_227D56EC8);
  sub_227B2746C(v47, &qword_27D7E8060, &qword_227D56EC8);
  if (v6)
  {
    v46 = MEMORY[0x277D84F90];
    sub_227B26EA4(0, v6 & ~(v6 >> 63), 0);
    result = sub_227BB7100(v3, &v52);
    if (v6 < 0)
    {
      goto LABEL_31;
    }

    v8 = v3;
    v44 = v46;
    v9 = 0;
    v10 = v55;
    v11 = v54;
    v12 = v53;
    v13 = v52;
    v38 = v6;
    while (1)
    {
      v61 = v13;
      v62 = v12 & 1;
      v63 = v11;
      v64 = v10 & 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v43 = v9 + 1;
      v14 = v13;
      v15 = v8;
      result = sub_227BB7A74(v13, SDWORD2(v13), v12 & 1, v8);
      if (v10)
      {
        goto LABEL_32;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v11 >= *(result + 16))
      {
        goto LABEL_30;
      }

      v42 = v12;
      v16 = (result + 24 * v11);
      v17 = v16[5];
      *&v41 = v16[4];
      v18 = v16[6];
      sub_227D4CE58();
      sub_227D4CE58();

      v45[0] = v39;
      v45[1] = v40;
      MEMORY[0x28223BE20](v19);
      v37[2] = v45;
      v20 = sub_227BB7050(sub_227BB7AF0, v37, v18);

      if (v20)
      {
        v21 = v44;
        v22 = v41;
      }

      else
      {

        v22 = 0;
        v17 = 0;
        v21 = v44;
      }

      v46 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        *&v41 = v22;
        sub_227B26EA4((v23 > 1), v24 + 1, 1);
        v22 = v41;
        v21 = v46;
      }

      *(v21 + 16) = v24 + 1;
      v44 = v21;
      v25 = v21 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v17;
      v8 = v15;
      sub_227BB7620(&v61, v15, &v56);
      v41 = v56;
      v12 = v57;
      v11 = v58;
      v10 = v59;
      result = sub_227B3E218(v14, *(&v14 + 1), v42 & 1);
      v13 = v41;
      ++v9;
      if (v43 == v38)
      {
        sub_227B2746C(&v60, &qword_27D7E7F28, &qword_227D56EB0);
        result = sub_227B2746C(&v56, &qword_27D7E8060, &qword_227D56EC8);
        v26 = v44;
        goto LABEL_16;
      }
    }
  }

  else
  {
    result = sub_227B2746C(&v60, &qword_27D7E7F28, &qword_227D56EB0);
    v26 = MEMORY[0x277D84F90];
LABEL_16:
    v27 = 0;
    v28 = *(v26 + 16);
    v29 = MEMORY[0x277D84F90];
LABEL_17:
    v30 = 16 * v27 + 40;
    while (1)
    {
      if (v28 == v27)
      {

        return v29;
      }

      if (v27 >= *(v26 + 16))
      {
        break;
      }

      ++v27;
      v31 = v30 + 16;
      v32 = *(v26 + v30);
      v30 += 16;
      if (v32)
      {
        v33 = *(v26 + v31 - 24);
        sub_227D4CE58();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_227B25F88(0, *(v29 + 16) + 1, 1, v29);
          v29 = result;
        }

        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_227B25F88((v34 > 1), v35 + 1, 1, v29);
          v29 = result;
        }

        *(v29 + 16) = v35 + 1;
        v36 = v29 + 16 * v35;
        *(v36 + 32) = v33;
        *(v36 + 40) = v32;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227BB700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_227D4DA78() & 1;
  }
}

BOOL sub_227BB7050(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_227D4CE58();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_227BB7100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1 << *(a1 + 32);
  v5 = *(a1 + 36);
  result = sub_227BB78B0(a1);
  if (v8)
  {
    __break(1u);
LABEL_18:
    v7 = *(a1 + 36);
LABEL_20:
    *a2 = v2;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = result == v4;
  }

  else
  {
    while (v5 == v7)
    {
      v2 = 1 << *(a1 + 32);
      if (result == v4)
      {
        goto LABEL_18;
      }

      if ((result & 0x8000000000000000) != 0 || result >= v2)
      {
        goto LABEL_22;
      }

      v9 = result >> 6;
      v10 = *(a1 + 64 + 8 * (result >> 6));
      if (((v10 >> result) & 1) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      if (*(*(*(a1 + 56) + 8 * result) + 16))
      {
        v2 = result;
        goto LABEL_20;
      }

      v11 = v10 & (-2 << (result & 0x3F));
      if (v11)
      {
        v2 = __clz(__rbit64(v11)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a1 + 72 + 8 * v9);
        while (v13 < (v2 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            sub_227B3E218(result, v7, 0);
            v2 = __clz(__rbit64(v15)) + v12;
            goto LABEL_16;
          }
        }

        sub_227B3E218(result, v7, 0);
      }

LABEL_16:
      v7 = *(a1 + 36);
      result = v2;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_227BB727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_227BB77E0(a2, a1);
  v7 = result;
  if (result)
  {
    v8 = 1 << *(a3 + 32);
    v9 = *(a3 + 36);
    v10 = sub_227BB78B0(a3);
    v12 = v11;
    v14 = v13;
    sub_227BB78F0(v8, v9, 0, v10, v11, v13 & 1, a3);
    sub_227B3E218(v10, v12, v14 & 1);
    result = sub_227B3E218(v8, v9, 0);
  }

  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_51;
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15 != v16)
  {
    goto LABEL_46;
  }

  v17 = *a1;
  v18 = *a2;
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  if (v17 == v18)
  {
    if ((v20 | v22))
    {
      return 0;
    }

    v28 = a3;
    a3 = v19;
    sub_227BB7A74(v17, v15, 0, v28);

    v23 = v21 - a3;
    if (!__OFSUB__(v21, a3))
    {
      return v23;
    }

    __break(1u);
  }

  else
  {
    v51 = v20;
    v50 = v19;
    if (v7)
    {
      result = sub_227BB7A74(v18, v16, 0, a3);
      if (v22)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v24 = *(result + 16);

      v25 = __OFSUB__(v21, v24);
      v23 = v21 - v24;
      if (v25)
      {
        goto LABEL_48;
      }

      v26 = -1;
      v27 = v17;
      v49 = v15;
      goto LABEL_19;
    }
  }

  result = sub_227BB7A74(v17, v15, 0, a3);
  if ((v51 & 1) == 0)
  {
    v29 = *(result + 16);

    v25 = __OFSUB__(v29, v50);
    v23 = v29 - v50;
    if (v25)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v26 = 1;
    v49 = v16;
    v50 = v21;
    v51 = v22;
    v27 = v18;
    v18 = v17;
    v16 = v15;
LABEL_19:
    v30 = sub_227BB79F4(v18, v16, 0, a3);
    v32 = v31;
    v34 = v33;
    result = sub_227B3E218(v18, v16, 0);
    if (v34)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v32 != v49)
    {
      goto LABEL_47;
    }

    if (v30 >= v27)
    {
LABEL_38:
      if (v51)
      {
        return v23;
      }

      sub_227BB7A74(v27, v49, 0, a3);

      v25 = __OFADD__(v23, v50 * v26);
      v23 += v50 * v26;
      if (!v25)
      {
        return v23;
      }

      goto LABEL_50;
    }

    v35 = a3 + 64;
    v36 = v32;
    while ((v30 & 0x8000000000000000) == 0)
    {
      v37 = 1 << *(a3 + 32);
      if (v30 >= v37)
      {
        break;
      }

      v38 = v30 >> 6;
      v39 = *(v35 + 8 * (v30 >> 6));
      if (((v39 >> v30) & 1) == 0)
      {
        goto LABEL_42;
      }

      if (*(a3 + 36) != v36)
      {
        goto LABEL_43;
      }

      v40 = *(*(*(a3 + 56) + 8 * v30) + 16) * v26;
      v25 = __OFADD__(v23, v40);
      v23 += v40;
      if (v25)
      {
        goto LABEL_44;
      }

      v41 = v39 & (-2 << (v30 & 0x3F));
      if (v41)
      {
        v30 = __clz(__rbit64(v41)) | v30 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v27;
        v43 = v26;
        v44 = v38 << 6;
        v45 = v38 + 1;
        v46 = (a3 + 72 + 8 * v38);
        while (v45 < (v37 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            result = sub_227B3E218(v30, v36, 0);
            v35 = a3 + 64;
            v30 = __clz(__rbit64(v47)) + v44;
            goto LABEL_35;
          }
        }

        result = sub_227B3E218(v30, v36, 0);
        v35 = a3 + 64;
        v30 = v37;
LABEL_35:
        v26 = v43;
        v27 = v42;
      }

      if (*(a3 + 36) != v32)
      {
        goto LABEL_45;
      }

      v36 = v32;
      if (v30 >= v27)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_227BB7620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  result = sub_227BB7A74(*a1, v6, v7, a2);
  if ((v9 & 1) == 0)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = *(result + 16);

      if (v11 != v12)
      {
        result = sub_227BB7FF4(v5, v6, v7);
        v13 = 0;
LABEL_5:
        *a3 = v5;
        *(a3 + 8) = v6;
        *(a3 + 16) = v7;
        *(a3 + 24) = v11;
        *(a3 + 32) = v13;
        return result;
      }
    }

    result = sub_227BB79F4(v5, v6, v7, a2);
    v5 = result;
    v15 = v14;
    if (v16)
    {
LABEL_12:
      __break(1u);
LABEL_13:
      LOBYTE(v7) = 0;
      v11 = 0;
      v13 = 1;
      goto LABEL_5;
    }

    while (1)
    {
      v6 = *(a2 + 36);
      if (v6 != v15)
      {
        break;
      }

      if (v5 == 1 << *(a2 + 32))
      {
        goto LABEL_13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8098, &qword_227D571E8);
      sub_227BB8000();
      v17 = sub_227BB7850(v22, v5, v15, 0, a2);
      v19 = *v18;
      sub_227D4CE58();
      (v17)(v22, 0);
      v6 = *(v19 + 16);

      if (v6)
      {
        LOBYTE(v7) = 0;
        v11 = 0;
        v13 = 0;
        v6 = v15;
        goto LABEL_5;
      }

      result = sub_227BB79F4(v5, v15, 0, a2);
      v5 = result;
      v15 = v20;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_227BB77E0(_BOOL8 result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_15;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *result < *a2;
  if (*result == *a2)
  {
    v3 = *(a2 + 32);
    if (*(result + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (*(a2 + 32))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    return *(result + 24) < *(a2 + 24);
  }

  return v2;
}

uint64_t sub_227BB78B0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_227D4D5C8();
  v4 = *(a1 + 36);
  return result;
}

int64_t sub_227BB78F0(int64_t result, int a2, char a3, int64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_28;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a5 == a2)
  {
    if (result == a4)
    {
      return 0;
    }

    if (*(a7 + 36) != a5)
    {
      goto LABEL_27;
    }

    result = 0;
    v8 = 1 << *(a7 + 32);
    while (!__OFADD__(result++, 1))
    {
      if ((v7 & 0x8000000000000000) != 0 || v7 >= v8)
      {
        goto LABEL_23;
      }

      v10 = v7 >> 6;
      v11 = *(a7 + 64 + 8 * (v7 >> 6));
      if (((v11 >> v7) & 1) == 0)
      {
        goto LABEL_24;
      }

      v12 = v11 & (-2 << (v7 & 0x3F));
      if (v12)
      {
        v7 = __clz(__rbit64(v12)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (a7 + 72 + 8 * v10);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            v7 = __clz(__rbit64(v16)) + v13;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_227BB79F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_227D4D5E8();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_227BB7A74(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
    return sub_227D4CE58();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_227BB7B14()
{
  result = qword_27D7E8068;
  if (!qword_27D7E8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8068);
  }

  return result;
}

unint64_t sub_227BB7B6C()
{
  result = qword_27D7E8070;
  if (!qword_27D7E8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8070);
  }

  return result;
}

unint64_t sub_227BB7BC4()
{
  result = qword_27D7E8078;
  if (!qword_27D7E8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8078);
  }

  return result;
}

unint64_t sub_227BB7C44()
{
  result = qword_27D7E8080;
  if (!qword_27D7E8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8080);
  }

  return result;
}

unint64_t sub_227BB7C98()
{
  result = qword_27D7E8088;
  if (!qword_27D7E8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8088);
  }

  return result;
}

unint64_t sub_227BB7CEC(uint64_t a1)
{
  result = sub_227BB093C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227BB7D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BB7D7C()
{
  result = qword_27D7E8090;
  if (!qword_27D7E8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8090);
  }

  return result;
}

uint64_t sub_227BB7DD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_227BB7E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameCenterResources.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameCenterResources.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227BB7FF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_227D4CE58();
  }

  return result;
}

unint64_t sub_227BB8000()
{
  result = qword_27D7E80A0;
  if (!qword_27D7E80A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8098, &qword_227D571E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E80A0);
  }

  return result;
}

void sub_227BB8068(char a1)
{
  switch(a1)
  {
    case 1:
    case 8:
      OUTLINED_FUNCTION_21_2();
      break;
    case 6:
      OUTLINED_FUNCTION_8_5();
      break;
    default:
      return;
  }
}

uint64_t sub_227BB81D4()
{
  v0 = sub_227D4D868();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227BB822C(char a1, char a2)
{
  sub_227BB8068(a1);
  v4 = v3;
  v6 = v5;
  sub_227BB8068(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_227D4DA78();
  }

  return v10 & 1;
}

uint64_t sub_227BB82B0(char a1, char a2)
{
  v3 = sub_227BB88F0(a1);
  v5 = v4;
  if (v3 == sub_227BB88F0(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BB8334(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006567616D4965;
  v3 = 0x676E656C6C616843;
  v4 = a1;
  v5 = 0x676E656C6C616843;
  v6 = 0xEE006567616D4965;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0x8000000227D76300;
      v5 = 0xD000000000000011;
      break;
    case 3:
      v7 = "GameActivityImage";
      goto LABEL_6;
    case 4:
      v6 = 0x8000000227D76340;
      v5 = 0xD000000000000013;
      break;
    default:
      v7 = "LeaderboardSetLocalization";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000010;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x8000000227D76300;
      v3 = 0xD000000000000011;
      break;
    case 3:
      v8 = "GameActivityImage";
      goto LABEL_12;
    case 4:
      v2 = 0x8000000227D76340;
      v3 = 0xD000000000000013;
      break;
    default:
      v8 = "LeaderboardSetLocalization";
LABEL_12:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000010;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_227D4DA78();
  }

  return v10 & 1;
}

uint64_t sub_227BB84CC(char a1)
{
  sub_227D4DB58();
  sub_227BB88F0(a1);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BB8530(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_24_2();
  a2(a1);
  OUTLINED_FUNCTION_20_3();

  return sub_227D4DB98();
}

uint64_t sub_227BB8588()
{
  sub_227D4D048();
}

uint64_t sub_227BB8674(uint64_t a1, char a2)
{
  sub_227BB88F0(a2);
  sub_227D4D048();
}

uint64_t sub_227BB86C8(uint64_t a1, char a2)
{
  sub_227BB8068(a2);
  sub_227D4D048();
}

uint64_t sub_227BB874C(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227BB88F0(a2);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BB87AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_227D4DB58();
  a3(a2);
  OUTLINED_FUNCTION_20_3();

  return sub_227D4DB98();
}

uint64_t sub_227BB8800(void *a1)
{
  OUTLINED_FUNCTION_16_6(a1);
  result = sub_227BB81D4();
  *v1 = result;
  return result;
}

void sub_227BB8828(void *a1@<X8>)
{
  sub_227BB8068(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_227BB8870()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BBAF88();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BB88B8()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BBAF88();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

unint64_t sub_227BB88F0(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BB897C()
{
  v0 = sub_227D4D868();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227BB89EC(void *a1)
{
  OUTLINED_FUNCTION_16_6(a1);
  result = sub_227BB897C();
  *v1 = result;
  return result;
}

unint64_t sub_227BB8A14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_227BB88F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BB8A48()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BBAF34();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BB8A90()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BBAF34();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

void sub_227BB8ACC(char a1)
{
  switch(a1)
  {
    case 1:
    case 4:
      return;
    case 2:
      OUTLINED_FUNCTION_8_5();
      break;
    default:
      OUTLINED_FUNCTION_21_2();
      break;
  }
}

uint64_t sub_227BB8B68()
{
  v0 = sub_227D4D868();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227BB8C28(void *a1)
{
  OUTLINED_FUNCTION_16_6(a1);
  result = sub_227BB8B68();
  *v1 = result;
  return result;
}

void sub_227BB8C50(void *a1@<X8>)
{
  sub_227BB8ACC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_227BB8C98()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BBAEE0();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BB8CE0()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BBAEE0();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227BB8D18(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        v3 = sub_227BB88F0(a1 & 0x3F);
        v5 = v4;
        v6 = sub_227BB88F0(a2 & 0x3F);
        goto LABEL_7;
      }
    }

    else if ((a2 & 0xC0) == 0x80)
    {
      v11 = 0xEE006567616D4965;
      v12 = 0x676E656C6C616843;
      v13 = a1 & 0x3F;
      v14 = 0x676E656C6C616843;
      v15 = 0xEE006567616D4965;
      switch(v13)
      {
        case 1:
          break;
        case 2:
          v15 = 0x8000000227D76300;
          v14 = 0xD000000000000011;
          break;
        case 3:
          v16 = "GameActivityImage";
          goto LABEL_19;
        case 4:
          v15 = 0x8000000227D76340;
          v14 = 0xD000000000000013;
          break;
        default:
          v16 = "LeaderboardSetLocalization";
LABEL_19:
          v15 = v16 | 0x8000000000000000;
          v14 = 0xD000000000000010;
          break;
      }

      switch(a2 & 0x3F)
      {
        case 1:
          break;
        case 2:
          v11 = 0x8000000227D76300;
          v12 = 0xD000000000000011;
          break;
        case 3:
          v18 = "GameActivityImage";
          goto LABEL_25;
        case 4:
          v11 = 0x8000000227D76340;
          v12 = 0xD000000000000013;
          break;
        default:
          v18 = "LeaderboardSetLocalization";
LABEL_25:
          v11 = v18 | 0x8000000000000000;
          v12 = 0xD000000000000010;
          break;
      }

      if (v14 != v12 || v15 != v11)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    sub_227BB8068(a1);
    v3 = v8;
    v5 = v9;
    sub_227BB8068(a2);
LABEL_7:
    if (v3 != v6 || v5 != v7)
    {
LABEL_30:
      v17 = sub_227D4DA78();
LABEL_32:

      return v17 & 1;
    }

LABEL_31:
    v17 = 1;
    goto LABEL_32;
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_227BB8F10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6576654C706F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5_1();

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

uint64_t sub_227BB8FFC(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x22AAA68B0](a1);
  return sub_227D4DB98();
}

uint64_t sub_227BB903C(char a1)
{
  if (!a1)
  {
    return 0x6C6576654C706F74;
  }

  if (a1 == 1)
  {
    return 0x617A696C61636F6CLL;
  }

  return 0x6567616D69;
}

uint64_t sub_227BB90A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BB8F10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BB90D0()
{
  sub_227BB97A0();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BB9108()
{
  sub_227BB97A0();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227BB9168(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227D4DA78();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227BB91D8()
{
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x22AAA68B0](0);
  return sub_227D4DB98();
}

uint64_t sub_227BB9238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BB9168(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_227BB9270()
{
  sub_227BB97F4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BB92A8()
{
  sub_227BB97F4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227BB92E0()
{
  sub_227BB989C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BB9318()
{
  sub_227BB989C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227BB9350()
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](0);
  return sub_227D4DB98();
}

uint64_t sub_227BB9390()
{
  sub_227BB9944();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BB93C8()
{
  sub_227BB9944();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227BB9400(void *a1, int a2)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80A8, &qword_227D57200);
  v4 = OUTLINED_FUNCTION_9(v3);
  v41 = v5;
  v42 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80B0, &qword_227D57208);
  v11 = OUTLINED_FUNCTION_9(v10);
  v38 = v12;
  v39 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80B8, &qword_227D57210);
  OUTLINED_FUNCTION_9(v18);
  v37 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80C0, &qword_227D57218);
  OUTLINED_FUNCTION_9(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v37 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BB97A0();
  v32 = v43;
  sub_227D4DC08();
  if (!(v32 >> 6))
  {
    v45 = 0;
    sub_227BB9944();
    OUTLINED_FUNCTION_19_4();
    v44 = v32;
    sub_227BB6360();
    sub_227D4DA08();
LABEL_6:
    v34 = OUTLINED_FUNCTION_17_1();
    v35(v34, v18);
    return (*(v25 + 8))(v30, v23);
  }

  if (v32 >> 6 != 1)
  {
    v49 = 2;
    sub_227BB97F4();
    OUTLINED_FUNCTION_19_4();
    v48 = v32 & 0x3F;
    sub_227BB9848();
    v18 = v42;
    sub_227D4DA08();
    goto LABEL_6;
  }

  v47 = 1;
  sub_227BB989C();
  OUTLINED_FUNCTION_19_4();
  v46 = v32 & 0x3F;
  sub_227BB98F0();
  v33 = v39;
  sub_227D4DA08();
  (*(v38 + 8))(v17, v33);
  return (*(v25 + 8))(v30, v23);
}

unint64_t sub_227BB97A0()
{
  result = qword_27D7F6CE0;
  if (!qword_27D7F6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F6CE0);
  }

  return result;
}

unint64_t sub_227BB97F4()
{
  result = qword_27D7F6CE8;
  if (!qword_27D7F6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F6CE8);
  }

  return result;
}

unint64_t sub_227BB9848()
{
  result = qword_27D7E80C8;
  if (!qword_27D7E80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E80C8);
  }

  return result;
}

unint64_t sub_227BB989C()
{
  result = qword_27D7F6CF0;
  if (!qword_27D7F6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F6CF0);
  }

  return result;
}

unint64_t sub_227BB98F0()
{
  result = qword_27D7E80D0;
  if (!qword_27D7E80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E80D0);
  }

  return result;
}

unint64_t sub_227BB9944()
{
  result = qword_27D7F6CF8[0];
  if (!qword_27D7F6CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F6CF8);
  }

  return result;
}

uint64_t sub_227BB9998(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      MEMORY[0x22AAA68B0](1);
      sub_227BB88F0(a2 & 0x3F);
    }

    else
    {
      MEMORY[0x22AAA68B0](2);
      sub_227BB8ACC(a2 & 0x3F);
    }
  }

  else
  {
    MEMORY[0x22AAA68B0](0);
    sub_227BB8068(a2);
  }

  sub_227D4D048();
}

uint64_t sub_227BB9A30(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_24_2();
  sub_227BB9998(v3, a1);
  return sub_227D4DB98();
}

uint64_t sub_227BB9A70(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80D8, &qword_227D57220);
  v3 = OUTLINED_FUNCTION_9(v2);
  v79 = v4;
  v80 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v82 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80E0, &qword_227D57228);
  v77 = OUTLINED_FUNCTION_9(v9);
  v78 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80E8, &qword_227D57230);
  OUTLINED_FUNCTION_9(v16);
  v81 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80F0, &qword_227D57238);
  OUTLINED_FUNCTION_9(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v83 = a1;
  v33 = __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_227BB97A0();
  v34 = v84;
  sub_227D4DBF8();
  if (v34)
  {
    goto LABEL_11;
  }

  v74 = v22;
  v75 = v15;
  v76 = 0;
  v84 = v25;
  v35 = v30;
  v36 = sub_227D4D948();
  result = sub_227BBA228(v36, 0);
  if (v39 == v40 >> 1)
  {
    goto LABEL_10;
  }

  if (v39 < (v40 >> 1))
  {
    v41 = *(v38 + v39);
    sub_227BBA270(v39 + 1, v40 >> 1, result, v38, v39, v40);
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    v46 = v81;
    if (v43 == v45 >> 1)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v88 = 1;
          sub_227BB989C();
          v47 = v76;
          v33 = v35;
          sub_227D4D888();
          if (v47)
          {
            v48 = OUTLINED_FUNCTION_3_12();
            v49(v48);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_227BBA340();
            v64 = v77;
            sub_227D4D938();
            swift_unknownObjectRelease();
            v67 = OUTLINED_FUNCTION_17_1();
            v68(v67, v64);
            v69 = OUTLINED_FUNCTION_3_12();
            v70(v69);
            v33 = v87 | 0x40u;
          }

          v50 = v83;
        }

        else
        {
          v90 = 2;
          sub_227BB97F4();
          v33 = v35;
          v61 = v76;
          sub_227D4D888();
          v50 = v83;
          if (v61)
          {
            v62 = OUTLINED_FUNCTION_3_12();
            v63(v62);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_227BBA2EC();
            sub_227D4D938();
            v66 = v84;
            swift_unknownObjectRelease();
            v71 = OUTLINED_FUNCTION_23_2();
            v72(v71);
            (*(v66 + 8))(v35, v23);
            v33 = v89 | 0xFFFFFF80;
          }
        }

        goto LABEL_12;
      }

      v86 = 0;
      sub_227BB9944();
      v57 = v74;
      v33 = v35;
      v58 = v76;
      sub_227D4D888();
      if (!v58)
      {
        sub_227BB47D8();
        sub_227D4D938();
        v50 = v83;
        v65 = v84;
        swift_unknownObjectRelease();
        (*(v46 + 8))(v57, v16);
        (*(v65 + 8))(v35, v23);
        v33 = v85;
        goto LABEL_12;
      }

      v59 = OUTLINED_FUNCTION_17_1();
      v60(v59, v23);
      swift_unknownObjectRelease();
LABEL_11:
      v50 = v83;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v50);
      return v33;
    }

LABEL_10:
    v51 = sub_227D4D6B8();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80F8, &qword_227D57240) + 48);
    *v53 = &unk_283B3B050;
    v33 = v35;
    sub_227D4D898();
    sub_227D4D6A8();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_17_1();
    v56(v55, v23);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_227BBA180@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227BB9A70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_227BBA1D8()
{
  v1 = *v0;
  sub_227D4DB58();
  sub_227BB9998(v3, v1);
  return sub_227D4DB98();
}

uint64_t sub_227BBA228(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_227BBA270(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
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
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_227BBA2EC()
{
  result = qword_27D7E8100;
  if (!qword_27D7E8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8100);
  }

  return result;
}

unint64_t sub_227BBA340()
{
  result = qword_27D7E8108;
  if (!qword_27D7E8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8108);
  }

  return result;
}

unint64_t sub_227BBA398()
{
  result = qword_27D7E8110;
  if (!qword_27D7E8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8110);
  }

  return result;
}

unint64_t sub_227BBA3F0()
{
  result = qword_27D7E8118;
  if (!qword_27D7E8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8118);
  }

  return result;
}

unint64_t sub_227BBA448()
{
  result = qword_27D7E8120;
  if (!qword_27D7E8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8120);
  }

  return result;
}

unint64_t sub_227BBA4A0()
{
  result = qword_27D7E8128;
  if (!qword_27D7E8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8128);
  }

  return result;
}

uint64_t sub_227BBA4F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 243);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 243);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 243);
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return OUTLINED_FUNCTION_161(v6);
}

_BYTE *sub_227BBA588(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD)
  {
    v6 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, 16 * (((-a2 >> 2) & 3) - 4 * a2));
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BulkChallengeData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 12);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *sub_227BBA708(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BulkChallengeData.Participant.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *sub_227BBA868(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227BBA930(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227BBAA18(_BYTE *result, int a2, int a3)
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

unint64_t sub_227BBAAC4()
{
  result = qword_27D7F7900[0];
  if (!qword_27D7F7900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F7900);
  }

  return result;
}

unint64_t sub_227BBAB1C()
{
  result = qword_27D7F7B10[0];
  if (!qword_27D7F7B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F7B10);
  }

  return result;
}

unint64_t sub_227BBAB74()
{
  result = qword_27D7F7D20[0];
  if (!qword_27D7F7D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F7D20);
  }

  return result;
}

unint64_t sub_227BBABCC()
{
  result = qword_27D7F7F30[0];
  if (!qword_27D7F7F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F7F30);
  }

  return result;
}

unint64_t sub_227BBAC24()
{
  result = qword_27D7F8040;
  if (!qword_27D7F8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F8040);
  }

  return result;
}

unint64_t sub_227BBAC7C()
{
  result = qword_27D7F8048[0];
  if (!qword_27D7F8048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F8048);
  }

  return result;
}

unint64_t sub_227BBACD4()
{
  result = qword_27D7F80D0;
  if (!qword_27D7F80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F80D0);
  }

  return result;
}

unint64_t sub_227BBAD2C()
{
  result = qword_27D7F80D8[0];
  if (!qword_27D7F80D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F80D8);
  }

  return result;
}

unint64_t sub_227BBAD84()
{
  result = qword_27D7F8160;
  if (!qword_27D7F8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F8160);
  }

  return result;
}

unint64_t sub_227BBADDC()
{
  result = qword_27D7F8168[0];
  if (!qword_27D7F8168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F8168);
  }

  return result;
}

unint64_t sub_227BBAE34()
{
  result = qword_27D7F81F0;
  if (!qword_27D7F81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F81F0);
  }

  return result;
}

unint64_t sub_227BBAE8C()
{
  result = qword_27D7F81F8[0];
  if (!qword_27D7F81F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F81F8);
  }

  return result;
}

unint64_t sub_227BBAEE0()
{
  result = qword_27D7E8130;
  if (!qword_27D7E8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8130);
  }

  return result;
}

unint64_t sub_227BBAF34()
{
  result = qword_27D7E8138;
  if (!qword_27D7E8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8138);
  }

  return result;
}

unint64_t sub_227BBAF88()
{
  result = qword_27D7E8140;
  if (!qword_27D7E8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8140);
  }

  return result;
}

uint64_t sub_227BBB020(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_227BBB044, 0, 0);
}

uint64_t sub_227BBB044()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8148, &qword_227D57B20);
  *v4 = v0;
  v4[1] = sub_227BBB138;
  v5 = *(v0 + 32);

  return sub_227B4CC14();
}

uint64_t sub_227BBB138()
{
  OUTLINED_FUNCTION_6();
  v3 = *(*v1 + 48);
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {
    v5 = sub_227BBB248;
  }

  else
  {
    v6 = *(v2 + 40);

    v5 = sub_227B6ED48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227BBB248()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_227BBB2A4()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 192) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 16) = v4;
  v5 = sub_227D4AF08();
  *(v0 + 40) = v5;
  OUTLINED_FUNCTION_10_0(v5);
  *(v0 + 48) = v6;
  v8 = *(v7 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_30();
  v9 = sub_227D4BBA8();
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_30();
  v12 = sub_227D4BBC8();
  *(v0 + 72) = v12;
  OUTLINED_FUNCTION_10_0(v12);
  *(v0 + 80) = v13;
  v15 = *(v14 + 64);
  *(v0 + 88) = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8150, &qword_227D57B28);
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  *(v0 + 96) = OUTLINED_FUNCTION_30();
  v19 = sub_227D4C8E8();
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  *(v0 + 104) = OUTLINED_FUNCTION_30();
  v22 = sub_227D4BB88();
  *(v0 + 112) = v22;
  OUTLINED_FUNCTION_10_0(v22);
  *(v0 + 120) = v23;
  v25 = *(v24 + 64);
  *(v0 + 128) = OUTLINED_FUNCTION_30();
  v26 = sub_227D4BBE8();
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_30();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7020, &qword_227D50B38);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  *(v0 + 144) = OUTLINED_FUNCTION_30();
  v32 = sub_227D4AED8();
  *(v0 + 152) = v32;
  OUTLINED_FUNCTION_10_0(v32);
  *(v0 + 160) = v33;
  v35 = *(v34 + 64);
  *(v0 + 168) = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227BBB4F4, 0, 0);
}

uint64_t sub_227BBB4F4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v20 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 192);
  v8 = *(v0 + 32);
  v9 = sub_227D4AE88();
  (*(*(v9 - 8) + 16))(v3, v8, v9);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v9);
  sub_227D4AEC8();
  sub_227B4E8B0(v7);
  sub_227BBBC38();
  sub_227D4D1F8();
  sub_227D4BB78();
  (*(v2 + 16))(v5, v1, v20);
  v10 = sub_227D4BB68();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  v11 = *(MEMORY[0x277D0C6F8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  v13 = sub_227D4ACB8();
  *v12 = v0;
  v12[1] = sub_227BBB6D8;
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v16 = *(v0 + 96);
  v17 = *(v0 + 24);
  v18 = MEMORY[0x277D0C320];

  return MEMORY[0x282163ED0](v14, v15, v16, v13, v18);
}

uint64_t sub_227BBB6D8()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v9 + 184) = v0;

  sub_227BBBC8C(v6);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = sub_227BBBAA4;
  }

  else
  {
    v10 = sub_227BBB864;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227BBB864()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[11];
  sub_227D4BBD8();
  if (v1)
  {
    v9 = v0[17];
    OUTLINED_FUNCTION_0_30();
    sub_227BBBCF4(v10, v11);
    (*(v0[20] + 8))(v0[21], v0[19]);
    v12 = v0[21];
    v13 = v0[17];
    v14 = v0[18];
    OUTLINED_FUNCTION_7_10();

    OUTLINED_FUNCTION_18();
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    sub_227D4BBB8();
    (*(v5 + 8))(v4, v6);
    sub_227D4BB98();
    sub_227BBBCF4(v7, MEMORY[0x277D0C498]);
    v17 = v0[20];
    v35 = v0[21];
    v18 = v0[19];
    v19 = v0[17];
    v20 = v0[6];
    v21 = v0[7];
    v22 = v0[5];
    v23 = v0[2];
    KeyPath = swift_getKeyPath();
    sub_227B4DB6C(v21, KeyPath, v23);

    (*(v20 + 8))(v21, v22);
    OUTLINED_FUNCTION_0_30();
    sub_227BBBCF4(v19, v25);
    (*(v17 + 8))(v35, v18);
    v26 = v0[21];
    v27 = v0[17];
    v28 = v0[18];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];
    v34 = v0[7];
    v33 = v0[8];

    OUTLINED_FUNCTION_18();
  }

  return v15();
}

uint64_t sub_227BBBAA4()
{
  v1 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  OUTLINED_FUNCTION_7_10();

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227BBBB80()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_227B6F628;

  return sub_227BBB2A4();
}

unint64_t sub_227BBBC38()
{
  result = qword_27D7E8158;
  if (!qword_27D7E8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8158);
  }

  return result;
}

uint64_t sub_227BBBC8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8150, &qword_227D57B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227BBBCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227BBBD54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227BBBD80(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4ACF8();
}

uint64_t sub_227BBBE0C()
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](1000);
  return sub_227D4DB98();
}

BOOL sub_227BBBE4C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227BBBDAC(*a1);
  *a2 = result;
  return result;
}

id static GameRestrictions.accountStore.getter()
{
  v0 = objc_opt_self();
  v1 = static AMSAccountMediaType.gkMediaTypeForPlatform.getter();
  v2 = [v0 ams:v1 sharedAccountStoreForMediaType:?];

  return v2;
}

uint64_t static GameRestrictions.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_227BBBF10(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227BBBF10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    sub_227D4CE58();
    v17 = sub_227B2664C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227BBC044@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_227BBC050(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BBC06C, 0);
}

uint64_t sub_227BBC06C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  v0[4] = sub_227B4B12C();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227BBC108;
  v3 = v0[3];

  return sub_227B4B1D0();
}

uint64_t sub_227BBC108()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 40);
  v6 = *v0;
  *(v2 + 48) = v4;

  return MEMORY[0x2822009F8](sub_227BBC200, 0, 0);
}

uint64_t sub_227BBC200()
{
  v1 = v0[6];
  v2 = v0[2];
  *v2 = v0[4];
  v2[1] = v1;
  OUTLINED_FUNCTION_18();
  return v3();
}

uint64_t sub_227BBC238(uint64_t a1)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a1);
  return sub_227D4DB98();
}

uint64_t GameRestrictionsPolicyProvider.__allocating_init(notificationCenter:distributedNotificationCenter:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameRestrictionsPolicyProvider.init(notificationCenter:distributedNotificationCenter:)(a1, a2);
  return v4;
}

uint64_t GameRestrictionsPolicyProvider.init(notificationCenter:distributedNotificationCenter:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for RestrictionsFetcher();
  *(v2 + 112) = sub_227B4BF2C();
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return v2;
}

uint64_t GameRestrictionsPolicyProvider.registerRestrictionsDidChangeHandler(_:)()
{
  OUTLINED_FUNCTION_6();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = sub_227D4CAB8();
  v1[40] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[41] = v5;
  v7 = *(v6 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8160, &unk_227D57B70);
  v1[44] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[45] = v9;
  v11 = *(v10 + 64);
  v1[46] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227BBC4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[39];
  if (*(v15 + 136))
  {
    v16 = v14[43];
    sub_227D4AA58();
    v17 = sub_227D4CA98();
    v18 = sub_227D4D438();
    if (OUTLINED_FUNCTION_33_4(v18))
    {
      *OUTLINED_FUNCTION_178() = 0;
      OUTLINED_FUNCTION_95(&dword_227B0D000, v19, v20, "Restrictions provider currently only supports single registration.");
      OUTLINED_FUNCTION_5_2();
    }

    v21 = v14[46];
    v23 = v14[42];
    v22 = v14[43];
    v24 = v14[40];
    v25 = v14[41];

    (*(v25 + 8))(v22, v24);
    sub_227BBEDA0();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v36 = v14[45];
    v35 = v14[46];
    v37 = v14[44];
    v38 = v14[38];
    *(v15 + 136) = v14[37];
    *(v15 + 144) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227D4E520;
    v40 = *MEMORY[0x277CB8BA0];
    *(inited + 32) = sub_227D4CFA8();
    *(inited + 40) = v41;

    v42 = sub_227BBEB5C(inited);
    v43 = objc_allocWithZone(MEMORY[0x277CB8F80]);
    v44 = sub_227BBE908(v42, 0);
    v14[47] = v44;
    v14[2] = v14;
    v14[7] = v14 + 36;
    v14[3] = sub_227BBC7BC;
    swift_continuation_init();
    v14[17] = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8168, &unk_227D57B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D4D288();
    (*(v36 + 32))(boxed_opaque_existential_1, v35, v37);
    v14[10] = MEMORY[0x277D85DD0];
    v14[11] = 1107296256;
    v14[12] = sub_227BBCCE0;
    v14[13] = &block_descriptor_0;
    [v44 registerWithCompletion_];
    (*(v36 + 8))(boxed_opaque_existential_1, v37);
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x282200938](v46, v47, v48, v49, v50, v51, v52, v53, a9, v14 + 10, a11, a12, a13, a14);
  }
}

uint64_t sub_227BBC7BC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  v3 = v2[6];
  v2[48] = v3;
  v4 = v2[39];
  if (v3)
  {
    v5 = sub_227BBCA94;
  }

  else
  {
    v5 = sub_227BBC8D4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227BBC8D4()
{
  OUTLINED_FUNCTION_28_1();
  v1 = v0[36];

  v3 = v0[46];
  v2 = v0[47];
  v18 = v0[43];
  v19 = v0[42];
  v4 = *(v0[39] + 160);
  v5 = *MEMORY[0x277CB8E18];
  OUTLINED_FUNCTION_10_7();
  v0[24] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_7_11();
  v0[26] = v6;
  v0[27] = &block_descriptor_4;
  v7 = _Block_copy(v0 + 24);
  v8 = v0[29];
  v9 = v2;

  v10 = OUTLINED_FUNCTION_19_5();
  _Block_release(v7);

  swift_unknownObjectRelease();
  v11 = *MEMORY[0x277D25CA0];
  OUTLINED_FUNCTION_11_9();
  v0[30] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_8_6();
  v0[32] = v12;
  v0[33] = &block_descriptor_7;
  v13 = _Block_copy(v0 + 30);
  v14 = v0[35];

  v15 = OUTLINED_FUNCTION_21_3();
  _Block_release(v13);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_18();

  return v16();
}

uint64_t sub_227BBCA94()
{
  v1 = v0[48];
  v2 = v0[42];
  swift_willThrow();
  sub_227D4AA58();
  v3 = sub_227D4CA98();
  v4 = sub_227D4D438();
  v5 = OUTLINED_FUNCTION_33_4(v4);
  v6 = v0[48];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];
  if (v5)
  {
    v10 = OUTLINED_FUNCTION_178();
    *v10 = 0;
    _os_log_impl(&dword_227B0D000, v3, v4, "Failed to register account store", v10, 2u);
    OUTLINED_FUNCTION_5_2();
  }

  (*(v8 + 8))(v7, v9);
  v12 = v0[46];
  v11 = v0[47];
  v28 = v0[43];
  v29 = v0[42];
  v13 = *(v0[39] + 160);
  v14 = *MEMORY[0x277CB8E18];
  OUTLINED_FUNCTION_10_7();
  v0[24] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_7_11();
  v0[26] = v15;
  v0[27] = &block_descriptor_4;
  v17 = _Block_copy(v16);
  v18 = v0[29];
  v19 = v11;

  v20 = OUTLINED_FUNCTION_19_5();
  _Block_release(v17);

  swift_unknownObjectRelease();
  v21 = *MEMORY[0x277D25CA0];
  OUTLINED_FUNCTION_11_9();
  v0[30] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_8_6();
  v0[32] = v22;
  v0[33] = &block_descriptor_7;
  v23 = _Block_copy(v0 + 30);
  v24 = v0[35];

  v25 = OUTLINED_FUNCTION_21_3();
  _Block_release(v23);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_18();

  return v26();
}

void sub_227BBCCE0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_227BBCDA0();
  }

  else
  {
    if (a2)
    {
      sub_227BBF3EC();
      sub_227D4D1C8();
    }

    sub_227BBCDEC();
  }
}

uint64_t sub_227BBCE38()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227BBCEBC();
}

uint64_t sub_227BBCEBC()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v0;
  v2 = sub_227D4CAB8();
  v1[5] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[6] = v3;
  v5 = *(v4 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227BBCF60()
{
  v1 = v0[7];
  sub_227D4AA58();
  v2 = sub_227D4CA98();
  v3 = sub_227D4D418();
  if (OUTLINED_FUNCTION_33_4(v3))
  {
    *OUTLINED_FUNCTION_178() = 0;
    OUTLINED_FUNCTION_95(&dword_227B0D000, v4, v5, "Refreshing restrictions");
    OUTLINED_FUNCTION_5_2();
  }

  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[4];
  v8 = v0[5];

  (*(v7 + 8))(v6, v8);
  v0[8] = *(v9 + 120);
  v0[9] = *(v9 + 128);
  sub_227D4CE58();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[10] = v10;
  *v10 = v11;
  v10[1] = sub_227BBD08C;
  v12 = v0[4];

  return GameRestrictionsPolicyProvider.fetchCurrentState()();
}

uint64_t sub_227BBD08C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 80);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227BBD184()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[9];
  v2 = v0[3];
  if (v1)
  {
    if (v2 && v0[8] == v0[2])
    {
      v3 = v0[9];
      swift_bridgeObjectRetain_n();
      sub_227D4CE58();
      v4 = sub_227BBBF10(v1, v2);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if (v4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else if (!v2)
  {

    goto LABEL_11;
  }

  v5 = v0[3];

LABEL_8:
  v6 = v0[4];
  v7 = *(v6 + 136);
  if (v7)
  {
    v8 = *(v6 + 144);

    v7(v9);
    sub_227B1AC90(v7);
  }

LABEL_11:
  v10 = v0[7];

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227BBD294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_227BBF0A4(a3, v26 - v11);
  v13 = sub_227D4D2D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_227BBF114(v12);
  }

  else
  {
    sub_227D4D2C8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_227D4D278();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_227D4D018() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_227BBF114(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227BBF114(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_227BBD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_227BBF0A4(a3, v26 - v11);
  v13 = sub_227D4D2D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_227BBF114(v12);
  }

  else
  {
    sub_227D4D2C8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_227D4D278();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_227D4D018() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_227BBF114(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227BBF114(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_227BBD7D4(uint64_t a1)
{
  v2 = sub_227D48E58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_227D48E38();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227BBD8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_227D4D2D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_227BBD294(0, 0, v8, a3, v10);
}

uint64_t sub_227BBD9A4()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227BBCEBC();
}

uint64_t GameRestrictionsPolicyProvider.fetchCurrentState()()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0) - 8) + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v4 = sub_227D4CAB8();
  v1[7] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[8] = v5;
  v7 = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227BBDAFC()
{
  v1 = v0[5];
  v2 = *(v1 + 152);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[9];

    sub_227D4AA58();
    v4 = sub_227D4CA98();
    v5 = sub_227D4D418();
    if (OUTLINED_FUNCTION_33_4(v5))
    {
      v6 = OUTLINED_FUNCTION_178();
      *v6 = 0;
      _os_log_impl(&dword_227B0D000, v4, v5, "Tried to update restrictions, but an update is already in progress", v6, 2u);
      OUTLINED_FUNCTION_5_2();
    }

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];

    (*(v8 + 8))(v7, v9);
    v10 = *(MEMORY[0x277D857E0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[11] = v11;
    *v11 = v12;
    v11[1] = sub_227BBDD30;
    v13 = v0[4];
  }

  else
  {
    v14 = v0[6];
    v15 = sub_227D4D2D8();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    v16 = sub_227BBEDF4();
    v17 = swift_allocObject();
    v17[2] = v1;
    v17[3] = v16;
    v17[4] = v1;
    swift_retain_n();
    v2 = sub_227BBD538(0, 0, v14, &unk_227D57BB0, v17);
    v0[12] = v2;
    v18 = *(v1 + 152);
    *(v1 + 152) = v2;

    v19 = *(MEMORY[0x277D857E0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[13] = v20;
    *v20 = v21;
    v20[1] = sub_227BBDE94;
    v13 = v0 + 2;
  }

  return MEMORY[0x282200460](v13, v2, &type metadata for GameRestrictions);
}

uint64_t sub_227BBDD30()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 88);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227BBDE28()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[10];

  v2 = v0[9];
  v3 = v0[6];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227BBDE94()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 104);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227BBDF8C()
{
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];

  v5 = v0[2];
  v4 = v0[3];
  v6 = v2[16];
  v2[15] = v5;
  v2[16] = v4;
  sub_227D4CE58();

  *v3 = v5;
  v3[1] = v4;
  v7 = v2[19];
  v2[19] = 0;

  v8 = v0[9];
  v9 = v0[6];

  OUTLINED_FUNCTION_18();

  return v10();
}

uint64_t sub_227BBE03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_2_0(sub_227BBE058, a4);
}

uint64_t sub_227BBE058()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[3] + 112);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_227B2F79C;
  v4 = v0[2];

  return sub_227BBC050(v4);
}

uint64_t GameRestrictionsPolicyProvider.restrictedAppsIDs(from:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227BBE108, v1);
}

uint64_t sub_227BBE334()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 96);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227BBE5D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  if (a4)
  {
    return 0;
  }

  if (*a5 >= a3)
  {
    return 0;
  }

  v9 = a5[1];
  if ([objc_opt_self() deviceIsAppleTV])
  {
    return 0;
  }

  if (a2)
  {
    v10 = sub_227BBE66C(a1, a2, v9);
    if ((v11 & 1) == 0 && v10 >= a3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_227BBE66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_227B2664C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t GameRestrictionsPolicyProvider.deinit()
{
  [*(v0 + 160) removeObserver_];
  [*(v0 + 168) removeObserver_];
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);
  sub_227B1AC90(*(v0 + 136));
  v4 = *(v0 + 152);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameRestrictionsPolicyProvider.__deallocating_deinit()
{
  GameRestrictionsPolicyProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227BBE790()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_50(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_35(v5);

  return GameRestrictionsPolicyProvider.restrictedAppsIDs(from:)(v2);
}

uint64_t sub_227BBE81C()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

id sub_227BBE908(uint64_t a1, uint64_t a2)
{
  v4 = sub_227D4D328();

  v5 = [v2 initWithAccountTypes:v4 delegate:a2];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_227BBE980(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227BBEA78;

  return v7(a1);
}

uint64_t sub_227BBEA78()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227BBEB5C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  result = sub_227D4D648();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_227D4DB58();
    sub_227D4CE58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_227D4DA78() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_227B1B268(a2 + 32, a1 + 32);
}

unint64_t sub_227BBEDA0()
{
  result = qword_27D7E8170;
  if (!qword_27D7E8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8170);
  }

  return result;
}

unint64_t sub_227BBEDF4()
{
  result = qword_27D7E8178;
  if (!qword_27D7E8178)
  {
    type metadata accessor for GameRestrictionsPolicyProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8178);
  }

  return result;
}

uint64_t sub_227BBEE6C()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v8;
  v5[1] = sub_227B3E2E8;

  return sub_227BBE03C(v2, v6, v7, v3);
}

unint64_t sub_227BBEF04()
{
  result = qword_27D7E8180;
  if (!qword_27D7E8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8180);
  }

  return result;
}

unint64_t sub_227BBEF5C()
{
  result = qword_27D7E8188;
  if (!qword_27D7E8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8188);
  }

  return result;
}

_BYTE *sub_227BBEFFC(_BYTE *result, int a2, int a3)
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

uint64_t sub_227BBF0A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BBF114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227BBF17C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t sub_227BBF20C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t sub_227BBF29C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return sub_227BBD9A4();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227BBF364()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return sub_227BBCE38();
}

unint64_t sub_227BBF3EC()
{
  result = qword_27D7E8190;
  if (!qword_27D7E8190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7E8190);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_33_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t PrivacyVersions.gdpr.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PrivacyVersions.gamesPrivacy.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PrivacyVersions.gamesCrossUse.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t GameServicesEnvironment.hostBundleId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t GameServicesEnvironment.defaultLocale.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  v3 = *(type metadata accessor for GameServicesEnvironment(v2) + 28);
  v4 = sub_227D49328();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t GameServicesEnvironment.deviceUDID.getter()
{
  v1 = (v0 + *(type metadata accessor for GameServicesEnvironment(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t GameServicesEnvironment.currentPrivacyVersions.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  result = type metadata accessor for GameServicesEnvironment(v2);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  LOBYTE(v4) = *(v4 + 40);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;
  *(v0 + 40) = v4;
  return result;
}

uint64_t sub_227BBF5C4()
{
  OUTLINED_FUNCTION_21_2();
  result = sub_227D4CF78();
  qword_280E7BB28 = result;
  return result;
}

uint64_t *sub_227BBF5F8()
{
  if (_MergedGlobals_5 != -1)
  {
    OUTLINED_FUNCTION_11_10();
  }

  return &qword_280E7BB28;
}

uint64_t GameCenterServerNotification.CacheInvalidation.playerID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t static GameCenterServerNotification.CacheInvalidation.toUserInfo(bagKey:playerID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8198, &unk_227D57EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  if (_MergedGlobals_5 != -1)
  {
    OUTLINED_FUNCTION_11_10();
  }

  sub_227D4CFA8();
  sub_227D4D618();
  *(inited + 96) = &type metadata for GameCenterServerNotification.CacheInvalidation;
  v9 = swift_allocObject();
  *(inited + 72) = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  sub_227D4CE58();
  sub_227D4CE58();
  return sub_227D4CE28();
}

double sub_227BBF79C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!a1)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_8:
    sub_227B1DE58(&v6, &qword_27D7E6C80, &unk_227D4F780);
    goto LABEL_9;
  }

  if (_MergedGlobals_5 != -1)
  {
    OUTLINED_FUNCTION_11_10();
  }

  sub_227D4CFA8();
  sub_227D4D618();
  sub_227BBF88C(v5, a1, &v6);
  sub_227BBF8F0(v5);
  if (!*(&v7 + 1))
  {
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_227BBF88C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_227BC328C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_227B1B268(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_227BBF944()
{
  OUTLINED_FUNCTION_21_2();
  result = sub_227D4CF78();
  qword_280E7BB38 = result;
  return result;
}

uint64_t GameCenterServerNotification.ChallengeUpdate.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227BBF9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  sub_227D4D618();
  sub_227BBF88C(&v9, a1, &v11);
  sub_227BBF8F0(&v9);
  if (!*(&v12 + 1))
  {
LABEL_8:
    result = sub_227B1DE58(&v11, &qword_27D7E6C80, &unk_227D4F780);
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_41_3();
  if ((result & 1) == 0)
  {
LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v5 = v9;
  v6 = v10;
  *&v11 = 0x7954657461647075;
  *(&v11 + 1) = 0xEA00000000006570;
  sub_227D4D618();
  sub_227BBF88C(&v9, a1, &v11);
  sub_227BBF8F0(&v9);
  if (*(&v12 + 1))
  {
    result = OUTLINED_FUNCTION_41_3();
    v7 = v9;
    v8 = v10;
    if (!result)
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    result = sub_227B1DE58(&v11, &qword_27D7E6C80, &unk_227D4F780);
    v7 = 0;
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_227BBFB64()
{
  OUTLINED_FUNCTION_21_2();
  result = sub_227D4CF78();
  qword_280E7BB48 = result;
  return result;
}

uint64_t GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened.url.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  v3 = *(type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(v2) + 20);
  v4 = sub_227D49188();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t static GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened.toUserInfo(creatorPlayerID:url:isOpened:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8198, &unk_227D57EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  if (qword_280E7BB40 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  sub_227D4CFA8();
  sub_227D4D618();
  v9 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  *(inited + 96) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v11 = *(v9 + 20);
  v12 = sub_227D49188();
  OUTLINED_FUNCTION_62_0(v12);
  (*(v13 + 16))(boxed_opaque_existential_1 + v11, a3);
  *boxed_opaque_existential_1 = a1;
  boxed_opaque_existential_1[1] = a2;
  *(boxed_opaque_existential_1 + *(v9 + 24)) = a4 & 1;
  sub_227D4CE58();
  return sub_227D4CE28();
}

uint64_t sub_227BBFDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  v9 = *(v8 + 20);
  v10 = sub_227D49188();
  OUTLINED_FUNCTION_62_0(v10);
  result = (*(v11 + 32))(&a5[v9], a3);
  a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_227BBFE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E81A0, &unk_227D57ED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  if (!a1)
  {
    v16 = 0u;
    v17 = 0u;
LABEL_8:
    sub_227B1DE58(&v16, &qword_27D7E6C80, &unk_227D4F780);
    v12 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
    goto LABEL_9;
  }

  if (qword_280E7BB40 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v14[1] = sub_227D4CFA8();
  v14[2] = v8;
  sub_227D4D618();
  sub_227BBF88C(v15, a1, &v16);
  sub_227BBF8F0(v15);
  if (!*(&v17 + 1))
  {
    goto LABEL_8;
  }

  v9 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  v10 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v10 ^ 1u, 1, v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    return sub_227BC008C(v7, a2);
  }

LABEL_9:
  sub_227B1DE58(v7, &qword_27D7E81A0, &unk_227D57ED0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_227D4D668();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x22AAA5DA0](0xD000000000000052);
  *&v16 = a1;
  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6930, &qword_227D4E738);
  v13 = sub_227D4CFF8();
  MEMORY[0x22AAA5DA0](v13);

  result = OUTLINED_FUNCTION_24_4();
  __break(1u);
  return result;
}

uint64_t sub_227BC008C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BC00F0()
{
  OUTLINED_FUNCTION_21_2();
  result = sub_227D4CF78();
  qword_280E7BB58 = result;
  return result;
}

uint64_t *sub_227BC0124()
{
  if (qword_280E7BB50 != -1)
  {
    swift_once();
  }

  return &qword_280E7BB58;
}

uint64_t GameCenterServerNotification.GameActivityPartyDelivered.activityInstance.getter()
{
  OUTLINED_FUNCTION_40();
  v0 = sub_227D498E8();
  OUTLINED_FUNCTION_62_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_58();

  return v4(v3);
}

uint64_t sub_227BC01E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227D498E8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_227BC0248()
{
  OUTLINED_FUNCTION_21_2();
  result = sub_227D4CF78();
  qword_280E7BB68 = result;
  return result;
}

uint64_t static GameCenterServerNotification.DeliverMostRecentPendingGameActivity.toUserInfo(bundleID:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8198, &unk_227D57EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  if (qword_280E7BB60 != -1)
  {
    OUTLINED_FUNCTION_10_8();
  }

  sub_227D4CFA8();
  sub_227D4D618();
  *(inited + 96) = &type metadata for GameCenterServerNotification.DeliverMostRecentPendingGameActivity;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  sub_227D4CE58();
  return sub_227D4CE28();
}

uint64_t sub_227BC03A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_8:
    sub_227B1DE58(&v9, &qword_27D7E6C80, &unk_227D4F780);
    goto LABEL_9;
  }

  if (qword_280E7BB60 != -1)
  {
    OUTLINED_FUNCTION_10_8();
  }

  sub_227D4CFA8();
  sub_227D4D618();
  sub_227BBF88C(&v7, a1, &v9);
  sub_227BBF8F0(&v7);
  if (!*(&v10 + 1))
  {
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v5 = v8;
    *a2 = v7;
    a2[1] = v5;
    return result;
  }

LABEL_9:
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_227D4D668();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x22AAA5DA0](0xD000000000000052);
  *&v9 = a1;
  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6930, &qword_227D4E738);
  v6 = sub_227D4CFF8();
  MEMORY[0x22AAA5DA0](v6);

  result = OUTLINED_FUNCTION_24_4();
  __break(1u);
  return result;
}

uint64_t sub_227BC052C()
{
  OUTLINED_FUNCTION_21_2();
  result = sub_227D4CF78();
  qword_280E7BB78 = result;
  return result;
}

id sub_227BC0578(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t GameCenterServerNotification.GameActivityReferralDeepLinkOpened.bundleID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t GameCenterServerNotification.GameActivityReferralDeepLinkOpened.referenceLeaderboardID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t GameCenterServerNotification.GameActivityReferralDeepLinkOpened.referenceAchievementDescriptionID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t static GameCenterServerNotification.GameActivityReferralDeepLinkOpened.toUserInfo(activityIdentifier:activityProperties:bundleID:referenceLeaderboardID:referenceAchievementDescriptionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8198, &unk_227D57EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  if (qword_280E7BB70 != -1)
  {
    OUTLINED_FUNCTION_7_12();
  }

  sub_227D4CFA8();
  sub_227D4D618();
  *(inited + 96) = &type metadata for GameCenterServerNotification.GameActivityReferralDeepLinkOpened;
  v18 = swift_allocObject();
  *(inited + 72) = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  v18[10] = a9;
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  return sub_227D4CE28();
}

uint64_t sub_227BC07D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

void *sub_227BC07F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_8:
    sub_227B1DE58(&v8, &qword_27D7E6C80, &unk_227D4F780);
    goto LABEL_9;
  }

  if (qword_280E7BB70 != -1)
  {
    OUTLINED_FUNCTION_7_12();
  }

  __src[9] = sub_227D4CFA8();
  __src[10] = v4;
  sub_227D4D618();
  sub_227BBF88C(__src, a1, &v8);
  sub_227BBF8F0(__src);
  if (!*(&v9 + 1))
  {
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    return memcpy(a2, __src, 0x48uLL);
  }

LABEL_9:
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_227D4D668();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x22AAA5DA0](0xD000000000000050);
  *&v8 = a1;
  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6930, &qword_227D4E738);
  v6 = sub_227D4CFF8();
  MEMORY[0x22AAA5DA0](v6);

  result = OUTLINED_FUNCTION_24_4();
  __break(1u);
  return result;
}

uint64_t RefreshContentsDataType.hashValue.getter()
{
  v1 = *v0;
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](v1);
  return sub_227D4DB98();
}

void __swiftcall GameMetadata.init(adamID:bundleID:bundleVersion:shortBundleVersion:platform:)(GameServicesCore::GameMetadata *__return_ptr retstr, Swift::String adamID, Swift::String bundleID, Swift::String_optional bundleVersion, Swift::String_optional shortBundleVersion, Swift::String_optional platform)
{
  retstr->adamID = adamID;
  retstr->bundleID = bundleID;
  retstr->bundleVersion = bundleVersion;
  retstr->shortBundleVersion = shortBundleVersion;
  retstr->platform = platform;
}

GameServicesCore::ForcedOnboardingState __swiftcall ForcedOnboardingState.init(gdprPrivacyAccepted:gdprPrivacyNotice:defaultPrivacy:defaultNickname:defaultContactsIntegrationConsent:gamesPrivacyNotice:gamesCrossUseNotice:)(Swift::Bool gdprPrivacyAccepted, Swift::Bool gdprPrivacyNotice, Swift::Bool defaultPrivacy, Swift::Bool defaultNickname, Swift::Bool defaultContactsIntegrationConsent, Swift::Bool gamesPrivacyNotice, Swift::Bool gamesCrossUseNotice)
{
  *v7 = gdprPrivacyAccepted;
  v7[1] = gdprPrivacyNotice;
  v7[2] = defaultPrivacy;
  v7[3] = defaultNickname;
  v7[4] = defaultContactsIntegrationConsent;
  v7[5] = gamesPrivacyNotice;
  v7[6] = gamesCrossUseNotice;
  result.gdprPrivacyAccepted = gdprPrivacyAccepted;
  return result;
}

uint64_t sub_227BC0AB4()
{
  OUTLINED_FUNCTION_51_0();
  v0[2] = v1;
  v0[3] = v2;
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_32();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_9_6(v8);

  return v10(v9);
}

uint64_t sub_227BC0BB4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 32);
  v7 = *v0;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;

  return MEMORY[0x2822009F8](sub_227BC0CAC, 0, 0);
}

uint64_t sub_227BC0CAC()
{
  v1 = v0[6];
  if (!v1)
  {
    sub_227D49E08();
    sub_227BC0E2C();
    swift_allocError();
    sub_227D49D98();
    goto LABEL_9;
  }

  if (v0[5] == v0[2] && v1 == v0[3])
  {
    v8 = v0[6];
  }

  else
  {
    v3 = v0[6];
    v4 = sub_227D4DA78();

    if ((v4 & 1) == 0)
    {
      v5 = sub_227D49E08();
      sub_227BC0E2C();
      swift_allocError();
      *v6 = 0xD000000000000034;
      v6[1] = 0x8000000227D76670;
      (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D0CE68], v5);
LABEL_9:
      swift_willThrow();
      OUTLINED_FUNCTION_18();
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_18();
LABEL_12:

  return v7();
}

unint64_t sub_227BC0E2C()
{
  result = qword_27D7E67C8;
  if (!qword_27D7E67C8)
  {
    sub_227D49E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E67C8);
  }

  return result;
}

unint64_t sub_227BC0E88()
{
  result = qword_27D7E81A8;
  if (!qword_27D7E81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E81A8);
  }

  return result;
}

uint64_t sub_227BC0EDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_161(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_49_0();
  }
}

uint64_t sub_227BC0EF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_227BC0F54()
{
  sub_227BAE9F4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_227D49328();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_28_6();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for GameCenterServerNotification(_BYTE *result, int a2, int a3)
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

uint64_t sub_227BC10CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

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

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227BC110C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227BC117C()
{
  result = sub_227D49188();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_28_6();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227BC1240()
{
  result = sub_227D498E8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_28_6();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227BC12A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

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

  return OUTLINED_FUNCTION_161(v2);
}