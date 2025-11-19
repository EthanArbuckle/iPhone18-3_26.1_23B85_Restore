char *EvaluationJobRunner.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v5 = sub_255ECF078();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t EvaluationJobRunner.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v5 = sub_255ECF078();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t Metric.metricName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Metric.controllerVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Metric.originDataSlice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Metric(0) + 28);

  return sub_255ECDBA8(v3, a1);
}

Swift::Int __swiftcall Metric.samplesUsed()()
{
  v1 = type metadata accessor for EventSet(0);
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255ECEFC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DataSlice(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Metric(0);
  sub_255ECDBA8(v0 + *(v19 + 28), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_255EB1E28(v13, &qword_27F815D60, &qword_255ED0968);
    v20 = *(v0 + *(v19 + 32));
    if (!v20 || !*(v20 + 16))
    {
      return 0;
    }

    sub_255ECDADC(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v4);
    v21 = &v4[*(v28 + 24) + *(v14 + 20)];
    sub_255ECEFD8();
    v22 = sub_255ECEFB8();
    (*(v6 + 8))(v9, v5);
    v23 = type metadata accessor for EventSet;
    v24 = v4;
  }

  else
  {
    sub_255ECDA74(v13, v18, type metadata accessor for DataSlice);
    v25 = &v18[*(v14 + 20)];
    sub_255ECEFD8();
    v22 = sub_255ECEFB8();
    (*(v6 + 8))(v9, v5);
    v23 = type metadata accessor for DataSlice;
    v24 = v18;
  }

  sub_255ECDC18(v24, v23);
  return v22;
}

uint64_t sub_255ECDA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255ECDADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255ECDB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_255ECDBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255ECDC18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255ECDCA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255ECDCD8()
{
  result = sub_255ECF078();
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

uint64_t sub_255ECDDE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_255ECF078();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255ECDEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_255ECF078();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255ECDF44()
{
  result = sub_255ECF078();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255ECDFDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255ECE0AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_255ECE15C()
{
  sub_255ECE200();
  if (v0 <= 0x3F)
  {
    sub_255ECE258();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255ECE200()
{
  if (!qword_27F815D98)
  {
    type metadata accessor for DataSlice(255);
    v0 = sub_255ECF438();
    if (!v1)
    {
      atomic_store(v0, &qword_27F815D98);
    }
  }
}

void sub_255ECE258()
{
  if (!qword_27F815DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815DA8, &qword_255ED09E0);
    v0 = sub_255ECF438();
    if (!v1)
    {
      atomic_store(v0, &qword_27F815DA0);
    }
  }
}

uint64_t sub_255ECE2D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_255ECF078();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DataSlice(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255ECE408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_255ECF078();
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
      v13 = type metadata accessor for DataSlice(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255ECE52C()
{
  result = sub_255ECF078();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DataSlice(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static EvaluationJobHelpers.evaluationJobFromJson(path:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_255ECF298();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_255ECF288();
  sub_255ECF258();
  static EvaluationJobHelpers.evaluationJobFromJson(jsonString:)(a1);
}

uint64_t static EvaluationJobHelpers.evaluationJobFromJson(jsonString:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_255ECF298();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECF288();
  v7 = sub_255ECF278();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_255ECEB78();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_255ECEB68();
    sub_255ECE9BC();
    sub_255ECEB58();

    result = sub_255ECEA10(v7, v9);
    v14 = v17;
    *a1 = v16;
    *(a1 + 16) = v14;
  }

  return result;
}

unint64_t sub_255ECE9BC()
{
  result = qword_27F815DC8;
  if (!qword_27F815DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815DC8);
  }

  return result;
}

uint64_t sub_255ECEA10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255ECEA24(a1, a2);
  }

  return a1;
}

uint64_t sub_255ECEA24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for EvaluationJobHelpers(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EvaluationJobHelpers(_WORD *result, int a2, int a3)
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