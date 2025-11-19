void *sub_227787A98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_227787B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_227787C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2277E2104();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227787DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2277E2104();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_227787E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2277E2104();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_227787EB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for TestProperty();
  return TestProperty.wrappedValue.getter(v7, a3);
}

uint64_t sub_227787EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for TestProperty();
  return sub_227791A28(a1, v7);
}

__n128 sub_227787F38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_227787F4C()
{
  v1 = sub_2277E23A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2277E1E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_2277880BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_227788174(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227788228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_227788328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2277E2104();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227788488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_227788540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2277885EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_2277886A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227788750()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227788788()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2277887C0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22778884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_227788920@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v4 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2277889B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
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

uint64_t sub_227788A70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2277E2104();
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

uint64_t sub_227788B28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227788B64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227788B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227788C74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227788CAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227788CEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227788D2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227788D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF038, qword_2277E6710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227788E14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_227788EC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227788F64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227789010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227789134(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E1E84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2277891E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E1E84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22778928C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2277892C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22778931C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22778941C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2277E2104();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227789528(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2277895D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_227789678()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_2277D6394();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2277896C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_227789770(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227789894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2277E2104();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22778990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2277E2104();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t FirstGlanceClient.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCClient();
  swift_allocObject();
  result = XPCClient.init(machServiceName:)();
  a1[3] = v2;
  a1[4] = &off_283AE4CC0;
  *a1 = result;
  return result;
}

uint64_t sub_227789A20()
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_227789ABC;

  return sub_2277B9FC8();
}

uint64_t sub_227789ABC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227789BD0()
{
  v1 = __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = *v1;
  *(v0 + 24) = *v1;

  return MEMORY[0x2822009F8](sub_227789C40, v2, 0);
}

uint64_t sub_227789C40()
{
  v1 = *(v0 + 24);
  if (*(v1 + 128) != 2)
  {
    *(v1 + 128) = 2;
    [*(v1 + 112) setInterruptionHandler_];
    [*(v1 + 112) setInvalidationHandler_];
    [*(v1 + 112) invalidate];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FirstGlanceClient.requestFirstGlanceContent()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_227789D08, 0, 0);
}

uint64_t sub_227789D08()
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_227789DC4;
  v3 = *(v0 + 16);

  return sub_227789EB8(v3, 2);
}

uint64_t sub_227789DC4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227789EB8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_227789EDC, v2, 0);
}

uint64_t sub_227789EDC()
{
  v1 = v0[22];
  v2 = sub_2277B9C34();
  v0[23] = v2;
  v0[24] = 0;
  if (v2)
  {
    v4 = v0[21];
    v5 = v2;
    swift_unknownObjectRetain();
    v6 = sub_2277E1F24();
    v0[25] = v6;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22778A0B0;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE898, &qword_2277E3A00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22778A934;
    v0[13] = &block_descriptor_29;
    v0[14] = v7;
    [v5 transportRequest:v4 data:v6 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_2277CC164(0, 0xF000000000000000, v0[20]);
    v8 = v0[23];
    swift_unknownObjectRelease();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22778A0B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_22778A280;
  }

  else
  {
    v5 = sub_22778A1D0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22778A1D0()
{
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  swift_unknownObjectRelease();

  v5 = v0[24];
  sub_2277CC164(v4, v3, v0[20]);
  v6 = v0[23];
  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7();
}

uint64_t sub_22778A280()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  swift_willThrow();
  swift_unknownObjectRelease_n();

  v4 = v0[26];
  v5 = v0[1];

  return v5();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22778A314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22778A35C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22778A474(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_22778A494, v1, 0);
}

uint64_t sub_22778A494()
{
  v1 = v0[21];
  v2 = sub_2277B9C34();
  v0[22] = v2;
  v0[23] = 0;
  if (v2)
  {
    v3 = v0[20];
    v4 = v2;
    swift_unknownObjectRetain();
    v5 = sub_2277E1F24();
    v0[24] = v5;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22778A6AC;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE898, &qword_2277E3A00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22778A934;
    v0[13] = &block_descriptor;
    v0[14] = v6;
    [v4 transportRequest:v3 data:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v7 = sub_2277CD8A0(0, 0xF000000000000000);
    v8 = v0[22];
    v10 = v9;
    v11 = v7;
    swift_unknownObjectRelease();
    v12 = v0[1];

    return v12(v11, v10 & 1);
  }
}

uint64_t sub_22778A6AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_22778A8B4;
  }

  else
  {
    v5 = sub_22778A7CC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22778A7CC()
{
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  swift_unknownObjectRelease();

  v5 = v0[23];
  v6 = sub_2277CD8A0(v4, v3);
  v8 = v0[22];
  if (v5)
  {
    v9 = v0[22];
    swift_unknownObjectRelease();
    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v7;
    v13 = v6;
    v14 = v0[22];
    swift_unknownObjectRelease();
    v15 = v0[1];

    return v15(v13, v12 & 1);
  }
}

uint64_t sub_22778A8B4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease_n();

  v4 = v0[25];
  v5 = v0[1];

  return v5();
}

uint64_t sub_22778A934(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_2277E1F34();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

BOOL sub_22778AA30(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22778AA88()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

uint64_t sub_22778AAD0()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

uint64_t sub_22778AB5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22778AD1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22778AE20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22778AE40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_22778AE7C(uint64_t a1, unint64_t *a2)
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

uint64_t FirstGlanceWorkoutSummationProtobuf.modality.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_22778B3E8(v1 + *(GlanceWorkoutSummationProtobuf + 32), v6);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v9 = *(*(GlanceModalityProtobuf - 8) + 48);
  if (v9(v6, 1, GlanceModalityProtobuf) != 1)
  {
    return sub_22778B458(v6, a1);
  }

  *a1 = 0;
  v10 = &a1[*(GlanceModalityProtobuf + 20)];
  sub_2277E20F4();
  v11 = *(GlanceModalityProtobuf + 24);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  (*(*(GlanceModalityTypeProtobuf - 8) + 56))(&a1[v11], 1, 1, GlanceModalityTypeProtobuf);
  result = (v9)(v6, 1, GlanceModalityProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CE928, &unk_2277E3A60);
  }

  return result;
}

uint64_t sub_22778B06C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_22778B3E8(a1 + *(GlanceWorkoutSummationProtobuf + 32), v7);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v10 = *(*(GlanceModalityProtobuf - 8) + 48);
  if (v10(v7, 1, GlanceModalityProtobuf) != 1)
  {
    return sub_22778B458(v7, a2);
  }

  *a2 = 0;
  v11 = &a2[*(GlanceModalityProtobuf + 20)];
  sub_2277E20F4();
  v12 = *(GlanceModalityProtobuf + 24);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  (*(*(GlanceModalityTypeProtobuf - 8) + 56))(&a2[v12], 1, 1, GlanceModalityTypeProtobuf);
  result = (v10)(v7, 1, GlanceModalityProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v7, &qword_27D7CE928, &unk_2277E3A60);
  }

  return result;
}

uint64_t sub_22778B1EC(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v5 = *(GlanceModalityProtobuf - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778B808(a1, v8);
  v9 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 32);
  sub_22778CE70(a2 + v9, &qword_27D7CE928, &unk_2277E3A60);
  sub_22778B458(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, GlanceModalityProtobuf);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.modality.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 32);
  sub_22778CE70(v1 + v3, &qword_27D7CE928, &unk_2277E3A60);
  sub_22778B458(a1, v1 + v3);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v5 = *(*(GlanceModalityProtobuf - 8) + 56);

  return v5(v1 + v3, 0, 1, GlanceModalityProtobuf);
}

uint64_t type metadata accessor for FirstGlanceWorkoutSummationProtobuf()
{
  result = qword_27D7CE958;
  if (!qword_27D7CE958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22778B3E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22778B458(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  (*(*(GlanceModalityProtobuf - 8) + 32))(a2, a1, GlanceModalityProtobuf);
  return a2;
}

void (*FirstGlanceWorkoutSummationProtobuf.modality.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v5[2] = GlanceModalityProtobuf;
  v10 = *(GlanceModalityProtobuf - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 32);
  *(v5 + 12) = v15;
  sub_22778B3E8(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, GlanceModalityProtobuf) == 1)
  {
    *v14 = 0;
    v17 = &v14[*(GlanceModalityProtobuf + 20)];
    sub_2277E20F4();
    v18 = *(GlanceModalityProtobuf + 24);
    GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
    (*(*(GlanceModalityTypeProtobuf - 8) + 56))(&v14[v18], 1, 1, GlanceModalityTypeProtobuf);
    if (v16(v8, 1, GlanceModalityProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CE928, &unk_2277E3A60);
    }
  }

  else
  {
    sub_22778B458(v8, v14);
  }

  return sub_22778B6F0;
}

void sub_22778B6F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22778B808((*a1)[5], v4);
    sub_22778CE70(v9 + v3, &qword_27D7CE928, &unk_2277E3A60);
    sub_22778B458(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22778B86C(v5);
  }

  else
  {
    sub_22778CE70(v9 + v3, &qword_27D7CE928, &unk_2277E3A60);
    sub_22778B458(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22778B808(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  (*(*(GlanceModalityProtobuf - 8) + 16))(a2, a1, GlanceModalityProtobuf);
  return a2;
}

uint64_t sub_22778B86C(uint64_t a1)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  (*(*(GlanceModalityProtobuf - 8) + 8))(a1, GlanceModalityProtobuf);
  return a1;
}

BOOL FirstGlanceWorkoutSummationProtobuf.hasModality.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_22778B3E8(v0 + *(GlanceWorkoutSummationProtobuf + 32), v4);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v7 = (*(*(GlanceModalityProtobuf - 8) + 48))(v4, 1, GlanceModalityProtobuf) != 1;
  sub_22778CE70(v4, &qword_27D7CE928, &unk_2277E3A60);
  return v7;
}

Swift::Void __swiftcall FirstGlanceWorkoutSummationProtobuf.clearModality()()
{
  v1 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 32);
  sub_22778CE70(v0 + v1, &qword_27D7CE928, &unk_2277E3A60);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v3 = *(*(GlanceModalityProtobuf - 8) + 56);

  v3(v0 + v1, 1, 1, GlanceModalityProtobuf);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(GlanceWorkoutSummationProtobuf + 28);
  sub_2277E20F4();
  v4 = *(GlanceWorkoutSummationProtobuf + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v6 = *(*(GlanceModalityProtobuf - 8) + 56);

  return v6(a1 + v4, 1, 1, GlanceModalityProtobuf);
}

uint64_t sub_22778BCC0()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CE910);
  __swift_project_value_buffer(v0, qword_27D7CE910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3A50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "modality";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalActiveEnergy";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalDistance";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "workoutCount";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceWorkoutSummationProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CE910);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FirstGlanceWorkoutSummationProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_2277E21B4();
      }
    }

    else if (result == 1)
    {
      sub_22778C0B0();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_2277E21E4();
    }
  }
}

uint64_t sub_22778C0B0()
{
  v0 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 32);
  type metadata accessor for FirstGlanceModalityProtobuf();
  sub_22778CED0(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);
  return sub_2277E2214();
}

uint64_t FirstGlanceWorkoutSummationProtobuf.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v8 = *(GlanceModalityProtobuf - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_22778B3E8(v2 + *(GlanceWorkoutSummationProtobuf + 32), v6);
  if ((*(v8 + 48))(v6, 1, GlanceModalityProtobuf) == 1)
  {
    sub_22778CE70(v6, &qword_27D7CE928, &unk_2277E3A60);
  }

  else
  {
    sub_22778B458(v6, v11);
    sub_22778CED0(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);
    sub_2277E2314();
    result = sub_22778B86C(v11);
    if (v1)
    {
      return result;
    }
  }

  if (*v2 == 0.0 || (result = sub_2277E22E4(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (result = sub_2277E22E4(), !v1))
    {
      if (!*(v2 + 16) || (result = sub_2277E22D4(), !v1))
      {
        v13 = v2 + *(GlanceWorkoutSummationProtobuf + 28);
        return sub_2277E20E4();
      }
    }
  }

  return result;
}

uint64_t FirstGlanceWorkoutSummationProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_22778CED0(&qword_27D7CE938, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a2 + *(a1 + 28);
  sub_2277E20F4();
  v5 = *(a1 + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v7 = *(*(GlanceModalityProtobuf - 8) + 56);

  return v7(a2 + v5, 1, 1, GlanceModalityProtobuf);
}

uint64_t sub_22778C514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22778C588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22778C5FC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_22778C654(uint64_t a1, uint64_t a2)
{
  v4 = sub_22778CED0(&qword_27D7CE970, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22778C6D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CE910);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22778C77C(uint64_t a1)
{
  v2 = sub_22778CED0(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22778C7E8()
{
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778C840()
{
  sub_22778CED0(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);

  return sub_2277E2264();
}

uint64_t sub_22778C8BC()
{
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t _s15FitnessCoaching35FirstGlanceWorkoutSummationProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v5 = *(GlanceModalityProtobuf - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE978, &qword_2277E3C28);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v19 = *(GlanceWorkoutSummationProtobuf + 32);
  v20 = *(v14 + 56);
  sub_22778B3E8(a1 + v19, v17);
  sub_22778B3E8(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, GlanceModalityProtobuf) != 1)
  {
    sub_22778B3E8(v17, v12);
    if (v21(&v17[v20], 1, GlanceModalityProtobuf) != 1)
    {
      sub_22778B458(&v17[v20], v8);
      GlanceModalityProtobufV2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching27FirstGlanceModalityProtobufV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_22778B86C(v8);
      sub_22778B86C(v12);
      sub_22778CE70(v17, &qword_27D7CE928, &unk_2277E3A60);
      if (GlanceModalityProtobufV2eeoiySbAC_ACtFZ_0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v24 = 0;
      return v24 & 1;
    }

    sub_22778B86C(v12);
LABEL_6:
    sub_22778CE70(v17, &qword_27D7CE978, &qword_2277E3C28);
    goto LABEL_12;
  }

  if (v21(&v17[v20], 1, GlanceModalityProtobuf) != 1)
  {
    goto LABEL_6;
  }

  sub_22778CE70(v17, &qword_27D7CE928, &unk_2277E3A60);
LABEL_8:
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  v23 = *(GlanceWorkoutSummationProtobuf + 28);
  sub_2277E2104();
  sub_22778CED0(&qword_27D7CE980, MEMORY[0x277D216C8]);
  v24 = sub_2277E2404();
  return v24 & 1;
}

void sub_22778CD74()
{
  sub_2277E2104();
  if (v0 <= 0x3F)
  {
    sub_22778CE18();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22778CE18()
{
  if (!qword_27D7CE968)
  {
    type metadata accessor for FirstGlanceModalityProtobuf();
    v0 = sub_2277E2774();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7CE968);
    }
  }
}

uint64_t sub_22778CE70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22778CED0(unint64_t *a1, void (*a2)(uint64_t))
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

void FirstGlanceType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeeklySummaryInfo();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  GlanceType = type metadata accessor for FirstGlanceType();
  v9 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778E0CC(v2, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48) + 48)];
      v33 = *v32;
      v34 = v32[8];
      sub_22778E184(v11, v7);
      MEMORY[0x22AA9BBC0](1);
      sub_22778D4C0(a1, *v7);
      v35 = v4[5];
      sub_2277E1E84();
      sub_22778E284(&qword_27D7CE9A0, MEMORY[0x277CC88A8]);
      sub_2277E23F4();
      sub_22778D4C0(a1, *(v7 + v4[6]));
      MEMORY[0x22AA9BBC0](*(v7 + v4[7]));
      if (v34 == 1)
      {
        sub_2277E2A24();
      }

      else
      {
        sub_2277E2A24();
        if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v33;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x22AA9BBE0](v37);
      }

      sub_22778E668(v7, type metadata accessor for WeeklySummaryInfo);
      return;
    case 2u:
      v21 = *v11;
      v22 = *(v11 + 1);
      v23 = *(v11 + 2);
      v24 = *(v11 + 3);
      v25 = v11[32];
      v26 = 4;
      goto LABEL_13;
    case 3u:
      v21 = *v11;
      v22 = *(v11 + 1);
      v27 = *(v11 + 2);
      v28 = *(v11 + 3);
      v29 = v11[32];
      v26 = 5;
LABEL_13:
      MEMORY[0x22AA9BBC0](v26);
      sub_2277E1F44();
      sub_2277E2484();
      sub_2277E2A24();
      sub_22778E130(v21, v22);

      return;
    case 4u:
      v19 = *v11;
      v20 = 6;
      goto LABEL_26;
    case 5u:
      v19 = *v11;
      v20 = 7;
      goto LABEL_26;
    case 6u:
      v19 = *v11;
      v30 = *(v11 + 1);
      v31 = 8;
      goto LABEL_21;
    case 7u:
      v19 = *v11;
      v30 = *(v11 + 1);
      v31 = 9;
LABEL_21:
      MEMORY[0x22AA9BBC0](v31);
      sub_2277E2764();
      v36 = 0.0;
      if (v30 != 0.0)
      {
        v36 = v30;
      }

      MEMORY[0x22AA9BBE0](*&v36);
      goto LABEL_27;
    case 8u:
      v19 = *v11;
      v20 = 10;
      goto LABEL_26;
    case 9u:
      v19 = *v11;
      v20 = 11;
      goto LABEL_26;
    case 0xAu:
      v19 = *v11;
      v20 = 12;
LABEL_26:
      MEMORY[0x22AA9BBC0](v20);
      sub_2277E2764();
LABEL_27:

      return;
    case 0xBu:
      v17 = *(v11 + 4);
      v18 = *(v11 + 1);
      v39 = *v11;
      v38 = v18;
      MEMORY[0x22AA9BBC0](13);
      v45 = v39;
      v46 = v38;
      *&v47 = v17;
      FirstGlanceWorkoutSummationType.hash(into:)();
      return;
    case 0xCu:
      v16 = 2;
      goto LABEL_19;
    case 0xDu:
      v16 = 3;
      goto LABEL_19;
    case 0xEu:
      v16 = 14;
      goto LABEL_19;
    case 0xFu:
      v16 = 15;
LABEL_19:
      MEMORY[0x22AA9BBC0](v16);
      break;
    default:
      v12 = *(v11 + 3);
      v47 = *(v11 + 2);
      v48 = v12;
      v49 = *(v11 + 4);
      v13 = *(v11 + 1);
      v45 = *v11;
      v46 = v13;
      v14 = *(v11 + 10);
      MEMORY[0x22AA9BBC0](0);
      v42 = v47;
      v43 = v48;
      v44 = v49;
      v40 = v45;
      v41 = v46;
      FirstGlanceWeeklySummary.hash(into:)(a1);
      sub_22778E1E8(&v45);
      v15 = 0.0;
      if (v14 != 0.0)
      {
        v15 = v14;
      }

      MEMORY[0x22AA9BBE0](*&v15);
      break;
  }
}

uint64_t FirstGlanceType.hashValue.getter()
{
  sub_2277E2A04();
  FirstGlanceType.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_22778D3D4()
{
  sub_2277E2A04();
  FirstGlanceType.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_22778D418()
{
  sub_2277E2A04();
  FirstGlanceType.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_22778D458(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA9BBC0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x22AA9BBE0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_22778D4C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2277E28E4();
    MEMORY[0x22AA9BBC0](v8);
    v3 = sub_2277E28E4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x22AA9BBC0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x22AA9B9D0](i, a2);
      sub_2277E2764();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_2277E2764();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s15FitnessCoaching15FirstGlanceTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v129 = a1;
  v130 = a2;
  v121 = type metadata accessor for WeeklySummaryInfo();
  v2 = *(*(v121 - 1) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = (&v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  GlanceType = type metadata accessor for FirstGlanceType();
  v5 = *(*(GlanceType - 8) + 64);
  v6 = MEMORY[0x28223BE20](GlanceType);
  v127 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v126 = (&v121 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v125 = (&v121 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v123 = (&v121 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v124 = &v121 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v121 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v121 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v121 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v121 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v121 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v128 = (&v121 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = &v121 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE9B8, &qword_2277E3D28);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v121 - v38;
  v40 = (&v121 + *(v37 + 56) - v38);
  sub_22778E0CC(v129, &v121 - v38);
  v129 = v40;
  sub_22778E0CC(v130, v40);
  v130 = v39;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = v130;
      v90 = v128;
      sub_22778E0CC(v130, v128);
      v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48) + 48);
      v92 = *(v90 + v91);
      v93 = *(v90 + v91 + 8);
      v94 = v129;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22778E668(v90, type metadata accessor for WeeklySummaryInfo);
        goto LABEL_56;
      }

      v95 = *(v94 + v91);
      v96 = *(v94 + v91 + 8);
      v97 = v94;
      v98 = v122;
      sub_22778E184(v97, v122);
      if ((sub_2277D7210(*v90, *v98) & 1) == 0 || (v99 = v121[5], (sub_2277E1E34() & 1) == 0) || (sub_2277D7224(*(v90 + v121[6]), *(v98 + v121[6])) & 1) == 0 || *(v90 + v121[7]) != *(v98 + v121[7]))
      {
        sub_22778E668(v98, type metadata accessor for WeeklySummaryInfo);
        sub_22778E668(v90, type metadata accessor for WeeklySummaryInfo);
        goto LABEL_77;
      }

      sub_22778E668(v98, type metadata accessor for WeeklySummaryInfo);
      sub_22778E668(v90, type metadata accessor for WeeklySummaryInfo);
      if (v93)
      {
        if (v96)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v92 == v95)
        {
          v120 = v96;
        }

        else
        {
          v120 = 1;
        }

        if ((v120 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_77;
    case 2u:
      v41 = v130;
      sub_22778E0CC(v130, v30);
      v58 = *v30;
      v59 = *(v30 + 1);
      v61 = *(v30 + 2);
      v60 = *(v30 + 3);
      v62 = v30[32];
      v63 = v129;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_22778E130(v58, v59);

        goto LABEL_56;
      }

      v65 = *v63;
      v64 = v63[1];
      v66 = v63;
      v68 = v63[2];
      v67 = v63[3];
      LODWORD(v129) = *(v66 + 32);
      if ((sub_227790458(v58, v59, v65, v64) & 1) == 0)
      {
        sub_22778E130(v65, v64);

        v116 = v58;
        v117 = v59;
        goto LABEL_67;
      }

      if (v61 != v68 || v60 != v67)
      {
        v70 = sub_2277E2984();
        sub_22778E130(v65, v64);

        v71 = v58;
        v72 = v59;
        goto LABEL_30;
      }

      sub_22778E130(v65, v64);

      v118 = v58;
      v119 = v59;
      goto LABEL_71;
    case 3u:
      sub_22778E0CC(v130, v27);
      v75 = *v27;
      v74 = *(v27 + 1);
      v77 = *(v27 + 2);
      v76 = *(v27 + 3);
      v62 = v27[32];
      v78 = v129;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22778E130(v75, v74);

        v41 = v130;
        goto LABEL_56;
      }

      v80 = *v78;
      v79 = v78[1];
      v81 = v78;
      v83 = v78[2];
      v82 = v78[3];
      LODWORD(v129) = *(v81 + 32);
      if ((sub_227790458(v75, v74, v80, v79) & 1) == 0)
      {
        sub_22778E130(v80, v79);

        v116 = v75;
        v117 = v74;
LABEL_67:
        sub_22778E130(v116, v117);

        goto LABEL_68;
      }

      if (v77 == v83 && v76 == v82)
      {
        sub_22778E130(v80, v79);

        v118 = v75;
        v119 = v74;
LABEL_71:
        sub_22778E130(v118, v119);

        if (v62 != v129)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v70 = sub_2277E2984();
        sub_22778E130(v80, v79);

        v71 = v75;
        v72 = v74;
LABEL_30:
        sub_22778E130(v71, v72);

        if (v70 & 1) == 0 || ((v62 ^ v129))
        {
LABEL_68:
          sub_22778E668(v130, type metadata accessor for FirstGlanceType);
          goto LABEL_57;
        }
      }

      v101 = v130;
LABEL_47:
      sub_22778E668(v101, type metadata accessor for FirstGlanceType);
      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = 1;
      return GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 & 1;
    case 4u:
      v41 = v130;
      sub_22778E0CC(v130, v24);
      v54 = *v24;
      v55 = v129;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 5u:
      v41 = v130;
      sub_22778E0CC(v130, v21);
      v54 = *v21;
      v55 = v129;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_52;
      }

      goto LABEL_55;
    case 6u:
      v41 = v130;
      sub_22778E0CC(v130, v18);
      v54 = *v18;
      v102 = v129;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_55;
      }

      v87 = v18[1];
      v88 = *v102;
      v89 = *(v102 + 8);
      goto LABEL_50;
    case 7u:
      v41 = v130;
      v85 = v124;
      sub_22778E0CC(v130, v124);
      v54 = *v85;
      v86 = v129;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_55;
      }

      v87 = *(v85 + 8);
      v88 = *v86;
      v89 = *(v86 + 8);
LABEL_50:
      sub_22778E6C8(0, &qword_2813BC508, 0x277D82BB8);
      v103 = sub_2277E2754();

      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = v103 & (v87 == v89);
      goto LABEL_53;
    case 8u:
      v41 = v130;
      v106 = v123;
      sub_22778E0CC(v130, v123);
      v54 = *v106;
      v55 = v129;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 9u:
      v41 = v130;
      v57 = v125;
      sub_22778E0CC(v130, v125);
      v54 = *v57;
      v55 = v129;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_52;
      }

      goto LABEL_55;
    case 0xAu:
      v41 = v130;
      v104 = v126;
      sub_22778E0CC(v130, v126);
      v54 = *v104;
      v55 = v129;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
LABEL_52:
        v105 = *v55;
        sub_22778E6C8(0, &qword_2813BC508, 0x277D82BB8);
        GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = sub_2277E2754();

        goto LABEL_53;
      }

LABEL_55:

      goto LABEL_56;
    case 0xBu:
      v41 = v130;
      v47 = v127;
      sub_22778E0CC(v130, v127);
      v48 = v129;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_56;
      }

      v49 = *(v47 + 32);
      v50 = *(v48 + 32);
      v51 = *(v47 + 16);
      v138 = *v47;
      v139 = v51;
      *&v140 = v49;
      v52 = *(v48 + 16);
      v133 = *v48;
      v134 = v52;
      *&v135 = v50;
      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching31FirstGlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0(&v138, &v133);
      goto LABEL_53;
    case 0xCu:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = v130;
      if (EnumCaseMultiPayload == 12)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 0xDu:
      v100 = swift_getEnumCaseMultiPayload();
      v41 = v130;
      if (v100 == 13)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 0xEu:
      v46 = swift_getEnumCaseMultiPayload();
      v41 = v130;
      if (v46 == 14)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 0xFu:
      v73 = swift_getEnumCaseMultiPayload();
      v41 = v130;
      if (v73 != 15)
      {
        goto LABEL_56;
      }

LABEL_46:
      v101 = v41;
      goto LABEL_47;
    default:
      v41 = v130;
      sub_22778E0CC(v130, v34);
      v42 = *(v34 + 3);
      v140 = *(v34 + 2);
      v141 = v42;
      v142 = *(v34 + 4);
      v43 = *(v34 + 1);
      v138 = *v34;
      v139 = v43;
      v44 = *(v34 + 10);
      v45 = v129;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22778E1E8(&v138);
LABEL_56:
        sub_22778E600(v41);
        goto LABEL_57;
      }

      v108 = *(v45 + 16);
      v109 = *(v45 + 48);
      v135 = *(v45 + 32);
      v136 = v109;
      v110 = *(v45 + 48);
      v137 = *(v45 + 64);
      v111 = *(v45 + 16);
      v133 = *v45;
      v134 = v111;
      v112 = *(v34 + 3);
      v132[2] = *(v34 + 2);
      v132[3] = v112;
      v132[4] = *(v34 + 4);
      v113 = *(v34 + 1);
      v132[0] = *v34;
      v132[1] = v113;
      v131[2] = v135;
      v131[3] = v110;
      v131[4] = *(v45 + 64);
      v114 = *(v45 + 80);
      v131[0] = v133;
      v131[1] = v108;
      GlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching24FirstGlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0(v132, v131);
      sub_22778E1E8(&v133);
      sub_22778E1E8(&v138);
      if (!GlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0)
      {
LABEL_77:
        sub_22778E668(v41, type metadata accessor for FirstGlanceType);
LABEL_57:
        GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = 0;
        return GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 & 1;
      }

      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = v44 == v114;
LABEL_53:
      sub_22778E668(v41, type metadata accessor for FirstGlanceType);
      return GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t type metadata accessor for FirstGlanceType()
{
  result = qword_2813BCB48;
  if (!qword_2813BCB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22778E0CC(uint64_t a1, uint64_t a2)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  (*(*(GlanceType - 8) + 16))(a2, a1, GlanceType);
  return a2;
}

uint64_t sub_22778E130(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22778E184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeeklySummaryInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22778E284(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22778E31C()
{
  sub_22778E3EC();
  if (v0 <= 0x3F)
  {
    sub_22778E450();
    if (v1 <= 0x3F)
    {
      sub_22778E518();
      if (v2 <= 0x3F)
      {
        sub_22778E548();
        if (v3 <= 0x3F)
        {
          sub_22778E5A0();
          if (v4 <= 0x3F)
          {
            sub_22778E5D0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22778E3EC()
{
  if (!qword_2813BC960)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813BC960);
    }
  }
}

void sub_22778E450()
{
  if (!qword_2813BCAA8[0])
  {
    type metadata accessor for WeeklySummaryInfo();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CE9B0, &qword_2277E3CE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_2813BCAA8);
    }
  }
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

ValueMetadata *sub_22778E518()
{
  result = qword_2813BC828[0];
  if (!qword_2813BC828[0])
  {
    result = &type metadata for FirstGlanceAchievementInfo;
    atomic_store(&type metadata for FirstGlanceAchievementInfo, qword_2813BC828);
  }

  return result;
}

void sub_22778E548()
{
  if (!qword_2813BC550)
  {
    v0 = sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
    if (!v1)
    {
      atomic_store(v0, &qword_2813BC550);
    }
  }
}

ValueMetadata *sub_22778E5A0()
{
  result = qword_2813BC820;
  if (!qword_2813BC820)
  {
    result = &type metadata for FirstGlanceYesterdayWorkout;
    atomic_store(&type metadata for FirstGlanceYesterdayWorkout, &qword_2813BC820);
  }

  return result;
}

ValueMetadata *sub_22778E5D0()
{
  result = qword_2813BC818;
  if (!qword_2813BC818)
  {
    result = &type metadata for FirstGlanceWorkoutSummationType;
    atomic_store(&type metadata for FirstGlanceWorkoutSummationType, &qword_2813BC818);
  }

  return result;
}

uint64_t sub_22778E600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE9B8, &qword_2277E3D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22778E668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22778E6C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t GoalProgressError.hashValue.getter()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

uint64_t sub_22778E790()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

uint64_t sub_22778E7FC()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

unint64_t sub_22778E840()
{
  result = qword_27D7CE9C0;
  if (!qword_27D7CE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE9C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GoalProgressError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GoalProgressError(_WORD *result, int a2, int a3)
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

void FirstGlanceModalityTypeProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t FirstGlanceModalityTypeProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceModalityTypeProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FirstGlanceModalityTypeProtobuf()
{
  result = qword_27D7CEA50;
  if (!qword_27D7CEA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceModalityTypeProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t FirstGlanceModalityTypeProtobuf.ModalityType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_22778EBF0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22778EC10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22778EC2C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778EC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22778F1D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22778ECE4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t FirstGlanceModalityTypeProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for FirstGlanceModalityTypeProtobuf() + 20);
  return sub_2277E20F4();
}

uint64_t static FirstGlanceModalityTypeProtobuf.ModalityType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27D7CE9C8 = a1;
}

uint64_t sub_22778EE80@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27D7CE9C8;
}

uint64_t sub_22778EEEC()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CE9D0);
  __swift_project_value_buffer(v0, qword_27D7CE9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E40;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2277E2324();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_2277E2334();
}

uint64_t FirstGlanceModalityTypeProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_2277E2164();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22778F1D0();
        sub_2277E2184();
      }

      result = sub_2277E2164();
    }
  }

  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_22778F1D0(), result = sub_2277E22A4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for FirstGlanceModalityTypeProtobuf() + 20);
    return sub_2277E20E4();
  }

  return result;
}

unint64_t sub_22778F1D0()
{
  result = qword_27D7CEA00;
  if (!qword_27D7CEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA00);
  }

  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceModalityTypeProtobuf();
  sub_22778FE10(&qword_27D7CEA08, type metadata accessor for FirstGlanceModalityTypeProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778F2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return sub_2277E20F4();
}

uint64_t sub_22778F2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22778F36C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22778F3E0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_22778F434(uint64_t a1, uint64_t a2)
{
  v4 = sub_22778FE10(&qword_27D7CEA60, type metadata accessor for FirstGlanceModalityTypeProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22778F4D4(uint64_t a1)
{
  v2 = sub_22778FE10(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22778F540()
{
  sub_22778FE10(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf);

  return sub_2277E2264();
}

uint64_t sub_22778F5C0()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CE9E8);
  __swift_project_value_buffer(v0, qword_27D7CE9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "standard";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "indoor";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "outdoor";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_2277E2334();
}

uint64_t sub_22778F7F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2277E2344();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22778F8B0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2277E2344();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t _s15FitnessCoaching31FirstGlanceModalityTypeProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = *(type metadata accessor for FirstGlanceModalityTypeProtobuf() + 20);
      sub_2277E2104();
      sub_22778FE10(&qword_27D7CE980, MEMORY[0x277D216C8]);
      return sub_2277E2404() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

unint64_t sub_22778FA30()
{
  result = qword_27D7CEA10;
  if (!qword_27D7CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA10);
  }

  return result;
}

unint64_t sub_22778FA88()
{
  result = qword_27D7CEA18;
  if (!qword_27D7CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA18);
  }

  return result;
}

unint64_t sub_22778FAE0()
{
  result = qword_27D7CEA20;
  if (!qword_27D7CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA20);
  }

  return result;
}

unint64_t sub_22778FB38()
{
  result = qword_27D7CEA28;
  if (!qword_27D7CEA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEA30, &qword_2277E3F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA28);
  }

  return result;
}

uint64_t sub_22778FCE4()
{
  result = sub_2277E2104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t getEnumTagSinglePayload for FirstGlanceModalityTypeProtobuf.ModalityType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FirstGlanceModalityTypeProtobuf.ModalityType(uint64_t result, int a2, int a3)
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

uint64_t sub_22778FDC4(uint64_t a1)
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

uint64_t sub_22778FDE0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22778FE10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FirstGlanceAchievementInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_2277E2984()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t FirstGlanceAchievementInfo.achievementData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceAchievementInfo.localizationKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FirstGlanceAchievementInfo.init(achievementData:localizationKey:shouldSuggestRecovery:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t FirstGlanceAchievementInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2277E1F44();
  sub_2277E2484();
  return sub_2277E2A24();
}

uint64_t FirstGlanceAchievementInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2277E2A04();
  sub_2277E1F44();
  sub_2277E2484();
  sub_2277E2A24();
  return sub_2277E2A44();
}

uint64_t sub_227790034()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2277E2A04();
  sub_2277E1F44();
  sub_2277E2484();
  sub_2277E2A24();
  return sub_2277E2A44();
}

uint64_t sub_2277900B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2277E1F44();
  sub_2277E2484();
  return sub_2277E2A24();
}

uint64_t sub_227790108()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2277E2A04();
  sub_2277E1F44();
  sub_2277E2484();
  sub_2277E2A24();
  return sub_2277E2A44();
}

uint64_t sub_227790184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_2277E2984()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227790210(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2277903A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22778E130(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2277D8278(v14, a3, a4, &v13);
  v10 = v4;
  sub_22778E130(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2277903A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2277E1E94();
  v11 = result;
  if (result)
  {
    result = sub_2277E1EB4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2277E1EA4();
  sub_2277D8278(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_227790458(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2277905C0(a3, a4);
          return sub_227790210(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2277905C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_227790618()
{
  result = qword_27D7CEA68;
  if (!qword_27D7CEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
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

uint64_t sub_22779069C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2277906E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227790794()
{
  result = qword_27D7CEA70;
  if (!qword_27D7CEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA70);
  }

  return result;
}

unint64_t sub_2277907EC()
{
  result = qword_27D7CEA78;
  if (!qword_27D7CEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA78);
  }

  return result;
}

unint64_t sub_227790844()
{
  result = qword_2813BC680;
  if (!qword_2813BC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC680);
  }

  return result;
}

unint64_t sub_22779089C()
{
  result = qword_2813BC678;
  if (!qword_2813BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC678);
  }

  return result;
}

void *sub_227790918@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_227790944@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for Features(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t FirstGlanceModality.protobuf()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  type metadata accessor for FirstGlanceModalityProtobuf();
  sub_2277912B8(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);
  return sub_2277E2274();
}

uint64_t sub_227790B18(char *a1, unint64_t a2, char a3)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v7 = *(GlanceModalityTypeProtobuf - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 31)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    MEMORY[0x28223BE20](result);
    *(&v13 - 16) = a3;
    sub_2277912B8(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf);
    sub_2277E2274();
    v12 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 24);
    sub_227790FBC(&a1[v12]);
    sub_2277910D8(v11, &a1[v12]);
    return (*(v7 + 56))(&a1[v12], 0, 1, GlanceModalityTypeProtobuf);
  }

  return result;
}

uint64_t FirstGlanceModality.init(_:)@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v9 = *(GlanceModalityTypeProtobuf - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if ((v14 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = a2;
    GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
    sub_227790F4C(a1 + *(GlanceModalityProtobuf + 24), v7);
    v16 = *(v9 + 48);
    if (v16(v7, 1, GlanceModalityTypeProtobuf) == 1)
    {
      *v13 = 0;
      v13[8] = 1;
      v17 = &v13[*(GlanceModalityTypeProtobuf + 20)];
      sub_2277E20F4();
      if (v16(v7, 1, GlanceModalityTypeProtobuf) != 1)
      {
        sub_227790FBC(v7);
      }
    }

    else
    {
      sub_2277910D8(v7, v13);
    }

    if (v13[8] == 1)
    {
      v18 = *v13;
      sub_227791078(a1, type metadata accessor for FirstGlanceModalityProtobuf);
      result = sub_227791078(v13, type metadata accessor for FirstGlanceModalityTypeProtobuf);
      v19 = v22;
      *v22 = v14;
      *(v19 + 8) = v18;
    }

    else
    {
      sub_227791024();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      sub_227791078(a1, type metadata accessor for FirstGlanceModalityProtobuf);
      return sub_227791078(v13, type metadata accessor for FirstGlanceModalityTypeProtobuf);
    }
  }

  return result;
}

uint64_t sub_227790F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227790FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227791024()
{
  result = qword_27D7CEA88;
  if (!qword_27D7CEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA88);
  }

  return result;
}

uint64_t sub_227791078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2277910D8(uint64_t a1, uint64_t a2)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  (*(*(GlanceModalityTypeProtobuf - 8) + 32))(a2, a1, GlanceModalityTypeProtobuf);
  return a2;
}

uint64_t sub_2277911CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  type metadata accessor for FirstGlanceModalityProtobuf();
  sub_2277912B8(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277912B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TestProperty.init(_:fallback:suiteName:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for TestProperty();
  v10 = *(a4 - 8);
  (*(v10 + 16))(&a5[*(v9 + 36)], a2, a4);
  if (a3)
  {
    v11 = sub_2277E2414();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (!v12)
  {
    v12 = [objc_opt_self() standardUserDefaults];
  }

  result = (*(v10 + 8))(a2, a4);
  *&a5[*(v9 + 40)] = v12;
  return result;
}

uint64_t TestProperty.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_2277E2774();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  if (qword_2813BC668 == -1)
  {
    if (_s15FitnessCoaching8PlatformO15internalInstallSbvg_0())
    {
LABEL_3:
      v12 = *v3;
      if (v12 <= 2)
      {
        v19 = 0xEC00000065746144;
        v20 = 0x676E696863616F43;
        if (v12 != 1)
        {
          v20 = 0xD00000000000001ALL;
          v19 = 0x80000002277E89D0;
        }

        if (*v3)
        {
          v17 = v20;
        }

        else
        {
          v17 = 0xD000000000000017;
        }

        if (*v3)
        {
          v18 = v19;
        }

        else
        {
          v18 = 0x80000002277E89A0;
        }
      }

      else
      {
        v13 = 0x80000002277E8A20;
        v14 = 0xD000000000000011;
        if (v12 == 5)
        {
          v14 = 0xD000000000000017;
        }

        else
        {
          v13 = 0x80000002277E8A40;
        }

        v15 = 0xEE0074657366664FLL;
        v16 = 0xD000000000000019;
        if (v12 == 3)
        {
          v16 = 0x7472617453796144;
        }

        else
        {
          v15 = 0x80000002277E8A00;
        }

        if (*v3 <= 4u)
        {
          v17 = v16;
        }

        else
        {
          v17 = v14;
        }

        if (*v3 <= 4u)
        {
          v18 = v15;
        }

        else
        {
          v18 = v13;
        }
      }

      (*(*(a1 + 24) + 8))(*&v3[*(a1 + 40)], v17, v18, v6);

      v21 = *(v6 - 8);
      v22 = *(v21 + 48);
      if (v22(v11, 1, v6) != 1)
      {
        return (*(v21 + 32))(a2, v11, v6);
      }

      (*(v21 + 16))(a2, &v3[*(a1 + 36)], v6);
      result = (v22)(v11, 1, v6);
      if (result != 1)
      {
        return (*(v8 + 8))(v11, v7);
      }

      return result;
    }
  }

  else
  {
    swift_once();
    if (_s15FitnessCoaching8PlatformO15internalInstallSbvg_0())
    {
      goto LABEL_3;
    }
  }

  v24 = *(*(v6 - 8) + 16);
  v25 = &v3[*(a1 + 36)];

  return v24(a2, v25, v6);
}

uint64_t TestProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_227791A28(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*TestProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  TestProperty.wrappedValue.getter(a2, v11);
  return sub_22779193C;
}

void sub_22779193C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_227791A28(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_227791A28((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_227791A28(uint64_t a1, uint64_t a2)
{
  if (qword_2813BC668 == -1)
  {
    result = _s15FitnessCoaching8PlatformO15internalInstallSbvg_0();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    swift_once();
    result = _s15FitnessCoaching8PlatformO15internalInstallSbvg_0();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v5 = *v2;
  if (v5 <= 2)
  {
    v12 = 0xEC00000065746144;
    v13 = 0x676E696863616F43;
    if (v5 != 1)
    {
      v13 = 0xD00000000000001ALL;
      v12 = 0x80000002277E89D0;
    }

    if (*v2)
    {
      v10 = v13;
    }

    else
    {
      v10 = 0xD000000000000017;
    }

    if (*v2)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x80000002277E89A0;
    }
  }

  else
  {
    v6 = 0x80000002277E8A20;
    v7 = 0xD000000000000011;
    if (v5 == 5)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x80000002277E8A40;
    }

    v8 = 0xEE0074657366664FLL;
    v9 = 0xD000000000000019;
    if (v5 == 3)
    {
      v9 = 0x7472617453796144;
    }

    else
    {
      v8 = 0x80000002277E8A00;
    }

    if (*v2 <= 4u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (*v2 <= 4u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v6;
    }
  }

  (*(*(a2 + 24) + 16))(*&v2[*(a2 + 40)], v10, v11, *(a2 + 16));
}

unint64_t sub_227791BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_227791FA4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227791C70(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 1) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_227791DC8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 1] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_227791FA4()
{
  result = qword_2813BC568;
  if (!qword_2813BC568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813BC568);
  }

  return result;
}

BOOL HKActivitySummary.hasAnyRingWithData.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  [v0 *v2];
  if (v3 > 0.0)
  {
    return 1;
  }

  [v0 _exerciseTimeCompletionPercentage];
  if (v4 > 0.0)
  {
    return 1;
  }

  [v0 _standHoursCompletionPercentage];
  return v6 > 0.0;
}

id HKActivitySummary.moveCompletionPercentage.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  v3 = *v2;

  return [v0 v3];
}

double sub_227792128(SEL *a1, SEL *a2)
{
  v5 = [v2 activityMoveMode];
  if (v5 == 2)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v5 == 2)
  {
    v7 = &selRef_minuteUnit;
  }

  else
  {
    v7 = &selRef_kilocalorieUnit;
  }

  v8 = [v2 *v6];
  v9 = [objc_opt_self() *v7];
  [v8 doubleValueForUnit_];
  v11 = v10;

  return v11;
}

id HKActivitySummary.canonicalMoveUnit.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = objc_opt_self();
  v3 = &selRef_minuteUnit;
  if (v1 != 2)
  {
    v3 = &selRef_kilocalorieUnit;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t HKActivitySummary.canonicalMoveType.getter()
{
  v1 = [v0 activityMoveMode];
  sub_227792C30();
  v2 = MEMORY[0x277CCC928];
  if (v1 != 2)
  {
    v2 = MEMORY[0x277CCC918];
  }

  return MEMORY[0x22AA9B8D0](*v2);
}

BOOL HKActivitySummary.numberOfRingsClosed.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  [v0 *v2];
  v4 = v3;
  [v0 _exerciseTimeCompletionPercentage];
  v6 = 2;
  if (v4 < 1.0)
  {
    v6 = 1;
  }

  if (v5 >= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4 >= 1.0;
  }

  [v0 _standHoursCompletionPercentage];
  if (v8 < 1.0)
  {
    return v7;
  }

  else
  {
    return v7 + 1;
  }
}

id HKActivitySummary.percentageComplete(for:)(uint64_t a1)
{
  switch(a1)
  {
    case 3:
      v2 = &selRef__standHoursCompletionPercentage;
      break;
    case 2:
      v2 = &selRef__exerciseTimeCompletionPercentage;
      break;
    case 1:
      v3 = [v1 activityMoveMode];
      v2 = &selRef__activeEnergyCompletionPercentage;
      if (v3 == 2)
      {
        v2 = &selRef__moveMinutesCompletionPercentage;
      }

      break;
    default:
      result = sub_2277E28D4();
      __break(1u);
      return result;
  }

  v4 = *v2;

  return [v1 v4];
}

id HKActivitySummary.moveUnit(unitManager:)(void *a1)
{
  if ([v1 activityMoveMode] == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_minuteUnit;
  }

  else
  {
    v4 = &selRef_userActiveEnergyBurnedUnit;
    v3 = a1;
  }

  v5 = [v3 *v4];

  return v5;
}

double HKActivitySummary.currentValue(for:unitManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1 == 3)
  {
    v9 = [v2 appleStandHours];
    v10 = [objc_opt_self() countUnit];
    goto LABEL_8;
  }

  if (a1 == 2)
  {
    v9 = [v2 appleExerciseTime];
    v10 = [objc_opt_self() minuteUnit];
LABEL_8:
    v11 = v10;
    [v9 doubleValueForUnit_];
LABEL_14:
    v4 = v12;

    return v4;
  }

  v4 = 0.0;
  if (a1 == 1)
  {
    v6 = [v3 activityMoveMode];
    if ([v3 activityMoveMode] == 2)
    {
      v7 = objc_opt_self();
      v8 = &selRef_minuteUnit;
    }

    else
    {
      v8 = &selRef_userActiveEnergyBurnedUnit;
      v7 = a2;
    }

    v11 = [v7 *v8];
    if (v6 == 2)
    {
      v13 = [v3 appleMoveTime];
    }

    else
    {
      v13 = [v3 activeEnergyBurned];
    }

    v9 = v13;
    [v9 doubleValueForUnit_];
    goto LABEL_14;
  }

  return v4;
}

void HKActivitySummary.remainingValue(for:unitManager:)(uint64_t a1, void *a2)
{
  switch(a1)
  {
    case 3:
      v12 = [v2 appleStandHours];
      v13 = objc_opt_self();
      v14 = [v13 countUnit];
      [v12 doubleValueForUnit_];

      v10 = [v2 appleStandHoursGoal];
      v11 = [v13 countUnit];
      goto LABEL_8;
    case 2:
      v7 = [v2 appleExerciseTime];
      v8 = objc_opt_self();
      v9 = [v8 minuteUnit];
      [v7 doubleValueForUnit_];

      v10 = [v2 appleExerciseTimeGoal];
      v11 = [v8 minuteUnit];
LABEL_8:
      v15 = v11;
      [v10 doubleValueForUnit_];

      return;
    case 1:
      v4 = [v2 activityMoveMode];
      if ([v2 activityMoveMode] == 2)
      {
        v5 = objc_opt_self();
        v6 = &selRef_minuteUnit;
      }

      else
      {
        v6 = &selRef_userActiveEnergyBurnedUnit;
        v5 = a2;
      }

      v16 = [v5 *v6];
      v17 = &selRef_appleMoveTime;
      if (v4 == 2)
      {
        v18 = &selRef_appleMoveTimeGoal;
      }

      else
      {
        v17 = &selRef_activeEnergyBurned;
        v18 = &selRef_activeEnergyBurnedGoal;
      }

      v19 = [v2 *v17];
      [v19 doubleValueForUnit_];

      v20 = [v2 *v18];
      [v20 doubleValueForUnit_];

      break;
  }
}

Swift::Double __swiftcall HKActivitySummary.totalCompletionPercentage()()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  [v0 *v2];
  v4 = v3;
  [v0 _exerciseTimeCompletionPercentage];
  v6 = v4 + v5;
  [v0 _standHoursCompletionPercentage];
  return v6 + v7;
}

void Collection<>.mostRecentMoveGoal()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = sub_2277E2504();
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v9 = v3;
  v4 = sub_2277E28E4();
  v3 = v9;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v7 = MEMORY[0x22AA9B9D0](v6);
    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 8 * v6 + 32);
LABEL_8:
    v8 = v7;

    HKActivitySummary.moveGoal.getter();

    return;
  }

  __break(1u);
}

BOOL sub_227792A58(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 _activitySummaryIndex];
  return v3 < [v2 _activitySummaryIndex];
}

uint64_t Collection<>.numberTimesAchieved(moveGoal:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Collection<>.mostRecentMoveGoal()(v7, v10);
  v12 = v11;
  (*(v5 + 16))(v9, v2, a1);
  v18 = v12;
  v13 = *(a2 + 8);
  v14 = sub_2277E24F4();
  if (v14 >> 62)
  {
    v15 = sub_2277E28E4();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v15;
}

unint64_t sub_227792C30()
{
  result = qword_27D7CEA98;
  if (!qword_27D7CEA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7CEA98);
  }

  return result;
}

void (*sub_227792C7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA9B9D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_227792CFC;
  }

  __break(1u);
  return result;
}

BOOL sub_227792D04(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return HKActivitySummary.moveValue.getter() >= v2;
}

void sub_227792D48()
{
  v0 = sub_2277E2414();
  v1 = MGGetSInt32Answer();

  byte_2813BC670 = v1 == 3;
}

uint64_t static Platform.current.getter()
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_2813BC670;
}

uint64_t static Platform.current.setter(char a1)
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2813BC670 = a1;
  return result;
}

uint64_t (*static Platform.current.modify())()
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_227792F18@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_2813BC670;
  return result;
}

uint64_t sub_227792F94(char *a1)
{
  v1 = *a1;
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2813BC670 = v1;
  return result;
}

FitnessCoaching::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_22779305C()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

uint64_t sub_2277930D0()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

uint64_t *sub_227793114@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id _s15FitnessCoaching8PlatformO15internalInstallSbvg_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_2277E2434();

    v2 = sub_2277E2464();

    v3 = v2 + 32;
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() isInternal_];
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_227793218()
{
  result = qword_27D7CEAA0;
  if (!qword_27D7CEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAA0);
  }

  return result;
}

unint64_t sub_227793270()
{
  result = qword_27D7CEAA8;
  if (!qword_27D7CEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEAB0, &qword_2277E45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FirstGlanceModalityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FirstGlanceModalityType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227793470@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v25 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAB8, &qword_2277E4630);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v23 - v5;
  v24 = sub_2277E1FA4();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAC0, &qword_2277E4638);
  v10 = sub_2277E2024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2277E3A50;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x277CC9978], v10);
  v16(v15 + v12, *MEMORY[0x277CC9988], v10);
  v16(v15 + 2 * v12, *MEMORY[0x277CC9998], v10);
  v16(v15 + 3 * v12, *MEMORY[0x277CC9968], v10);
  sub_227799A74(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v17 = swift_deallocClassInstance();
  v26(v17);
  v18 = v27;
  sub_2277E1FC4();

  (*(v6 + 8))(v9, v24);
  v19 = sub_2277E2044();
  v20 = *(v19 - 8);
  v21 = v28;
  (*(v20 + 16))(v28, v18, v19);
  (*(v20 + 56))(v21, 0, 1, v19);
  return sub_2277E1EE4();
}

uint64_t sub_2277937BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_227793804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t static MoveModeLocalizer.localizedTitle(for:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 <= 5 || a1 == 6)
    {
LABEL_20:
      type metadata accessor for XPCListener();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_2277E2414();
      v13 = sub_2277E2414();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v5 = sub_2277E2434();
      return v5;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (qword_27D7CE7D0 != -1)
    {
      swift_once();
    }

    v6 = sub_2277E2374();
    __swift_project_value_buffer(v6, qword_27D7CEB40);
    v7 = sub_2277E2354();
    v8 = sub_2277E2704();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_227786000, v7, v8, "MoveModeLocalizer attempted to present with an unknown notification type", v9, 2u);
      MEMORY[0x22AA9C370](v9, -1, -1);
    }

    v5 = 0xD000000000000020;

    return v5;
  }

  if (qword_27D7CE7D0 != -1)
  {
    swift_once();
  }

  v1 = sub_2277E2374();
  __swift_project_value_buffer(v1, qword_27D7CEB40);
  v2 = sub_2277E2354();
  v3 = sub_2277E2704();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227786000, v2, v3, "MoveModeLocalizer attempted to present with undefined notification type", v4, 2u);
    MEMORY[0x22AA9C370](v4, -1, -1);
  }

  return 0xD000000000000022;
}

unint64_t static MoveModeLocalizer.localizedDescription(for:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 <= 5 || a1 == 6)
    {
LABEL_20:
      type metadata accessor for XPCListener();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_2277E2414();
      v13 = sub_2277E2414();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v5 = sub_2277E2434();
      return v5;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (qword_27D7CE7D0 != -1)
    {
      swift_once();
    }

    v6 = sub_2277E2374();
    __swift_project_value_buffer(v6, qword_27D7CEB40);
    v7 = sub_2277E2354();
    v8 = sub_2277E2704();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_227786000, v7, v8, "MoveModeLocalizer attempted to present with an unknown notification type", v9, 2u);
      MEMORY[0x22AA9C370](v9, -1, -1);
    }

    v5 = 0xD000000000000026;

    return v5;
  }

  if (qword_27D7CE7D0 != -1)
  {
    swift_once();
  }

  v1 = sub_2277E2374();
  __swift_project_value_buffer(v1, qword_27D7CEB40);
  v2 = sub_2277E2354();
  v3 = sub_2277E2704();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227786000, v2, v3, "MoveModeLocalizer attempted to present with undefined notification type", v4, 2u);
    MEMORY[0x22AA9C370](v4, -1, -1);
  }

  return 0xD000000000000028;
}

uint64_t sub_22779446C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2277944C8()
{
  v1 = [*v0 transportData];
  v2 = sub_2277E1F34();

  return v2;
}

void sub_227794528(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2277E1F24();
    sub_2277945BC(a1, a2);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTransportData_];

  *a3 = v7;
}

uint64_t sub_2277945BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22778E130(a1, a2);
  }

  return a1;
}

uint64_t FirstGlanceModalityType.protobuf()()
{
  v1 = *v0;
  type metadata accessor for FirstGlanceModalityTypeProtobuf();
  sub_227794824(&qword_27D7CEA40);
  return sub_2277E2274();
}

uint64_t FirstGlanceModalityType.init(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    result = sub_227794760(a1);
    *a2 = v3;
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return sub_227794760(a1);
  }

  return result;
}

uint64_t sub_227794738(uint64_t result, unsigned __int8 a2)
{
  *result = a2;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_22779474C(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_227794760(uint64_t a1)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  (*(*(GlanceModalityTypeProtobuf - 8) + 8))(a1, GlanceModalityTypeProtobuf);
  return a1;
}

uint64_t sub_227794824(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstGlanceModalityTypeProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227794868()
{
  v1 = *v0;
  type metadata accessor for FirstGlanceModalityTypeProtobuf();
  sub_227794824(&qword_27D7CEA40);
  return sub_2277E2274();
}

uint64_t sub_2277948FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    result = sub_227794760(a1);
    *a2 = v3;
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return sub_227794760(a1);
  }

  return result;
}

uint64_t WeeklySummaryInfoQuery.__allocating_init(date:healthStore:)(uint64_t a1, void *a2)
{
  v4 = sub_2277E1FA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = type metadata accessor for WeeklySummaryInfoQuery();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = a2;
  v14 = sub_227796248(v13, v8, v13, v12);
  (*(v5 + 8))(a1, v4);
  return v14;
}

uint64_t WeeklySummaryInfoQuery.__allocating_init(activityDataQuery:date:healthStore:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_227796668(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t type metadata accessor for WeeklySummaryInfoQuery()
{
  result = qword_27D7CEAE8;
  if (!qword_27D7CEAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeeklySummaryInfoQuery.init(activityDataQuery:date:healthStore:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_2277963C0(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

void sub_227794C74(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v77 = a1;
  v93[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v68 - v5;
  v86 = sub_2277E23A4();
  v88 = *(v86 - 8);
  v6 = v88[8];
  v7 = MEMORY[0x28223BE20](v86);
  v89 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = &v68 - v8;
  v9 = sub_2277E1FA4();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v68 - v13;
  v14 = sub_2277E2044();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2277E1E84();
  v87 = *(v17 - 8);
  v18 = *(v87 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  v25 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState;
  v90 = v2;
  v26 = *&v2[OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState];

  os_unfair_lock_lock((v26 + 24));
  v27 = *(v26 + 16);

  os_unfair_lock_unlock((v26 + 24));

  if (v27)
  {

    sub_227796770();
    swift_allocError();
    swift_willThrow();
LABEL_10:
    v67 = *MEMORY[0x277D85DE8];
    return;
  }

  v69 = v18;
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v25;
  v71 = v6;
  v73 = v22;
  v75 = v17;
  v28 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v29 = [objc_opt_self() hk_gregorianCalendar];
  v30 = v80;
  sub_2277E1FE4();

  v31 = v90;
  Date.intervalForWeeklySummary(calendar:)(v30, v24);
  (*(v81 + 8))(v30, v82);
  v32 = v83;
  sub_2277E1E44();
  v33 = sub_2277E1F94();
  v35 = v84;
  v34 = v85;
  (*(v84 + 8))(v32, v85);
  v36 = v24;
  v74 = v24;
  if (v33 == 1)
  {
    sub_2277E1E64();
    (*(v35 + 16))(v76, &v31[v28], v34);
    v37 = v73;
    sub_2277E1E54();
    v38 = v87;
    v39 = v88;
  }

  else
  {
    v38 = v87;
    v37 = v73;
    (*(v87 + 16))(v73, v36, v75);
    v39 = v88;
  }

  v40 = v72;
  v41 = *(v31 + 5);
  v42 = *(v31 + 6);
  __swift_project_boxed_opaque_existential_1Tm(v31 + 2, v41);
  v43 = v92;
  (*(v42 + 56))(v37, v41, v42);
  v44 = *&v31[OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_healthStore];
  v93[0] = 0;
  v45 = [v44 wheelchairUseWithError_];
  v46 = v91;
  if (!v45)
  {
    v64 = v93[0];
    sub_2277E1F14();

    swift_willThrow();
    (v39[1])(v43, v86);
    v65 = *(v38 + 8);
    v66 = v75;
    v65(v37, v75);
    v65(v74, v66);
    goto LABEL_10;
  }

  v47 = v45;
  v48 = v93[0];
  v88 = [v47 wheelchairUse];

  v49 = sub_2277E2624();
  (*(*(v49 - 8) + 56))(v46, 1, 1, v49);
  v50 = v86;
  (v39[2])(v89, v43, v86);
  v51 = v75;
  v52 = v38;
  (*(v38 + 16))(v40, v74, v75);
  v53 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v54 = (v71 + *(v38 + 80) + v53) & ~*(v38 + 80);
  v55 = (v69 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  (v39[4])(v56 + v53, v89, v50);
  (*(v52 + 32))(v56 + v54, v72, v51);
  *(v56 + v55) = v88;
  v57 = (v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
  v58 = v78;
  *v57 = v77;
  v57[1] = v58;

  v59 = sub_227795D80(0, 0, v91, &unk_2277E47C0, v56);
  v60 = *&v90[v70];
  v93[0] = v59;
  MEMORY[0x28223BE20](v59);
  *(&v68 - 2) = v93;

  os_unfair_lock_lock((v60 + 24));
  v61 = v79;
  sub_227796A60((v60 + 16));
  if (!v61)
  {
    os_unfair_lock_unlock((v60 + 24));

    (v39[1])(v92, v50);
    v62 = *(v52 + 8);
    v63 = v75;
    v62(v73, v75);
    v62(v74, v63);

    goto LABEL_10;
  }

  os_unfair_lock_unlock((v60 + 24));
  __break(1u);
}

uint64_t sub_2277954D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = type metadata accessor for WeeklySummaryInfo();
  v8[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v11 = sub_2277E2394();
  v8[17] = v11;
  v12 = *(v11 - 8);
  v8[18] = v12;
  v13 = *(v12 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277955D0, 0, 0);
}

uint64_t sub_2277955D0()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = sub_227796DD0(MEMORY[0x277D84F90]);
  sub_2277E2384();
  v0[20] = v3;
  v0[21] = v3;
  v4 = sub_227796ECC();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_2277956A8;
  v7 = v0[19];
  v8 = v0[17];

  return MEMORY[0x282200308](v0 + 7, v8, v4);
}

uint64_t sub_2277956A8()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_227795C50;
  }

  else
  {
    v3 = sub_2277957BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2277957E0()
{
  v1 = v0[24];
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_32:
      v2 = sub_2277E28E4();
      v58 = v0;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_4:
        v3 = 0;
        v4 = v0[24];
        v54 = v4 & 0xFFFFFFFFFFFFFF8;
        v55 = v4 & 0xC000000000000001;
        v5 = v0[20];
        while (1)
        {
          if (v55)
          {
            v10 = MEMORY[0x22AA9B9D0](v3, v1);
          }

          else
          {
            if (v3 >= *(v54 + 16))
            {
              goto LABEL_29;
            }

            v10 = *(v1 + 8 * v3 + 32);
          }

          v11 = v10;
          v0 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v12 = v2;
          v13 = [v10 _activitySummaryIndex];
          v8 = v11;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58[9] = v5;
          v15 = sub_2277A8F8C(v13);
          v17 = v5[2];
          v18 = (v16 & 1) == 0;
          v19 = __OFADD__(v17, v18);
          v20 = v17 + v18;
          if (v19)
          {
            goto LABEL_30;
          }

          v21 = v16;
          if (v5[3] < v20)
          {
            break;
          }

          v22 = v58;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v27 = v15;
          sub_2277A9CF8();
          v15 = v27;
          v5 = v58[9];
          if (v21)
          {
LABEL_5:
            v6 = v5[7];
            v7 = *(v6 + 8 * v15);
            *(v6 + 8 * v15) = v8;

            v8 = v7;
            goto LABEL_6;
          }

LABEL_17:
          v5[(v15 >> 6) + 8] |= 1 << v15;
          *(v5[6] + 8 * v15) = v13;
          *(v5[7] + 8 * v15) = v8;
          v25 = v5[2];
          v19 = __OFADD__(v25, 1);
          v26 = v25 + 1;
          if (v19)
          {
            goto LABEL_31;
          }

          v5[2] = v26;
LABEL_6:

          ++v3;
          v9 = v5;
          v2 = v12;
          if (v0 == v12)
          {
            goto LABEL_34;
          }
        }

        v22 = v58;
        sub_2277A90A4(v20, isUniquelyReferenced_nonNull_native);
        v23 = v58[9];
        v15 = sub_2277A8F8C(v13);
        if ((v21 & 1) != (v24 & 1))
        {

          return sub_2277E29A4();
        }

LABEL_16:
        v5 = v22[9];
        if (v21)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    v5 = v0[20];
    v9 = v0[21];
LABEL_34:

    v32 = *(v9 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v34 = sub_2277CA0B8(*(v9 + 16), 0);
      v56 = sub_227796514(v58 + 2, v34 + 4, v32, v9);
      v35 = v58[2];
      v36 = v58[3];
      v37 = v58[4];
      v38 = v58[5];
      v39 = v58[6];

      v40 = sub_227796F24();
      if (v56 != v32)
      {
        __break(1u);
        return MEMORY[0x282200308](v40, v41, v42);
      }

      v33 = v34;
    }

    v44 = v58[15];
    v43 = v58[16];
    v45 = v58[14];
    v57 = v58[13];
    v46 = v58[11];
    v47 = v58[12];
    v48 = v44[5];
    v49 = sub_2277E1E84();
    (*(*(v49 - 8) + 16))(&v43[v48], v46, v49);
    *v43 = v33;
    *&v43[v44[6]] = MEMORY[0x277D84F90];
    *&v43[v44[7]] = v47;
    v57(v43);
    sub_227796F2C(v43);
    v58[20] = v5;
    v58[21] = v9;
    v50 = sub_227796ECC();
    v51 = *(MEMORY[0x277D856D0] + 4);
    v52 = swift_task_alloc();
    v58[22] = v52;
    *v52 = v58;
    v52[1] = sub_2277956A8;
    v53 = v58[19];
    v41 = v58[17];
    v40 = (v58 + 7);
    v42 = v50;

    return MEMORY[0x282200308](v40, v41, v42);
  }

  v28 = v0[21];
  v29 = v0[16];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v30 = v0[1];

  return v30();
}

uint64_t sub_227795C50()
{
  *(v0 + 64) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_227795CE4, 0, 0);
}

uint64_t sub_227795CE4()
{
  v1 = v0[21];
  v2 = v0[16];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_227795D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_227796CF8(a3, v24 - v10);
  v12 = sub_2277E2624();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_227796D68(v11);
  }

  else
  {
    sub_2277E2614();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2277E25C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2277E2464() + 32;

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

      sub_227796D68(a3);

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

  sub_227796D68(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_227795FEC()
{
  v1 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState;
  v2 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
    v5 = sub_2277E2634();
    v6 = *(v0 + v1);
    MEMORY[0x28223BE20](v5);

    os_unfair_lock_lock((v6 + 24));
    sub_227797050((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }

  return result;
}

uint64_t WeeklySummaryInfoQuery.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v2 = sub_2277E1FA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState);

  return v0;
}

uint64_t WeeklySummaryInfoQuery.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v2 = sub_2277E1FA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_227796248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = &type metadata for ActivityDataQuery;
  v12[4] = &protocol witness table for ActivityDataQuery;
  v12[0] = a1;
  sub_227796FEC(v12, a4 + 16);
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_healthStore) = a3;
  v7 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v8 = sub_2277E1FA4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4 + v7, a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB08, &qword_2277E4860);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  (*(v9 + 8))(a2, v8);
  __swift_destroy_boxed_opaque_existential_0(v12);
  *(v10 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState) = v10;
  return a4;
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

uint64_t sub_2277963C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  sub_227796FEC(v17, a4 + 16);
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_healthStore) = a3;
  v12 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v13 = sub_2277E1FA4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a4 + v12, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB08, &qword_2277E4860);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  (*(v14 + 8))(a2, v13);
  __swift_destroy_boxed_opaque_existential_0(v17);
  *(v15 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState) = v15;
  return a4;
}

void *sub_227796514(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_227796668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeeklySummaryInfoQuery();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a5);
  return sub_2277963C0(v14, a2, a3, v18, a5, a6);
}

unint64_t sub_227796770()
{
  result = qword_27D7CEAD0;
  if (!qword_27D7CEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAD0);
  }

  return result;
}

uint64_t sub_2277967C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2277E23A4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2277E1E84() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v11);
  v16 = *(v1 + v11 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_22779696C;

  return sub_2277954D8(a1, v13, v14, v1 + v6, v1 + v9, v12, v15, v16);
}

uint64_t sub_22779696C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227796A78(uint64_t *a1)
{
  v3 = **(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t sub_227796ACC()
{
  result = sub_2277E1FA4();
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

uint64_t sub_227796C0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227796C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_227796CB0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_227796CC8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_227796CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227796D68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227796DD0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB00, &unk_2277E59E0);
  v3 = sub_2277E2914();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_2277A8F8C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_2277A8F8C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_227796ECC()
{
  result = qword_27D7CEAF8;
  if (!qword_27D7CEAF8)
  {
    sub_2277E2394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAF8);
  }

  return result;
}

uint64_t sub_227796F2C(uint64_t a1)
{
  v2 = type metadata accessor for WeeklySummaryInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_227796FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FirstGlanceContent.activitySharingFriendsListData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceContent.init(activitySharingFriendsListData:experienceType:types:pregnancyState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t FirstGlanceContent.hash(into:)(uint64_t a1)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  v4 = *(GlanceType - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](GlanceType - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  sub_2277E1F44();
  MEMORY[0x22AA9BBC0](v10);
  MEMORY[0x22AA9BBC0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_22778E0CC(v14, v7);
      FirstGlanceType.hash(into:)(a1);
      sub_227797398(v7);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return MEMORY[0x22AA9BBC0](v12);
}

uint64_t FirstGlanceContent.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_2277E2A04();
  FirstGlanceContent.hash(into:)(v4);
  return sub_2277E2A44();
}

uint64_t sub_227797270()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_2277E2A04();
  FirstGlanceContent.hash(into:)(v4);
  return sub_2277E2A44();
}

uint64_t sub_2277972C8()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_2277E2A04();
  FirstGlanceContent.hash(into:)(v4);
  return sub_2277E2A44();
}

uint64_t _s15FitnessCoaching18FirstGlanceContentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = sub_227790458(*a1, a1[1], *a2, a2[1]);
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return sub_2277D6C5C(v2, v5) & (v4 == v7);
  }

  return result;
}

uint64_t sub_227797398(uint64_t a1)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  (*(*(GlanceType - 8) + 8))(a1, GlanceType);
  return a1;
}

unint64_t sub_2277973F8()
{
  result = qword_27D7CEB10;
  if (!qword_27D7CEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEB10);
  }

  return result;
}

uint64_t Date.intervalForWeeklySummary(calendar:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v77 = &v74 - v8;
  MEMORY[0x28223BE20](v7);
  v76 = &v74 - v9;
  v89 = sub_2277E2024();
  v82 = *(v89 - 8);
  v10 = *(v82 + 64);
  v11 = MEMORY[0x28223BE20](v89);
  v80 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v83 = &v74 - v15;
  v16 = sub_2277E1FA4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v79 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v78 = &v74 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v84 = &v74 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v75 = (&v74 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v86 = &v74 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v85 = &v74 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v74 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v74 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v74 - v37;
  sub_2277E1FB4();
  v39 = sub_2277E1FD4();
  v40 = sub_2277E1F74();
  v41 = [v39 hk:v40 startOfFitnessWeekBeforeDate:?];

  sub_2277E1F84();
  v42 = a1;
  v43 = sub_2277E2004();
  v44 = v82;
  v45 = *(v82 + 104);
  v46 = (v17 + 48);
  v87 = v38;
  if (v43)
  {
    v84 = v33;
    v47 = v89;
    (v45)(v83, *MEMORY[0x277CC99A8], v89);
    v48 = v76;
    sub_2277E1FF4();
    if ((*v46)(v48, 1, v16) != 1)
    {
      (*(v44 + 8))(v83, v47);
      v49 = v84;
      (*(v17 + 32))(v84, v48, v16);
      v50 = sub_2277E1FD4();
      v51 = sub_2277E1F74();
      v52 = [v50 hk:v51 startOfFitnessWeekBeforeDate:?];

      v53 = v85;
      sub_2277E1F84();

      v54 = *(v17 + 16);
      v54(v86, v53, v16);
      v54(v75, v49, v16);
      sub_2277E1E54();
      v55 = *(v17 + 8);
      v55(v53, v16);
      v55(v49, v16);
      v56 = v36;
LABEL_7:
      v55(v56, v16);
      return (v55)(v87, v16);
    }

    v73 = v48;
  }

  else
  {
    v83 = v36;
    v57 = *MEMORY[0x277CC9968];
    v58 = v74;
    v59 = v89;
    v76 = v45;
    (v45)(v74, v57, v89);
    v60 = v77;
    sub_2277E1FF4();
    v75 = *v46;
    if (v75(v60, 1, v16) != 1)
    {
      v82 = *(v44 + 8);
      (v82)(v58, v59);
      v77 = *(v17 + 32);
      (v77)(v84, v60, v16);
      v61 = sub_2277E1FD4();
      v74 = v42;
      v62 = v61;
      v63 = sub_2277E1F74();
      v64 = [v62 hk:v63 startOfFitnessWeekBeforeDate:?];

      v65 = v89;
      v66 = v78;
      sub_2277E1F84();

      v67 = v80;
      (v76)(v80, *MEMORY[0x277CC99A8], v65);
      v68 = v66;
      v60 = v81;
      sub_2277E1FF4();
      if (v75(v60, 1, v16) != 1)
      {
        (v82)(v67, v65);
        v69 = v79;
        (v77)(v79, v60, v16);
        v70 = *(v17 + 16);
        v71 = v83;
        v70(v85, v83, v16);
        v70(v86, v69, v16);
        sub_2277E1E54();
        v55 = *(v17 + 8);
        v55(v69, v16);
        v55(v68, v16);
        v55(v84, v16);
        v56 = v71;
        goto LABEL_7;
      }
    }

    v73 = v60;
  }

  sub_227798E24(v73);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.activitySummaryComponents(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAB8, &qword_2277E4630);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAC0, &qword_2277E4638);
  v6 = sub_2277E2024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2277E3A50;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x277CC9978], v6);
  v12(v11 + v8, *MEMORY[0x277CC9988], v6);
  v12(v11 + 2 * v8, *MEMORY[0x277CC9998], v6);
  v12(v11 + 3 * v8, *MEMORY[0x277CC9968], v6);
  sub_227799A74(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2277E1FC4();

  v13 = sub_2277E2044();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, a1, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  return sub_2277E1EE4();
}

uint64_t Date.byAdding(component:value:calendar:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_2277E1FF4();
  v6 = sub_2277E1FA4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_227798E24(v5);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.bySubtracting(component:value:calendar:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if (a1 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    sub_2277E1FF4();
    v8 = sub_2277E1FA4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      return (*(v9 + 32))(a2, v7, v8);
    }
  }

  sub_227798E24(v7);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.endOfDay(for:)@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_2277E2044();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = sub_2277E2024();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = sub_2277E1FA4();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  v25 = *MEMORY[0x277CC9968];
  v26 = v11[13];
  v47 = v10;
  v38 = v26;
  v26(v16, v25, v10);
  sub_2277E1FF4();
  v37 = v18[6];
  if (v37(v9, 1, v17) == 1)
  {
    v35 = v9;
  }

  else
  {
    v27 = v11[1];
    v28 = v11 + 1;
    v29 = v47;
    v41 = v28;
    v36 = v27;
    v27(v16, v47);
    v39 = v18[4];
    v39(v22, v9, v17);
    sub_2277E1FB4();
    v30 = v18[1];
    v30(v22, v17);
    v31 = v40;
    v38(v40, *MEMORY[0x277CC99A8], v29);
    v32 = v43;
    sub_2277E2014();
    v33 = v42;
    sub_2277E1FF4();
    if (v37(v33, 1, v17) != 1)
    {
      (*(v44 + 8))(v32, v45);
      v36(v31, v47);
      v30(v24, v17);
      return (v39)(v46, v33, v17);
    }

    v35 = v33;
  }

  sub_227798E24(v35);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.intervalForDay(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v50 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  v7 = sub_2277E2024();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v53 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = sub_2277E1FA4();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v48 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v47 = &v39 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v46 = &v39 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v52 = &v39 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v39 - v26;
  MEMORY[0x28223BE20](v25);
  v44 = &v39 - v28;
  sub_2277E1FB4();
  v29 = *MEMORY[0x277CC9968];
  v30 = v8[13];
  v54 = v7;
  v43 = v30;
  v30(v13, v29, v7);
  sub_2277E1FF4();
  v31 = v6;
  v42 = v15[6];
  if (v42(v6, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v32 = v8[1];
  v33 = v54;
  v49 = v8 + 1;
  v41 = v32;
  v32(v13, v54);
  v40 = v15[4];
  v40(v27, v31, v14);
  v45 = v27;
  sub_2277E1FB4();
  v43(v53, *MEMORY[0x277CC99A8], v33);
  v31 = v50;
  sub_2277E1FF4();
  if (v42(v31, 1, v14) == 1)
  {
LABEL_4:
    sub_227798E24(v31);
    result = sub_2277E28D4();
    __break(1u);
  }

  else
  {
    v41(v53, v54);
    v34 = v46;
    v40(v46, v31, v14);
    v35 = v15[2];
    v36 = v44;
    v35(v47, v44, v14);
    v35(v48, v34, v14);
    sub_2277E1E54();
    v37 = v15[1];
    v37(v34, v14);
    v37(v52, v14);
    v37(v45, v14);
    return (v37)(v36, v14);
  }

  return result;
}

uint64_t Date.intervalForWeekSoFar(calendar:)()
{
  v1 = v0;
  v2 = sub_2277E1FA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = sub_2277E1FD4();
  v14 = sub_2277E1F74();
  v15 = [v13 hk:v14 startOfFitnessWeekBeforeDate:?];

  sub_2277E1F84();
  v16 = *(v3 + 16);
  v16(v10, v12, v2);
  v16(v7, v1, v2);
  sub_2277E1E54();
  return (*(v3 + 8))(v12, v2);
}

void Date.startOfFitnessWeek(for:)()
{
  v0 = sub_2277E1FD4();
  v1 = sub_2277E1F74();
  v2 = [v0 hk:v1 startOfFitnessWeekBeforeDate:?];

  sub_2277E1F84();
}

uint64_t sub_227798E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Date.intervalForFullWeek(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = sub_2277E2024();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = sub_2277E1FA4();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v52 = &v45 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v51 = &v45 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v58 = &v45 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v56 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - v25;
  v27 = sub_2277E1FD4();
  v28 = sub_2277E1F74();
  v29 = [v27 hk:v28 startOfFitnessWeekBeforeDate:?];

  v50 = v26;
  sub_2277E1F84();

  v30 = v60;
  v31 = *MEMORY[0x277CC9968];
  v49 = *(v60 + 104);
  v49(v12, v31, v7);
  v32 = v57;
  sub_2277E1FF4();
  v48 = *(v32 + 48);
  if (v48(v6, 1, v13) == 1)
  {
    v44 = v6;
  }

  else
  {
    v33 = *(v30 + 8);
    v60 = v30 + 8;
    v47 = v33;
    v33(v12, v7);
    v46 = *(v32 + 32);
    v46(v56, v6, v13);
    v34 = sub_2277E1FD4();
    v35 = sub_2277E1F74();
    v36 = [v34 hk:v35 startOfFitnessWeekBeforeDate:?];

    sub_2277E1F84();
    v49(v59, *MEMORY[0x277CC99A8], v7);
    v37 = v54;
    sub_2277E1FF4();
    if (v48(v37, 1, v13) != 1)
    {
      v47(v59, v7);
      v38 = v51;
      v46(v51, v37, v13);
      v39 = v57;
      v40 = *(v57 + 16);
      v41 = v50;
      v40(v52, v50, v13);
      v40(v53, v38, v13);
      sub_2277E1E54();
      v42 = *(v39 + 8);
      v42(v38, v13);
      v42(v58, v13);
      v42(v56, v13);
      return (v42)(v41, v13);
    }

    v44 = v37;
  }

  sub_227798E24(v44);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

BOOL Date.isFirstDayOfFitnessWeek(for:)()
{
  v0 = sub_2277E2024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CC99B8], v0);
  v5 = sub_2277E2034();
  (*(v1 + 8))(v4, v0);
  return HKFirstDayOfWeekForWeeklyGoalCalculations() == v5;
}

uint64_t Date.isLastDayOfFitnessWeek(for:)()
{
  v0 = sub_2277E2024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CC99B8], v0);
  v5 = sub_2277E2034();
  result = (*(v1 + 8))(v4, v0);
  if (!__OFADD__(v5, 1))
  {
    return (v5 + 1) % 7 == HKFirstDayOfWeekForWeeklyGoalCalculations();
  }

  __break(1u);
  return result;
}

uint64_t sub_2277996D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_2277E2024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x277CC9968], v6);
  sub_2277E1FF4();
  v11 = sub_2277E1FA4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_227798E24(v5);
    result = sub_2277E28D4();
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }

  return result;
}

Swift::String __swiftcall Date.toISO8601()()
{
  v0 = sub_2277E2074();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v5 setFormatOptions_];
  sub_2277E2064();
  v6 = sub_2277E2054();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  v7 = sub_2277E1F74();
  v8 = [v5 stringFromDate_];

  v9 = sub_2277E2434();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_227799A74(uint64_t a1)
{
  v2 = sub_2277E2024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB20, "hq");
    v10 = sub_2277E27E4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_227799D6C(&unk_2813BCCA0);
      v18 = sub_2277E23E4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_227799D6C(&qword_2813BCC98);
          v25 = sub_2277E2404();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_227799D6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2277E2024();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227799DB0()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  sub_2277E28C4();
  return *(&v2 + 1);
}

uint64_t sub_227799E04()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_2277E28C4();
  return 0;
}

uint64_t sub_227799E5C()
{
  v0 = sub_2277E2374();
  __swift_allocate_value_buffer(v0, qword_2813BC6B8);
  __swift_project_value_buffer(v0, qword_2813BC6B8);
  return sub_2277E2364();
}

uint64_t sub_22779A168(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2277E2374();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2277E2364();
}

uint64_t sub_22779A204@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2277E2374();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  v2 = Logger.path(file:function:)(file, function);
  oslog = sub_2277E2354();
  v3 = sub_2277E2714();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    v6 = sub_22779A830(v2._countAndFlagsBits, v2._object, &v8);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_227786000, oslog, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AA9C370](v5, -1, -1);
    MEMORY[0x22AA9C370](v4, -1, -1);
  }

  else
  {
  }
}

Swift::String __swiftcall Logger.path(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  sub_22779ADE8();
  v6 = (sub_2277E2784() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  sub_22779A614(46, 0xE100000000000000, v5, v4);
  v8 = sub_2277E24D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x22AA9B620](v8, v10, v12, v14);
  v17 = v16;

  sub_22779A614(40, 0xE100000000000000, countAndFlagsBits, object);
  v18 = sub_2277E24D4();
  v19 = MEMORY[0x22AA9B620](v18);
  v21 = v20;

  v22 = pthread_self();
  pthread_mach_thread_np(v22);
  v23 = sub_2277E2954();
  MEMORY[0x22AA9B650](v23);

  MEMORY[0x22AA9B650](8285, 0xE200000000000000);
  MEMORY[0x22AA9B650](v15, v17);

  MEMORY[0x22AA9B650](14906, 0xE200000000000000);
  MEMORY[0x22AA9B650](v19, v21);

  v24 = 91;
  v25 = 0xE100000000000000;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

unint64_t sub_22779A614(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_2277E24C4() != a1 || v9 != a2)
  {
    v10 = sub_2277E2984();

    if (v10)
    {
      return v8;
    }

    v8 = sub_2277E2494();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_22779A74C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_2277E28C4();
  return 0;
}

uint64_t sub_22779A7D4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22779A830(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22779A830(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22779A8FC(v11, 0, 0, 1, a1, a2);
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
    sub_22778AD1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22779A8FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22779AA08(a5, a6);
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
    result = sub_2277E2834();
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

uint64_t sub_22779AA08(uint64_t a1, unint64_t a2)
{
  v4 = sub_22779AA54(a1, a2);
  sub_22779AB84(&unk_283AE3550);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22779AA54(uint64_t a1, unint64_t a2)
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

  v6 = sub_22779AC70(v5, 0);
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

  result = sub_2277E2834();
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
        v10 = sub_2277E24B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22779AC70(v10, 0);
        result = sub_2277E27F4();
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

uint64_t sub_22779AB84(uint64_t result)
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

  result = sub_22779ACE4(result, v12, 1, v3);
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

void *sub_22779AC70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB70, "dq");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22779ACE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB70, "dq");
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

_BYTE **sub_22779ADD8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_22779ADE8()
{
  result = qword_2813BC588[0];
  if (!qword_2813BC588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BC588);
  }

  return result;
}

uint64_t TransportJsonSerializable<>.transportData()()
{
  v0 = sub_2277E1E04();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2277E1DF4();
  v3 = sub_2277E1DE4();

  return v3;
}

uint64_t sub_22779AEF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v3 = 4;
    swift_willThrow();
  }

  else
  {
    v7 = sub_2277E1DD4();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_2277905C0(a1, a2);
    sub_2277E1DC4();
    sub_2277E1DB4();

    sub_2277945BC(a1, a2);
    sub_2277945BC(a1, a2);
    if (!v2)
    {
      v4 = v11;
    }
  }

  return v4 & 1;
}

uint64_t sub_22779AFFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v3 = 4;
    return swift_willThrow();
  }

  else
  {
    v7 = sub_2277E1DD4();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_2277905C0(a1, a2);
    sub_2277E1DC4();
    sub_2277E1DB4();

    sub_2277945BC(a1, a2);
    result = sub_2277945BC(a1, a2);
    if (!v2)
    {
      return v10;
    }
  }

  return result;
}

uint64_t TransportJsonSerializable<>.init(transportData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v2 = 4;
    return swift_willThrow();
  }

  else
  {
    v6 = sub_2277E1DD4();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_2277905C0(a1, a2);
    sub_2277E1DC4();
    sub_2277E1DB4();

    sub_2277945BC(a1, a2);
    return sub_2277945BC(a1, a2);
  }
}

uint64_t sub_22779B1FC()
{
  v6 = *v0;
  v1 = sub_2277E1E04();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2277E1DF4();
  v4 = sub_2277E1DE4();

  return v4;
}

uint64_t sub_22779B290@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22779AFFC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22779B2BC()
{
  v6 = *v0;
  v1 = sub_2277E1E04();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2277E1DF4();
  v4 = sub_2277E1DE4();

  return v4;
}

uint64_t sub_22779B350@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22779AEF8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t static String.read(from:key:)(void *a1)
{
  v2 = sub_2277E2414();
  v3 = [a1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2277E2434();

  return v4;
}

void sub_22779B420(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2277E2414();
  v5 = [a1 stringForKey_];

  if (v5)
  {
    v6 = sub_2277E2434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_2277E2414();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_22779B544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22779CCC4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_22779B574(void *a1)
{
  v3 = *v1;
  v4 = sub_2277E2414();
  [a1 setInteger:v3 forKey:v4];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_2277E2414();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

uint64_t sub_22779B648@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSb15FitnessCoachingE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a1);
  *a2 = result;
  return result;
}

void sub_22779B670(void *a1)
{
  v3 = *v1;
  v4 = sub_2277E2414();
  [a1 setBool:v3 forKey:v4];
}

uint64_t static Data.read(from:key:)(void *a1)
{
  v2 = sub_2277E2414();
  v3 = [a1 dataForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2277E1F34();

  return v4;
}

void sub_22779B778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a6(a4, a5);
  v8 = sub_2277E2414();
  [a1 setObject:v7 forKey:v8];
}

void sub_22779B804(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2277E2414();
  v5 = [a1 dataForKey_];

  if (v5)
  {
    v6 = sub_2277E1F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_22779B8A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  v8 = a6(*v6, v6[1]);
  v9 = sub_2277E2414();
  [a1 setObject:v8 forKey:v9];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_2277E2414();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

uint64_t sub_22779B9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22779CA30(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_22779B9E8(void *a1)
{
  v3 = *v1;
  v4 = sub_2277E2414();
  [a1 setDouble:v4 forKey:v3];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_2277E2414();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_22779BAF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22779CB74(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_22779BB24(void *a1)
{
  v3 = *v1;
  v5 = sub_2277E2414();
  LODWORD(v4) = v3;
  [a1 setFloat:v5 forKey:v4];
}

uint64_t static Date.read(from:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_2277E2414();
  v9 = [a1 objectForKey_];

  if (v9)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_22778CE70(v17, &unk_27D7CF290, &qword_2277E4A68);
    v10 = sub_2277E1FA4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
LABEL_8:
    sub_22778CE70(v7, &qword_27D7CEB18, &qword_2277E4A60);
    sub_2277E1FA4();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  v10 = sub_2277E1FA4();
  v11 = swift_dynamicCast();
  v12 = *(v10 - 8);
  v13 = *(v12 + 56);
  v13(v7, v11 ^ 1u, 1, v10);
  if ((*(v12 + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_8;
  }

  (*(v12 + 32))(a2, v7, v10);
  return (v13)(a2, 0, 1, v10);
}

Swift::Void __swiftcall Date.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_2277E1F74();
  v4 = sub_2277E2414();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

void sub_22779BEAC(void *a1)
{
  v2 = sub_2277E1F74();
  v3 = sub_2277E2414();
  [a1 setObject:v2 forKey:v3];
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  (*(a1 + 8))();
  v3 = sub_2277E2774();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v12);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v22, v21);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    return (*(v10 + 8))(v14, a4);
  }

  (*(v17 + 32))(v20, v14, v16);
  (*(a5 + 16))(a1, a2, a3, v16, a5);
  return (*(v17 + 8))(v20, v16);
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v49 = a1;
  v50 = a7;
  v12 = sub_2277E2774();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - v14;
  v47 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_2277E2774();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - v20;
  v22 = *(*(AssociatedTypeWitness - 8) + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v44 - v26;
  v28 = *(a6 + 8);
  v29 = v49;
  v44 = a2;
  v49 = a3;
  v30 = a6;
  v32 = v31;
  v28(v29, a2, a3, AssociatedTypeWitness, v30);
  if ((*(v32 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v21, v16);
    return (*(*(a4 - 8) + 56))(v50, 1, 1, a4);
  }

  else
  {
    v34 = v50;
    (*(v32 + 32))(v27, v21, AssociatedTypeWitness);
    (*(v32 + 16))(v25, v27, AssociatedTypeWitness);
    v35 = v48;
    sub_2277E2524();
    v36 = *(a4 - 8);
    if ((*(v36 + 48))(v35, 1, a4) == 1)
    {
      v47 = v32;
      (*(v45 + 8))(v35, v46);
      if (qword_2813BC690 != -1)
      {
        swift_once();
      }

      v37 = sub_2277E2374();
      __swift_project_value_buffer(v37, qword_2813BC698);
      v38 = v49;

      v39 = sub_2277E2354();
      v40 = sub_2277E26F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = v27;
        v43 = swift_slowAlloc();
        v51 = v43;
        *v41 = 141558274;
        *(v41 + 4) = 1752392040;
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_22779A830(v44, v38, &v51);
        _os_log_impl(&dword_227786000, v39, v40, "Couldn't parse user default %{mask.hash}s.", v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x22AA9C370](v43, -1, -1);
        MEMORY[0x22AA9C370](v41, -1, -1);

        (*(v47 + 8))(v42, AssociatedTypeWitness);
      }

      else
      {

        (*(v47 + 8))(v27, AssociatedTypeWitness);
      }

      return (*(v36 + 56))(v34, 1, 1, a4);
    }

    else
    {
      (*(v32 + 8))(v27, AssociatedTypeWitness);
      (*(v36 + 32))(v34, v35, a4);
      return (*(v36 + 56))(v34, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v17 - v14;
  sub_2277E2514();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

void *sub_22779C83C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

BOOL sub_22779C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_2277E2804();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t _sSb15FitnessCoachingE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1)
{
  v2 = sub_2277E2414();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_22778CE70(v8, &unk_27D7CF290, &qword_2277E4A68);
    return 2;
  }
}

uint64_t sub_22779CA30(void *a1)
{
  v2 = sub_2277E2414();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_22778CE70(v10, &unk_27D7CF290, &qword_2277E4A68);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v10[0] = 0;
  v4 = sub_22779C85C(v6, v7, v10, MEMORY[0x277D84FA8]);

  if (v4)
  {
    return *&v10[0];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22779CB74(void *a1)
{
  v2 = sub_2277E2414();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_22778CE70(v12, &unk_27D7CF290, &qword_2277E4A68);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v5 = 0;
    v6 = 1;
    return v5 | ((v6 & 1) << 32);
  }

  LODWORD(v12[0]) = 0;
  v4 = sub_22779C85C(v8, v9, v12, MEMORY[0x277D84FB0]);

  v5 = LODWORD(v12[0]);
  v6 = !v4;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | ((v6 & 1) << 32);
}

uint64_t sub_22779CCC4(void *a1)
{
  v2 = sub_2277E2414();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22778CE70(v8, &unk_27D7CF290, &qword_2277E4A68);
    return 0;
  }
}

_BYTE *sub_22779CE30@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.workoutData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.workoutData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf() + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf()
{
  result = qword_27D7CEBB0;
  if (!qword_27D7CEBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf() + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf() + 24);
  return sub_2277E20F4();
}

uint64_t sub_22779D164()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CEB78);
  __swift_project_value_buffer(v0, qword_27D7CEB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutData";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "moveRingPercentage";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceYesterdayWorkoutProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CEB78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2277E21A4();
    }

    else if (result == 2)
    {
      sub_2277E21E4();
    }
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2277E22C4();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v0 + 16) == 0.0 || (result = sub_2277E22E4(), !v1))
  {
    v8 = v0 + *(type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf() + 24);
    return sub_2277E20E4();
  }

  return result;
}

uint64_t static FirstGlanceYesterdayWorkoutProtobuf.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf() + 24);
  sub_2277E2104();
  sub_22779DCA8(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  sub_22779DCA8(&qword_27D7CEB90, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22779D68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2277E4B40;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return sub_2277E20F4();
}

uint64_t sub_22779D6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22779D74C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22779D7C0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_22779D814(uint64_t a1, uint64_t a2)
{
  v4 = sub_22779DCA8(&qword_27D7CEBC0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22779D890@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CEB78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22779D938(uint64_t a1)
{
  v2 = sub_22779DCA8(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22779D9A4()
{
  sub_22779DCA8(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);

  return sub_2277E2264();
}

uint64_t sub_22779DA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_2277E2104();
  sub_22779DCA8(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

uint64_t sub_22779DC24()
{
  result = sub_2277E2104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22779DCA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Array<A>.protobuf()()
{
  type metadata accessor for CollectionProtobuf();
  sub_22779E8E8(&qword_27D7CEBC8);
  return sub_2277E2274();
}

uint64_t sub_22779DD9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v6 = sub_2277E25A4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  WitnessTable = swift_getWitnessTable();
  result = sub_22779DEAC(sub_22779E92C, v12, v6, MEMORY[0x277CC9318], v7, WitnessTable, MEMORY[0x277D84950], v13);
  if (!v4)
  {
    v10 = result;
    v11 = *a1;

    *a1 = v10;
  }

  return result;
}

uint64_t sub_22779DEAC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2277E26C4();
  if (!v26)
  {
    return sub_2277E2574();
  }

  v48 = v26;
  v52 = sub_2277E28A4();
  v39 = sub_2277E28B4();
  sub_2277E2864();
  result = sub_2277E26B4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2277E26E4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2277E2894();
      result = sub_2277E26D4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.init(_:)(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEBD0, &qword_2277E4D48);
  sub_22779E4CC();
  sub_2277E24E4();
  if (v2)
  {
    sub_22779E530(a1);
  }

  else
  {

    sub_2277E25A4();
    swift_getWitnessTable();
    a2 = sub_2277E25B4();
    sub_22779E530(a1);
  }

  return a2;
}

uint64_t sub_22779E3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a3 + 16);
  sub_2277905C0(*a1, v9);
  result = v10(v8, v9, a2, a3);
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
  }

  return result;
}

unint64_t sub_22779E4CC()
{
  result = qword_27D7CEBD8;
  if (!qword_27D7CEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEBD0, &qword_2277E4D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEBD8);
  }

  return result;
}

uint64_t sub_22779E530(uint64_t a1)
{
  v2 = type metadata accessor for CollectionProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22779E58C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return Array<A>.protobuf()();
}

uint64_t sub_22779E5B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  result = Array<A>.init(_:)(a1, *(a2 + 16));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Array<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v10[2] = a2;
  v10[3] = a3;
  swift_getAssociatedTypeWitness();
  v5 = sub_2277E25A4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_22779DEAC(sub_22779E860, v10, v5, a2, v6, WitnessTable, MEMORY[0x277D84950], &v11);

  if (!v3)
  {
    v12 = v8;
    sub_2277E25A4();
    swift_getWitnessTable();
    return sub_2277E25B4();
  }

  return result;
}