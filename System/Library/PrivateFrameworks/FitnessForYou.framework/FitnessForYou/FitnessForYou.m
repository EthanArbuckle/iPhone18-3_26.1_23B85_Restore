uint64_t type metadata accessor for ForYouItemContext()
{
  result = qword_2810E94A8;
  if (!qword_2810E94A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C2F7774()
{
  sub_20C2F77E8();
  if (v0 <= 0x3F)
  {
    sub_20C2F7868();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C2F77E8()
{
  if (!qword_2810E8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EBF8, &qword_20C3757D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2810E8C20);
    }
  }
}

void sub_20C2F7868()
{
  if (!qword_2810E8F08)
  {
    v0 = type metadata accessor for CanvasPlaceholder();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E8F08);
    }
  }
}

uint64_t type metadata accessor for CanvasPlaceholder()
{
  result = qword_2810E8EE8;
  if (!qword_2810E8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C2F78FC()
{
  sub_20C2F7A00(319, &qword_2810E8C18, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20C2F7A00(319, &qword_2810E8D30, &type metadata for PlaceholderMarkerType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlanMetadata();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C2F7A00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for PlanMetadata()
{
  result = qword_2810E8FA8;
  if (!qword_2810E8FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C2F7A9C()
{
  sub_20C2F7AF4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20C2F7AF4()
{
  if (!qword_2810E9520)
  {
    sub_20C36C124();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2810E9520);
    }
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou9LoadStateO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou0bC16SummaryLoadStateOyxG(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_20C2F7C04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20C2F7C5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PlanMetadata();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C2F7D08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlanMetadata();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C2F7DB4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_20C2F7F04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C2F7F68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCB0, &qword_20C36F208);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DC88, &qword_20C36F1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCA8, &qword_20C36F200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCA0, &qword_20C36F1F8);
  sub_20C3070D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_20C3077A8(&qword_27C79DD40, &qword_27C79DC88, &qword_20C36F1E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C2F80A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C36C634();
  *a1 = result;
  return result;
}

uint64_t sub_20C2F80D0(uint64_t *a1)
{
  v1 = *a1;

  return sub_20C36C644();
}

uint64_t sub_20C2F8104(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C2F8170(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C2F8270@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27C79E0D8;
  return result;
}

uint64_t sub_20C2F82BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27C79E0D8 = v1;
  return result;
}

uint64_t sub_20C2F8470()
{
  v1 = *(type metadata accessor for ForYouItemContext() - 8);
  v2 = (*(v1 + 80) + 296) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[23];

  v13 = v0[25];

  v14 = v0[27];

  v15 = v0[29];

  v16 = v0[31];

  v17 = v0[33];

  v18 = v0[35];

  v19 = v0[36];

  v20 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *(v0 + v2 + 8);

  v23 = *(v0 + v2 + 24);

  if (EnumCaseMultiPayload == 1)
  {
    v24 = *(v20 + 5);

    v25 = *(v20 + 8);

    v26 = *(type metadata accessor for CanvasPlaceholder() + 44);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
    if (!(*(*(v27 - 8) + 48))(&v20[v26], 1, v27))
    {
      v28 = sub_20C36C124();
      (*(*(v28 - 8) + 8))(&v20[v26], v28);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_20C2F8660()
{
  v1 = sub_20C36C164();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 296) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 7);

  v6 = *(v0 + 9);

  v7 = *(v0 + 11);

  v8 = *(v0 + 13);

  v9 = *(v0 + 15);

  v10 = *(v0 + 17);

  v11 = *(v0 + 19);

  v12 = *(v0 + 21);

  v13 = *(v0 + 23);

  v14 = *(v0 + 25);

  v15 = *(v0 + 27);

  v16 = *(v0 + 29);

  v17 = *(v0 + 31);

  v18 = *(v0 + 33);

  v19 = *(v0 + 35);

  v20 = *(v0 + 36);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_20C2F87E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C2F8860(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C2F892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C36C144();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C2F89E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C36C144();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C2F8AA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C2F8ADC(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v1 = a1[2];
  v2 = a1[5];
  v6 = a1[3];
  v7 = a1[4];
  sub_20C36C1C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EA98, &qword_20C375278);
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  sub_20C36C734();
  sub_20C36CB24();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C341484();
  swift_getOpaqueTypeMetadata2();
  sub_20C36C734();
  swift_getOpaqueTypeConformance2();
  sub_20C3414D8();
  swift_getWitnessTable();
  sub_20C36C504();
  sub_20C36C544();
  sub_20C36C734();
  swift_getTupleTypeMetadata2();
  sub_20C36CC74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAB0, &qword_20C375290);
  swift_getWitnessTable();
  sub_20C34155C();
  sub_20C36C784();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36CB24();
  sub_20C36C544();
  sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0]);
  sub_20C34323C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C2F9050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA98, &qword_20C375278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C2F90B8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for ForYouState();
  *a2 = *(a1 + *(result + 60)) < *(a1 + *(result + 52));
  return result;
}

uint64_t sub_20C2F9108()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = *(v0 + 48);
  v3 = (type metadata accessor for ForYouView() - 8);
  v4 = (*(*v3 + 80) + 64) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = sub_20C36C4E4();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = (v0 + v4);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  sub_20C3070BC();
  (*(*(v2 - 8) + 8))(v10 + v3[19], v2);
  (*(*(v1 - 8) + 8))(v10 + v3[20], v1);
  (*(*(v20 - 8) + 8))(v10 + v3[21]);
  v14 = *(v10 + v3[22] + 16);

  v15 = *(v10 + v3[23] + 8);

  v16 = (v10 + v3[24]);
  v17 = *v16;

  v18 = v16[1];

  (*(v7 + 8))(v0 + v8, v6);
  return swift_deallocObject();
}

uint64_t sub_20C2F9368()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[33];

  v17 = v0[35];

  v18 = v0[37];

  v19 = v0[39];

  v20 = v0[41];

  v21 = v0[43];

  v22 = v0[45];

  v23 = v0[47];

  return swift_deallocObject();
}

uint64_t sub_20C2F9450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C2F9488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C2F9534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C35B9FC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C2F95F8()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_20C2F9630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79F5D0, &unk_20C377540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  swift_getFunctionTypeMetadata1();
  v13 = sub_20C36C194();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + *(a3 + 72);
    goto LABEL_5;
  }

  v16 = *(a1 + *(a3 + 76) + 8);
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

uint64_t sub_20C2F976C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79F5D0, &unk_20C377540);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = *(a4 + 16);
    v14 = *(a4 + 24);
    swift_getFunctionTypeMetadata1();
    result = sub_20C36C194();
    v16 = *(result - 8);
    if (*(v16 + 84) != a3)
    {
      *(a1 + *(a4 + 76) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v16 + 56);
    v12 = a1 + *(a4 + 72);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C2F9898(uint64_t *a1)
{
  v4 = a1[2];
  v5 = a1[1];
  v2 = *a1;
  v3 = a1[3];
  v6 = a1[5];
  v7 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E0, &qword_20C377468);
  sub_20C36C394();
  sub_20C36C344();
  type metadata accessor for ForYouItemContext();
  sub_20C36C354();
  sub_20C36C374();
  sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  sub_20C36C284();
  swift_getTupleTypeMetadata2();
  sub_20C36CE94();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_20C36C544();
  swift_getWitnessTable();
  sub_20C36CBE4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C36CBC4();
  swift_getWitnessTable();
  sub_20C36C3F4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_20C341484();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E8, &qword_20C377470);
  sub_20C36C544();
  sub_20C36C7E4();
  swift_getOpaqueTypeConformance2();
  sub_20C3077A8(&qword_27C79F4F0, &qword_27C79F4E8, &qword_20C377470);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_20C36C5B4();
  sub_20C36C734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4F8, &qword_20C377478);
  sub_20C36C734();
  sub_20C36CB24();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F500, &qword_20C377480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F508, &qword_20C377488);
  sub_20C36A700();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C36AA40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C2FA154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F598, &qword_20C3774C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C2FA1C4()
{
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  v19 = *(v0 + 40);
  v20 = *(v0 + 56);
  v1 = type metadata accessor for ForYouSummaryView();
  v2 = (*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 64);

  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20C36C534();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[17]];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_20C3070BC();
  v12 = v1[18];
  swift_getFunctionTypeMetadata1();
  v13 = sub_20C36C194();
  (*(*(v13 - 8) + 8))(&v5[v12], v13);
  v14 = *&v5[v1[19] + 8];

  v15 = *&v5[v1[20] + 8];

  return swift_deallocObject();
}

uint64_t sub_20C2FA398()
{
  v24 = *(v0 + 16);
  v22 = *(v0 + 24);
  v25 = *(v0 + 40);
  v26 = *(v0 + 56);
  v1 = type metadata accessor for ForYouSummaryView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_20C36C564();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v23 = *(v5 + 64);
  v7 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20C36C534();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v6 + 8) & ~v6;
  v12 = &v7[v1[17]];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v12[16];
  sub_20C3070BC();
  v16 = v1[18];
  swift_getFunctionTypeMetadata1();
  v17 = sub_20C36C194();
  (*(*(v17 - 8) + 8))(&v7[v16], v17);
  v18 = *&v7[v1[19] + 8];

  v19 = *&v7[v1[20] + 8];

  v20 = *(v0 + v10);

  (*(v5 + 8))(v0 + v11, v4);
  return swift_deallocObject();
}

uint64_t sub_20C2FA608()
{
  v1 = *(v0 + 16);
  v22 = *(v0 + 24);
  v20 = *(v0 + 40);
  v23 = *(v0 + 56);
  v2 = type metadata accessor for ForYouSummaryView();
  v19 = (*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80);
  v21 = *(*(v2 - 1) + 64);
  sub_20C36C394();
  sub_20C36C344();
  type metadata accessor for ForYouItemContext();
  sub_20C36C354();
  sub_20C36C374();
  sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v3 = sub_20C36C284();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v0 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20C36C534();
    (*(*(v8 - 8) + 8))(v0 + v19, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = &v7[v2[17]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_20C3070BC();
  v14 = v2[18];
  swift_getFunctionTypeMetadata1();
  v15 = sub_20C36C194();
  (*(*(v15 - 8) + 8))(&v7[v14], v15);
  v16 = *&v7[v2[19] + 8];

  v17 = *&v7[v2[20] + 8];

  (*(v4 + 8))(v0 + ((v19 + v21 + v5) & ~v5), v3);
  return swift_deallocObject();
}

uint64_t sub_20C2FAA50()
{
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v18 = *(v0 + 40);
  v19 = *(v0 + 56);
  v1 = type metadata accessor for ForYouSummaryView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C36C534();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[v1[17]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  sub_20C3070BC();
  v11 = v1[18];
  swift_getFunctionTypeMetadata1();
  v12 = sub_20C36C194();
  (*(*(v12 - 8) + 8))(&v4[v11], v12);
  v13 = *&v4[v1[19] + 8];

  v14 = *&v4[v1[20] + 8];

  return swift_deallocObject();
}

uint64_t sub_20C2FAC28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C36C614();
  *a1 = result;
  return result;
}

uint64_t sub_20C2FAC7C()
{
  v33 = *(v0 + 16);
  v32 = *(v0 + 24);
  v31 = *(v0 + 40);
  v34 = *(v0 + 56);
  v1 = type metadata accessor for ForYouSummaryView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(type metadata accessor for ForYouSummaryAction() - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20C36C534();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = &v7[v1[17]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_20C3070BC();
  v14 = v1[18];
  swift_getFunctionTypeMetadata1();
  v15 = sub_20C36C194();
  (*(*(v15 - 8) + 8))(&v7[v14], v15);
  v16 = *&v7[v1[19] + 8];

  v17 = *&v7[v1[20] + 8];

  v18 = (v0 + v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 6:
      type metadata accessor for ForYouItemContext();
      v22 = swift_getEnumCaseMultiPayload();
      v23 = *(v18 + 1);

      v24 = *(v18 + 3);

      if (v22 == 1)
      {
        v25 = *(v18 + 5);

        v26 = *(v18 + 8);

        v27 = *(type metadata accessor for CanvasPlaceholder() + 44);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
        if (!(*(*(v28 - 8) + 48))(&v18[v27], 1, v28))
        {
          v29 = sub_20C36C124();
          (*(*(v29 - 8) + 8))(&v18[v27], v29);
        }
      }

      break;
    case 4:
      v21 = *v18;

      break;
    case 2:
      v20 = *(v18 + 1);

      break;
  }

  return swift_deallocObject();
}

uint64_t sub_20C2FAFD4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x20F2F7190]();
  *a1 = result;
  return result;
}

uint64_t sub_20C2FB000(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x20F2F71A0](v2);
}

uint64_t sub_20C2FB02C@<X0>(uint64_t a1@<X8>)
{
  result = sub_20C36C694();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20C2FB060(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20C36C6A4();
}

uint64_t CanvasPlaceholder.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CanvasPlaceholder.referenceIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CanvasPlaceholder.editorialCardIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CanvasPlaceholder.reason.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CanvasPlaceholder.init(identifier:referenceIdentifier:editorialCardIdentifier:markerType:referenceType:displayStyle:reason:planMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 50) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  v13 = a9 + *(type metadata accessor for CanvasPlaceholder() + 44);

  return sub_20C2FB2D8(a13, v13);
}

uint64_t sub_20C2FB2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C2FB33C()
{
  v1 = *v0;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v1);
  return sub_20C36D354();
}

uint64_t sub_20C2FB384()
{
  v1 = *v0;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v1);
  return sub_20C36D354();
}

unint64_t sub_20C2FB3C8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6F73616572;
  if (v1 != 6)
  {
    v3 = 0x6174654D6E616C70;
  }

  v4 = 0x636E657265666572;
  if (v1 != 4)
  {
    v4 = 0x5379616C70736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x795472656B72616DLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C2FB4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C2FC798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C2FB52C(uint64_t a1)
{
  v2 = sub_20C2FB94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C2FB568(uint64_t a1)
{
  v2 = sub_20C2FB94C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CanvasPlaceholder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D778, &qword_20C36D950);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FB94C();
  sub_20C36D374();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_20C36D1F4();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21[14] = 1;
    sub_20C36D1F4();
    v15 = v3[4];
    v16 = v3[5];
    v21[13] = 2;
    sub_20C36D1C4();
    v21[12] = *(v3 + 48);
    v21[11] = 3;
    sub_20C2FB9A0();
    sub_20C36D1E4();
    v21[10] = *(v3 + 49);
    v21[9] = 4;
    sub_20C2FB9F4();
    sub_20C36D234();
    v21[8] = *(v3 + 50);
    v21[7] = 5;
    sub_20C2FBA48();
    sub_20C36D234();
    v17 = v3[7];
    v18 = v3[8];
    v21[6] = 6;
    sub_20C36D1C4();
    v19 = *(type metadata accessor for CanvasPlaceholder() + 44);
    v21[5] = 7;
    type metadata accessor for PlanMetadata();
    sub_20C2FCD00(&qword_2810E8FD8, type metadata accessor for PlanMetadata);
    sub_20C36D234();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20C2FB94C()
{
  result = qword_2810E8F20;
  if (!qword_2810E8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F20);
  }

  return result;
}

unint64_t sub_20C2FB9A0()
{
  result = qword_2810E8D40;
  if (!qword_2810E8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D40);
  }

  return result;
}

unint64_t sub_20C2FB9F4()
{
  result = qword_2810E8CE8;
  if (!qword_2810E8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CE8);
  }

  return result;
}

unint64_t sub_20C2FBA48()
{
  result = qword_2810E9030;
  if (!qword_2810E9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9030);
  }

  return result;
}

uint64_t CanvasPlaceholder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = *(*(type metadata accessor for PlanMetadata() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D780, &qword_20C36D958);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v39 - v8;
  v10 = type metadata accessor for CanvasPlaceholder();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C2FB94C();
  v16 = v9;
  v17 = v45;
  sub_20C36D364();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v41 = v10;
  v45 = v5;
  v19 = v43;
  v18 = v44;
  v57 = 0;
  *v13 = sub_20C36D144();
  *(v13 + 1) = v21;
  v39[1] = v21;
  v56 = 1;
  *(v13 + 2) = sub_20C36D144();
  *(v13 + 3) = v22;
  v55 = 2;
  v23 = sub_20C36D114();
  v40 = 0;
  *(v13 + 4) = v23;
  *(v13 + 5) = v24;
  v53 = 3;
  sub_20C2FC008();
  v25 = v40;
  sub_20C36D134();
  v40 = v25;
  if (v25)
  {
    (*(v19 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v46);

    v26 = *(v13 + 3);

    v27 = *(v13 + 5);
  }

  v13[48] = v54;
  v51 = 4;
  sub_20C2FC05C();
  v28 = v40;
  sub_20C36D184();
  v40 = v28;
  if (v28)
  {
    goto LABEL_12;
  }

  v13[49] = v52;
  v49 = 5;
  sub_20C2FC0B0();
  v29 = v40;
  sub_20C36D184();
  if (v29)
  {
    v40 = v29;
LABEL_12:
    (*(v19 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v32 = 0;
    goto LABEL_13;
  }

  v13[50] = v50;
  v48 = 6;
  v30 = sub_20C36D114();
  v40 = 0;
  *(v13 + 7) = v30;
  *(v13 + 8) = v31;
  v47 = 7;
  sub_20C2FCD00(&qword_27C79D7A0, type metadata accessor for PlanMetadata);
  v36 = v45;
  v37 = v40;
  sub_20C36D184();
  v40 = v37;
  if (!v37)
  {
    (*(v19 + 8))(v16, v18);
    sub_20C2FB2D8(v36, &v13[*(v41 + 44)]);
    sub_20C2FC104(v13, v42, type metadata accessor for CanvasPlaceholder);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_20C2FC16C(v13);
  }

  (*(v19 + 8))(v16, v18);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v38 = *(v13 + 1);
  v32 = 1;
LABEL_13:

  v33 = *(v13 + 3);

  v34 = *(v13 + 5);

  if (v32)
  {
    v35 = *(v13 + 8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_20C2FC008()
{
  result = qword_27C79D788;
  if (!qword_27C79D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D788);
  }

  return result;
}

unint64_t sub_20C2FC05C()
{
  result = qword_27C79D790;
  if (!qword_27C79D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D790);
  }

  return result;
}

unint64_t sub_20C2FC0B0()
{
  result = qword_27C79D798;
  if (!qword_27C79D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D798);
  }

  return result;
}

uint64_t sub_20C2FC104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C2FC16C(uint64_t a1)
{
  v2 = type metadata accessor for CanvasPlaceholder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CanvasPlaceholder.hash(into:)()
{
  v1 = sub_20C36C124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for PlanMetadata() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = v0[1];
  sub_20C36CDC4();
  v11 = v0[2];
  v12 = v0[3];
  sub_20C36CDC4();
  if (v0[5])
  {
    v13 = v0[4];
    sub_20C36D334();
    sub_20C36CDC4();
  }

  else
  {
    sub_20C36D334();
  }

  if (*(v0 + 48) == 2)
  {
    sub_20C36D334();
  }

  else
  {
    sub_20C36D334();
    sub_20C36CDC4();
  }

  v14 = *(v0 + 49);
  sub_20C2FC630();
  DisplayStyle.rawValue.getter(*(v0 + 50));
  sub_20C36CDC4();

  if (v0[8])
  {
    v15 = v0[7];
    sub_20C36D334();
    sub_20C36CDC4();
  }

  else
  {
    sub_20C36D334();
  }

  v16 = type metadata accessor for CanvasPlaceholder();
  sub_20C2FC104(v0 + *(v16 + 44), v8, type metadata accessor for PlanMetadata);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
  {
    return MEMORY[0x20F2F7E60](0);
  }

  v19 = v8[*(v17 + 48)];
  (*(v2 + 32))(v5, v8, v1);
  MEMORY[0x20F2F7E60](1);
  sub_20C2FCD00(&qword_27C79D7B0, MEMORY[0x277CC95F0]);
  sub_20C36CD34();
  sub_20C36D334();
  return (*(v2 + 8))(v5, v1);
}

uint64_t CanvasPlaceholder.hashValue.getter()
{
  sub_20C36D314();
  CanvasPlaceholder.hash(into:)();
  return sub_20C36D354();
}

uint64_t sub_20C2FC5AC()
{
  sub_20C36D314();
  CanvasPlaceholder.hash(into:)();
  return sub_20C36D354();
}

uint64_t sub_20C2FC5F0()
{
  sub_20C36D314();
  CanvasPlaceholder.hash(into:)();
  return sub_20C36D354();
}

uint64_t sub_20C2FC630()
{
  sub_20C36CDC4();
}

uint64_t sub_20C2FC798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C377A10 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377A30 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795472656B72616DLL && a2 == 0xEA00000000006570 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174654D6E616C70 && a2 == 0xEC00000061746164)
  {

    return 7;
  }

  else
  {
    v5 = sub_20C36D264();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t _s13FitnessForYou17CanvasPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == 2)
    {
      return 0;
    }

    if (v8)
    {
      v10 = 0xD000000000000018;
    }

    else
    {
      v10 = 0x737543646C697562;
    }

    if (v8)
    {
      v11 = 0x800000020C377990;
    }

    else
    {
      v11 = 0xEF6E616C506D6F74;
    }

    if (v9)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v12 = 0x737543646C697562;
    }

    if (v9)
    {
      v13 = 0x800000020C377990;
    }

    else
    {
      v13 = 0xEF6E616C506D6F74;
    }

    if (v10 == v12 && v11 == v13)
    {
    }

    else
    {
      v14 = sub_20C36D264();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_20C331E0C(*(a1 + 49), *(a2 + 49)) & 1) == 0)
  {
    return 0;
  }

  v15 = *(a2 + 50);
  v16 = DisplayStyle.rawValue.getter(*(a1 + 50));
  v18 = v17;
  if (v16 == DisplayStyle.rawValue.getter(v15) && v18 == v19)
  {
  }

  else
  {
    v20 = sub_20C36D264();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = *(a1 + 64);
  v22 = *(a2 + 64);
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_48;
    }

    return 0;
  }

  if (!v22 || (*(a1 + 56) != *(a2 + 56) || v21 != v22) && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v23 = *(type metadata accessor for CanvasPlaceholder() + 44);

  return _s13FitnessForYou12PlanMetadataO2eeoiySbAC_ACtFZ_0(a1 + v23, a2 + v23);
}

uint64_t sub_20C2FCD00(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20C2FCD80(uint64_t a1, int a2)
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

uint64_t sub_20C2FCDA0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CanvasPlaceholder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasPlaceholder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C2FCF54()
{
  result = qword_27C79D7C0;
  if (!qword_27C79D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7C0);
  }

  return result;
}

unint64_t sub_20C2FCFAC()
{
  result = qword_2810E8F10;
  if (!qword_2810E8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F10);
  }

  return result;
}

unint64_t sub_20C2FD004()
{
  result = qword_2810E8F18;
  if (!qword_2810E8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F18);
  }

  return result;
}

__n128 ForYouSummaryLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ForYouSummaryLayout.init(chinHeight:contentMargins:pageControlBottomPadding:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v5;
  *(a2 + 40) = a4;
  return result;
}

uint64_t sub_20C2FD090()
{
  v1 = 0x4D746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676965486E696863;
  }
}

uint64_t sub_20C2FD100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C2FD7A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C2FD134(uint64_t a1)
{
  v2 = sub_20C2FD394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C2FD170(uint64_t a1)
{
  v2 = sub_20C2FD394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForYouSummaryLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7C8, &qword_20C36DBC0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14 = *(v1 + 3);
  v15 = v10;
  v11 = v1[5];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FD394();
  sub_20C36D374();
  *&v16 = v9;
  v18 = 0;
  sub_20C2FD3E8();
  sub_20C36D234();
  if (!v2)
  {
    v17 = v14;
    v16 = v15;
    v18 = 1;
    sub_20C2FD43C();
    sub_20C36D234();
    *&v16 = v11;
    v18 = 2;
    sub_20C36D234();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20C2FD394()
{
  result = qword_27C79D7D0;
  if (!qword_27C79D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7D0);
  }

  return result;
}

unint64_t sub_20C2FD3E8()
{
  result = qword_27C79D7D8;
  if (!qword_27C79D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7D8);
  }

  return result;
}

unint64_t sub_20C2FD43C()
{
  result = qword_27C79D7E0;
  if (!qword_27C79D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7E0);
  }

  return result;
}

uint64_t ForYouSummaryLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7E8, &qword_20C36DBC8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FD394();
  sub_20C36D364();
  if (!v2)
  {
    v19 = 0;
    sub_20C2FD6C4();
    sub_20C36D184();
    v11 = v17;
    v19 = 1;
    sub_20C2FD718();
    sub_20C36D184();
    v15 = v18;
    v16 = v17;
    v19 = 2;
    sub_20C36D184();
    (*(v6 + 8))(v9, v5);
    v13 = v17;
    *a2 = v11;
    v14 = v16;
    *(a2 + 24) = v15;
    *(a2 + 8) = v14;
    *(a2 + 40) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_20C2FD6C4()
{
  result = qword_27C79D7F0;
  if (!qword_27C79D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7F0);
  }

  return result;
}

unint64_t sub_20C2FD718()
{
  result = qword_27C79D7F8;
  if (!qword_27C79D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7F8);
  }

  return result;
}

uint64_t sub_20C2FD7A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676965486E696863 && a2 == 0xEA00000000007468;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377A50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

BOOL _s13FitnessForYou0bC13SummaryLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_20C2FD938(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C2FD958(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ForYouSummaryLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouSummaryLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C2FDAF4()
{
  result = qword_27C79D800;
  if (!qword_27C79D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D800);
  }

  return result;
}

unint64_t sub_20C2FDB4C()
{
  result = qword_27C79D808;
  if (!qword_27C79D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D808);
  }

  return result;
}

unint64_t sub_20C2FDBA4()
{
  result = qword_27C79D810;
  if (!qword_27C79D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D810);
  }

  return result;
}

uint64_t sub_20C2FDBF8()
{
  v0 = sub_20C36C3D4();
  __swift_allocate_value_buffer(v0, qword_2810ED6B8);
  __swift_project_value_buffer(v0, qword_2810ED6B8);
  return sub_20C36C3C4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20C2FDD28()
{
  v1 = 0x656E6F6870;
  v2 = 0x74656C626174;
  if (*v0 != 2)
  {
    v2 = 30324;
  }

  if (*v0)
  {
    v1 = 0x6863746177;
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

uint64_t sub_20C2FDD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C2FE6D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C2FDDC0(uint64_t a1)
{
  v2 = sub_20C2FE460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C2FDDFC(uint64_t a1)
{
  v2 = sub_20C2FE460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C2FDE44(uint64_t a1)
{
  v2 = sub_20C2FE5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C2FDE80(uint64_t a1)
{
  v2 = sub_20C2FE5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C2FDEBC(uint64_t a1)
{
  v2 = sub_20C2FE508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C2FDEF8(uint64_t a1)
{
  v2 = sub_20C2FE508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C2FDF34(uint64_t a1)
{
  v2 = sub_20C2FE4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C2FDF70(uint64_t a1)
{
  v2 = sub_20C2FE4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C2FDFAC(uint64_t a1)
{
  v2 = sub_20C2FE55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C2FDFE8(uint64_t a1)
{
  v2 = sub_20C2FE55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D818, &qword_20C36DDA0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D820, &qword_20C36DDA8);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D828, &qword_20C36DDB0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D830, &qword_20C36DDB8);
  v26 = *(v13 - 8);
  v14 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D838, &qword_20C36DDC0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FE460();
  sub_20C36D374();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_20C2FE508();
      v12 = v29;
      sub_20C36D1B4();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_20C2FE4B4();
      v12 = v32;
      sub_20C36D1B4();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_20C2FE55C();
    sub_20C36D1B4();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_20C2FE5B0();
  sub_20C36D1B4();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_20C2FE460()
{
  result = qword_27C79D840;
  if (!qword_27C79D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D840);
  }

  return result;
}

unint64_t sub_20C2FE4B4()
{
  result = qword_27C79D848;
  if (!qword_27C79D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D848);
  }

  return result;
}

unint64_t sub_20C2FE508()
{
  result = qword_27C79D850;
  if (!qword_27C79D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D850);
  }

  return result;
}

unint64_t sub_20C2FE55C()
{
  result = qword_27C79D858;
  if (!qword_27C79D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D858);
  }

  return result;
}

unint64_t sub_20C2FE5B0()
{
  result = qword_27C79D860;
  if (!qword_27C79D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D860);
  }

  return result;
}

void *sub_20C2FE61C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C2FE824(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DeviceType.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C2FE6D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656C626174 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

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

void *sub_20C2FE824(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8C8, &qword_20C36E278);
  v41 = *(v46 - 8);
  v2 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8D0, &qword_20C36E280);
  v43 = *(v47 - 8);
  v4 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8D8, &qword_20C36E288);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8E0, &qword_20C36E290);
  v42 = *(v10 - 8);
  v11 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8E8, &qword_20C36E298);
  v15 = *(v14 - 8);
  v16 = (v15[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_20C2FE460();
  v21 = v50;
  sub_20C36D364();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_20C36D194();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_20C32A50C();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_20C2FE55C();
        v36 = v40;
        sub_20C36D0F4();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_20C2FE5B0();
        v29 = v40;
        sub_20C36D0F4();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_20C2FE508();
      v35 = v40;
      sub_20C36D0F4();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_20C2FE4B4();
      v37 = v40;
      sub_20C36D0F4();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_20C36D064();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
  *v15 = &type metadata for DeviceType;
  sub_20C36D104();
  sub_20C36D054();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_20C2FEE68()
{
  result = qword_27C79D868;
  if (!qword_27C79D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForYouAction.LoadedCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ForYouAction.LoadedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C2FF060()
{
  result = qword_27C79D870;
  if (!qword_27C79D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D870);
  }

  return result;
}

unint64_t sub_20C2FF0B8()
{
  result = qword_27C79D878;
  if (!qword_27C79D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D878);
  }

  return result;
}

unint64_t sub_20C2FF110()
{
  result = qword_27C79D880;
  if (!qword_27C79D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D880);
  }

  return result;
}

unint64_t sub_20C2FF168()
{
  result = qword_27C79D888;
  if (!qword_27C79D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D888);
  }

  return result;
}

unint64_t sub_20C2FF1C0()
{
  result = qword_27C79D890;
  if (!qword_27C79D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D890);
  }

  return result;
}

unint64_t sub_20C2FF218()
{
  result = qword_27C79D898;
  if (!qword_27C79D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D898);
  }

  return result;
}

unint64_t sub_20C2FF270()
{
  result = qword_27C79D8A0;
  if (!qword_27C79D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8A0);
  }

  return result;
}

unint64_t sub_20C2FF2C8()
{
  result = qword_27C79D8A8;
  if (!qword_27C79D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8A8);
  }

  return result;
}

unint64_t sub_20C2FF320()
{
  result = qword_27C79D8B0;
  if (!qword_27C79D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8B0);
  }

  return result;
}

unint64_t sub_20C2FF378()
{
  result = qword_27C79D8B8;
  if (!qword_27C79D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8B8);
  }

  return result;
}

unint64_t sub_20C2FF3D0()
{
  result = qword_27C79D8C0;
  if (!qword_27C79D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8C0);
  }

  return result;
}

uint64_t ForYouError.hashValue.getter()
{
  v1 = *v0;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v1);
  return sub_20C36D354();
}

unint64_t sub_20C2FF4D8()
{
  result = qword_27C79D8F8;
  if (!qword_27C79D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8F8);
  }

  return result;
}

__n128 ForYouEnvironment.init(fetchSectionDescriptors:invalidateAllPlaceholders:makeAchievementEnvironmentCacheUpdatedStream:makeActiveWorkoutPlanUpdatedStream:makeAllowedContentRatingsUpdatedStream:makeAppDidBecomeActiveStream:makeAudioLanguagePreferenceUpdatedStream:makeBrowsingIdentityUpdatedStream:makeCatalogDeletedStream:makeContentAvailabilityStream:makeNetworkConditionsUpdatedStream:makeOnboardingSurveyResultsUpdatedStream:makePersonalizationPrivacyPreferenceUpdatedStream:makeSignificantTimeChangeStream:makeSubscriptionStatusUpdatedStream:makeWheelchairStatusUpdatedStream:navigateToExplore:presentToastIfNeeded:queryActiveParticipantDeviceType:refreshCanvas:reloadCanvas:requirePersonalizationSupported:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __n128 a26, uint64_t a27, uint64_t a28)
{
  result = a26;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  *(a9 + 240) = a21;
  *(a9 + 256) = a22;
  *(a9 + 272) = a23;
  *(a9 + 288) = a24;
  *(a9 + 304) = a25;
  *(a9 + 320) = a26;
  *(a9 + 336) = a27;
  *(a9 + 344) = a28;
  return result;
}

uint64_t sub_20C2FF5C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_20C2FF608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DisplayStyle.rawValue.getter(char a1)
{
  result = 0x736472617761;
  switch(a1)
  {
    case 1:
      v3 = 0x427472616863;
      goto LABEL_4;
    case 2:
      result = 0x6C6573756F726163;
      break;
    case 3:
      result = 0x656C63726963;
      break;
    case 4:
      result = 0x4263696D616E7964;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x6369724264697267;
      break;
    case 7:
      result = 0x7552646564697567;
      break;
    case 8:
      result = 0x6157646564697567;
      break;
    case 9:
      result = 0x427972617262696CLL;
      break;
    case 10:
      result = 0x6E6974656B72616DLL;
      break;
    case 11:
      result = 0x7974696C61646F6DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x647261646E617473;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      v3 = 0x426F65646976;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20C2FF8A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = DisplayStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DisplayStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C36D264();
  }

  return v8 & 1;
}

uint64_t sub_20C2FF92C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13FitnessForYou12DisplayStyleO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_20C2FF95C@<X0>(uint64_t *a1@<X8>)
{
  result = DisplayStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20C2FFA38()
{
  v1 = *v0;
  sub_20C36D314();
  DisplayStyle.rawValue.getter(v1);
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t sub_20C2FFA9C()
{
  DisplayStyle.rawValue.getter(*v0);
  sub_20C36CDC4();
}

uint64_t sub_20C2FFAF0()
{
  v1 = *v0;
  sub_20C36D314();
  DisplayStyle.rawValue.getter(v1);
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t _s13FitnessForYou12DisplayStyleO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C36D274();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20C2FFBA8()
{
  result = qword_2810E9028;
  if (!qword_2810E9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C2FFD4C()
{
  result = qword_2810E9020;
  if (!qword_2810E9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9020);
  }

  return result;
}

uint64_t sub_20C2FFDA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C2FFF40(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C2FFF88(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (a1 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (a1)
  {
    v1 = 0x6F5464656C696166;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C300004(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C300078(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_20C3000EC(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_20C2FFF08(*a1, *a2);
}

uint64_t sub_20C300100(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_20C2FFF40(*v1);
}

uint64_t sub_20C30010C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_20C2FFF18(a1, *v2);
}

uint64_t sub_20C300118(uint64_t a1, uint64_t a2)
{
  sub_20C36D314();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_20C2FFF18(v7, *v2);
  return sub_20C36D354();
}

uint64_t sub_20C300160(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_20C2FFF88(*v1);
}

uint64_t sub_20C30016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C2FFDA0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_20C30019C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_20C3023E8();
  *a2 = result;
  return result;
}

uint64_t sub_20C3001C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C30021C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C30028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C300004(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C3002C0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_20C300270();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20C3002F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C300344(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C300398()
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](0);
  return sub_20C36D354();
}

uint64_t sub_20C3003DC()
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](0);
  return sub_20C36D354();
}

uint64_t sub_20C300430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C300078(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C300464(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C3004B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C300524(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C300578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C3005CC@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_20C300618(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C30066C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ForYouSummaryLoadState.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v67) = a3;
  v68 = a2;
  v55 = type metadata accessor for ForYouSummaryLoadState.FetchingCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v53 = sub_20C36D244();
  v52 = *(v53 - 8);
  v8 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v51 = &v47 - v9;
  v10 = type metadata accessor for ForYouSummaryLoadState.FetchedCodingKeys();
  v11 = swift_getWitnessTable();
  v61 = v10;
  v60 = v11;
  v66 = sub_20C36D244();
  v64 = *(v66 - 8);
  v12 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v62 = &v47 - v13;
  type metadata accessor for ForYouSummaryLoadState.FailedToLoadCodingKeys();
  v57 = swift_getWitnessTable();
  v59 = sub_20C36D244();
  v56 = *(v59 - 8);
  v14 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v58 = &v47 - v15;
  type metadata accessor for ForYouSummaryLoadState.IdleCodingKeys();
  v49 = swift_getWitnessTable();
  v50 = sub_20C36D244();
  v48 = *(v50 - 8);
  v16 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v47 - v17;
  v63 = a4;
  v65 = a5;
  type metadata accessor for ForYouSummaryLoadState.CodingKeys();
  swift_getWitnessTable();
  v71 = sub_20C36D244();
  v69 = *(v71 - 8);
  v19 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v47 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v70 = v21;
  sub_20C36D374();
  if (v67)
  {
    if (v67 == 1)
    {
      LOBYTE(v73) = 2;
      v23 = v62;
      sub_20C36D1B4();
      v87 = v68;
      v68 = sub_20C36C394();
      v67 = sub_20C36C344();
      v61 = type metadata accessor for ForYouItemContext();
      v24 = sub_20C36C354();
      v25 = sub_20C36C374();
      v26 = sub_20C30102C(&qword_27C79D900, MEMORY[0x277D09808]);
      v27 = sub_20C30102C(&qword_27C79D908, MEMORY[0x277D09738]);
      v28 = sub_20C30102C(&qword_27C79D910, type metadata accessor for ForYouItemContext);
      v29 = sub_20C30102C(&qword_27C79D918, type metadata accessor for ForYouItemContext);
      v30 = sub_20C30102C(&qword_27C79D920, type metadata accessor for ForYouItemContext);
      v31 = sub_20C30102C(&qword_27C79D928, MEMORY[0x277D09748]);
      v32 = sub_20C30102C(&qword_27C79D930, MEMORY[0x277D097A8]);
      v73 = v68;
      v74 = v63;
      v75 = v67;
      v76 = v61;
      v77 = v24;
      v78 = v25;
      v33 = v23;
      v79 = v26;
      v80 = v65;
      v81 = v27;
      v82 = v28;
      v83 = v29;
      v84 = v30;
      v85 = v31;
      v86 = v32;
      sub_20C36C284();
      sub_20C36CE94();
      v72 = swift_getWitnessTable();
      swift_getWitnessTable();
      v34 = v66;
      sub_20C36D234();
      (*(v64 + 8))(v33, v34);
      return (*(v69 + 8))(v70, v71);
    }

    else
    {
      v41 = (v69 + 8);
      if (v68)
      {
        LOBYTE(v73) = 3;
        v42 = v51;
        v44 = v70;
        v43 = v71;
        sub_20C36D1B4();
        (*(v52 + 8))(v42, v53);
        return (*v41)(v44, v43);
      }

      else
      {
        LOBYTE(v73) = 0;
        v45 = v70;
        v46 = v71;
        sub_20C36D1B4();
        (*(v48 + 8))(v18, v50);
        return (*v41)(v45, v46);
      }
    }
  }

  else
  {
    v36 = v56;
    LOBYTE(v73) = 1;
    v37 = v58;
    v39 = v70;
    v38 = v71;
    sub_20C36D1B4();
    LOBYTE(v73) = v68;
    sub_20C301074();
    v40 = v59;
    sub_20C36D234();
    (*(v36 + 8))(v37, v40);
    return (*(v69 + 8))(v39, v38);
  }
}

uint64_t sub_20C30102C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C301074()
{
  result = qword_27C79D938;
  if (!qword_27C79D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D938);
  }

  return result;
}

uint64_t ForYouSummaryLoadState.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v79 = type metadata accessor for ForYouSummaryLoadState.FetchingCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v68 = sub_20C36D1A4();
  v67 = *(v68 - 8);
  v6 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v77 = &v59 - v7;
  v8 = type metadata accessor for ForYouSummaryLoadState.FetchedCodingKeys();
  v9 = swift_getWitnessTable();
  v76 = v8;
  v75 = v9;
  v70 = sub_20C36D1A4();
  v69 = *(v70 - 8);
  v10 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v80 = &v59 - v11;
  v12 = type metadata accessor for ForYouSummaryLoadState.FailedToLoadCodingKeys();
  v13 = swift_getWitnessTable();
  v73 = v12;
  v72 = v13;
  v66 = sub_20C36D1A4();
  v65 = *(v66 - 8);
  v14 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v74 = &v59 - v15;
  type metadata accessor for ForYouSummaryLoadState.IdleCodingKeys();
  v71 = swift_getWitnessTable();
  v64 = sub_20C36D1A4();
  v63 = *(v64 - 8);
  v16 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v59 - v17;
  type metadata accessor for ForYouSummaryLoadState.CodingKeys();
  swift_getWitnessTable();
  v82 = sub_20C36D1A4();
  v81 = *(v82 - 8);
  v19 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v59 - v20;
  v22 = a1;
  v23 = a1[3];
  v24 = v22[4];
  v83 = v22;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v25 = v100;
  sub_20C36D364();
  v100 = v25;
  if (!v25)
  {
    v60 = v18;
    v61 = a2;
    v62 = a3;
    v26 = v82;
    v27 = v21;
    *&v85 = sub_20C36D194();
    sub_20C36CE94();
    swift_getWitnessTable();
    *&v98 = sub_20C36D014();
    *(&v98 + 1) = v28;
    *&v99 = v29;
    *(&v99 + 1) = v30;
    sub_20C36D004();
    swift_getWitnessTable();
    sub_20C36CF84();
    v24 = v85;
    v31 = v26;
    if (v85 == 4 || (v59 = v98, v85 = v98, v86 = v99, (sub_20C36CFA4() & 1) == 0))
    {
      v24 = sub_20C36D064();
      v36 = swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
      *v38 = type metadata accessor for ForYouSummaryLoadState();
      sub_20C36D104();
      sub_20C36D054();
      (*(*(v24 - 8) + 104))(v38, *MEMORY[0x277D84160], v24);
      v100 = v36;
      swift_willThrow();
      (*(v81 + 8))(v27, v31);
    }

    else if (v24 > 1)
    {
      if (v24 == 2)
      {
        LOBYTE(v85) = 2;
        v41 = v100;
        sub_20C36D0F4();
        v100 = v41;
        if (!v41)
        {
          v42 = sub_20C36C394();
          v79 = sub_20C36C344();
          WitnessTable = type metadata accessor for ForYouItemContext();
          v77 = sub_20C36C354();
          v43 = sub_20C36C374();
          v44 = sub_20C30102C(&qword_27C79D900, MEMORY[0x277D09808]);
          v45 = sub_20C30102C(&qword_27C79D908, MEMORY[0x277D09738]);
          v46 = sub_20C30102C(&qword_27C79D910, type metadata accessor for ForYouItemContext);
          v47 = sub_20C30102C(&qword_27C79D918, type metadata accessor for ForYouItemContext);
          v48 = sub_20C30102C(&qword_27C79D920, type metadata accessor for ForYouItemContext);
          v49 = sub_20C30102C(&qword_27C79D928, MEMORY[0x277D09748]);
          v50 = sub_20C30102C(&qword_27C79D930, MEMORY[0x277D097A8]);
          *&v85 = v42;
          *(&v85 + 1) = v61;
          *&v86 = v79;
          *(&v86 + 1) = WitnessTable;
          v87 = v77;
          v88 = v43;
          v89 = v44;
          v90 = v62;
          v91 = v45;
          v92 = v46;
          v93 = v47;
          v94 = v48;
          v95 = v49;
          v96 = v50;
          v51 = v80;
          sub_20C36C284();
          sub_20C36CE94();
          v84 = swift_getWitnessTable();
          swift_getWitnessTable();
          v24 = v70;
          v52 = v100;
          sub_20C36D184();
          v100 = v52;
          if (!v52)
          {
            (*(v69 + 8))(v51, v24);
            (*(v81 + 8))(v27, v82);
            swift_unknownObjectRelease();
            v24 = v97;
            goto LABEL_10;
          }

          (*(v69 + 8))(v51, v24);
          (*(v81 + 8))(v27, v82);
          goto LABEL_9;
        }
      }

      else
      {
        LOBYTE(v85) = 3;
        v24 = v77;
        v58 = v100;
        sub_20C36D0F4();
        v100 = v58;
        if (!v58)
        {
          (*(v67 + 8))(v24, v68);
          (*(v81 + 8))(v27, v26);
          swift_unknownObjectRelease();
          v24 = 1;
          goto LABEL_10;
        }
      }

      (*(v81 + 8))(v27, v26);
    }

    else
    {
      v32 = v27;
      if (v24)
      {
        LOBYTE(v85) = 1;
        v53 = v74;
        v54 = v100;
        sub_20C36D0F4();
        v35 = v81;
        v100 = v54;
        if (!v54)
        {
          sub_20C301D50();
          v55 = v66;
          v56 = v100;
          sub_20C36D184();
          v100 = v56;
          if (!v56)
          {
            (*(v65 + 8))(v53, v55);
            (*(v35 + 8))(v32, v31);
            swift_unknownObjectRelease();
            v24 = v85;
            goto LABEL_10;
          }

          (*(v65 + 8))(v53, v55);
        }
      }

      else
      {
        LOBYTE(v85) = 0;
        v33 = v60;
        v34 = v100;
        sub_20C36D0F4();
        v35 = v81;
        v100 = v34;
        if (!v34)
        {
          (*(v63 + 8))(v33, v64);
          (*(v35 + 8))(v27, v31);
          swift_unknownObjectRelease();
          v24 = 0;
          goto LABEL_10;
        }
      }

      v57 = *(v35 + 8);
      v24 = v35 + 8;
      v57(v32, v31);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v83);
  return v24;
}

unint64_t sub_20C301D50()
{
  result = qword_27C79D940[0];
  if (!qword_27C79D940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C79D940);
  }

  return result;
}

uint64_t sub_20C301DA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = ForYouSummaryLoadState.init(from:)(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
  }

  return result;
}

BOOL static ForYouSummaryLoadState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_20C36C394();
        sub_20C36C344();
        type metadata accessor for ForYouItemContext();
        sub_20C36C354();
        sub_20C36C374();
        sub_20C30102C(&qword_27C79D900, MEMORY[0x277D09808]);
        sub_20C30102C(&qword_27C79D908, MEMORY[0x277D09738]);
        sub_20C30102C(&qword_27C79D910, type metadata accessor for ForYouItemContext);
        sub_20C30102C(&qword_27C79D918, type metadata accessor for ForYouItemContext);
        sub_20C30102C(&qword_27C79D920, type metadata accessor for ForYouItemContext);
        sub_20C30102C(&qword_27C79D928, MEMORY[0x277D09748]);
        sub_20C30102C(&qword_27C79D930, MEMORY[0x277D097A8]);
        sub_20C36C284();
        swift_getWitnessTable();
        return sub_20C36CEA4() & 1;
      }

      return 0;
    }

    if (a1)
    {
      if (a4 != 2 || a3 != 1)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
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

    return a3 == a1;
  }
}

BOOL sub_20C3020CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return static ForYouSummaryLoadState.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8));
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_20C302100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C302148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C30218C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ForYouToastState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ForYouToastState.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void __swiftcall SectionDescriptors.init(awardDescriptors:forYouDescriptors:recoId:requestStartTime:responseEndTime:)(FitnessForYou::SectionDescriptors *__return_ptr retstr, Swift::OpaquePointer awardDescriptors, Swift::OpaquePointer forYouDescriptors, Swift::String recoId, Swift::Double requestStartTime, Swift::Double responseEndTime)
{
  retstr->awardDescriptors = awardDescriptors;
  retstr->forYouDescriptors = forYouDescriptors;
  retstr->recoId = recoId;
  retstr->requestStartTime = requestStartTime;
  retstr->responseEndTime = responseEndTime;
}

unint64_t sub_20C302418()
{
  v1 = *v0;
  v2 = 0x64496F636572;
  v3 = 0xD000000000000010;
  if (v1 != 3)
  {
    v3 = 0x65736E6F70736572;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C3024C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C3044B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3024F8(uint64_t a1)
{
  v2 = sub_20C302848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C302534(uint64_t a1)
{
  v2 = sub_20C302848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionDescriptors.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBC8, &unk_20C36EBD0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v16[1] = v1[2];
  v17 = v9;
  v16[0] = v11;
  v13 = v1[4];
  v12 = v1[5];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C302848();

  sub_20C36D374();
  v19 = v10;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
  sub_20C302DB8(&qword_2810E8BF8, sub_20C3028E4);
  sub_20C36D234();
  if (v2)
  {
  }

  else
  {

    v19 = v17;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
    sub_20C302938(&qword_2810E8C00, sub_20C3029B0);
    sub_20C36D234();
    LOBYTE(v19) = 2;
    sub_20C36D1F4();
    LOBYTE(v19) = 3;
    sub_20C36D214();
    LOBYTE(v19) = 4;
    sub_20C36D214();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20C302848()
{
  result = qword_27C79DBD0;
  if (!qword_27C79DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DBD0);
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

unint64_t sub_20C3028E4()
{
  result = qword_2810E8CC0;
  if (!qword_2810E8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CC0);
  }

  return result;
}

uint64_t sub_20C302938(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DBE0, &qword_20C36EBE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C3029B0()
{
  result = qword_2810E8CF0;
  if (!qword_2810E8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CF0);
  }

  return result;
}

uint64_t SectionDescriptors.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE8, &qword_20C36EBE8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C302848();
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
  v23 = 0;
  sub_20C302DB8(&qword_27C79DBF0, sub_20C302E30);
  sub_20C36D184();
  v11 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
  v23 = 1;
  sub_20C302938(&qword_27C79DC00, sub_20C302E84);
  sub_20C36D184();
  v22 = v24;
  LOBYTE(v24) = 2;
  v20 = sub_20C36D144();
  v21 = v12;
  LOBYTE(v24) = 3;
  sub_20C36D164();
  v14 = v13;
  LOBYTE(v24) = 4;
  sub_20C36D164();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v19 = v21;
  v18 = v22;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v20;
  a2[3] = v19;
  a2[4] = v14;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C302DB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DBD8, &qword_20C375B70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C302E30()
{
  result = qword_27C79DBF8;
  if (!qword_27C79DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DBF8);
  }

  return result;
}

unint64_t sub_20C302E84()
{
  result = qword_27C79DC08;
  if (!qword_27C79DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC08);
  }

  return result;
}

uint64_t SectionDescriptors.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  sub_20C303E00(a1, *v1);
  sub_20C3039DC(a1, v3);
  sub_20C36CDC4();
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x20F2F7E80](*&v8);
  if (v7 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v7;
  }

  return MEMORY[0x20F2F7E80](*&v9);
}

uint64_t SectionDescriptors.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_20C36D314();
  SectionDescriptors.hash(into:)(v4);
  return sub_20C36D354();
}

uint64_t sub_20C302FFC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_20C36D314();
  SectionDescriptors.hash(into:)(v4);
  return sub_20C36D354();
}

uint64_t sub_20C30305C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_20C36D314();
  SectionDescriptors.hash(into:)(v4);
  return sub_20C36D354();
}

uint64_t sub_20C3030B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 16);
      v9 = *(v5 - 1);
      v10 = *v5;

      sub_20C36CDC4();
      sub_20C36CDC4();

      if (v10)
      {
        sub_20C36D334();
      }

      else
      {
        sub_20C36D334();
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0;
        }

        MEMORY[0x20F2F7E80](v11);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20C303294(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C36C124();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20]();
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for PlanMetadata() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CanvasPlaceholder();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v15);
  if (v15)
  {
    v17 = *(v10 + 44);
    v18 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v33 = *(v11 + 72);
    v34 = v17;
    v32 = 0x800000020C377990;
    v29[3] = 0x800000020C3778D0;
    v29[4] = 0x800000020C377900;
    v29[1] = 0x800000020C377840;
    v29[2] = 0x800000020C3778B0;
    v19 = v30;
    v30 += 8;
    v31 = (v19 + 32);
    do
    {
      sub_20C304678(v18, v14, type metadata accessor for CanvasPlaceholder);
      v20 = *v14;
      v21 = *(v14 + 1);
      sub_20C36CDC4();
      v22 = *(v14 + 2);
      v23 = *(v14 + 3);
      sub_20C36CDC4();
      if (*(v14 + 5))
      {
        v24 = *(v14 + 4);
        sub_20C36D334();
        sub_20C36CDC4();
      }

      else
      {
        sub_20C36D334();
      }

      if (v14[48] == 2)
      {
        sub_20C36D334();
      }

      else
      {
        sub_20C36D334();
        sub_20C36CDC4();
      }

      v25 = v14[49];
      if (v25 <= 3)
      {
        v14[49];
      }

      sub_20C36CDC4();

      v14[50];
      sub_20C36CDC4();

      if (*(v14 + 8))
      {
        v26 = *(v14 + 7);
        sub_20C36D334();
        sub_20C36CDC4();
      }

      else
      {
        sub_20C36D334();
      }

      sub_20C304678(&v14[v34], v9, type metadata accessor for PlanMetadata);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
      if ((*(*(v27 - 8) + 48))(v9, 1, v27) == 1)
      {
        MEMORY[0x20F2F7E60](0);
      }

      else
      {
        v28 = v9[*(v27 + 48)];
        (*v31)(v6, v9, v3);
        MEMORY[0x20F2F7E60](1);
        sub_20C3046E0();
        sub_20C36CD34();
        sub_20C36D334();
        (*v30)(v6, v3);
      }

      result = sub_20C2FC16C(v14);
      v18 += v33;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_20C3039DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v4);
  if (v4)
  {
    v6 = (a2 + 64);
    do
    {
      v19 = v4;
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = v6[1];
      v16 = *(v6 + 16);
      v14 = *v6;
      v15 = v6[3];
      v12 = v6[5];
      v17 = *(v6 + 48);
      v13 = v6[8];
      v18 = v6[7];
      v20 = v6[4];

      sub_20C36CDC4();
      sub_20C36D334();
      if (v9)
      {
        sub_20C36CDC4();
      }

      sub_20C36D334();
      if (v11)
      {
        sub_20C36CDC4();
      }

      sub_20C36CDC4();

      sub_20C36D334();
      if (v20)
      {
        sub_20C36CDC4();
      }

      sub_20C303294(a1, v12);
      sub_20C36CDC4();

      sub_20C36CDC4();

      v6 += 13;
      v4 = v19 - 1;
    }

    while (v19 != 1);
  }

  return result;
}

uint64_t sub_20C303E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v3);
  if (v3)
  {
    v5 = 0;
    v20 = a2 + 32;
    do
    {
      v21 = v5;
      v6 = (v20 + 40 * v5);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      v11 = v6[4];

      sub_20C36CDC4();
      sub_20C36CDC4();
      v12 = *(v11 + 16);
      MEMORY[0x20F2F7E60](v12);
      if (v12)
      {
        v13 = (v11 + 64);
        do
        {
          v16 = *(v13 - 4);
          v15 = *(v13 - 3);
          v17 = *(v13 - 16);
          v18 = *(v13 - 1);
          v19 = *v13;

          sub_20C36CDC4();
          sub_20C36CDC4();

          if (v19)
          {
            sub_20C36D334();
          }

          else
          {
            sub_20C36D334();
            if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v14 = v18;
            }

            else
            {
              v14 = 0;
            }

            MEMORY[0x20F2F7E80](v14);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      v5 = v21 + 1;
    }

    while (v21 + 1 != v3);
  }

  return result;
}

BOOL _s13FitnessForYou18SectionDescriptorsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_20C332634(*a1, *a2) & 1) == 0 || (sub_20C33279C(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v4 == v9)
  {
    if (v6 != v11)
    {
      return 0;
    }

    return v5 == v10;
  }

  v13 = sub_20C36D264();
  result = 0;
  if ((v13 & 1) != 0 && v6 == v11)
  {
    return v5 == v10;
  }

  return result;
}

unint64_t sub_20C304164()
{
  result = qword_27C79DC10;
  if (!qword_27C79DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC10);
  }

  return result;
}

uint64_t sub_20C3041B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20C304200(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PersonalizationInferenceRequestTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationInferenceRequestTrigger(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C3043B0()
{
  result = qword_27C79DC18;
  if (!qword_27C79DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC18);
  }

  return result;
}

unint64_t sub_20C304408()
{
  result = qword_27C79DC20;
  if (!qword_27C79DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC20);
  }

  return result;
}

unint64_t sub_20C304460()
{
  result = qword_27C79DC28;
  if (!qword_27C79DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC28);
  }

  return result;
}

uint64_t sub_20C3044B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000020C377AC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377AE0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496F636572 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377B00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEF656D6954646E45)
  {

    return 4;
  }

  else
  {
    v5 = sub_20C36D264();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_20C304678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C3046E0()
{
  result = qword_27C79D7B0;
  if (!qword_27C79D7B0)
  {
    sub_20C36C124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7B0);
  }

  return result;
}

uint64_t ForYouLocalState.previousLoadState.getter()
{
  v1 = *(v0 + 8);
  sub_20C3047C0(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  return v1;
}

uint64_t sub_20C3047C0(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 != -1)
  {
    return sub_20C3047D4(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_20C3047D4(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    return sub_20C304834(result, a2, a3);
  }

  return result;
}

uint64_t sub_20C304834(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t ForYouLocalState.previousLoadState.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_20C3048A0(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return result;
}

uint64_t sub_20C3048A0(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 != -1)
  {
    return sub_20C3048B4(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_20C3048B4(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    return sub_20C304914(result, a2, a3);
  }

  return result;
}

uint64_t sub_20C304914(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t ForYouLocalState.init(browsingIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *a2 = result & 1;
  return result;
}

unint64_t sub_20C304964()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_20C30499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020C377B20 == a2 || (sub_20C36D264() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377B40 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C36D264();

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

uint64_t sub_20C304A80(uint64_t a1)
{
  v2 = sub_20C304CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C304ABC(uint64_t a1)
{
  v2 = sub_20C304CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForYouLocalState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC30, &qword_20C36EE10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v10;
  v14 = *(v1 + 3);
  v21 = v1[32];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C304CB8();
  sub_20C36D374();
  LOBYTE(v17) = v9;
  v22 = 0;
  sub_20C304D0C();
  sub_20C36D234();
  if (!v2)
  {
    v17 = v16;
    v18 = v15;
    v19 = v14;
    v20 = v21;
    v22 = 1;
    sub_20C304D60();
    sub_20C36D1E4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20C304CB8()
{
  result = qword_27C79DC38;
  if (!qword_27C79DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC38);
  }

  return result;
}

unint64_t sub_20C304D0C()
{
  result = qword_27C79DC40;
  if (!qword_27C79DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC40);
  }

  return result;
}

unint64_t sub_20C304D60()
{
  result = qword_27C79DC48;
  if (!qword_27C79DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC48);
  }

  return result;
}

uint64_t ForYouLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC50, &qword_20C36EE18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C304CB8();
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_20C304FCC();
  sub_20C36D184();
  v11 = v17[0];
  v19 = 1;
  sub_20C305020();
  sub_20C36D134();
  (*(v6 + 8))(v9, v5);
  v12 = v17[0];
  v13 = v17[1];
  v14 = v17[2];
  v15 = v18;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  sub_20C3047C0(v12, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C3048A0(v12, v13, v14, v15);
}

unint64_t sub_20C304FCC()
{
  result = qword_27C79DC58;
  if (!qword_27C79DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC58);
  }

  return result;
}

unint64_t sub_20C305020()
{
  result = qword_27C79DC60;
  if (!qword_27C79DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC60);
  }

  return result;
}

BOOL _s13FitnessForYou0bC10LocalStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[32];
  v4 = a2[32];
  if (v3 == 255)
  {
    return v4 == 255;
  }

  if (v4 == 255)
  {
    return 0;
  }

  v6 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  if (!v3)
  {
    if (!v4)
    {
      v16 = *(a2 + 3);
      if (!*(a1 + 3))
      {
        if (*(a2 + 3))
        {
          return 0;
        }

        if (v6 != v10 || v8 != v11)
        {
          v18 = *(a2 + 1);
          v19 = *(a2 + 2);
          if ((sub_20C36D264() & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      if (*(a1 + 3) == 1)
      {
        if (v16 == 1)
        {
          v17 = *(a2 + 1);
          if (v6 == 4)
          {
            if (v17 == 4)
            {
              return 1;
            }
          }

          else if (v17 != 4 && v10 == v6)
          {
            return 1;
          }
        }
      }

      else if (v6 | v8)
      {
        if (v16 == 2 && v10 == 1 && !v11)
        {
          return 1;
        }
      }

      else if (v16 == 2 && !(v11 | v10))
      {
        return 1;
      }
    }

    return 0;
  }

  if (v3 != 1)
  {
    if (v9 | v8 | v6)
    {
      if (v4 == 2 && v10 == 1 && !(v12 | v11))
      {
        return 1;
      }
    }

    else if (v4 == 2 && !(v11 | v10 | v12))
    {
      return 1;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

  if (v6 != v10 || v8 != v11)
  {
    v13 = *(a2 + 1);
    v14 = *(a2 + 2);
    if ((sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  v15 = sub_20C33279C(v9, v12);
  sub_20C3048A0(v10, v11, v12, 1);
  result = 1;
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou17LoadFailureReasonO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_13FitnessForYou9LoadStateOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_20C3052CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20C305310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceholderMarkerType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaceholderMarkerType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C3054BC()
{
  result = qword_27C79DC68;
  if (!qword_27C79DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC68);
  }

  return result;
}

unint64_t sub_20C305514()
{
  result = qword_27C79DC70;
  if (!qword_27C79DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC70);
  }

  return result;
}

unint64_t sub_20C30556C()
{
  result = qword_27C79DC78;
  if (!qword_27C79DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC78);
  }

  return result;
}

unint64_t PersonalizationInferenceRequestTrigger.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E65704F707061;
  v2 = 0x6F54736472617761;
  v3 = 0x44676F6C61746163;
  if (a1 != 3)
  {
    v3 = 0x616470556E616C70;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C305680(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0x6F54736472617761;
      v5 = 0xEB00000000747361;
      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2 == 3)
      {
        v4 = 0x44676F6C61746163;
      }

      else
      {
        v4 = 0x616470556E616C70;
      }

      if (v2 == 3)
      {
        v5 = 0xEE00646574656C65;
      }

      else
      {
        v5 = 0xEB00000000646574;
      }

      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

LABEL_21:
    if (*a2)
    {
      v7 = 0x6E65704F707061;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (*a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000020C377930;
    }

    if (v4 != v7)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (*a1)
  {
    v4 = 0x6E65704F707061;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x800000020C377930;
  }

  if (*a2 <= 1u)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (v3 == 2)
  {
    v8 = 0x6F54736472617761;
    v9 = 7631713;
  }

  else
  {
    if (v3 == 3)
    {
      v6 = 0xEE00646574656C65;
      if (v4 != 0x44676F6C61746163)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v8 = 0x616470556E616C70;
    v9 = 6579572;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_20C36D264();
    goto LABEL_37;
  }

LABEL_34:
  if (v5 != v6)
  {
    goto LABEL_36;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_20C30585C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13FitnessForYou38PersonalizationInferenceRequestTriggerO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_20C30588C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E65704F707061;
  v5 = 0xEB00000000747361;
  v6 = 0x6F54736472617761;
  v7 = 0xEE00646574656C65;
  v8 = 0x44676F6C61746163;
  if (v2 != 3)
  {
    v8 = 0x616470556E616C70;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000020C377930;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_20C3059FC()
{
  v1 = *v0;
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t sub_20C305B00()
{
  *v0;
  *v0;
  sub_20C36CDC4();
}

uint64_t sub_20C305BF0()
{
  v1 = *v0;
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t _s13FitnessForYou38PersonalizationInferenceRequestTriggerO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C36D0E4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20C305D40()
{
  result = qword_27C79DC80;
  if (!qword_27C79DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC80);
  }

  return result;
}

unint64_t sub_20C305DA4()
{
  result = qword_2810E8CB0;
  if (!qword_2810E8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CB0);
  }

  return result;
}

uint64_t ForYouToastView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x4034000000000000;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C305E60;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_20C305E60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t ForYouToastView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v99 = sub_20C36C744();
  v2 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v84[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20C36C454();
  v5 = *(v4 - 8);
  v100 = v4;
  v101 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v96 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC88, &qword_20C36F1E0);
  v9 = *(v8 - 8);
  v102 = v8;
  v103 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v97 = &v84[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC90, &qword_20C36F1E8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v84[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC98, &qword_20C36F1F0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v87 = &v84[-v20];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCA0, &qword_20C36F1F8);
  v21 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v84[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCA8, &qword_20C36F200);
  v24 = *(v23 - 8);
  v92 = v23;
  v93 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v91 = &v84[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCB0, &qword_20C36F208);
  v28 = *(v27 - 8);
  v94 = v27;
  v95 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v105 = &v84[-v30];
  v31 = v1[1];
  v88 = *v1;
  v32 = *(v1 + 16);
  v33 = v1[3];
  v86 = sub_20C36C6D4();
  v117 = 1;
  sub_20C306878(v31, &v108);
  v124 = v112;
  v125 = v113;
  v126 = v114;
  v127 = v115;
  v120 = v108;
  v121 = v109;
  v122 = v110;
  v123 = v111;
  v128[0] = v108;
  v128[1] = v109;
  v128[2] = v110;
  v128[3] = v111;
  v128[4] = v112;
  v128[5] = v113;
  v128[6] = v114;
  v129 = v115;
  sub_20C3077F0(&v120, &v106, &qword_27C79DCB8, &qword_20C36F210);
  sub_20C307858(v128, &qword_27C79DCB8, &qword_20C36F210);
  *(&v116[4] + 7) = v124;
  *(&v116[5] + 7) = v125;
  *(&v116[6] + 7) = v126;
  *(v116 + 7) = v120;
  *(&v116[1] + 7) = v121;
  *(&v116[2] + 7) = v122;
  *(&v116[7] + 7) = v127;
  *(&v116[3] + 7) = v123;
  v85 = v117;
  v34 = sub_20C36C834();
  v118 = 1;
  sub_20C36CC24();
  sub_20C36C5C4();
  *&v119[55] = v111;
  *&v119[71] = v112;
  *&v119[87] = v113;
  *&v119[103] = v114;
  *&v119[7] = v108;
  *&v119[23] = v109;
  v35 = &v16[*(v13 + 44)];
  *&v119[39] = v110;
  sub_20C36CC04();
  v36 = sub_20C36C834();
  v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCC0, &qword_20C36F218) + 36)] = v36;
  v37 = v116[2];
  *(v16 + 65) = v116[3];
  *(v16 + 49) = v37;
  v38 = v116[0];
  *(v16 + 33) = v116[1];
  *(v16 + 17) = v38;
  *(v16 + 8) = *(&v116[6] + 15);
  v39 = v116[5];
  *(v16 + 113) = v116[6];
  v40 = v116[4];
  *(v16 + 97) = v39;
  *(v16 + 81) = v40;
  *(v16 + 168) = 0u;
  *(v16 + 152) = 0u;
  v41 = *&v119[16];
  *(v16 + 185) = *v119;
  *(v16 + 201) = v41;
  v42 = *&v119[48];
  *(v16 + 217) = *&v119[32];
  *(v16 + 37) = *&v119[111];
  v43 = *&v119[96];
  v44 = *&v119[64];
  *(v16 + 265) = *&v119[80];
  *(v16 + 281) = v43;
  *(v16 + 249) = v44;
  *v16 = v86;
  *(v16 + 1) = 0;
  v16[16] = v85;
  v16[144] = v34;
  v16[184] = 1;
  *(v16 + 233) = v42;
  KeyPath = swift_getKeyPath();
  v46 = v87;
  v47 = &v87[*(v18 + 44)];
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCC8, &qword_20C36F250) + 28);
  v49 = *MEMORY[0x277CDF3C0];
  v50 = sub_20C36C414();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = KeyPath;
  v51 = v46;
  sub_20C307054(v16, v46, &qword_27C79DC90, &qword_20C36F1E8);
  v52 = v89;
  v53 = v90;
  v54 = &v89[*(v90 + 36)];
  v55 = *(sub_20C36C594() + 20);
  v56 = *MEMORY[0x277CE0118];
  v57 = sub_20C36C6E4();
  (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
  __asm { FMOV            V0.2D, #14.0 }

  *v54 = _Q0;
  *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCD0, &qword_20C36F258) + 36)] = 256;
  v63 = v52;
  sub_20C307054(v51, v52, &qword_27C79DC98, &qword_20C36F1F0);
  v64 = swift_allocObject();
  v65 = v88;
  *(v64 + 16) = v88;
  *(v64 + 24) = v31;
  *(v64 + 32) = v32;
  *(v64 + 40) = v33;
  v66 = v65;
  sub_20C3070C8();
  v67 = sub_20C3070D0();
  v68 = v91;
  v69 = v53;
  sub_20C36C9C4();

  sub_20C307858(v63, &qword_27C79DCA0, &qword_20C36F1F8);
  v70 = swift_allocObject();
  v71 = v66;
  *(v70 + 16) = v66;
  *(v70 + 24) = v31;
  v72 = v31;
  LOBYTE(v31) = v32;
  *(v70 + 32) = v32;
  *(v70 + 40) = v33;
  v73 = v71;
  sub_20C3070C8();
  v106 = v69;
  v107 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v92;
  sub_20C36C9F4();

  (*(v93 + 8))(v68, v75);
  sub_20C36C7A4();
  v76 = v96;
  sub_20C36C424();
  v77 = swift_allocObject();
  *(v77 + 16) = v73;
  *(v77 + 24) = v72;
  *(v77 + 32) = v31;
  *(v77 + 40) = v33;
  sub_20C3070C8();
  sub_20C307658();
  v78 = v97;
  v79 = v100;
  sub_20C36CBF4();

  (*(v101 + 8))(v76, v79);
  sub_20C36C474();
  v106 = v75;
  v107 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_20C3077A8(&qword_27C79DD40, &qword_27C79DC88, &qword_20C36F1E0);
  v80 = v94;
  v81 = v102;
  v82 = v105;
  sub_20C36CA74();
  (*(v103 + 8))(v78, v81);
  return (*(v95 + 8))(v82, v80);
}

uint64_t sub_20C306878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20C36CAE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_20C36C704();
  LOBYTE(v25[0]) = 1;
  sub_20C306AD0(a1, v22);
  *&v21[7] = v22[0];
  *&v21[23] = v22[1];
  *&v21[39] = v22[2];
  *&v21[55] = v22[3];
  v9 = v25[0];
  v10 = sub_20C36CB34();
  v11 = sub_20C36C864();
  KeyPath = swift_getKeyPath();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v4);
  v13 = sub_20C36CB04();
  v14 = v20;
  v23[0] = v20;
  v23[1] = 0;
  v24[0] = v9;
  *&v24[1] = *v21;
  *&v24[17] = *&v21[16];
  *&v24[33] = *&v21[32];
  *&v24[49] = *&v21[48];
  v15 = *&v21[63];
  *&v24[64] = *&v21[63];
  v16 = *v24;
  *a2 = v20;
  *(a2 + 16) = v16;
  v17 = *&v24[16];
  v18 = *&v24[48];
  *(a2 + 48) = *&v24[32];
  *(a2 + 64) = v18;
  *(a2 + 32) = v17;
  *(a2 + 80) = v15;
  *(a2 + 88) = v10;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = v11;
  *(a2 + 112) = v13;
  sub_20C3077F0(v23, v25, &qword_27C79DD58, &qword_20C36F390);
  v25[0] = v14;
  v25[1] = 0;
  v26 = v9;
  v28 = *&v21[16];
  v29 = *&v21[32];
  *v30 = *&v21[48];
  *&v30[15] = *&v21[63];
  v27 = *v21;
  return sub_20C307858(v25, &qword_27C79DD58, &qword_20C36F390);
}

uint64_t sub_20C306AD0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_20C36CAE4();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C36C144();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_20C36CD64();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v10 = qword_2810ED6B0;
  v38[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD48, &qword_20C36F358);
  v38[1] = sub_20C3077A8(&qword_27C79DD50, &qword_27C79DD48, &qword_20C36F358);
  sub_20C36C494();
  swift_getKeyPath();
  sub_20C36CCE4();

  v11 = sub_20C36C934();
  v38[0] = a1;
  v13 = v12;
  v15 = v14;
  sub_20C36C924();
  sub_20C36C894();
  sub_20C36C8E4();

  v16 = sub_20C36C974();
  v41 = v17;
  v42 = v16;
  v40 = v18;
  v39 = v19;

  sub_20C3078B8(v11, v13, v15 & 1);

  sub_20C36CD54();
  v20 = qword_2810ED6B0;
  sub_20C36C494();
  swift_getKeyPath();
  sub_20C36CCE4();

  v21 = sub_20C36C934();
  v23 = v22;
  LOBYTE(v13) = v24;
  (*(v45 + 104))(v44, *MEMORY[0x277CE0EE0], v46);
  v48 = sub_20C36CB04();
  v25 = sub_20C36C954();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_20C3078B8(v21, v23, v13 & 1);

  v32 = v39 & 1;
  v47 = v39 & 1;
  v50 = v39 & 1;
  v49 = v29 & 1;
  v34 = v42;
  v33 = v43;
  v36 = v40;
  v35 = v41;
  *v43 = v42;
  v33[1] = v36;
  *(v33 + 16) = v32;
  v33[3] = v35;
  v33[4] = v25;
  v33[5] = v27;
  *(v33 + 48) = v29 & 1;
  v33[7] = v31;
  sub_20C3078C8(v34, v36, v32);

  sub_20C3078C8(v25, v27, v29 & 1);

  sub_20C3078B8(v25, v27, v29 & 1);

  sub_20C3078B8(v34, v36, v47);
}

uint64_t sub_20C306F8C(uint64_t a1)
{
  v2 = sub_20C36C414();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C36C5E4();
}

uint64_t sub_20C307054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_20C3070D0()
{
  result = qword_27C79DCD8;
  if (!qword_27C79DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCA0, &qword_20C36F1F8);
    sub_20C307188();
    sub_20C3077A8(&qword_27C79DD30, &qword_27C79DCD0, &qword_20C36F258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCD8);
  }

  return result;
}

unint64_t sub_20C307188()
{
  result = qword_27C79DCE0;
  if (!qword_27C79DCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DC98, &qword_20C36F1F0);
    sub_20C307240();
    sub_20C3077A8(&qword_27C79DD28, &qword_27C79DCC8, &qword_20C36F250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCE0);
  }

  return result;
}

unint64_t sub_20C307240()
{
  result = qword_27C79DCE8;
  if (!qword_27C79DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DC90, &qword_20C36F1E8);
    sub_20C3072F8();
    sub_20C3077A8(&qword_27C79DD20, &qword_27C79DCC0, &qword_20C36F218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCE8);
  }

  return result;
}

unint64_t sub_20C3072F8()
{
  result = qword_27C79DCF0;
  if (!qword_27C79DCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCF8, &qword_20C36F260);
    sub_20C307384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCF0);
  }

  return result;
}

unint64_t sub_20C307384()
{
  result = qword_27C79DD00;
  if (!qword_27C79DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DD08, &qword_20C36F268);
    sub_20C3077A8(&qword_27C79DD10, &qword_27C79DD18, &qword_20C36F270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD00);
  }

  return result;
}

uint64_t sub_20C30743C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD48, &qword_20C36F358);
  sub_20C3077A8(&qword_27C79DD50, &qword_27C79DD48, &qword_20C36F358);
  sub_20C36C494();
  sub_20C36CCF4();
}

uint64_t sub_20C3074F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_20C30743C();
}

uint64_t sub_20C307524(double a1)
{
  sub_20C36C444();
  v3 = v2;
  result = sub_20C36C434();
  if (v3 - v5 > a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD48, &qword_20C36F358);
    sub_20C3077A8(&qword_27C79DD50, &qword_27C79DD48, &qword_20C36F358);
    sub_20C36C494();
    sub_20C36CCF4();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_20C3070BC();

  return swift_deallocObject();
}

uint64_t sub_20C307640()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_20C307524(*(v0 + 40));
}

unint64_t sub_20C307658()
{
  result = qword_27C79DD38;
  if (!qword_27C79DD38)
  {
    sub_20C36C454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD38);
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

uint64_t sub_20C30770C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C307754(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C3077A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_20C3077F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C307858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20C3078B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C3078C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t ForYouToastState.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_20C30795C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3079E0(uint64_t a1)
{
  v2 = sub_20C307BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C307A1C(uint64_t a1)
{
  v2 = sub_20C307BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForYouToastState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD60, &qword_20C36F3C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C307BBC();
  sub_20C36D374();
  sub_20C36C144();
  sub_20C307EC8(&qword_27C79DD70);
  sub_20C36D234();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_20C307BBC()
{
  result = qword_27C79DD68;
  if (!qword_27C79DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD68);
  }

  return result;
}

uint64_t ForYouToastState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_20C36C144();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD78, &qword_20C36F3C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ForYouToastState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C307BBC();
  v16 = v23;
  sub_20C36D364();
  if (!v16)
  {
    v17 = v21;
    sub_20C307EC8(&qword_27C79DD80);
    sub_20C36D184();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_20C307F0C(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ForYouToastState()
{
  result = qword_27C79DD88;
  if (!qword_27C79DD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C307EC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20C36C144();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C307F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouToastState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C307F88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD60, &qword_20C36F3C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C307BBC();
  sub_20C36D374();
  sub_20C36C144();
  sub_20C307EC8(&qword_27C79DD70);
  sub_20C36D234();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20C30811C()
{
  result = sub_20C36C144();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C30819C()
{
  result = qword_27C79DD98;
  if (!qword_27C79DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD98);
  }

  return result;
}

unint64_t sub_20C3081F4()
{
  result = qword_27C79DDA0;
  if (!qword_27C79DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DDA0);
  }

  return result;
}

unint64_t sub_20C30824C()
{
  result = qword_27C79DDA8;
  if (!qword_27C79DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DDA8);
  }

  return result;
}

unint64_t sub_20C3082A0(char a1)
{
  result = 0x79536C65636E6163;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000017;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6F5464656C696166;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x646564616F6CLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 13:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E79537472617473;
      break;
    case 14:
      result = 0x4164694477656976;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_20C30846C(uint64_t a1)
{
  v2 = sub_20C30A84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3084A8(uint64_t a1)
{
  v2 = sub_20C30A84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3084F0(uint64_t a1)
{
  v2 = sub_20C30A7F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C30852C(uint64_t a1)
{
  v2 = sub_20C30A7F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308568(uint64_t a1)
{
  v2 = sub_20C30A7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3085A4(uint64_t a1)
{
  v2 = sub_20C30A7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3085E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C30A940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C30861C(uint64_t a1)
{
  v2 = sub_20C30A198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308658(uint64_t a1)
{
  v2 = sub_20C30A198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308694(uint64_t a1)
{
  v2 = sub_20C30A6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3086D0(uint64_t a1)
{
  v2 = sub_20C30A6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72656767697274 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3087AC(uint64_t a1)
{
  v2 = sub_20C30A654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3087E8(uint64_t a1)
{
  v2 = sub_20C30A654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000020C377D00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20C36D264();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20C3088D4(uint64_t a1)
{
  v2 = sub_20C30A600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308910(uint64_t a1)
{
  v2 = sub_20C30A600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20C36D264();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20C3089FC(uint64_t a1)
{
  v2 = sub_20C30A534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308A38(uint64_t a1)
{
  v2 = sub_20C30A534();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C308A74()
{
  v1 = 0x64496F636572;
  v2 = 0x65736E6F70736572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_20C308B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C30ADF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C308B2C(uint64_t a1)
{
  v2 = sub_20C30A4E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308B68(uint64_t a1)
{
  v2 = sub_20C30A4E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308BA4(uint64_t a1)
{
  v2 = sub_20C30A48C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308BE0(uint64_t a1)
{
  v2 = sub_20C30A48C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308C1C(uint64_t a1)
{
  v2 = sub_20C30A3E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308C58(uint64_t a1)
{
  v2 = sub_20C30A3E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308C94(uint64_t a1)
{
  v2 = sub_20C30A390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308CD0(uint64_t a1)
{
  v2 = sub_20C30A390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308D0C(uint64_t a1)
{
  v2 = sub_20C30A33C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308D48(uint64_t a1)
{
  v2 = sub_20C30A33C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308D84(uint64_t a1)
{
  v2 = sub_20C30A2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308DC0(uint64_t a1)
{
  v2 = sub_20C30A2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C308E7C(uint64_t a1)
{
  v2 = sub_20C30A240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308EB8(uint64_t a1)
{
  v2 = sub_20C30A240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C308EF4(uint64_t a1)
{
  v2 = sub_20C30A1EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C308F30(uint64_t a1)
{
  v2 = sub_20C30A1EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForYouAction.encode(to:)(void *a1)
{
  v2 = v1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDB0, &qword_20C36F580);
  v89 = *(v90 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v84 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDB8, &qword_20C36F588);
  v110 = *(v122 - 8);
  v6 = *(v110 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v84 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDC0, &qword_20C36F590);
  v86 = *(v87 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v84 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDC8, &qword_20C36F598);
  v92 = *(v93 - 8);
  v10 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v84 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDD0, &qword_20C36F5A0);
  v95 = *(v96 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v84 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDD8, &qword_20C36F5A8);
  v108 = *(v118 - 8);
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v84 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDE0, &qword_20C36F5B0);
  v98 = *(v99 - 8);
  v16 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v84 - v17;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDE8, &qword_20C36F5B8);
  v109 = *(v120 - 8);
  v18 = *(v109 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v84 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDF0, &qword_20C36F5C0);
  v107 = *(v116 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v84 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDF8, &qword_20C36F5C8);
  v106 = *(v126 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v84 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE00, &qword_20C36F5D0);
  v114 = *(v124 - 8);
  v24 = *(v114 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v84 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE08, &qword_20C36F5D8);
  v112 = *(v26 - 8);
  v113 = v26;
  v27 = *(v112 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v84 - v28;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE10, &qword_20C36F5E0);
  v101 = *(v102 - 8);
  v30 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v84 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE18, &qword_20C36F5E8);
  v111 = *(v32 - 8);
  v33 = *(v111 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v84 - v34;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE20, &qword_20C36F5F0);
  v104 = *(v105 - 8);
  v36 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v84 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE28, &qword_20C36F5F8);
  v127 = *(v38 - 8);
  v39 = *(v127 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v84 - v40;
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C30A198();
  v128 = v41;
  sub_20C36D374();
  v43 = *v2;
  v44 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v45 = *(v2 + 1);
  v46 = *(v2 + 2);
  v47 = v2[40];
  v48 = v43 | (v44 << 8);
  if (v47 <= 3)
  {
    v122 = v32;
    v55 = v123;
    v56 = v124;
    v57 = v125;
    v58 = v126;
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        LOBYTE(v130) = 4;
        sub_20C30A654();
        v61 = v38;
        v62 = v128;
        sub_20C36D1B4();
        LOBYTE(v130) = v43;
        sub_20C30A6A8();
        sub_20C36D234();
        (*(v114 + 8))(v55, v56);
        return (*(v127 + 8))(v62, v61);
      }

      else
      {
        LOBYTE(v130) = 5;
        sub_20C30A600();
        v124 = v38;
        v72 = v128;
        sub_20C36D1B4();
        sub_20C36D1F4();
        (*(v106 + 8))(v57, v58);
        return (*(v127 + 8))(v72, v124);
      }
    }

    else
    {
      if (v47)
      {
        LOBYTE(v130) = 3;
        v69 = v45;
        v70 = v46;
        sub_20C30A6FC();
        v59 = v128;
        sub_20C36D1B4();
        LOBYTE(v130) = v43;
        HIBYTE(v130) = BYTE6(v44);
        *(&v130 + 5) = WORD2(v44);
        *(&v130 + 1) = v44;
        v131 = v69;
        v132 = v70;
        sub_20C30A750();
        v71 = v113;
        sub_20C36D234();
        (*(v112 + 8))(v29, v71);
      }

      else
      {
        LOBYTE(v130) = 1;
        sub_20C30A7F8();
        v59 = v128;
        sub_20C36D1B4();
        LOBYTE(v130) = v43 & 1;
        sub_20C304D0C();
        v60 = v122;
        sub_20C36D234();
        (*(v111 + 8))(v35, v60);
      }

      return (*(v127 + 8))(v59, v38);
    }
  }

  else
  {
    v49 = *(v2 + 3);
    v50 = *(v2 + 4);
    if (v47 <= 5)
    {
      v64 = v43 | (v44 << 8);
      v65 = v38;
      v66 = v128;
      if (v47 == 4)
      {
        LOBYTE(v130) = 6;
        sub_20C30A534();
        v67 = v115;
        sub_20C36D1B4();
        v130 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
        sub_20C30A588(&qword_2810E8BF8, sub_20C3028E4);
        v68 = v116;
        sub_20C36D234();
        (*(v107 + 8))(v67, v68);
      }

      else
      {
        LOBYTE(v130) = 7;
        sub_20C30A4E0();
        v75 = v119;
        sub_20C36D1B4();
        LOBYTE(v130) = 0;
        v76 = v120;
        v77 = v129;
        sub_20C36D1F4();
        if (!v77)
        {
          LOBYTE(v130) = 1;
          sub_20C36D214();
          LOBYTE(v130) = 2;
          sub_20C36D214();
          v130 = v50;
          v133 = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
          sub_20C30DA0C(&qword_2810E8C00, sub_20C3029B0);
          sub_20C36D234();
        }

        (*(v109 + 8))(v75, v76);
      }

      return (*(v127 + 8))(v66, v65);
    }

    else
    {
      v51 = v128;
      if (v47 == 6)
      {
        LOBYTE(v130) = 9;
        sub_20C30A3E4();
        v52 = v117;
        sub_20C36D1B4();
        LOBYTE(v130) = v43;
        sub_20C30A438();
        v53 = v118;
        sub_20C36D234();
        v54 = &v134;
        goto LABEL_14;
      }

      if (v47 == 7)
      {
        LOBYTE(v130) = 13;
        sub_20C30A240();
        v52 = v121;
        sub_20C36D1B4();
        LOBYTE(v130) = v43;
        sub_20C30A294();
        v53 = v122;
        sub_20C36D234();
        v54 = &v135;
LABEL_14:
        (*(*(v54 - 32) + 8))(v52, v53);
        return (*(v127 + 8))(v51, v38);
      }

      v73 = v46 | v45 | v49 | v50;
      if (v73 | v48)
      {
        if (v48 != 1 || v73)
        {
          if (v48 != 2 || v73)
          {
            if (v48 != 3 || v73)
            {
              if (v48 != 4 || v73)
              {
                if (v48 != 5 || v73)
                {
                  LOBYTE(v130) = 14;
                  sub_20C30A1EC();
                  v83 = v88;
                  sub_20C36D1B4();
                  (*(v89 + 8))(v83, v90);
                }

                else
                {
                  LOBYTE(v130) = 12;
                  sub_20C30A2E8();
                  v82 = v85;
                  sub_20C36D1B4();
                  (*(v86 + 8))(v82, v87);
                }
              }

              else
              {
                LOBYTE(v130) = 11;
                sub_20C30A33C();
                v81 = v91;
                sub_20C36D1B4();
                (*(v92 + 8))(v81, v93);
              }
            }

            else
            {
              LOBYTE(v130) = 10;
              sub_20C30A390();
              v80 = v94;
              sub_20C36D1B4();
              (*(v95 + 8))(v80, v96);
            }
          }

          else
          {
            LOBYTE(v130) = 8;
            sub_20C30A48C();
            v79 = v97;
            sub_20C36D1B4();
            (*(v98 + 8))(v79, v99);
          }

          return (*(v127 + 8))(v51, v38);
        }

        LOBYTE(v130) = 2;
        sub_20C30A7A4();
        v74 = v100;
        sub_20C36D1B4();
        (*(v101 + 8))(v74, v102);
      }

      else
      {
        LOBYTE(v130) = 0;
        sub_20C30A84C();
        v78 = v103;
        sub_20C36D1B4();
        (*(v104 + 8))(v78, v105);
      }

      return (*(v127 + 8))(v51, v38);
    }
  }
}

unint64_t sub_20C30A198()
{
  result = qword_2810E9238[0];
  if (!qword_2810E9238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E9238);
  }

  return result;
}

unint64_t sub_20C30A1EC()
{
  result = qword_2810E91F0;
  if (!qword_2810E91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91F0);
  }

  return result;
}

unint64_t sub_20C30A240()
{
  result = qword_27C79DE30;
  if (!qword_27C79DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE30);
  }

  return result;
}

unint64_t sub_20C30A294()
{
  result = qword_27C79DE38;
  if (!qword_27C79DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE38);
  }

  return result;
}

unint64_t sub_20C30A2E8()
{
  result = qword_27C79DE40;
  if (!qword_27C79DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE40);
  }

  return result;
}

unint64_t sub_20C30A33C()
{
  result = qword_27C79DE48;
  if (!qword_27C79DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE48);
  }

  return result;
}

unint64_t sub_20C30A390()
{
  result = qword_2810E9160;
  if (!qword_2810E9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9160);
  }

  return result;
}

unint64_t sub_20C30A3E4()
{
  result = qword_27C79DE50;
  if (!qword_27C79DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE50);
  }

  return result;
}

unint64_t sub_20C30A438()
{
  result = qword_27C79DE58;
  if (!qword_27C79DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE58);
  }

  return result;
}

unint64_t sub_20C30A48C()
{
  result = qword_27C79DE60;
  if (!qword_27C79DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE60);
  }

  return result;
}

unint64_t sub_20C30A4E0()
{
  result = qword_2810E9220;
  if (!qword_2810E9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9220);
  }

  return result;
}

unint64_t sub_20C30A534()
{
  result = qword_2810E9148;
  if (!qword_2810E9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9148);
  }

  return result;
}

uint64_t sub_20C30A588(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DBD8, &qword_20C375B70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C30A600()
{
  result = qword_2810E91B0;
  if (!qword_2810E91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91B0);
  }

  return result;
}

unint64_t sub_20C30A654()
{
  result = qword_2810E9120;
  if (!qword_2810E9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9120);
  }

  return result;
}

unint64_t sub_20C30A6A8()
{
  result = qword_2810E8CB8;
  if (!qword_2810E8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CB8);
  }

  return result;
}

unint64_t sub_20C30A6FC()
{
  result = qword_2810E9208;
  if (!qword_2810E9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9208);
  }

  return result;
}

unint64_t sub_20C30A750()
{
  result = qword_2810E8DE8;
  if (!qword_2810E8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DE8);
  }

  return result;
}

unint64_t sub_20C30A7A4()
{
  result = qword_2810E91C8;
  if (!qword_2810E91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91C8);
  }

  return result;
}

unint64_t sub_20C30A7F8()
{
  result = qword_27C79DE68;
  if (!qword_27C79DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE68);
  }

  return result;
}

unint64_t sub_20C30A84C()
{
  result = qword_2810E9178;
  if (!qword_2810E9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9178);
  }

  return result;
}

double ForYouAction.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_20C30AF6C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_20C30A8E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_20C30AF6C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_20C30A940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000020C377BA0 == a2;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377BC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79536C65636E6163 && a2 == 0xEF72656D6954636ELL || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377BE0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377C00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C377C20 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377C40 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377C60 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C377C80 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377CA0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E79537472617473 && a2 == 0xEE0072656D695463 || (sub_20C36D264() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377CC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 14;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_20C30ADF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496F636572 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377B00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEF656D6954646E45 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C30AF6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v164 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEB8, &qword_20C370780);
  v152 = *(v169 - 8);
  v3 = *(v152 + 64);
  MEMORY[0x28223BE20](v169);
  v168 = &v122 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEC0, &qword_20C370788);
  v154 = *(v153 - 8);
  v5 = *(v154 + 64);
  MEMORY[0x28223BE20](v153);
  v163 = &v122 - v6;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEC8, &qword_20C370790);
  v149 = *(v150 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v162 = &v122 - v8;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DED0, &qword_20C370798);
  v146 = *(v147 - 8);
  v9 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v161 = &v122 - v10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DED8, &qword_20C3707A0);
  v142 = *(v144 - 8);
  v11 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v159 = &v122 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEE0, &qword_20C3707A8);
  v143 = *(v145 - 8);
  v13 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v160 = &v122 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEE8, &qword_20C3707B0);
  v140 = *(v141 - 8);
  v15 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v157 = &v122 - v16;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEF0, &qword_20C3707B8);
  v151 = *(v148 - 8);
  v17 = *(v151 + 64);
  MEMORY[0x28223BE20](v148);
  v158 = &v122 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEF8, &qword_20C3707C0);
  v139 = *(v138 - 8);
  v19 = *(v139 + 64);
  MEMORY[0x28223BE20](v138);
  v167 = &v122 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF00, &qword_20C3707C8);
  v137 = *(v136 - 8);
  v21 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  v166 = &v122 - v22;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF08, &qword_20C3707D0);
  v135 = *(v134 - 8);
  v23 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  v156 = &v122 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF10, &qword_20C3707D8);
  v133 = *(v131 - 8);
  v25 = *(v133 + 64);
  MEMORY[0x28223BE20](v131);
  v155 = &v122 - v26;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF18, &qword_20C3707E0);
  v129 = *(v128 - 8);
  v27 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  v165 = &v122 - v28;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF20, &qword_20C3707E8);
  v130 = *(v132 - 8);
  v29 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v31 = &v122 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF28, &qword_20C3707F0);
  v127 = *(v32 - 8);
  v33 = *(v127 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v122 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF30, &qword_20C3707F8);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v122 - v39;
  v41 = a1[3];
  v42 = a1[4];
  v171 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_20C30A198();
  v43 = v170;
  sub_20C36D364();
  if (v43)
  {
    return __swift_destroy_boxed_opaque_existential_1(v171);
  }

  v124 = v35;
  v123 = v32;
  v44 = v165;
  v125 = v31;
  v46 = v166;
  v45 = v167;
  v47 = v168;
  v126 = 0;
  v48 = v169;
  v170 = v37;
  v49 = sub_20C36D194();
  v50 = (2 * *(v49 + 16)) | 1;
  v175 = v49;
  v176 = v49 + 32;
  v177 = 0;
  v178 = v50;
  v51 = sub_20C3295C4();
  if (v177 != v178 >> 1)
  {
LABEL_6:
    v60 = sub_20C36D064();
    swift_allocError();
    v62 = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v62 = &type metadata for ForYouAction;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
    swift_willThrow();
LABEL_7:
    (*(v170 + 8))(v40, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v171);
  }

  switch(v51)
  {
    case 0:
      LOBYTE(v172) = 0;
      sub_20C30A84C();
      v52 = v124;
      v53 = v126;
      sub_20C36D0F4();
      if (v53)
      {
        goto LABEL_7;
      }

      (*(v127 + 8))(v52, v123);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 8;
      goto LABEL_37;
    case 1:
      LOBYTE(v172) = 1;
      sub_20C30A7F8();
      v90 = v125;
      v91 = v126;
      sub_20C36D0F4();
      if (v91)
      {
        goto LABEL_7;
      }

      v92 = v40;
      sub_20C304FCC();
      v93 = v132;
      sub_20C36D184();
      v94 = v170;
      v95 = v171;
      (*(v130 + 8))(v90, v93);
      (*(v94 + 8))(v92, v36);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v59 = 0;
      v54 = v172;
      v58 = 0;
      v119 = v95;
      break;
    case 2:
      LOBYTE(v172) = 2;
      sub_20C30A7A4();
      v81 = v126;
      sub_20C36D0F4();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v129 + 8))(v44, v128);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v59 = 8;
      v58 = 0;
      v54 = 1;
      goto LABEL_37;
    case 3:
      LOBYTE(v172) = 3;
      sub_20C30A6FC();
      v82 = v155;
      v83 = v126;
      sub_20C36D0F4();
      if (v83)
      {
        goto LABEL_7;
      }

      v84 = v36;
      sub_20C30DAD8();
      v85 = v131;
      sub_20C36D184();
      v86 = v170;
      v73 = v171;
      (*(v133 + 8))(v82, v85);
      (*(v86 + 8))(v40, v84);
      swift_unknownObjectRelease();
      v57 = 0;
      v54 = v172;
      v55 = v173;
      v59 = 1;
      v58 = 0;
      v56 = v174;
      goto LABEL_39;
    case 4:
      LOBYTE(v172) = 4;
      sub_20C30A654();
      v68 = v156;
      v69 = v126;
      sub_20C36D0F4();
      if (v69)
      {
        goto LABEL_7;
      }

      v70 = v36;
      sub_20C30DA84();
      v71 = v134;
      sub_20C36D184();
      v72 = v170;
      v73 = v171;
      (*(v135 + 8))(v68, v71);
      (*(v72 + 8))(v40, v70);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v54 = v172;
      v59 = 2;
      goto LABEL_38;
    case 5:
      LOBYTE(v172) = 5;
      sub_20C30A600();
      v96 = v46;
      v97 = v126;
      sub_20C36D0F4();
      if (v97)
      {
        goto LABEL_7;
      }

      v98 = v36;
      v99 = v136;
      v100 = sub_20C36D144();
      v73 = v171;
      v54 = v100;
      v55 = v120;
      (*(v137 + 8))(v96, v99);
      (*(v170 + 8))(v40, v98);
      swift_unknownObjectRelease();
      v56 = 0;
      v57 = 0;
      v59 = 3;
      goto LABEL_38;
    case 6:
      LOBYTE(v172) = 6;
      sub_20C30A534();
      v106 = v45;
      v107 = v126;
      sub_20C36D0F4();
      if (v107)
      {
        goto LABEL_7;
      }

      v108 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
      sub_20C30A588(&qword_27C79DBF0, sub_20C302E30);
      v109 = v138;
      sub_20C36D184();
      v73 = v171;
      (*(v139 + 8))(v106, v109);
      (*(v170 + 8))(v40, v108);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v54 = v172;
      v59 = 4;
      goto LABEL_38;
    case 7:
      LOBYTE(v172) = 7;
      sub_20C30A4E0();
      v87 = v158;
      v88 = v126;
      sub_20C36D0F4();
      if (v88)
      {
        goto LABEL_7;
      }

      LOBYTE(v172) = 0;
      v89 = v148;
      v54 = sub_20C36D144();
      v55 = v114;
      LOBYTE(v172) = 1;
      sub_20C36D164();
      v115 = v151;
      v117 = v116;
      LOBYTE(v172) = 2;
      sub_20C36D164();
      v58 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
      v179 = 3;
      sub_20C30DA0C(&qword_27C79DC00, sub_20C302E84);
      sub_20C36D184();
      (*(v115 + 8))(v87, v89);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v57 = v172;
      v56 = v117;
      v59 = 5;
      goto LABEL_37;
    case 8:
      LOBYTE(v172) = 8;
      sub_20C30A48C();
      v112 = v157;
      v113 = v126;
      sub_20C36D0F4();
      if (v113)
      {
        goto LABEL_7;
      }

      (*(v140 + 8))(v112, v141);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v59 = 8;
      v58 = 0;
      v54 = 2;
      goto LABEL_37;
    case 9:
      LOBYTE(v172) = 9;
      sub_20C30A3E4();
      v76 = v160;
      v77 = v126;
      sub_20C36D0F4();
      if (v77)
      {
        goto LABEL_7;
      }

      v78 = v36;
      sub_20C30D9B8();
      v79 = v145;
      sub_20C36D184();
      v80 = v170;
      v73 = v171;
      (*(v143 + 8))(v76, v79);
      (*(v80 + 8))(v40, v78);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v54 = v172;
      v59 = 6;
      goto LABEL_38;
    case 10:
      LOBYTE(v172) = 10;
      sub_20C30A390();
      v110 = v159;
      v111 = v126;
      sub_20C36D0F4();
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v142 + 8))(v110, v144);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v59 = 8;
      v58 = 0;
      v54 = 3;
      goto LABEL_37;
    case 11:
      LOBYTE(v172) = 11;
      sub_20C30A33C();
      v66 = v161;
      v67 = v126;
      sub_20C36D0F4();
      if (v67)
      {
        goto LABEL_7;
      }

      (*(v146 + 8))(v66, v147);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v59 = 8;
      v58 = 0;
      v54 = 4;
      goto LABEL_37;
    case 12:
      LOBYTE(v172) = 12;
      sub_20C30A2E8();
      v74 = v162;
      v75 = v126;
      sub_20C36D0F4();
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v149 + 8))(v74, v150);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v59 = 8;
      v58 = 0;
      v54 = 5;
      goto LABEL_37;
    case 13:
      LOBYTE(v172) = 13;
      sub_20C30A240();
      v101 = v163;
      v102 = v126;
      sub_20C36D0F4();
      if (v102)
      {
        goto LABEL_7;
      }

      v103 = v36;
      sub_20C30D964();
      v104 = v153;
      sub_20C36D184();
      v105 = v170;
      v73 = v171;
      (*(v154 + 8))(v101, v104);
      (*(v105 + 8))(v40, v103);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v54 = v172;
      v59 = 7;
LABEL_38:
      v58 = 0;
LABEL_39:
      v119 = v73;
      break;
    case 14:
      LOBYTE(v172) = 14;
      sub_20C30A1EC();
      v65 = v126;
      sub_20C36D0F4();
      if (v65)
      {
        goto LABEL_7;
      }

      (*(v152 + 8))(v47, v48);
      (*(v170 + 8))(v40, v36);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v59 = 8;
      v58 = 0;
      v54 = 6;
LABEL_37:
      v119 = v171;
      break;
    default:
      goto LABEL_6;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v119);
  v121 = v164;
  *v164 = v54;
  v121[1] = v55;
  v121[2] = v56;
  v121[3] = v58;
  v121[4] = v57;
  *(v121 + 40) = v59;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou0bC6ActionO(uint64_t a1)
{
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 40) & 0xF;
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

uint64_t sub_20C30C840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C30C888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_20C30C8D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 8;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ForYouAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C30CB50()
{
  result = qword_27C79DE70;
  if (!qword_27C79DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE70);
  }

  return result;
}

unint64_t sub_20C30CBA8()
{
  result = qword_27C79DE78;
  if (!qword_27C79DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE78);
  }

  return result;
}

unint64_t sub_20C30CC00()
{
  result = qword_27C79DE80;
  if (!qword_27C79DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE80);
  }

  return result;
}

unint64_t sub_20C30CC58()
{
  result = qword_27C79DE88;
  if (!qword_27C79DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE88);
  }

  return result;
}

unint64_t sub_20C30CCB0()
{
  result = qword_27C79DE90;
  if (!qword_27C79DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE90);
  }

  return result;
}

unint64_t sub_20C30CD08()
{
  result = qword_27C79DE98;
  if (!qword_27C79DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE98);
  }

  return result;
}

unint64_t sub_20C30CD60()
{
  result = qword_27C79DEA0;
  if (!qword_27C79DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DEA0);
  }

  return result;
}

unint64_t sub_20C30CDB8()
{
  result = qword_27C79DEA8;
  if (!qword_27C79DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DEA8);
  }

  return result;
}

unint64_t sub_20C30CE10()
{
  result = qword_27C79DEB0;
  if (!qword_27C79DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DEB0);
  }

  return result;
}

unint64_t sub_20C30CE68()
{
  result = qword_2810E9168;
  if (!qword_2810E9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9168);
  }

  return result;
}

unint64_t sub_20C30CEC0()
{
  result = qword_2810E9170;
  if (!qword_2810E9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9170);
  }

  return result;
}

unint64_t sub_20C30CF18()
{
  result = qword_2810E9128;
  if (!qword_2810E9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9128);
  }

  return result;
}

unint64_t sub_20C30CF70()
{
  result = qword_2810E9130;
  if (!qword_2810E9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9130);
  }

  return result;
}

unint64_t sub_20C30CFC8()
{
  result = qword_2810E91B8;
  if (!qword_2810E91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91B8);
  }

  return result;
}

unint64_t sub_20C30D020()
{
  result = qword_2810E91C0;
  if (!qword_2810E91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91C0);
  }

  return result;
}

unint64_t sub_20C30D078()
{
  result = qword_2810E91F8;
  if (!qword_2810E91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91F8);
  }

  return result;
}

unint64_t sub_20C30D0D0()
{
  result = qword_2810E9200;
  if (!qword_2810E9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9200);
  }

  return result;
}

unint64_t sub_20C30D128()
{
  result = qword_2810E9110;
  if (!qword_2810E9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9110);
  }

  return result;
}

unint64_t sub_20C30D180()
{
  result = qword_2810E9118;
  if (!qword_2810E9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9118);
  }

  return result;
}

unint64_t sub_20C30D1D8()
{
  result = qword_2810E91A0;
  if (!qword_2810E91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91A0);
  }

  return result;
}

unint64_t sub_20C30D230()
{
  result = qword_2810E91A8;
  if (!qword_2810E91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91A8);
  }

  return result;
}

unint64_t sub_20C30D288()
{
  result = qword_2810E9138;
  if (!qword_2810E9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9138);
  }

  return result;
}