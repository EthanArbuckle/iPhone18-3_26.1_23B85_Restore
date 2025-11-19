uint64_t sub_1B8184448()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B81844C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B818450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B81F7A38();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_58(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1B81845B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B81F7A38();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B818465C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_58(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8E0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1B81846E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8E0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B81847C4()
{
  v0 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_1B81F8368();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_53();
  sub_1B81930C0(v1, v2);
  OUTLINED_FUNCTION_22_0();
  sub_1B8190720(v3, v4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B81848B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 35, 7);
}

uint64_t sub_1B81848F4()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B818492C()
{
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

double sub_1B818496C(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1B81849B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_58(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
  v8 = a1 + *(a3 + 40);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1B8184A38()
{
  OUTLINED_FUNCTION_128();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
    v5 = OUTLINED_FUNCTION_104(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8184AB0(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_58(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00);
  OUTLINED_FUNCTION_63_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[9];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
    OUTLINED_FUNCTION_63_0();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF08);
      OUTLINED_FUNCTION_63_0();
      if (*(v14 + 84) == a2)
      {
        v9 = v13;
        v10 = a3[12];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
        v10 = a3[13];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void sub_1B8184C1C()
{
  OUTLINED_FUNCTION_128();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00);
    OUTLINED_FUNCTION_63_0();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
      OUTLINED_FUNCTION_63_0();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF08);
        OUTLINED_FUNCTION_63_0();
        if (*(v10 + 84) == v6)
        {
          v8 = v5[12];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
          v8 = v5[13];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_104(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1B8184D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81();
  sub_1B81F8178();
  OUTLINED_FUNCTION_63_0();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_58(*(v3 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = v3 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1B8184E18(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1B81F8178();
  OUTLINED_FUNCTION_63_0();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_104(*(a4 + 20));

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1B8184EB8()
{
  OUTLINED_FUNCTION_53();
  sub_1B81F8DC8();
  OUTLINED_FUNCTION_53();
  sub_1B81F8DA8();
  sub_1B81F8728();
  sub_1B81F8CD8();
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_0();
  return swift_getWitnessTable();
}

uint64_t sub_1B8184F70()
{
  v0 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_53();
  sub_1B81A2158(v1, v2, v3, v4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B818502C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185074()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B81850B8()
{
  OUTLINED_FUNCTION_69_0();
  type metadata accessor for SubtitleView(0);
  OUTLINED_FUNCTION_57_1();
  v29 = *(v4 + 64);
  v30 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v31 = v1;
  v5 = v1 + v30;

  v6 = type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_127_0(v6);

  v7 = *(type metadata accessor for SGBannerIconParams(0) + 72);
  v8 = sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 8);
  v10(v2 + v7, v8);

  v11 = type metadata accessor for SGBannerPaddingParams(0);
  v12 = OUTLINED_FUNCTION_107_0(v11);
  (v10)(v12);
  v13 = *(v0 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_2();
    v15 = (*(v14 + 8))(v5 + v13);
  }

  else
  {
  }

  OUTLINED_FUNCTION_112_0(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31);
  OUTLINED_FUNCTION_67_0();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1B8185298()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B81852E4()
{
  OUTLINED_FUNCTION_84();
  v3 = v2;
  sub_1B81F7908();
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v3;
  }

  else
  {
    if (v0 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_58(*(v3 + v1[5]));
    }

    type metadata accessor for SGBannerViewModel(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v10 + 84) == v0)
    {
      v6 = v9;
      v11 = v1[6];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
      v11 = v1[9];
    }

    v7 = v3 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v0, v6);
}

void sub_1B81853EC()
{
  OUTLINED_FUNCTION_103_0();
  v3 = v2;
  v5 = v4;
  sub_1B81F7908();
  OUTLINED_FUNCTION_63_0();
  if (*(v7 + 84) == v1)
  {
    v8 = v6;
    v9 = v5;
  }

  else
  {
    if (v1 == 0x7FFFFFFF)
    {
      *(v5 + v0[5]) = (v3 - 1);
      return;
    }

    type metadata accessor for SGBannerViewModel(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v11 + 84) == v1)
    {
      v8 = v10;
      v12 = v0[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
      v12 = v0[9];
    }

    v9 = v5 + v12;
  }

  __swift_storeEnumTagSinglePayload(v9, v3, v3, v8);
}

uint64_t sub_1B81854FC()
{
  OUTLINED_FUNCTION_29_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_58(*v1);
  }

  OUTLINED_FUNCTION_84();
  type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
    v6 = *(v2 + 44);
  }

  v7 = OUTLINED_FUNCTION_46_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B81855B4()
{
  OUTLINED_FUNCTION_128();
  if (v2)
  {
    OUTLINED_FUNCTION_119_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    type metadata accessor for SGBannerViewModel(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
      v4 = *(v0 + 44);
    }

    v5 = OUTLINED_FUNCTION_104(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8185690()
{
  OUTLINED_FUNCTION_29_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_58(*(v1 + 8));
  }

  OUTLINED_FUNCTION_84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
    v6 = *(v2 + 52);
  }

  v7 = OUTLINED_FUNCTION_46_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8185754()
{
  OUTLINED_FUNCTION_128();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);
    OUTLINED_FUNCTION_63_0();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
      v6 = *(v2 + 52);
    }

    v7 = OUTLINED_FUNCTION_104(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8185818()
{
  OUTLINED_FUNCTION_29_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_58(*v0);
  }

  OUTLINED_FUNCTION_84();
  type metadata accessor for SGBannerViewModel(0);
  v4 = OUTLINED_FUNCTION_46_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8185884()
{
  OUTLINED_FUNCTION_128();
  if (v1)
  {
    OUTLINED_FUNCTION_119_0();
  }

  else
  {
    v2 = v0;
    type metadata accessor for SGBannerViewModel(0);
    v3 = OUTLINED_FUNCTION_104(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B81859FC()
{
  OUTLINED_FUNCTION_29_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_58(*v1);
  }

  OUTLINED_FUNCTION_84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
  OUTLINED_FUNCTION_63_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D750);
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_46_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8185AC0()
{
  OUTLINED_FUNCTION_128();
  if (v2)
  {
    OUTLINED_FUNCTION_119_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
    OUTLINED_FUNCTION_63_0();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D750);
      v4 = *(v0 + 24);
    }

    v5 = OUTLINED_FUNCTION_104(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8185B84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185BBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D778);
  v0 = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_1B81B4AFC();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_96();
  sub_1B81B5290(v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8185C94()
{
  MEMORY[0x1B8CBBB90](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185CCC()
{
  MEMORY[0x1B8CBBB90](v0 + 16);
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8185D00()
{

  v0 = OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B8185D38()
{

  v0 = OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B8185D70()
{
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8185DA4()
{

  v0 = OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B8185DE4()
{
  MEMORY[0x1B8CBBB90](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8185E1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[8];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1B81F91C8();
    v8 = a3[10];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[9] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1B8185EFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CF00);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[8];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1B81F91C8();
    v10 = a4[10];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1B8185FE0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB28);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_16_0();
  v4(v3);
  return a2;
}

uint64_t sub_1B8186054()
{
  MEMORY[0x1B8CBBB90](v0 + 16);
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8186088()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B81860D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8186110()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8186144()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8186180()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B81861F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B81863AC()
{
  OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFE0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  return v0;
}

uint64_t sub_1B818640C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFE0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1B818646C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B81F8178();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1B81864B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B81F8178();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1B8186504()
{
  OUTLINED_FUNCTION_53();
  sub_1B81F8A78();
  sub_1B81F8A98();
  sub_1B81F8728();
  sub_1B81F8CD8();
  OUTLINED_FUNCTION_4_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_0();
  return swift_getWitnessTable();
}

uint64_t sub_1B818662C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8186664()
{

  return MEMORY[0x1EEE6BDD0](v0, 35, 7);
}

uint64_t sub_1B81866A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8186704()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B81867A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B81F8058();
  OUTLINED_FUNCTION_63_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 88));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1B8186864(uint64_t a1, char a2, int a3, uint64_t a4)
{
  sub_1B81F8058();
  OUTLINED_FUNCTION_63_0();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_104(*(a4 + 80));

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 88)) = a2 + 1;
  }
}

uint64_t sub_1B8186904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B81F8058();
    v10 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1B8186998(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    sub_1B81F8058();
    v5 = OUTLINED_FUNCTION_104(*(a4 + 72));

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_1B8186A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for SGBannerIconParams(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 48);
    }

    else
    {
      v10 = type metadata accessor for SGBannerPaddingParams(0);
      v11 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1B8186AD8(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    type metadata accessor for SGBannerIconParams(0);
    OUTLINED_FUNCTION_63_0();
    if (*(v6 + 84) == a3)
    {
      v7 = *(a4 + 48);
    }

    else
    {
      type metadata accessor for SGBannerPaddingParams(0);
      v7 = *(a4 + 56);
    }

    v8 = OUTLINED_FUNCTION_104(v7);

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1B8186B94()
{
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B8186BD0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8186C1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B8186C64(uint64_t a1@<X8>)
{
  sub_1B8186C5C();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

unint64_t sub_1B8186FF8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1B818701C()
{
  v0 = sub_1B81F8F98();
  v2 = v1;
  if (v0 == sub_1B81F8F98() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B81F9388();
  }

  return v5 & 1;
}

uint64_t sub_1B81870B8(unsigned __int8 a1)
{
  sub_1B81F93B8();
  MEMORY[0x1B8CBB1D0](a1);
  return sub_1B81F93D8();
}

uint64_t sub_1B8187138(uint64_t a1, unsigned __int8 a2)
{
  sub_1B81F93B8();
  MEMORY[0x1B8CBB1D0](a2);
  return sub_1B81F93D8();
}

unint64_t sub_1B818717C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8186FF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B81871A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8187008(*v1);
  *a1 = result;
  return result;
}

id sub_1B81871D4()
{
  sub_1B8189AF0(0, &unk_1EDC8A5B0);
  result = sub_1B818728C();
  if (result)
  {
    v1 = result;
    v2 = sub_1B81F7948();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B818728C()
{
  v0 = sub_1B81F8F58();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t sub_1B81872F0()
{
  v1 = sub_1B81F8178();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    sub_1B8189AF0(0, &qword_1EBA7C4B8);
    sub_1B81874A4(15461355);

    return sub_1B81F8C38();
  }

  else
  {
    v6 = sub_1B81F8E98();
    (*(v2 + 104))(v0, *MEMORY[0x1E697DBA8], v1);
    v7 = sub_1B81F8168();
    (*(v2 + 8))(v0, v1);
    if (v6)
    {
      if (v7)
      {
        sub_1B81AF8B0();
      }

      else
      {
        sub_1B81B0364();
      }
    }

    else if (v7)
    {
      sub_1B81B02A8();
    }

    else
    {
      sub_1B81B0230();
    }
  }
}

uint64_t sub_1B81874B8()
{
  v0 = sub_1B8187584();
  v1 = [v0 string];
  sub_1B81F8F98();

  sub_1B8188DE0();
  v2 = sub_1B81F9208();

  return v2;
}

uint64_t sub_1B8187584()
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  OUTLINED_FUNCTION_14();
  v1 = (*(v0 + 368))();
  if (!v1)
  {
    OUTLINED_FUNCTION_9();
    v13 += 43;
    v14 = *v13;
    (*v13)();
    if (v15 && (v16 = sub_1B81F8FE8(), v17 = , v16 >= 1) && ((v14)(v17), v18))
    {
      sub_1B8189AF0(0, &unk_1EDC8A5C0);
      OUTLINED_FUNCTION_22();
    }

    else
    {
      sub_1B8189AF0(0, &unk_1EDC8A5C0);
    }

    v2 = sub_1B8187C0C();
    v12 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 length];
  v4 = OUTLINED_FUNCTION_24();
  v4[2] = &v22;
  v4[3] = &v21;
  v4[4] = &v20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B8189114;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1B8189120;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8187B50;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  [v2 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v3) = OUTLINED_FUNCTION_23(v5, "");

  if ((v3 & 1) == 0)
  {
    v9 = v20;
    v8 = v21;
    v10 = v20;
    v11 = v8;
    v12 = sub_1B8189114;
LABEL_10:

    sub_1B8188E34(v12);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8187834(uint64_t a1, _BYTE *a2, void **a3, void **a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v8)) | (v11 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      sub_1B8189A2C(*(a1 + 56) + 32 * v13, v46);
      v45 = v14;
      v15 = sub_1B81F8F98();
      v17 = v16;
      if (v15 == sub_1B81F8F98() && v17 == v18)
      {
        break;
      }

      v20 = sub_1B81F9388();
      v21 = v14;

      if (v20)
      {
        goto LABEL_25;
      }

      v22 = sub_1B81F8F98();
      v24 = v23;
      if (v22 == sub_1B81F8F98() && v24 == v25)
      {

LABEL_27:
        sub_1B8189A2C(v46, v44);
        sub_1B8189AF0(0, &qword_1EBA7C578);
        v35 = swift_dynamicCast();
        v36 = v43;
        if (!v35)
        {
          v36 = 0;
        }

        v37 = a3;
        goto LABEL_30;
      }

      v27 = OUTLINED_FUNCTION_17();

      if (v27)
      {
        goto LABEL_27;
      }

      v28 = sub_1B81F8F98();
      v30 = v29;
      if (v28 == sub_1B81F8F98() && v30 == v31)
      {

LABEL_34:
        sub_1B8189A2C(v46, v44);
        sub_1B8189AF0(0, &qword_1EBA7C4B8);
        v39 = swift_dynamicCast();
        v36 = v43;
        if (!v39)
        {
          v36 = 0;
        }

        v37 = a4;
LABEL_30:
        v38 = *v37;
        *v37 = v36;

        goto LABEL_31;
      }

      v33 = OUTLINED_FUNCTION_17();

      if (v33)
      {
        goto LABEL_34;
      }

      *a2 = 0;
LABEL_31:
      v8 &= v8 - 1;
      result = sub_1B8189A88(&v45);
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    v34 = v14;

LABEL_25:
    *a2 = 1;
    goto LABEL_31;
  }

LABEL_4:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8187B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1B8189978(&qword_1EBA7C558);
  v9 = sub_1B81F8EF8();
  v8(v9, a3, a4, a5);
}

id sub_1B8187C0C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B81F8F58();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_1B8187C80(void *a1)
{
  v2 = sub_1B81F7968();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_16();
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x140))())
  {

    return MEMORY[0x1EEDC3200]();
  }

  else
  {
    (*((*v3 & *a1) + 0x128))();
    sub_1B81F7958();
    return sub_1B81F7918();
  }
}

char *sub_1B8187DB0(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  v7 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
  v8 = [v6 count];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v1 = v8;
  if (!v8)
  {

LABEL_22:
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v2 = 0;
  do
  {
    v10 = [v6 objectAtIndexedSubscript_];
    v3 = [v10 count];

    if (v3)
    {
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    ++v2;
  }

  while (v1 != v2);

  if (v4 == 1)
  {
    v2 = [v6 objectAtIndexedSubscript_];

    v25 = [v2 category];
    if (!v25)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v26 = [v25 suggestionCategoryTitle];
    v3 = sub_1B81F8F98();
    v7 = v27;

    v1 = sub_1B81891F8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v1 + 2);
    v9 = *(v1 + 3);
    v4 = v5 + 1;
    if (v5 >= v9 >> 1)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  v12 = [v6 count];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v1 = sub_1B81891F8((v9 > 1), v4, 1, v1);
LABEL_27:

    swift_unknownObjectRelease();
    *(v1 + 2) = v4;
    v28 = &v1[16 * v5];
    *(v28 + 4) = v3;
    *(v28 + 5) = v7;
    return v1;
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = [v6 objectAtIndexedSubscript_];
    v16 = [v15 category];

    if (v16)
    {
      v17 = [v16 suggestionCategoryTitle];
      v18 = sub_1B81F8F98();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1B81891F8(0, *(v1 + 2) + 1, 1, v1);
      }

      v22 = *(v1 + 2);
      v21 = *(v1 + 3);
      if (v22 >= v21 >> 1)
      {
        v1 = sub_1B81891F8((v21 > 1), v22 + 1, 1, v1);
      }

      swift_unknownObjectRelease();
      *(v1 + 2) = v22 + 1;
      v23 = &v1[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
    }

    ++v14;
  }

  while (v13 != v14);

  return v1;
}

uint64_t sub_1B81880A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  if (!a3)
  {
    return v3;
  }

  v6 = a3;
  v7 = sub_1B81888BC(a1, a2, v6);
  if (v7 == -1)
  {
LABEL_35:

    return MEMORY[0x1E69E7CC0];
  }

  v62 = [v6 objectAtIndexedSubscript_];
  result = [v62 count];
  if (result < 0)
  {
    goto LABEL_38;
  }

  v9 = result;
  if (!result)
  {

    v6 = v62;
    goto LABEL_35;
  }

  v60 = v6;
  type metadata accessor for SGBannerContent();
  v10 = 0;
  v11 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
  v12 = MEMORY[0x1E69E7D40];
  v13 = &unk_1E7CD9000;
  v61 = v9;
  while (1)
  {
    v14 = [v62 objectAtIndexedSubscript_];
    v15 = SGBannerContent.__allocating_init()();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v69 = sub_1B8189300;
    v70 = v16;
    OUTLINED_FUNCTION_3();
    v67 = sub_1B81889F4;
    v68 = &block_descriptor_9;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    swift_unknownObjectRetain();

    dispatchInContext(1, v17);
    _Block_release(v17);
    if ([v14 v13[323]])
    {
      v15 = [v14 v11[350]];
      if (!v15)
      {
        OUTLINED_FUNCTION_8();
        (*(v19 + 424))();
        goto LABEL_11;
      }
    }

    else
    {
      v20 = [objc_msgSend(v14 suggestionCategory)];
      OUTLINED_FUNCTION_15();
      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520);
    v21 = OUTLINED_FUNCTION_24();
    *(v21 + 16) = xmmword_1B81FC210;
    *(v21 + 32) = v15;
    v22 = *((*v12 & *v18) + 0x1A8);
    v23 = v15;
    v24 = OUTLINED_FUNCTION_15();
    v22(v24);

LABEL_11:
    if ([v14 v13[323]])
    {
      v25 = [v14 suggestionImageSGView];
      if (v25)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v26 = [v14 suggestionCategory];
      v25 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
      if ([v26 v13[323]])
      {
        v27 = [v26 suggestionCategoryImageSGView];
        OUTLINED_FUNCTION_15();
        swift_unknownObjectRelease();
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520);
        v28 = OUTLINED_FUNCTION_24();
        *(v28 + 16) = xmmword_1B81FC210;
        *(v28 + 32) = v25;
        v29 = *((*v12 & *v18) + 0x250);
        v30 = v25;
        v31 = OUTLINED_FUNCTION_15();
        v29(v31);

        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_8();
    (*(v32 + 592))(0);
LABEL_19:
    if ([v14 v13[323]])
    {
      (*((*v12 & *v18) + 0x178))([v14 suggestionAttributedSubtitle]);
    }

    OUTLINED_FUNCTION_8();
    v34 = *(v33 + 472);
    v35 = swift_unknownObjectRetain();
    v36 = v34(v35);
    v65 = 0;
    v63 = 0;
    v64 = 0;
    v37 = (*((*v12 & *v18) + 0x170))(v36);
    if (!v37)
    {
      OUTLINED_FUNCTION_8();
      v50 += 43;
      v51 = *v50;
      (*v50)();
      if (v52 && (sub_1B81F8FE8(), OUTLINED_FUNCTION_12(), v53 = , v18 > 0) && ((v51)(v53), v54))
      {
        sub_1B8189AF0(0, &unk_1EDC8A5C0);
        OUTLINED_FUNCTION_22();
      }

      else
      {
        sub_1B8189AF0(0, &unk_1EDC8A5C0);
      }

      v38 = sub_1B8187C0C();
      v49 = 0;
      v45 = 0;
      v46 = 0;
      goto LABEL_30;
    }

    v38 = v37;
    v39 = [v37 length];
    v40 = OUTLINED_FUNCTION_24();
    v40[2] = &v65;
    v40[3] = &v64;
    v40[4] = &v63;
    swift_allocObject();
    OUTLINED_FUNCTION_7();
    *(v41 + 16) = v42;
    *(v41 + 24) = v40;
    v69 = sub_1B8189B38;
    v70 = v41;
    OUTLINED_FUNCTION_3();
    v67 = sub_1B8187B50;
    v68 = &block_descriptor_20;
    v43 = _Block_copy(aBlock);

    [v38 enumerateAttributesInRange:0 options:v39 usingBlock:{0, v43}];
    _Block_release(v43);
    v44 = OUTLINED_FUNCTION_23(v34, "");

    if (v44)
    {
      break;
    }

    v45 = v64;
    v46 = v63;
    v47 = v45;
    OUTLINED_FUNCTION_7();
    v49 = v48;
LABEL_30:

    sub_1B8188E34(v49);
    v55 = [v38 string];
    v56 = sub_1B81F8F98();
    v58 = v57;

    (*((*MEMORY[0x1E69E7D40] & *v18) + 0x160))(v56, v58);
    v59 = v18;
    MEMORY[0x1B8CBAEA0]();
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B81F90D8();
    }

    ++v10;
    sub_1B81F90E8();

    swift_unknownObjectRelease();
    v11 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
    v12 = MEMORY[0x1E69E7D40];
    v13 = &unk_1E7CD9000;
    if (v61 == v10)
    {
      v3 = v71;

      return v3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B81888BC(uint64_t a1, uint64_t a2, id a3)
{
  result = [a3 count];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  if (!result)
  {
    return -1;
  }

  v8 = 0;
  while (1)
  {
    v9 = [a3 objectAtIndexedSubscript_];
    v10 = [v9 category];

    if (v10)
    {
      break;
    }

LABEL_10:
    if (v7 == ++v8)
    {
      return -1;
    }
  }

  v11 = [v10 suggestionCategoryTitle];
  swift_unknownObjectRelease();
  v12 = sub_1B81F8F98();
  v14 = v13;

  if (v12 != a1 || v14 != a2)
  {
    v16 = sub_1B81F9388();

    if (v16)
    {
      return v8;
    }

    goto LABEL_10;
  }

  return v8;
}

uint64_t sub_1B81889F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B8188A38(char **a1)
{
  OUTLINED_FUNCTION_14();
  v3 = (*(v2 + 584))();
  if (!v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_9();
    v8 = (*(v7 + 464))();
    if (v8)
    {
      v9 = v8;
      a1 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
      if ([v8 respondsToSelector_])
      {
        v10 = [v9 suggestionImageSGView];
        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
        return a1;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v4 = v3;
  result = sub_1B8189548(v3);
  if (!result)
  {

    goto LABEL_8;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CBB0B0](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    OUTLINED_FUNCTION_12();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8188B60(char **a1)
{
  OUTLINED_FUNCTION_14();
  v3 = (*(v2 + 416))();
  if (!v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_9();
    v8 = (*(v7 + 464))();
    if (v8)
    {
      v9 = v8;
      a1 = &selRef__iconImageWithBundleIdentifier_imageDescriptor_;
      if ([v8 respondsToSelector_])
      {
        v10 = [v9 suggestionImage];
        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
        return a1;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v4 = v3;
  result = sub_1B8189548(v3);
  if (!result)
  {

    goto LABEL_8;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CBB0B0](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    OUTLINED_FUNCTION_12();

    return a1;
  }

  __break(1u);
  return result;
}

id sub_1B8188D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:1.0];
}

unint64_t sub_1B8188DE0()
{
  result = qword_1EDC8AE60;
  if (!qword_1EDC8AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AE60);
  }

  return result;
}

uint64_t sub_1B8188E34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8188E54(uint64_t a1, id *a2)
{
  result = sub_1B81F8F78();
  *a2 = 0;
  return result;
}

uint64_t sub_1B8188ED0(uint64_t a1, id *a2)
{
  v3 = sub_1B81F8F88();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B8188F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B81899F0();
  *a1 = result;
  return result;
}

uint64_t sub_1B8188F8C()
{
  v0 = sub_1B81F8F98();
  v1 = MEMORY[0x1B8CBAE70](v0);

  return v1;
}

uint64_t sub_1B8188FCC()
{
  sub_1B81F8F98();
  sub_1B81F8FD8();
}

uint64_t sub_1B8189028()
{
  sub_1B81F8F98();
  sub_1B81F93B8();
  sub_1B81F8FD8();
  v0 = sub_1B81F93D8();

  return v0;
}

uint64_t sub_1B818909C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B81F8F58();

  *a1 = v2;
  return result;
}

uint64_t sub_1B81890E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8189110(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8189160(uint64_t a1)
{
  v2 = sub_1B8189978(&qword_1EBA7C558);
  v3 = sub_1B8189978(&qword_1EBA7C560);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

char *sub_1B81891F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C568);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B8189300()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = [v3 suggestionTitle];
  v5 = sub_1B81F8F98();
  v7 = v6;

  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))(v5, v7);
  v18 = [v3 suggestionPrimaryAction];
  v9 = [v18 title];
  v10 = sub_1B81F8F98();
  v12 = v11;

  (*((*v8 & *v2) + 0x1C0))(v10, v12);
  if ([v3 respondsToSelector_])
  {
    v13 = [swift_unknownObjectRetain() suggestionSubtitle];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1B81F8F98();
      v17 = v16;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v15 = 0;
      v17 = 0;
    }

    (*((*v8 & *v2) + 0x160))(v15, v17);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B8189548(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B81F9348();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1B8189570()
{
  result = qword_1EBA7C528;
  if (!qword_1EBA7C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiBannerSectionTypes(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MultiBannerSectionTypes(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8189780(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1B81897D4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B8189854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8189874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1B81898C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B8189978(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B81899F0()
{
  sub_1B81F8F98();
  v0 = sub_1B81F8F58();

  return v0;
}

uint64_t sub_1B8189A2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B8189A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8189AF0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_1B81F9388();
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6C018](a1, a2, 110, 210, 101, 1);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_allocObject();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B8189CF0()
{
  v1 = (v0 + OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_messageID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B8189DB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_messageID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8189E18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8189E74(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);

  return v4(v2, v3);
}

uint64_t sub_1B8189F90(uint64_t a1, void **a2)
{
  sub_1B81F77E8();
  MEMORY[0x1EEE9AC00]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x88))(v5);
}

uint64_t sub_1B818A08C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_bannerError;
  OUTLINED_FUNCTION_3_0();
  sub_1B81F77E8();
  OUTLINED_FUNCTION_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1B818A100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_bannerError;
  swift_beginAccess();
  sub_1B81F77E8();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B818A244()
{
  v1 = sub_1B81F77E8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(v3);
  sub_1B818A360();
  v6 = sub_1B81F93A8();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t sub_1B818A360()
{
  result = qword_1EDC8A558;
  if (!qword_1EDC8A558)
  {
    sub_1B81F77E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A558);
  }

  return result;
}

uint64_t sub_1B818A3DC()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_extractionSource;
  OUTLINED_FUNCTION_3_0();
  return *(v0 + v1);
}

uint64_t sub_1B818A43C(int a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_extractionSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B818A48C@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

id SGRealtimeWalletOrderExtractionError.init(messageID:bannerError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_messageID];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_extractionSource] = 3;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = OBJC_IVAR____TtC17CoreSuggestionsUI36SGRealtimeWalletOrderExtractionError_bannerError;
  v9 = sub_1B81F77E8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a3, v9);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for SGRealtimeWalletOrderExtractionError();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a3, v9);
  return v11;
}

uint64_t type metadata accessor for SGRealtimeWalletOrderExtractionError()
{
  result = qword_1EDC8CF48;
  if (!qword_1EDC8CF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SGRealtimeWalletOrderExtractionError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGRealtimeWalletOrderExtractionError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGRealtimeWalletOrderExtractionError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B818A868()
{
  result = sub_1B81F77E8();
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

void type metadata accessor for SGSuggestionExtractionSource()
{
  if (!qword_1EBA7C648)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA7C648);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_beginAccess();
}

void sub_1B818AC48()
{
  OUTLINED_FUNCTION_39();
  v3 = sub_1B81F80A8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7C6B0);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  sub_1B81F8078();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v10 = *sub_1B8186EF0();
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC738]) initWithFrame_];
  [v11 addTarget:v0 action:sel_dismissalPressed_ forControlEvents:64];
  sub_1B8189AF0(0, &qword_1EDC8AF10);
  v12 = sub_1B818AED8();
  [v11 setImage:v12 forState:0];

  sub_1B8189AF0(0, &unk_1EBA7C6C0);
  v13 = v11;
  sub_1B81F8068();
  sub_1B81F8098();
  sub_1B8186EFC();
  sub_1B81F8088();
  (*(v5 + 8))(v1, v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  OUTLINED_FUNCTION_62();
  v14 = sub_1B81F9158();
  [v13 setHoverStyle_];

  [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  OUTLINED_FUNCTION_29();
}

id sub_1B818AED8()
{
  v0 = sub_1B81F8F58();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

void sub_1B818AF3C()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_0();
  v1 = (*(v0 + 128))();
  v2 = sub_1B8190624(v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1B8189548(v3);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8CBB0B0](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 respondsToSelector_] && (objc_msgSend(v7, sel_respondsToSelector_, sel_suggestionActionButtonType) & 1) != 0)
      {
        [v7 suggestionActionButtonType];

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
      ++v6;
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:

LABEL_16:
    OUTLINED_FUNCTION_37();
  }
}

uint64_t sub_1B818B08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  type metadata accessor for SGSuggestionStoreWrapper(0);
  OUTLINED_FUNCTION_7_0();
  sub_1B8190720(v12, v13);
  OUTLINED_FUNCTION_44();
  result = sub_1B81F8268();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = result;
  *(a5 + 48) = v15;
  return result;
}

uint64_t sub_1B818B160()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = (*(**(v0 + 48) + 96))();
  v5 = sub_1B81880A0(v2, v3, v4);

  v13 = v5;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = *(v1 + 48);
  sub_1B81906A0(v1, v12);
  v8 = OUTLINED_FUNCTION_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C6D8);
  OUTLINED_FUNCTION_62();
  sub_1B81930C0(v9, v10);
  sub_1B8190720(&qword_1EBA7C6E8, type metadata accessor for SGBannerContent);
  sub_1B8190768();
  return sub_1B81F8E38();
}

void sub_1B818B310()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C760);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_49();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v9);
  v10 = sub_1B81F8378();
  OUTLINED_FUNCTION_2();
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB28);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v117 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB30);
  OUTLINED_FUNCTION_1_0();
  v125 = v18;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  v132 = v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C738);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15_0();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v117 - v27);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32();
  v130 = v30;
  v31 = *v5;
  if ((*(v3 + 24) & 1) != 0 && *(v3 + 32) == 6)
  {
    v32 = *(v3 + 16);
    v33 = v31;
    v34 = v32;
    v35 = sub_1B81C0B54(v33);
    v134 = 0;
    *&v135 = v33;
    *(&v135 + 1) = v34;
    LOWORD(v136[0]) = v35 & 0x101;
    BYTE2(v136[0]) = BYTE2(v35) & 1;
    memset(v136 + 8, 0, 33);
    v36 = v136[0];
    *v28 = v135;
    v28[1] = v36;
    v28[2] = v136[1];
    *(v28 + 41) = *(&v136[1] + 9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_51();
    sub_1B8192D38(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_16_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40);
    sub_1B8190880();
    sub_1B819098C();
    sub_1B81F8718();
    OUTLINED_FUNCTION_59();
    sub_1B8192D38(v41, v42, v43);
    swift_storeEnumTagMultiPayload();
    sub_1B81907F4();
    sub_1B8190AC4();
    sub_1B81F8718();
    OUTLINED_FUNCTION_53();
    sub_1B8192D84(v44, v45);
    OUTLINED_FUNCTION_42();
LABEL_10:
    sub_1B8192D84(v46, v47);
    goto LABEL_11;
  }

  v128 = v24;
  v48 = j__OUTLINED_FUNCTION_18();
  v49 = *(v3 + 16);
  if (v48)
  {
    v118 = v1;
    v119 = v7;
    v120 = v8;
    v50 = v31;
    v51 = v49;
    v52 = sub_1B81D2A5C(v50);
    v54 = v53;
    *&v135 = v52;
    *(&v135 + 1) = v53;
    LOWORD(v136[0]) = v55 & 0x101;
    BYTE2(v136[0]) = v56 & 1;
    sub_1B81F81D8();
    sub_1B8190A70();
    sub_1B81F8B88();

    v57 = *(v10 + 20);
    v58 = *MEMORY[0x1E697F468];
    v59 = sub_1B81F8548();
    OUTLINED_FUNCTION_2();
    v61 = *(v60 + 104);
    v61(&v17[v57], v58, v59);
    __asm { FMOV            V0.2D, #5.0 }

    v117 = _Q0;
    *v17 = _Q0;
    v67 = sub_1B81F8C68();
    v68 = sub_1B81F88D8();
    v69 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB48) + 36)];
    *v69 = v67;
    v69[8] = v68;
    v70 = objc_opt_self();
    v71 = [v70 systemGray6Color];
    v72 = sub_1B81F8C38();
    KeyPath = swift_getKeyPath();
    v74 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB50) + 36)];
    *v74 = KeyPath;
    v74[1] = v72;
    v75 = v122;
    v61(v122 + *(v10 + 20), v58, v59);
    *v75 = v117;
    v76 = [v70 systemGray4Color];
    v77 = sub_1B81F8C38();
    sub_1B81F81A8();
    v78 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB58) + 36)];
    sub_1B8192C38();
    v79 = &v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB60) + 36)];
    v80 = v136[0];
    *v79 = v135;
    *(v79 + 1) = v80;
    *(v79 + 4) = *&v136[1];
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB68);
    *&v78[*(v81 + 52)] = v77;
    *&v78[*(v81 + 56)] = 256;
    v82 = sub_1B81F8EB8();
    v84 = v83;
    sub_1B8192C90(v75);
    v85 = &v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB70) + 36)];
    *v85 = v82;
    v85[1] = v84;
    v86 = sub_1B81F8EB8();
    v88 = v87;
    v89 = &v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB78) + 36)];
    *v89 = v86;
    v89[1] = v88;
    v90 = *sub_1B8186DDC();
    v91 = *sub_1B8186DD0();
    v92 = sub_1B81F88D8();
    v93 = v127;
    v94 = &v17[*(v127 + 36)];
    *v94 = v92;
    *(v94 + 1) = v90;
    *(v94 + 2) = v91;
    *(v94 + 3) = 0;
    *(v94 + 4) = v91;
    v94[40] = 0;
    v95 = OUTLINED_FUNCTION_47();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v93);
    v98 = v124;
    sub_1B8192D38(v17, v124, &qword_1EBA7CB28);
    if (__swift_getEnumTagSinglePayload(v98, 1, v93) == 1)
    {
      sub_1B8192D84(v17, &qword_1EBA7CB28);
      v99 = 0;
    }

    else
    {
      sub_1B8192CEC(v98, v121, &qword_1EBA7CB20);
      sub_1B8192DDC();
      v99 = sub_1B81F8DD8();
      sub_1B8192D84(v17, &qword_1EBA7CB28);
    }

    v105 = v123;
    (*(v125 + 32))(v123, v132, v126);
    *(v105 + *(v131 + 36)) = v99;
    OUTLINED_FUNCTION_51();
    sub_1B8192CEC(v106, v107, v108);
    OUTLINED_FUNCTION_51();
    sub_1B8192D38(v109, v110, v111);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C710);
    sub_1B8190880();
    sub_1B819098C();
    sub_1B81F8718();
    OUTLINED_FUNCTION_59();
    sub_1B8192D38(v112, v113, v114);
    swift_storeEnumTagMultiPayload();
    sub_1B81907F4();
    sub_1B8190AC4();
    sub_1B81F8718();
    OUTLINED_FUNCTION_42();
    sub_1B8192D84(v115, v116);
    OUTLINED_FUNCTION_53();
    goto LABEL_10;
  }

  v100 = *(type metadata accessor for SGSuggestionsTableCell(0) + 28);
  *(v0 + v100) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7C770);
  swift_storeEnumTagMultiPayload();
  *v0 = v31;
  *(v0 + 8) = v49;
  v101 = v31;
  v102 = v49;
  v103 = sub_1B81C0B54(v101);
  *(v0 + 16) = v103 & 1;
  *(v0 + 17) = BYTE1(v103) & 1;
  *(v0 + 18) = BYTE2(v103) & 1;
  v104 = v0 + *(v8 + 36);
  *v104 = 0u;
  *(v104 + 16) = 0u;
  *(v104 + 32) = 0;
  sub_1B8192D38(v0, v1, &qword_1EBA7C760);
  swift_storeEnumTagMultiPayload();
  sub_1B81907F4();
  sub_1B8190AC4();
  sub_1B81F8718();
  sub_1B8192D84(v0, &qword_1EBA7C760);
LABEL_11:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B818BE24()
{
  OUTLINED_FUNCTION_46();
  sub_1B81F7A38();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_16_0();

  return v1(v0);
}

void sub_1B818BE7C()
{
  sub_1B8188DE0();

  sub_1B81F8AF8();
  sub_1B81D5DA4();
}

uint64_t sub_1B818BF00()
{
  v1 = OUTLINED_FUNCTION_61();
  sub_1B8190C24(v1, v2, v0);
}

void sub_1B818BF34()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  v3 = sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v7 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = type metadata accessor for SGSuggestionsTableCell(0);
  sub_1B8192D38(v0 + *(v9 + 28), v2, &unk_1EBA7C770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F82B8();
    OUTLINED_FUNCTION_2();
    v10 = OUTLINED_FUNCTION_61();
    v11(v10);
  }

  else
  {
    sub_1B81F9198();
    v12 = sub_1B81F88B8();
    sub_1B81F8018();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_37();
}

double sub_1B818C138()
{
  v1 = sub_1B81F82B8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  (*(v3 + 104))(v0, *MEMORY[0x1E697E6C8], v1);
  sub_1B8190720(&qword_1EBA7C780, MEMORY[0x1E697E730]);
  v5 = sub_1B81F8F38();
  v6 = OUTLINED_FUNCTION_54();
  v7(v6);
  v8 = *sub_1B8186D70();
  if ((v5 & 1) == 0)
  {
    return v8 + *sub_1B8186D7C();
  }

  return v8;
}

void sub_1B818C270()
{
  OUTLINED_FUNCTION_38();
  v1 = sub_1B81F8368();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C788);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  v9 = sub_1B81F8518();
  v10 = *sub_1B8186D64();
  *v0 = v9;
  *(v0 + 8) = v10;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C790);
  sub_1B818C418();
  sub_1B81F8358();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_41();
  sub_1B81930C0(v11, v12);
  OUTLINED_FUNCTION_22_0();
  sub_1B8190720(v13, v14);
  sub_1B81F8B28();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_41();
  sub_1B8192D84(v15, v16);
  OUTLINED_FUNCTION_37();
}

void sub_1B818C418()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA40);
  v9 = OUTLINED_FUNCTION_21(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v11 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  if (*(v5 + 16) == 1)
  {
    v48 = v7;
    v15 = sub_1B81F85C8();
    v16 = *v5;
    OUTLINED_FUNCTION_24_0();
    v18 = (*(v17 + 584))();
    v47 = v15;
    if (v18)
    {

      v53[0] = v16;
      LOWORD(v53[1]) = 0;
    }

    else
    {
      v53[0] = v16;
      LOWORD(v53[1]) = 256;
    }

    sub_1B8191F4C();
    sub_1B8191FA0();
    v24 = v16;
    sub_1B81F8718();
    v20 = v54;
    v25 = v55;
    v26 = BYTE1(v55);
    v27 = v54;

    LOBYTE(v54) = 1;
    LOBYTE(v53[0]) = v26;
    LOBYTE(v52) = 1;
    v22 = 1;
    v28 = v26;
    v50 = 1;
    v29 = sub_1B81F8908();
    sub_1B8186D64();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    LOBYTE(v51) = 0;
    v23 = v28 << 8;
    v49 = v29;
    v21 = v25;
    v7 = v48;
    v19 = v47;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v49 = 0;
    v50 = 0;
    v21 = 0;
    v22 = 0;
    v0 = 0;
    v1 = 0;
    v2 = 0;
    v23 = 65280;
    v3 = 0;
  }

  v47 = v22;
  v48 = v20;
  *v14 = sub_1B81F85D8();
  *(v14 + 1) = 0;
  v14[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA48);
  sub_1B818C7F0(v5, v30, v31, v32, v33, v34, v35, v36, v46, v47, v48, v49, v50, v51, v52, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8]);
  v37 = v23 | v21;
  sub_1B8192D38(v14, v11, &qword_1EBA7CA40);
  v53[0] = v19;
  v53[1] = 0;
  v53[2] = v22;
  v53[3] = v20;
  v53[4] = v37;
  v53[5] = 0;
  v38 = v50;
  v53[6] = v50;
  v39 = v19;
  v40 = v49;
  v53[7] = v49;
  v53[8] = v0;
  v53[9] = v1;
  v53[10] = v2;
  v53[11] = v3;
  LOBYTE(v53[12]) = 0;
  memcpy(v7, v53, 0x61uLL);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA50);
  sub_1B8192D38(v11, v7 + *(v41 + 48), &qword_1EBA7CA40);
  sub_1B8192D38(v53, &v54, &qword_1EBA7CA58);
  OUTLINED_FUNCTION_60();
  sub_1B8192D84(v42, v43);
  OUTLINED_FUNCTION_60();
  sub_1B8192D84(v44, v45);
  v54 = v39;
  v55 = 0;
  v56 = v47;
  v57 = v48;
  v58 = v37;
  v59 = 0;
  v60 = v38;
  v61 = v40;
  v62 = v0;
  v63 = v1;
  v64 = v2;
  v65 = v3;
  v66 = 0;
  sub_1B8192D84(&v54, &qword_1EBA7CA58);
  OUTLINED_FUNCTION_36();
}

void sub_1B818C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_33();
  a23 = v24;
  a24 = v29;
  v31 = v30;
  v160 = v32;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA68);
  v36 = OUTLINED_FUNCTION_21(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v38);
  v148 = sub_1B81F8E28();
  OUTLINED_FUNCTION_1_0();
  v147 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CA70);
  v44 = OUTLINED_FUNCTION_21(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v46);
  v47 = type metadata accessor for SGSuggestionsTableCell(0);
  v153 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v154 = v48;
  OUTLINED_FUNCTION_28(&v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DB00);
  OUTLINED_FUNCTION_1_0();
  v162 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v52);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA80);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v55);
  v56 = sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  v58 = v57;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_6();
  v62 = v61 - v60;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA88);
  v64 = v63 - 8;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v146 - v66;
  *v67 = sub_1B81F8528();
  *(v67 + 1) = 0;
  v171 = 1;
  v67[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA90);
  sub_1B818D664();
  sub_1B81F8948();
  v68 = *MEMORY[0x1E6980EA8];
  v168 = *(v58 + 104);
  v168(v62, v68, v56);
  sub_1B81F89E8();

  v167 = *(v58 + 8);
  v167(v62, v56);
  v69 = sub_1B81F8968();

  KeyPath = swift_getKeyPath();
  v71 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA98) + 36)];
  *v71 = KeyPath;
  v71[1] = v69;
  LOBYTE(v69) = sub_1B81F88E8();
  sub_1B8186D4C();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v72 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CAA0) + 36)];
  *v72 = v69;
  *(v72 + 1) = v25;
  *(v72 + 2) = v26;
  *(v72 + 3) = v27;
  *(v72 + 4) = v28;
  v72[40] = 0;
  LOBYTE(v69) = sub_1B81F8928();
  sub_1B8186D64();
  sub_1B81F8148();
  v73 = *(v64 + 44);
  v169 = v67;
  v74 = &v67[v73];
  v75 = v31;
  *v74 = v69;
  *(v74 + 1) = v76;
  *(v74 + 2) = v77;
  *(v74 + 3) = v78;
  *(v74 + 4) = v79;
  v74[40] = 0;
  if (*(v31 + 17) == 1)
  {
    OUTLINED_FUNCTION_24_0();
    v81 = (*(v80 + 344))();
    if (v82)
    {
      v175 = v81;
      v176 = v82;
      sub_1B8188DE0();
      v166 = sub_1B81F8AF8();
      v165 = v83;
      sub_1B81F8948();
      v168(v62, v68, v56);
      sub_1B81F89E8();

      v167(v62, v56);
      v168 = sub_1B81F8AD8();
      v167 = v84;
      v86 = v85;
      v171 = v87;

      v88 = OUTLINED_FUNCTION_52();
      sub_1B8190C24(v88, v89, v90);

      v91 = sub_1B81F8928();
      sub_1B81F8148();
      OUTLINED_FUNCTION_8_0();
      LOBYTE(v175) = v86 & 1;
      LOBYTE(v174[0]) = 0;
      v165 = v86 & 1;
      v166 = v91;
      goto LABEL_7;
    }

    v168 = 0;
    v167 = 0;
    v92 = &a16;
  }

  else
  {
    v168 = 0;
    v92 = &a12;
  }

  *(v92 - 32) = 0;
  v166 = 0;
  v165 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_7:
  v93 = v172;
  sub_1B81F8E18();
  sub_1B81F88E8();
  sub_1B8186D58();
  sub_1B81F8148();
  OUTLINED_FUNCTION_9_0(v93 + *(v152 + 36), v94, v95, v96, v97);
  OUTLINED_FUNCTION_18_0();
  v98 = v155;
  sub_1B8192C38();
  v99 = (*(v153 + 80) + 16) & ~*(v153 + 80);
  v100 = swift_allocObject();
  v101 = sub_1B819253C(v98, v100 + v99);
  MEMORY[0x1EEE9AC00](v101);
  *(&v146 - 2) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DB40);
  sub_1B81926D4();
  sub_1B81F8D88();
  if (*(v75 + 18) == 1)
  {
    sub_1B81F8E18();
    OUTLINED_FUNCTION_24_0();
    v103 = (*(v102 + 464))();
    if (v103)
    {
      v104 = v103;
      if ([v103 respondsToSelector_])
      {
        v105 = [v104 suggestionDismissAction];
        swift_unknownObjectRelease();
        if (v105)
        {
          v106 = [v105 title];

          v107 = sub_1B81F8F98();
          v109 = v108;

          OUTLINED_FUNCTION_18_0();
          sub_1B8192C38();
          v110 = swift_allocObject();
          v111 = sub_1B819253C(v98, v110 + v99);
          MEMORY[0x1EEE9AC00](v111);
          *(&v146 - 4) = v107;
          *(&v146 - 3) = v109;
          *(&v146 - 2) = v75;
          v112 = v161;
          sub_1B81F8D88();

          (*(v162 + 32))(v151, v112, v164);
          v113 = 0;
LABEL_15:
          v115 = v151;
          __swift_storeEnumTagSinglePayload(v151, v113, 1, v164);
          v116 = v147;
          v117 = *(v147 + 16);
          v118 = v146;
          v119 = v156;
          v120 = v148;
          v117(v146, v156, v148);
          v121 = v149;
          sub_1B8192D38(v115, v149, &qword_1EBA7CA68);
          v122 = v150;
          v117(v150, v118, v120);
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CAF0);
          sub_1B8192D38(v121, v122 + *(v123 + 48), &qword_1EBA7CA68);
          sub_1B8192D84(v115, &qword_1EBA7CA68);
          v124 = *(v116 + 8);
          v124(v119, v120);
          sub_1B8192D84(v121, &qword_1EBA7CA68);
          v124(v118, v120);
          sub_1B8192CEC(v122, v163, &qword_1EBA7CA60);
          v114 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v113 = 1;
    goto LABEL_15;
  }

  v114 = 1;
LABEL_16:
  v125 = v163;
  __swift_storeEnumTagSinglePayload(v163, v114, 1, v158);
  OUTLINED_FUNCTION_42();
  sub_1B8192D38(v126, v127, v128);
  v129 = v157;
  sub_1B8192D38(v172, v157, &qword_1EBA7CA80);
  v130 = v162;
  v131 = *(v162 + 16);
  v132 = v161;
  v133 = v164;
  v131(v161, v173, v164);
  v134 = v159;
  sub_1B8192D38(v125, v159, &unk_1EBA7CA70);
  v135 = v160;
  OUTLINED_FUNCTION_42();
  sub_1B8192D38(v136, v137, v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CAE8);
  v140 = v139[12];
  v174[0] = v168;
  v174[1] = v167;
  v174[2] = v165;
  v174[3] = v171;
  v174[4] = v166;
  v174[5] = 0;
  v174[6] = v26;
  v174[7] = v27;
  v174[8] = v28;
  LOBYTE(v174[9]) = 0;
  memcpy((v135 + v140), v174, 0x49uLL);
  sub_1B8192D38(v129, v135 + v139[16], &qword_1EBA7CA80);
  v131(v135 + v139[20], v132, v133);
  sub_1B8192D38(v134, v135 + v139[24], &unk_1EBA7CA70);
  sub_1B8192D38(v174, &v175, &qword_1EBA7C9D0);
  OUTLINED_FUNCTION_42();
  sub_1B8192D84(v141, v142);
  v143 = *(v130 + 8);
  v143(v173, v133);
  sub_1B8192D84(v172, &qword_1EBA7CA80);
  sub_1B8192D84(v169, &qword_1EBA7CA88);
  sub_1B8192D84(v134, &unk_1EBA7CA70);
  v143(v132, v133);
  v144 = OUTLINED_FUNCTION_64();
  sub_1B8192D84(v144, v145);
  v175 = v168;
  v176 = v167;
  v177 = v165;
  v178 = v171;
  v179 = v166;
  v180 = 0;
  v181 = v26;
  v182 = v27;
  v183 = v28;
  v184 = 0;
  sub_1B8192D84(&v175, &qword_1EBA7C9D0);
  sub_1B8192D84(v170, &qword_1EBA7CA88);
  OUTLINED_FUNCTION_36();
}

void sub_1B818D664()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CAF8);
  OUTLINED_FUNCTION_1_0();
  v50 = v5;
  v51 = v6;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32();
  v9 = v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB08);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = *v2;
  v19 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_24_0();
  v54 = (*(v20 + 296))();
  v55 = v21;
  sub_1B8188DE0();
  v22 = sub_1B81F8AF8();
  v24 = v23;
  v52 = v25;
  v27 = v26;
  v28 = (*((*v19 & *v18) + 0x1D0))();
  if (!v28)
  {
    goto LABEL_6;
  }

  v29 = v28;
  if (([v28 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v30 = [v29 suggestionFeedbackAction];
  swift_unknownObjectRelease();
  if (!v30)
  {
LABEL_6:
    v37 = 1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_55();
  *(swift_allocObject() + 16) = v30;
  v31 = v30;
  v48 = v31;
  v49 = v9;
  sub_1B81F8D88();
  v32 = [v31 title];
  sub_1B81F8F98();

  OUTLINED_FUNCTION_25();
  sub_1B81930C0(v33, v34);
  v35 = v49;
  v36 = v50;
  sub_1B81F8B58();

  (*(v51 + 8))(v35, v36);
  sub_1B8192CEC(v12, v17, &qword_1EBA7CB00);
  v37 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v17, v37, 1, v53);
  v38 = OUTLINED_FUNCTION_63();
  sub_1B8192D38(v38, v39, &qword_1EBA7CB08);
  *v4 = v22;
  *(v4 + 8) = v24;
  v40 = v52 & 1;
  *(v4 + 16) = v52 & 1;
  *(v4 + 24) = v27;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB10);
  sub_1B8192D38(v0, v4 + *(v41 + 48), &qword_1EBA7CB08);
  v42 = OUTLINED_FUNCTION_64();
  sub_1B8192C18(v42, v43, v40);

  sub_1B8192D84(v17, &qword_1EBA7CB08);
  v44 = OUTLINED_FUNCTION_54();
  sub_1B8192D84(v44, v45);
  v46 = OUTLINED_FUNCTION_64();
  sub_1B8190C24(v46, v47, v40);

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B818DA8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B81F8CF8();
  *a1 = result;
  return result;
}

void sub_1B818DAD4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_46();
  v21 = sub_1B81F82B8();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_24_0();
  v23 = (*(v7 + 440))();
  v24 = v8;
  sub_1B8188DE0();
  v9 = sub_1B81F8AF8();
  v11 = v10;
  v13 = v12;
  if (qword_1EDC8BF60 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v20 = sub_1B81F8AB8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1B8190C24(v9, v11, v13 & 1);

  sub_1B81F8EC8();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_11_0();
  v25 = v17 & 1;
  sub_1B818BF34();
  sub_1B818C138();
  (*(v2 + 8))(v6, v21);
  sub_1B81F8EB8();
  OUTLINED_FUNCTION_43();
  *v0 = v20;
  *(v0 + 8) = v15;
  *(v0 + 16) = v17 & 1;
  *(v0 + 24) = v19;
  memcpy((v0 + 32), v22, 0x70uLL);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
}

uint64_t *sub_1B818DCDC()
{
  if (qword_1EDC8BF60 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  return &qword_1EBA7F578;
}

uint64_t sub_1B818DD1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA38);
    v2 = sub_1B81F9358();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1B8192514(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1B8192514(v29, v30);
    result = sub_1B81F9238();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1B8192514(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1B818DFCC()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_46();
  v23 = sub_1B81F82B8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v25 = v4;
  v26 = v2;
  sub_1B8188DE0();

  v11 = sub_1B81F8AF8();
  v13 = v12;
  v15 = v14;
  if (qword_1EDC8BF60 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v16 = sub_1B81F8AB8();
  v22 = v17;
  v19 = v18;
  v21 = v20;
  sub_1B8190C24(v11, v13, v15 & 1);

  sub_1B81F8EC8();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_11_0();
  v19 &= 1u;
  v27 = v19;
  sub_1B818BF34();
  sub_1B818C138();
  (*(v6 + 8))(v10, v23);
  sub_1B81F8EB8();
  OUTLINED_FUNCTION_43();
  *v0 = v16;
  *(v0 + 8) = v22;
  *(v0 + 16) = v19;
  *(v0 + 24) = v21;
  memcpy((v0 + 32), v24, 0x70uLL);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
}

void sub_1B818E1A0()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7A8);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7B0) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = sub_1B81F8518();
  v10 = *sub_1B8186EE4();
  *v6 = v9;
  *(v6 + 1) = v10;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7B8);
  sub_1B818E35C();
  sub_1B81F8EC8();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_62();
  sub_1B8192CEC(v11, v12, v13);
  memcpy((v0 + *(v7 + 44)), v15, 0x70uLL);
  v14 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7C0) + 36);
  sub_1B81F8E78();
  LOBYTE(v9) = sub_1B81F88D8();
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7C8) + 36)) = v9;
  sub_1B8192CEC(v0, v2, &qword_1EBA7C7B0);
  OUTLINED_FUNCTION_37();
}

void sub_1B818E35C()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C980);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  if (v6)
  {
    v38 = v6;
    v39 = v8;
    v40 = v12;
    v37 = sub_1B81F85C8();
    v18 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x248);
    v19 = v10;
    v20 = v18();

    if (v20)
    {

      v51[0] = v10;
      v21 = 1;
    }

    else
    {
      v51[0] = v10;
      v21 = 257;
    }

    LOWORD(v51[1]) = v21;
    sub_1B8191F4C();
    sub_1B8191FA0();
    sub_1B81F8718();
    v22 = v52[0];
    v23 = v52[1];
    v24 = BYTE1(v52[1]);
    v25 = v52[0];

    v43 = 1;
    v42 = v24;
    v41 = 1;
    v26 = sub_1B81F8908();
    sub_1B8186EE4();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    LOBYTE(v52[0]) = 0;
    v27 = sub_1B81F88E8();
    sub_1B8186ED8();
    sub_1B81F8148();
    v51[0] = v37;
    v51[1] = 0;
    LOBYTE(v51[2]) = 1;
    *(&v51[2] + 1) = v50[0];
    HIDWORD(v51[2]) = *(v50 + 3);
    v51[3] = v22;
    LOBYTE(v51[4]) = v23;
    BYTE1(v51[4]) = v24;
    HIWORD(v51[4]) = v48;
    *(&v51[4] + 2) = v47;
    v51[5] = 0;
    LOBYTE(v51[6]) = 1;
    HIDWORD(v51[6]) = *(v49 + 3);
    *(&v51[6] + 1) = v49[0];
    LOBYTE(v51[7]) = v26;
    HIDWORD(v51[7]) = *&v46[3];
    *(&v51[7] + 1) = *v46;
    v51[8] = v1;
    v51[9] = v2;
    v51[10] = v3;
    v51[11] = v4;
    LOBYTE(v51[12]) = 0;
    HIDWORD(v51[12]) = *&v45[3];
    *(&v51[12] + 1) = *v45;
    LOBYTE(v51[13]) = v27;
    HIDWORD(v51[13]) = *&v44[3];
    *(&v51[13] + 1) = *v44;
    v51[14] = v28;
    v51[15] = v29;
    v51[16] = v30;
    v51[17] = v31;
    LOBYTE(v51[18]) = 0;
    nullsub_1(v51);
    memcpy(v52, v51, 0x91uLL);
    v12 = v40;
    LOWORD(v6) = v38;
  }

  else
  {
    sub_1B8191F1C(v52);
  }

  *v17 = sub_1B81F85D8();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C988);
  sub_1B818E728(v10, v6 & 0x101, &v17[*(v32 + 44)]);
  memcpy(v49, v52, 0x91uLL);
  sub_1B8192D38(v17, v0, &qword_1EBA7C980);
  memcpy(v50, v49, 0x91uLL);
  memcpy(v12, v49, 0x91uLL);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C990);
  sub_1B8192D38(v0, v12 + *(v33 + 48), &qword_1EBA7C980);
  sub_1B8192D38(v50, v51, &qword_1EBA7C998);
  sub_1B8192D84(v17, &qword_1EBA7C980);
  v34 = OUTLINED_FUNCTION_54();
  sub_1B8192D84(v34, v35);
  memcpy(v51, v49, 0x91uLL);
  sub_1B8192D84(v51, &qword_1EBA7C998);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1B818E728@<X0>(void *a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9B0);
  v5 = OUTLINED_FUNCTION_21(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v71 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v69 = v8;
  v9 = sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v14 - v13;
  v86 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x128))();
  v87 = v16;
  sub_1B8188DE0();
  v17 = sub_1B81F8AF8();
  v19 = v18;
  v21 = v20;
  sub_1B81F8A18();
  v59 = *MEMORY[0x1E6980EA8];
  v57 = *(v11 + 104);
  v57(v15);
  sub_1B81F89E8();

  v55 = *(v11 + 8);
  v55(v15, v9);
  v22 = sub_1B81F8AD8();
  v79 = v23;
  v80 = v22;
  v25 = v24;
  v81 = v26;

  sub_1B8190C24(v17, v19, v21 & 1);

  v78 = sub_1B81F88E8();
  sub_1B8186ED8();
  sub_1B81F8148();
  v67 = v28;
  v68 = v27;
  v65 = v30;
  v66 = v29;
  v31 = v25 & 1;
  LOBYTE(v82[0]) = v25 & 1;
  LOBYTE(v84[0]) = 0;
  v77 = sub_1B81F8928();
  sub_1B8186EE4();
  v32 = sub_1B81F8148();
  v75 = v34;
  v76 = v33;
  v73 = v36;
  v74 = v35;
  LOBYTE(v86) = 0;
  if ((a2 & 0x100) != 0)
  {
    v39 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x158))(v32);
    if (v40)
    {
      v86 = v39;
      v87 = v40;
      sub_1B81F8AF8();
      OUTLINED_FUNCTION_48();
      sub_1B81F8A08();
      (v57)(v15, v59, v9);
      sub_1B81F89E8();
      v31 = v25 & 1;

      v55(v15, v9);
      v41 = sub_1B81F8AD8();
      v63 = v42;
      v64 = v41;
      v44 = v43;
      v61 = v45;

      sub_1B8190C24(a1, v19, a2 & 1);

      v46 = sub_1B81F8928();
      sub_1B81F8148();
      v62 = v47;
      v58 = v49;
      v60 = v48;
      v56 = v50;
      LOBYTE(v86) = v44 & 1;
      LOBYTE(v82[0]) = 0;
      v38 = v44 & 1;
      v37 = v46;
    }

    else
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v61 = 0;
      v37 = 0;
      v38 = 0;
      v58 = 0;
      v60 = 0;
      v56 = 0;
    }
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v37 = 0;
    v38 = 0;
    v58 = 0;
    v60 = 0;
    v61 = 1;
    v56 = 0;
  }

  v51 = sub_1B81F8518();
  v52 = *sub_1B8186ECC();
  *v69 = v51;
  *(v69 + 8) = v52;
  *(v69 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9B8);
  sub_1B818EE68();
  sub_1B8192D38(v69, v71, &qword_1EBA7C9B0);
  v82[0] = v80;
  v82[1] = v79;
  LOBYTE(v82[2]) = v31;
  *(&v82[2] + 1) = *v107;
  HIDWORD(v82[2]) = *&v107[3];
  v82[3] = v81;
  LOBYTE(v82[4]) = v78;
  *(&v82[4] + 1) = *v106;
  HIDWORD(v82[4]) = *&v106[3];
  v82[5] = v68;
  v82[6] = v67;
  v82[7] = v66;
  v82[8] = v65;
  LOBYTE(v82[9]) = 0;
  HIDWORD(v82[9]) = *(v109 + 3);
  *(&v82[9] + 1) = v109[0];
  LOBYTE(v82[10]) = v77;
  HIDWORD(v82[10]) = *&v108[3];
  *(&v82[10] + 1) = *v108;
  v82[11] = v76;
  v82[12] = v75;
  v82[13] = v74;
  v82[14] = v73;
  LOBYTE(v82[15]) = 0;
  memcpy(a3, v82, 0x79uLL);
  v83[0] = v64;
  v83[1] = v63;
  v83[2] = v38;
  v83[3] = v61;
  v83[4] = v37;
  v83[5] = v62;
  v83[6] = v60;
  v83[7] = v58;
  v83[8] = v56;
  LOBYTE(v83[9]) = 0;
  memcpy((a3 + 128), v83, 0x49uLL);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9C0);
  sub_1B8192D38(v71, a3 + *(v53 + 64), &qword_1EBA7C9B0);
  sub_1B8192D38(v82, &v86, &qword_1EBA7C9C8);
  sub_1B8192D38(v83, &v86, &qword_1EBA7C9D0);
  sub_1B8192D84(v69, &qword_1EBA7C9B0);
  sub_1B8192D84(v71, &qword_1EBA7C9B0);
  v84[0] = v64;
  v84[1] = v63;
  v84[2] = v38;
  v84[3] = v61;
  v84[4] = v37;
  v84[5] = v62;
  v84[6] = v60;
  v84[7] = v58;
  v84[8] = v56;
  v85 = 0;
  sub_1B8192D84(v84, &qword_1EBA7C9D0);
  v86 = v80;
  v87 = v79;
  v88 = v31;
  *v89 = *v107;
  *&v89[3] = *&v107[3];
  v90 = v81;
  v91 = v78;
  *v92 = *v106;
  *&v92[3] = *&v106[3];
  v93 = v68;
  v94 = v67;
  v95 = v66;
  v96 = v65;
  v97 = 0;
  *&v98[3] = *(v109 + 3);
  *v98 = v109[0];
  v99 = v77;
  *&v100[3] = *&v108[3];
  *v100 = *v108;
  v101 = v76;
  v102 = v75;
  v103 = v74;
  v104 = v73;
  v105 = 0;
  return sub_1B8192D84(&v86, &qword_1EBA7C9C8);
}

void sub_1B818EE68()
{
  OUTLINED_FUNCTION_33();
  LODWORD(v149) = v5;
  v7 = v6;
  v9 = v8;
  v147 = v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v139 = v12;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v141 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9E8);
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v146 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  v145 = v19;
  v20 = sub_1B81F8598();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9F0);
  OUTLINED_FUNCTION_1_0();
  v29 = v28;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_49();
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C9F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  v143 = v32;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v119 - v34;
  v36 = swift_allocObject();
  *(v36 + 16) = v9;
  *(v36 + 24) = v7;
  v37 = v149;
  *(v36 + 32) = v149 & 1;
  *(v36 + 33) = BYTE1(v37) & 1;
  *(v36 + 34) = BYTE2(v37) & 1;
  v150 = v9;
  v151 = v7;
  v130 = v37 & 1;
  v152 = v37 & 0x101;
  v129 = (v37 >> 8) & 1;
  v153 = BYTE2(v37) & 1;
  v140 = v9;
  v131 = v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA00);
  v39 = sub_1B819218C();
  v133 = v38;
  v132 = v39;
  sub_1B81F8D88();
  sub_1B81F8588();
  OUTLINED_FUNCTION_25();
  v41 = sub_1B81930C0(v40, &qword_1EBA7C9F0);
  v42 = sub_1B8190720(&qword_1EDC8A3A8, MEMORY[0x1E697C540]);
  v128 = v41;
  v127 = v42;
  sub_1B81F8B28();
  v43 = *(v22 + 8);
  v135 = v26;
  v138 = v20;
  v137 = v22 + 8;
  v126 = v43;
  v43(v26, v20);
  v44 = *(v29 + 8);
  v134 = v0;
  v136 = v27;
  v44(v0, v27);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CA10);
  v46 = &v35[*(v45 + 36)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1F0);
  v48 = *(v47 + 28);
  v49 = *MEMORY[0x1E697DC20];
  v50 = sub_1B81F8188();
  OUTLINED_FUNCTION_2();
  v52 = *(v51 + 104);
  v125 = v49;
  v124 = v52;
  v123 = v51 + 104;
  v52(v46 + v48, v49, v50);
  *v46 = swift_getKeyPath();
  LOBYTE(v46) = sub_1B81F88E8();
  sub_1B8186ED8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA20);
  v54 = &v35[*(v53 + 36)];
  *v54 = v46;
  *(v54 + 1) = v1;
  *(v54 + 2) = v2;
  *(v54 + 3) = v3;
  *(v54 + 4) = v4;
  v54[40] = 0;
  sub_1B81F88F8();
  sub_1B81F8148();
  v55 = &v35[*(v148 + 36)];
  v56 = v149;
  OUTLINED_FUNCTION_9_0(v55, v57, v58, v59, v60);
  if ((v56 & 0x10000) != 0)
  {
    v120 = v53;
    v121 = v47;
    v122 = v45;
    v63 = v140;
    OUTLINED_FUNCTION_24_0();
    v65 = (*(v64 + 464))();
    if (v65)
    {
      v66 = v65;
      v67 = v63;
      if ([v65 respondsToSelector_])
      {
        v68 = [v66 suggestionDismissAction];
        swift_unknownObjectRelease();
        if (v68)
        {
          v149 = v44;
          v69 = (v56 & 0x10000u) >> 16;
          v70 = [v68 title];

          v71 = sub_1B81F8F98();
          v73 = v72;

          v74 = swift_allocObject();
          v119 = &v119;
          v75 = v131;
          *(v74 + 16) = v67;
          *(v74 + 24) = v75;
          *(v74 + 32) = v130;
          *(v74 + 33) = v129;
          *(v74 + 34) = v69;
          MEMORY[0x1EEE9AC00](v74);
          *(&v119 - 2) = v71;
          *(&v119 - 1) = v73;
          v76 = v67;
          v77 = v75;
          v78 = v134;
          sub_1B81F8D88();

          v79 = v135;
          sub_1B81F8588();
          v80 = v138;
          v81 = v139;
          v82 = v136;
          sub_1B81F8B28();
          v126(v79, v80);
          v149(v78, v82);
          v83 = (v81 + *(v122 + 36));
          v124(v83 + *(v121 + 28), v125, v50);
          *v83 = swift_getKeyPath();
          sub_1B81F88E8();
          sub_1B81F8148();
          OUTLINED_FUNCTION_9_0(v81 + *(v120 + 36), v84, v85, v86, v87);
          sub_1B81F88F8();
          sub_1B81F8148();
          OUTLINED_FUNCTION_9_0(v81 + *(v148 + 36), v88, v89, v90, v91);
          sub_1B81F8928();
          sub_1B8186EE4();
          sub_1B81F8148();
          v92 = v142;
          OUTLINED_FUNCTION_9_0(v81 + *(v142 + 36), v93, v94, v95, v96);
          v97 = v141;
          sub_1B8192CEC(v81, v141, &qword_1EBA7C9D8);
          v98 = 0;
LABEL_9:
          __swift_storeEnumTagSinglePayload(v97, v98, 1, v92);
          v62 = v145;
          sub_1B8192CEC(v97, v145, &qword_1EBA7C9E0);
          v61 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v98 = 1;
    v97 = v141;
    v92 = v142;
    goto LABEL_9;
  }

  v61 = 1;
  v62 = v145;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v62, v61, 1, v144);
  OUTLINED_FUNCTION_51();
  sub_1B8192D38(v99, v100, v101);
  v102 = v146;
  OUTLINED_FUNCTION_59();
  sub_1B8192D38(v103, v104, v105);
  v106 = v147;
  OUTLINED_FUNCTION_51();
  sub_1B8192D38(v107, v108, v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA28);
  sub_1B8192D38(v102, v106 + *(v110 + 48), &qword_1EBA7C9E8);
  OUTLINED_FUNCTION_41();
  sub_1B8192D84(v111, v112);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v113, v114);
  OUTLINED_FUNCTION_41();
  sub_1B8192D84(v115, v116);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v117, v118);
  OUTLINED_FUNCTION_36();
}

void sub_1B818F81C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  OUTLINED_FUNCTION_46();
  v2 = sub_1B81F8D08();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C7D0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_0();
  v11 = sub_1B8188B60(v1);
  if (v11)
  {
    v12 = v11;
    sub_1B81F8CE8();
    (*(v4 + 104))(v8, *MEMORY[0x1E6981630], v2);
    sub_1B81F8D38();

    (*(v4 + 8))(v8, v2);
    v13 = [objc_opt_self() currentDevice];
    [v13 userInterfaceIdiom];

    v14 = *sub_1B8186D4C();
    v15 = OUTLINED_FUNCTION_44();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v15);
    v17 = sub_1B8190C34();
    sub_1B81D5C4C(v16, v17, v14);

    OUTLINED_FUNCTION_60();
    sub_1B8192D84(v18, v19);
    v20 = OUTLINED_FUNCTION_61();
    v21(v20);
    v22 = OUTLINED_FUNCTION_47();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v9);
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_29();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }
}

void sub_1B818FAD4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C828);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_0();
  v4 = sub_1B8188A38(v1);
  if (v4)
  {
    v5 = v4;
    v6 = nullsub_1(v5);
    v7 = [objc_opt_self() currentDevice];
    [v7 userInterfaceIdiom];

    v8 = *sub_1B8186D4C();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C830);
    v10 = sub_1B8190F04();
    sub_1B81D5C4C(v9, v10, v8);

    v11 = OUTLINED_FUNCTION_61();
    v12(v11);
    v13 = OUTLINED_FUNCTION_47();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_29();

    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

void sub_1B818FC7C()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C858);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_65();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C860);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  if (j__OUTLINED_FUNCTION_18())
  {
    sub_1B8186D88();
  }

  else
  {
    sub_1B8186D40();
  }

  sub_1B81F8EA8();
  sub_1B81F8218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C868);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(v0, v2);
  v7 = (v0 + *(v4 + 36));
  *v7 = v11;
  v7[1] = v12;
  v7[2] = v13;
  OUTLINED_FUNCTION_42();
  sub_1B8192D38(v8, v9, v10);
  OUTLINED_FUNCTION_54();
  swift_storeEnumTagMultiPayload();
  sub_1B8191070();
  sub_1B81F8718();
  sub_1B8192D84(v0, &qword_1EBA7C860);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B818FE64()
{
  v0 = [objc_opt_self() linkColor];
  result = sub_1B81F8C38();
  qword_1EBA7F578 = result;
  return result;
}

void sub_1B818FEA4()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C880);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C888);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) != 0 && v3 == 6)
  {
    sub_1B81F81D8();
    v13 = OUTLINED_FUNCTION_64();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13);
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v14, &qword_1EBA7C890);
    sub_1B81F8B88();
    OUTLINED_FUNCTION_59();
    v15();
    OUTLINED_FUNCTION_52();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_63();
    sub_1B81F8718();
    (*(v11 + 8))(v1, v9);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_44();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_2();
    (*(v18 + 16))(v0, v7, v17);
    OUTLINED_FUNCTION_52();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_60();
    sub_1B81930C0(v19, v20);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_63();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81900F4()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C8B0);
  OUTLINED_FUNCTION_2();
  if ((v5 & 1) != 0 && v3 == 6)
  {
    v13 = OUTLINED_FUNCTION_44();
    v14(v13);
    *(v1 + *(v9 + 36)) = 256;
    sub_1B8192D38(v1, v0, &qword_1EBA7C8A8);
    swift_storeEnumTagMultiPayload();
    sub_1B8191128();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v15, v16);
    OUTLINED_FUNCTION_41();
    sub_1B81F8718();
    v17 = OUTLINED_FUNCTION_44();
    sub_1B8192D84(v17, v18);
  }

  else
  {
    (*(v12 + 16))(v0, v7, v11);
    swift_storeEnumTagMultiPayload();
    sub_1B8191128();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v19, v20);
    OUTLINED_FUNCTION_41();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B8190310(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v11[0] = a1;
  v12 = v9;
  return MEMORY[0x1B8CBAA00](v11, a2, a4, a3);
}

uint64_t sub_1B81903B8@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B819040C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B81F8428();
  *a1 = result;
  return result;
}

uint64_t sub_1B8190464@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B81F84A8();
  *a1 = result;
  return result;
}

uint64_t sub_1B819050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  return a6(v6);
}

uint64_t sub_1B81905C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B81F84C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B8190624(void *a1)
{
  v2 = [a1 suggestions];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v3 = sub_1B81F90C8();

  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B8190720(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8190768()
{
  result = qword_1EBA7C6F0;
  if (!qword_1EBA7C6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C6D8);
    sub_1B81907F4();
    sub_1B8190AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C6F0);
  }

  return result;
}

unint64_t sub_1B81907F4()
{
  result = qword_1EBA7C6F8;
  if (!qword_1EBA7C6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C700);
    sub_1B8190880();
    sub_1B819098C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C6F8);
  }

  return result;
}

unint64_t sub_1B8190880()
{
  result = qword_1EBA7C708;
  if (!qword_1EBA7C708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C710);
    sub_1B8190938();
    sub_1B81930C0(&qword_1EBA7C720, &qword_1EBA7C728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C708);
  }

  return result;
}

unint64_t sub_1B8190938()
{
  result = qword_1EBA7C718;
  if (!qword_1EBA7C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C718);
  }

  return result;
}

unint64_t sub_1B819098C()
{
  result = qword_1EBA7C730;
  if (!qword_1EBA7C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C738);
    sub_1B8190A70();
    swift_getOpaqueTypeConformance2();
    sub_1B81930C0(&qword_1EBA7C748, &qword_1EBA7C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C730);
  }

  return result;
}

unint64_t sub_1B8190A70()
{
  result = qword_1EBA7C740;
  if (!qword_1EBA7C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C740);
  }

  return result;
}

unint64_t sub_1B8190AC4()
{
  result = qword_1EBA7C758;
  if (!qword_1EBA7C758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C760);
    sub_1B8190720(&qword_1EBA7C768, type metadata accessor for SGSuggestionsTableCell);
    sub_1B81930C0(&qword_1EBA7C720, &qword_1EBA7C728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C758);
  }

  return result;
}

uint64_t sub_1B8190BEC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8190C24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1B8190C34()
{
  result = qword_1EBA7C7E0;
  if (!qword_1EBA7C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7D8);
    sub_1B8190CC0();
    sub_1B8190EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C7E0);
  }

  return result;
}

unint64_t sub_1B8190CC0()
{
  result = qword_1EBA7C7E8;
  if (!qword_1EBA7C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7F0);
    sub_1B8190D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C7E8);
  }

  return result;
}

unint64_t sub_1B8190D4C()
{
  result = qword_1EBA7C7F8;
  if (!qword_1EBA7C7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C800);
    sub_1B8190DD8();
    sub_1B8190E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C7F8);
  }

  return result;
}

unint64_t sub_1B8190DD8()
{
  result = qword_1EBA7C808;
  if (!qword_1EBA7C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C808);
  }

  return result;
}

unint64_t sub_1B8190E5C()
{
  result = qword_1EBA7C818;
  if (!qword_1EBA7C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C818);
  }

  return result;
}

unint64_t sub_1B8190EB0()
{
  result = qword_1EBA7C820;
  if (!qword_1EBA7C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C820);
  }

  return result;
}

unint64_t sub_1B8190F04()
{
  result = qword_1EBA7C838;
  if (!qword_1EBA7C838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C830);
    sub_1B8190F90();
    sub_1B8190E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C838);
  }

  return result;
}

unint64_t sub_1B8190F90()
{
  result = qword_1EBA7C840;
  if (!qword_1EBA7C840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7C848);
    sub_1B819101C();
    sub_1B8190EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C840);
  }

  return result;
}

unint64_t sub_1B819101C()
{
  result = qword_1EDC8A490;
  if (!qword_1EDC8A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A490);
  }

  return result;
}

unint64_t sub_1B8191070()
{
  result = qword_1EBA7C870;
  if (!qword_1EBA7C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C860);
    sub_1B81930C0(&qword_1EBA7C878, &qword_1EBA7C868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C870);
  }

  return result;
}

unint64_t sub_1B8191128()
{
  result = qword_1EBA7C8B8;
  if (!qword_1EBA7C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C8A8);
    sub_1B81930C0(&qword_1EBA7C8C0, &qword_1EBA7C8B0);
    sub_1B81930C0(&qword_1EBA7C8C8, &qword_1EBA7C8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C8B8);
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

uint64_t sub_1B8191348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
  }

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

  return OUTLINED_FUNCTION_40(v2);
}

uint64_t sub_1B8191384(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_56(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_56(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B8191428()
{
  result = sub_1B81F7A38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B819149C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
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

  return OUTLINED_FUNCTION_40(v2);
}

uint64_t sub_1B81914D8(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_56(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_56(result, a2);
    }
  }

  return result;
}

void sub_1B8191544()
{
  type metadata accessor for SGBannerContent();
  if (v0 <= 0x3F)
  {
    sub_1B8189AF0(319, &qword_1EDC8AF50);
    if (v1 <= 0x3F)
    {
      sub_1B81915F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B81915F8()
{
  if (!qword_1EBA7C8E8)
  {
    sub_1B81F82B8();
    v0 = sub_1B81F8198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA7C8E8);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1B8191664(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
  }

  if (a2 < 0 && *(a1 + 19))
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

  return OUTLINED_FUNCTION_40(v2);
}

void *sub_1B81916A0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

      return OUTLINED_FUNCTION_57(result, a2);
    }

    *(result + 19) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57(result, a2);
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

uint64_t sub_1B8191714(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_40(-1);
  }

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

  return OUTLINED_FUNCTION_40(v2);
}

void *sub_1B8191754(void *result, int a2, int a3)
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

      return OUTLINED_FUNCTION_57(result, a2);
    }

    *(result + 9) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B81917C0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t sub_1B8191810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B8191860()
{
  result = qword_1EBA7C8F0;
  if (!qword_1EBA7C8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C8F8);
    sub_1B8190768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C8F0);
  }

  return result;
}

unint64_t sub_1B81918E4()
{
  result = qword_1EBA7C900;
  if (!qword_1EBA7C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7C0);
    sub_1B819199C();
    sub_1B81930C0(&qword_1EDC8A2F8, &qword_1EBA7C7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C900);
  }

  return result;
}

unint64_t sub_1B819199C()
{
  result = qword_1EBA7C908;
  if (!qword_1EBA7C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7B0);
    sub_1B81930C0(&unk_1EBA7C910, &qword_1EBA7C7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C908);
  }

  return result;
}

unint64_t sub_1B8191A54()
{
  result = qword_1EBA7C920;
  if (!qword_1EBA7C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C7D8);
    sub_1B8190C34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C920);
  }

  return result;
}

unint64_t sub_1B8191B14()
{
  result = qword_1EBA7C930;
  if (!qword_1EBA7C930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C830);
    sub_1B8190F04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C930);
  }

  return result;
}

unint64_t sub_1B8191BD4()
{
  result = qword_1EBA7C940;
  if (!qword_1EBA7C940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C948);
    sub_1B8191070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C940);
  }

  return result;
}

unint64_t sub_1B8191C58()
{
  result = qword_1EBA7C950;
  if (!qword_1EBA7C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C890);
    sub_1B81930C0(&qword_1EBA7C898, &qword_1EBA7C890);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C950);
  }

  return result;
}

unint64_t sub_1B8191D50()
{
  result = qword_1EBA7C960;
  if (!qword_1EBA7C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7C968);
    sub_1B8191128();
    sub_1B81930C0(&qword_1EBA7C8C0, &qword_1EBA7C8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C960);
  }

  return result;
}

unint64_t sub_1B8191E08()
{
  result = qword_1EBA7C970;
  if (!qword_1EBA7C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C970);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx015CoreSuggestionsB026CustomizationBCellModifierVGAaBHPxAaBHD1__AgA0cJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1B81F8308();
  a3();
  return swift_getWitnessTable();
}

void type metadata accessor for UIUserInterfaceIdiom()
{
  if (!qword_1EDC8AF28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC8AF28);
    }
  }
}

double sub_1B8191F1C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 65280;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  return result;
}

unint64_t sub_1B8191F4C()
{
  result = qword_1EBA7C9A0;
  if (!qword_1EBA7C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C9A0);
  }

  return result;
}

unint64_t sub_1B8191FA0()
{
  result = qword_1EBA7C9A8;
  if (!qword_1EBA7C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C9A8);
  }

  return result;
}

uint64_t sub_1B8191FF8()
{
  OUTLINED_FUNCTION_24_0();
  result = (*(v0 + 464))();
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_55();
    *(swift_allocObject() + 16) = v2;
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_20();
    v5[2] = v3;
    v5[3] = &block_descriptor_0;
    v4 = _Block_copy(v5);
    swift_unknownObjectRetain();

    dispatchInContext(1, v4);
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B81920E4()
{
  OUTLINED_FUNCTION_24_0();
  (*(v0 + 440))();
  sub_1B8188DE0();
  sub_1B81F8AF8();
  OUTLINED_FUNCTION_48();
  KeyPath = swift_getKeyPath();
  return OUTLINED_FUNCTION_35(KeyPath);
}

unint64_t sub_1B819218C()
{
  result = qword_1EDC8A7C8;
  if (!qword_1EDC8A7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CA00);
    sub_1B81930C0(&qword_1EDC8AE70, &qword_1EBA7CA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7C8);
  }

  return result;
}

void sub_1B8192244()
{
  v1 = *(v0 + 24);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x1D0))();
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 suggestionDismissAction];
      [v4 execute];
    }

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B81FC7C0;
  v6 = sub_1B81BF7CC();
  v8 = *v6;
  v7 = v6[1];
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = 0;

  v9 = sub_1B81BF7D8();
  v11 = *v9;
  v10 = v9[1];
  *(inited + 56) = v11;
  *(inited + 64) = v10;
  *(inited + 72) = 0;

  v12 = sub_1B81F8F08();
  v13 = [objc_opt_self() defaultCenter];
  sub_1B81BF7C0();

  OUTLINED_FUNCTION_52();
  v14 = sub_1B81F8F58();

  v15 = sub_1B818DD1C(v12);

  sub_1B8192478(v14, v1, v15, v13);
}

uint64_t sub_1B81923FC()
{
  sub_1B8188DE0();

  sub_1B81F8AF8();
  OUTLINED_FUNCTION_48();
  KeyPath = swift_getKeyPath();
  return OUTLINED_FUNCTION_35(KeyPath);
}

void sub_1B8192478(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1B81F8EE8();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

_OWORD *sub_1B8192514(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B819253C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SGSuggestionsTableCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81925A0()
{
  v0 = type metadata accessor for SGSuggestionsTableCell(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_24_0();
  result = (*(v1 + 464))();
  if (result)
  {
    v3 = result;
    OUTLINED_FUNCTION_55();
    *(swift_allocObject() + 16) = v3;
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_20();
    v6[2] = v4;
    v6[3] = &block_descriptor_94;
    v5 = _Block_copy(v6);
    swift_unknownObjectRetain();

    dispatchInContext(1, v5);
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1B81926D4()
{
  result = qword_1EBA7CAB0;
  if (!qword_1EBA7CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7DB40);
    sub_1B819278C();
    sub_1B81930C0(&unk_1EBA7DB70, &qword_1EBA7CAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CAB0);
  }

  return result;
}

unint64_t sub_1B819278C()
{
  result = qword_1EBA7DB50;
  if (!qword_1EBA7DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7CAC0);
    sub_1B8192818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DB50);
  }

  return result;
}

unint64_t sub_1B8192818()
{
  result = qword_1EBA7DB60;
  if (!qword_1EBA7DB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA7CAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DB60);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  v1 = (type metadata accessor for SGSuggestionsTableCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7C770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F82B8();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B81929B8()
{
  v0 = type metadata accessor for SGSuggestionsTableCell(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_24_0();
  v2 = (*(v1 + 464))();
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 suggestionDismissAction];
      [v4 execute];
    }

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B81FC7C0;
  v6 = sub_1B81BF7CC();
  v8 = *v6;
  v7 = v6[1];
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = 0;

  v9 = sub_1B81BF7D8();
  v11 = *v9;
  v10 = v9[1];
  *(inited + 56) = v11;
  *(inited + 64) = v10;
  *(inited + 72) = 0;

  v12 = sub_1B81F8F08();
  v13 = [objc_opt_self() defaultCenter];
  sub_1B81BF7C0();

  v14 = sub_1B81F8F58();

  sub_1B818DD1C(v12);

  OUTLINED_FUNCTION_62();
  sub_1B8192478(v15, v16, v17, v13);
}

void sub_1B8192BC0()
{
  v1 = [*(v0 + 16) suggestionPrimaryAction];
  [v1 execute];
}

uint64_t sub_1B8192C18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B8192C38()
{
  OUTLINED_FUNCTION_30();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);
  return v0;
}

uint64_t sub_1B8192C90(uint64_t a1)
{
  v2 = sub_1B81F8378();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8192CEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_27(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_16_0();
  v5(v4);
  return v3;
}

uint64_t sub_1B8192D38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_27(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_16_0();
  v5(v4);
  return v3;
}

uint64_t sub_1B8192D84(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1B8192DDC()
{
  result = qword_1EBA7CB80;
  if (!qword_1EBA7CB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB20);
    sub_1B8192E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB80);
  }

  return result;
}

unint64_t sub_1B8192E68()
{
  result = qword_1EBA7CB88;
  if (!qword_1EBA7CB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB58);
    sub_1B8192F20();
    sub_1B81930C0(&qword_1EBA7CBC8, &qword_1EBA7CB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB88);
  }

  return result;
}

unint64_t sub_1B8192F20()
{
  result = qword_1EBA7CB90;
  if (!qword_1EBA7CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB50);
    sub_1B8192FD8();
    sub_1B81930C0(&qword_1EDC8A948, &qword_1EBA7CBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB90);
  }

  return result;
}

unint64_t sub_1B8192FD8()
{
  result = qword_1EBA7CB98;
  if (!qword_1EBA7CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CB48);
    sub_1B8190720(&unk_1EBA7CBA0, MEMORY[0x1E697EAF0]);
    sub_1B81930C0(&qword_1EDC8A630, &unk_1EBA7CBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CB98);
  }

  return result;
}

uint64_t sub_1B81930C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_0(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = v5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1B81F8398();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

__n128 OUTLINED_FUNCTION_34()
{
  v2 = *(v1 - 152);
  *(v0 + 144) = *(v1 - 168);
  *(v0 + 160) = v2;
  result = *(v1 - 136);
  *(v0 + 176) = result;
  *(v0 + 192) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_35(uint64_t result)
{
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4 & 1;
  *(v1 + 24) = v5;
  *(v1 + 32) = result;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_1B81F8218();
}

uint64_t OUTLINED_FUNCTION_58@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

id SGBannerContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGBannerContent.init()()
{
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedTitle] = 0;
  v1 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_subtitle];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedSubtitle] = 0;
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_images;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_images] = 0;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestion;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestion] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_imageSGViews;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_imageSGViews] = 0;
  v5 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_listTitle];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundVisualEffectView] = 0;
  v6 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundColor;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundColor] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerDivider] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryAction] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_dismissAction] = 0;
  v15 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_iconSFSymbols;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_iconSFSymbols] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_feedbackAction] = 0;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerForVisionDevice;
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerForVisionDevice] = v8 == 6;
  v10 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_title];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_10_0();
  *v1 = xmmword_1B81FD120;

  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_accessoryType] = 0;
  OUTLINED_FUNCTION_10_0();
  *&v0[v2] = 0;

  v11 = &v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionTitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_10_0();
  *&v0[v3] = 0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_0();
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryActionButtonWidth] = 0;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonWidth] = 0;
  v12 = 1;
  if (v0[v9])
  {
    v12 = 2;
  }

  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionButtonType] = v12;
  OUTLINED_FUNCTION_10_0();
  *&v0[v4] = 0;

  OUTLINED_FUNCTION_10_0();
  *v5 = 0;
  v5[1] = 0;

  OUTLINED_FUNCTION_10_0();
  v13 = *&v0[v6];
  *&v0[v6] = 0;

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestionCategorySupportsBatchDismissal] = 0;
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonXAnchorOffset] = 0;
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_prominentActionButton] = 0;
  OUTLINED_FUNCTION_10_0();
  *&v0[v15] = 0;

  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_disableGlassPlatter] = 0;
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();
  v0[OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_ignoreSafeAreaInsets] = 0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SGBannerContent();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1B8193A30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8193A94(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);

  return v4(v2, v3);
}

void *sub_1B8193B94()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedTitle;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B8193C28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8193C8C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1B8193CFC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedTitle;
  OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1B8193D74;
}

uint64_t sub_1B8193DC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8193E2C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x160);

  return v4(v2, v3);
}

void *sub_1B8193F2C()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedSubtitle;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B8193FC0(void *a1, uint64_t *a2)
{
  sub_1B81940E4(a1, a2);
  v5 = *a2;
  OUTLINED_FUNCTION_4();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
}

uint64_t sub_1B8194010@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194074(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x178);
  v4 = *a1;
  return v3(v2);
}

void sub_1B81940E4(void *a1, uint64_t *a2)
{
  v4 = v2;
  if (a1 && ([a1 mutableCopy], sub_1B81F9228(), swift_unknownObjectRelease(), sub_1B8189AF0(0, &unk_1EDC8A5C0), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v8;
  }

  else
  {
    sub_1B8189AF0(0, &unk_1EDC8A5C0);
    v5 = sub_1B8187C0C();
  }

  v6 = *a2;
  OUTLINED_FUNCTION_10_0();
  v7 = *(v4 + v6);
  *(v4 + v6) = v5;
}

void (*sub_1B81941C8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_attributedSubtitle;
  OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1B8194240;
}

void sub_1B819424C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  if (a2)
  {
    v9 = v5;
    sub_1B81940E4(v5, a3);
    v10 = *(v7 + v8);
    *(v7 + v8) = v5;

    v11 = *v6;
  }

  else
  {
    sub_1B81940E4(*(*a1 + 24), a3);
    v11 = *(v7 + v8);
    *(v7 + v8) = v5;
  }

  free(v4);
}

uint64_t sub_1B8194304()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_accessoryType;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B8194360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_accessoryType;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B81943A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194540@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81945A4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A8);

  return v2(v3);
}

id sub_1B8194674(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B81F8F58();
  OUTLINED_FUNCTION_18_1();

  return a1;
}

uint64_t sub_1B81946C8()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;

  return v1;
}

void sub_1B819471C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1B81F8F98();
  v6 = a1;
  v7 = OUTLINED_FUNCTION_13_0();
  a4(v7);
}

uint64_t sub_1B8194790(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_10_0();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B81947E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8194848(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C0);

  return v4(v2, v3);
}

uint64_t sub_1B81949D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194A3C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1B8194BB0()
{
  OUTLINED_FUNCTION_3_2();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B8194C00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8194C64(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1F0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1B8194CD0(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_11_1(v2);
  swift_beginAccess();
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

void sub_1B8194D4C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_1B8194DF0()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryActionButtonWidth;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B8194E48(double a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryActionButtonWidth;
  result = OUTLINED_FUNCTION_4();
  *(v1 + v3) = a1;
  return result;
}

double sub_1B8194FC0()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonWidth;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B8195018(double a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonWidth;
  result = OUTLINED_FUNCTION_4();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8195190()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionButtonType;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B81951EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_actionButtonType;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B819522C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x230))();
  *a2 = result;
  return result;
}

id sub_1B8195364(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if (a3())
  {
    sub_1B8189AF0(0, a4);
    sub_1B81F90A8();
    OUTLINED_FUNCTION_18_1();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_1B8195428(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v7 = a3;
  if (a3)
  {
    sub_1B8189AF0(0, a4);
    v7 = sub_1B81F90C8();
  }

  v9 = a1;
  a6(v7);
}

uint64_t sub_1B81954D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x248))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195538(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x250);

  return v2(v3);
}

id sub_1B8195608(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_1B81F8F58();
    OUTLINED_FUNCTION_18_1();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_1B8195680(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_1B81F8F98();
  }

  v6 = a1;
  v7 = OUTLINED_FUNCTION_13_0();
  a4(v7);
}

uint64_t sub_1B8195704@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x260))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B8195768(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x268);

  return v4(v2, v3);
}

void *sub_1B8195868()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundVisualEffectView;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B8195930@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x278))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195994(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x280);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B8195A84()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_backgroundColor;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B8195B4C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x290))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195BB0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x298);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B8195CA0()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_bannerDivider;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B8195D68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8195DCC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2B0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B8195EB0()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestionCategorySupportsBatchDismissal;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B8195F08(char a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_suggestionCategorySupportsBatchDismissal;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8195F48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C0))();
  *a2 = result & 1;
  return result;
}

void *sub_1B8196090()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_primaryAction;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B8196158@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81961BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B81962AC()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_dismissAction;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B8196374@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F0))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81963D8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2F8);
  v4 = *a1;
  return v3(v2);
}

double sub_1B81964B8()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonXAnchorOffset;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B8196510(double a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_closeButtonXAnchorOffset;
  result = OUTLINED_FUNCTION_4();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B819668C()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_prominentActionButton;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B81966E4(char a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_prominentActionButton;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8196724@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x320))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B81968B0(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1B8196998(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_4();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1B81969E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x338))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8196A4C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x340);

  return v2(v3);
}

uint64_t sub_1B8196B2C()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_disableGlassPlatter;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B8196B84(char a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_disableGlassPlatter;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8196BC4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x350))();
  *a2 = result & 1;
  return result;
}

void *sub_1B8196D0C()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_feedbackAction;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B8196DD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x368))();
  *a2 = result;
  return result;
}

uint64_t sub_1B8196E38(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x370);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B8196F1C()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_ignoreSafeAreaInsets;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B8196F74(char a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI15SGBannerContent_ignoreSafeAreaInsets;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8196FB4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x380))();
  *a2 = result & 1;
  return result;
}

id SGBannerContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGBannerContent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  return v1 + v2;
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_1()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

void OUTLINED_FUNCTION_16_1()
{
  v3 = *(v1 + v0);
  *(v1 + v0) = 0;
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

double sub_1B81986C4@<D0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_141();
  result = *&qword_1EBA7F580;
  *a1 = qword_1EBA7F580;
  return result;
}

double sub_1B819870C@<D0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_141();
  result = *&qword_1EBA7F588;
  *a1 = qword_1EBA7F588;
  return result;
}

uint64_t sub_1B8198778()
{
  sub_1B81A3F00();
  result = sub_1B81F8538();
  qword_1EDC8D108 = result;
  return result;
}

void sub_1B81987A8()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  OUTLINED_FUNCTION_46();
  v5 = sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v9 = OUTLINED_FUNCTION_126();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_0();
  sub_1B81A37BC(v0 + *(v4 + 40), v2, &qword_1EBA7CD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_7_2();
    v11 = OUTLINED_FUNCTION_61();
    v12(v11);
  }

  else
  {
    sub_1B81F9198();
    v13 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    (*(v7 + 8))(v1, v5);
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81989AC()
{
  OUTLINED_FUNCTION_38();
  v21 = v2;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B81F8DC8();
  sub_1B81F8DA8();
  sub_1B81F8728();
  v6 = sub_1B81F8CD8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v22 = v4;
  v23 = v5;
  v24 = v0;
  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_3();
  v14 = swift_getWitnessTable();
  v26 = WitnessTable;
  v27 = v14;
  OUTLINED_FUNCTION_2_2();
  v15 = swift_getWitnessTable();
  sub_1B81F8CC8();
  v25 = v15;
  OUTLINED_FUNCTION_51_0();
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v17 = OUTLINED_FUNCTION_85();
  v16(v17);
  v18 = *(v8 + 8);
  v18(v1, v6);
  (v16)(v21, v12, v6);
  v19 = OUTLINED_FUNCTION_122();
  (v18)(v19);
  OUTLINED_FUNCTION_37();
}

void sub_1B8198B78()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v65 = v7;
  v8 = sub_1B81F8DA8();
  OUTLINED_FUNCTION_1_0();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v59 = v12;
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_116();
  v13 = sub_1B81F8DC8();
  OUTLINED_FUNCTION_1_0();
  v57 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v56 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v55 = v18;
  OUTLINED_FUNCTION_37_0();
  v19 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_2();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1B81F8728();
  OUTLINED_FUNCTION_1_0();
  v63 = v30;
  v64 = v29;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_32();
  v61 = v2;
  v62 = v32;
  OUTLINED_FUNCTION_37_0();
  v60 = v4;
  OUTLINED_FUNCTION_116();
  type metadata accessor for AccessibilityAdaptiveStack();
  sub_1B81987A8();
  (*(v21 + 104))(v25, *MEMORY[0x1E697F668], v19);
  LOBYTE(v4) = sub_1B819906C(v28, v25);
  v33 = *(v21 + 8);
  v33(v25, v19);
  v33(v28, v19);
  if ((v4 & 1) != 0 && *(v6 + 16) == 1)
  {
    sub_1B81F85D8();
    v34 = v56;
    sub_1B81F8DB8();
    OUTLINED_FUNCTION_4_0();
    swift_getWitnessTable();
    v35 = v57;
    v36 = *(v57 + 16);
    v37 = v55;
    v36(v55, v34, v13);
    v38 = *(v35 + 8);
    v39 = OUTLINED_FUNCTION_138();
    v38(v39);
    v36(v34, v37, v13);
    OUTLINED_FUNCTION_3_3();
    swift_getWitnessTable();
    v40 = v62;
    v41 = OUTLINED_FUNCTION_138();
    sub_1B8199484(v41, v42);
    v43 = OUTLINED_FUNCTION_138();
    v38(v43);
    (v38)(v37, v13);
  }

  else
  {
    if (qword_1EDC8CF40 != -1)
    {
      OUTLINED_FUNCTION_13_1();
    }

    sub_1B81F8D98();
    OUTLINED_FUNCTION_3_3();
    swift_getWitnessTable();
    v45 = v58;
    v44 = v59;
    v46 = *(v58 + 16);
    v47 = OUTLINED_FUNCTION_137();
    v46(v47);
    v48 = *(v45 + 8);
    v48(v0, v8);
    v49 = OUTLINED_FUNCTION_126();
    v46(v49);
    OUTLINED_FUNCTION_4_0();
    swift_getWitnessTable();
    v40 = v62;
    sub_1B819957C(v0, v13, v8);
    v48(v0, v8);
    v48(v44, v8);
  }

  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_3();
  v51 = swift_getWitnessTable();
  v66 = WitnessTable;
  v67 = v51;
  OUTLINED_FUNCTION_2_2();
  v52 = v64;
  swift_getWitnessTable();
  v53 = v63;
  (*(v63 + 16))(v65, v40, v52);
  (*(v53 + 8))(v40, v52);
  OUTLINED_FUNCTION_37();
}

BOOL sub_1B819906C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1B81F85B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x1E697F658];
  if (v12 != *MEMORY[0x1E697F658])
  {
    if (v12 == *MEMORY[0x1E697F690])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F698])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x1E697F660])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x1E697F630])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x1E697F670])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x1E697F668])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x1E697F678])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x1E697F640])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x1E697F690])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x1E697F698])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x1E697F680])
    {
      if (v15 == *MEMORY[0x1E697F650])
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F660])
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F630])
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F670])
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F668])
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F678])
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F640])
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x1E697F648])
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_1B8199484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B81F8708();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1B81F8718();
}

uint64_t sub_1B819957C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B81F8708();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1B81F8718();
}

uint64_t sub_1B8199678()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_110();
  sub_1B81F8118();

  return v1;
}

uint64_t sub_1B81996E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B8199780()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_78();
  return sub_1B81F8128();
}

void (*sub_1B81997EC())(void *a1)
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_92(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_54();
  v0[6] = sub_1B81F8108();
  return sub_1B8199874;
}

void sub_1B8199874(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1B81998DC()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98);
  sub_1B81F80E8();
  return swift_endAccess();
}

uint64_t sub_1B8199948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_12_0();
  v1 = OUTLINED_FUNCTION_125();
  v2(v1);
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98);
  sub_1B81F80F8();
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_133();
  return v4(v3);
}

void (*sub_1B8199A58())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_92(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9C0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98);
  sub_1B81F80E8();
  swift_endAccess();
  return sub_1B8199B70;
}

void sub_1B8199B70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_85();
    v6(v5);
    sub_1B8199948();
    v7 = OUTLINED_FUNCTION_52();
    v8(v7);
  }

  else
  {
    sub_1B8199948();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t BannerUpdateViewModel.__allocating_init(updateView:)()
{
  v0 = swift_allocObject();
  BannerUpdateViewModel.init(updateView:)();
  return v0;
}

uint64_t BannerUpdateViewModel.init(updateView:)()
{
  OUTLINED_FUNCTION_115();
  sub_1B81F80D8();
  swift_endAccess();
  return v0;
}

uint64_t BannerUpdateViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t BannerUpdateViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI21BannerUpdateViewModel__updateView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1B8199DC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BannerUpdateViewModel(0);
  result = sub_1B81F80B8();
  *a1 = result;
  return result;
}

void sub_1B8199E28()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_87();
  sub_1B81A37BC(v3, v4, v5);
  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F8178();
    OUTLINED_FUNCTION_7_2();
    v6 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v8 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    v6 = OUTLINED_FUNCTION_102();
  }

  v7(v6);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  return a6(v6);
}

void sub_1B819A0DC()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_87();
  sub_1B81A37BC(v3, v4, v5);
  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_7_2();
    v6 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v8 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    v6 = OUTLINED_FUNCTION_102();
  }

  v7(v6);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A26C()
{
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6();
  v2 = (v0 + *(type metadata accessor for SGBannerContainerView(0) + 44));
  v3 = *v2;
  v4 = *(v2 + 8);

  if ((v4 & 1) == 0)
  {
    sub_1B81F9198();
    v5 = sub_1B81F88B8();
    sub_1B81F8018();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_63();
    swift_getAtKeyPath();
    j__swift_release();
    v6 = OUTLINED_FUNCTION_125();
    v7(v6);
    return v9;
  }

  return v3;
}

void sub_1B819A3A4()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_87();
  sub_1B81A37BC(v3, v4, v5);
  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F89C8();
    OUTLINED_FUNCTION_7_2();
    v6 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v8 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_54();
    swift_getAtKeyPath();

    v6 = OUTLINED_FUNCTION_102();
  }

  v7(v6);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A558()
{
  v0 = OUTLINED_FUNCTION_81();
  v1 = type metadata accessor for SGBannerViewModel(v0);
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_11_2();
  v3 = OUTLINED_FUNCTION_133();
  sub_1B81A1B90(v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
  sub_1B81F8D68();
  OUTLINED_FUNCTION_0_1();
  return sub_1B81A2340();
}

void SGBannerContainerView.init(_:store:updateBannerView:)()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v26 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v25 = v9;
  *(v5 + 40) = 1;
  v10 = type metadata accessor for SGBannerContainerView(0);
  v11 = v10[9];
  *(v5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA0);
  OUTLINED_FUNCTION_112();
  v12 = v10[10];
  *(v5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
  OUTLINED_FUNCTION_112();
  v13 = v5 + v10[11];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v10[12];
  *(v5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA8);
  OUTLINED_FUNCTION_112();
  v15 = (v5 + v10[14]);
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  *v15 = v27;
  v15[1] = v28;
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  OUTLINED_FUNCTION_70();
  v16 = v5 + v10[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC8);
  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  *v16 = v27;
  *(v16 + 8) = v28;
  *(v16 + 16) = v29;

  OUTLINED_FUNCTION_108();
  sub_1B81F8D48();
  OUTLINED_FUNCTION_70();
  *v5 = v3;
  *(v5 + 8) = v1;
  type metadata accessor for BannerUpdateViewModel(0);
  OUTLINED_FUNCTION_18_2();
  sub_1B81A1B48(v17, v18);
  v19 = v3;

  v20 = v1;
  v21 = v1;
  *(v5 + 24) = sub_1B81F8268();
  *(v5 + 32) = v22;
  if (v20)
  {
    v23 = [v21 hostApp];
  }

  else
  {
    v23 = 2;
  }

  *(v5 + 16) = v23;
  sub_1B81DD758(v19, v25);
  OUTLINED_FUNCTION_11_2();
  sub_1B81A1B90(v25, v26, v24);
  sub_1B81F8D48();
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDD0);
  sub_1B81F8D68();

  sub_1B819A95C();

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819A95C()
{
  v2 = v0;
  v3 = sub_1B81F89C8();
  OUTLINED_FUNCTION_1_0();
  v20 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = sub_1B81F8A48();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_118();
  sub_1B819A0DC();
  v14 = sub_1B81F85A8();
  v15 = OUTLINED_FUNCTION_137();
  result = v16(v15);
  if ((v14 & 1) == 0 && *(v2 + 40) == 1)
  {
    OUTLINED_FUNCTION_24_0();
    (*(v18 + 440))();
    sub_1B819F75C();
    sub_1B819A3A4();
    sub_1B81F8A28();

    (*(v20 + 8))(v8, v3);
    v19 = sub_1B81F8A38();
    (*(v11 + 8))(v1, v9);
    sub_1B819FC20(v19);

    type metadata accessor for SGBannerContainerView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB8);
    sub_1B81F8D58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0);
    return sub_1B81F8D68();
  }

  return result;
}

void SGBannerContainerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v23;
  a20 = v24;
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_1_0();
  v148 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_74();
  v28 = OUTLINED_FUNCTION_22_1(v27);
  v29 = type metadata accessor for BannerViewBackgroundModifier(v28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_1(v32);
  *&v153 = sub_1B81F8178();
  OUTLINED_FUNCTION_1_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDD8);
  OUTLINED_FUNCTION_21(v38);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_105();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDE0);
  OUTLINED_FUNCTION_6_0(v40, &v155);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v42);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDE8);
  OUTLINED_FUNCTION_1_0();
  v144 = v43;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDF0);
  OUTLINED_FUNCTION_6_0(v46, v156);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDF8);
  OUTLINED_FUNCTION_6_0(v49, &v156[5]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE00);
  OUTLINED_FUNCTION_6_0(v52, &v156[7]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE08);
  OUTLINED_FUNCTION_6_0(v55, &v156[10]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v57);
  *v22 = sub_1B81F85D8();
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE10);
  sub_1B819B8CC();
  v58 = *(v20 + 8);
  v138 = v58;
  if (v58)
  {
    v59 = [v58 hostApp] == 1;
  }

  else
  {
    v59 = 0;
  }

  sub_1B8199E28();
  v60 = *v20;
  v150 = v20;
  OUTLINED_FUNCTION_25_0();
  LOBYTE(v156[0]) = v61;
  v156[1] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0);
  sub_1B81F8D58();
  v139 = v34;
  v63 = *(v34 + 16);
  v63(v152, v151, v153);
  *v21 = v59;
  v63(&v21[v29[5]], v152, v153);
  *&v21[v29[6]] = v60;
  v21[v29[7]] = v154;
  v64 = objc_opt_self();
  v65 = v60;
  v66 = [v64 currentDevice];
  v67 = [v66 userInterfaceIdiom];

  v21[v29[8]] = v67 == 6;
  v68 = [v64 currentDevice];
  v69 = [v68 userInterfaceIdiom];

  *&v21[v29[9]] = v69;
  if (!v59 && v67 == 6)
  {
    OUTLINED_FUNCTION_24_0();
    v70 += 70;
    v71 = *v70;
    v59 = (*v70)() == 2 || v71() == 3;
  }

  v21[v29[10]] = v59;
  if (sub_1B81F8E98())
  {
    OUTLINED_FUNCTION_24_0();
    v73 = (*(v72 + 848))() ^ 1;
  }

  else
  {
    v73 = 0;
  }

  v74 = *(v139 + 8);
  v74(v152, v153);
  v74(v151, v153);
  v21[v29[11]] = v73 & 1;
  sub_1B81A1BEC(v21, v142, type metadata accessor for BannerViewBackgroundModifier);
  sub_1B81A3804(v22, v140, &qword_1EBA7CDD8);
  sub_1B81A1BEC(v142, v140 + *(v141 + 36), type metadata accessor for BannerViewBackgroundModifier);
  if (v138)
  {
    v75 = [v138 hostApp];

    v76 = v75 == 1;
  }

  else
  {
    v76 = 0;
  }

  OUTLINED_FUNCTION_24_0();
  v78 = (*(v77 + 560))();
  sub_1B81A1A60();
  sub_1B81D065C(v76, v78, v141);
  sub_1B81A3990(v140, &qword_1EBA7CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B81FC7C0;
  v80 = sub_1B81F8908();
  *(inited + 32) = v80;
  v81 = sub_1B81F8928();
  *(inited + 33) = v81;
  v82 = sub_1B81F8918();
  sub_1B81F8918();
  v83 = v150;
  if (sub_1B81F8918() != v80)
  {
    v82 = sub_1B81F8918();
  }

  sub_1B81F8918();
  if (sub_1B81F8918() != v81)
  {
    v82 = sub_1B81F8918();
  }

  v84 = [objc_opt_self() currentDevice];
  v85 = [v84 userInterfaceIdiom];

  v86 = *(v150 + 8);
  if (v86 && ((v87 = [v86 hostApp], v85 == 6) ? (v88 = v87 == 1) : (v88 = 0), v88))
  {
    v93 = 0uLL;
    v153 = 0u;
    v89 = 1;
    v94 = &a13;
  }

  else
  {
    sub_1B81F8148();
    v89 = 0;
    *(&v91 + 1) = v90;
    v152 = v91;
    *(&v93 + 1) = v92;
    v94 = &a15;
  }

  *(v94 - 16) = v93;
  (*(v144 + 32))(v146, v143, v145);
  OUTLINED_FUNCTION_95();
  v96 = v146 + v95;
  *v96 = v82;
  *(v96 + 24) = v152;
  *(v96 + 8) = v153;
  *(v96 + 40) = v89;
  v97 = sub_1B819F7BC();
  v99 = v98;
  v100 = sub_1B819F7BC();
  v102 = v101;
  sub_1B81F8EB8();
  v103 = *&v97;
  if (v99)
  {
    v103 = -INFINITY;
  }

  v104 = *&v100;
  if (v102)
  {
    v104 = v103;
  }

  if (v103 > v104)
  {
    sub_1B81F9198();
    v105 = sub_1B81F88B8();
    sub_1B81F8018();

    v83 = v150;
  }

  OUTLINED_FUNCTION_120();
  sub_1B81F8398();
  OUTLINED_FUNCTION_86();
  sub_1B81A3804(v106, v107, v108);
  OUTLINED_FUNCTION_95();
  memcpy((v146 + v109), v156, 0x70uLL);
  OUTLINED_FUNCTION_17_2();
  sub_1B81A1B90(v83, v149, v110);
  v111 = (*(v148 + 80) + 16) & ~*(v148 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_19_0();
  v113 = v112;
  sub_1B81A1BEC(v149, v114 + v111, v112);
  OUTLINED_FUNCTION_86();
  sub_1B81A3804(v115, v116, v117);
  OUTLINED_FUNCTION_95();
  v119 = (v146 + v118);
  *v119 = sub_1B819F8F8;
  v119[1] = 0;
  v119[2] = sub_1B81A1C44;
  v119[3] = v100;
  OUTLINED_FUNCTION_79();
  sub_1B81A1B90(v120, v121, v122);
  v123 = swift_allocObject();
  sub_1B81A1BEC(v149, v123 + v111, v113);
  OUTLINED_FUNCTION_86();
  sub_1B81A3804(v124, v125, v126);
  v127 = (v146 + *(v147 + 36));
  *v127 = sub_1B819F924;
  v127[1] = 0;
  v127[2] = sub_1B81A2034;
  v127[3] = v123;
  OUTLINED_FUNCTION_46_0();
  sub_1B81F8D58();
  OUTLINED_FUNCTION_79();
  sub_1B81A1B90(v128, v129, v130);
  v131 = swift_allocObject();
  sub_1B81A1BEC(v149, v131 + v111, v113);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_41();
  sub_1B81A2158(v132, v133, v134, v135);
  sub_1B81F8C08();

  OUTLINED_FUNCTION_41();
  sub_1B81A3990(v136, v137);
  OUTLINED_FUNCTION_37();
}

void sub_1B819B8CC()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v185 = v5;
  v6 = type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_1_0();
  v173 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v174 = v9;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_28(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v14 = OUTLINED_FUNCTION_22_1(v13);
  v15 = type metadata accessor for PrimaryActionButtonView(v14);
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD8);
  OUTLINED_FUNCTION_6_0(v19, v200);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFE0);
  v23 = OUTLINED_FUNCTION_21(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFE8);
  OUTLINED_FUNCTION_6_0(v26, &v202[80]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFF0);
  OUTLINED_FUNCTION_6_0(v29, &v202[88]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFF8);
  OUTLINED_FUNCTION_6_0(v32, &v202[8]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D000);
  OUTLINED_FUNCTION_6_0(v35, &v202[16]);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_22_1(v37);
  v187 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v186 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D008);
  OUTLINED_FUNCTION_6_0(v42, &v201);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v172 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D010);
  v47 = OUTLINED_FUNCTION_6_0(v46, &v202[48]);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D018);
  v51 = OUTLINED_FUNCTION_21(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_31();
  v196 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D020);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_105();
  v57 = type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D028);
  v60 = OUTLINED_FUNCTION_21(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_40_0();
  v195 = v62;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_67();
  v172[3] = v6;
  v65 = *(v6 + 52);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
  sub_1B81F8D58();
  v67 = *(v1 + *(v57 + 52) + 16);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  v192 = v66;
  v181 = v2;
  v180 = v57;
  if (v67 == 1)
  {
    sub_1B81F8E18();
    sub_1B81F8D58();
    v68 = *(v1 + *(v57 + 52));

    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v69 = v2 + *(v55 + 36);
    *v69 = v68;
    *(v69 + 8) = 256;
    sub_1B81A3804(v2, v0, &qword_1EBA7D020);
    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v70, 1, v55);
  v71 = v4;
  if (sub_1B81F8E98() & 1) != 0 && ((v72 = v194, sub_1B819A0DC(), v73 = sub_1B81F85A8(), (*(v186 + 8))(v72, v187), (v73) || (OUTLINED_FUNCTION_24_0(), (*(v74 + 560))() == 5)) && *(v71 + 40) == 1)
  {
    v75 = sub_1B81F8518();
  }

  else
  {
    if (qword_1EDC8CF40 != -1)
    {
      OUTLINED_FUNCTION_13_1();
    }

    v75 = qword_1EDC8D108;
  }

  v194 = v0;
  *v45 = v75;
  *(v45 + 1) = 0;
  v45[16] = 0;
  v76 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D030) + 44)];
  v188 = v71;
  sub_1B819CA50(v71, v76);
  v77 = sub_1B81F8E98();
  v190 = v65;
  v182 = v55;
  if (v77)
  {
    OUTLINED_FUNCTION_89();
    sub_1B81A37BC(v78, v79, &qword_1EBA7D008);
    OUTLINED_FUNCTION_143();
    sub_1B81A3458();
    OUTLINED_FUNCTION_60_0(&qword_1EBA7D040);
    OUTLINED_FUNCTION_132();
    sub_1B81F8718();
  }

  else
  {
    sub_1B81F8EB8();
    OUTLINED_FUNCTION_120();
    sub_1B81F8398();
    OUTLINED_FUNCTION_86();
    sub_1B81A37BC(v80, v81, &qword_1EBA7D008);
    memcpy((v2 + *(v178 + 36)), v202, 0x70uLL);
    sub_1B81A37BC(v2, v179, &qword_1EBA7D000);
    OUTLINED_FUNCTION_144();
    sub_1B81A3458();
    OUTLINED_FUNCTION_60_0(&qword_1EBA7D040);
    OUTLINED_FUNCTION_132();
    sub_1B81F8718();
    sub_1B81A3990(v2, &qword_1EBA7D000);
  }

  v82 = v191;
  sub_1B81A3990(v45, &qword_1EBA7D008);
  sub_1B81A3804(&qword_1EBA7D008, v82, &qword_1EBA7D010);
  v83 = v188;
  v84 = *(v188 + 40);
  if (v84 == 1)
  {
    v85 = v176;
    sub_1B81A37BC(v82, v176, &qword_1EBA7D010);
    *(v85 + *(v184 + 36)) = 256;
    OUTLINED_FUNCTION_86();
    sub_1B81A37BC(v86, v87, v88);
    OUTLINED_FUNCTION_144();
    sub_1B81A3510();
    sub_1B81A359C();
    OUTLINED_FUNCTION_131();
    v82 = v191;
    sub_1B81F8718();
    sub_1B81A3990(v85, &qword_1EBA7CFF0);
  }

  else
  {
    OUTLINED_FUNCTION_89();
    sub_1B81A37BC(v89, v90, v91);
    OUTLINED_FUNCTION_143();
    sub_1B81A3510();
    sub_1B81A359C();
    OUTLINED_FUNCTION_131();
    sub_1B81F8718();
  }

  v92 = v192;
  v93 = v181;
  sub_1B81A3990(v82, &qword_1EBA7D010);
  sub_1B81A3804(v45, v196, &qword_1EBA7D018);
  sub_1B81F8D58();
  v94 = v180;
  v95 = *(v1 + *(v180 + 52) + 17);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  if (v95 == 1)
  {
    sub_1B81F8E18();
    sub_1B81F8D58();
    v96 = *(v1 + *(v94 + 52) + 8);

    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v97 = v182;
    v98 = v93 + *(v182 + 36);
    *v98 = v96;
    *(v98 + 8) = 256;
    v99 = v193;
    sub_1B81A3804(v93, v193, &qword_1EBA7D020);
    v100 = 0;
  }

  else
  {
    v100 = 1;
    v99 = v193;
    v97 = v182;
  }

  v101 = __swift_storeEnumTagSinglePayload(v99, v100, 1, v97);
  v102 = *v83;
  if (((*((*MEMORY[0x1E69E7D40] & **v83) + 0x230))(v101) == 5 || (sub_1B81F8E98() & 1) != 0 && (v108 = v177, sub_1B819A0DC(), v109 = sub_1B81F85A8(), v110 = v108, v92 = v192, (*(v186 + 8))(v110, v187), (v84 & v109) == 1)) && (sub_1B81F8D58(), v103 = *(v1 + 3), OUTLINED_FUNCTION_0_1(), v104 = sub_1B81A2340(), v103 == 1))
  {
    v191 = (*((*MEMORY[0x1E69E7D40] & *v102) + 0x1B8))(v104);
    v184 = v105;
    v183 = v102;
    v182 = sub_1B819F75C();
    v106 = *(v83 + 8);
    if (v106)
    {
      v107 = [v106 hostApp] == 1;
    }

    else
    {
      v107 = 0;
    }

    v112 = v188;
    OUTLINED_FUNCTION_46_0();
    v200[0] = v113;
    v201 = v114;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0);
    sub_1B81F8D78();
    v116 = v197;
    v115 = v198;
    v117 = v199;
    v118 = v172[1];
    sub_1B81F8D78();
    OUTLINED_FUNCTION_46_0();
    v200[0] = v119;
    v201 = v120;
    sub_1B81F8D78();
    v171 = v199;
    v169 = v197;
    v170 = v198;
    OUTLINED_FUNCTION_109();
    sub_1B81AC5E0(v191, v184, v183, v182, v106, v107, v116, v115, v121, v117, v118, v169, v170, v171);
    OUTLINED_FUNCTION_17_2();
    v122 = v175;
    sub_1B81A1B90(v112, v175, v123);
    v124 = (*(v173 + 80) + 16) & ~*(v173 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_19_0();
    v126 = v125;
    sub_1B81A1BEC(v122, v127 + v124, v125);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_86();
    sub_1B81A1BEC(v128, v129, v130);
    OUTLINED_FUNCTION_95();
    v132 = (v84 + v131);
    *v132 = sub_1B81A3F94;
    v132[1] = v200;
    v132[2] = 0;
    v132[3] = 0;
    v133 = v177;
    sub_1B819A0DC();
    sub_1B81A1B90(v112, v122, v115);
    v134 = swift_allocObject();
    sub_1B81A1BEC(v122, v134 + v124, v126);
    sub_1B81A36A0();
    OUTLINED_FUNCTION_54_0();
    sub_1B81A1B48(v135, v136);
    v92 = v187;
    sub_1B81F8C08();

    (*(v186 + 8))(v133, v92);
    sub_1B81A3990(v84, &qword_1EBA7CFD8);
    v111 = 0;
  }

  else
  {
    v111 = 1;
  }

  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D058);
  __swift_storeEnumTagSinglePayload(v189, v111, 1, v137);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v138, v139, v140);
  v141 = v196;
  OUTLINED_FUNCTION_86();
  sub_1B81A37BC(v142, v143, v144);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v145, v146, v147);
  OUTLINED_FUNCTION_89();
  sub_1B81A37BC(v148, v149, v150);
  v151 = v185;
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v152, v153, v154);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D060);
  sub_1B81A37BC(v84, v151 + *(v155 + 48), &qword_1EBA7D018);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v156, v157, v158);
  sub_1B81A37BC(v92, v151 + *(v155 + 80), &qword_1EBA7CFE0);
  v159 = OUTLINED_FUNCTION_137();
  sub_1B81A3990(v159, v160);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v161, v162);
  sub_1B81A3990(v141, &qword_1EBA7D018);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v163, v164);
  sub_1B81A3990(v92, &qword_1EBA7CFE0);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v165, v166);
  sub_1B81A3990(v84, &qword_1EBA7D018);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v167, v168);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819CA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v5 = type metadata accessor for SGBannerContainerView(0);
  v6 = v5 - 8;
  v121 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_74();
  v123 = v8;
  v124 = v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D080);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_100();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  v132 = v11;
  v12 = OUTLINED_FUNCTION_37_0();
  v13 = type metadata accessor for SGBannerPaddingParams(v12);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  v15 = type metadata accessor for CloseButtonView(0);
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v118 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D088);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v117 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_40_0();
  v116 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31();
  v28 = OUTLINED_FUNCTION_22_1(v27);
  v125 = type metadata accessor for SGBannerViewModel(v28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v114 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D090);
  v35 = OUTLINED_FUNCTION_21(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_0();
  v126 = v36;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40_0();
  v127 = v38;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40_0();
  v130 = v40;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_31();
  v131 = v42;
  v43 = *(v6 + 60);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
  OUTLINED_FUNCTION_117();
  sub_1B81F8D58();
  v45 = v33[1];
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  v128 = v3;
  v119 = v2;
  v120 = v20;
  if (v45 == 1)
  {
    v46 = a1;
    v47 = *a1;
    v48 = *(a1 + 8);
    v49 = v48;
    v50 = v47;
    v114 = v43;
    v115 = v46;
    v20 = v44;
    sub_1B81F8D58();
    if (v48)
    {
      [v49 hostApp];
    }

    OUTLINED_FUNCTION_109();
    sub_1B81ADCB4(v50, v48, v53, v54);
    sub_1B81F8908();
    a1 = v115;
    OUTLINED_FUNCTION_117();
    sub_1B81F8D58();
    OUTLINED_FUNCTION_9_2();
    sub_1B81A1B90(&v33[v55], v2, v56);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    OUTLINED_FUNCTION_10_1();
    sub_1B81A2340();
    sub_1B81F8148();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_89();
    sub_1B81A1BEC(v57, v58, v59);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v60, v61, v62);
    v52 = v131;
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v63, v64, v65);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v52 = v131;
  }

  v66 = 1;
  __swift_storeEnumTagSinglePayload(v52, v51, 1, v20);
  v67 = *(a1 + 40);
  OUTLINED_FUNCTION_53_0();
  v68 = v124;
  sub_1B81A1B90(a1, v124, v69);
  v70 = (*(v121 + 80) + 16) & ~*(v121 + 80);
  v71 = swift_allocObject();
  OUTLINED_FUNCTION_52_0();
  sub_1B81A1BEC(v68, v72 + v70, v73);
  v74 = *(v122 + 40);
  KeyPath = swift_getKeyPath();
  v76 = v132;
  *(v132 + v74) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
  swift_storeEnumTagMultiPayload();
  *(v76 + 16) = v67;
  *v76 = sub_1B81A375C;
  *(v76 + 8) = v71;
  OUTLINED_FUNCTION_117();
  sub_1B81F8D58();
  LODWORD(v71) = v33[2];
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  if (v71 == 1)
  {
    v77 = *a1;
    v78 = *(a1 + 8);
    v79 = v78;
    v80 = v77;
    OUTLINED_FUNCTION_109();
    v20 = v44;
    sub_1B81F8D58();
    if (v78)
    {
      [v79 hostApp];
    }

    v82 = v118;
    v81 = v119;
    v83 = OUTLINED_FUNCTION_133();
    sub_1B81ADCB4(v83, v84, v85, v86);
    sub_1B81F8928();
    OUTLINED_FUNCTION_117();
    sub_1B81F8D58();
    OUTLINED_FUNCTION_9_2();
    sub_1B81A1B90(&v33[v87], v81, v88);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    OUTLINED_FUNCTION_10_1();
    sub_1B81A2340();
    sub_1B81F8148();
    OUTLINED_FUNCTION_42_0();
    sub_1B81A1BEC(v82, v117, v89);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v90, v91, v92);
    OUTLINED_FUNCTION_51();
    sub_1B81A3804(v93, v94, v95);
    v66 = 0;
  }

  v96 = v130;
  __swift_storeEnumTagSinglePayload(v130, v66, 1, v20);
  sub_1B81A37BC(v131, v127, &qword_1EBA7D090);
  v97 = v132;
  v98 = v128;
  sub_1B81A37BC(v132, v128, &qword_1EBA7D080);
  v99 = v126;
  sub_1B81A37BC(v96, v126, &qword_1EBA7D090);
  v100 = v129;
  OUTLINED_FUNCTION_116();
  sub_1B81A37BC(v101, v102, v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D098);
  sub_1B81A37BC(v98, v100 + *(v104 + 48), &qword_1EBA7D080);
  sub_1B81A37BC(v99, v100 + *(v104 + 64), &qword_1EBA7D090);
  OUTLINED_FUNCTION_96();
  sub_1B81A3990(v105, v106);
  sub_1B81A3990(v97, &qword_1EBA7D080);
  OUTLINED_FUNCTION_96();
  sub_1B81A3990(v107, v108);
  OUTLINED_FUNCTION_96();
  sub_1B81A3990(v109, v110);
  sub_1B81A3990(v98, &qword_1EBA7D080);
  OUTLINED_FUNCTION_96();
  return sub_1B81A3990(v111, v112);
}

uint64_t sub_1B819D258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v218 = a2;
  v220 = type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_1_0();
  v201 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v203 = v8;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_28(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v13 = OUTLINED_FUNCTION_22_1(v12);
  v14 = type metadata accessor for PrimaryActionButtonView(v13);
  v15 = OUTLINED_FUNCTION_21(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD8);
  OUTLINED_FUNCTION_6_0(v18, v229);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFE0);
  v22 = OUTLINED_FUNCTION_21(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v217 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  v219 = v25;
  v26 = OUTLINED_FUNCTION_37_0();
  v27 = type metadata accessor for SGBannerPaddingParams(v26);
  v28 = OUTLINED_FUNCTION_21(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0A0);
  OUTLINED_FUNCTION_6_0(v31, &v235);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0A8);
  OUTLINED_FUNCTION_6_0(v33, &v236);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0B0);
  OUTLINED_FUNCTION_1_0();
  v215 = v37;
  v216 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_0();
  v214 = v38;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31();
  v223 = v40;
  v41 = OUTLINED_FUNCTION_37_0();
  v42 = type metadata accessor for IconView(v41);
  v43 = OUTLINED_FUNCTION_6_0(v42, &v233);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v45 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0B8);
  OUTLINED_FUNCTION_6_0(v46, &v231);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_32();
  v49 = OUTLINED_FUNCTION_22_1(v48);
  v50 = type metadata accessor for BannerIconSGView(v49);
  v51 = OUTLINED_FUNCTION_6_0(v50, &v232);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6();
  v54 = OUTLINED_FUNCTION_22_1(v53 - v52);
  v55 = type metadata accessor for SGBannerIconParams(v54);
  v56 = OUTLINED_FUNCTION_21(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_6();
  v59 = v58 - v57;
  v221 = type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_100();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v200 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0C0);
  OUTLINED_FUNCTION_6_0(v66, &v234);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_22_1(v68);
  v69 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v71 = v70;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_6();
  v75 = v74 - v73;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0C8);
  v77 = OUTLINED_FUNCTION_21(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_2_0();
  v222 = v78;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_31();
  v224 = v80;
  v225 = a1;
  sub_1B819A0DC();
  LOBYTE(a1) = sub_1B81F85A8();
  v81 = *(v71 + 8);
  v206 = v75;
  v208 = v69;
  v207 = v71 + 8;
  v205 = v81;
  v81(v75, v69);
  if (a1 & 1) != 0 && ((sub_1B81F8E98() & 1) == 0 || (*(v225 + 40)))
  {
    v82 = 1;
    v83 = v224;
    v84 = v213;
    v85 = v212;
    v86 = v211;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
    v87 = v225;
    sub_1B81F8D58();
    sub_1B81A1B90(&v65[*(v221 + 48)], v59, type metadata accessor for SGBannerIconParams);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v88 = *(v59 + 88);
    v89 = v88;
    sub_1B81A2340();
    if (v88)
    {

      v90 = *v87;
      sub_1B81F8D58();
      v91 = *(v87 + 8);
      v85 = v212;
      if (v91)
      {
        [v91 hostApp];
      }

      v84 = v213;
      v86 = v211;
      v93 = OUTLINED_FUNCTION_85();
      sub_1B81AA2CC(v93, v94, v95);
      OUTLINED_FUNCTION_89();
      sub_1B81A1B90(v96, v97, v98);
      OUTLINED_FUNCTION_144();
      OUTLINED_FUNCTION_56_0();
      sub_1B81A1B48(v99, v100);
      OUTLINED_FUNCTION_55_0();
      sub_1B81A1B48(v101, v102);
      OUTLINED_FUNCTION_77();
      sub_1B81A2340();
    }

    else
    {
      v2 = *v87;
      sub_1B81F8D58();
      v92 = *(v87 + 8);
      v85 = v212;
      if (v92)
      {
        [v92 hostApp];
      }

      v86 = v211;
      v103 = OUTLINED_FUNCTION_63();
      sub_1B81A9230(v103, v104, v105);
      OUTLINED_FUNCTION_89();
      sub_1B81A1B90(v106, v107, v108);
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_56_0();
      sub_1B81A1B48(v109, v110);
      OUTLINED_FUNCTION_55_0();
      sub_1B81A1B48(v111, v112);
      OUTLINED_FUNCTION_77();
      sub_1B81A2340();
      v84 = v213;
    }

    v83 = v224;
    sub_1B81A3804(v2, v224, &qword_1EBA7D0C0);
    v82 = 0;
  }

  __swift_storeEnumTagSinglePayload(v83, v82, 1, v209);
  *v3 = sub_1B81F85D8();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0D0);
  sub_1B819E300();
  v113 = sub_1B81F88F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
  sub_1B81F8D58();
  OUTLINED_FUNCTION_9_2();
  sub_1B81A1B90(v4 + v114, v86, v115);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  OUTLINED_FUNCTION_10_1();
  sub_1B81A2340();
  sub_1B81F8148();
  OUTLINED_FUNCTION_95();
  v117 = v3 + v116;
  *v117 = v113;
  *(v117 + 8) = v118;
  *(v117 + 16) = v119;
  *(v117 + 24) = v120;
  *(v117 + 32) = v121;
  *(v117 + 40) = 0;
  v122 = sub_1B81F8928();
  if (sub_1B81F8E98())
  {
    OUTLINED_FUNCTION_91();
    v123 = *(v4 + 2);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    if (v123 != 1 || (sub_1B819A0DC(), v124 = sub_1B81F85A8(), OUTLINED_FUNCTION_71(), v125(), (v124 & 1) != 0))
    {
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_9_2();
      sub_1B81A1B90(v4 + v126, v86, v127);
      OUTLINED_FUNCTION_0_1();
      sub_1B81A2340();
      OUTLINED_FUNCTION_10_1();
      sub_1B81A2340();
    }
  }

  sub_1B81F8148();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v136 = OUTLINED_FUNCTION_137();
  sub_1B81A3804(v136, v137, v138);
  v139 = &v85[*(v84 + 36)];
  *v139 = v122;
  *(v139 + 1) = v129;
  *(v139 + 2) = v131;
  *(v139 + 3) = v133;
  *(v139 + 4) = v135;
  v139[40] = 0;
  v140 = *(v225 + 8);
  if (v140)
  {
    v141 = [v140 hostApp] == 1;
  }

  else
  {
    v141 = 0;
  }

  sub_1B81A384C();
  sub_1B81D0734(v141);
  v142 = sub_1B81A3990(v85, &qword_1EBA7D0A8);
  v143 = *v225;
  v144 = MEMORY[0x1E69E7D40];
  v145 = *((*MEMORY[0x1E69E7D40] & **v225) + 0x230);
  if (v145)(v142) == 1 || v145() == 5 || (OUTLINED_FUNCTION_91(), v146 = *(v4 + 3), OUTLINED_FUNCTION_0_1(), sub_1B81A2340(), v146 != 1) || (sub_1B81F8E98() & 1) == 0 || (sub_1B819A0DC(), v147 = sub_1B81F85A8(), OUTLINED_FUNCTION_71(), v149 = v148(), (v147) && (*(v225 + 40))
  {
    v150 = 1;
  }

  else
  {
    v221 = (*((*v144 & *v143) + 0x1B8))(v149);
    v213 = v168;
    v212 = v143;
    v211 = sub_1B819F75C();
    if (v140)
    {
      v210 = [v140 hostApp] == 1;
    }

    else
    {
      v210 = 0;
    }

    v169 = v225;
    OUTLINED_FUNCTION_46_0();
    v229[0] = v170;
    v230 = v171;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0);
    sub_1B81F8D78();
    v173 = v226;
    v172 = v227;
    v174 = v228;
    v175 = v200[1];
    sub_1B81F8D78();
    OUTLINED_FUNCTION_46_0();
    v229[0] = v176;
    v230 = v177;
    sub_1B81F8D78();
    v199 = v228;
    v197 = v226;
    v198 = v227;
    OUTLINED_FUNCTION_109();
    sub_1B81AC5E0(v221, v213, v212, v211, v140, v210, v173, v172, v178, v174, v175, v197, v198, v199);
    OUTLINED_FUNCTION_17_2();
    v179 = v204;
    sub_1B81A1B90(v169, v204, v180);
    v181 = (*(v201 + 80) + 16) & ~*(v201 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_19_0();
    v183 = v182;
    sub_1B81A1BEC(v179, v184 + v181, v182);
    v185 = OUTLINED_FUNCTION_48_0();
    v186 = v202;
    sub_1B81A1BEC(v185, v202, v187);
    OUTLINED_FUNCTION_95();
    v189 = (v186 + v188);
    *v189 = sub_1B81A39E4;
    v189[1] = v229;
    v189[2] = 0;
    v189[3] = 0;
    OUTLINED_FUNCTION_109();
    sub_1B819A0DC();
    OUTLINED_FUNCTION_79();
    sub_1B81A1B90(v190, v191, v192);
    v193 = swift_allocObject();
    sub_1B81A1BEC(v179, v193 + v181, v183);
    sub_1B81A36A0();
    OUTLINED_FUNCTION_54_0();
    sub_1B81A1B48(v194, v195);
    sub_1B81F8C08();

    OUTLINED_FUNCTION_71();
    v196();
    sub_1B81A3990(v186, &qword_1EBA7CFD8);
    v150 = 0;
  }

  v151 = v218;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D058);
  v153 = v219;
  __swift_storeEnumTagSinglePayload(v219, v150, 1, v152);
  sub_1B81A37BC(v224, v222, &qword_1EBA7D0C8);
  v155 = v214;
  v154 = v215;
  v156 = *(v215 + 16);
  v157 = v223;
  v158 = v216;
  v156(v214, v223, v216);
  v159 = v217;
  sub_1B81A37BC(v153, v217, &qword_1EBA7CFE0);
  v160 = OUTLINED_FUNCTION_52();
  sub_1B81A37BC(v160, v161, &qword_1EBA7D0C8);
  v162 = v151;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0E0);
  v156(v162 + *(v163 + 48), v155, v158);
  sub_1B81A37BC(v159, v162 + *(v163 + 64), &qword_1EBA7CFE0);
  sub_1B81A3990(v153, &qword_1EBA7CFE0);
  v164 = *(v154 + 8);
  v164(v157, v158);
  sub_1B81A3990(v224, &qword_1EBA7D0C8);
  sub_1B81A3990(v159, &qword_1EBA7CFE0);
  v164(v155, v158);
  OUTLINED_FUNCTION_41();
  return sub_1B81A3990(v165, v166);
}

void sub_1B819E300()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v24[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_65();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D0F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D100);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_67();
  sub_1B819E5E4();
  v19 = *(v3 + 40);
  if (v19 == 1)
  {
    sub_1B81A37BC(v12, v9, &qword_1EBA7D0F8);
    *&v9[*(v6 + 36)] = 256;
    v20 = OUTLINED_FUNCTION_133();
    sub_1B81A37BC(v20, v21, v22);
    OUTLINED_FUNCTION_122();
    swift_storeEnumTagMultiPayload();
    sub_1B81A39E8();
    sub_1B81A3A74();
    OUTLINED_FUNCTION_85();
    sub_1B81F8718();
    sub_1B81A3990(v9, &qword_1EBA7D0F0);
  }

  else
  {
    sub_1B81A37BC(v12, v0, &qword_1EBA7D0F8);
    OUTLINED_FUNCTION_122();
    swift_storeEnumTagMultiPayload();
    sub_1B81A39E8();
    sub_1B81A3A74();
    OUTLINED_FUNCTION_85();
    sub_1B81F8718();
  }

  sub_1B81A3990(v12, &qword_1EBA7D0F8);
  v23 = sub_1B81A3804(v17, v1, &qword_1EBA7D100);
  MEMORY[0x1EEE9AC00](v23);
  v24[-2] = v3;
  sub_1B819EFA4(v19, sub_1B81A3B68);
  sub_1B81A3990(v1, &qword_1EBA7D100);
  OUTLINED_FUNCTION_37();
}

void sub_1B819E5E4()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_32();
  v119 = v5;
  v6 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for SubtitleView(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v118 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D128);
  v11 = OUTLINED_FUNCTION_21(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v125 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D130);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v122 = v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D138);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v114 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEF8);
  OUTLINED_FUNCTION_21(v18);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_65();
  v20 = type metadata accessor for SGBannerViewModel(0);
  v21 = OUTLINED_FUNCTION_21(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v124 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_40_0();
  v117 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40_0();
  v123 = v26;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_67();
  v29 = sub_1B81F7908();
  v30 = OUTLINED_FUNCTION_21(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v33 = v32 - v31;
  type metadata accessor for TitleView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D140);
  v39 = OUTLINED_FUNCTION_21(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_40_0();
  v120 = v41;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31();
  v127 = v43;
  v44 = *v3;
  sub_1B8187C80(*v3);
  type metadata accessor for SGBannerContainerView(0);
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
  sub_1B81F8D58();
  v46 = *(v3 + 8);
  v115 = v46;
  if (v46)
  {
    v47 = [v46 hostApp] == 1;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v3 + 40);
  sub_1B81B5434();
  v116 = v48;
  sub_1B81AB0CC(v33, v45, v47, v48, v0, v37);
  sub_1B81F8D58();
  v49 = *(v1 + 4);
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  if (v49 == 1 && (sub_1B81F8E98() & 1) != 0)
  {
    if (qword_1EDC8CF40 != -1)
    {
      OUTLINED_FUNCTION_13_1();
    }

    v50 = qword_1EDC8D108;
    v51 = OUTLINED_FUNCTION_47_0();
    sub_1B81A1B90(v51, v114, v52);
    v53 = (v114 + *(v121 + 36));
    *v53 = v50;
    v53[1] = sub_1B819EF7C;
    v53[2] = 0;
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_51();
    sub_1B81A37BC(v54, v55, v56);
    swift_storeEnumTagMultiPayload();
    sub_1B81A3DF0();
    OUTLINED_FUNCTION_49_0();
    sub_1B81A1B48(v57, v58);
    OUTLINED_FUNCTION_126();
    v60 = v59;
    sub_1B81F8718();
    OUTLINED_FUNCTION_53();
    sub_1B81A3990(v61, v62);
  }

  else
  {
    v63 = OUTLINED_FUNCTION_47_0();
    sub_1B81A1B90(v63, v122, v64);
    swift_storeEnumTagMultiPayload();
    sub_1B81A3DF0();
    OUTLINED_FUNCTION_49_0();
    sub_1B81A1B48(v65, v66);
    v60 = v120;
    sub_1B81F8718();
  }

  sub_1B81A2340();
  sub_1B81A3804(v60, v127, &qword_1EBA7D140);
  sub_1B81F8D58();
  v67 = *(v123 + 4);
  OUTLINED_FUNCTION_0_1();
  v68 = sub_1B81A2340();
  if (v67 == 1)
  {
    v126 = sub_1B81874B8();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    sub_1B81F8D58();
    v75 = *(v117 + 5);
    OUTLINED_FUNCTION_0_1();
    sub_1B81A2340();
    v76 = v45;
    sub_1B81F8D58();
    if (v115)
    {
      v77 = [v115 hostApp] == 1;
    }

    else
    {
      v77 = 0;
    }

    v89 = v74;
    v90 = v72;
    sub_1B81AB1AC(v126, v70 & 1, v72, v74, v116, v75, v76, v124, v77);
    sub_1B81A1B90(v118, v119, type metadata accessor for SubtitleView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_59_0();
    sub_1B81A1B48(v91, v92);
    sub_1B81A3EAC();
    v87 = v125;
    sub_1B81F8718();

    sub_1B81A2340();
    goto LABEL_19;
  }

  v78 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v45) + 0x230))(v68) == 1)
  {
    sub_1B81F8D58();
    v79 = *(v123 + 3);
    OUTLINED_FUNCTION_0_1();
    v80 = sub_1B81A2340();
    if (v79 == 1)
    {
      (*((*v78 & *v45) + 0x1B8))(v80);
      v81 = v45;
      v82 = OUTLINED_FUNCTION_16_0();
      *v119 = nullsub_1(v82);
      v119[1] = v83;
      v119[2] = v84;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_59_0();
      sub_1B81A1B48(v85, v86);
      sub_1B81A3EAC();
      v87 = v125;
      sub_1B81F8718();
LABEL_19:
      v88 = 0;
      goto LABEL_20;
    }
  }

  v88 = 1;
  v87 = v125;
LABEL_20:
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D148);
  __swift_storeEnumTagSinglePayload(v87, v88, 1, v93);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v94, v95, v96);
  OUTLINED_FUNCTION_78();
  sub_1B81A37BC(v97, v98, v99);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v100, v101, v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D150);
  OUTLINED_FUNCTION_78();
  sub_1B81A37BC(v103, v104, v105);
  OUTLINED_FUNCTION_41();
  sub_1B81A3990(v106, v107);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v108, v109);
  OUTLINED_FUNCTION_41();
  sub_1B81A3990(v110, v111);
  OUTLINED_FUNCTION_53();
  sub_1B81A3990(v112, v113);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819EFA4(char a1, void (*a2)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D110);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D118);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if (a1)
  {
    a2(v2);
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D100);
    v13 = sub_1B81A3B70();
    v17 = v12;
    v18 = v13;
    swift_getOpaqueTypeConformance2();
    sub_1B81F8718();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1B81A37BC(v2, v7, &qword_1EBA7D100);
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D100);
    v16 = sub_1B81A3B70();
    v17 = v15;
    v18 = v16;
    swift_getOpaqueTypeConformance2();
    return sub_1B81F8718();
  }
}

void sub_1B819F21C()
{
  OUTLINED_FUNCTION_38();
  v45 = v0;
  v47 = v4;
  v48 = v3;
  v6 = v5;
  v8 = v7;
  v41 = v10;
  v42 = v9;
  v44 = v11;
  v13 = v12;
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_101();
  v46 = sub_1B81F8728();
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_118();
  if (v44)
  {
    v42(v45);
    v27 = *(v22 + 16);
    v28 = OUTLINED_FUNCTION_125();
    v27(v28);
    v45 = v13;
    v29 = *(v22 + 8);
    v30 = OUTLINED_FUNCTION_134();
    v29(v30);
    v31 = OUTLINED_FUNCTION_61();
    v27(v31);
    v32 = OUTLINED_FUNCTION_134();
    sub_1B8199484(v32, v33);
    v34 = OUTLINED_FUNCTION_134();
    v29(v34);
    (v29)(v1, v6);
  }

  else
  {
    v35 = v43;
    v36 = *(v43 + 16);
    v36(v20, v45, v8);
    v36(v16, v20, v8);
    sub_1B819957C(v16, v6, v8);
    v37 = *(v35 + 8);
    v37(v16, v8);
    v37(v20, v8);
  }

  v49 = v47;
  v50 = v48;
  OUTLINED_FUNCTION_2_2();
  v38 = v46;
  swift_getWitnessTable();
  v39 = OUTLINED_FUNCTION_126();
  v40(v39);
  (*(v25 + 8))(v2, v38);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B819F540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B81A1B90(*a1, a2, type metadata accessor for SGBannerContainerView);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFB0);
  sub_1B81A1B90(a1[1], a2 + v4[12], type metadata accessor for SGBannerContainerView);
  sub_1B81A1B90(a1[2], a2 + v4[16], type metadata accessor for SGBannerContainerView);
  sub_1B81A1B90(a1[3], a2 + v4[20], type metadata accessor for SGBannerContainerView);
  sub_1B81A1B90(a1[4], a2 + v4[24], type metadata accessor for SGBannerContainerView);
  result = sub_1B81A1B90(a1[5], a2 + v4[28], type metadata accessor for SGBannerContainerView);
  v6 = a2 + v4[32];
  v7 = a1[6];
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 8) = v7;
  return result;
}

uint64_t sub_1B819F628()
{
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for SGBannerContainerView(v0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_53_0();
  v4 = OUTLINED_FUNCTION_122();
  sub_1B81A1B90(v4, v5, v6);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_52_0();
  sub_1B81A1BEC(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D100);
  sub_1B81A3B70();
  OUTLINED_FUNCTION_78();
  sub_1B81F8B48();
}