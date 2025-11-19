uint64_t sub_254574F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_254574FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25459A1B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_254575078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25459A1B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_254575140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DA0, &unk_25459C910);
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

uint64_t sub_254575208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DA0, &unk_25459C910);
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

uint64_t sub_2545752D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EA8, &qword_25459CA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254575338()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EA8, &qword_25459CA48);
  sub_25457AF98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25457539C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25459A370();
  *a1 = result;
  return result;
}

uint64_t sub_2545753F0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_254575448()
{
  MEMORY[0x259C11450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254575480()
{
  v1 = sub_25459A1B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_254575578()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254575754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25459A390();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254575784()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2545757BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2545757F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050F8, &unk_25459CE70);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_254575934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050F8, &unk_25459CE70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_254575A6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6050A0, &qword_25459CD18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605098, &qword_25459CD10);
  sub_25459A2D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605090, &qword_25459CD08);
  sub_254587400();
  sub_2545874B8();
  swift_getOpaqueTypeConformance2();
  sub_254588B04(&qword_27F6050D8, MEMORY[0x277CDD6C8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_254575BC4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_254583FC8(v2);
}

uint64_t sub_254575BF8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return sub_254583A84(v7);
}

void sub_254575C70(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_254584758(v2);
}

uint64_t sub_254576004()
{
  v1 = type metadata accessor for MicaIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25459A2E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v5 + *(v1 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605348, &qword_25459D450);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458) + 28)];

  v12 = v5 + *(v1 + 24);
  v13 = *(v12 + 1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_2545761BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605380, &unk_25459D4D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2545762E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605380, &unk_25459D4D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_254576408()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605340, &qword_25459D448);
  sub_254591258();
  sub_2545913D4();
  return swift_getOpaqueTypeConformance2();
}

void sub_2545764DC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_25458F9E4(v2);
}

void sub_254576510(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_25458F2E0(v2);
}

void sub_254576570(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_254590044(v2);
}

uint64_t sub_2545765A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_25458ED00(v2, v3);
}

uint64_t sub_2545765E8(int8x16_t *a1)
{
  v3 = a1->i64[0];
  v2 = a1->i64[1];
  sub_25459A4E0();
  v5 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable();
}

uint64_t sub_254576648(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_25459A4E0();
  v5 = *(a1 + 32);
  return swift_getWitnessTable();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2545766B4(uint64_t a1, int a2)
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

uint64_t sub_2545766D4(uint64_t result, int a2, int a3)
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

void sub_254576724(uint64_t a1, unint64_t *a2)
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

uint64_t sub_254576770(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_2545767D0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25457681C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *ScheduleRuleList.__allocating_init(rules:)(uint64_t a1)
{
  result = swift_allocObject();
  result[4] = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = type metadata accessor for ScheduleRuleDisplayInfo();
    v7 = *(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(v5 + 20));
    v3 = sub_254576A68();
    result = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  result[2] = v3;
  result[3] = v6;
  return result;
}

uint64_t ScheduleRuleList.init(rules:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 32) = a1;
  if (*(a1 + 16))
  {
    v4 = type metadata accessor for ScheduleRuleDisplayInfo();
    v8 = *(a1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(v4 + 20));
    v5 = sub_254576A68();
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  return v2;
}

uint64_t type metadata accessor for ScheduleRuleDisplayInfo()
{
  result = qword_27F604D68;
  if (!qword_27F604D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254576A68()
{
  *v0;
  v1 = sub_25459A730();
  v2 = HFLocalizedString();

  v3 = sub_25459A740();
  return v3;
}

uint64_t ScheduleRuleList.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t ScheduleRuleList.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_254576B7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScheduleRuleList();
  result = sub_25459A2A0();
  *a1 = result;
  return result;
}

uint64_t ScheduleRuleDisplayInfo.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25459A1B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ScheduleRuleDisplayInfo.id.setter(uint64_t a1)
{
  v3 = sub_25459A1B0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ScheduleRuleDisplayInfo.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ScheduleRuleDisplayInfo();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ScheduleRuleDisplayInfo.primaryText.getter()
{
  v1 = (v0 + *(type metadata accessor for ScheduleRuleDisplayInfo() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ScheduleRuleDisplayInfo.secondaryText.getter()
{
  v1 = (v0 + *(type metadata accessor for ScheduleRuleDisplayInfo() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *ScheduleRuleDisplayInfo.init(id:type:primaryText:secondaryText:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = sub_25459A1B0();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for ScheduleRuleDisplayInfo();
  *(a7 + result[5]) = v13;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ScheduleRuleDisplayInfo.ScheduleType.hashValue.getter()
{
  v1 = *v0;
  sub_25459ABB0();
  MEMORY[0x259C109D0](v1);
  return sub_25459ABE0();
}

uint64_t sub_254576EB0()
{
  v1 = *v0;
  sub_25459ABB0();
  MEMORY[0x259C109D0](v1);
  return sub_25459ABE0();
}

uint64_t sub_254576F24()
{
  v1 = *v0;
  sub_25459ABB0();
  MEMORY[0x259C109D0](v1);
  return sub_25459ABE0();
}

uint64_t ScheduleRuleDisplayInfo.hash(into:)()
{
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0]);
  sub_25459A710();
  v1 = type metadata accessor for ScheduleRuleDisplayInfo();
  MEMORY[0x259C109D0](*(v0 + v1[5]));
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_25459A760();
  v5 = (v0 + v1[7]);
  if (!v5[1])
  {
    return sub_25459ABD0();
  }

  v6 = *v5;
  sub_25459ABD0();

  return sub_25459A760();
}

uint64_t ScheduleRuleDisplayInfo.hashValue.getter()
{
  sub_25459ABB0();
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0]);
  sub_25459A710();
  v1 = type metadata accessor for ScheduleRuleDisplayInfo();
  MEMORY[0x259C109D0](*(v0 + v1[5]));
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_25459A760();
  v5 = (v0 + v1[7]);
  if (v5[1])
  {
    v6 = *v5;
    sub_25459ABD0();
    sub_25459A760();
  }

  else
  {
    sub_25459ABD0();
  }

  return sub_25459ABE0();
}

uint64_t sub_254577174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25459A1B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2545771E0(uint64_t a1, int *a2)
{
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0]);
  sub_25459A710();
  MEMORY[0x259C109D0](*(v2 + a2[5]));
  v4 = (v2 + a2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_25459A760();
  v7 = (v2 + a2[7]);
  if (!v7[1])
  {
    return sub_25459ABD0();
  }

  v8 = *v7;
  sub_25459ABD0();

  return sub_25459A760();
}

uint64_t sub_2545772E8(uint64_t a1, int *a2)
{
  sub_25459ABB0();
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0]);
  sub_25459A710();
  MEMORY[0x259C109D0](*(v2 + a2[5]));
  v4 = (v2 + a2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_25459A760();
  v7 = (v2 + a2[7]);
  if (v7[1])
  {
    v8 = *v7;
    sub_25459ABD0();
    sub_25459A760();
  }

  else
  {
    sub_25459ABD0();
  }

  return sub_25459ABE0();
}

uint64_t _s12HomeUICommon23ScheduleRuleDisplayInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25459A180())
  {
    v4 = type metadata accessor for ScheduleRuleDisplayInfo();
    if (*(a1 + v4[5]) == *(a2 + v4[5]))
    {
      v5 = v4[6];
      v7 = *(a1 + v5);
      v6 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v7 == *v8 && v6 == v8[1];
      if (v9 || (v10 = v4, v11 = sub_25459AB70(), v4 = v10, (v11 & 1) != 0))
      {
        v12 = v4[7];
        v13 = (a1 + v12);
        v14 = *(a1 + v12 + 8);
        v15 = (a2 + v12);
        v16 = v15[1];
        if (v14)
        {
          if (v16)
          {
            v17 = *v13 == *v15 && v14 == v16;
            if (v17 || (sub_25459AB70() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v16)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_2545774CC()
{
  result = qword_27F604D58;
  if (!qword_27F604D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D58);
  }

  return result;
}

uint64_t sub_2545775B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2545776DC()
{
  sub_25459A1B0();
  if (v0 <= 0x3F)
  {
    sub_254577778();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254577778()
{
  if (!qword_27F604D78)
  {
    v0 = sub_25459A9A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F604D78);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScheduleRuleDisplayInfo.ScheduleType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScheduleRuleDisplayInfo.ScheduleType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SwiftUICanary.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25459A3E0();
  result = sub_25459A5B0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2545779F0@<X0>(uint64_t a1@<X8>)
{
  sub_25459A3E0();
  result = sub_25459A5B0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for SwiftUICanary(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SwiftUICanary(_WORD *result, int a2, int a3)
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

HomeUICommon::IconViewStyling_optional __swiftcall IconViewStyling.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_254577B84@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t IconViewWrapper.init(iconDescriptor:iconSize:styling:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t IconViewWrapper.iconDescriptor.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

id IconViewWrapper.makeUIView(context:)()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(HUIconView) initWithFrame_];
  [v2 updateWithIconDescriptor:v1 displayStyle:1 animated:0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  return v4;
}

id IconViewWrapper.updateUIView(_:context:)(id a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (!*v1)
  {
    [a1 setVibrancyEffect_];
    v18 = 1;
    goto LABEL_15;
  }

  v5 = *(v1 + 16);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = [v7 state];
    v9 = *MEMORY[0x277D13770];
    v10 = sub_25459A740();
    v12 = v11;
    if (v10 == sub_25459A740() && v12 == v13)
    {

      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = sub_25459AB70();

      if (v15 & v5)
      {
LABEL_8:
        v16 = [objc_opt_self() whiteColor];
        v17 = [objc_opt_self() colorEffectMonochromeTint:v16 blendingAmount:1.0 brightnessAdjustment:0.45];

        [a1 setVibrancyEffect_];
        swift_unknownObjectRelease();

        v18 = 2;
        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
  }

  [a1 setVibrancyEffect_];
  v18 = 1;
LABEL_13:
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    [v19 isSystemImage];
  }

LABEL_15:
  [a1 setContentMode_];
  [a1 setIconSize_];

  return [a1 updateWithIconDescriptor:v3 displayStyle:v18 animated:0];
}

double IconViewWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (*(v4 + 16) == 1 && *v4 != 0)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10 && (a2 & 1) == 0 && (a4 & 1) == 0)
    {
      return CGSizeMake(0, 0, 1, *&a1, *&a3 + -10.0);
    }
  }

  return result;
}

id sub_254578028()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(HUIconView) initWithFrame_];
  [v2 updateWithIconDescriptor:v1 displayStyle:1 animated:0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  return v4;
}

double sub_2545780F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (*(v4 + 16) == 1 && *v4 != 0)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10 && (a2 & 1) == 0 && (a4 & 1) == 0)
    {
      return CGSizeMake(0, 0, 1, *&a1, *&a3 + -10.0);
    }
  }

  return result;
}

uint64_t sub_2545781B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254578594();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25457821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254578594();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_254578280()
{
  sub_254578594();
  sub_25459A490();
  __break(1u);
}

unint64_t sub_2545782AC()
{
  result = qword_27F604D80;
  if (!qword_27F604D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D80);
  }

  return result;
}

unint64_t sub_254578304()
{
  result = qword_27F604D88;
  if (!qword_27F604D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconViewStyling(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IconViewStyling(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2545784D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_254578530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_254578594()
{
  result = qword_27F604D90;
  if (!qword_27F604D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D90);
  }

  return result;
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

uint64_t type metadata accessor for ScheduleRuleAccessListCell()
{
  result = qword_27F604DA8;
  if (!qword_27F604DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2545786A4()
{
  sub_254578730();
  if (v0 <= 0x3F)
  {
    sub_254578788();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254578730()
{
  if (!qword_27F604DB8)
  {
    type metadata accessor for ScheduleRuleDisplayInfo();
    v0 = sub_25459A9A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F604DB8);
    }
  }
}

unint64_t sub_254578788()
{
  result = qword_27F604DC0;
  if (!qword_27F604DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F604DC0);
  }

  return result;
}

uint64_t sub_2545787F0()
{
  v0 = sub_25459A290();
  __swift_allocate_value_buffer(v0, qword_27F606328);
  __swift_project_value_buffer(v0, qword_27F606328);
  return sub_25459A250();
}

uint64_t sub_25457883C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DC8, &qword_25459C990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  *v6 = sub_25459A3D0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DD0, &qword_25459C998);
  sub_254578A50(v1, &v6[*(v7 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DD8, &qword_25459C9A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25459C900;
  v9 = sub_25459A530();
  *(inited + 32) = v9;
  v10 = sub_25459A540();
  *(inited + 33) = v10;
  v11 = sub_25459A560();
  sub_25459A560();
  if (sub_25459A560() != v9)
  {
    v11 = sub_25459A560();
  }

  sub_25459A560();
  if (sub_25459A560() != v10)
  {
    v11 = sub_25459A560();
  }

  if (qword_27F604B90 != -1)
  {
    swift_once();
  }

  v12 = sub_25459A290();
  __swift_project_value_buffer(v12, qword_27F606328);
  sub_25459A270();
  sub_25459A2B0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_254579DA0(v6, a1, &qword_27F604DC8, &qword_25459C990);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DE0, &qword_25459C9A8);
  v22 = a1 + *(result + 36);
  *v22 = v11;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_254578A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DE8, &qword_25459C9B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DF0, &qword_25459C9B8);
  v7 = *(*(v42 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v42);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DF8, &qword_25459C9C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  sub_25459A8A0();
  v43 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_25459A660();
  v23 = *(a1 + *(type metadata accessor for ScheduleRuleAccessListCell() + 20));
  v45 = v22;
  v46 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E00, &qword_25459C9C8);
  sub_254579A30();
  sub_25459A600();

  *v6 = sub_25459A3C0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E20, &qword_25459C9D8);
  sub_254578EE0(a1, &v6[*(v24 + 44)]);
  v25 = sub_25459A550();
  v26 = sub_25459A560();
  sub_25459A560();
  if (sub_25459A560() != v25)
  {
    v26 = sub_25459A560();
  }

  if (qword_27F604B90 != -1)
  {
    swift_once();
  }

  v27 = sub_25459A290();
  __swift_project_value_buffer(v27, qword_27F606328);
  sub_25459A260();
  sub_25459A2B0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_254579DA0(v6, v12, &qword_27F604DE8, &qword_25459C9B0);
  v36 = &v12[*(v42 + 36)];
  *v36 = v26;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  sub_254579DA0(v12, v14, &qword_27F604DF0, &qword_25459C9B8);
  sub_254579BF8(v21, v19, &qword_27F604DF8, &qword_25459C9C0);
  v37 = v41;
  sub_254579BF8(v14, v41, &qword_27F604DF0, &qword_25459C9B8);
  v38 = v44;
  sub_254579BF8(v19, v44, &qword_27F604DF8, &qword_25459C9C0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E28, &qword_25459C9E0);
  sub_254579BF8(v37, v38 + *(v39 + 48), &qword_27F604DF0, &qword_25459C9B8);
  sub_254579D40(v14, &qword_27F604DF0, &qword_25459C9B8);
  sub_254579D40(v21, &qword_27F604DF8, &qword_25459C9C0);
  sub_254579D40(v37, &qword_27F604DF0, &qword_25459C9B8);
  sub_254579D40(v19, &qword_27F604DF8, &qword_25459C9C0);
}

uint64_t sub_254578EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E30, &qword_25459C9E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_25459A3F0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E38, &qword_25459C9F0);
  sub_2545790A0(a1, &v10[*(v11 + 44)]);
  sub_254579BF8(v10, v8, &qword_27F604E30, &qword_25459C9E8);
  sub_254579BF8(v8, a2, &qword_27F604E30, &qword_25459C9E8);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E40, &qword_25459C9F8) + 48);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_254579D40(v10, &qword_27F604E30, &qword_25459C9E8);
  sub_254579D40(v8, &qword_27F604E30, &qword_25459C9E8);
}

uint64_t sub_2545790A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E48, &qword_25459CA00);
  v4 = *(v87 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = &v74 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E50, &qword_25459CA08);
  v79 = *(v80 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E58, &unk_25459CA10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E60, &qword_25459CAA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v81 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DA0, &unk_25459C910);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v74 - v22;
  v24 = type metadata accessor for ScheduleRuleDisplayInfo();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v84 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E68, &qword_25459CA20);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v74 - v30;
  sub_25459A8A0();
  v85 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254579BF8(a1, v23, &qword_27F604DA0, &unk_25459C910);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_254579D40(v23, &qword_27F604DA0, &unk_25459C910);
    v32 = 1;
  }

  else
  {
    v77 = a2;
    v76 = v4;
    v33 = v84;
    sub_254579B30(v23, v84);
    v34 = (v33 + *(v24 + 24));
    v35 = v34[1];
    *&v94 = *v34;
    *(&v94 + 1) = v35;
    sub_254579B94();

    v36 = sub_25459A5C0();
    v38 = v37;
    *&v94 = v36;
    *(&v94 + 1) = v37;
    v40 = v39 & 1;
    LOBYTE(v95) = v39 & 1;
    *(&v95 + 1) = v41;
    sub_25459A600();
    sub_254579BE8(v36, v38, v40);

    v42 = (v33 + *(v24 + 28));
    v43 = v42[1];
    v75 = v31;
    if (v43)
    {
      v74 = v14;
      *&v94 = *v42;
      *(&v94 + 1) = v43;

      v44 = sub_25459A5C0();
      v46 = v45;
      v48 = v47;
      sub_25459A570();
      v49 = sub_25459A5A0();
      v51 = v50;
      v53 = v52;

      sub_254579BE8(v44, v46, v48 & 1);

      LODWORD(v94) = sub_25459A510();
      v54 = sub_25459A590();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      sub_254579BE8(v49, v51, v53 & 1);

      v61 = sub_25459A530();
      if (qword_27F604B90 != -1)
      {
        swift_once();
      }

      v62 = sub_25459A290();
      __swift_project_value_buffer(v62, qword_27F606328);
      sub_25459A280();
      sub_25459A2B0();
      v93 = v58 & 1;
      v92 = 0;
      *&v88 = v54;
      *(&v88 + 1) = v56;
      LOBYTE(v89) = v58 & 1;
      *(&v89 + 1) = v60;
      LOBYTE(v90) = v61;
      *(&v90 + 1) = v63;
      *v91 = v64;
      *&v91[8] = v65;
      *&v91[16] = v66;
      v91[24] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E80, &unk_25459CA30);
      sub_254579CBC();
      v67 = v78;
      sub_25459A600();
      v96 = v90;
      *v97 = *v91;
      *&v97[9] = *&v91[9];
      v94 = v88;
      v95 = v89;
      sub_254579D40(&v94, &qword_27F604E80, &unk_25459CA30);
      v14 = v74;
      sub_254579DA0(v67, v74, &qword_27F604E50, &qword_25459CA08);
      (*(v79 + 56))(v14, 0, 1, v80);
    }

    else
    {
      (*(v79 + 56))(v14, 1, 1, v80);
    }

    v4 = v76;
    v68 = v86;
    v69 = v81;
    sub_254579BF8(v86, v81, &qword_27F604E60, &qword_25459CAA0);
    v70 = v82;
    sub_254579BF8(v14, v82, &qword_27F604E58, &unk_25459CA10);
    v71 = v83;
    sub_254579BF8(v69, v83, &qword_27F604E60, &qword_25459CAA0);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E78, &qword_25459CA28);
    sub_254579BF8(v70, v71 + *(v72 + 48), &qword_27F604E58, &unk_25459CA10);
    sub_254579D40(v14, &qword_27F604E58, &unk_25459CA10);
    sub_254579D40(v68, &qword_27F604E60, &qword_25459CAA0);
    sub_254579C60(v84);
    sub_254579D40(v70, &qword_27F604E58, &unk_25459CA10);
    sub_254579D40(v69, &qword_27F604E60, &qword_25459CAA0);
    v31 = v75;
    sub_254579DA0(v71, v75, &qword_27F604E48, &qword_25459CA00);
    v32 = 0;
    a2 = v77;
  }

  (*(v4 + 56))(v31, v32, 1, v87);
  sub_254579DA0(v31, a2, &qword_27F604E68, &qword_25459CA20);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_254579A30()
{
  result = qword_27F604E08;
  if (!qword_27F604E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604E00, &qword_25459C9C8);
    sub_254579EC0(&qword_27F604E10, &qword_27F604E18, &qword_25459C9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E08);
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

uint64_t sub_254579B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleRuleDisplayInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254579B94()
{
  result = qword_27F604E70;
  if (!qword_27F604E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E70);
  }

  return result;
}

uint64_t sub_254579BE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_254579BF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_254579C60(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleRuleDisplayInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254579CBC()
{
  result = qword_27F604E88;
  if (!qword_27F604E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604E80, &unk_25459CA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E88);
  }

  return result;
}

uint64_t sub_254579D40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_254579DA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_254579E08()
{
  result = qword_27F604E90;
  if (!qword_27F604E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604DE0, &qword_25459C9A8);
    sub_254579EC0(&qword_27F604E98, &qword_27F604DC8, &qword_25459C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E90);
  }

  return result;
}

uint64_t sub_254579EC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ScheduleAccessList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = sub_25459A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EA0, &qword_25459CA40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EA8, &qword_25459CA48);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - v14;
  v16 = v1[1];
  v24 = *v1;
  v25 = v16;
  v17 = v1[3];
  v26 = v1[2];
  v27 = v17;
  v23[4] = &v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EB0, &qword_25459CA50);
  sub_25457A868();
  sub_25459A580();
  sub_25459A4F0();
  sub_254579EC0(&qword_27F604F98, &qword_27F604EA0, &qword_25459CA40);
  sub_25459A640();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v18 = *(&v25 + 1);
  v19 = sub_25459A6B0();
  v20 = &v15[*(v12 + 36)];
  *v20 = v18;
  *(v20 + 1) = v19;
  *(v20 + 2) = v21;
  sub_25457AF98();

  sub_25459A610();
  return sub_2545752D0(v15);
}

uint64_t sub_25457A1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F28, &qword_25459CA88);
  v3 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F18, &qword_25459CA80);
  v38 = *(v42 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v34 - v6;
  v8 = type metadata accessor for ScheduleRuleDisplayInfo();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FB8, "\bK");
  v12 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EE8, &qword_25459CA68);
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604ED8, &qword_25459CA60);
  v19 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v21 = &v34 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EB0, &qword_25459CA50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v34 - v24;
  sub_25459A8A0();
  v41 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *(*(a1 + 8) + 32);
  if (*(v26 + 16))
  {
    v27 = sub_25457BDA0(v26 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v11);
    MEMORY[0x28223BE20](v27);
    *(&v34 - 2) = v26;
    *(&v34 - 1) = a1;
    sub_25457B6AC(a1, v11, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F68, &qword_25459CAA8);
    sub_25457ABDC();
    sub_25457AE2C();
    sub_25459A690();
    v28 = v38;
    v29 = v42;
    (*(v38 + 16))(v14, v7, v42);
    swift_storeEnumTagMultiPayload();
    sub_25457A978();
    sub_25457AB44();
    sub_25459A4D0();
    (*(v28 + 8))(v7, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EC8, &qword_25459CA58);
    (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
    sub_254579C60(v11);
  }

  else
  {
    if (*(a1 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EF8, &qword_25459CA70);
      sub_25457AA8C();
      sub_25459A6A0();
      v31 = v34;
      (*(v34 + 32))(v21, v18, v15);
      (*(v31 + 56))(v21, 0, 1, v15);
    }

    else
    {
      (*(v34 + 56))(v21, 1, 1, v15);
    }

    sub_254579BF8(v21, v14, &qword_27F604ED8, &qword_25459CA60);
    swift_storeEnumTagMultiPayload();
    sub_25457A978();
    sub_25457AB44();
    sub_25459A4D0();
    sub_254579D40(v21, &qword_27F604ED8, &qword_25459CA60);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EC8, &qword_25459CA58);
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
  }

  sub_254579DA0(v25, v43, &qword_27F604EB0, &qword_25459CA50);
}

unint64_t sub_25457A868()
{
  result = qword_27F604EB8;
  if (!qword_27F604EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EB0, &qword_25459CA50);
    sub_25457A8EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EB8);
  }

  return result;
}

unint64_t sub_25457A8EC()
{
  result = qword_27F604EC0;
  if (!qword_27F604EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EC8, &qword_25459CA58);
    sub_25457A978();
    sub_25457AB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EC0);
  }

  return result;
}

unint64_t sub_25457A978()
{
  result = qword_27F604ED0;
  if (!qword_27F604ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604ED8, &qword_25459CA60);
    sub_25457A9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604ED0);
  }

  return result;
}

unint64_t sub_25457A9FC()
{
  result = qword_27F604EE0;
  if (!qword_27F604EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EE8, &qword_25459CA68);
    sub_25457AA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EE0);
  }

  return result;
}

unint64_t sub_25457AA8C()
{
  result = qword_27F604EF0;
  if (!qword_27F604EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EF8, &qword_25459CA70);
    sub_254579EC0(&qword_27F604F00, &qword_27F604F08, &qword_25459CA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EF0);
  }

  return result;
}

unint64_t sub_25457AB44()
{
  result = qword_27F604F10;
  if (!qword_27F604F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F18, &qword_25459CA80);
    sub_25457ABDC();
    sub_25457AE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F10);
  }

  return result;
}

unint64_t sub_25457ABDC()
{
  result = qword_27F604F20;
  if (!qword_27F604F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F28, &qword_25459CA88);
    sub_25457AC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F20);
  }

  return result;
}

unint64_t sub_25457AC68()
{
  result = qword_27F604F30;
  if (!qword_27F604F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F38, &qword_25459CA90);
    sub_25457ACEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F30);
  }

  return result;
}

unint64_t sub_25457ACEC()
{
  result = qword_27F604F40;
  if (!qword_27F604F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F48, &qword_25459CA98);
    sub_25457AD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F40);
  }

  return result;
}

unint64_t sub_25457AD70()
{
  result = qword_27F604F50;
  if (!qword_27F604F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604E60, &qword_25459CAA0);
    sub_25457BE4C(&qword_27F604F58, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F50);
  }

  return result;
}

unint64_t sub_25457AE2C()
{
  result = qword_27F604F60;
  if (!qword_27F604F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F68, &qword_25459CAA8);
    sub_25457AEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F60);
  }

  return result;
}

unint64_t sub_25457AEB0()
{
  result = qword_27F604F70;
  if (!qword_27F604F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F78, &qword_25459CAB0);
    sub_25457BE4C(&qword_27F604F80, type metadata accessor for ScheduleRuleAccessListCell);
    sub_254579EC0(&qword_27F604F88, &qword_27F604F90, &qword_25459CAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F70);
  }

  return result;
}

unint64_t sub_25457AF98()
{
  result = qword_27F604FA0;
  if (!qword_27F604FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EA8, &qword_25459CA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EA0, &qword_25459CA40);
    sub_25459A500();
    sub_254579EC0(&qword_27F604F98, &qword_27F604EA0, &qword_25459CA40);
    swift_getOpaqueTypeConformance2();
    sub_254579EC0(&qword_27F604FA8, &qword_27F604FB0, &qword_25459CAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604FA0);
  }

  return result;
}

uint64_t sub_25457B0FC@<X0>(uint64_t a1@<X8>)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25459A730();
  v3 = HFLocalizedString();

  sub_25459A740();
  sub_254579B94();
  v4 = sub_25459A5C0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_25457B238(uint64_t a1, _OWORD *a2)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1;
  v4 = swift_allocObject();
  v5 = a2[1];
  v4[1] = *a2;
  v4[2] = v5;
  v6 = a2[3];
  v4[3] = a2[2];
  v4[4] = v6;

  sub_25457BE14(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FD0, &qword_25459CBC0);
  sub_25459A1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F78, &qword_25459CAB0);
  sub_254579EC0(&qword_27F604FD8, &qword_27F604FD0, &qword_25459CBC0);
  sub_25457AEB0();
  sub_25457BE4C(&qword_27F604FE0, type metadata accessor for ScheduleRuleDisplayInfo);
  sub_25459A680();
}

uint64_t sub_25457B408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScheduleRuleAccessListCell();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F78, &qword_25459CAB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25457BDA0(a1, v9);
  v14 = type metadata accessor for ScheduleRuleDisplayInfo();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  *&v9[*(v6 + 20)] = *(a2 + 16);
  v15 = *(v6 + 24);
  v16 = objc_allocWithZone(MEMORY[0x277CCA968]);

  v17 = [v16 init];
  [v17 setDateStyle_];
  [v17 setTimeStyle_];
  [v17 setFormattingContext_];
  *&v9[v15] = v17;
  if (*(a2 + 32))
  {
    v18 = *(a2 + 32);
  }

  else
  {
    v19 = [objc_opt_self() tertiarySystemFillColor];
    v18 = sub_25459A650();
  }

  v22[1] = v18;

  v20 = sub_25459A670();
  sub_25457BE94(v9, v13);
  *&v13[*(v10 + 36)] = v20;
  sub_254579DA0(v13, a3, &qword_27F604F78, &qword_25459CAB0);
}

uint64_t sub_25457B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FC0, &qword_25459CBB0);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E60, &qword_25459CAA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F38, &qword_25459CA90);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v14 = &v52 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FC8, &qword_25459CBB8);
  v15 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F28, &qword_25459CA88);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v52 - v20;
  sub_25459A8A0();
  v55 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(a1 + 56);
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_8:
    v27 = *(a2 + *(type metadata accessor for ScheduleRuleDisplayInfo() + 20));
    if (v27 == 1)
    {
      v38 = [objc_opt_self() localizedStringFromScheduleType_];
      v52 = v8;
      v39 = v38;
      v40 = sub_25459A740();
      v42 = v41;

      v58 = v40;
      v59 = v42;
      sub_254579B94();
      v43 = sub_25459A5C0();
      v45 = v44;
      v58 = v43;
      v59 = v44;
      v47 = v46 & 1;
      v60 = v46 & 1;
      v61 = v48;
      sub_25459A600();
      sub_254579BE8(v43, v45, v47);

      sub_254579BF8(v11, v7, &qword_27F604E60, &qword_25459CAA0);
    }

    else
    {
      if (v27 != 2)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F48, &qword_25459CA98);
        (*(*(v50 - 8) + 56))(v14, 1, 1, v50);
        goto LABEL_14;
      }

      v28 = [objc_opt_self() localizedStringFromScheduleType_];
      v29 = sub_25459A740();
      v31 = v30;

      v58 = v29;
      v59 = v31;
      sub_254579B94();
      v32 = sub_25459A5C0();
      v34 = v33;
      v58 = v32;
      v59 = v33;
      v52 = v8;
      v36 = v35 & 1;
      v60 = v35 & 1;
      v61 = v37;
      sub_25459A600();
      sub_254579BE8(v32, v34, v36);

      sub_254579BF8(v11, v7, &qword_27F604E60, &qword_25459CAA0);
    }

    swift_storeEnumTagMultiPayload();
    sub_25457AD70();
    sub_25459A4D0();
    sub_254579D40(v11, &qword_27F604E60, &qword_25459CAA0);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F48, &qword_25459CA98);
    (*(*(v49 - 8) + 56))(v14, 0, 1, v49);
LABEL_14:
    sub_254579BF8(v14, v17, &qword_27F604F38, &qword_25459CA90);
    swift_storeEnumTagMultiPayload();
    sub_25457AC68();
    sub_25459A4D0();
    sub_254579D40(v14, &qword_27F604F38, &qword_25459CA90);
    goto LABEL_15;
  }

  v58 = *(a1 + 48);
  v59 = v22;
  sub_254579B94();

  *v17 = sub_25459A5C0();
  *(v17 + 1) = v24;
  v17[16] = v25 & 1;
  *(v17 + 3) = v26;
  swift_storeEnumTagMultiPayload();
  sub_25457AC68();
  sub_25459A4D0();
LABEL_15:
  sub_254579DA0(v21, v57, &qword_27F604F28, &qword_25459CA88);
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

uint64_t sub_25457BCF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25457BD40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25457BDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleRuleDisplayInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25457BE4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25457BE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleRuleAccessListCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id HUScheduleAccessViewController.init(guestAccessSchedule:tintColor:shouldDisplayAlwaysAllowedSchedule:scheduleBackgroundColor:listRowBackgroundColor:)(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGuestAccessSchedule:a1 tintColor:a2 shouldDisplayAlwaysAllowedSchedule:a3 & 1 scheduleBackgroundColor:a4 listRowBackgroundColor:a5];

  return v9;
}

char *HUScheduleAccessViewController.init(guestAccessSchedule:tintColor:shouldDisplayAlwaysAllowedSchedule:scheduleBackgroundColor:listRowBackgroundColor:)(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = &v6[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *&v6[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = 0;
  *&v6[OBJC_IVAR___HUScheduleAccessViewController_task] = 0;
  type metadata accessor for HUScheduleAccessViewController(a1);
  v40 = a1;
  v13 = sub_25457C2CC(a1, a3);
  v39 = a5;
  if (a5)
  {
    v14 = a5;
    a5 = sub_25459A650();
  }

  type metadata accessor for ScheduleRuleList();
  swift_allocObject();
  ScheduleRuleList.init(rules:)(v13);
  v38 = a2;
  v15 = sub_25459A650();
  v37 = a4;
  v16 = sub_25459A650();

  v17 = sub_25459A730();
  v18 = a5;
  v19 = HFLocalizedString();

  v20 = sub_25459A740();
  v22 = v21;

  sub_254581F58(&qword_27F605000, type metadata accessor for ScheduleRuleList);
  v23 = sub_25459A320();
  v24 = *(v12 + 1);
  v47[0] = *v12;
  v47[1] = v24;
  v25 = *(v12 + 3);
  v47[2] = *(v12 + 2);
  v47[3] = v25;
  *v12 = v23;
  *(v12 + 1) = v26;
  *(v12 + 2) = v15;
  *(v12 + 3) = v16;
  *(v12 + 4) = v18;
  v12[40] = 0;
  *(v12 + 6) = v20;
  *(v12 + 7) = v22;
  sub_254579D40(v47, &qword_27F605008, &qword_25459CC10);
  v46.receiver = v6;
  v46.super_class = HUScheduleAccessViewController;
  v27 = objc_msgSendSuper2(&v46, sel_initWithNibName_bundle_, 0, 0);
  v28 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  v30 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v29 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v48[2] = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v48[3] = v28;
  v48[0] = v30;
  v48[1] = v29;
  v31 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v49 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v50 = v31;
  v51 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  if (*(&v30 + 1))
  {
    v42 = v30;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605010, &qword_25459CC18));
    sub_254579BF8(v48, v41, &qword_27F605008, &qword_25459CC10);
    sub_254579BF8(v48, v41, &qword_27F605008, &qword_25459CC10);
    v33 = v27;
    v34 = sub_25459A400();
    v35 = *&v33[OBJC_IVAR___HUScheduleAccessViewController_hostingController];
    *&v33[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = v34;

    sub_25457D260();

    sub_254579D40(v48, &qword_27F605008, &qword_25459CC10);
  }

  else
  {
  }

  return v27;
}

void *sub_25457C2CC(void *a1, int a2)
{
  v4 = type metadata accessor for ScheduleRuleDisplayInfo();
  v164 = *(v4 - 8);
  v165 = v4;
  v5 = *(v164 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v162 = &v149 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v149 - v11;
  v13 = sub_25459A220();
  v160 = *(v13 - 1);
  v14 = *(v160 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v149 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v26 = &v149 - v25;
  if (!a1)
  {
    if (qword_27F604B98 != -1)
    {
      swift_once();
    }

    v158 = v13;
    v59 = qword_27F606340;
    sub_25459A230();
    v69 = sub_25459A210();
    v70 = sub_25459A950();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v163 = v59;
      v72 = v71;
      v73 = swift_slowAlloc();
      v166 = v73;
      *v72 = 136315394;
      v74 = sub_25459ABF0();
      v76 = sub_254581894(v74, v75, &v166);

      *(v72 + 4) = v76;
      v77 = v160;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v166);
      _os_log_impl(&dword_254573000, v69, v70, "%s%s There is no schedule to get ruleDisplayInfos from.", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C11390](v73, -1, -1);
      v78 = v72;
      v59 = v163;
      MEMORY[0x259C11390](v78, -1, -1);

      v79 = v77;
    }

    else
    {

      v79 = v160;
    }

    v13 = *(v79 + 8);
    (v13)(v20, v158);
    if (a2)
    {
      v107 = [objc_opt_self() localizedStringFromScheduleType_];
      v108 = sub_25459A740();
      v110 = v109;

      sub_25459A1A0();
      v111 = v165;
      v8[*(v165 + 20)] = 0;
      v112 = &v8[*(v111 + 24)];
      *v112 = v108;
      v112[1] = v110;
      v113 = &v8[*(v111 + 28)];
      *v113 = 0;
      *(v113 + 1) = 0;
      v56 = sub_254581634(0, 1, 1, MEMORY[0x277D84F90]);
      v80 = v56[2];
      v84 = v56[3];
      v83 = (v80 + 1);
      if (v80 < v84 >> 1)
      {
LABEL_36:
        v56[2] = v83;
        sub_254579B30(v8, v56 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v80);
        v114 = v59;
        sub_25459A230();
        v115 = sub_25459A210();
        v116 = sub_25459A950();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v166 = v118;
          *v117 = 136315650;
          v119 = sub_25459ABF0();
          v121 = sub_254581894(v119, v120, &v166);

          *(v117 + 4) = v121;
          *(v117 + 12) = 2080;
          *(v117 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v166);
          *(v117 + 22) = 2080;

          v123 = MEMORY[0x259C10600](v122, v165);
          v125 = v124;

          v126 = sub_254581894(v123, v125, &v166);

          *(v117 + 24) = v126;
          _os_log_impl(&dword_254573000, v115, v116, "%s%s Adding always allowed info. List of displayInfos to be presented {%s}", v117, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C11390](v118, -1, -1);
          MEMORY[0x259C11390](v117, -1, -1);
        }

        (v13)(v17, v158);
        return v56;
      }

LABEL_51:
      v56 = sub_254581634(v84 > 1, v83, 1, v56);
      goto LABEL_36;
    }

    return MEMORY[0x277D84F90];
  }

  v151 = v24;
  v152 = v12;
  v155 = v23;
  v153 = a2;
  v27 = objc_opt_self();
  v154 = a1;
  v28 = a1;
  v29 = [v27 scheduleBuilderFromHomeAccessSchedule_];
  v17 = objc_opt_self();
  v30 = [v29 rules];
  v31 = sub_254582148(0, &qword_27F605060, 0x277D14A18);
  sub_254582190();
  v32 = sub_25459A900();

  v33 = sub_2545821F8(v32);

  sub_254581438(v33);

  v34 = sub_25459A7D0();

  v161 = v17;
  v35 = [v17 sortedScheduleRules_];

  v150 = v31;
  v163 = sub_25459A7E0();

  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v36 = qword_27F606340;
  sub_25459A230();
  v37 = v28;
  v38 = v29;
  v39 = sub_25459A210();
  v40 = sub_25459A950();

  v41 = os_log_type_enabled(v39, v40);
  v156 = v37;
  v157 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v149 = v36;
    v44 = v43;
    v45 = swift_slowAlloc();
    v158 = v13;
    v46 = v45;
    v166 = v45;
    *v42 = 136315906;
    v47 = sub_25459ABF0();
    v17 = sub_254581894(v47, v48, &v166);

    *(v42 + 4) = v17;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v166);
    *(v42 + 22) = 2112;
    *(v42 + 24) = v38;
    *(v42 + 32) = 2112;
    *(v42 + 34) = v37;
    v49 = v154;
    *v44 = v38;
    v44[1] = v49;
    v50 = v37;
    v51 = v38;
    _os_log_impl(&dword_254573000, v39, v40, "%s%s Constructed builder {%@} from unwrapped schedule {%@}", v42, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
    swift_arrayDestroy();
    v52 = v44;
    v36 = v149;
    MEMORY[0x259C11390](v52, -1, -1);
    swift_arrayDestroy();
    v53 = v46;
    v13 = v158;
    MEMORY[0x259C11390](v53, -1, -1);
    MEMORY[0x259C11390](v42, -1, -1);
  }

  v54 = *(v160 + 8);
  (v54)(v26, v13);
  v55 = v163;
  v56 = (v163 >> 62);
  if (v163 >> 62)
  {
    if (sub_25459A9E0())
    {
      goto LABEL_8;
    }
  }

  else if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v57 = v36;
    v58 = v155;
    sub_25459A230();

    v59 = sub_25459A210();
    v8 = sub_25459A950();
    v60 = v55;

    if (os_log_type_enabled(v59, v8))
    {
      v61 = swift_slowAlloc();
      v158 = v54;
      v62 = v61;
      v63 = swift_slowAlloc();
      v166 = v63;
      *v62 = 136315650;
      v64 = sub_25459ABF0();
      v66 = sub_254581894(v64, v65, &v166);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v166);
      *(v62 + 22) = 2080;
      v67 = MEMORY[0x259C10600](v55, v150);
      v17 = sub_254581894(v67, v68, &v166);

      *(v62 + 24) = v17;
      _os_log_impl(&dword_254573000, v59, v8, "%s%s Mapping rules to ruleDisplayInfos {%s}", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C11390](v63, -1, -1);
      MEMORY[0x259C11390](v62, -1, -1);

      (v158)(v58, v13);
    }

    else
    {

      (v54)(v58, v13);
    }

    v80 = v157;
    if (v56)
    {
      v81 = sub_25459A9E0();
      v82 = v156;
      if (v81)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v81 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v82 = v156;
      if (v81)
      {
LABEL_17:
        v166 = MEMORY[0x277D84F90];
        v83 = &v166;
        sub_2545822A8(0, v81 & ~(v81 >> 63), 0);
        if ((v81 & 0x8000000000000000) == 0)
        {
          v56 = v166;
          v85 = sub_25459A8A0();
          v86 = 0;
          v87 = v60;
          v158 = (v60 & 0xC000000000000001);
          v159 = v85;
          v160 = v81;
          do
          {
            if (v158)
            {
              v88 = MEMORY[0x259C10840](v86, v87);
            }

            else
            {
              v88 = *(v87 + 8 * v86 + 32);
            }

            v89 = v88;
            sub_25459A890();
            sub_25459A880();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            if ([v89 isYearDayRule])
            {
              v90 = 1;
            }

            else
            {
              v90 = 2;
            }

            v91 = v161;
            v92 = [v161 localizedMainStringForRule_];
            v93 = sub_25459A740();
            v95 = v94;

            v96 = [v91 localizedDetailedStringForRule_];
            v97 = sub_25459A740();
            v99 = v98;

            v100 = v162;
            sub_25459A1A0();

            v101 = v100;
            v102 = v165;
            v100[*(v165 + 20)] = v90;
            v103 = &v100[*(v102 + 24)];
            *v103 = v93;
            v103[1] = v95;
            v104 = &v100[*(v102 + 28)];
            *v104 = v97;
            v104[1] = v99;
            v166 = v56;
            v106 = v56[2];
            v105 = v56[3];
            if (v106 >= v105 >> 1)
            {
              sub_2545822A8(v105 > 1, v106 + 1, 1);
              v101 = v162;
              v56 = v166;
            }

            ++v86;
            v56[2] = v106 + 1;
            sub_254579B30(v101, v56 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v106);
            v87 = v163;
          }

          while (v160 != v86);

          return v56;
        }

        __break(1u);
        goto LABEL_51;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v127 = v36;
  v128 = v151;
  sub_25459A230();
  v129 = sub_25459A210();
  v130 = sub_25459A950();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = v54;
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v166 = v133;
    *v132 = 136315394;
    v134 = sub_25459ABF0();
    v136 = sub_254581894(v134, v135, &v166);

    *(v132 + 4) = v136;
    *(v132 + 12) = 2080;
    *(v132 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v166);
    _os_log_impl(&dword_254573000, v129, v130, "%s%s Rules are empty!", v132, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C11390](v133, -1, -1);
    MEMORY[0x259C11390](v132, -1, -1);

    v131(v128, v13);
  }

  else
  {

    (v54)(v128, v13);
  }

  v137 = v157;
  v138 = v152;
  if ((v153 & 1) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  v139 = [v161 localizedStringFromScheduleType_];
  v140 = sub_25459A740();
  v142 = v141;

  sub_25459A1A0();
  v143 = v165;
  *(v138 + *(v165 + 20)) = 0;
  v144 = (v138 + *(v143 + 24));
  *v144 = v140;
  v144[1] = v142;
  v145 = (v138 + *(v143 + 28));
  *v145 = 0;
  v145[1] = 0;
  v56 = sub_254581634(0, 1, 1, MEMORY[0x277D84F90]);
  v147 = v56[2];
  v146 = v56[3];
  if (v147 >= v146 >> 1)
  {
    v56 = sub_254581634(v146 > 1, v147 + 1, 1, v56);
  }

  v56[2] = v147 + 1;
  sub_254579B30(v138, v56 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v147);
  return v56;
}

void sub_25457D260()
{
  v1 = sub_25459A220();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - v7;
  v9 = *&v0[OBJC_IVAR___HUScheduleAccessViewController_hostingController];
  if (v9)
  {
    v10 = qword_27F604B98;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_27F606340;
    sub_25459A230();
    v13 = v0;
    v14 = sub_25459A210();
    v15 = sub_25459A950();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2080;
      v61 = v1;
      v62 = v18;
      v19 = v13;
      *(v16 + 14) = sub_254581894(0xD00000000000001ALL, 0x800000025459EE40, &v62);
      _os_log_impl(&dword_254573000, v14, v15, "%@%s Presenting hosting controller for schedule access", v16, 0x16u);
      sub_254579D40(v17, &qword_27F605020, &qword_25459CC38);
      MEMORY[0x259C11390](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x259C11390](v18, -1, -1);
      MEMORY[0x259C11390](v16, -1, -1);

      (*(v2 + 8))(v8, v61);
    }

    else
    {

      (*(v2 + 8))(v8, v1);
    }

    v28 = v11;
    [v13 addChildViewController_];
    v29 = [v13 view];
    if (v29)
    {
      v30 = v29;
      v31 = [v28 view];
      if (v31)
      {
        v32 = v31;
        [v30 addSubview_];

        v33 = [v28 view];
        if (v33)
        {
          [v33 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605050, &qword_25459CC70);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_25459CC00;
          v35 = [v28 view];

          if (v35)
          {
            v36 = [v35 leadingAnchor];

            v37 = [v13 view];
            if (v37)
            {
              v38 = v37;
              v39 = [v37 leadingAnchor];

              v40 = [v36 constraintEqualToAnchor_];
              *(v34 + 32) = v40;
              v41 = [v28 view];

              if (v41)
              {
                v42 = [v41 trailingAnchor];

                v43 = [v13 view];
                if (v43)
                {
                  v44 = v43;
                  v45 = [v43 trailingAnchor];

                  v46 = [v42 constraintEqualToAnchor_];
                  *(v34 + 40) = v46;
                  v47 = [v28 view];

                  if (v47)
                  {
                    v48 = [v47 topAnchor];

                    v49 = [v13 view];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = [v49 topAnchor];

                      v52 = [v48 constraintEqualToAnchor_];
                      *(v34 + 48) = v52;
                      v53 = [v28 view];

                      if (v53)
                      {
                        v54 = [v53 bottomAnchor];

                        v55 = [v13 view];
                        if (v55)
                        {
                          v56 = v55;
                          v57 = objc_opt_self();
                          v58 = [v56 bottomAnchor];

                          v59 = [v54 constraintEqualToAnchor_];
                          *(v34 + 56) = v59;
                          sub_254582148(0, &qword_27F605058, 0x277CCAAD0);
                          v60 = sub_25459A7D0();

                          [v57 activateConstraints_];

                          return;
                        }

                        goto LABEL_34;
                      }

LABEL_33:
                      __break(1u);
LABEL_34:
                      __break(1u);
                      return;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v20 = qword_27F606340;
  sub_25459A230();
  v21 = v0;
  v22 = sub_25459A210();
  v23 = sub_25459A930();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v62 = v26;
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2080;
    v27 = v21;
    *(v24 + 14) = sub_254581894(0xD00000000000001ALL, 0x800000025459EE40, &v62);
    _os_log_impl(&dword_254573000, v22, v23, "%@%s Unexpected error! We have no host controller!", v24, 0x16u);
    sub_254579D40(v25, &qword_27F605020, &qword_25459CC38);
    MEMORY[0x259C11390](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x259C11390](v26, -1, -1);
    MEMORY[0x259C11390](v24, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
}

id HUScheduleAccessViewController.init(homeID:tintColor:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_25459A170();
  v6 = [v4 initWithHomeID:v5 tintColor:a2];

  v7 = sub_25459A1B0();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

{
  v3 = v2;
  v6 = sub_25459A170();
  v7 = [v3 initWithHomeID:v6 tintColor:a2 listRowBackgroundColor:0];

  v8 = sub_25459A1B0();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id HUScheduleAccessViewController.init(homeID:tintColor:listRowBackgroundColor:)(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25459A170();
  v8 = [v6 initWithHomeID:v7 tintColor:a2 listRowBackgroundColor:a3];

  v9 = sub_25459A1B0();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

{
  v54 = a2;
  v55 = a3;
  v57 = a1;
  v4 = sub_25459A220();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25459A1B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  v16 = &v3[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *&v3[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = 0;
  *&v3[OBJC_IVAR___HUScheduleAccessViewController_task] = 0;
  v59.receiver = v3;
  v59.super_class = HUScheduleAccessViewController;
  v56 = objc_msgSendSuper2(&v59, sel_initWithNibName_bundle_, 0, 0);
  v17 = [objc_opt_self() sharedDispatcher];
  v18 = [v17 homeManager];

  if (v18)
  {
    v52 = v5;
    v53 = v4;
    v19 = qword_27F604B98;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_27F606340;
    sub_25459A230();
    v22 = v20;
    v23 = v8;
    v24 = v56;
    v25 = sub_25459A210();
    v26 = sub_25459A950();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v9;
      v29 = v28;
      v50 = swift_slowAlloc();
      v58 = v50;
      *v27 = 138412802;
      *(v27 + 4) = v24;
      *v29 = v24;
      *(v27 + 12) = 2080;
      v30 = v24;
      *(v27 + 14) = sub_254581894(0xD00000000000002ELL, 0x800000025459EC30, &v58);
      *(v27 + 22) = 2112;
      *(v27 + 24) = v22;
      v29[1] = v18;
      v31 = v22;
      _os_log_impl(&dword_254573000, v25, v26, "%@%s HMHomeManager exists! as %@", v27, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
      swift_arrayDestroy();
      v32 = v29;
      v9 = v51;
      MEMORY[0x259C11390](v32, -1, -1);
      v33 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x259C11390](v33, -1, -1);
      MEMORY[0x259C11390](v27, -1, -1);
    }

    (v52)[1](v23, v53);
    v35 = v54;
    v34 = v55;
    sub_25457E498(v57, v54, v55);
    sub_25457D260();
  }

  else
  {
    v36 = sub_25459A8D0();
    v37 = *(*(v36 - 8) + 56);
    v51 = v15;
    v37(v15, 1, 1, v36);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(v53, v57, v9);
    sub_25459A8A0();
    v39 = v55;
    v52 = v55;

    v40 = v54;
    v41 = sub_25459A890();
    v42 = v9;
    v43 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v44 = (v11 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v46 = MEMORY[0x277D85700];
    v45[2] = v41;
    v45[3] = v46;
    v45[4] = v38;
    v47 = v45 + v43;
    v9 = v42;
    (*(v10 + 32))(v47, v53, v42);
    *(v45 + v44) = v40;
    *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;

    sub_25457FF78(0, 0, v51, &unk_25459CC30, v45);
  }

  (*(v10 + 8))(v57, v9);
  return v56;
}

void sub_25457E498(uint64_t a1, void *a2, uint64_t a3)
{
  v145 = a3;
  v146 = a2;
  v4 = sub_25459A1B0();
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v138 = (&v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v131 - v9;
  v11 = sub_25459A220();
  v151 = *(v11 - 8);
  v12 = *(v151 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v131 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v131 - v17;
  v19 = [objc_opt_self() sharedDispatcher];
  v20 = [v19 homeManager];

  v150 = v20;
  if (v20)
  {
    v21 = v150;
    v22 = sub_25459A170();
    v23 = [v21 hf:v22 homeWithIdentifier:?];
  }

  else
  {
    v23 = 0;
  }

  v24 = v11;
  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v144 = qword_27F606340;
  sub_25459A230();
  v135 = v5[2];
  v136 = v5 + 2;
  v135(v10, a1, v4);
  v25 = v23;
  v141 = v23;
  v142 = v4;
  v26 = v25;
  v27 = v152;
  v28 = v10;
  v29 = sub_25459A210();
  v143 = v18;
  v30 = v29;
  v31 = sub_25459A950();

  v32 = os_log_type_enabled(v30, v31);
  v152 = v27;
  v149 = v26;
  v147 = v24;
  v139 = v5;
  v137 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *&v155 = v133;
    *v33 = 138413058;
    *(v33 + 4) = v152;
    *v34 = v152;
    *(v33 + 12) = 2080;
    v132 = v30;
    v35 = v5;
    v36 = v152;
    *(v33 + 14) = sub_254581894(0xD00000000000002FLL, 0x800000025459EDF0, &v155);
    *(v33 + 22) = 2080;
    sub_254581F58(&qword_27F605038, MEMORY[0x277CC95F0]);
    v37 = v142;
    v38 = sub_25459AB50();
    v40 = v39;
    v134 = v35[1];
    v134(v28, v37);
    v41 = sub_254581894(v38, v40, &v155);

    *(v33 + 24) = v41;
    *(v33 + 32) = 2112;
    *(v33 + 34) = v26;
    v42 = v141;
    v34[1] = v141;
    v43 = v26;
    v44 = v31;
    v45 = v132;
    _os_log_impl(&dword_254573000, v132, v44, "%@%s Lookup result for home with id=%s as %@", v33, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
    swift_arrayDestroy();
    MEMORY[0x259C11390](v34, -1, -1);
    v46 = v133;
    swift_arrayDestroy();
    MEMORY[0x259C11390](v46, -1, -1);
    v47 = v33;
    v27 = v152;
    v48 = v147;
    MEMORY[0x259C11390](v47, -1, -1);

    v49 = v143;
    v143 = *(v151 + 8);
    v143(v49, v48);
    v50 = v148;
    v51 = v37;
    v52 = v145;
    if (v145)
    {
      goto LABEL_8;
    }

LABEL_12:
    v145 = 0;
    if (v42)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v42 = v141;

  v84 = v5[1];
  v51 = v142;
  v134 = v84;
  v84(v28, v142);
  v85 = v143;
  v48 = v24;
  v143 = *(v151 + 8);
  v143(v85, v24);
  v50 = v148;
  v52 = v145;
  if (!v145)
  {
    goto LABEL_12;
  }

LABEL_8:
  v53 = v52;
  v145 = sub_25459A650();
  if (v42)
  {
LABEL_9:
    v54 = v149;
    v55 = [v54 currentUser];
    v140 = v54;
    v56 = [v54 homeAccessControlForUser_];

    v57 = [v56 restrictedGuestAccessSettings];
    v58 = [v57 guestAccessSchedule];
    v59 = v144;
    sub_25459A230();
    v60 = v27;
    v141 = v58;
    v61 = v58;
    v62 = v57;
    v63 = v60;
    v64 = v62;
    v65 = v56;
    v66 = sub_25459A210();
    v67 = sub_25459A950();
    v144 = v65;

    v142 = v64;
    v68 = v66;
    v69 = os_log_type_enabled(v66, v67);
    v139 = v63;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v155 = v138;
      *v70 = 138413314;
      *(v70 + 4) = v63;
      *v71 = v63;
      *(v70 + 12) = 2080;
      v72 = v63;
      v73 = v145;
      *(v70 + 14) = sub_254581894(0xD00000000000002FLL, 0x800000025459EDF0, &v155);
      *(v70 + 22) = 2112;
      *(v70 + 24) = v61;
      *(v70 + 32) = 2112;
      v74 = v141;
      v75 = v142;
      *(v70 + 34) = v142;
      v71[1] = v74;
      v71[2] = v75;
      *(v70 + 42) = 2112;
      v76 = v144;
      *(v70 + 44) = v144;
      v71[3] = v76;
      v77 = v61;
      v78 = v75;
      v79 = v76;
      _os_log_impl(&dword_254573000, v68, v67, "%@%s Found access schedule {%@} from guest settings {%@} and home access control {%@}", v70, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
      swift_arrayDestroy();
      MEMORY[0x259C11390](v71, -1, -1);
      v80 = v138;
      __swift_destroy_boxed_opaque_existential_0(v138);
      MEMORY[0x259C11390](v80, -1, -1);
      MEMORY[0x259C11390](v70, -1, -1);

      v81 = (v143)(v148, v147);
      v82 = v61;
      v83 = v149;
    }

    else
    {

      v81 = (v143)(v50, v48);
      v82 = v61;
      v83 = v149;
      v73 = v145;
    }

    type metadata accessor for HUScheduleAccessViewController(v81);
    v102 = sub_25457C2CC(v141, 1);
    type metadata accessor for ScheduleRuleList();
    swift_allocObject();
    ScheduleRuleList.init(rules:)(v102);
    v103 = v146;
    v104 = sub_25459A650();
    sub_254581F58(&qword_27F605000, type metadata accessor for ScheduleRuleList);

    v105 = sub_25459A320();
    v107 = v106;

    v108 = v139 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList;
    v109 = *(v139 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16);
    v111 = *(v139 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32);
    v110 = *(v139 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48);
    v155 = *(v139 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList);
    v156 = v109;
    v157 = v111;
    v158 = v110;
    *v108 = v105;
    *(v108 + 1) = v107;
    *(v108 + 2) = v104;
    *(v108 + 3) = 0;
    *(v108 + 4) = v73;
    v108[40] = 1;
    *(v108 + 6) = 0;
    *(v108 + 7) = 0;
    sub_254579D40(&v155, &qword_27F605008, &qword_25459CC10);
    v112 = v152;
    goto LABEL_19;
  }

LABEL_13:
  v86 = v144;
  v87 = v140;
  sub_25459A230();
  v88 = v138;
  v135(v138, v137, v51);
  v89 = v27;
  v90 = sub_25459A210();
  v91 = sub_25459A950();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *&v155 = v148;
    *v92 = 138413058;
    *(v92 + 4) = v89;
    *v93 = v89;
    *(v92 + 12) = 2080;
    v94 = v89;
    v95 = v89;
    *(v92 + 14) = sub_254581894(0xD00000000000002FLL, 0x800000025459EDF0, &v155);
    *(v92 + 22) = 2080;
    sub_254581F58(&qword_27F605038, MEMORY[0x277CC95F0]);
    v96 = sub_25459AB50();
    v98 = v97;
    v134(v88, v51);
    v99 = sub_254581894(v96, v98, &v155);
    v89 = v94;

    *(v92 + 24) = v99;
    *(v92 + 32) = 2112;
    *(v92 + 34) = 0;
    v93[1] = 0;
    _os_log_impl(&dword_254573000, v90, v91, "%@%s Unable to find home with id=%s as %@", v92, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
    swift_arrayDestroy();
    MEMORY[0x259C11390](v93, -1, -1);
    v100 = v148;
    swift_arrayDestroy();
    MEMORY[0x259C11390](v100, -1, -1);
    MEMORY[0x259C11390](v92, -1, -1);

    v101 = v140;
  }

  else
  {

    v134(v88, v51);
    v101 = v87;
  }

  v143(v101, v147);
  type metadata accessor for ScheduleRuleList();
  swift_allocObject();
  ScheduleRuleList.init(rules:)(MEMORY[0x277D84F90]);
  v113 = v146;
  v114 = sub_25459A650();
  sub_254581F58(&qword_27F605000, type metadata accessor for ScheduleRuleList);
  v115 = v145;

  v116 = sub_25459A320();
  v117 = &v89[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v118 = *&v89[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v119 = *&v89[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v120 = *&v89[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  v157 = *&v89[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v158 = v120;
  v155 = v118;
  v156 = v119;
  *v117 = v116;
  *(v117 + 1) = v121;
  *(v117 + 2) = v114;
  *(v117 + 3) = 0;
  *(v117 + 4) = v115;
  v117[40] = 1;
  *(v117 + 6) = 0;
  *(v117 + 7) = 0;
  sub_254579D40(&v155, &qword_27F605008, &qword_25459CC10);
  v112 = v152;
  v83 = v149;
LABEL_19:
  v122 = &v112[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v123 = *&v112[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  v125 = *&v112[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v124 = *&v112[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v157 = *&v112[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v158 = v123;
  v155 = v125;
  v156 = v124;
  if (*(&v125 + 1))
  {
    v153[4] = __PAIR128__(*(&v125 + 1), v155);
    v126 = *(v122 + 1);
    v127 = *(v122 + 3);
    v153[6] = *(v122 + 2);
    v153[7] = v127;
    v153[5] = v126;
    v128 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605010, &qword_25459CC18));
    v154[0] = v155;
    v154[1] = v156;
    v154[2] = v157;
    v154[3] = v158;
    sub_254579BF8(&v155, v153, &qword_27F605008, &qword_25459CC10);
    sub_25457BE14(v154, v153);
    v129 = sub_25459A400();

    sub_254579D40(&v155, &qword_27F605008, &qword_25459CC10);
    v130 = *&v112[OBJC_IVAR___HUScheduleAccessViewController_hostingController];
    *&v112[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = v129;
  }

  else
  {
  }
}

uint64_t sub_25457F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_25459A8A0();
  v7[9] = sub_25459A890();
  v9 = sub_25459A880();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x2822009F8](sub_25457F2BC, v9, v8);
}

uint64_t sub_25457F2BC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_25457F3AC;

    return sub_25457F714();
  }

  else
  {
    v5 = v0[9];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_25457F3AC(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
    v9 = sub_25457F560;
  }

  else
  {

    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
    v9 = sub_25457F4D4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_25457F4D4()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];

  sub_25457E498(v5, v4, v3);
  sub_25457D260();

  v6 = v0[1];

  return v6();
}

uint64_t sub_25457F560()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_25457F5D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25459A1B0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_254582804;

  return sub_25457F220(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_25457F714()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = sub_25459A8A0();
  v1[7] = sub_25459A890();
  v4 = sub_25459A880();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_25457F7E8, v4, v3);
}

uint64_t sub_25457F7E8()
{
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 homeManager];

  if (v2)
  {
    v3 = v0[7];

    v4 = v0[5];

    v5 = v0[1];

    return v5(v2);
  }

  else
  {
    v7 = v0[4];
    v8 = OBJC_IVAR___HUScheduleAccessViewController_task;
    v0[10] = OBJC_IVAR___HUScheduleAccessViewController_task;
    v9 = *&v7[v8];
    v0[11] = v9;
    if (v9)
    {
      v10 = *(MEMORY[0x277D857C8] + 4);

      v11 = swift_task_alloc();
      v0[12] = v11;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605048, &qword_25459CC68);
      *v11 = v0;
      v11[1] = sub_25457FAD8;
      v14 = MEMORY[0x277D84950];
      v15 = v0 + 3;
    }

    else
    {
      v16 = v0[5];
      v17 = v0[6];
      sub_25459A8B0();
      v18 = sub_25459A8D0();
      (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
      v19 = v7;
      v20 = sub_25459A890();
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D85700];
      v21[2] = v20;
      v21[3] = v22;
      v21[4] = v19;
      v9 = sub_254580224(0, 0, v16, &unk_25459CC58, v21);
      v0[14] = v9;
      v23 = *&v7[v8];
      *&v7[v8] = v9;

      v24 = *(MEMORY[0x277D857C8] + 4);
      v25 = swift_task_alloc();
      v0[15] = v25;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605048, &qword_25459CC68);
      *v25 = v0;
      v25[1] = sub_25457FC94;
      v14 = MEMORY[0x277D84950];
      v15 = v0 + 2;
    }

    return MEMORY[0x282200430](v15, v9, v12, v13, v14);
  }
}

uint64_t sub_25457FAD8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_25457FE6C;
  }

  else
  {
    v7 = sub_25457FC14;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25457FC14()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[3];
  v4 = v0[5];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_25457FC94()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_25457FEE4;
  }

  else
  {
    v7 = sub_25457FDD0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25457FDD0()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[2];
  v6 = *(v4 + v2);
  *(v4 + v2) = 0;

  v7 = v0[5];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_25457FE6C()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[13];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25457FEE4()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = *(v4 + v2);
  *(v4 + v2) = 0;

  v6 = v0[16];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25457FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_254579BF8(a3, v24 - v10, &qword_27F605018, &qword_25459CC20);
  v12 = sub_25459A8D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_254579D40(v11, &qword_27F605018, &qword_25459CC20);
  }

  else
  {
    sub_25459A8C0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25459A880();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25459A750() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);

      return v22;
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

  sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_254580224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_254579BF8(a3, v24 - v10, &qword_27F605018, &qword_25459CC20);
  v12 = sub_25459A8D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_254579D40(v11, &qword_27F605018, &qword_25459CC20);
  }

  else
  {
    sub_25459A8C0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25459A880();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25459A750() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);

      return v22;
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

  sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void HUScheduleAccessViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_task) = 0;
  sub_25459AAE0();
  __break(1u);
}

void __swiftcall HUScheduleAccessViewController.init(nibName:bundle:)(HUScheduleAccessViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_25459A730();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

void HUScheduleAccessViewController.init(nibName:bundle:)()
{
  v1 = (v0 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_task) = 0;
  sub_25459AAE0();
  __break(1u);
}

Swift::Void __swiftcall HUScheduleAccessViewController.viewDidLoad()()
{
  v9.super_class = HUScheduleAccessViewController;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = sub_25459A730();
  v2 = HFLocalizedString();

  if (!v2)
  {
    sub_25459A740();
    v2 = sub_25459A730();
  }

  [v0 setTitle_];

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      v8 = sub_25459A730();
      [v7 setAccessibilityIdentifier_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_254580BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_25459A220();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  sub_25459A8A0();
  v4[9] = sub_25459A890();
  v9 = sub_25459A880();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x2822009F8](sub_254580CFC, v9, v8);
}

uint64_t sub_254580CFC()
{
  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = qword_27F606340;
  v0[12] = qword_27F606340;
  v3 = v2;
  sub_25459A230();
  v4 = sub_25459A210();
  v5 = sub_25459A950();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_254573000, v4, v5, "HMHomeManager is nil! Attempting to load homes to create the manager!", v6, 2u);
    MEMORY[0x259C11390](v6, -1, -1);
  }

  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];

  v10 = *(v9 + 8);
  v0[13] = v10;
  v10(v7, v8);
  v11 = objc_opt_self();
  v0[14] = v11;
  v0[15] = [v11 sharedDispatcher];
  sub_25459A240();
  v13 = v12;
  v14 = *(MEMORY[0x277D132E8] + 4);
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_254580EB0;
  v16.n128_u64[0] = v13;

  return MEMORY[0x28216DC48](v16);
}

uint64_t sub_254580EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_254581338;
  }

  else
  {
    v7 = v2[15];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_254580FE0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_254580FE0()
{
  v40 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = [v1 sharedDispatcher];
  v5 = [v4 homeManager];

  v6 = v2;
  v7 = *(v0 + 96);
  v8 = *(v0 + 24);
  if (v5)
  {
    v9 = *(v0 + 56);
    sub_25459A230();
    v10 = v8;
    v11 = sub_25459A210();
    v12 = sub_25459A950();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 104);
    v15 = *(v0 + 56);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    if (v13)
    {
      v18 = *(v0 + 24);
      v38 = v5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v15;
      v21 = swift_slowAlloc();
      v39 = v21;
      *v19 = 138412546;
      *(v19 + 4) = v18;
      *v20 = v18;
      *(v19 + 12) = 2080;
      v36 = v14;
      v22 = v18;
      *(v19 + 14) = sub_254581894(0xD000000000000010, 0x800000025459EE20, &v39);
      v23 = "%@%s Successfully created HMHomeManager!";
LABEL_6:
      _os_log_impl(&dword_254573000, v11, v12, v23, v19, 0x16u);
      sub_254579D40(v20, &qword_27F605020, &qword_25459CC38);
      MEMORY[0x259C11390](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C11390](v21, -1, -1);
      v30 = v19;
      v5 = v38;
      MEMORY[0x259C11390](v30, -1, -1);

      v36(v37, v17);
      goto LABEL_8;
    }
  }

  else
  {
    v24 = *(v0 + 48);
    sub_25459A230();
    v25 = v8;
    v11 = sub_25459A210();
    v12 = sub_25459A950();

    v26 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 104);
    v27 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    if (v26)
    {
      v28 = *(v0 + 24);
      v38 = 0;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v15;
      v21 = swift_slowAlloc();
      v39 = v21;
      *v19 = 138412546;
      *(v19 + 4) = v28;
      *v20 = v28;
      *(v19 + 12) = 2080;
      v36 = v14;
      v29 = v28;
      *(v19 + 14) = sub_254581894(0xD000000000000010, 0x800000025459EE20, &v39);
      v23 = "%@%s HMHomeManager is still nil! Unexpected!";
      goto LABEL_6;
    }
  }

  v14(v15, v17);
LABEL_8:
  v32 = *(v0 + 56);
  v31 = *(v0 + 64);
  v33 = *(v0 + 48);
  **(v0 + 16) = v5;

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_254581338()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  v5 = *(v0 + 8);
  v6 = *(v0 + 136);

  return v5();
}

char *sub_254581438(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25459A9E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2545822C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C10840](i, a1);
        sub_254582148(0, &qword_27F605060, 0x277D14A18);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2545822C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2545824C0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_254582148(0, &qword_27F605060, 0x277D14A18);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2545822C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2545824C0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

size_t sub_254581634(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605070, &qword_25459CC78);
  v10 = *(type metadata accessor for ScheduleRuleDisplayInfo() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ScheduleRuleDisplayInfo() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25458180C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605050, &qword_25459CC70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_254581894(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254581960(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_254581EF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_254581960(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254581A6C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_25459AA50();
    a6 = v11;
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

uint64_t sub_254581A6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_254581AB8(a1, a2);
  sub_254581BE8(&unk_286673610);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_254581AB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_254581CD4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25459AA50();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25459A780();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_254581CD4(v10, 0);
        result = sub_25459AA00();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_254581BE8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_254581D48(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_254581CD4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605030, &qword_25459CC40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_254581D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605030, &qword_25459CC40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_254581E88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_254581EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254581F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254581FA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254582054;

  return sub_254580BF0(a1, v4, v5, v6);
}

uint64_t sub_254582054()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_254582148(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_254582190()
{
  result = qword_27F605068;
  if (!qword_27F605068)
  {
    sub_254582148(255, &qword_27F605060, 0x277D14A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605068);
  }

  return result;
}

void *sub_2545821F8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_25459A9E0();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_25458180C(v2, 0);

    v1 = sub_2545825E0(&v5, v3 + 4, v2, v1);
    sub_2545827FC();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

size_t sub_2545822A8(size_t a1, int64_t a2, char a3)
{
  result = sub_2545822E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2545822C8(char *a1, int64_t a2, char a3)
{
  result = sub_2545824D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545822E8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605070, &qword_25459CC78);
  v10 = *(type metadata accessor for ScheduleRuleDisplayInfo() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ScheduleRuleDisplayInfo() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

_OWORD *sub_2545824C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_2545824D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605078, &qword_25459CC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_2545825E0(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_25459A9D0();
  sub_254582148(0, &qword_27F605060, 0x277D14A18);
  sub_254582190();
  result = sub_25459A910();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_25459A9F0())
      {
        goto LABEL_30;
      }

      sub_254582148(0, &qword_27F605060, 0x277D14A18);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_254582808()
{
  sub_254582868();
  result = sub_25459A990();
  qword_27F606340 = result;
  return result;
}

unint64_t sub_254582868()
{
  result = qword_27F605080;
  if (!qword_27F605080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F605080);
  }

  return result;
}

uint64_t sub_2545828B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 6710863;
    }

    else
    {
      v3 = 0x6F6C6F432066664FLL;
    }

    if (v2 == 2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE900000000000072;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6574696857206E4FLL;
    }

    else
    {
      v3 = 28239;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 28239;
  v7 = 0xE300000000000000;
  v8 = 6710863;
  if (a2 != 2)
  {
    v8 = 0x6F6C6F432066664FLL;
    v7 = 0xE900000000000072;
  }

  if (a2)
  {
    v6 = 0x6574696857206E4FLL;
    v5 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25459AB70();
  }

  return v11 & 1;
}

uint64_t AnimatedIcon.init(iconKind:iconState:size:useAssetMarginSize:removeColor:rasterizationScale:)@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v16 = *a1;
  v17 = *a2;
  v18 = type metadata accessor for AnimatedIcon(0);
  v19 = v18[5];
  type metadata accessor for AnimatedIcon.Model(0);
  sub_25459A6C0();
  v20 = v18[6];
  *(a7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  swift_storeEnumTagMultiPayload();
  v21 = a7 + v18[7];
  result = swift_getKeyPath();
  *v21 = result;
  *(v21 + 8) = 0;
  *a7 = v16;
  *(a7 + 1) = v17;
  *(a7 + 8) = a8;
  *(a7 + 16) = a9;
  *(a7 + 24) = a3;
  *(a7 + 25) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t AnimatedIcon.body.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v59 = sub_25459A2D0();
  v60 = *(v59 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnimatedIcon(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605090, &qword_25459CD08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605098, &qword_25459CD10);
  v56 = *(v55 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v63 = &v49 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A0, &qword_25459CD18);
  v58 = *(v57 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v64 = &v49 - v15;
  v16 = *v1;
  v17 = *(v1 + 8);
  v18 = *(v1 + 16);
  v73 = *(v1 + 24);
  v74 = *(v1 + 40);
  type metadata accessor for AnimatedIconLayer();
  v19 = swift_allocObject();
  v20 = *(v5 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
  v62 = v1;
  sub_25459A6D0();
  swift_weakInit();

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v16;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  *(v21 + 48) = v73;
  *(v21 + 64) = v74;
  sub_25459A300();
  sub_25459A6B0();
  sub_25459A310();
  v50 = v8;
  v22 = &v11[*(v8 + 36)];
  v23 = v71;
  *v22 = v70;
  *(v22 + 1) = v23;
  v24 = v73;
  *(v22 + 2) = v72;
  v65 = v16;
  v66 = v17;
  v67 = v18;
  v68 = v24;
  v69 = v74;
  v25 = v53;
  sub_254587324(v1, v53);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v51 = v26;
  v29 = v25;
  sub_254587394(v25, v28 + v26);
  v30 = v28 + v27;
  *v30 = v16;
  v52 = v16;
  *(v30 + 8) = v17;
  *(v30 + 16) = v18;
  *(v30 + 24) = v73;
  *(v30 + 40) = v74;
  v31 = sub_254587400();
  v32 = sub_2545874B8();
  sub_25459A630();

  sub_254579D40(v11, &qword_27F605090, &qword_25459CD08);
  v33 = v54;
  v34 = v62;
  sub_254583348(v54);
  sub_254587324(v34, v29);
  v35 = swift_allocObject();
  sub_254587394(v29, v35 + v26);
  v36 = v35 + v27;
  *v36 = v16;
  *(v36 + 8) = v17;
  *(v36 + 16) = v18;
  *(v36 + 24) = v73;
  *(v36 + 40) = v74;
  v65 = v50;
  v66 = &type metadata for AnimatedIcon.Configuration;
  v67 = v31;
  *&v68 = v32;
  v50 = MEMORY[0x277CE0E40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_254588B04(&qword_27F6050D8, MEMORY[0x277CDD6C8]);
  v39 = v63;
  v40 = v33;
  v41 = v55;
  v42 = v59;
  sub_25459A630();

  (*(v60 + 8))(v40, v42);
  v43 = v41;
  (*(v56 + 8))(v39, v41);
  sub_254587324(v62, v29);
  v44 = swift_allocObject();
  sub_254587394(v29, v44 + v51);
  v45 = v44 + v27;
  *v45 = v52;
  *(v45 + 8) = v17;
  *(v45 + 16) = v18;
  *(v45 + 24) = v73;
  *(v45 + 40) = v74;
  v65 = v43;
  v66 = v42;
  v67 = OpaqueTypeConformance2;
  *&v68 = v38;
  swift_getOpaqueTypeConformance2();
  v46 = v57;
  v47 = v64;
  sub_25459A620();

  return (*(v58 + 8))(v47, v46);
}

uint64_t sub_25458325C(void *a1, uint64_t a2, uint64_t *a3)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2545848EC(a3, 2, 2, a1);
  }
}

uint64_t sub_254583348@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25459A3B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AnimatedIcon(0);
  sub_254588CE4(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25459A2D0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25459A940();
    v16 = sub_25459A520();
    sub_25459A200();

    sub_25459A3A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_254583538(uint64_t a1, __int128 *a2)
{
  v3 = sub_25459A2D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-1] - v9;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(type metadata accessor for AnimatedIcon(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
  sub_25459A6D0();
  v12 = a2[1];
  v15 = *a2;
  v16[0] = v12;
  *(v16 + 9) = *(a2 + 25);
  sub_254583348(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDD6B8], v3);
  LOBYTE(v11) = sub_25459A2C0();
  v13 = *(v4 + 8);
  v13(v8, v3);
  v13(v10, v3);
  sub_2545848EC(&v15, 2, v11 & 1, 0);
}

uint64_t sub_254583754(char a1, uint64_t a2, uint64_t *a3)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(type metadata accessor for AnimatedIcon(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
  sub_25459A6D0();
  sub_2545848EC(a3, a1 & 1, 2, 0);
}

uint64_t sub_254583844(uint64_t a1)
{
  v2 = sub_25459A2D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25459A340();
}

__n128 sub_254583914@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

__n128 sub_2545839CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  result = *(v3 + 16);
  v7 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_254583A84(uint64_t result)
{
  v2 = *(result + 16);
  v18 = *result;
  *v19 = v2;
  *&v19[9] = *(result + 25);
  v3 = *(v1 + 40);
  if (v3 != 2)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 48);
    v6 = *(v1 + 32);
    v13 = *(v1 + 16);
    v14 = v6;
    v15 = v3;
    v16 = v5;
    v17 = v4;
    if (v19[8] == 2)
    {
      goto LABEL_7;
    }

    v9 = v18;
    v10 = *v19;
    v11 = *&v19[8];
    v12 = v19[24];
    result = sub_25458893C(&v13, &v9);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = *v19;
    *(v1 + 16) = v18;
    *(v1 + 32) = v7;
    *(v1 + 41) = *&v19[9];
    return result;
  }

  if (v19[8] == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v13 = v1;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1C0();
}

id sub_254583C28@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v3;

  return v3;
}

id sub_254583CE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;

  return v4;
}

uint64_t sub_254583D98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1C0();
}

void *sub_254583E68()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_254583F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_254583FC8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F605188, 0x277CD9FB8);
  v5 = v4;
  v6 = a1;
  v7 = sub_25459A980();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

uint64_t sub_254584158()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  return *(v0 + 88);
}

uint64_t sub_2545841F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_2545842A0(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
    sub_25459A1C0();
  }

  return result;
}

uint64_t sub_2545843B0()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  return *(v0 + 89);
}

uint64_t sub_254584450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_2545844F8(uint64_t result)
{
  if (*(v1 + 89) == (result & 1))
  {
    *(v1 + 89) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
    sub_25459A1C0();
  }

  return result;
}

uint64_t sub_254584608()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2545846AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_254584758(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
    sub_25459A1C0();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for AnimatedIconLayer();
  v3 = v2;
  v4 = sub_25459A980();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void sub_2545848EC(uint64_t *a1, char a2, int a3, void *a4)
{
  v5 = v4;
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v44 = a1[4];
  v43 = *(a1 + 40);
  swift_getKeyPath();
  *&v51 = v4;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  if (*(v4 + 40) == 2)
  {
    if (v8 == 93)
    {
      v11 = 93;
LABEL_5:
      v41 = v11 == 93;
      goto LABEL_13;
    }

LABEL_7:
    v41 = 0;
    goto LABEL_13;
  }

  v11 = *(v4 + 16);
  if (v8 == 93)
  {
    goto LABEL_5;
  }

  if (v11 == 93)
  {
    goto LABEL_7;
  }

  v40 = v7;
  v12 = sub_254586C6C(v8);
  v14 = v13;
  if (v12 == sub_254586C6C(v11) && v14 == v15)
  {

    v41 = 1;
  }

  else
  {
    v41 = sub_25459AB70();
  }

  v7 = v40;
LABEL_13:
  if (a2 == 2)
  {
    swift_getKeyPath();
    *&v51 = v5;
    sub_25459A1D0();

    a2 = *(v5 + 88);
  }

  Strong = a4;
  if (!a4)
  {
    swift_getKeyPath();
    *&v51 = v5;
    sub_25459A1D0();

    Strong = swift_unknownObjectWeakLoadStrong();
  }

  if (a3 == 2)
  {
    v16 = a4;
    if (a2)
    {
      v17 = 0;
      if ((v41 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_30:
      swift_getKeyPath();
      *&v51 = v5;
      sub_25459A1D0();

      if (!*(v5 + 72))
      {
        goto LABEL_31;
      }

LABEL_37:
      v42 = 1;
      goto LABEL_38;
    }

    v17 = 0;
LABEL_36:
    sub_2545858F8();
    goto LABEL_37;
  }

  sub_25459A8A0();
  v18 = a4;
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    swift_getKeyPath();
    *&v51 = v5;
    sub_25459A1D0();

    v19 = *(v5 + 89);

    v17 = v19 ^ 1;
    if ((a2 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if ((a2 & 1) == 0)
    {
      v17 = 0;
      goto LABEL_36;
    }

    v17 = 0;
  }

  if (v41)
  {
    goto LABEL_30;
  }

LABEL_31:
  swift_getKeyPath();
  *&v51 = v5;
  sub_25459A1D0();

  if (*(v5 + 72))
  {
    sub_2545858F8();
  }

  LOBYTE(v51) = v8;
  sub_25458565C(&v51);
  v42 = 0;
LABEL_38:
  swift_getKeyPath();
  *&v51 = v5;
  sub_25459A1D0();

  v20 = *(v5 + 72);
  if (!v20)
  {
    goto LABEL_49;
  }

  v21 = v20;
  v22 = [v21 rootLayer];
  if (!v22)
  {
    if (!Strong)
    {
LABEL_47:
      v29 = Strong;

      goto LABEL_49;
    }

LABEL_45:
    *&v51 = v8;
    *(&v51 + 1) = v7;
    *v52 = v10;
    *&v52[8] = v9;
    *&v52[16] = v44;
    v52[24] = v43;
    v27 = v21;
    v28 = Strong;
    sub_2545860D0(v27, &v51);

    goto LABEL_49;
  }

  v23 = v10;
  v24 = v7;
  v25 = v22;
  v26 = [v22 superlayer];

  v7 = v24;
  if (!v26)
  {
    v10 = v23;
    if (!Strong)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (Strong)
  {
    swift_unknownObjectRelease();
    v10 = v23;
    if (Strong == v26)
    {

      goto LABEL_49;
    }

    goto LABEL_45;
  }

  v30 = 0;

  swift_unknownObjectRelease();
  v10 = v23;
LABEL_49:
  *&v49 = v8;
  *(&v49 + 1) = v7;
  *v50 = v10;
  *&v50[8] = v9;
  *&v50[16] = v44;
  v50[24] = v43;
  v31 = *(v5 + 32);
  v51 = *(v5 + 16);
  *v52 = v31;
  *&v52[9] = *(v5 + 41);
  if (sub_254588BA0(&v51, &v49))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v48 = v5;
    sub_25459A1C0();
  }

  else
  {
    v33 = *v50;
    *(v5 + 16) = v49;
    *(v5 + 32) = v33;
    *(v5 + 41) = *&v50[9];
  }

  if ((a2 & 1) == *(v5 + 88))
  {
    *(v5 + 88) = a2 & 1;
  }

  else
  {
    v34 = swift_getKeyPath();
    MEMORY[0x28223BE20](v34);
    v48 = v5;
    sub_25459A1C0();
  }

  if (a3 == 2)
  {
    swift_getKeyPath();
    v48 = v5;
    sub_25459A1D0();

    v35 = *(v5 + 89);
    a3 = v35;
  }

  else
  {
    v35 = *(v5 + 89);
  }

  if ((a3 ^ v35))
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36);
    v48 = v5;
    sub_25459A1C0();
  }

  else
  {
    *(v5 + 89) = a3 & 1;
  }

  v37 = Strong;
  sub_254584758(Strong);
  if (v17 & 1) != 0 && (LOBYTE(v48) = BYTE1(v8), (sub_254585198()))
  {
    if ((v8 - 17) < 4u)
    {
      v38 = 1;
    }

    else
    {
      v38 = v42;
    }

    if ((v8 - 17) <= 3u)
    {
      LOBYTE(v48) = 2;
      v39 = v38;
      sub_2545852B8(0, &v48);
      v38 = v39;
    }
  }

  else if ((v8 - 17) < 4u)
  {
    v38 = 1;
  }

  else
  {
    v38 = v42;
  }

  LOBYTE(v48) = 4;
  sub_2545852B8(v38, &v48);
}

uint64_t sub_254585198()
{
  v1 = *v0;
  if (v1 <= 1 && !*v0)
  {
    v2 = 1;
LABEL_9:

    return v2 & 1;
  }

  v3 = sub_25459AB70();

  if ((v3 & 1) == 0)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_25459AB70();
    }

    goto LABEL_9;
  }

  v2 = 1;
  return v2 & 1;
}

void sub_2545852B8(char a1, unsigned __int8 *a2)
{
  v4 = *a2;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v5 = *(v2 + 80);
  if (v5)
  {
    swift_getKeyPath();
    v6 = v5;
    sub_25459A1D0();

    v7 = *(v2 + 72);
    if (!v7)
    {
LABEL_22:

      return;
    }

    if (v4 == 4)
    {
      swift_getKeyPath();
      v8 = v7;
      sub_25459A1D0();

      if (*(v2 + 40) == 2)
      {
        goto LABEL_21;
      }

      v9 = *(v2 + 17);
    }

    else
    {
      v10 = v7;
    }

    v11 = [v7 rootLayer];
    if (v11)
    {
      v8 = v11;
      v12 = sub_25459A730();

      v13 = [v8 stateWithName_];

      if (!v13)
      {
        v14 = v7;
LABEL_20:

        v6 = v14;
        goto LABEL_21;
      }

      v14 = v8;
      v15 = [v6 stateOfLayer_];
      if (v15)
      {
        v16 = v15;
        sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
        v17 = v13;
        v18 = sub_25459A980();

        if (v18)
        {
          v19 = v7;

          v20 = v14;
          v7 = v14;
          v14 = v19;
          v13 = v6;
LABEL_19:

          v6 = v7;
          v8 = v13;
          goto LABEL_20;
        }
      }

      else
      {
        v21 = v13;
      }

      if ((a1 & 1) == 0 || (v22 = [objc_opt_self() areAnimationsEnabled], LODWORD(v23) = 1.0, (v22 & 1) == 0))
      {
        v23 = 0.0;
      }

      [v6 setState:v13 ofLayer:v14 transitionSpeed:v23];

      [v6 cancelTimers];
      v20 = v6;
      goto LABEL_19;
    }

    v8 = v7;
LABEL_21:

    v6 = v8;
    goto LABEL_22;
  }
}

uint64_t AnimatedIcon.IconState.rawValue.getter()
{
  v1 = 28239;
  v2 = 6710863;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F432066664FLL;
  }

  if (*v0)
  {
    v1 = 0x6574696857206E4FLL;
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

void sub_25458565C(char *a1)
{
  v2 = *a1;
  if (qword_27F604BA0 != -1)
  {
    swift_once();
  }

  v3 = sub_254586AC8();
  v4 = sub_254586B18(v12, v2);
  if (*v5)
  {
    v6 = sub_254586BDC();
    (v4)(v12, 0);
    (v3)(v13, 0);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v4)(v12, 0);
    (v3)(v13, 0);
  }

  sub_254586C6C(v2);
  v6 = _s12HomeUICommon19MicaPackageProviderC4loadySo9CAPackageCSgSSF_0();

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v13[0] = v1;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1C0();

  swift_getKeyPath();
  v13[0] = v1;
  sub_25459A1D0();

  v8 = *(v1 + 72);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 rootLayer];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];

  sub_254583FC8(v11);
}

void sub_2545858F8()
{
  v1 = v0;
  swift_getKeyPath();
  *&v10 = v0;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model);
  sub_25459A1D0();

  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = v2;
    v5 = [v4 rootLayer];
    [v5 removeFromSuperlayer];

    swift_getKeyPath();
    *&v10 = v1;
    sub_25459A1D0();

    v6 = *(v1 + 80);
    if (v6)
    {
      if ([v6 removeAllStateChanges])
      {
        sub_25459A9B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 0u;
        v9 = 0u;
      }

      v10 = v8;
      v11 = v9;
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    sub_254579D40(&v10, &qword_27F605158, &qword_25459CFF8);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v10 = v1;
    sub_25459A1C0();

    if (qword_27F604BA0 != -1)
    {
      swift_once();
    }

    sub_254585B4C(v3, v4);
  }
}

unint64_t sub_254585B4C(char a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = a2;
  v7 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 24);
  *(v3 + 24) = 0x8000000000000000;
  result = sub_254588354(a1);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2545880A8(v15, isUniquelyReferenced_nonNull_native);
    result = sub_254588354(a1);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605170, &qword_25459D050);
    result = sub_25459ABA0();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *(v3 + 24) = v9;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v21 = result;
  sub_254588688();
  result = v21;
  *(v3 + 24) = v9;
  if (v16)
  {
LABEL_9:
    v20 = (v9[7] + 8 * result);
    MEMORY[0x259C105D0]();
    if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_25459A830();
      return swift_endAccess();
    }

LABEL_12:
    sub_25459A800();
    goto LABEL_10;
  }

LABEL_7:
  v9[(result >> 6) + 8] |= 1 << result;
  *(v9[6] + result) = a1;
  *(v9[7] + 8 * result) = MEMORY[0x277D84F90];
  v18 = v9[2];
  v14 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (!v14)
  {
    v9[2] = v19;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_254585D04()
{
  MEMORY[0x259C11450](v0 + 12);
  v1 = OBJC_IVAR____TtCV12HomeUICommon12AnimatedIcon5Model___observationRegistrar;
  v2 = sub_25459A1F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t static AnimatedIcon.IconState.dashboardTreatment(isActivated:canBeToggled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if ((result & 1) == 0)
  {
    a2 = 3;
  }

  *a3 = a2;
  return result;
}

HomeUICommon::AnimatedIcon::IconState_optional __swiftcall AnimatedIcon.IconState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25459AB40();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_254585E40()
{
  v1 = *v0;
  sub_25459ABB0();
  sub_25459A760();

  return sub_25459ABE0();
}

uint64_t sub_254585EF4()
{
  *v0;
  *v0;
  *v0;
  sub_25459A760();
}

uint64_t sub_254585F94()
{
  v1 = *v0;
  sub_25459ABB0();
  sub_25459A760();

  return sub_25459ABE0();
}

void sub_254586050(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 28239;
  v4 = 0xE300000000000000;
  v5 = 6710863;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6F432066664FLL;
    v4 = 0xE900000000000072;
  }

  if (*v1)
  {
    v3 = 0x6574696857206E4FLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_2545860D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize] = v6;
  v10 = &v2[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size];
  *v10 = v4;
  *(v10 + 1) = v5;
  v10[16] = 0;
  v11 = [a1 rootLayer];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 superlayer];
    if (!v13 || (v14 = v13, v13, v14 != v2))
    {
      [v2 addSublayer_];
    }
  }

  if (v7 & 1 | ((v9 & 1) == 0))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    v17[4] = sub_254588A9C;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_25458649C;
    v17[3] = &block_descriptor;
    v16 = _Block_copy(v17);

    [a1 foreachLayer_];
    _Block_release(v16);
  }
}

id sub_254586264(void *a1, uint64_t a2, char a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = a1;
    v10 = [v8 whiteColor];
    v11 = [v7 fillColor];
    if (v11)
    {
      v12 = v11;
      Alpha = CGColorGetAlpha(v11);
    }

    else
    {
      Alpha = 0.0;
    }

    v19 = [v10 colorWithAlphaComponent_];

    v20 = [v19 CGColor];
    [v7 setFillColor_];
  }

  else
  {
    v14 = [a1 backgroundColor];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = [objc_opt_self() whiteColor];
    v16 = [a1 backgroundColor];
    if (v16)
    {
      v17 = v16;
      v18 = CGColorGetAlpha(v16);
    }

    else
    {
      v18 = 0.0;
    }

    v21 = [v15 colorWithAlphaComponent_];

    v20 = [v21 CGColor];
    [a1 setBackgroundColor_];
  }

LABEL_12:
  if (a3)
  {
    [a1 rasterizationScale];
  }

  else
  {
    v22 = *&a2;
  }

  return [a1 setRasterizationScale_];
}

void sub_25458649C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_254586504()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for AnimatedIconLayer();
  objc_msgSendSuper2(&v30, sel_layoutSublayers);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong rootLayer];
    if (v3)
    {
      v4 = v3;
      v5 = &v0[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size];
      if ((v0[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size + 16] & 1) == 0)
      {
        v7 = *v5;
        v6 = v5[1];
        v8 = objc_opt_self();
        [v8 begin];
        [v8 setDisableActions_];
        v9 = v0[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize];
        if (v9 != 2 && (v9 & 1) != 0)
        {
          v10 = sub_25459A730();
          v11 = [v2 publishedObjectWithName_];

          if (v11)
          {
            sub_25459A9B0();
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0u;
            v28 = 0u;
          }

          *&v29.m11 = v27;
          *&v29.m13 = v28;
          if (*(&v28 + 1))
          {
            sub_254582148(0, &qword_27F605160, 0x277CD9ED0);
            if (swift_dynamicCast())
            {
              [v26 bounds];
              Height = CGRectGetHeight(v31);
              [v26 bounds];
              Width = CGRectGetWidth(v32);
              [v4 bounds];
              v15 = v14;
              v17 = v16;
              [v26 bounds];
              v20 = v15 - v19;
              if (Width < Height)
              {
                v20 = v17 - v18;
              }

              v21 = v20 * 0.5;
              [v4 bounds];
              v34 = CGRectInset(v33, v21, v21);
              [v4 setBounds_];
            }
          }

          else
          {
            sub_254579D40(&v29, &qword_27F605158, &qword_25459CFF8);
          }
        }

        [v4 bounds];
        if (v6 / v23 >= v7 / v22)
        {
          v24 = v7 / v22;
        }

        else
        {
          v24 = v6 / v23;
        }

        [v0 bounds];
        MidX = CGRectGetMidX(v35);
        [v0 bounds];
        [v4 setPosition_];
        CATransform3DMakeScale(&v29, v24, v24, 1.0);
        [v4 setTransform_];
        [v4 setGeometryFlipped_];
        [v8 commit];
      }
    }

    else
    {
      v4 = v2;
    }
  }
}

id sub_2545869B8(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize] = 2;
  v3 = &v1[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AnimatedIconLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_254586A84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedIconLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_254586B18(uint64_t **a1, char a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_254587D70(v4, a2);
  return sub_254586B90;
}

void sub_254586B90(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_254586BDC()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_254588874();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_25459A9E0();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_2545887E4(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_2545887E4(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_25459A9E0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_254586C6C(char a1)
{
  result = 0xD000000000000022;
  switch(a1)
  {
    case 1:
    case 4:
    case 15:
    case 31:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 62:
    case 65:
      result = 0xD000000000000024;
      break;
    case 2:
    case 5:
    case 10:
    case 21:
    case 28:
    case 63:
    case 81:
      result = 0xD000000000000025;
      break;
    case 3:
    case 11:
    case 12:
    case 17:
    case 22:
    case 27:
    case 30:
    case 34:
    case 38:
    case 41:
    case 49:
    case 61:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000002BLL;
      break;
    case 7:
    case 67:
      result = 0xD00000000000001FLL;
      break;
    case 8:
    case 19:
    case 35:
      result = 0xD000000000000020;
      break;
    case 9:
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 13:
    case 18:
    case 39:
    case 56:
      result = 0xD00000000000002CLL;
      break;
    case 16:
    case 57:
    case 68:
    case 74:
      result = 0xD00000000000002DLL;
      break;
    case 20:
    case 24:
    case 36:
    case 50:
    case 51:
      result = 0xD000000000000021;
      break;
    case 23:
    case 29:
    case 52:
    case 55:
    case 84:
      result = 0xD000000000000029;
      break;
    case 32:
    case 37:
    case 54:
    case 58:
    case 59:
    case 73:
    case 83:
      result = 0xD000000000000026;
      break;
    case 33:
    case 53:
    case 60:
    case 82:
    case 85:
    case 91:
      result = 0xD000000000000027;
      break;
    case 40:
    case 80:
      result = 0xD000000000000031;
      break;
    case 64:
    case 70:
    case 72:
    case 92:
      result = 0xD000000000000028;
      break;
    case 66:
      result = 0xD00000000000002ALL;
      break;
    case 71:
      result = 0xD000000000000030;
      break;
    case 75:
    case 88:
      result = 0xD000000000000037;
      break;
    case 76:
    case 89:
      result = 0xD000000000000035;
      break;
    case 77:
      result = 0xD00000000000002FLL;
      break;
    case 78:
      result = 0xD000000000000033;
      break;
    case 79:
    case 86:
      result = 0xD000000000000032;
      break;
    case 87:
    case 90:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25458721C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AnimatedIcon.Model(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 40) = xmmword_25459CC90;
  *(v5 + 56) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 88) = 256;
  swift_unknownObjectWeakInit();
  result = sub_25459A1E0();
  *a1 = v5;
  return result;
}

uint64_t sub_2545872BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254587324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254587388(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_254587394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254587400()
{
  result = qword_27F6050B8;
  if (!qword_27F6050B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605090, &qword_25459CD08);
    sub_254579EC0(&qword_27F6050C0, &qword_27F6050C8, &qword_25459CD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6050B8);
  }

  return result;
}

unint64_t sub_2545874B8()
{
  result = qword_27F6050D0;
  if (!qword_27F6050D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6050D0);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for AnimatedIcon(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = v0 + v4 + v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050B0, &qword_25459CD28);
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20) + 28));

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_25459A2D0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  sub_254587388(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 41, v2 | 7);
}

uint64_t sub_2545876C0()
{
  v1 = *(type metadata accessor for AnimatedIcon(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_254583538(v0 + v2, (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_254587750(char a1)
{
  v3 = *(type metadata accessor for AnimatedIcon(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_254583754(a1, v1 + v4, v5);
}

unint64_t sub_25458780C()
{
  result = qword_27F6050E0;
  if (!qword_27F6050E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6050E0);
  }

  return result;
}

void sub_2545878CC()
{
  sub_2545879D8(319, &qword_27F605110, type metadata accessor for AnimatedIcon.Model, MEMORY[0x277CE1438]);
  if (v0 <= 0x3F)
  {
    sub_2545879D8(319, &qword_27F605118, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_254587A3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2545879D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_254587A3C()
{
  if (!qword_27F605120)
  {
    v0 = sub_25459A2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F605120);
    }
  }
}

uint64_t sub_254587A94()
{
  result = sub_25459A1F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedIcon.IconState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnimatedIcon.IconState(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254587CBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_254587D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void (*sub_254587D70(uint64_t *a1, char a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_254588074(v6);
  v6[9] = sub_254587E74((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_254587E14;
}

void sub_254587E14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_254587E74(uint64_t a1, char a2, char a3))(uint64_t result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_254588354(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_254588688();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2545880A8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_254588354(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605170, &qword_25459D050);
    result = sub_25459ABA0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_254587F9C;
}

uint64_t sub_254587F9C(uint64_t result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = *(result + 16);
    v5 = **(result + 8);
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_2545883DC(*(result + 16), **(result + 8));
    }

    return result;
  }

  v4 = *(result + 16);
  v5 = **(result + 8);
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_254588074(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25458809C;
}

uint64_t sub_2545880A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605178, &qword_25459D058);
  v33 = a2;
  result = sub_25459AB10();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_25459ABB0();
      sub_254586C6C(v21);
      sub_25459A760();

      result = sub_25459ABE0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_254588354(char a1)
{
  v3 = *(v1 + 40);
  sub_25459ABB0();
  sub_254586C6C(a1);
  sub_25459A760();

  v4 = sub_25459ABE0();

  return sub_254588584(a1, v4);
}

uint64_t sub_2545883DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25459A9C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_25459ABB0();
      sub_254586C6C(v10);
      sub_25459A760();

      result = sub_25459ABE0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_254588584(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_254586C6C(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_254586C6C(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_25459AB70();

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

void *sub_254588688()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605178, &qword_25459D058);
  v2 = *v0;
  v3 = sub_25459AB00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2545887E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2545888D8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_254588874()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2545888D8(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2545888D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25459A9E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_25458893C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 32);
  v25 = *(a1 + 40);
  v8 = *(a2 + 1);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 25);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *a2;
  v16 = sub_254586C6C(*a1);
  v18 = v17;
  if (v16 == sub_254586C6C(v15) && v18 == v19)
  {
  }

  else
  {
    v20 = sub_25459AB70();

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v22 = sub_2545828B4(v2, v8);
  result = 0;
  if (v22)
  {
    v23 = v3 == v9 && v4 == v10;
    if (v23 && ((v5 ^ v11) & 1) == 0 && ((v6 ^ v12) & 1) == 0)
    {
      if (v25)
      {
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == v13)
        {
          v24 = v14;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_254588B04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_254588B64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  v5 = v3;
}

BOOL sub_254588BA0(__int128 *a1, __int128 *a2)
{
  v4 = *(a1 + 3);
  v5 = *(a2 + 24);
  if (v4 == 2)
  {
    return v5 != 2;
  }

  v23 = v2;
  v24 = v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 40);
  v10 = *(a1 + 40);
  v11 = *(a1 + 4);
  v12 = *(a1 + 2);
  v18 = *a1;
  v19 = v12;
  v20 = v4;
  v21 = v11;
  v22 = v10;
  if (v5 == 2)
  {
    v13 = 1;
  }

  else
  {
    v14 = v7;
    v15 = v8;
    v16 = v5;
    v17 = v9;
    v13 = sub_25458893C(&v18, &v14) ^ 1;
  }

  return v13 & 1;
}

__n128 sub_254588C74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 41) = *(v2 + 25);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_254588C8C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

void sub_254588CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

uint64_t sub_254588CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254588DB4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t IconStore.package(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25459A9A0();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = *a1;
  v31 = sub_254589874();
  v35 = v15;
  v36[39] = v15;
  type metadata accessor for IconStore.IconKind();
  v16 = sub_25459A870();
  swift_getWitnessTable();
  sub_25459A6E0();
  v17 = sub_25459A6F0();
  if (*v18)
  {
    WitnessTable = swift_getWitnessTable();
    v20 = swift_getWitnessTable();
    MEMORY[0x259C10730](v16, WitnessTable, v20);
    v17(v36, 0);
    (v31)(v37, 0);
    v21 = *(AssociatedTypeWitness - 8);
    if ((*(v21 + 48))(v12, 1, AssociatedTypeWitness) != 1)
    {
      (*(v21 + 32))(v14, v12, AssociatedTypeWitness);
      v22 = (*(v21 + 56))(v14, 0, 1, AssociatedTypeWitness);
      v24 = v32;
      v23 = v33;
      goto LABEL_7;
    }
  }

  else
  {
    v17(v36, 0);
    (v31)(v37, 0);
    v21 = *(AssociatedTypeWitness - 8);
    (*(v21 + 56))(v12, 1, 1, AssociatedTypeWitness);
  }

  v25 = *(*v3 + 96);
  v37[0] = v35;
  v26 = IconStore.IconKind.rawValue.getter();
  (*(v5 + 16))(v26);

  v22 = (*(v21 + 48))(v12, 1, AssociatedTypeWitness);
  v24 = v32;
  v23 = v33;
  if (v22 != 1)
  {
    v22 = (*(v32 + 8))(v12, v33);
  }

LABEL_7:
  MEMORY[0x28223BE20](v22);
  *(&v30 - 4) = v6;
  *(&v30 - 3) = v5;
  *(&v30 - 16) = v35;
  v27 = type metadata accessor for IconStore.IconData();
  sub_254588DB4(sub_25458A1D8, (&v30 - 6), MEMORY[0x277D84A98], v27, v28, v34);
  return (*(v24 + 8))(v14, v23);
}

uint64_t IconStore.cache(_:)(char *a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v31 - v9;
  v11 = *a1;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  v13 = type metadata accessor for IconStore.IconData();
  v14 = *(v7 + 16);
  v15 = &a1[*(v13 + 36)];
  v34 = v10;
  v14(v10, v15, AssociatedTypeWitness);
  v16 = *(*v2 + 104);
  swift_beginAccess();
  v37 = v11;
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = v4;
  v17[4] = sub_25458A2CC;
  v17[5] = v12;
  v33 = v12;
  v18 = *(v2 + v16);
  swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v2 + v16);
  v19 = v36;
  *(v2 + v16) = 0x8000000000000000;
  v20 = type metadata accessor for IconStore.IconKind();
  WitnessTable = swift_getWitnessTable();
  v32 = sub_25458C56C(&v37, v20, WitnessTable);
  if (__OFADD__(*(v19 + 16), (v22 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = v22;
  sub_25459A870();
  sub_25459AAD0();
  if ((sub_25459AAB0() & 1) == 0)
  {
    v26 = v32;
    goto LABEL_6;
  }

  v24 = sub_25458C56C(&v37, v20, WitnessTable);
  if ((v23 & 1) != (v25 & 1))
  {
LABEL_10:
    result = sub_25459ABA0();
    __break(1u);
    return result;
  }

  v26 = v24;
LABEL_6:
  v27 = v36;
  *(v2 + v16) = v36;
  if ((v23 & 1) == 0)
  {
    v28 = v17[5];
    v36 = (v17[4])();
    v35 = v37;
    sub_25459AAC0();
  }

  v29 = *(v27 + 56) + 8 * v26;
  sub_25459A850();
  swift_endAccess();
}

uint64_t (*sub_254589874())()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *IconStore.__allocating_init(provider:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = sub_25458CB30(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t *IconStore.init(provider:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_25458CB30(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t IconStore.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t IconStore.__deallocating_deinit()
{
  IconStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t IconStore.IconKind.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
    case 4:
    case 0xF:
    case 0x1F:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x3E:
    case 0x41:
      result = 0xD000000000000024;
      break;
    case 2:
    case 5:
    case 0xA:
    case 0x15:
    case 0x1C:
    case 0x3F:
    case 0x51:
      result = 0xD000000000000025;
      break;
    case 3:
    case 0xB:
    case 0xC:
    case 0x11:
    case 0x16:
    case 0x1B:
    case 0x1E:
    case 0x22:
    case 0x26:
    case 0x29:
    case 0x31:
    case 0x3D:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000002BLL;
      break;
    case 7:
    case 0x43:
      result = 0xD00000000000001FLL;
      break;
    case 8:
    case 0x13:
    case 0x23:
      result = 0xD000000000000020;
      break;
    case 9:
    case 0xE:
      result = 0xD00000000000001DLL;
      break;
    case 0xD:
    case 0x12:
    case 0x27:
    case 0x38:
      result = 0xD00000000000002CLL;
      break;
    case 0x10:
    case 0x39:
    case 0x44:
    case 0x4A:
      result = 0xD00000000000002DLL;
      break;
    case 0x14:
    case 0x18:
    case 0x24:
    case 0x32:
    case 0x33:
      result = 0xD000000000000021;
      break;
    case 0x17:
    case 0x1D:
    case 0x34:
    case 0x37:
    case 0x54:
      result = 0xD000000000000029;
      break;
    case 0x20:
    case 0x25:
    case 0x36:
    case 0x3A:
    case 0x3B:
    case 0x49:
    case 0x53:
      result = 0xD000000000000026;
      break;
    case 0x21:
    case 0x35:
    case 0x3C:
    case 0x52:
    case 0x55:
    case 0x5B:
      result = 0xD000000000000027;
      break;
    case 0x28:
    case 0x50:
      result = 0xD000000000000031;
      break;
    case 0x40:
    case 0x46:
    case 0x48:
    case 0x5C:
      result = 0xD000000000000028;
      break;
    case 0x42:
      result = 0xD00000000000002ALL;
      break;
    case 0x47:
      result = 0xD000000000000030;
      break;
    case 0x4B:
    case 0x58:
      result = 0xD000000000000037;
      break;
    case 0x4C:
    case 0x59:
      result = 0xD000000000000035;
      break;
    case 0x4D:
      result = 0xD00000000000002FLL;
      break;
    case 0x4E:
      result = 0xD000000000000033;
      break;
    case 0x4F:
    case 0x56:
      result = 0xD000000000000032;
      break;
    case 0x57:
    case 0x5A:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25458A080@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v13 - v8;
  v14 = a2;
  (*(v10 + 16))(&v13 - v8, a1);
  sub_25458A214(&v14, v9, a3);
  v11 = type metadata accessor for IconStore.IconData();
  return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
}

uint64_t sub_25458A1D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25458A080(a1, *(v2 + 32), a2);
}

uint64_t sub_25458A214@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for IconStore.IconData() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(&a3[v5], a2, AssociatedTypeWitness);
}

uint64_t sub_25458A2CC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();

  return sub_25459A810();
}

uint64_t IconStore.IconKind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_25459AB90();

  v4 = 0;
  v5 = 75;
  switch(v2)
  {
    case 0:
      goto LABEL_91;
    case 1:
      v4 = 1;
      goto LABEL_91;
    case 2:
      v4 = 2;
      goto LABEL_91;
    case 3:
      v4 = 3;
      goto LABEL_91;
    case 4:
      v4 = 4;
      goto LABEL_91;
    case 5:
      v4 = 5;
      goto LABEL_91;
    case 6:
      v4 = 6;
      goto LABEL_91;
    case 7:
      v4 = 7;
      goto LABEL_91;
    case 8:
      v4 = 8;
      goto LABEL_91;
    case 9:
      v4 = 9;
      goto LABEL_91;
    case 10:
      v4 = 10;
      goto LABEL_91;
    case 11:
      v4 = 11;
      goto LABEL_91;
    case 12:
      v4 = 12;
      goto LABEL_91;
    case 13:
      v4 = 13;
      goto LABEL_91;
    case 14:
      v4 = 14;
      goto LABEL_91;
    case 15:
      v4 = 15;
      goto LABEL_91;
    case 16:
      v4 = 16;
      goto LABEL_91;
    case 17:
      v4 = 17;
      goto LABEL_91;
    case 18:
      v4 = 18;
      goto LABEL_91;
    case 19:
      v4 = 19;
      goto LABEL_91;
    case 20:
      v4 = 20;
      goto LABEL_91;
    case 21:
      v4 = 21;
      goto LABEL_91;
    case 22:
      v4 = 22;
      goto LABEL_91;
    case 23:
      v4 = 23;
      goto LABEL_91;
    case 24:
      v4 = 24;
      goto LABEL_91;
    case 25:
      v4 = 25;
      goto LABEL_91;
    case 26:
      v4 = 26;
      goto LABEL_91;
    case 27:
      v4 = 27;
      goto LABEL_91;
    case 28:
      v4 = 28;
      goto LABEL_91;
    case 29:
      v4 = 29;
      goto LABEL_91;
    case 30:
      v4 = 30;
      goto LABEL_91;
    case 31:
      v4 = 31;
      goto LABEL_91;
    case 32:
      v4 = 32;
      goto LABEL_91;
    case 33:
      v4 = 33;
      goto LABEL_91;
    case 34:
      v4 = 34;
      goto LABEL_91;
    case 35:
      v4 = 35;
      goto LABEL_91;
    case 36:
      v4 = 36;
      goto LABEL_91;
    case 37:
      v4 = 37;
      goto LABEL_91;
    case 38:
      v4 = 38;
      goto LABEL_91;
    case 39:
      v4 = 39;
      goto LABEL_91;
    case 40:
      v4 = 40;
      goto LABEL_91;
    case 41:
      v4 = 41;
      goto LABEL_91;
    case 42:
      v4 = 42;
      goto LABEL_91;
    case 43:
      v4 = 43;
      goto LABEL_91;
    case 44:
      v4 = 44;
      goto LABEL_91;
    case 45:
      v4 = 45;
      goto LABEL_91;
    case 46:
      v4 = 46;
      goto LABEL_91;
    case 47:
      v4 = 47;
      goto LABEL_91;
    case 48:
      v4 = 48;
      goto LABEL_91;
    case 49:
      v4 = 49;
      goto LABEL_91;
    case 50:
      v4 = 50;
      goto LABEL_91;
    case 51:
      v4 = 51;
      goto LABEL_91;
    case 52:
      v4 = 52;
      goto LABEL_91;
    case 53:
      v4 = 53;
      goto LABEL_91;
    case 54:
      v4 = 54;
      goto LABEL_91;
    case 55:
      v4 = 55;
      goto LABEL_91;
    case 56:
      v4 = 56;
      goto LABEL_91;
    case 57:
      v4 = 57;
      goto LABEL_91;
    case 58:
      v4 = 58;
      goto LABEL_91;
    case 59:
      v4 = 59;
      goto LABEL_91;
    case 60:
      v4 = 60;
      goto LABEL_91;
    case 61:
      v4 = 61;
      goto LABEL_91;
    case 62:
      v4 = 62;
      goto LABEL_91;
    case 63:
      v4 = 63;
      goto LABEL_91;
    case 64:
      v4 = 64;
      goto LABEL_91;
    case 65:
      v4 = 65;
      goto LABEL_91;
    case 66:
      v4 = 66;
      goto LABEL_91;
    case 67:
      v4 = 67;
      goto LABEL_91;
    case 68:
      v4 = 68;
      goto LABEL_91;
    case 69:
      v4 = 69;
      goto LABEL_91;
    case 70:
      v4 = 70;
      goto LABEL_91;
    case 71:
      v4 = 71;
      goto LABEL_91;
    case 72:
      v4 = 72;
      goto LABEL_91;
    case 73:
      v4 = 73;
      goto LABEL_91;
    case 74:
      v4 = 74;
LABEL_91:
      v5 = v4;
      break;
    case 75:
      break;
    case 76:
      v5 = 76;
      break;
    case 77:
      v5 = 77;
      break;
    case 78:
      v5 = 78;
      break;
    case 79:
      v5 = 79;
      break;
    case 80:
      v5 = 80;
      break;
    case 81:
      v5 = 81;
      break;
    case 82:
      v5 = 82;
      break;
    case 83:
      v5 = 83;
      break;
    case 84:
      v5 = 84;
      break;
    case 85:
      v5 = 85;
      break;
    case 86:
      v5 = 86;
      break;
    case 87:
      v5 = 87;
      break;
    case 88:
      v5 = 88;
      break;
    case 89:
      v5 = 89;
      break;
    case 90:
      v5 = 90;
      break;
    case 91:
      v5 = 91;
      break;
    case 92:
      v5 = 92;
      break;
    default:
      v5 = 93;
      break;
  }

  *a1 = v5;
  return result;
}