uint64_t sub_216717C08(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v11 = &a1[*(a3 + 44)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_216717C9C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = &v5[*(a4 + 44)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216717D24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC30);
  type metadata accessor for PlaylistTrackListSection.DividerOverlay();
  OUTLINED_FUNCTION_17_34();
  swift_getWitnessTable();
  sub_217008BC4();
  sub_2170089F4();
  OUTLINED_FUNCTION_16_7();
  sub_2166D9530(v0, &unk_27CABF910);
  type metadata accessor for PlaylistTrackLockupView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0);
  OUTLINED_FUNCTION_23_24();
  sub_2166D56E4(v1, v2);
  OUTLINED_FUNCTION_21_27();
  sub_21695EDD0(v3, &qword_27CABB0C0, &unk_2170231B0, v4);
  OUTLINED_FUNCTION_20_23();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  type metadata accessor for PaginatingGridView();
  sub_21700B1D4();
  sub_21695ED20();
  OUTLINED_FUNCTION_22_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_29();
  return swift_getWitnessTable();
}

uint64_t sub_216717F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216718034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216718108(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_29_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
    OUTLINED_FUNCTION_17();
    if (*(v6 + 84) == v2)
    {
      v7 = *(v3 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v7 = *(v3 + 48);
    }

    v8 = OUTLINED_FUNCTION_19_1(v7);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

uint64_t sub_2167181E0(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
    OUTLINED_FUNCTION_17();
    if (*(v6 + 84) == a3)
    {
      v7 = *(a4 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v7 = *(a4 + 48);
    }

    v8 = OUTLINED_FUNCTION_11_6(v7);

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_2167182B4()
{
  type metadata accessor for ActionButton();
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v1 + v3;
  if (*(v1 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);
  }

  if (*(v4 + 56))
  {
  }

  v5 = v0[11];
  v6 = sub_217007F04();
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  v7 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  v9 = v4 + v0[13];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216718460()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167184D8()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216718550()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167185C8()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216718640()
{
  sub_21700AF54();
  OUTLINED_FUNCTION_6_43();

  return swift_getWitnessTable();
}

uint64_t sub_216718678()
{
  sub_2170080D4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_14_31();

  return swift_deallocObject();
}

uint64_t sub_2167186EC()
{
  v1 = (type metadata accessor for ActionButtonStyle(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216718800()
{
  type metadata accessor for ActionButtonListStyle(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_216684F5C(*(v3 + *(v0 + 28)), *(v3 + *(v0 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_216718928(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDF8);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21671898C()
{
  OUTLINED_FUNCTION_13_21();
  if (v3)
  {
    return OUTLINED_FUNCTION_0_11(*(v1 + 24));
  }

  OUTLINED_FUNCTION_29_3();
  sub_217007F04();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v6 = *(v2 + 28);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_216718A44()
{
  OUTLINED_FUNCTION_4_33();
  if (v4)
  {
    *(v1 + 24) = v0;
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_217007F04();
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_11_6(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_216718B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDD8);
  sub_217009BE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDE0);
  OUTLINED_FUNCTION_7_46();
  sub_216962E24(v0, v1);
  sub_217008CA4();
  sub_216962E24(&qword_280E2ACD8, MEMORY[0x277CDFCB0]);
  OUTLINED_FUNCTION_8_39();
  OUTLINED_FUNCTION_8_39();
  return OUTLINED_FUNCTION_3_65();
}

uint64_t sub_216718C50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDE00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDF8);
  sub_2169630A4();
  OUTLINED_FUNCTION_3_65();
  return OUTLINED_FUNCTION_8_39();
}

uint64_t sub_216718CC8()
{
  type metadata accessor for SystemActionButton(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  if (*(v1 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);
  }

  if (*(v4 + 40))
  {
  }

  v5 = v0[6];
  sub_217007F04();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v4 + v5);
  v7 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  v9 = v4 + v0[8];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216718E44()
{

  return swift_deallocObject();
}

uint64_t sub_216718E7C()
{
  type metadata accessor for ActionButtonModifier();
  OUTLINED_FUNCTION_2_59();
  swift_getWitnessTable();
  sub_2170097A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_14_31();

  return swift_deallocObject();
}

uint64_t sub_216718F58()
{
  sub_217009BE4();
  OUTLINED_FUNCTION_7_46();
  sub_216962E24(v0, v1);
  return OUTLINED_FUNCTION_3_65();
}

uint64_t sub_216718FB4()
{
  type metadata accessor for ActionButtonModifier();
  OUTLINED_FUNCTION_2_59();
  swift_getWitnessTable();
  sub_2170097A4();
  swift_getWitnessTable();
  type metadata accessor for ActionButton();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_39();
}

uint64_t sub_21671908C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216719134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167191F0()
{
  sub_2166B8588();

  return swift_deallocObject();
}

uint64_t sub_216719238()
{
  sub_217006404();
  sub_216964CFC(&qword_280E4A4B0, MEMORY[0x277D269B8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167192C0()
{

  return swift_deallocObject();
}

uint64_t sub_216719324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167193CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21671947C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ContentDescriptor();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216719518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ContentDescriptor();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167195BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216719604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216719660()
{

  return swift_deallocObject();
}

uint64_t sub_2167196AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2169680CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216719704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216719798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216719824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167198E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

__n128 sub_2167199AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167199B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReplayYearModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216719A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for ReplayYearModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216719B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216719BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216719D9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_5_46();

  return swift_deallocObject();
}

uint64_t sub_216719DE0()
{
  v13 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v5 = *(v4 + 64);
  v6 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v13);
  (*(v8 + 8))(v0 + v9, v6);

  return swift_deallocObject();
}

uint64_t sub_216719F78()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21671A014()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21671A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21671A158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SectionChangeInstruction.Instruction(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_21671A27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchLandingBrickLockup();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21671A328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchLandingBrickLockup();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_21671A3E4()
{
  v1 = type metadata accessor for SearchLandingBrickLockupView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SearchLandingBrickLockup();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v5[5]);
  v6 = v3 + v5[6];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = v3 + v5[9];
  v8 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
  {

    v9 = *(v8 + 24);
    v10 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }
  }

  v11 = v3 + v5[10];
  v12 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v11);
    v14 = *(v12 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v11 + v14);
  }

  sub_216684F5C(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  sub_216684F5C(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_21671A6A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1A8);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21671A708()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

void sub_21671A784(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_2166B8710(a1);
  }
}

uint64_t sub_21671A8A8()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for TextListComponentModel();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_21671A8EC()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for TextListComponentModel();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_21671A934@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AD3A94();
  *a1 = result;
  return result;
}

uint64_t sub_21671A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21671AA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = v4;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21671AC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21671ACD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21671ADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaButtonType(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21671AE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for MediaButtonType(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21671AF94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE498);
  sub_216980198();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671B090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_102();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_22_1(*(v4 + *(a3 + 20) + 8));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_21671B1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UserSocialProfileDescriptor(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_21671B23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  type metadata accessor for UserSocialProfileDescriptor(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_21671B2D8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a3[16];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21671B40C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a4[16];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21671B53C(uint64_t a1)
{
  result = sub_2166D4668(qword_280E43620, type metadata accessor for FlowcaseLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21671B594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_21700D284();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21671B628(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C444();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21671B750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C444();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21671B86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21698CD80();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21671B8E8()
{
  v1 = sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for FullScreenArtworkView(0);
  v8 = (v4 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v9 = *(v3 + 8);
  v9(v0 + v4, v1);
  if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v1))
  {
    v9(v0 + v8, v1);
  }

  v10 = *(v7 + 20);
  sub_21700C444();
  OUTLINED_FUNCTION_34();
  (*(v11 + 8))(v0 + v8 + v10);

  return swift_deallocObject();
}

uint64_t sub_21671BAC0()
{
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE680);
  OUTLINED_FUNCTION_191();
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_21700B0A4();
  return swift_getWitnessTable();
}

uint64_t sub_21671BBB0()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE778);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_21671BC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21671BCC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21671BD60()
{
  type metadata accessor for SingleItemSectionViewModifier();
  OUTLINED_FUNCTION_7_49();
  sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21698EDC8();
  OUTLINED_FUNCTION_92_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21671C090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21671C140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671C1D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671C260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671C2F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671C438()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21671C478()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_22_1(*v0);
  }

  v5 = v2;
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600) - 8) + 84) == v1)
  {
    v6 = *(v5 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v6 = *(v5 + 40);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21671C548(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600) - 8) + 84) == v4)
    {
      v8 = *(v7 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
      v8 = *(v7 + 40);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_21671C648()
{
  type metadata accessor for ReplayPageBackgroundView();
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = *(v0 + 36);
  v6 = sub_2170098A4();
  if (!OUTLINED_FUNCTION_12_37(v6))
  {
    (*(*(v2 - 8) + 8))(v4 + v5, v2);
  }

  v7 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671C7AC()
{
  type metadata accessor for ReplayPageBackgroundView();
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = *(v0 + 36);
  v6 = sub_2170098A4();
  if (!OUTLINED_FUNCTION_12_37(v6))
  {
    (*(*(v2 - 8) + 8))(v4 + v5, v2);
  }

  v7 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671C91C()
{

  return swift_deallocObject();
}

uint64_t sub_21671C954()
{
  OUTLINED_FUNCTION_4_3();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 24));
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0);
  v6 = OUTLINED_FUNCTION_19_1(*(v5 + 44));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21671C9D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *(v2 + 24) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0);
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 44));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_21671CA60()
{

  return swift_deallocObject();
}

uint64_t sub_21671CA98()
{
  sub_217009994();
  sub_216998AB4(&qword_27CABEA80, MEMORY[0x277CDE300]);
  sub_217008334();
  sub_217009564();
  sub_21700AD94();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671CC40()
{

  return swift_deallocObject();
}

uint64_t sub_21671CC78()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21671CCB0()
{

  return swift_deallocObject();
}

uint64_t sub_21671CD28()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671CD78(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_2170073D4();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_21671CE98(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_2170073D4();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21671CFA8(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_21700C384();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_21671D0C8(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_21700C384();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

id sub_21671D24C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CAC4();
  *v0 = result;
  return result;
}

uint64_t sub_21671D274()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CBAC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D29C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CCA4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D2C4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CC0C();
  *v0 = result;
  return result;
}

uint64_t sub_21671D2F0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CB84();
  *v0 = result;
  return result;
}

uint64_t sub_21671D318()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CA9C();
  *v0 = result;
  return result;
}

uint64_t sub_21671D89C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3DBC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D8C8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3D0C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21671D91C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3CE4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21671D970()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3BFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0D0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21671D9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0D0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21671DA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217005EF4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21671DB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217005EF4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21671DBF0()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 65) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21671DD68()
{
  OUTLINED_FUNCTION_102();
  v2 = type metadata accessor for ContentDescriptor();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_21671DDA8()
{
  OUTLINED_FUNCTION_102();
  v2 = type metadata accessor for ContentDescriptor();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_21671DDF0()
{
  v1 = type metadata accessor for GroupingContextMenu(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = *(v4 + 64);
  v5 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);

  v9 = *(type metadata accessor for ContentDescriptor() + 24);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0 + v3 + v9, 1, v5);
  v11 = *(v7 + 8);
  if (!EnumTagSinglePayload)
  {
    v11(v0 + v3 + v9, v5);
  }

  v11(v0 + ((v3 + v13 + v8) & ~v8), v5);

  return swift_deallocObject();
}

uint64_t sub_21671DF94()
{
  v1 = type metadata accessor for GroupingContextMenu(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(type metadata accessor for ContentDescriptor() + 24);
  v5 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    OUTLINED_FUNCTION_50();
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21671E0CC()
{
  v1 = (type metadata accessor for GenericContextMenu(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v2);
  v4 = v2 + v1[7];
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v4);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v7 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21671E25C()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MenuConfiguration(0);
  v8 = (v4 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v9 = v0 + v8;
  v10 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v10))
  {

    v11 = *(v10 + 24);
    v12 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v12))
    {
      OUTLINED_FUNCTION_50();
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  v14 = v9 + *(v7 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_50();
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v9 + *(v7 + 32);
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return swift_deallocObject();
}

uint64_t sub_21671E51C()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_2169C9B18(&qword_27CABF180, &qword_27CABF178);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI13PerformAction_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21671E664()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  }

  return swift_deallocObject();
}

uint64_t sub_21671E6DC()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217009084();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21671E740()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217009014();
  *v0 = result;
  return result;
}

uint64_t sub_21671E79C()
{
  OUTLINED_FUNCTION_17_6();
  result = MEMORY[0x21CE99E50]();
  *v0 = result;
  return result;
}

uint64_t sub_21671E7C8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);
  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  }

  if (*(v0 + 200))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 208);
    if (*(v0 + 272))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);
    }
  }

  if (*(v0 + 368))
  {
    if (*(v0 + 352))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 328);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671E8B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF308);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21671E920()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  if (*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  }

  if (*(v0 + 296))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 304);
    if (*(v0 + 368))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 344);
    }
  }

  if (*(v0 + 464))
  {
    if (*(v0 + 448))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 424);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671EA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF310);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
  sub_2169CFBFC();
  sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671EB3C()
{
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  sub_21700AF94();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21671EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671ED14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671EDA0()
{
  v1 = type metadata accessor for SearchLandingPageView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    sub_2166DE7B8(*v2);
  }

  sub_2166B8588();

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671EF14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21671EF4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216E411C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_21671EF88(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_21671EFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600);
  sub_2169D431C();
  sub_2169D46A0();
  OUTLINED_FUNCTION_0_12();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671F08C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF538);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_21671F0EC()
{
  type metadata accessor for RecentSearchLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  sub_216684F5C(*(v3 + v0[6]), *(v3 + v0[6] + 8));
  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  v8 = v3 + v0[8];
  if (*(v8 + 40))
  {
    if (*(v8 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671F278(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF540);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21671F2E0()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = v10 + *(v0 + 32);
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_21671F594()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_5_56();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  v5 = OUTLINED_FUNCTION_19_1(*(v4 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_21671F610(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_21671F694()
{
  OUTLINED_FUNCTION_4_3();
  if (v0 == v2)
  {
    return OUTLINED_FUNCTION_5_56();
  }

  v4 = v1;
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40) - 8) + 84) == v0)
  {
    v5 = *(v4 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v5 = *(v4 + 28);
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21671F760(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40) - 8) + 84) == v4)
    {
      v8 = *(v7 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v8 = *(v7 + 28);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_21671F83C()
{
  v1 = (type metadata accessor for Card(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_21671F93C()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21671FA58(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700BA44();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
  OUTLINED_FUNCTION_17();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_21671FB9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700BA44();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21671FCD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21671FD68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167200F4()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670);
  if (OUTLINED_FUNCTION_34_20() <= 5)
  {
    sub_2170073D4();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3 + v1);
  v6 = OUTLINED_FUNCTION_11_41();
  v7(v6);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216720268()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690);
  if (OUTLINED_FUNCTION_34_20() <= 5)
  {
    sub_21700C084();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3 + v1);
  v6 = OUTLINED_FUNCTION_11_41();
  v7(v6);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167203D8()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0);
  if (OUTLINED_FUNCTION_34_20() <= 5)
  {
    sub_21700C924();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3 + v1);
  v6 = OUTLINED_FUNCTION_11_41();
  v7(v6);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216720548()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8);
  if (OUTLINED_FUNCTION_34_20() <= 5)
  {
    sub_21700BA44();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3 + v1);
  v6 = OUTLINED_FUNCTION_11_41();
  v7(v6);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167206B8()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0);
  if (OUTLINED_FUNCTION_34_20() <= 5)
  {
    sub_217006B84();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3 + v1);
  v6 = OUTLINED_FUNCTION_11_41();
  v7(v6);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216720828()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E0);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E8);
  if (OUTLINED_FUNCTION_34_20() <= 5)
  {
    sub_21700C1E4();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3 + v1);
  v6 = OUTLINED_FUNCTION_11_41();
  v7(v6);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167209F4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217006224();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700);
      v14 = a3[9];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216720B18(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217006224();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700);
      v14 = a4[9];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216720C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216720CCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216720D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 52) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_216720E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 44);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  }
}

uint64_t sub_216720EF4()
{
  sub_21700DFD4();
  OUTLINED_FUNCTION_34();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216720FAC()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216721024()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216721084()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167210F4()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_216721184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672122C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167212DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216721384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216721434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MenuActionType();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167214E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MenuActionType();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216721588(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167215D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216721644()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = sub_21700D194();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21672174C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169FDD04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2167217A8()
{

  return swift_deallocObject();
}

uint64_t sub_2167217E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10);
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216721874()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167218C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216721914()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216721950()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_2167219AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216721A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_216721B0C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a3[13];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216721C40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a4[13];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

__n128 sub_216721D8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216721D9C()
{

  return swift_deallocObject();
}

uint64_t sub_216721DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006FE4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216721E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006FE4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216721EAC()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216721EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphComponentModel();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216721F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphComponentModel();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216721F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216721FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216722028@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008E04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21672207C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC88);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216722110(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC88);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167221A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC98);
  OUTLINED_FUNCTION_0_111();
  sub_216A0B7B8(v0, &qword_27CABFC98, &unk_217034FA8, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216722230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167222DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216722384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216722418(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167224CC()
{
  v1 = (type metadata accessor for CollaborationAction() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v11 = *(*v1 + 64);
  v3 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = *(v4 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v7 + 8))(v0 + v2);
  v8 = v1[7];
  v9 = sub_21700C924();
  if (!__swift_getEnumTagSinglePayload(v0 + v2 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  }

  (*(v5 + 8))(v0 + ((v2 + v11 + v6) & ~v6), v3);

  return swift_deallocObject();
}

uint64_t sub_21672268C()
{
  OUTLINED_FUNCTION_29_3();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[5];
  }

  else
  {
    if (v0 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_22_1(*(v3 + v1[6]));
    }

    sub_21700D194();
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == v0)
    {
      v5 = v1[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8);
      v5 = v1[9];
    }
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21672279C(uint64_t a1, int a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6]) = (a2 - 1);
      return;
    }

    sub_21700D194();
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v9 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8);
      v9 = a4[9];
    }
  }

  v10 = OUTLINED_FUNCTION_11_6(v9);

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_216722908()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  sub_21700D194();
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_216722974()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21700D194();
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2167229E0()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*v0);
  }

  OUTLINED_FUNCTION_29_3();
  sub_21700D194();
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_216722A4C()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21700D194();
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216722AB8()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    return OUTLINED_FUNCTION_22_1(*v1);
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    sub_21700D194();
    v6 = *(v2 + 32);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_216722B70()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      sub_21700D194();
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_11_6(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_216722C2C(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_2170070F4();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216722D4C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_2170070F4();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216722E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216722F0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216723044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB968);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216723134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB968);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167232D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_217007CA4();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216723358(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007CA4();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167233D8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_12_41();
  v2 = (type metadata accessor for LibraryPinAction() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  OUTLINED_FUNCTION_12_41();
  v5 = (type metadata accessor for LibraryPinActionImplementation() - 8);
  v6 = *(*v5 + 80);
  OUTLINED_FUNCTION_12_41();
  type metadata accessor for LibraryPinActionType();
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v7 = v2[11];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v0 + v3 + v7);

  v9 = (v0 + ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6));

  v10 = v5[12];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v11 + 8))(v9 + v10);

  return swift_deallocObject();
}

uint64_t sub_2167235C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216723688(uint64_t a1, uint64_t a2)
{
  v4 = sub_217009384();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167236D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217009384();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216723750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216723800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216723A84()
{
  type metadata accessor for MusicClickMetricsModifier();
  sub_2170089F4();
  sub_216A25F8C();
  return swift_getWitnessTable();
}

uint64_t sub_216723AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0080);
  sub_216A26514();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216723B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216723C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216723CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF4504();
  *a1 = result;
  return result;
}

__n128 sub_216723D04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_216723D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF452C();
  *a1 = result;
  return result;
}

uint64_t sub_216723D4C()
{
  OUTLINED_FUNCTION_4_66();
  type metadata accessor for NestedPresentationModifier();
  swift_getWitnessTable();
  sub_2170097A4();
  OUTLINED_FUNCTION_42();
  type metadata accessor for PresentationItem();
  OUTLINED_FUNCTION_4_66();
  type metadata accessor for PresentationView();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_116();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2_77();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668);
  OUTLINED_FUNCTION_2_77();
  sub_2167B2E14();
  sub_2167C4D74();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216723FB4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a3[11];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2167240DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216724200(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216724248(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2167242D4()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216724308()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216724350()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216724388()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21672440C()
{
  type metadata accessor for NavigationDestinationsModifier();
  sub_2170089F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2167244A4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[11];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
          v14 = a3[12];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216724670(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
          v14 = a4[12];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216724838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2170067A4();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167248D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2170067A4();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216724978(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  type metadata accessor for DefaultSectionHeader();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v14 = *(v3 + a3[6] + 32);
        if (v14 > 1)
        {
          return (v14 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v12 = a3[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0208);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v12 = a3[8];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
          v12 = a3[9];
        }
      }
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_216724B2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  type metadata accessor for DefaultSectionHeader();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(v4 + a4[6] + 32) = -a2;
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0208);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
          v14 = a4[9];
        }
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216724CE0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  sub_21678817C(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_216724D6C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0288);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_216724E30()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for LibraryButtonView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + v2);
    }
  }

  else
  {
  }

  v4 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_2166B8588();
  (*(*(v9 - 8) + 8))(v3 + v1[15]);
  v6 = v1[17];
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v7 + 8))(v3 + v6);
  return swift_deallocObject();
}

uint64_t sub_216724FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21672509C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21672516C()
{
  v0 = OUTLINED_FUNCTION_102();
  type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(v0);
  v1 = OUTLINED_FUNCTION_38();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2167251A8()
{
  v1 = OUTLINED_FUNCTION_102();
  type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(v1);
  v2 = OUTLINED_FUNCTION_38();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_2167251E8()
{
  OUTLINED_FUNCTION_102();
  sub_21700C4B4();
  v0 = OUTLINED_FUNCTION_38();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_216725224()
{
  OUTLINED_FUNCTION_102();
  sub_21700C4B4();
  v1 = OUTLINED_FUNCTION_38();

  return __swift_storeEnumTagSinglePayload(v1, v2, v0, v3);
}

uint64_t sub_2167252B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216725368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
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

uint64_t sub_21672543C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2167254C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167255BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170067A4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216725658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2170067A4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167257A8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2167257DC()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216725810()
{
  v1 = sub_217006A94();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2167258D0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

__n128 sub_216725990(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167259C8()
{

  return swift_deallocObject();
}

uint64_t sub_216725A00()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_216725A4C()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216725AAC()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216A45CF8();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216725B0C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216A403B4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216725BA0(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_217006B84();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216725CC0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_217006B84();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216725DD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_216725E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216725ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
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

uint64_t sub_216725FAC()
{
  v1 = type metadata accessor for SocialProfileViewFollowRequestsView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + *(v5 + 20));

  v6 = v3 + *(v1 + 20);
  sub_21680E444(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));

  return swift_deallocObject();
}

uint64_t sub_216726100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 32);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167261AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = -a2;
  }

  return result;
}

uint64_t sub_21672625C()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_21672630C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216726354()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216726394()
{
  type metadata accessor for PresentationSourceModifier();
  sub_2170089F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21672643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167264F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167265E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216726630(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672667C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21672671C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167267A8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216A54194();
  *v0 = result;
  return result;
}

uint64_t sub_216726804()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216726838()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216A53D50();
  *v0 = result;
  return result;
}

uint64_t sub_216726864()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2167268C4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216A53F4C();
  *v0 = result;
  return result;
}

uint64_t sub_2167268F0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216A53B88();
  *v0 = result;
  return result;
}

uint64_t sub_21672691C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216726964()
{

  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216726998()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2167269DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216726A14()
{

  sub_21677A524(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_216726A84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0A80);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216726B18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0A80);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216726BA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF4504();
  *a1 = result;
  return result;
}

__n128 sub_216726BD8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_216726BE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF452C();
  *a1 = result;
  return result;
}

uint64_t sub_216726C48()
{
  OUTLINED_FUNCTION_22_35();
  type metadata accessor for PresentationSourceModifier();
  OUTLINED_FUNCTION_6_55();
  swift_getWitnessTable();
  sub_2170097A4();
  OUTLINED_FUNCTION_42();
  type metadata accessor for PresentationItem();
  OUTLINED_FUNCTION_22_35();
  type metadata accessor for PresentationView();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_82();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_125();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_17_41();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668);
  OUTLINED_FUNCTION_17_41();
  sub_2167B2E14();
  sub_2167C4D74();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_13_36();
  swift_getOpaqueTypeMetadata2();
  sub_217008034();
  OUTLINED_FUNCTION_13_36();
  sub_216A5F1E0();
  OUTLINED_FUNCTION_0_12();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216726EC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216726F5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216727010()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216727064()
{

  return swift_deallocObject();
}

uint64_t sub_2167270A4()
{

  return swift_deallocObject();
}

uint64_t sub_216727114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_102();
  v7 = type metadata accessor for CuratorToolbarContent(v6);
  if (*(*(v7 - 8) + 84) == v3)
  {
    v8 = v7;
    v9 = v4;
  }

  else
  {
    v8 = type metadata accessor for ToolbarProperties(0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_2167271A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  v9 = type metadata accessor for CuratorToolbarContent(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v5;
  }

  else
  {
    v10 = type metadata accessor for ToolbarProperties(0);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216727244()
{
  OUTLINED_FUNCTION_102();
  v2 = type metadata accessor for CuratorDetailHeaderComponentModel();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216727284()
{
  OUTLINED_FUNCTION_102();
  v2 = type metadata accessor for CuratorDetailHeaderComponentModel();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_2167272C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D98);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216727324()
{
  v2 = type metadata accessor for ShareMusicItemAction();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_2(v6);
  v8 = *(v7 + 80);
  v9 = v4 + v5 + v8;
  v10 = v0 + v4;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v10);
  v12 = v10 + *(v2 + 20);
  v13 = type metadata accessor for ShareableMusicItem(0);
  if (!OUTLINED_FUNCTION_15_10(v13))
  {
    OUTLINED_FUNCTION_22_4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        sub_21700C1E4();
        goto LABEL_32;
      case 1u:
        sub_21700C384();
        goto LABEL_32;
      case 2u:
        sub_2170072A4();
        goto LABEL_32;
      case 3u:
        sub_21700C554();
        goto LABEL_32;
      case 4u:
        sub_217006F54();
        goto LABEL_32;
      case 5u:
        v19 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_15_10(v19))
        {
          OUTLINED_FUNCTION_50();
          v20 = OUTLINED_FUNCTION_22_4();
          v21(v20);
        }

        type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_9_53();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();
        v22 = *(v1 + 32);
        sub_217005EF4();
        OUTLINED_FUNCTION_9_0();
        (*(v23 + 8))(v12 + v22);
        type metadata accessor for MusicFriendsInviteDescriptor(0);
        OUTLINED_FUNCTION_9_53();
        OUTLINED_FUNCTION_89();
        break;
      case 6u:
        sub_21700C254();
        goto LABEL_32;
      case 7u:
        sub_217006B84();
        goto LABEL_32;
      case 8u:
        sub_21700BA44();
        goto LABEL_32;
      case 9u:
        sub_21700C924();
        goto LABEL_32;
      case 0xAu:
        sub_21700C994();
        goto LABEL_32;
      case 0xBu:
        sub_21700BEA4();
        goto LABEL_32;
      case 0xCu:
        v14 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_15_10(v14))
        {
          OUTLINED_FUNCTION_50();
          v15 = OUTLINED_FUNCTION_22_4();
          v16(v15);
        }

        v17 = type metadata accessor for ShareURLDescriptor(0);
        OUTLINED_FUNCTION_89();
        v18 = *(v17 + 28);
        goto LABEL_26;
      case 0xDu:
        v24 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_15_10(v24))
        {
          OUTLINED_FUNCTION_50();
          v25 = OUTLINED_FUNCTION_22_4();
          v26(v25);
        }

        type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_9_53();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();
        v18 = *(v1 + 32);
LABEL_26:
        sub_217005EF4();
        OUTLINED_FUNCTION_9_0();
        (*(v27 + 8))(v12 + v18);
        break;
      case 0xEu:
        sub_21700C084();
        goto LABEL_32;
      case 0xFu:
        sub_21700C644();
        goto LABEL_32;
      case 0x10u:
        sub_21700C2F4();
        goto LABEL_32;
      case 0x11u:
        sub_2170073D4();
        goto LABEL_32;
      case 0x12u:
        sub_217007324();
        goto LABEL_32;
      case 0x13u:
        sub_217007264();
        goto LABEL_32;
      case 0x14u:
        sub_217007064();
        goto LABEL_32;
      case 0x15u:
        sub_2170070F4();
LABEL_32:
        OUTLINED_FUNCTION_9_0();
        (*(v28 + 8))(v12);
        break;
      default:
        break;
    }
  }

  v29 = v9 & ~v8;
  v30 = *(v2 + 24);
  v31 = sub_217005EF4();
  if (!OUTLINED_FUNCTION_12_42())
  {
    OUTLINED_FUNCTION_50();
    (*(v32 + 8))(&v30[v10], v31);
  }

  v33 = v0 + v29;
  v34 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v34))
  {
    OUTLINED_FUNCTION_50();
    (*(v35 + 8))(v0 + v29, v30);
  }

  v36 = type metadata accessor for CuratorDetailHeaderComponentModel();
  OUTLINED_FUNCTION_13_37(v36);
  v37 = *(v30 + 7);
  if (!__swift_getEnumTagSinglePayload(v33 + v37, 1, v31))
  {
    OUTLINED_FUNCTION_50();
    (*(v38 + 8))(v33 + v37, v31);
  }

  v39 = v33 + *(v30 + 8);
  v40 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v41 + 8))(v39);
    v42 = *(v40 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v43 + 8))(v39 + v42);
  }

  v44 = v33 + *(v30 + 10);
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v45 + 8))(v44);
    v46 = *(v40 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v47 + 8))(v44 + v46);
  }

  v48 = v33 + *(v30 + 11);
  v49 = type metadata accessor for VideoArtwork();
  if (!OUTLINED_FUNCTION_4_16(v49))
  {

    v50 = *(v44 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v51 + 8))(v48 + v50);
  }

  v52 = v33 + *(v30 + 12);
  v53 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_9_1(v53))
  {

    v54 = *(v30 + 6);
    if (!OUTLINED_FUNCTION_12_42())
    {
      OUTLINED_FUNCTION_50();
      (*(v55 + 8))(v52 + v54, v31);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216727A30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_216727A68()
{
  v2 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v0 + v4;
  v6 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v6))
  {
    OUTLINED_FUNCTION_50();
    (*(v7 + 8))(v0 + v4, v6);
  }

  v8 = type metadata accessor for CuratorDetailHeaderComponentModel();
  OUTLINED_FUNCTION_13_37(v8);
  v9 = v1[7];
  v10 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v5 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_50();
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v5 + v1[8];
  v13 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v12);
    v15 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v12 + v15);
  }

  v17 = v5 + v1[10];
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v17);
    v19 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v17 + v19);
  }

  v21 = v5 + v1[11];
  v22 = type metadata accessor for VideoArtwork();
  if (!OUTLINED_FUNCTION_4_16(v22))
  {

    v23 = *(v17 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v24 + 8))(v21 + v23);
  }

  v25 = v5 + v1[12];
  v26 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_9_1(v26))
  {

    v27 = v1[6];
    if (!OUTLINED_FUNCTION_12_42())
    {
      OUTLINED_FUNCTION_50();
      (*(v28 + 8))(v25 + v27, v10);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216727D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D98);
  sub_216A6945C();
  OUTLINED_FUNCTION_2_2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216727DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v9 = a1 + *(a3 + 60);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216727E64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216727EF0()
{
  v1 = type metadata accessor for MenuButton();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 64);
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21672804C()
{
  sub_217009F14();
  OUTLINED_FUNCTION_0_126();
  return swift_getWitnessTable();
}

uint64_t sub_216728088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C084();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216728124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C084();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672821C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a3[11];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216728350(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216728480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216728528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167285D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216728620(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21672871C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
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

uint64_t sub_2167287C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C084();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216728864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C084();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216728918()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E28);
  sub_216A6CFA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216728A18()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_216728A50(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EC8);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216728AC8@<X0>(void *a1@<X8>)
{
  result = sub_217008F44();
  *a1 = v3;
  return result;
}

uint64_t sub_216728B1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0EC8);
  sub_216A6F0F4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216728B94(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  sub_21700CE24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  v6 = a1;
  return a2(&v6);
}

uint64_t sub_216728E88()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_34();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_216728F1C()
{

  return swift_deallocObject();
}

uint64_t sub_216728F6C()
{

  return swift_deallocObject();
}

uint64_t sub_216728FB0()
{

  return swift_deallocObject();
}

uint64_t sub_216728FF0()
{
  v1 = sub_21700CCA4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v4 + v5) & ~v4;

  v8 = *(v3 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v7, v1);

  return swift_deallocObject();
}

uint64_t sub_2167290D0()
{
  v1 = sub_21700CCA4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216729188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_216729254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_216729334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2170061E4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167293BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700CB44();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216729444(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700CB44();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167294C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672956C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672961C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 16);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = type metadata accessor for ContentDescriptor();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167296E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 16) = -a2;
      return result;
    }

    v9 = type metadata accessor for ContentDescriptor();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167297B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217007324();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216729860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007324();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216729930(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2167299C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216729A6C()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216729AFC()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = v10 + *(v0 + 32);
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_216729DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SuperHeroLockup();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216729E68()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for SuperHeroLockup();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_216729EF8()
{

  if (*(v0 + 80) != 1)
  {
  }

  sub_216684F5C(*(v0 + 224), *(v0 + 232));

  return swift_deallocObject();
}

__n128 sub_216729FA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216729FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v11 - 8;
    if (v10 >= 9)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

void sub_21672A098()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 + 9);
  }
}

uint64_t sub_21672A1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672A2A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672A354(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700C8E4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21672A3DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700C8E4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672A484()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21672A4C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21672A500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1368);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21672A60C()
{
  v1 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21672A6EC()
{
  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21672A774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216A81B48();
  *a1 = result;
  return result;
}

uint64_t sub_21672A7CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216A819F8();
  *a1 = result;
  return result;
}

uint64_t sub_21672A800(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_217007264();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_21672A920(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_217007264();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21672AA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 0xC)
  {
    return EnumTagSinglePayload - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21672AA84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_21672AAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NoticeActionType(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672AB8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NoticeActionType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672AC30(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_21672ACC4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672AD68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1438);
  sub_216A875C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21672ADCC()
{

  return swift_deallocObject();
}

uint64_t sub_21672AE0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21672AEA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672AF40()
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + v7;
  v9 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v7, 1, v9))
  {

    v10 = *(v9 + 24);
    v11 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }
  }

  v12 = v8 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v12);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v15 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  v16 = v8 + *(v0 + 32);
  if (*(v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return swift_deallocObject();
}

uint64_t sub_21672B210(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  type metadata accessor for BubbleLockup();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v13 = *(v3 + a3[6]);
        if (v13 >= 2)
        {
          return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
      v12 = a3[7];
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21672B330(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  type metadata accessor for BubbleLockup();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(v4 + a4[6]) = a2 + 1;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
      v14 = a4[7];
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21672B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170067A4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21672B56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2170067A4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672B6F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21672B728()
{

  return swift_deallocObject();
}

uint64_t sub_21672B7BC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a3[8];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21672B8F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21672BA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21672BAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21672BB9C()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  sub_216A906B4(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_21672BBFC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1630);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21672BC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700C924();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672BD14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700C924();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672BDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672BE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21672BF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
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

uint64_t sub_21672BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = a1 + *(a3 + 32);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21672C0A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672C1A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1690);
  sub_216A94BA0();
  OUTLINED_FUNCTION_3_5();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D8);
  sub_216A94C60();
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21672C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21672C324(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672C3C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AB5EBC();
  *a1 = result;
  return result;
}

uint64_t sub_21672C414()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21672C45C()
{
  v2 = _s7SectionVMa(0);
  v3 = *(*(v2 - 1) + 80);
  swift_unknownObjectRelease();

  v4 = v0 + ((v3 + 40) & ~v3);

  v5 = v2[5];
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_20_1(v4 + v5))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = (v4 + v2[6]);
  v9 = _s7SectionV6HeaderVMa(0);
  v10 = OUTLINED_FUNCTION_84_13();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    v12 = OUTLINED_FUNCTION_144_2();
    v13 = _s7SectionV6HeaderV12HeaderLockupOMa(v12);
    v14 = OUTLINED_FUNCTION_84_13();
    if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
    {
      OUTLINED_FUNCTION_226();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_24;
        case 1u:
          OUTLINED_FUNCTION_65_10();
          v28 = type metadata accessor for ComposerSectionHeader();
          v1 = v28[5];
          if (!OUTLINED_FUNCTION_20_1(&v8[v1]))
          {
            OUTLINED_FUNCTION_4_23();
            (*(v29 + 8))(&v8[v1], v6);
          }

          OUTLINED_FUNCTION_7_7(v28[6]);

          OUTLINED_FUNCTION_7_7(v28[10]);

          v30 = OUTLINED_FUNCTION_115_2(v28[11]);
          if (v31)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v30);
          }

          OUTLINED_FUNCTION_144_2();
          v32 = type metadata accessor for ContentDescriptor();
          v33 = OUTLINED_FUNCTION_84_13();
          if (!__swift_getEnumTagSinglePayload(v33, v34, v32))
          {

            v35 = OUTLINED_FUNCTION_250_0();
            if (!OUTLINED_FUNCTION_17_13(&v8[v1]))
            {
              OUTLINED_FUNCTION_50();
              (*(v36 + 8))(&v8[v1], v35);
            }
          }

          break;
        case 2u:
          if (*(v8 + 1))
          {

            if (*(v8 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v8 + 32));
            }
          }

          if (*(v8 + 10))
          {

            if (*(v8 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v8 + 104));
            }
          }

          type metadata accessor for DefaultSectionHeader();
          OUTLINED_FUNCTION_144_2();
          v22 = type metadata accessor for Artwork();
          v23 = OUTLINED_FUNCTION_84_13();
          if (!__swift_getEnumTagSinglePayload(v23, v24, v22))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v25 + 8))(v8);
            OUTLINED_FUNCTION_212_0();
            OUTLINED_FUNCTION_9_0();
            (*(v26 + 8))(&v8[v22], v27);
          }

          break;
        case 3u:
          if (*(v8 + 1))
          {

            if (*(v8 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v8 + 32));
            }
          }

LABEL_24:

          break;
        default:
          break;
      }
    }
  }

  if (*(v4 + v2[10] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + v2[10]);
  }

  v16 = v4 + v2[12];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
  v18 = OUTLINED_FUNCTION_84_13();
  if (!__swift_getEnumTagSinglePayload(v18, v19, v17))
  {

    v17 = *(v17 + 36);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v16 + v17);
  }

  v21 = (v4 + v2[13]);
  type metadata accessor for SectionContent();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v203 = OUTLINED_FUNCTION_82();
        v204(v203);
      }

      v205 = type metadata accessor for AlbumDetailHeaderLockup();
      OUTLINED_FUNCTION_163_0(v205);
      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_221_1();

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      OUTLINED_FUNCTION_116_5();
      v206 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_54_1(v206))
      {

        v1 = *(v1 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v207 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 48));

      OUTLINED_FUNCTION_116_5();
      v208 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_54_1(v208))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v209 + 8))(v17);
        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v210 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_116_5();
      v211 = type metadata accessor for VideoArtwork();
      if (!OUTLINED_FUNCTION_54_1(v211))
      {

        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v212 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_116_5();
      v213 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_54_1(v213))
      {

        v214 = *(v1 + 24);
        v215 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_204_0(v215))
        {
          OUTLINED_FUNCTION_50();
          (*(v216 + 8))(v17 + v452, v214);
        }
      }

      v217 = type metadata accessor for LinkComponentModel();
      if (!OUTLINED_FUNCTION_112_8(v217))
      {
        v218 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v218, v219, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v220 = OUTLINED_FUNCTION_27_0();
          v221(v220);
        }

        v222 = OUTLINED_FUNCTION_119_6();
        if (v223)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v222);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v224 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v224, v225, v17))
      {
        v226 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v226, v227, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v228 = OUTLINED_FUNCTION_27_0();
          v229(v228);
        }

        v230 = OUTLINED_FUNCTION_119_6();
        if (v231)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v230);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v232 = *(v9 + 72);
      goto LABEL_260;
    case 1u:

      v233 = &qword_27CABB7D8;
      goto LABEL_298;
    case 2u:
      OUTLINED_FUNCTION_65_10();
      v151 = type metadata accessor for AnimatedTextListItem();
      goto LABEL_285;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xFu:
    case 0x10u:
    case 0x13u:
    case 0x14u:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x25u:
    case 0x30u:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_309;
    case 4u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v156 = OUTLINED_FUNCTION_82();
        v157(v156);
      }

      v158 = type metadata accessor for ArtistDetailHeaderLockup();
      OUTLINED_FUNCTION_16_40(v158);
      OUTLINED_FUNCTION_7_7(v159);

      OUTLINED_FUNCTION_116_5();
      v160 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_54_1(v160))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v161 + 8))(v17);
        v162 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v163 + 8))(v17 + v162);
      }

      v455 = v1;
      v164 = v6[9];
      sub_2170061E4();
      OUTLINED_FUNCTION_9_0();
      (*(v165 + 8))(&v21[v164]);
      v166 = OUTLINED_FUNCTION_115_2(v6[10]);
      if (v167)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v166);
      }

      OUTLINED_FUNCTION_116_5();
      v168 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_54_1(v168))
      {

        v169 = *(v1 + 24);
        v170 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_176_0(v17 + v169))
        {
          OUTLINED_FUNCTION_50();
          (*(v171 + 8))(v17 + v169, v170);
        }
      }

      v172 = &v21[v6[12]];
      v173 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v173, v174, v455))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v175 + 8))(v172);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v176 + 8))(&v172[v455]);
      }

      OUTLINED_FUNCTION_144_2();
      v177 = type metadata accessor for VideoArtwork();
      if (OUTLINED_FUNCTION_83_12())
      {
        break;
      }

      goto LABEL_339;
    case 5u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v114 = OUTLINED_FUNCTION_82();
        v115(v114);
      }

      v116 = type metadata accessor for ArtistLatestReleaseLockup();
      OUTLINED_FUNCTION_16_40(v116);
      OUTLINED_FUNCTION_7_7(v117);

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      v118 = OUTLINED_FUNCTION_115_2(v6[10]);
      if (v119)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v118);
      }

      OUTLINED_FUNCTION_174_0();
      v120 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_4_16(v120))
      {

        v17 = OUTLINED_FUNCTION_250_0();
        if (!OUTLINED_FUNCTION_17_13(v9 + v1))
        {
          OUTLINED_FUNCTION_50();
          (*(v121 + 8))(v9 + v1, v17);
        }
      }

      OUTLINED_FUNCTION_174_0();
      v122 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_4_16(v122))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v123 + 8))(v9);
        OUTLINED_FUNCTION_212_0();
        OUTLINED_FUNCTION_9_0();
        (*(v124 + 8))(v9 + v17);
      }

      v125 = OUTLINED_FUNCTION_115_2(v6[14]);
      if (v126)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
      }

      v76 = v6[15];
      goto LABEL_296;
    case 6u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v244 = OUTLINED_FUNCTION_82();
        v245(v244);
      }

      v246 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
      __swift_destroy_boxed_opaque_existential_1Tm(&v21[v246[5]]);
      v247 = &v21[v246[6]];
      v248 = type metadata accessor for ArtistLatestReleaseLockup();
      v457 = v246;
      if (!OUTLINED_FUNCTION_176_0(v247))
      {
        v448 = v248;
        if (!OUTLINED_FUNCTION_20_1(v247))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v249 + 8))(v247, v6);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v247 + v248[5]);
        OUTLINED_FUNCTION_254();
        OUTLINED_FUNCTION_254();
        OUTLINED_FUNCTION_254();
        v250 = v248;
        v251 = v247 + v248[10];
        if (*(v251 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v251);
          v250 = v248;
        }

        v252 = v247 + v250[12];
        v253 = type metadata accessor for ContentDescriptor();
        if (!OUTLINED_FUNCTION_54_1(v253))
        {

          v254 = v248[6];
          v447 = sub_217005EF4();
          if (!__swift_getEnumTagSinglePayload(v252 + v254, 1, v447))
          {
            OUTLINED_FUNCTION_50();
            (*(v255 + 8))(v252 + v254);
          }
        }

        v256 = v247 + v448[13];
        type metadata accessor for Artwork();
        v446 = v256;
        v257 = OUTLINED_FUNCTION_19_2();
        v259 = v258;
        if (!__swift_getEnumTagSinglePayload(v257, v260, v258))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v261 + 8))(v446);
          OUTLINED_FUNCTION_212_0();
          OUTLINED_FUNCTION_9_0();
          (*(v262 + 8))(v446 + v259);
        }

        v263 = v247 + v448[14];
        if (*(v263 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v263);
        }

        OUTLINED_FUNCTION_254();
        v246 = v457;
      }

      v264 = &v21[v246[7]];
      v265 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v265, v266, v9))
      {
        v267 = &v264[*(v9 + 20)];
        v268 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_112_8(v268))
        {
          OUTLINED_FUNCTION_39();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_366;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v267);
              v436 = type metadata accessor for ComposerSectionHeader();
              v449 = v436[5];
              if (!OUTLINED_FUNCTION_20_1(&v267[v449]))
              {
                OUTLINED_FUNCTION_4_23();
                (*(v437 + 8))(&v267[v449], v6);
              }

              v438 = &v267[v436[11]];
              if (*(v438 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v438);
              }

              v439 = &v267[v436[12]];
              v440 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_112_8(v440))
              {

                v441 = v436[6];
                v442 = sub_217005EF4();
                v450 = v441;
                v443 = &v439[v441];
                v444 = v442;
                if (!__swift_getEnumTagSinglePayload(v443, 1, v442))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v445 + 8))(&v439[v450], v444);
                }
              }

              break;
            case 2u:
              if (*(v267 + 1))
              {

                if (*(v267 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v267 + 32));
                }
              }

              if (*(v267 + 10))
              {

                if (*(v267 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v267 + 104));
                }
              }

              v426 = &v267[*(type metadata accessor for DefaultSectionHeader() + 32)];
              v427 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_112_8(v427))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v428 + 8))(v426);
                OUTLINED_FUNCTION_212_0();
                OUTLINED_FUNCTION_9_0();
                (*(v429 + 8))(v246 + v426, v430);
              }

              break;
            case 3u:
              if (*(v267 + 1))
              {

                if (*(v267 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v267 + 32));
                }
              }

LABEL_366:

              break;
            default:
              break;
          }
        }
      }

      v21 += v457[9];
      v269 = OUTLINED_FUNCTION_84_13();
      if (!__swift_getEnumTagSinglePayload(v269, v270, v9))
      {
        v271 = OUTLINED_FUNCTION_144_2();
        v272 = _s7SectionV6HeaderV12HeaderLockupOMa(v271);
        v273 = OUTLINED_FUNCTION_84_13();
        if (!__swift_getEnumTagSinglePayload(v273, v274, v272))
        {
          OUTLINED_FUNCTION_115();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              goto LABEL_71;
            case 1u:
              OUTLINED_FUNCTION_65_10();
              v431 = type metadata accessor for ComposerSectionHeader();
              if (!OUTLINED_FUNCTION_42_23(v431))
              {
                OUTLINED_FUNCTION_4_23();
                v432 = OUTLINED_FUNCTION_129_0();
                v433(v432);
              }

              OUTLINED_FUNCTION_56_15();

              OUTLINED_FUNCTION_221_1();

              OUTLINED_FUNCTION_7_7(*(v272 + 40));

              v434 = OUTLINED_FUNCTION_115_2(*(v272 + 44));
              if (v435)
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v434);
              }

              goto LABEL_327;
            case 2u:
              if (*(v21 + 1))
              {

                if (*(v21 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v21 + 32));
                }
              }

              if (*(v21 + 10))
              {

                if (*(v21 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v21 + 104));
                }
              }

              type metadata accessor for DefaultSectionHeader();
              goto LABEL_336;
            case 3u:
              if (*(v21 + 1))
              {

                if (*(v21 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v21 + 32));
                }
              }

              goto LABEL_90;
            default:
              goto LABEL_310;
          }
        }
      }

      break;
    case 8u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v294 = OUTLINED_FUNCTION_82();
        v295(v294);
      }

      v296 = type metadata accessor for ContainerDetailTracklistFooterLockup();
      OUTLINED_FUNCTION_16_40(v296);
      OUTLINED_FUNCTION_174_0();
      v297 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_4_16(v297))
      {

        v298 = OUTLINED_FUNCTION_250_0();
        if (!OUTLINED_FUNCTION_17_13(v9 + v1))
        {
          OUTLINED_FUNCTION_50();
          (*(v299 + 8))(v9 + v1, v298);
        }
      }

      OUTLINED_FUNCTION_7_7(v6[8]);

      if (*&v21[v6[9] + 8])
      {
      }

      goto LABEL_309;
    case 9u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v178 = OUTLINED_FUNCTION_82();
        v179(v178);
      }

      v180 = type metadata accessor for CuratorDetailHeaderComponentModel();
      OUTLINED_FUNCTION_163_0(v180);
      OUTLINED_FUNCTION_56_15();

      v181 = *(v9 + 28);
      v456 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(&v21[v181], 1, v456))
      {
        OUTLINED_FUNCTION_50();
        (*(v182 + 8))(&v21[v181]);
      }

      v183 = &v21[*(v9 + 32)];
      v184 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_112_8(v184))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v185 + 8))(v183);
        v186 = *(v181 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v187 + 8))(&v183[v186]);
      }

      v188 = &v21[*(v9 + 40)];
      v189 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v189, v190, v181))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v191 + 8))(v188);
        v192 = *(v181 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v193 + 8))(&v188[v192]);
      }

      OUTLINED_FUNCTION_116_5();
      v194 = type metadata accessor for VideoArtwork();
      if (!OUTLINED_FUNCTION_54_1(v194))
      {

        v195 = *(v188 + 5);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v196 + 8))(v181 + v195);
      }

      OUTLINED_FUNCTION_144_2();
      v197 = type metadata accessor for ContentDescriptor();
      v198 = OUTLINED_FUNCTION_84_13();
      if (!__swift_getEnumTagSinglePayload(v198, v199, v197))
      {

        v200 = *(v197 + 24);
        if (!__swift_getEnumTagSinglePayload(&v21[v200], 1, v456))
        {
          OUTLINED_FUNCTION_50();
          (*(v201 + 8))(&v21[v200], v202);
        }
      }

      break;
    case 0xAu:
      OUTLINED_FUNCTION_65_10();
      v342 = type metadata accessor for EmptyStateLockup();
      if (!OUTLINED_FUNCTION_42_23(v342))
      {
        OUTLINED_FUNCTION_4_23();
        v343 = OUTLINED_FUNCTION_129_0();
        v344(v343);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      OUTLINED_FUNCTION_7_7(*(v9 + 36));

      OUTLINED_FUNCTION_116_5();
      v177 = type metadata accessor for Artwork();
      v345 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v345, v346, v177))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v347 + 8))(v17);
        v348 = *(v177 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v349 + 8))(v17 + v348);
      }

      OUTLINED_FUNCTION_144_2();
      v350 = type metadata accessor for ColorSchemeArtwork();
      v351 = OUTLINED_FUNCTION_84_13();
      if (__swift_getEnumTagSinglePayload(v351, v352, v350))
      {
        break;
      }

      if (!OUTLINED_FUNCTION_83_12())
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v353 + 8))(v21);
        v354 = *(v177 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v355 + 8))(&v21[v354]);
      }

      v293 = *(v350 + 20);
LABEL_278:
      v21 += v293;
      goto LABEL_337;
    case 0xCu:

      __swift_destroy_boxed_opaque_existential_1Tm((v21 + 8));
      v135 = type metadata accessor for GradientListRowModel();
      if (!OUTLINED_FUNCTION_114_7())
      {
        OUTLINED_FUNCTION_4_23();
        v136 = OUTLINED_FUNCTION_129_0();
        v137(v136);
      }

      v138 = OUTLINED_FUNCTION_115_2(*(v135 + 28));
      if (v139)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
      }

      v140 = &v21[*(v135 + 32)];
      if (*(v140 + 4))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v140 + 8));
      }

      goto LABEL_90;
    case 0xDu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v336 = OUTLINED_FUNCTION_82();
        v337(v336);
      }

      v338 = type metadata accessor for GroupedTextListLockup();
      OUTLINED_FUNCTION_16_40(v338);
      OUTLINED_FUNCTION_174_0();
      v339 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_4_16(v339))
      {

        v340 = *(v17 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v341 + 8))(v9 + v340);
      }

      goto LABEL_309;
    case 0xEu:
      OUTLINED_FUNCTION_65_10();
      v111 = type metadata accessor for HeaderComponentModel();
      if (!OUTLINED_FUNCTION_42_23(v111))
      {
        OUTLINED_FUNCTION_4_23();
        v112 = OUTLINED_FUNCTION_129_0();
        v113(v112);
      }

      OUTLINED_FUNCTION_56_15();
      goto LABEL_94;
    case 0x11u:
      OUTLINED_FUNCTION_65_10();
      v127 = type metadata accessor for InlineUpsell();
      if (!OUTLINED_FUNCTION_42_23(v127))
      {
        OUTLINED_FUNCTION_4_23();
        v128 = OUTLINED_FUNCTION_129_0();
        v129(v128);
      }

      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      v130 = OUTLINED_FUNCTION_115_2(*(v9 + 36));
      if (v131)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v130);
      }

      v132 = OUTLINED_FUNCTION_115_2(*(v9 + 40));
      if (v133)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v132);
      }

      v134 = *(v9 + 44);
      goto LABEL_304;
    case 0x12u:
      OUTLINED_FUNCTION_65_10();
      v279 = type metadata accessor for LandingUpsell();
      if (!OUTLINED_FUNCTION_42_23(v279))
      {
        OUTLINED_FUNCTION_4_23();
        v280 = OUTLINED_FUNCTION_129_0();
        v281(v280);
      }

      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      OUTLINED_FUNCTION_7_7(*(v9 + 36));

      v282 = OUTLINED_FUNCTION_115_2(*(v9 + 40));
      if (v283)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v282);
      }

      v284 = OUTLINED_FUNCTION_115_2(*(v9 + 44));
      if (v285)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v284);
      }

      v286 = OUTLINED_FUNCTION_115_2(*(v9 + 48));
      if (v287)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v286);
      }

      OUTLINED_FUNCTION_116_5();
      v177 = type metadata accessor for Artwork();
      v288 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v288, v289, v177))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v290 + 8))(v17);
        v291 = *(v177 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v292 + 8))(v17 + v291);
      }

      v293 = *(v9 + 56);
      goto LABEL_278;
    case 0x15u:

      v107 = *(type metadata accessor for SearchResultsListSection() + 28);
      sub_21700D194();
      goto LABEL_340;
    case 0x16u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v152 = OUTLINED_FUNCTION_82();
        v153(v152);
      }

      v154 = type metadata accessor for ListSection();
      OUTLINED_FUNCTION_16_40(v154);
      OUTLINED_FUNCTION_7_7(v155);

      OUTLINED_FUNCTION_7_7(v6[7]);

      goto LABEL_309;
    case 0x17u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v91 = OUTLINED_FUNCTION_82();
        v92(v91);
      }

      v93 = type metadata accessor for SongDetailList();
      OUTLINED_FUNCTION_163_0(v93);
      OUTLINED_FUNCTION_116_5();
      v94 = type metadata accessor for SongDetailListHeaderLockup();
      if (!OUTLINED_FUNCTION_54_1(v94))
      {
        v95 = OUTLINED_FUNCTION_19_2();
        if (!__swift_getEnumTagSinglePayload(v95, v96, v6))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v97 + 8))(v17, v6);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v17 + *(v1 + 20));
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_249();
        v98 = v17 + *(v1 + 32);
        if (*(v98 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v98);
        }

        v99 = v17 + *(v1 + 36);
        if (*(v99 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
        }

        v100 = v17 + *(v1 + 40);
        v453 = type metadata accessor for ContentDescriptor();
        if (!__swift_getEnumTagSinglePayload(v100, 1, v453))
        {

          v454 = *(v453 + 24);
          v451 = sub_217005EF4();
          if (!__swift_getEnumTagSinglePayload(v100 + v454, 1, v451))
          {
            OUTLINED_FUNCTION_50();
            (*(v101 + 8))(v100 + v102);
          }
        }

        v103 = v17 + *(v1 + 44);
        v104 = type metadata accessor for Artwork();
        if (!OUTLINED_FUNCTION_17_13(v103))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v105 + 8))(v103);
          OUTLINED_FUNCTION_212_0();
          OUTLINED_FUNCTION_9_0();
          (*(v106 + 8))(v103 + v104);
        }
      }

      OUTLINED_FUNCTION_221_1();
LABEL_94:

      goto LABEL_327;
    case 0x18u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v237 = OUTLINED_FUNCTION_82();
        v238(v237);
      }

      v239 = type metadata accessor for ParagraphComponentModel();
      OUTLINED_FUNCTION_16_40(v239);
      OUTLINED_FUNCTION_7_7(v240);
      goto LABEL_193;
    case 0x19u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v300 = OUTLINED_FUNCTION_82();
        v301(v300);
      }

      v302 = type metadata accessor for PlaylistDetailHeaderLockup();
      OUTLINED_FUNCTION_163_0(v302);
      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_221_1();

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      OUTLINED_FUNCTION_116_5();
      v303 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_54_1(v303))
      {

        v1 = *(v1 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v304 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 44));

      OUTLINED_FUNCTION_116_5();
      v305 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_54_1(v305))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v306 + 8))(v17);
        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v307 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_116_5();
      v308 = type metadata accessor for VideoArtwork();
      if (!OUTLINED_FUNCTION_54_1(v308))
      {

        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v309 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_116_5();
      v310 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_54_1(v310))
      {

        v311 = *(v1 + 24);
        v312 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_204_0(v312))
        {
          OUTLINED_FUNCTION_50();
          (*(v313 + 8))(v17 + v452, v311);
        }
      }

      v314 = type metadata accessor for LinkComponentModel();
      if (!OUTLINED_FUNCTION_112_8(v314))
      {
        v315 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v315, v316, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v317 = OUTLINED_FUNCTION_27_0();
          v318(v317);
        }

        v319 = OUTLINED_FUNCTION_119_6();
        if (v320)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v319);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v321 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v321, v322, v17))
      {
        v323 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v323, v324, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v325 = OUTLINED_FUNCTION_27_0();
          v326(v325);
        }

        v327 = OUTLINED_FUNCTION_119_6();
        if (v328)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v327);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v232 = *(v9 + 68);
LABEL_260:
      v329 = &v21[v232];
      v330 = OUTLINED_FUNCTION_84_13();
      if (__swift_getEnumTagSinglePayload(v330, v331, v17))
      {
        break;
      }

      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v332 = OUTLINED_FUNCTION_82();
        v333(v332);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v329[*(v17 + 20)]);
      v334 = OUTLINED_FUNCTION_115_2(*(v17 + 24));
      if (v335)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v334);
      }

      v76 = *(v17 + 28);
      goto LABEL_296;
    case 0x1Au:

      v233 = &qword_27CABB7C0;
LABEL_298:
      v376 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(v233) + 48)];

      v377 = *(type metadata accessor for ContentDescriptor() + 24);
      v378 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(&v376[v377], 1, v378))
      {
        OUTLINED_FUNCTION_50();
        (*(v379 + 8))(&v376[v377], v378);
      }

      break;
    case 0x1Bu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v241 = OUTLINED_FUNCTION_82();
        v242(v241);
      }

      v243 = type metadata accessor for PopoverSelector();
      OUTLINED_FUNCTION_16_40(v243);
LABEL_193:

      v76 = v6[7];
      goto LABEL_296;
    case 0x1Fu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v275 = OUTLINED_FUNCTION_82();
        v276(v275);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup();
      OUTLINED_FUNCTION_16_40(ContextLockup);
      OUTLINED_FUNCTION_7_7(v278);

      OUTLINED_FUNCTION_7_7(v6[8]);

      OUTLINED_FUNCTION_7_7(v6[9]);

      OUTLINED_FUNCTION_7_7(v6[10]);

      goto LABEL_309;
    case 0x23u:
      OUTLINED_FUNCTION_65_10();
      v364 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
      if (!OUTLINED_FUNCTION_42_23(v364))
      {
        OUTLINED_FUNCTION_4_23();
        v365 = OUTLINED_FUNCTION_129_0();
        v366(v365);
      }

      goto LABEL_290;
    case 0x24u:
      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      v46 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup() + 48);
      goto LABEL_329;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_1Tm((v21 + 16));
      v148 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
      if (!OUTLINED_FUNCTION_114_7())
      {
        OUTLINED_FUNCTION_4_23();
        v149 = OUTLINED_FUNCTION_129_0();
        v150(v149);
      }

      v76 = *(v148 + 28);
      goto LABEL_296;
    case 0x27u:
      v9 = type metadata accessor for Artwork();
      v141 = OUTLINED_FUNCTION_84_13();
      if (!__swift_getEnumTagSinglePayload(v141, v142, v9))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v143 + 8))(v21);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v144 + 8))(&v21[v9]);
      }

      v145 = type metadata accessor for SocialOnboardingWelcomePageLockup();
      OUTLINED_FUNCTION_163_0(v145);
      if (!OUTLINED_FUNCTION_114_7())
      {
        OUTLINED_FUNCTION_4_23();
        v146 = OUTLINED_FUNCTION_129_0();
        v147(v146);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

LABEL_290:
      v76 = *(v9 + 32);
      goto LABEL_296;
    case 0x28u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v415 = OUTLINED_FUNCTION_82();
        v416(v415);
      }

      v417 = type metadata accessor for SocialProfileDetailHeaderLockup();
      OUTLINED_FUNCTION_16_40(v417);
      v419 = &v21[v418];

      v420 = *(type metadata accessor for ContentDescriptor() + 24);
      v421 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_239_0(v421))
      {
        OUTLINED_FUNCTION_50();
        (*(v422 + 8))(&v419[v420], v9);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

LABEL_336:
      OUTLINED_FUNCTION_144_2();
      v177 = type metadata accessor for Artwork();
LABEL_337:
      if (!OUTLINED_FUNCTION_83_12())
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v423 + 8))(v21);
LABEL_339:
        v107 = *(v177 + 20);
        sub_21700C444();
LABEL_340:
        OUTLINED_FUNCTION_9_0();
        (*(v424 + 8))(&v21[v107], v425);
      }

      break;
    case 0x29u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v77 = OUTLINED_FUNCTION_82();
        v78(v77);
      }

      v79 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_16_40(v79);
      v81 = &v21[v80];

      v82 = *(type metadata accessor for ContentDescriptor() + 24);
      v83 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_239_0(v83))
      {
        OUTLINED_FUNCTION_50();
        (*(v84 + 8))(&v81[v82], v9);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      OUTLINED_FUNCTION_7_7(v6[11]);

      OUTLINED_FUNCTION_7_7(v6[12]);

      OUTLINED_FUNCTION_7_7(v6[13]);

      OUTLINED_FUNCTION_7_7(v6[14]);

      OUTLINED_FUNCTION_174_0();
      v85 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_4_16(v85))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v86 + 8))(v9);
        OUTLINED_FUNCTION_212_0();
        OUTLINED_FUNCTION_9_0();
        (*(v87 + 8))(&v81[v9]);
      }

      v76 = v6[17];
      goto LABEL_296;
    case 0x2Au:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v380 = OUTLINED_FUNCTION_82();
        v381(v380);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
      OUTLINED_FUNCTION_16_40(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_7_7(v383);

      v134 = v6[7];
      goto LABEL_304;
    case 0x2Bu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v386 = OUTLINED_FUNCTION_82();
        v387(v386);
      }

      v388 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
      __swift_destroy_boxed_opaque_existential_1Tm(&v21[*(v388 + 20)]);
      goto LABEL_309;
    case 0x2Cu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v356 = OUTLINED_FUNCTION_82();
        v357(v356);
      }

      v358 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
      OUTLINED_FUNCTION_16_40(v358);
      OUTLINED_FUNCTION_7_7(v359);

      OUTLINED_FUNCTION_7_7(v6[7]);

      v360 = OUTLINED_FUNCTION_115_2(v6[8]);
      if (v361)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v360);
      }

      v134 = v6[9];
LABEL_304:
      v384 = OUTLINED_FUNCTION_115_2(v134);
      if (v385)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v384);
      }

      break;
    case 0x2Du:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v234 = OUTLINED_FUNCTION_82();
        v235(v234);
      }

      v236 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
      OUTLINED_FUNCTION_16_40(v236);
      goto LABEL_309;
    case 0x2Eu:
      OUTLINED_FUNCTION_65_10();
      v151 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
LABEL_285:
      if (!OUTLINED_FUNCTION_42_23(v151))
      {
        OUTLINED_FUNCTION_4_23();
        v362 = OUTLINED_FUNCTION_129_0();
        v363(v362);
      }

      goto LABEL_309;
    case 0x2Fu:
      OUTLINED_FUNCTION_65_10();
      FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
      if (!OUTLINED_FUNCTION_42_23(FriendsPageSectionLockup))
      {
        OUTLINED_FUNCTION_4_23();
        v109 = OUTLINED_FUNCTION_129_0();
        v110(v109);
      }

LABEL_90:

      goto LABEL_309;
    case 0x31u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v88 = OUTLINED_FUNCTION_82();
        v89(v88);
      }

      v90 = type metadata accessor for SocialProfileHorizontalLockupSection();
      OUTLINED_FUNCTION_16_40(v90);

      if (*&v21[v6[7]] == 1)
      {
        break;
      }

LABEL_71:

      goto LABEL_309;
    case 0x32u:
      OUTLINED_FUNCTION_65_10();
      v46 = *(type metadata accessor for Spacer() + 20);
      goto LABEL_329;
    case 0x35u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v47 = OUTLINED_FUNCTION_82();
        v48(v47);
      }

      v49 = type metadata accessor for SuperHeroLockup();
      OUTLINED_FUNCTION_16_40(v49);
      v51 = OUTLINED_FUNCTION_115_2(v50);
      if (v52)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      OUTLINED_FUNCTION_7_7(v6[9]);

      OUTLINED_FUNCTION_7_7(v6[10]);

      OUTLINED_FUNCTION_7_7(v6[11]);

      OUTLINED_FUNCTION_116_5();
      v53 = type metadata accessor for Artwork();
      v54 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v54, v55, v53))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v56 + 8))(v17);
        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v57 + 8))(v17 + v1);
      }

      v58 = &v21[v6[15]];
      v59 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v59, v60, v53))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v61 + 8))(v58);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v62 + 8))(&v58[v53]);
      }

      OUTLINED_FUNCTION_116_5();
      v63 = type metadata accessor for VideoArtwork();
      v64 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v64, v65, v63))
      {

        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v66 + 8))(&v58[v1]);
      }

      v67 = &v21[v6[17]];
      v68 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v68, v69, v63))
      {

        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v70 + 8))(&v67[v63]);
      }

      OUTLINED_FUNCTION_7_7(v6[20]);

      OUTLINED_FUNCTION_7_7(v6[21]);

      v71 = OUTLINED_FUNCTION_115_2(v6[23]);
      if (v72)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
      }

      OUTLINED_FUNCTION_174_0();
      v73 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_4_16(v73))
      {

        v74 = OUTLINED_FUNCTION_250_0();
        if (!OUTLINED_FUNCTION_17_13(v63 + v1))
        {
          OUTLINED_FUNCTION_50();
          (*(v75 + 8))(v63 + v1, v74);
        }
      }

      v76 = v6[25];
      goto LABEL_296;
    case 0x3Au:
      OUTLINED_FUNCTION_65_10();
      v37 = type metadata accessor for TVMovieDescription();
      if (!OUTLINED_FUNCTION_42_23(v37))
      {
        OUTLINED_FUNCTION_4_23();
        v38 = OUTLINED_FUNCTION_129_0();
        v39(v38);
      }

      OUTLINED_FUNCTION_56_15();

      v40 = OUTLINED_FUNCTION_115_2(*(v9 + 28));
      if (v41)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 36));

      OUTLINED_FUNCTION_116_5();
      v42 = type metadata accessor for ParagraphComponentModel();
      if (!OUTLINED_FUNCTION_54_1(v42))
      {
        v43 = OUTLINED_FUNCTION_19_2();
        if (!__swift_getEnumTagSinglePayload(v43, v44, v6))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v45 + 8))(v17, v6);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v17 + *(v1 + 20));
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_249();
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 44));

      goto LABEL_327;
    case 0x3Bu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v390 = OUTLINED_FUNCTION_82();
        v391(v390);
      }

      v392 = type metadata accessor for TVMovieDetailHeaderLockup();
      OUTLINED_FUNCTION_16_40(v392);
      v394 = OUTLINED_FUNCTION_115_2(v393);
      if (v395)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v394);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      OUTLINED_FUNCTION_174_0();
      v396 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_4_16(v396))
      {

        v17 = *(v17 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v397 + 8))(v9 + v17);
      }

      OUTLINED_FUNCTION_116_5();
      v398 = type metadata accessor for Artwork();
      v399 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v399, v400, v398))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v401 + 8))(v17);
        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v402 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_7_7(v6[12]);

      v403 = &v21[v6[15]];
      v404 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v404, v405, v398))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v406 + 8))(v403);
        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v407 + 8))(&v403[v1]);
      }

      OUTLINED_FUNCTION_7_7(v6[16]);

      v408 = &v21[v6[17]];
      v409 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v409, v410, v398))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v411 + 8))(v408);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v412 + 8))(&v408[v398]);
      }

LABEL_327:
      OUTLINED_FUNCTION_144_2();
      v413 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_83_12())
      {

        v46 = *(v413 + 24);
        v6 = sub_217005EF4();
LABEL_329:
        if (!OUTLINED_FUNCTION_20_1(&v21[v46]))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v414 + 8))(&v21[v46], v6);
        }
      }

      break;
    case 0x3Cu:
      OUTLINED_FUNCTION_65_10();
      v367 = type metadata accessor for VerticalArtworkListItem();
      if (!OUTLINED_FUNCTION_42_23(v367))
      {
        OUTLINED_FUNCTION_4_23();
        v368 = OUTLINED_FUNCTION_129_0();
        v369(v368);
      }

      OUTLINED_FUNCTION_56_15();

      v370 = &v21[*(v9 + 28)];
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v371 + 8))(v370);
      v372 = *(type metadata accessor for Artwork() + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v373 + 8))(&v370[v372]);
      v374 = OUTLINED_FUNCTION_115_2(*(v9 + 32));
      if (v375)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v374);
      }

      v76 = *(v9 + 36);
LABEL_296:
      OUTLINED_FUNCTION_7_7(v76);
LABEL_309:

      break;
    default:
      break;
  }

LABEL_310:
  if (*(v4 + v2[14]) != 1)
  {
  }

  return swift_deallocObject();
}