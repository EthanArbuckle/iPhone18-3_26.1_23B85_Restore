uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ECB2194()
{
  result = qword_27F22D218;
  if (!qword_27F22D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D218);
  }

  return result;
}

uint64_t type metadata accessor for SearchLandingDiffablePagePresenter()
{
  result = qword_27F22D230;
  if (!qword_27F22D230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB233C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24ECB2478(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24ECF37DC(a1, v4);
}

uint64_t sub_24ECB252C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECB257C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECB25BC()
{

  return swift_deallocObject();
}

uint64_t SearchGhostHintFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchGhostHintFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchGhostHintFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  __swift_project_value_buffer(v2, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
  sub_24F929AC8();
  if (v6)
  {
    sub_24E612E28(&v5, v7);
    sub_24ECB2910(v7, a1);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_24ECB2BA8(&v5);
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24ECB2910(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = MEMORY[0x277D837D0];
  if (!v8 || (v24 = MEMORY[0x277D837D0], v22 = v7, v23 = v8, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_24F929A28(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = (*(v12 + 16))(v11, v12);
    if (!v14 || (v24 = v9, v22 = v13, v23 = v14, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_24F929A28(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
    {
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = (*(v16 + 24))(v15, v16);
      if (!v18 || (v24 = v9, v22 = v17, v23 = v18, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_24F929A28(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
      {
        v19 = a1[3];
        v20 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v19);
        result = (*(v20 + 32))(v19, v20);
        if (v21)
        {
          v24 = v9;
          v22 = result;
          v23 = v21;
          __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
          sub_24F929A28();
          return __swift_destroy_boxed_opaque_existential_1(&v22);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24ECB2BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ECB2C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ECB2CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SearchGhostHintFieldsProvider()
{
  result = qword_27F22D240;
  if (!qword_27F22D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB2DC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECB2E84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RefreshChallengeDetailAction()
{
  result = qword_27F22D250;
  if (!qword_27F22D250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB2F74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D260);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  refreshed = type metadata accessor for RefreshChallengeDetailAction();
  MEMORY[0x28223BE20](refreshed);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECB32F8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = refreshed;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E862F10();
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24ECB334C(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24ECB33B0(v10);
}

uint64_t sub_24ECB3268(uint64_t a1)
{
  v2 = sub_24ECB32F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECB32A4(uint64_t a1)
{
  v2 = sub_24ECB32F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ECB32F8()
{
  result = qword_27F22D268;
  if (!qword_27F22D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D268);
  }

  return result;
}

uint64_t sub_24ECB334C(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshChallengeDetailAction();
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24ECB33B0(uint64_t a1)
{
  refreshed = type metadata accessor for RefreshChallengeDetailAction();
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

unint64_t sub_24ECB3420()
{
  result = qword_27F22D270;
  if (!qword_27F22D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D270);
  }

  return result;
}

unint64_t sub_24ECB3478()
{
  result = qword_27F22D278;
  if (!qword_27F22D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D278);
  }

  return result;
}

unint64_t sub_24ECB34D0()
{
  result = qword_27F22D280;
  if (!qword_27F22D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D280);
  }

  return result;
}

uint64_t static MetricsSuppression.isMetricsSuppressed.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F22D288 = a1;
  return result;
}

uint64_t sub_24ECB3608@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F22D288;
  return result;
}

uint64_t sub_24ECB3654(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F22D288 = v1;
  return result;
}

uint64_t sub_24ECB36C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECB3780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SetNicknameAction()
{
  result = qword_27F22D290;
  if (!qword_27F22D290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECB3870()
{
  sub_24ECB390C();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ECB390C()
{
  if (!qword_27F228E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    v0 = sub_24F9271C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F228E40);
    }
  }
}

uint64_t AttributedString.init(nqml:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3[3];
  v18[2] = a3[2];
  v18[3] = v5;
  v18[4] = a3[4];
  v6 = a3[1];
  v18[0] = *a3;
  v18[1] = v6;
  if (a2)
  {
    v9 = a3[3];
    v17[2] = a3[2];
    v17[3] = v9;
    v17[4] = a3[4];
    v10 = a3[1];
    v17[0] = *a3;
    v17[1] = v10;
    v11 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator());
    v12 = sub_24ECB3C7C(a1, a2, v17);
    sub_24ECB3F40(a4);

    v13 = sub_24F91F008();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 0, 1, v13);
  }

  else
  {
    sub_24E951D6C(v18);
    v16 = sub_24F91F008();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t type metadata accessor for NqmlAttributedStringGenerator()
{
  result = qword_27F22D2F0;
  if (!qword_27F22D2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB3B34()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D2A0);
  __swift_project_value_buffer(v4, qword_27F22D2A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

char *sub_24ECB3C7C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v24 = sub_24F91EF78();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F008();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_openInlinePresentationIntents;
  *&v4[v13] = sub_24E60952C(MEMORY[0x277D84F90]);
  v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_didParseEverything] = 0;
  v14 = objc_allocWithZone(ASKNQMLParser);
  v15 = sub_24F92B098();

  v16 = [v14 initWithString_];

  *&v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_parser] = v16;
  v17 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_configuration];
  v18 = a3[3];
  v17[2] = a3[2];
  v17[3] = v18;
  v17[4] = a3[4];
  v19 = a3[1];
  *v17 = *a3;
  v17[1] = v19;
  sub_24F91EFF8();
  v20 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  (*(v10 + 32))(&v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator], v12, v9);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v4[v20], v9);
  sub_24F91EE28();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 32))(&v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex], v8, v24);
  v21 = type metadata accessor for NqmlAttributedStringGenerator();
  v25.receiver = v4;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  [*&v22[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_parser] setDelegate_];
  return v22;
}

uint64_t sub_24ECB3F40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v3 = sub_24F91EF78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F008();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v10, v2 + v11, v7);
  sub_24F91EE28();
  (*(v8 + 8))(v10, v7);
  v13 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v13, v6, v3);
  swift_endAccess();
  [*(v2 + OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_parser) parse];
  sub_24ECB4150();
  return (v12)(v16, v2 + v11, v7);
}

void sub_24ECB4150()
{
  v38 = sub_24F91EF78();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v4;
  v5 = sub_24F91EE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F91F008();
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  v40 = v0;
  swift_beginAccess();
  v30 = *(v9 + 16);
  v32 = v9 + 16;
  v28 = (v9 + 8);
  v35 = (v1 + 8);
  v29 = (v6 + 8);
  while (1)
  {
    v15 = v31;
    v16 = v33;
    v30(v31, v40 + v39, v33);
    sub_24F91EE18();
    (*v28)(v15, v16);
    sub_24ECB76EC(&qword_27F225C00, MEMORY[0x277CC8B30]);
    if (sub_24F92BBE8())
    {
      (*v29)(v8, v5);
      return;
    }

    v17 = v37;
    sub_24F92BC08();
    v18 = sub_24ECB76EC(&qword_27F22D310, MEMORY[0x277CC8B30]);
    v19 = v36;
    v34 = v18;
    sub_24F92AF58();
    v20 = *v35;
    v21 = v38;
    (*v35)(v17, v38);
    v22 = sub_24F92BC88();

    v22(v45, 0);
    v20(v19, v21);
    (*v29)(v8, v5);
    v23 = sub_24F92B098();

    if (qword_27F210F48 != -1)
    {
      swift_once();
    }

    v24 = qword_27F39DBA8;
    if ([v23 length] < 1)
    {

      return;
    }

    v25 = [v23 length];
    if (__OFSUB__(v25, 1))
    {
      break;
    }

    v26 = [v24 characterIsMember_];

    if ((v26 & 1) == 0)
    {
      return;
    }

    swift_beginAccess();
    v27 = sub_24F91EE08();
    if (sub_24F92BBE8())
    {
      goto LABEL_17;
    }

    sub_24ECB76EC(&qword_27F22D318, MEMORY[0x277CC8B30]);
    sub_24F92BCA8();
    if (v42)
    {
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v11 = v37;
      sub_24F92BC08();
      v12 = v36;
      sub_24F92AF58();
      v13 = v11;
      v14 = v38;
      v20(v13, v38);
      sub_24F92BCB8();
      v20(v12, v14);
    }

    v27(v45, 0);
    swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_24ECB495C(void *a1)
{
  v2 = sub_24F91F008();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;

  sub_24F91EE58();
  swift_beginAccess();
  sub_24ECB76EC(&qword_27F22D320, MEMORY[0x277CC8C40]);
  sub_24F91EF88();
  (*(v3 + 8))(v5, v2);
  swift_endAccess();
}

uint64_t sub_24ECB4ACC()
{
  swift_beginAccess();

  v1 = sub_24ECB500C(v0);

  v2 = v1[2];
  v28 = v2;
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    sub_24F4588C0(0, v2, 0);
    v3 = v1 + 8;
    result = sub_24F92C6B8();
    v5 = v28;
    v6 = 0;
    do
    {
      if (result < 0 || result >= 1 << *(v1 + 32))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v8 = result >> 6;
      v9 = 1 << result;
      if ((v3[result >> 6] & (1 << result)) == 0)
      {
        goto LABEL_29;
      }

      v10 = *(v1[6] + 8 * result);
      v11 = *(v1 + 9);
      v13 = *(v29 + 16);
      v12 = *(v29 + 24);
      if (v13 >= v12 >> 1)
      {
        v26 = *(v1 + 9);
        v27 = result;
        sub_24F4588C0((v12 > 1), v13 + 1, 1);
        v5 = v28;
        v11 = v26;
        result = v27;
      }

      *(v29 + 16) = v13 + 1;
      *(v29 + 8 * v13 + 32) = v10;
      v7 = 1 << *(v1 + 32);
      if (result >= v7)
      {
        goto LABEL_30;
      }

      v14 = v3[v8];
      if ((v14 & v9) == 0)
      {
        goto LABEL_31;
      }

      if (v11 != *(v1 + 9))
      {
        goto LABEL_32;
      }

      v15 = v14 & (-2 << (result & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = &v1[v8 + 9];
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_24E6586A8(result, v11, 0);
            v5 = v28;
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_24E6586A8(result, v11, 0);
        v5 = v28;
      }

LABEL_4:
      ++v6;
      result = v7;
    }

    while (v6 != v5);

    v21 = *(v29 + 16);
    if (!v21)
    {

      return 0;
    }

    v22 = 0;
    for (i = 32; ; i += 8)
    {
      v24 = *(v29 + i);
      v25 = __CFADD__(v22, v24);
      v22 += v24;
      if (v25)
      {
        break;
      }

      if (!--v21)
      {

        return v22;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

id sub_24ECB4DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NqmlAttributedStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24ECB4F14()
{
  result = sub_24F91F008();
  if (v1 <= 0x3F)
  {
    result = sub_24F91EF78();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t *sub_24ECB500C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_24ECB51E4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_24ECB516C(v8, v4, v2);
  result = MEMORY[0x2530542D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_24ECB516C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_24ECB51E4(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_24ECB51E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_24ECB5764(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_24ECB5764(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECB52D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D360);
  result = sub_24F92CB58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + v16);
    sub_24F92D068();

    sub_24F92B218();
    result = sub_24F92D0B8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ECB550C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638);
  result = sub_24F92CB58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_24F92D068();

    sub_24F92B218();
    result = sub_24F92D0B8();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ECB5764(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D300);
  result = sub_24F92CB58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_24F92D068();
    MEMORY[0x253052A00](v17);
    result = sub_24F92D0B8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_24ECB5984(uint64_t a1)
{
  v2 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330);
  MEMORY[0x28223BE20](v59);
  v60 = &v51 - v8;
  v9 = sub_24F91F008();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91EF78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return;
      }

      goto LABEL_7;
    }

    v21 = v18;
    v22 = 32;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v21 = v18;
        v22 = 1;
        goto LABEL_11;
      }

LABEL_7:
      if (qword_27F210538 == -1)
      {
LABEL_8:
        v23 = sub_24F92AAE8();
        __swift_project_value_buffer(v23, qword_27F22D2A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F9283A8();
        type metadata accessor for NqmlTextElement(0);
        v63[3] = v24;
        v63[0] = a1;
        sub_24F928438();
        sub_24E601704(v63, &qword_27F2129B0);
        sub_24F92A5A8();

        return;
      }

LABEL_24:
      swift_once();
      goto LABEL_8;
    }

    v21 = v18;
    v22 = 2;
  }

LABEL_11:
  v56 = v22;
  v25 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  swift_beginAccess();
  v26 = *(v10 + 16);
  v55 = v25;
  v26(v12, v2 + v25, v9);
  a1 = v20;
  sub_24F91EFB8();
  (*(v10 + 8))(v12, v9);
  v27 = sub_24ECB4ACC();
  if ((v28 & 1) == 0)
  {
    v52 = v27;
    v29 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
    swift_beginAccess();
    v30 = *(v14 + 16);
    v31 = v2 + v29;
    v32 = v21;
    v30(v16, v31, v21);
    sub_24ECB76EC(&qword_27F22D338, MEMORY[0x277CC8C20]);
    if ((sub_24F92AF98() & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v54 = v14;
    v33 = *(v14 + 32);
    v33(v7, v16, v21);
    v53 = v20;
    v34 = v58;
    v30(&v7[*(v58 + 48)], v20, v21);
    v35 = v57;
    sub_24ECB760C(v7, v57);
    v36 = *(v34 + 48);
    v33(v60, v35, v32);
    v37 = *(v54 + 8);
    v37(v35 + v36, v32);
    sub_24ECB767C(v7, v35);
    v38 = *(v34 + 48);
    a1 = v53;
    v39 = v60;
    v33(&v60[*(v59 + 36)], (v35 + v38), v32);
    v40 = v35;
    v21 = v32;
    v37(v40, v32);
    swift_beginAccess();
    sub_24E658594();
    v41 = sub_24F91F048();
    v61 = v52;
    v62 = 0;
    sub_24EA5BFF0();
    sub_24F91F148();
    v41(v63, 0);
    v14 = v54;
    sub_24E601704(v39, &qword_27F22D330);
    swift_endAccess();
  }

  v42 = a1;
  v43 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_openInlinePresentationIntents;
  swift_beginAccess();
  v44 = *(v2 + v43);
  if (*(v44 + 16))
  {
    a1 = v56;
    v45 = sub_24E76DAA8(v56);
    if (v46)
    {
      v47 = *(*(v44 + 56) + 8 * v45);
      v48 = v47 + 1;
      if (!__OFADD__(v47, 1))
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_23;
    }

    v48 = 1;
  }

  else
  {
    a1 = v56;
    v48 = 1;
  }

LABEL_20:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v2 + v43);
  *(v2 + v43) = 0x8000000000000000;
  sub_24E820718(v48, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + v43) = v61;
  swift_endAccess();
  v50 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  (*(v14 + 40))(v2 + v50, v42, v21);
  swift_endAccess();
}

unint64_t sub_24ECB60E8(uint64_t a1)
{
  v2 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328);
  MEMORY[0x28223BE20](v58);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330);
  MEMORY[0x28223BE20](v59);
  v10 = &v50 - v9;
  v11 = sub_24F91EF78();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v50 - v15;
  v16 = sub_24F91F008();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {

        sub_24F91EE58();
        swift_beginAccess();
        sub_24ECB76EC(&qword_27F22D320, MEMORY[0x277CC8C40]);
        sub_24F91EF88();
        (*(v17 + 8))(v19, v16);
        return swift_endAccess();
      }

      goto LABEL_11;
    }

    v57 = v10;
    v20 = 32;
LABEL_10:
    v56 = v20;
    v21 = sub_24ECB4ACC();
    if (v22)
    {
      goto LABEL_11;
    }

    v55 = v21;
    v26 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
    swift_beginAccess();
    v27 = *(v17 + 16);
    v54 = v26;
    v27(v19, v2 + v26, v16);
    v28 = v60;
    sub_24F91EFB8();
    (*(v17 + 8))(v19, v16);
    v29 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
    swift_beginAccess();
    v30 = v61;
    v53 = *(v61 + 16);
    v53(v13, v2 + v29, v11);
    sub_24ECB76EC(&qword_27F22D338, MEMORY[0x277CC8C20]);
    result = sub_24F92AF98();
    if (result)
    {
      v52 = v29;
      v51 = v2;
      v31 = v30;
      v32 = *(v30 + 32);
      v32(v8, v13, v11);
      v33 = v58;
      v53(&v8[*(v58 + 48)], v28, v11);
      sub_24ECB760C(v8, v5);
      v34 = *(v33 + 48);
      v32(v57, v5, v11);
      v35 = v51;
      v36 = *(v31 + 8);
      v36(&v5[v34], v11);
      sub_24ECB767C(v8, v5);
      v37 = *(v33 + 48);
      v38 = v35;
      v39 = v57;
      v32(&v57[*(v59 + 36)], &v5[v37], v11);
      v36(v5, v11);
      v40 = v52;
      swift_beginAccess();
      sub_24E658594();
      v41 = sub_24F91F048();
      v62 = v55;
      v63 = 0;
      sub_24EA5BFF0();
      sub_24F91F148();
      v41(v64, 0);
      sub_24E601704(v39, &qword_27F22D330);
      swift_endAccess();
      v42 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_openInlinePresentationIntents;
      swift_beginAccess();
      v43 = *(v38 + v42);
      if (!*(v43 + 16))
      {
        goto LABEL_19;
      }

      result = sub_24E76DAA8(v56);
      if ((v44 & 1) == 0)
      {
        goto LABEL_19;
      }

      v45 = *(*(v43 + 56) + 8 * result);
      v46 = __OFSUB__(v45, 1);
      v47 = v45 - 1;
      if (!v46)
      {
        v48 = v47 & ~(v47 >> 63);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v38 + v42);
        *(v38 + v42) = 0x8000000000000000;
        sub_24E820718(v48, v56, isUniquelyReferenced_nonNull_native);
        *(v38 + v42) = v62;
        swift_endAccess();
LABEL_19:
        swift_beginAccess();
        (*(v61 + 40))(v38 + v40, v60, v11);
        return swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v57 = v10;
  if (!a1)
  {
    v20 = 2;
    goto LABEL_10;
  }

  if (a1 == 1)
  {
    v20 = 1;
    goto LABEL_10;
  }

LABEL_11:
  if (qword_27F210538 != -1)
  {
    swift_once();
  }

  v23 = sub_24F92AAE8();
  __swift_project_value_buffer(v23, qword_27F22D2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  type metadata accessor for NqmlTextElement(0);
  v64[3] = v24;
  v64[0] = a1;
  sub_24F928438();
  sub_24E601704(v64, &qword_27F2129B0);
  sub_24F92A5A8();
}

void sub_24ECB68E4()
{
  v0 = sub_24F91EF78();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x28223BE20](v0);
  v47 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v45 = &v43 - v3;
  v53 = sub_24F91EE38();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v54 = sub_24F91F008();
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v16 = sub_24F92B098();
  v17 = [v15 initWithString_];

  if (qword_27F210F40 != -1)
  {
    swift_once();
  }

  v18 = qword_27F39DBA0;
  if (qword_27F39DBA0)
  {
    v19 = [v17 length];
    v20 = sub_24F92B098();
    [v18 replaceMatchesInString:v17 options:0 range:0 withTemplate:{v19, v20}];
  }

  v50 = v17;
  v21 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  v22 = v55;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v24 = v22 + v21;
  v25 = v54;
  v23(v14, v24, v54);
  sub_24F91EE18();
  v51 = *(v9 + 8);
  v52 = v9 + 8;
  v51(v14, v25);
  sub_24F26D05C();
  v27 = v26;
  v28 = *(v4 + 8);
  v46 = v4 + 8;
  v44 = v28;
  v28(v8, v53);
  if (v27)
  {
    v29 = sub_24F92B098();

    if (qword_27F210F48 != -1)
    {
      swift_once();
    }

    v30 = qword_27F39DBA8;
    if ([v29 length] < 1)
    {
    }

    else
    {
      v31 = [v29 length];
      if (__OFSUB__(v31, 1))
      {
        __break(1u);
        return;
      }

      v32 = [v30 characterIsMember_];

      if (v32)
      {
        sub_24F0A8444(v30);
      }
    }
  }

  v33 = v54;
  v23(v11, v55 + v21, v54);
  v34 = v43;
  sub_24F91EE18();
  v51(v11, v33);
  sub_24ECB76EC(&qword_27F225C00, MEMORY[0x277CC8B30]);
  v35 = v45;
  v36 = v53;
  sub_24F92BB88();
  v37 = v47;
  sub_24F92BC08();
  sub_24ECB76EC(&unk_27F22D350, MEMORY[0x277CC8C20]);
  v38 = v49;
  LOBYTE(v33) = sub_24F92AFF8();
  v39 = *(v48 + 8);
  v39(v37, v38);
  v39(v35, v38);
  v44(v34, v36);
  v40 = v50;
  if (v33)
  {
    if (qword_27F210F48 != -1)
    {
      swift_once();
    }

    sub_24F0A8444(qword_27F39DBA8);
  }

  v41 = v40;
  sub_24F92B168();
  sub_24F91EE58();
  swift_beginAccess();
  sub_24ECB76EC(&qword_27F22D320, MEMORY[0x277CC8C40]);
  v42 = v54;
  sub_24F91EF88();
  v51(v11, v42);
  swift_endAccess();
}

uint64_t sub_24ECB6F54()
{
  if (qword_27F210538 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F22D2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v5, &qword_27F2129B0);
  sub_24F92A5A8();

  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_didParseEverything) = 0;
  return result;
}

uint64_t sub_24ECB7134()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328);
  MEMORY[0x28223BE20](v35);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v34 = v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330);
  MEMORY[0x28223BE20](v36);
  v37 = v32 - v5;
  v6 = sub_24F91F008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EF78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  v38 = v0;
  result = sub_24ECB4ACC();
  if (v18)
  {
    goto LABEL_4;
  }

  v33 = result;
  v19 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  v20 = v38;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v32[1] = v19;
  v21(v9, v20 + v19, v6);
  sub_24F91EFB8();
  (*(v7 + 8))(v9, v6);
  v22 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  v23 = v11[2];
  v23(v13, v20 + v22, v10);
  sub_24ECB76EC(&qword_27F22D338, MEMORY[0x277CC8C20]);
  result = sub_24F92AF98();
  if (result)
  {
    v24 = v11[4];
    v25 = v34;
    v24(v34, v13, v10);
    v26 = v16;
    v32[0] = v16;
    v27 = v35;
    v23((v25 + *(v35 + 48)), v26, v10);
    sub_24ECB760C(v25, v2);
    v28 = *(v27 + 48);
    v29 = v37;
    v24(v37, v2, v10);
    v30 = v11[1];
    v30(&v2[v28], v10);
    sub_24ECB767C(v25, v2);
    v24((v29 + *(v36 + 36)), &v2[*(v27 + 48)], v10);
    v30(v2, v10);
    swift_beginAccess();
    sub_24E658594();
    v31 = sub_24F91F048();
    v39 = v33;
    v40 = 0;
    sub_24EA5BFF0();
    sub_24F91F148();
    v31(v41, 0);
    sub_24E601704(v29, &qword_27F22D330);
    swift_endAccess();
    result = (v30)(v32[0], v10);
LABEL_4:
    *(v38 + OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_didParseEverything) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECB760C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECB767C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECB76EC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 RoundedButtonLayout.init(metrics:buttonView:dividerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v6;
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v7;
  v8 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v8;
  sub_24E612C80(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t RoundedButtonLayout.Metrics.init(buttonTopSpace:buttonBottomSpace:dividerTopSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4 + 80);
}

double RoundedButtonLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v1 + 5), &v9);
  if (v10)
  {
    sub_24E612C80(&v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_24F922298();
    __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_24E942EA8(&v9);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7 = *(v4 + 8);
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_24F922298();
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7(v6, v3);
  return a1;
}

uint64_t RoundedButtonLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v5 + 5), &v19);
  v18 = v11;
  *&v17[3] = a3;
  if (v20)
  {
    sub_24E612C80(&v19, v21);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_24F922288();
    v17[1] = v23;
    v17[0] = __swift_project_boxed_opaque_existential_1(v21, v22);
    v17[2] = a1;
    __swift_project_boxed_opaque_existential_1(v5 + 20, v5[23]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v15 = *(v12 + 8);
    v15(v14, v11);
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    CGRectGetWidth(v24);
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v5 + 20, v5[23]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v15(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_24E942EA8(&v19);
  }

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F922218();
  CGRectGetWidth(v25);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v12 + 8))(v14, v18);
  sub_24F922228();
  return sub_24F922128();
}

uint64_t sub_24ECB7F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_24ECB7F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECB8008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F923F78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277CDFA90], v8, v10);
  v13 = sub_24F923F68();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v14 = v16;
  v16(v12, v8);
  v17 = 16;
  if (v13)
  {
    v17 = 24;
  }

  v18 = *(a1 + v17);

  if (v18 >> 62)
  {
    v19 = sub_24F92C738();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4[2] = a3;
  v4[3] = v19;
  v20 = *(a1 + 56);
  LOBYTE(v52) = *(a1 + 32);
  v53 = *(a1 + 40);
  v54 = v20;
  type metadata accessor for HeroCarouselItemStateCoordinator();
  swift_allocObject();

  v4[4] = sub_24F7C6654(0, v18, &v52, a3);
  if (!v19)
  {
    v26 = v14;
    v27 = MEMORY[0x277D84F90];
    v4[5] = MEMORY[0x277D84F90];
    v4[6] = v27;

    v26(a2, v8);
LABEL_26:
    v4[7] = v27;
    return v4;
  }

  v52 = MEMORY[0x277D84F90];
  result = sub_24F92C978();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v45 = v14;
    v46 = v15;
    v47 = v8;
    v48 = a2;
    v51 = v4;
    v49 = a1;
    v50 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = 0;
      do
      {
        v23 = v22 + 1;
        v24 = MEMORY[0x253052270]();
        type metadata accessor for HeroCarouselItemBackgroundViewModel();
        v25 = swift_allocObject();
        *(v25 + 50) = 512;
        *(v25 + 24) = v24;
        *(v25 + 16) = 0;
        *(v25 + 32) = *(v24 + 16);
        *(v25 + 40) = *(v24 + 24);
        *(v25 + 48) = *(v24 + 102);
        *(v25 + 49) = *(v24 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v22 = v23;
      }

      while (v19 != v23);
    }

    else
    {
      v28 = (v18 + 32);
      type metadata accessor for HeroCarouselItemBackgroundViewModel();
      v29 = v19;
      do
      {
        v30 = *v28++;
        v31 = swift_allocObject();
        *(v31 + 50) = 512;
        *(v31 + 24) = v30;
        *(v31 + 16) = 0;
        *(v31 + 32) = *(v30 + 16);
        *(v31 + 40) = *(v30 + 24);
        *(v31 + 48) = *(v30 + 102);
        *(v31 + 49) = *(v30 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        --v29;
      }

      while (v29);
    }

    v51[5] = v52;
    v52 = MEMORY[0x277D84F90];
    sub_24F92C978();
    if (v50)
    {
      v32 = 0;
      do
      {
        v33 = v32 + 1;
        v34 = MEMORY[0x253052270]();
        type metadata accessor for HeroCarouselItemBackgroundViewModel();
        v35 = swift_allocObject();
        *(v35 + 50) = 512;
        *(v35 + 24) = v34;
        *(v35 + 16) = 1;
        *(v35 + 32) = *(v34 + 16);
        *(v35 + 40) = *(v34 + 24);
        *(v35 + 48) = *(v34 + 102);
        *(v35 + 49) = *(v34 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v32 = v33;
      }

      while (v19 != v33);
    }

    else
    {
      v36 = (v18 + 32);
      type metadata accessor for HeroCarouselItemBackgroundViewModel();
      v37 = v19;
      do
      {
        v38 = *v36++;
        v39 = swift_allocObject();
        *(v39 + 50) = 512;
        *(v39 + 24) = v38;
        *(v39 + 16) = 1;
        *(v39 + 32) = *(v38 + 16);
        *(v39 + 40) = *(v38 + 24);
        *(v39 + 48) = *(v38 + 102);
        *(v39 + 49) = *(v38 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        --v37;
      }

      while (v37);
    }

    v4 = v51;
    v51[6] = v52;
    v52 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v40 = 0;
    v41 = v48;
    v42 = v50;
    do
    {
      if (v42)
      {
        v43 = MEMORY[0x253052270](v40, v18);
      }

      else
      {
        v43 = *(v18 + 8 * v40 + 32);
      }

      ++v40;
      type metadata accessor for HeroCarouselItemOverlayViewModel();
      swift_allocObject();

      sub_24F4BC200(v43, a3);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v19 != v40);
    v45(v41, v47);

    v27 = v52;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECB85E4()
{

  return swift_deallocClassInstance();
}

void *sub_24ECB8660(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = 1;
  type metadata accessor for HeroCarouselItemStateCoordinator();
  swift_allocObject();

  v2[4] = sub_24F7C6FA4(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F941C80;
  type metadata accessor for HeroCarouselItemBackgroundViewModel();
  swift_allocObject();
  *(v6 + 32) = sub_24EB60160(a1);
  v2[5] = v6;
  v2[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  type metadata accessor for HeroCarouselItemOverlayViewModel();
  swift_allocObject();

  *(v7 + 32) = sub_24F4BC994(v8, a2);
  v2[7] = v7;
  return v2;
}

uint64_t MSOContext.providerAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL MSOContext.canPersonalizeRoom(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v5 = *v0;
  v4 = v0[1];
  v11[2] = sub_24F91F398();
  v11[3] = v6;
  v11[0] = v5;
  v11[1] = v4;
  v7 = sub_24F91F7C8();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_24E600AEC();

  sub_24F92C5B8();
  v9 = v8;
  sub_24ECB88E4(v3);

  return (v9 & 1) == 0;
}

uint64_t sub_24ECB88E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AccountChannels.providerAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *AccountChannels.init(providerAdamId:subscribedChannelIds:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D84FA0];
  v4 = result[1];
  if (a2)
  {
    v3 = a2;
  }

  *a3 = *result;
  a3[1] = v4;
  a3[2] = v3;
  return result;
}

__n128 MSOContext.init(accountChannels:providerData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t MSOContext.providerRoomURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v5 = sub_24F91F4A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t AppPromotionDetailPagePresenter.__allocating_init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24ECB9088(a1, a2);

  return v4;
}

uint64_t AppPromotionDetailPagePresenter.init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24ECB9088(a1, a2);

  return v2;
}

uint64_t sub_24ECB8B64(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ECB8BD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ECB8C70()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_27F210788;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_27F230F98;
    v5 = v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24ECB8E14()
{
  type metadata accessor for ContingentOfferDetailPage();
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for OfferItemDetailPage();
  result = swift_dynamicCastClass();
  if (result)
  {
  }

  return result;
}

uint64_t sub_24ECB8EA4()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24ECB8F6C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view);
}

uint64_t AppPromotionDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view);

  return v0;
}

uint64_t AppPromotionDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;

  sub_24E883630(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECB9088(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage) = a2;

  v5 = sub_24EC8415C(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppPromotionDetailPage();
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_24ECB93F0();
  v7[0] = a2;
  swift_beginAccess();

  sub_24EA095A4(v7, v5 + 40);
  swift_endAccess();
  sub_24EC832DC();

  sub_24ECB9448(v7);
  return v5;
}

uint64_t sub_24ECB9170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ECB91CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for AppPromotionDetailPagePresenter()
{
  result = qword_27F22D380;
  if (!qword_27F22D380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ECB93F0()
{
  result = qword_27F22D390;
  if (!qword_27F22D390)
  {
    type metadata accessor for AppPromotionDetailPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D390);
  }

  return result;
}

uint64_t sub_24ECB9448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorsChoice.__allocating_init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a7;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v30 = a9;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0;
  sub_24E60169C(a1, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 104) = v36;
    *(v18 + 120) = v19;
    *(v18 + 136) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v28 = a5;
    v21 = a8;
    v22 = v20;
    v29 = v10;
    v10 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v34 = v22;
    v35 = v24;
    a8 = v21;
    a5 = v28;
    a6 = v10;
    LOBYTE(v10) = v29;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v30, v18 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics);
  *(v18 + 16) = v31 & 1;
  v25 = v33;
  *(v18 + 24) = v32;
  *(v18 + 32) = v25;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = (v10 == 2) | v10 & 1;
  swift_beginAccess();
  *(v18 + 64) = a8;
  return v18;
}

uint64_t EditorsChoice.init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v12) = a7;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v31 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 64) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 80) = 0u;
  sub_24E60169C(a1, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v29 = a5;
    v21 = a8;
    v22 = v20;
    v30 = v12;
    v12 = a6;
    v24 = v23;
    (*(v17 + 8))(v19, v16);
    v35 = v22;
    v36 = v24;
    a8 = v21;
    a5 = v29;
    a6 = v12;
    LOBYTE(v12) = v30;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v25 = v41;
  *(v10 + 104) = v40;
  *(v10 + 120) = v25;
  *(v10 + 136) = v42;
  sub_24E65E0D4(v31, v10 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics);
  *(v10 + 16) = v32 & 1;
  v26 = v34;
  *(v10 + 24) = v33;
  *(v10 + 32) = v26;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = (v12 == 2) | v12 & 1;
  swift_beginAccess();
  *(v10 + 64) = a8;

  return v10;
}

uint64_t EditorsChoice.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EditorsChoice.notes.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EditorsChoice.deinit()
{

  sub_24E601704(v0 + 72, &qword_27F2129B0);
  sub_24E6585F8(v0 + 104);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t EditorsChoice.__deallocating_deinit()
{

  sub_24E601704(v0 + 72, &qword_27F2129B0);
  sub_24E6585F8(v0 + 104);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECB9B4C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24ECB9BB4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24ECB9BB4(char *a1, uint64_t a2)
{
  v77 = a2;
  v63 = sub_24F91F6B8();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - v8;
  v70 = sub_24F928388();
  v68 = *(v70 - 8);
  v10 = MEMORY[0x28223BE20](v70);
  v72 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v62 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v62 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v76 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  sub_24F929608();
  sub_24F928398();
  v73 = v5;
  v27 = *(v5 + 16);
  v28 = v9;
  v29 = v77;
  v27(v28, v77, v4);
  v75 = v26;
  v30 = v21;
  sub_24F929548();
  v31 = v29;
  v32 = v65;
  v74 = v4;
  v27(v84, v31, v4);
  v33 = a1;
  sub_24F928398();
  v34 = sub_24F928348();
  if (v35)
  {
    v36 = v67;
    *&v80 = v34;
    *(&v80 + 1) = v35;
  }

  else
  {
    v37 = v67;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    v36 = v37;
    (*(v64 + 8))(v37, v63);
    *&v80 = v38;
    *(&v80 + 1) = v40;
  }

  sub_24F92C7F8();
  v41 = *(v68 + 8);
  v42 = v32;
  v43 = v70;
  v41(v42, v70);
  v44 = v66;
  sub_24F928398();
  LODWORD(v70) = sub_24F928278();
  v41(v44, v43);
  v45 = v69;
  sub_24F928398();
  v68 = sub_24F928348();
  v67 = v46;
  v41(v45, v43);
  v47 = v71;
  sub_24F928398();
  v69 = sub_24F928348();
  v66 = v48;
  v41(v47, v43);
  v49 = v72;
  sub_24F928398();
  LODWORD(v71) = sub_24F928278();
  v41(v49, v43);
  type metadata accessor for Action();
  sub_24F928398();
  v72 = static Action.tryToMakeInstance(byDeserializing:using:)(v30, v84);
  v50 = v43;
  v41(v30, v43);
  sub_24E60169C(v75, v76, &qword_27F213E68);
  type metadata accessor for EditorsChoice();
  v51 = swift_allocObject();
  *(v51 + 64) = 0u;
  *(v51 + 80) = 0u;
  *(v51 + 96) = 0;
  sub_24E60169C(v83, &v80, &qword_27F235830);
  if (*(&v81 + 1))
  {
    v52 = v81;
    *(v51 + 104) = v80;
    *(v51 + 120) = v52;
    *(v51 + 136) = v82;
  }

  else
  {
    v53 = v36;
    sub_24F91F6A8();
    v54 = sub_24F91F668();
    v56 = v55;
    (*(v64 + 8))(v53, v63);
    v78 = v54;
    v79 = v56;
    sub_24F92C7F8();
    sub_24E601704(&v80, &qword_27F235830);
  }

  v57 = v74;
  v58 = *(v73 + 8);
  v58(v77, v74);
  v41(v33, v50);
  sub_24E601704(v83, &qword_27F235830);
  v58(v84, v57);
  sub_24E601704(v75, &qword_27F213E68);
  sub_24E65E0D4(v76, v51 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics);
  *(v51 + 16) = v70 & 1;
  v59 = v67;
  *(v51 + 24) = v68;
  *(v51 + 32) = v59;
  v60 = v66;
  *(v51 + 40) = v69;
  *(v51 + 48) = v60;
  *(v51 + 56) = (v71 == 2) | v71 & 1;
  swift_beginAccess();
  *(v51 + 64) = v72;
  return v51;
}

unint64_t sub_24ECBA39C()
{
  result = qword_27F22D398;
  if (!qword_27F22D398)
  {
    type metadata accessor for EditorsChoice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D398);
  }

  return result;
}

uint64_t type metadata accessor for EditorsChoice()
{
  result = qword_27F22D3A0;
  if (!qword_27F22D3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECBA440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_24ECBA490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 72, a2, &qword_27F2129B0);
}

void sub_24ECBA4F8()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t InAppPurchaseStateDataSource.__allocating_init(withStateProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  InAppPurchaseStateDataSource.init(withStateProvider:)(a1);
  return v2;
}

void *InAppPurchaseStateDataSource.init(withStateProvider:)(uint64_t a1)
{
  v1[8] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  sub_24E615E00(a1, (v1 + 2));
  v1[7] = MEMORY[0x277D84F90];
  v3 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v4 = v1[5];
  v5 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v4);
  v6 = *(v5 + 16);

  v6(sub_24ECBA9D0, v3, v4, v5);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a1);

  return v1;
}

uint64_t sub_24ECBA884()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ECBA8BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    sub_24E615E00(v1 + 16, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v3 + 40);

    v5(sub_24ECBB48C, v4, v2, v3);

    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

Swift::Void __swiftcall InAppPurchaseStateDataSource.refreshData()()
{
  swift_beginAccess();
  sub_24E615E00(v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 40);

  v4(sub_24ECBAC2C, v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  swift_beginAccess();
  sub_24E615E00(v3 + 16, v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[0] = v6;
  v11[1] = v7;
  (*(v9 + 32))(v11, a2, a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_24ECBAB78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    [v2 lock];
    sub_24ECBAC34(v1);
    [v2 unlock];
  }

  return result;
}

uint64_t sub_24ECBAC34(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_24ECBAF50(v4, v15);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v16(a1);
      }

      sub_24ECBB1D4(v15);
      v4 += 24;
      --v3;
    }

    while (v3);

    v5 = *(a1 + 56);
    v6 = *(v5 + 16);

    if (v6)
    {
      v8 = 0;
      v9 = v5 + 32;
      v10 = MEMORY[0x277D84F90];
      while (v8 < *(v5 + 16))
      {
        sub_24ECBAF50(v9, v15);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_24ECBB19C(v15, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F4588F0(0, *(v10 + 16) + 1, 1);
            v10 = v17;
          }

          v13 = *(v10 + 16);
          v12 = *(v10 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_24F4588F0((v12 > 1), v13 + 1, 1);
            v10 = v17;
          }

          *(v10 + 16) = v13 + 1;
          result = sub_24ECBB19C(v14, v10 + 24 * v13 + 32);
        }

        else
        {
          result = sub_24ECBB1D4(v15);
        }

        ++v8;
        v9 += 24;
        if (v6 == v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:

  *(a1 + 56) = v10;
}

id InAppPurchaseStateDataSource.addObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 64);
  [v6 lock];
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_24ECBAF50(v13, v12);
  swift_beginAccess();
  v7 = *(v3 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24E618F58(0, v7[2] + 1, 1, v7);
    *(v3 + 56) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24E618F58((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_24ECBB19C(v12, &v7[3 * v10 + 4]);
  *(v3 + 56) = v7;
  swift_endAccess();
  sub_24ECBB1D4(v13);
  return [v6 unlock];
}

id InAppPurchaseStateDataSource.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v15 = *(v1 + 64);
  [v15 lock];
  swift_beginAccess();
  v4 = *(v1 + 56);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    v9 = MEMORY[0x277D84F90];
    while (v7 < *(v4 + 16))
    {
      sub_24ECBAF50(v8, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
        result = sub_24ECBB1D4(v17);
      }

      else
      {
        sub_24ECBB19C(v17, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4588F0(0, *(v9 + 16) + 1, 1);
          v9 = v18;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_24F4588F0((v13 > 1), v14 + 1, 1);
          v9 = v18;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_24ECBB19C(v16, v9 + 24 * v14 + 32);
      }

      ++v7;
      v8 += 24;
      if (v5 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_14:

    *(v2 + 56) = v9;

    return [v15 unlock];
  }

  return result;
}

uint64_t InAppPurchaseStateDataSource.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t InAppPurchaseStateDataSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for InAppPurchaseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for InAppPurchaseState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24ECBB360(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_24ECBB38C(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 ^ 0xC1;
  }

  return result;
}

uint64_t sub_24ECBB548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v16 = sub_24F92A9E8();
  sub_24ECBD284();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_24F929638();
  v8 = MEMORY[0x277D21FB0];
  v18 = v7;
  v19 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24ECBBBB4();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a1;
  v9[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v16;
  v13 = sub_24E74EC40();
  swift_retain_n();

  v14 = sub_24F92BEF8();
  v18 = v13;
  v19 = MEMORY[0x277D225C0];
  v17[0] = v14;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

void sub_24ECBB8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction);
  if (v2)
  {
    v6 = type metadata accessor for Action();
    v7 = sub_24ECBBCE0(&qword_27F216DE8, type metadata accessor for Action);
    v5[0] = v2;
    type metadata accessor for OfferAlertActionImplementation();
    swift_retain_n();
    swift_getWitnessTable();
    sub_24F1489C4(v5);
    __swift_destroy_boxed_opaque_existential_1(v5);
    v3 = sub_24E74EC40();
    swift_retain_n();
    v4 = sub_24F92BEF8();
    v6 = v3;
    v7 = MEMORY[0x277D225C0];
    v5[0] = v4;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

uint64_t sub_24ECBBA44()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_24F92A9C8();
  return (*(v1 + 8))(v4, v0);
}

void sub_24ECBBB40(uint64_t a1, char a2)
{
  sub_24ECBD3CC();
  v3 = swift_allocError();
  *v4 = a2;
  sub_24F92A9A8();
}

unint64_t sub_24ECBBBB4()
{
  result = qword_27F22D438;
  if (!qword_27F22D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D438);
  }

  return result;
}

uint64_t objectdestroyTm_31()
{

  return swift_deallocObject();
}

uint64_t sub_24ECBBC8C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECBBCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ECBBD34(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v73 - v10;
  v12 = sub_24F9289E8();
  MEMORY[0x28223BE20](v12 - 8);
  v80 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = (v73 - v15);
  v16 = sub_24F92A638();
  v82 = *(v16 - 8);
  v83 = v16;
  MEMORY[0x28223BE20](v16);
  v86 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F928AD8();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = sub_24F92A618();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v73 - v24;
  v26 = sub_24F928AE8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v30 = sub_24F92A9E8();
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) != 2 || [objc_opt_self() userHasPairedGameController])
  {
    (*(v27 + 104))(v29, *MEMORY[0x277D21CA8], v26);
    sub_24F92A9C8();
    (*(v27 + 8))(v29, v26);
    return v30;
  }

  v32._object = 0x800000024FA59920;
  v32._countAndFlagsBits = 0xD00000000000001FLL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = localizedString(_:comment:)(v32, v33);
  v73[4] = v34._countAndFlagsBits;
  v73[3] = v34._object;
  v35._countAndFlagsBits = 0xD000000000000025;
  v35._object = 0x800000024FA59940;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37 = localizedString(_:comment:)(v35, v36);
  v73[2] = v37._countAndFlagsBits;
  v73[1] = v37._object;
  v38._countAndFlagsBits = 0xD000000000000020;
  v38._object = 0x800000024FA59970;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  countAndFlagsBits = localizedString(_:comment:)(v38, v39)._countAndFlagsBits;
  v74 = v11;

  v40._countAndFlagsBits = 0xD000000000000022;
  v40._object = 0x800000024FA599A0;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  localizedString(_:comment:)(v40, v41);

  sub_24F928A98();
  v42 = sub_24F928B08();
  v43 = MEMORY[0x277D21CB8];
  v92 = v42;
  v93 = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(v91);

  sub_24F928AF8();
  v76 = v25;
  sub_24F92A608();
  sub_24F928A98();
  v92 = v42;
  v93 = v43;
  __swift_allocate_boxed_opaque_existential_1(v91);

  v44 = v74;
  sub_24F928AF8();
  v45 = v89;
  sub_24F92A608();
  sub_24F928A98();
  v46 = sub_24F92A628();
  (*(*(v46 - 8) + 56))(v90, 1, 1, v46);
  sub_24F91F488();
  v47 = sub_24F91F4A8();
  result = (*(*(v47 - 8) + 48))(v44, 1, v47);
  countAndFlagsBits = v20;
  if (result != 1)
  {

    sub_24F928978();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
    v48 = v81;
    v49 = *(v81 + 72);
    v50 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24F93A400;
    v52 = v51 + v50;
    v53 = *(v48 + 16);
    v54 = v45;
    v55 = v45;
    v56 = v85;
    v53(v52, v54, v85);
    v57 = v52 + v49;
    v58 = v56;
    v53(v57, v76, v56);
    v59 = v86;
    sub_24F92A5E8();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
    v61 = v84;
    sub_24F928EF8();
    v62 = v88;
    sub_24E8E4574(v61, v88);
    v90 = *(v60 - 8);
    v63 = v90[6](v62, 1, v60);
    v64 = v83;
    if (v63 == 1)
    {
      sub_24E8E45E4(v61);
      (*(v82 + 8))(v59, v64);
      v65 = *(v48 + 8);
      v65(v55, v58);
      v65(v76, v58);
      sub_24E8E45E4(v62);
    }

    else
    {
      v92 = v83;
      v93 = MEMORY[0x277D223B8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
      v67 = v82;
      (*(v82 + 16))(boxed_opaque_existential_1, v59, v64);
      v69 = v77;
      v68 = v78;
      v70 = v79;
      (*(v78 + 104))(v77, *MEMORY[0x277D21E18], v79);
      sub_24F929288();

      (*(v68 + 8))(v69, v70);
      sub_24E8E45E4(v61);
      (*(v67 + 8))(v86, v64);
      v71 = *(v48 + 8);
      v72 = v85;
      v71(v89, v85);
      v71(v76, v72);
      __swift_destroy_boxed_opaque_existential_1(v91);
      (v90[1])(v88, v60);
    }

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECBC748(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_24F928AE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = v75 - v14;
  v15 = sub_24F92A638();
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x28223BE20](v15);
  v89 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F928AD8();
  MEMORY[0x28223BE20](v17 - 8);
  v88 = sub_24F92A618();
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v75 - v23;
  v25 = sub_24F9289E8();
  v91 = *(v25 - 8);
  v92 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v90 = v75 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v94 = sub_24F92A9E8();
  v30 = objc_opt_self();
  v31 = sub_24F92B098();
  v32 = [v30 userHasPairedGameControllerSupportingInteractionProfile_];

  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement))
  {
LABEL_6:
    v33 = sub_24F92CE08();

    if (!(v32 & 1 | ((v33 & 1) == 0)))
    {
      goto LABEL_8;
    }

LABEL_7:
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
    v34 = v94;
    sub_24F92A9C8();
    (*(v4 + 8))(v6, v3);
    return v34;
  }

  swift_bridgeObjectRelease_n();
  if (v32)
  {
    goto LABEL_7;
  }

LABEL_8:
  v77 = v19;
  v35._countAndFlagsBits = 0xD000000000000029;
  v35._object = 0x800000024FA59830;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v76 = localizedString(_:comment:)(v35, v36);
  v37._countAndFlagsBits = 0xD00000000000002BLL;
  v37._object = 0x800000024FA59860;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = localizedString(_:comment:)(v37, v38);
  v75[3] = v39._countAndFlagsBits;
  v75[2] = v39._object;
  v40._object = 0x800000024FA59890;
  v40._countAndFlagsBits = 0xD00000000000002DLL;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v75[1] = localizedString(_:comment:)(v40, v41)._countAndFlagsBits;
  v42._countAndFlagsBits = 0xD00000000000002FLL;
  v42._object = 0x800000024FA598C0;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  localizedString(_:comment:)(v42, v43);
  sub_24F91F488();
  v44 = sub_24F91F4A8();
  result = (*(*(v44 - 8) + 48))(v24, 1, v44);
  if (result != 1)
  {
    v46 = v90;
    sub_24F928978();
    sub_24F928A98();
    v47 = sub_24F928B08();
    v48 = MEMORY[0x277D21CB8];
    v96 = v47;
    v97 = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1(v95);

    sub_24F928AF8();
    sub_24F92A608();
    sub_24F928A98();
    v96 = v47;
    v97 = v48;
    __swift_allocate_boxed_opaque_existential_1(v95);

    sub_24F928AF8();
    v49 = v77;
    sub_24F92A608();
    sub_24F928A98();
    v50 = sub_24F92A628();
    (*(*(v50 - 8) + 56))(v83, 1, 1, v50);
    (*(v91 + 16))(v27, v46, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
    v51 = v84;
    v52 = *(v84 + 72);
    v53 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_24F93A400;
    v55 = v54 + v53;
    v56 = *(v51 + 16);
    v57 = v49;
    v58 = v88;
    v56(v55, v57, v88);
    v56(v55 + v52, v93, v58);
    v59 = v89;
    sub_24F92A5E8();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
    v61 = v85;
    sub_24F928EF8();
    v62 = v87;
    sub_24E8E4574(v61, v87);
    v63 = *(v60 - 8);
    if ((*(v63 + 6))(v62, 1, v60) == 1)
    {
      sub_24E8E45E4(v61);
      (*(v81 + 8))(v59, v82);
      v64 = *(v51 + 8);
      v64(v77, v58);
      v64(v93, v58);
      (*(v91 + 8))(v90, v92);
      sub_24E8E45E4(v62);
    }

    else
    {
      v65 = v82;
      v96 = v82;
      v97 = MEMORY[0x277D223B8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
      v67 = v81;
      (*(v81 + 16))(boxed_opaque_existential_1, v59, v65);
      v68 = *MEMORY[0x277D21E18];
      v83 = v63;
      v69 = v62;
      v71 = v79;
      v70 = v80;
      v72 = v78;
      (*(v79 + 104))(v78, v68, v80);
      sub_24F929288();

      (*(v71 + 8))(v72, v70);
      sub_24E8E45E4(v61);
      (*(v67 + 8))(v89, v65);
      v73 = *(v51 + 8);
      v74 = v88;
      v73(v77, v88);
      v73(v93, v74);
      (*(v91 + 8))(v90, v92);
      __swift_destroy_boxed_opaque_existential_1(v95);
      (*(v83 + 1))(v69, v60);
    }

    return v94;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECBD284()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v4 = sub_24F92A9E8();
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  sub_24F92A9C8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_24ECBD3CC()
{
  result = qword_27F22D440;
  if (!qword_27F22D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D440);
  }

  return result;
}

unint64_t sub_24ECBD454()
{
  result = qword_27F22D448;
  if (!qword_27F22D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D448);
  }

  return result;
}

uint64_t *TodayCardMediaAppEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v88 = v2;
  v5 = *v2;
  v82 = v3;
  v83 = v5;
  v93 = sub_24F9285B8();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  sub_24F928398();
  v25 = JSONObject.appStoreColor.getter();
  v80 = v17;
  v27 = *(v17 + 8);
  v26 = v17 + 8;
  v87 = v16;
  v89 = v27;
  v27(v24, v16);
  if (!v25)
  {
    v58 = sub_24F92AC38();
    sub_24ECBE024(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v59 = 0x6F6C6F43746E6974;
    v57 = v83;
    v59[1] = 0xE900000000000072;
    v59[2] = v57;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    (*(v91 + 8))(v90, v93);
    v89(a1, v87);
    goto LABEL_10;
  }

  sub_24F929608();
  v75 = v25;
  sub_24F928398();
  v85 = a1;
  v86 = v26;
  v28 = v90;
  v30 = v91 + 16;
  v29 = *(v91 + 16);
  v31 = v12;
  v32 = v12;
  v33 = v93;
  v29(v31, v90, v93);
  v76 = v15;
  sub_24F929548();
  v84 = v29;
  v29(v9, v28, v33);
  sub_24F928398();
  v29(v32, v9, v33);
  type metadata accessor for Artwork();
  sub_24ECBE024(&qword_27F219660, type metadata accessor for Artwork);
  v34 = sub_24F92B698();
  v78 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks;
  v35 = v88;
  *(v88 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks) = v34;
  sub_24F928398();
  v36 = v9;
  v29(v32, v9, v33);
  type metadata accessor for Video();
  sub_24ECBE024(&qword_27F221590, type metadata accessor for Video);
  v37 = sub_24F92B698();
  v73 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980);
  v38 = v85;
  sub_24F928398();
  v39 = v84;
  v84(v32, v36, v33);
  sub_24E9E115C();
  sub_24F929548();
  v72 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics;
  v40 = v88;
  *(v88 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = v92;
  sub_24F928398();
  v77 = v36;
  v74 = v30;
  v39(v32, v36, v33);
  type metadata accessor for AppEventFormattedDate();
  sub_24ECBE024(&qword_27F22D450, type metadata accessor for AppEventFormattedDate);
  v41 = sub_24F92B698();
  v70 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates) = v41;
  v42 = v75;
  v71 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor) = v75;
  v43 = v42;
  v44 = v38;
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v45 = v87;
  v89(v21, v87);
  *(v40 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_blurStyle) = v92;
  v46 = v78;
  swift_beginAccess();
  v47 = *(v40 + v46);
  if (v47 >> 62)
  {
    v62 = sub_24F92C738();
    v48 = v76;
    if (v62)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v48 = v76;
  if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v49 = *(v40 + v73);
    if (v49 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_6;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v63 = sub_24F92AC38();
    sub_24ECBE024(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v64 = 0x736B726F77747261;
    v64[1] = 0xE800000000000000;
    v64[2] = v83;
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D22530], v63);
    swift_willThrow();

    v65 = v45;
    v66 = *(v91 + 8);
    v67 = v40;
    v68 = v48;
    v69 = v93;
    v66(v90, v93);
    v89(v44, v65);
    v57 = v83;
    v66(v77, v69);
    sub_24E601704(v68, &qword_27F213E68);

LABEL_10:
    swift_deallocPartialClassInstance();
    return v57;
  }

LABEL_6:
  v50 = v79;
  (*(v80 + 16))(v79, v38, v45);
  v51 = v81;
  v52 = v90;
  v53 = v93;
  v84(v81, v90, v93);
  v54 = v82;
  v55 = TodayCardMedia.init(deserializing:using:)(v50, v51);
  v56 = v45;
  if (v54)
  {

    v57 = *(v91 + 8);
    (v57)(v52, v53);
    v89(v38, v45);
    (v57)(v77, v53);
  }

  else
  {
    v57 = v55;

    v60 = *(v91 + 8);
    v60(v52, v53);
    v89(v38, v56);
    v60(v77, v53);
  }

  sub_24E601704(v48, &qword_27F213E68);
  return v57;
}

uint64_t sub_24ECBE024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardMediaAppEvent.__allocating_init(formattedDates:artworks:videos:artworkLayoutsWithMetrics:tintColor:blurStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v14 = sub_24F91F6B8();
  v23[0] = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates) = a1;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks) = a2;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos) = a3;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = a4;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor) = a5;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_blurStyle) = *a6;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_24E60169C(a7, v17 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v27, &v24, &qword_27F235830);
  if (*(&v25 + 1))
  {
    v18 = v25;
    *(v17 + 32) = v24;
    *(v17 + 48) = v18;
    *(v17 + 64) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v23[0] + 8))(v16, v14);
    v23[1] = v19;
    v23[2] = v21;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830);
  }

  sub_24E601704(a7, &qword_27F213E68);
  sub_24E601704(v27, &qword_27F235830);
  *(v17 + 16) = 10;
  *(v17 + 24) = 1;
  return v17;
}

uint64_t TodayCardMediaAppEvent.init(formattedDates:artworks:videos:artworkLayoutsWithMetrics:tintColor:blurStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v8 = v7;
  v16 = sub_24F91F6B8();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v28 - v20;
  LOBYTE(v20) = *a6;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates) = a1;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks) = a2;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos) = a3;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor) = a5;
  v22 = a7;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_blurStyle) = v20;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_24E60169C(a7, v21, &qword_27F213E68);
  sub_24E60169C(v39, &v33, &qword_27F235830);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v29 + 8))(v18, v30);
    v31 = v23;
    v32 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830);
  }

  sub_24E601704(v22, &qword_27F213E68);
  sub_24E601704(v39, &qword_27F235830);
  v26 = v37;
  *(v8 + 32) = v36;
  *(v8 + 48) = v26;
  *(v8 + 64) = v38;
  sub_24E65E0D4(v21, v8 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v8 + 16) = 10;
  *(v8 + 24) = 1;
  return v8;
}

uint64_t TodayCardMediaAppEvent.artworks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24ECBE6F0()
{
}

uint64_t TodayCardMediaAppEvent.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaAppEvent.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaAppEvent()
{
  result = qword_27F22D458;
  if (!qword_27F22D458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECBEA58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229708);

  return sub_24F92A988();
}

uint64_t sub_24ECBEAAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v4 = sub_24EB46264(a1, a2, "GameStoreKit/TopChartDiffableSegmentContentPresenter.swift", 58, 2);

  return v4;
}

uint64_t sub_24ECBEB40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
  v6[0] = swift_allocObject();
  sub_24E60169C(a1, v6[0] + 16, &qword_27F2129B0);
  v4 = sub_24EB48270(v6, a2, "GameStoreKit/TopChartDiffableSegmentContentPresenter.swift", 58, 2);

  sub_24EC9E62C(v6);
  return v4;
}

uint64_t TopChartDiffableSegmentContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v69 = a3;
  v70 = a1;
  v62 = a2;
  v73 = a8;
  v74 = a13;
  v75 = a11;
  v58 = a10;
  v71 = a9;
  v72 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v68 = &v57 - v19;
  v21 = swift_allocObject();
  sub_24E60169C(a2, v20, &qword_27F228530);
  v60 = a4;
  v61 = a5;
  if (a4)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0;
  }

  v23 = a6;
  v59 = a7;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v66 = v24;
  v67 = v22;
  *(v21 + qword_27F22F198) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v21 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v26 = qword_27F39C780;
  sub_24E5FCA4C(a4);
  sub_24E5FCA4C(v23);
  v27 = v58;
  sub_24E5FCA4C(v58);
  *(v21 + v26) = sub_24E60986C(v25);
  v28 = (v21 + qword_27F22F1A8);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v21 + qword_27F22F1B0);
  *v29 = 0;
  v29[1] = 0;
  v65 = v29;
  v30 = (v21 + qword_27F22F1B8);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v21 + qword_27F22F1C0);
  *v31 = 0;
  v31[1] = 0;
  v64 = v31;
  v32 = (v21 + qword_27F22F1C8);
  *v32 = 0;
  v32[1] = 0;
  v63 = v32;
  v33 = (v21 + qword_27F39C788);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  *(v21 + qword_27F39C790) = 0;
  *(v21 + qword_27F22F1D0) = 0;
  *(v21 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v21 + qword_27F39C798) = 0;
  v34 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8);
  swift_allocObject();
  *(v21 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v21 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0);
  swift_allocObject();
  *(v21 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B8;
  swift_allocObject();
  *(v21 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v21 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v40 = sub_24F92ADA8();
  sub_24E824448(v27);
  sub_24E824448(v23);
  v41 = v60;
  sub_24E824448(v60);
  sub_24E601704(v62, &qword_27F228530);
  *(v21 + v39) = v40;
  v42 = qword_27F22F1E0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v44 = *(*(v43 - 8) + 56);
  v44(v21 + v42, 1, 1, v43);
  v45 = v43;
  v46 = v69;
  v44(v21 + qword_27F22F1E8, 1, 1, v45);
  *(v21 + 16) = v70;
  sub_24E911D90(v68, v21 + qword_27F39C7D0);
  v47 = v66;
  v48 = v67;
  *v28 = v41;
  v28[1] = v48;
  *v30 = v23;
  v30[1] = v47;
  if (v46)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    v50 = sub_24E965688;
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v51 = v75;
  if (!v27)
  {
    v51 = 0;
  }

  v53 = v64;
  v52 = v65;
  *v65 = v50;
  v52[1] = v49;
  v54 = v71;
  *v53 = v73;
  v53[1] = v54;
  v55 = v63;
  *v63 = v27;
  v55[1] = v51;
  *(v21 + qword_27F22F1F0) = v72;
  *(v21 + qword_27F39C7D8) = v74;
  return v21;
}

uint64_t TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v63 = a6;
  v72 = a3;
  v73 = a1;
  v66 = a2;
  v79 = a13;
  v77 = a8;
  v78 = a12;
  v75 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v20 - 8);
  v70 = &v63 - v21;
  sub_24E60169C(a2, &v63 - v21, &qword_27F228530);
  v22 = a4;
  v64 = a4;
  v65 = a5;
  if (a4)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0;
  }

  v69 = v23;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v71 = v24;
  *(v14 + qword_27F22F198) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v26 = qword_27F39C780;
  sub_24E5FCA4C(v22);
  sub_24E5FCA4C(a6);
  sub_24E5FCA4C(a10);
  *(v14 + v26) = sub_24E60986C(v25);
  v27 = (v14 + qword_27F22F1A8);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v14 + qword_27F22F1B0);
  *v28 = 0;
  v28[1] = 0;
  v67 = v28;
  v29 = (v14 + qword_27F22F1B8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v14 + qword_27F22F1C0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v14 + qword_27F22F1C8);
  *v31 = 0;
  v31[1] = 0;
  v68 = v31;
  v32 = (v14 + qword_27F39C788);
  *v32 = 0u;
  v32[1] = 0u;
  *(v32 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v33 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8);
  swift_allocObject();
  *(v14 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v14 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0);
  swift_allocObject();
  *(v14 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v14 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v39 = sub_24F92ADA8();
  v76 = a10;
  v74 = a11;
  sub_24E824448(a10);
  v40 = v63;
  sub_24E824448(v63);
  v41 = v64;
  sub_24E824448(v64);
  sub_24E601704(v66, &qword_27F228530);
  *(v14 + v38) = v39;
  v42 = qword_27F22F1E0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v44 = *(*(v43 - 8) + 56);
  v44(v14 + v42, 1, 1, v43);
  v45 = v43;
  v46 = v72;
  v44(v14 + qword_27F22F1E8, 1, 1, v45);
  *(v14 + 16) = v73;
  sub_24E911D90(v70, v14 + qword_27F39C7D0);
  v47 = *v27;
  v48 = v69;
  *v27 = v41;
  v27[1] = v48;
  sub_24E824448(v47);
  v49 = *v29;
  v50 = v71;
  *v29 = v40;
  v29[1] = v50;
  sub_24E824448(v49);
  if (v46)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    v52 = sub_24EC02BCC;
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  v53 = v76;
  if (v76)
  {
    v54 = v74;
  }

  else
  {
    v54 = 0;
  }

  v55 = v67;
  v56 = *v67;
  *v67 = v52;
  v55[1] = v51;
  sub_24E824448(v56);
  v57 = *v30;
  v58 = v75;
  *v30 = v77;
  v30[1] = v58;
  sub_24E824448(v57);
  v59 = v68;
  v60 = *v68;
  *v68 = v53;
  v59[1] = v54;
  sub_24E824448(v60);
  v61 = v79;
  *(v14 + qword_27F22F1F0) = v78;
  *(v14 + qword_27F39C7D8) = v61;
  return v14;
}

uint64_t TopChartDiffableSegmentContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_24ECBF688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0;
  }

  if (a6)
  {
    v16 = a7;
  }

  else
  {
    v16 = 0;
  }

  if (a10)
  {
    v17 = a11;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(a1, a2, a3, a4, v15, a6, v16, a8, a9, a10, v17, a12, a13);
  return v18;
}

uint64_t _s12GameStoreKit39TopChartDiffableSegmentContentPresenterC11objectGraph7segment17pendingPageRender04pageO7MetricsAC9JetEngine010BaseObjectK0C_AA0deG0CAA07PendingnO0CSgAH0noqI0CSgtcfC_0(uint64_t (*a1)(uint64_t a1), uint64_t (*a2)(), uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24ECBFD34;
  *(v13 + 24) = a1;
  type metadata accessor for TopChartDiffableSegmentContentPresenter();
  v14 = swift_allocObject();
  sub_24E60169C(v11, v8, &qword_27F228530);
  *(v14 + qword_27F22F198) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v16 = qword_27F39C780;
  v17 = a1;
  swift_retain_n();
  v18 = a2;
  swift_retain_n();

  *(v14 + v16) = sub_24E60986C(v15);
  v19 = (v14 + qword_27F22F1A8);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + qword_27F22F1B0);
  v43 = (v14 + qword_27F22F1B0);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v14 + qword_27F22F1B8);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v14 + qword_27F22F1C0);
  v42 = (v14 + qword_27F22F1C0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v14 + qword_27F22F1C8);
  v41 = (v14 + qword_27F22F1C8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_27F39C788);
  *v24 = 0u;
  v24[1] = 0u;
  *(v24 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v25 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8);
  swift_allocObject();
  *(v14 + v25) = sub_24F92ADA8();
  v26 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v14 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0);
  swift_allocObject();
  *(v14 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v31 = sub_24F92ADA8();

  sub_24E601704(v11, &qword_27F228530);
  *(v14 + v30) = v31;
  v32 = qword_27F22F1E0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v34 = *(*(v33 - 8) + 56);
  v34(v14 + v32, 1, 1, v33);
  v34(v14 + qword_27F22F1E8, 1, 1, v33);
  *(v14 + 16) = v17;
  sub_24E911D90(v44, v14 + qword_27F39C7D0);
  *v19 = sub_24ECBFD24;
  v19[1] = v18;
  *v21 = 0;
  v21[1] = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = v18;
  v36 = v42;
  v37 = v43;
  *v43 = sub_24EC02BCC;
  v37[1] = v35;
  *v36 = sub_24ECBFD2C;
  v36[1] = v17;
  v38 = v41;
  *v41 = sub_24E94DE8C;
  v38[1] = v13;
  v39 = v46;
  *(v14 + qword_27F22F1F0) = v45;
  *(v14 + qword_27F39C7D8) = v39;
  return v14;
}

uint64_t sub_24ECBFC68()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for TopChartDiffableSegmentContentPresenter()
{
  result = qword_27F22D468;
  if (!qword_27F22D468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECBFD3C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECBFD74()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_24ECBFDBC()
{
  v0 = sub_24F92A468();
  __swift_allocate_value_buffer(v0, qword_27F22D478);
  __swift_project_value_buffer(v0, qword_27F22D478);
  return sub_24F92A458();
}

uint64_t sub_24ECBFE24()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 16);
}

uint64_t sub_24ECBFEC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24ECBFF94(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24ECC00A4()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 17);
}

uint64_t sub_24ECC0144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_24ECC0214(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24ECC0324()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 18);
}

uint64_t sub_24ECC03C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_24ECC0494(uint64_t result)
{
  if (*(v1 + 18) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24ECC059C()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 19);
}

uint64_t sub_24ECC063C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_24ECC070C(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24ECC081C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  return sub_24ECCA40C(v5 + v3, a1);
}

uint64_t sub_24ECC08E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  return sub_24ECCA40C(v3 + v4, a2);
}

uint64_t sub_24ECC09AC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24ECCA40C(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD78();

  return sub_24ECC9AB8(v6);
}

uint64_t sub_24ECC0AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ECCA40C(a2, v6);
  v7 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  sub_24ECCABEC(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t GamesSettings.__allocating_init(shareGameActivityToggle:shareGameActivityDisabled:)(char a1, char a2)
{
  v4 = swift_allocObject();
  GamesSettings.init(shareGameActivityToggle:shareGameActivityDisabled:)(a1, a2);
  return v4;
}

uint64_t GamesSettings.init(shareGameActivityToggle:shareGameActivityDisabled:)(char a1, char a2)
{
  v3 = v2;
  *(v3 + 18) = 0;
  v6 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  v7 = sub_24F92A498();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 3, v7);
  v8 = v3 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = v3 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingState;
  v13 = sub_24F920958();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  sub_24F91FDB8();
  *(v3 + 16) = a1;
  *(v3 + 17) = a2;
  v14 = [objc_opt_self() daemonProxy];
  sub_24F921328();

  v15 = v30;
  v16 = v31;
  v17 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v27 = v15;
  v28 = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD78();

  sub_24E601704(v26, &qword_27F22D4C8);
  v20 = v30;
  v21 = v31;
  v22 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v27 = v20;
  v28 = *(v21 + 16);
  v23 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = swift_getKeyPath();
  MEMORY[0x28223BE20](v24);
  sub_24F91FD78();

  sub_24E601704(v26, &qword_27F22D4D0);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v3;
}

uint64_t sub_24ECC1130@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v7 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v9 + v7, a3, a2);
}

uint64_t sub_24ECC1210@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v8 = *a2;
  swift_beginAccess();
  return sub_24E60169C(v7 + v8, a4, a3);
}

uint64_t sub_24ECC12F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_24E60169C(a1, v7, a5);
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD78();

  return sub_24E601704(v7, a5);
}

uint64_t sub_24ECC13F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_24E60169C(a2, v10, a3);
  v8 = *a5;
  swift_beginAccess();
  sub_24E61DA68(v10, a1 + v8, a3);
  return swift_endAccess();
}

uint64_t sub_24ECC14C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F22D4E0);
  return sub_24ECC1574(v4);
}

uint64_t sub_24ECC1574(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F22D4E0);
  v7 = sub_24ECCA4AC(v5, a1);
  sub_24E601704(v5, &qword_27F22D4E0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  else
  {
    sub_24E60169C(a1, v5, &qword_27F22D4E0);
    swift_beginAccess();
    sub_24E61DA68(v5, v1 + v6, &qword_27F22D4E0);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F22D4E0);
}

uint64_t sub_24ECC17A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F22D4D8);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F22D4D8);
}

uint64_t sub_24ECC18F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  sub_24E60169C(a2, &v14 - v10, a3);
  v12 = *a5;
  swift_beginAccess();
  sub_24E61DA68(v11, a1 + v12, a3);
  return swift_endAccess();
}

uint64_t sub_24ECC19D4()
{
  v1[39] = v0;
  v2 = sub_24F9208F8();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  v1[43] = swift_task_alloc();
  v3 = sub_24F920958();
  v1[44] = v3;
  v1[45] = *(v3 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  v1[49] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v1[50] = v4;
  v1[51] = *(v4 - 8);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v1[54] = v5;
  v1[55] = *(v5 - 8);
  v1[56] = swift_task_alloc();
  v6 = sub_24F921668();
  v1[57] = v6;
  v1[58] = *(v6 - 8);
  v1[59] = swift_task_alloc();
  v7 = sub_24F92A498();
  v1[60] = v7;
  v1[61] = *(v7 - 8);
  v1[62] = swift_task_alloc();
  type metadata accessor for GamesSettings.BagStatus(0);
  v1[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC1D38, 0, 0);
}

uint64_t sub_24ECC1D38()
{
  v1 = v0[63];
  v2 = v0[60];
  v3 = v0[61];
  v4 = v0[39];
  v5 = *(v3 + 56);
  v0[64] = v5;
  v0[65] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 2, 3, v2);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v0[66] = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v0[28] = v4;
  v0[67] = sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD78();

  sub_24ECC9AB8(v1);
  v7 = swift_task_alloc();
  v0[68] = v7;
  *v7 = v0;
  v7[1] = sub_24ECC1F1C;
  v8 = v0[62];
  v9 = v0[60];

  return MEMORY[0x2822008A0](v8, 0, 0, 0x6761426863746566, 0xEA00000000002928, sub_24ECC9B14, 0, v9);
}

uint64_t sub_24ECC1F1C()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_24ECC22E0;
  }

  else
  {
    v2 = sub_24ECC2030;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC2030()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[60];
  v4 = v0[39];
  (*(v0[61] + 16))(v1, v0[62], v3);
  v2(v1, 0, 3, v3);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[36] = v4;
  sub_24F91FD78();

  sub_24ECC9AB8(v1);
  v0[70] = Bag.metricsResettableTopics.getter();
  v6 = sub_24F92A328();
  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  v7[1] = sub_24ECC21C4;
  v8 = v0[59];

  return MEMORY[0x282140780](v8, v6);
}

uint64_t sub_24ECC21C4()
{
  *(*v1 + 576) = v0;

  if (v0)
  {

    v2 = sub_24ECC4888;
  }

  else
  {
    v2 = sub_24ECC29C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC22E0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 504);
  v3 = *(v0 + 312);
  (*(v0 + 512))(v2, 3, 3, *(v0 + 480));
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v0 + 232) = v3;
  sub_24F91FD78();

  sub_24ECC9AB8(v2);
  if (*(v3 + 18) == 2)
  {

    *(v3 + 18) = 2;
  }

  else
  {
    v5 = *(v0 + 312);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 2;
    *(v0 + 240) = v5;
    sub_24F91FD78();
  }

  v7 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 248) = v7;
  sub_24F91FD88();

  v8 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  swift_beginAccess();
  sub_24E60169C(v7 + v8, v0 + 56, &qword_27F22D4C8);
  if (!*(v0 + 80))
  {
    sub_24E601704(v0 + 56, &qword_27F22D4C8);
LABEL_16:
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E940);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v23, v24, "Game Services not available.", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    v26 = *(v0 + 312);

    sub_24ECC5388(v26);
    goto LABEL_21;
  }

  v9 = (v0 + 16);
  v10 = *(v0 + 312);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 256) = v10;
  sub_24F91FD88();

  v11 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v10 + v11, v0 + 136, &qword_27F22D4D0);
  if (!*(v0 + 160))
  {
    sub_24E601704(v0 + 136, &qword_27F22D4D0);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_16;
  }

  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = objc_opt_self();
  *(v0 + 616) = v12;
  *(v0 + 624) = *MEMORY[0x277CEE160];
  v13 = [v12 ams_sharedAccountStoreForMediaType_];
  v14 = [v13 ams_activeiTunesAccount];

  if (v14)
  {

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    *(v0 + 632) = __swift_project_value_buffer(v15, qword_27F39E940);
    v16 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "App Store is signed in.", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1(v9, v19);
    v21 = swift_task_alloc();
    *(v0 + 640) = v21;
    *v21 = v0;
    v21[1] = sub_24ECC3BD4;

    return MEMORY[0x282165230](v19, v20);
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v28 = sub_24F9220D8();
  __swift_project_value_buffer(v28, qword_27F39E940);
  v29 = sub_24F9220B8();
  v30 = sub_24F92BD98();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24E5DD000, v29, v30, "App Store is signed out.", v31, 2u);
    MEMORY[0x2530542D0](v31, -1, -1);
  }

  v32 = *(v0 + 312);

  sub_24ECC5388(v32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v9);
LABEL_21:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24ECC29C8()
{
  v1 = *(v0 + 560);
  v2 = v1[2];
  *(v0 + 584) = v2;
  *(v0 + 592) = 0;
  if (v2)
  {
    if (v1[2])
    {
      v3 = v1[5];
      *(v0 + 600) = v3;
      v4 = v1[4];

      v5 = swift_task_alloc();
      *(v0 + 608) = v5;
      *v5 = v0;
      v5[1] = sub_24ECC322C;

      return MEMORY[0x282140778](v4, v3);
    }

    __break(1u);
    goto LABEL_38;
  }

  v6 = *(v0 + 312);

  if (*(v6 + 18) != 2)
  {
    v7 = *(v0 + 312);
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 2;
    *(v0 + 296) = v7;
    sub_24F91FD78();
  }

  if (qword_27F211880 != -1)
  {
LABEL_38:
    swift_once();
  }

  v10 = *(v0 + 440);
  v9 = *(v0 + 448);
  v11 = *(v0 + 432);
  v12 = *(v0 + 312);
  sub_24F92A3B8();
  sub_24F92A408();
  (*(v10 + 8))(v9, v11);
  v13 = *(v0 + 680);
  if (v13 == *(v12 + 19))
  {
    v19 = *(v0 + 488);
    v18 = *(v0 + 496);
    v20 = *(v0 + 480);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v19 + 8))(v18, v20);
    *(v12 + 19) = v13;
  }

  else
  {
    v14 = *(v0 + 488);
    v49 = *(v0 + 480);
    v50 = *(v0 + 496);
    v15 = *(v0 + 464);
    v47 = *(v0 + 456);
    v48 = *(v0 + 472);
    v16 = *(v0 + 312);
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v13;
    *(v0 + 304) = v16;
    sub_24F91FD78();

    (*(v15 + 8))(v48, v47);
    (*(v14 + 8))(v50, v49);
  }

  v21 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 248) = v21;
  sub_24F91FD88();

  v22 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  swift_beginAccess();
  sub_24E60169C(v21 + v22, v0 + 56, &qword_27F22D4C8);
  if (!*(v0 + 80))
  {
    sub_24E601704(v0 + 56, &qword_27F22D4C8);
LABEL_24:
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v35 = sub_24F9220D8();
    __swift_project_value_buffer(v35, qword_27F39E940);
    v36 = sub_24F9220B8();
    v37 = sub_24F92BDB8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24E5DD000, v36, v37, "Game Services not available.", v38, 2u);
      MEMORY[0x2530542D0](v38, -1, -1);
    }

    v39 = *(v0 + 312);

    sub_24ECC5388(v39);
    goto LABEL_29;
  }

  v23 = *(v0 + 312);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 256) = v23;
  sub_24F91FD88();

  v24 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v23 + v24, v0 + 136, &qword_27F22D4D0);
  if (!*(v0 + 160))
  {
    sub_24E601704(v0 + 136, &qword_27F22D4D0);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_24;
  }

  sub_24E612C80((v0 + 136), v0 + 96);
  v25 = objc_opt_self();
  *(v0 + 616) = v25;
  *(v0 + 624) = *MEMORY[0x277CEE160];
  v26 = [v25 ams_sharedAccountStoreForMediaType_];
  v27 = [v26 ams_activeiTunesAccount];

  if (v27)
  {

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v28 = sub_24F9220D8();
    *(v0 + 632) = __swift_project_value_buffer(v28, qword_27F39E940);
    v29 = sub_24F9220B8();
    v30 = sub_24F92BD98();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24E5DD000, v29, v30, "App Store is signed in.", v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }

    v32 = *(v0 + 40);
    v33 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
    v34 = swift_task_alloc();
    *(v0 + 640) = v34;
    *v34 = v0;
    v34[1] = sub_24ECC3BD4;

    return MEMORY[0x282165230](v32, v33);
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v41 = sub_24F9220D8();
  __swift_project_value_buffer(v41, qword_27F39E940);
  v42 = sub_24F9220B8();
  v43 = sub_24F92BD98();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_24E5DD000, v42, v43, "App Store is signed out.", v44, 2u);
    MEMORY[0x2530542D0](v44, -1, -1);
  }

  v45 = *(v0 + 312);

  sub_24ECC5388(v45);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
LABEL_29:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_24ECC322C(char a1)
{
  *(*v1 + 681) = a1;

  return MEMORY[0x2822009F8](sub_24ECC334C, 0, 0);
}

uint64_t sub_24ECC334C()
{
  if (*(v0 + 681))
  {
    v1 = 1;
    goto LABEL_5;
  }

  v2 = *(v0 + 592) + 1;
  *(v0 + 592) = v2;
  if (v2 == *(v0 + 584))
  {
    v1 = 2;
LABEL_5:
    v3 = *(v0 + 312);

    if (*(v3 + 18) != v1)
    {
      v4 = *(v0 + 312);
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v4;
      *(v5 + 24) = v1;
      *(v0 + 296) = v4;
      sub_24F91FD78();
    }

    if (qword_27F211880 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 440);
    v6 = *(v0 + 448);
    v8 = *(v0 + 432);
    v9 = *(v0 + 312);
    sub_24F92A3B8();
    sub_24F92A408();
    (*(v7 + 8))(v6, v8);
    v10 = *(v0 + 680);
    if (v10 == *(v9 + 19))
    {
      v16 = *(v0 + 488);
      v15 = *(v0 + 496);
      v17 = *(v0 + 480);
      (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
      (*(v16 + 8))(v15, v17);
      *(v9 + 19) = v10;
    }

    else
    {
      v11 = *(v0 + 488);
      v51 = *(v0 + 480);
      v52 = *(v0 + 496);
      v12 = *(v0 + 464);
      v49 = *(v0 + 456);
      v50 = *(v0 + 472);
      v13 = *(v0 + 312);
      swift_getKeyPath();
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      *(v14 + 24) = v10;
      *(v0 + 304) = v13;
      sub_24F91FD78();

      (*(v12 + 8))(v50, v49);
      (*(v11 + 8))(v52, v51);
    }

    v18 = *(v0 + 312);
    swift_getKeyPath();
    *(v0 + 248) = v18;
    sub_24F91FD88();

    v19 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
    swift_beginAccess();
    sub_24E60169C(v18 + v19, v0 + 56, &qword_27F22D4C8);
    if (*(v0 + 80))
    {
      v20 = *(v0 + 312);
      sub_24E612C80((v0 + 56), v0 + 16);
      swift_getKeyPath();
      *(v0 + 256) = v20;
      sub_24F91FD88();

      v21 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
      swift_beginAccess();
      sub_24E60169C(v20 + v21, v0 + 136, &qword_27F22D4D0);
      if (*(v0 + 160))
      {
        sub_24E612C80((v0 + 136), v0 + 96);
        v22 = objc_opt_self();
        *(v0 + 616) = v22;
        *(v0 + 624) = *MEMORY[0x277CEE160];
        v23 = [v22 ams_sharedAccountStoreForMediaType_];
        v24 = [v23 ams_activeiTunesAccount];

        if (v24)
        {

          if (qword_27F211450 == -1)
          {
LABEL_16:
            v25 = sub_24F9220D8();
            *(v0 + 632) = __swift_project_value_buffer(v25, qword_27F39E940);
            v26 = sub_24F9220B8();
            v27 = sub_24F92BD98();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_24E5DD000, v26, v27, "App Store is signed in.", v28, 2u);
              MEMORY[0x2530542D0](v28, -1, -1);
            }

            v29 = *(v0 + 40);
            v30 = *(v0 + 48);
            __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
            v31 = swift_task_alloc();
            *(v0 + 640) = v31;
            *v31 = v0;
            v31[1] = sub_24ECC3BD4;

            return MEMORY[0x282165230](v29, v30);
          }

LABEL_41:
          swift_once();
          goto LABEL_16;
        }

        if (qword_27F211450 != -1)
        {
          swift_once();
        }

        v43 = sub_24F9220D8();
        __swift_project_value_buffer(v43, qword_27F39E940);
        v44 = sub_24F9220B8();
        v45 = sub_24F92BD98();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_24E5DD000, v44, v45, "App Store is signed out.", v46, 2u);
          MEMORY[0x2530542D0](v46, -1, -1);
        }

        v47 = *(v0 + 312);

        sub_24ECC5388(v47);
        __swift_destroy_boxed_opaque_existential_1(v0 + 96);
        __swift_destroy_boxed_opaque_existential_1(v0 + 16);
        goto LABEL_32;
      }

      sub_24E601704(v0 + 136, &qword_27F22D4D0);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
      sub_24E601704(v0 + 56, &qword_27F22D4C8);
    }

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v37 = sub_24F9220D8();
    __swift_project_value_buffer(v37, qword_27F39E940);
    v38 = sub_24F9220B8();
    v39 = sub_24F92BDB8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24E5DD000, v38, v39, "Game Services not available.", v40, 2u);
      MEMORY[0x2530542D0](v40, -1, -1);
    }

    v41 = *(v0 + 312);

    sub_24ECC5388(v41);
LABEL_32:

    v42 = *(v0 + 8);

    return v42();
  }

  v32 = *(v0 + 560);
  if (v2 >= *(v32 + 16))
  {
    __break(1u);
    goto LABEL_41;
  }

  v33 = v32 + 16 * v2;
  v34 = *(v33 + 40);
  *(v0 + 600) = v34;
  v35 = *(v33 + 32);

  v36 = swift_task_alloc();
  *(v0 + 608) = v36;
  *v36 = v0;
  v36[1] = sub_24ECC322C;

  return MEMORY[0x282140778](v35, v34);
}

uint64_t sub_24ECC3BD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = v1;

  if (v1)
  {
    v4 = sub_24ECC4F88;
  }

  else
  {
    v4 = sub_24ECC3CEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECC3CEC()
{
  v1 = v0[81];
  if (*(v1 + 16))
  {
    v2 = v0[52];
    v3 = v0[53];
    v4 = v0[50];
    v5 = v0[51];
    v6 = v0[49];
    v7 = *(v5 + 16);
    v7(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v3, v2, v4);
    v7(v6, v3, v4);
    (*(v5 + 56))(v6, 0, 1, v4);
    sub_24ECC1574(v6);
    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24E5DD000, v8, v9, "Game Center is signed in.", v10, 2u);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    v11 = v0[15];
    v12 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v11);
    v13 = swift_task_alloc();
    v0[83] = v13;
    *v13 = v0;
    v13[1] = sub_24ECC4038;
    v14 = v0[53];
    v15 = v0[48];

    return MEMORY[0x282165208](v15, v14, v11, v12);
  }

  else
  {

    v16 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "Game Center is signed out.", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    v19 = v0[39];

    sub_24ECC5388(v19);
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_24ECC4038()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_24ECC517C;
  }

  else
  {
    v2 = sub_24ECC414C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC414C()
{
  v69 = v0;
  v1 = *(v0[45] + 16);
  v1(v0[47], v0[48], v0[44]);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[47];
  if (v4)
  {
    v6 = v0[45];
    v7 = v0[46];
    v8 = v0[44];
    v9 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68 = v61;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_24F92B188();
    v64 = v1;
    v12 = v11;
    v67 = *(v6 + 8);
    v67(v5, v8);
    v13 = sub_24E7620D4(v10, v12, &v68);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Received %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x2530542D0](v61, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);

    v14 = v64;
  }

  else
  {
    v15 = v0[44];
    v16 = v0[45];

    v67 = *(v16 + 8);
    v67(v5, v15);
    v14 = v1;
  }

  v62 = v0[77];
  v65 = v0[78];
  v17 = v0[44];
  v18 = v0[45];
  v19 = v0[43];
  v20 = v0[39];
  v14(v19, v0[48], v17);
  (*(v18 + 56))(v19, 0, 1, v17);
  swift_getKeyPath();
  v21 = swift_task_alloc();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v0[33] = v20;
  sub_24F91FD78();

  sub_24E601704(v19, &qword_27F22D4D8);
  sub_24F9208C8();
  v23 = v22;
  v24 = [v62 ams:v65 sharedAccountStoreForMediaType:?];
  v25 = [v24 ams_activeiTunesAccount];
  v26 = [v25 ams_DSID];

  if (v26)
  {
    v27 = [v26 integerValue];

    v28 = v27 == sub_24F9208C8();
    v30 = v28 & ~v29;
  }

  else
  {
    sub_24F9208C8();
    v30 = v31;
  }

  v32 = v23 | v30 ^ 1;
  v33 = sub_24F9220B8();
  v34 = sub_24F92BD98();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109632;
    *(v35 + 4) = v32 & 1;
    *(v35 + 8) = 1024;
    *(v35 + 10) = (v23 & 1) == 0;
    *(v35 + 14) = 1024;
    *(v35 + 16) = v30 & 1;
    _os_log_impl(&dword_24E5DD000, v33, v34, "App Store needs to accept cross use: %{BOOL}d | hasLinkedDSID: %{BOOL}d, matchedWithSignedInAppStore: %{BOOL}d", v35, 0x14u);
    MEMORY[0x2530542D0](v35, -1, -1);
  }

  sub_24F920938();
  v36 = sub_24F9208E8();
  v37 = sub_24F9220B8();
  v38 = sub_24F92BD98();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67109120;
    v40 = v36 ^ 1;
    *(v39 + 4) = v40 & 1;
    _os_log_impl(&dword_24E5DD000, v37, v38, "Game Center needs to accept cross use: %{BOOL}d", v39, 8u);
    MEMORY[0x2530542D0](v39, -1, -1);
  }

  else
  {

    v40 = v36 ^ 1;
  }

  v41 = v0[39];
  v42 = v32 | v40;
  v43 = ((v32 | v40) ^ 1) & 1;
  if (v43 == *(v41 + 16))
  {
    *(v41 + 16) = v43;
  }

  else
  {
    swift_getKeyPath();
    v44 = swift_task_alloc();
    *(v44 + 16) = v41;
    *(v44 + 24) = v43;
    v0[34] = v41;
    sub_24F91FD78();
  }

  v45 = v0[39];
  v46 = v42 & 1;
  if ((v42 & 1) == *(v45 + 17))
  {
    v50 = v0[53];
    v51 = v0[50];
    v52 = v0[51];
    v53 = v0[48];
    v54 = v0[44];
    (*(v0[41] + 8))(v0[42], v0[40]);
    v67(v53, v54);
    (*(v52 + 8))(v50, v51);
    *(v45 + 17) = v46;
  }

  else
  {
    v47 = v0[51];
    v63 = v0[50];
    v66 = v0[53];
    v59 = v0[44];
    v60 = v0[48];
    v48 = v0[41];
    v58 = v0[42];
    v57 = v0[40];
    swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v45;
    *(v49 + 24) = v46;
    v0[35] = v45;
    sub_24F91FD78();

    (*(v48 + 8))(v58, v57);
    v67(v60, v59);
    (*(v47 + 8))(v66, v63);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v55 = v0[1];

  return v55();
}

uint64_t sub_24ECC4888()
{
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  v1 = *(v0 + 576);
  v2 = *(v0 + 504);
  v3 = *(v0 + 312);
  (*(v0 + 512))(v2, 3, 3, *(v0 + 480));
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v0 + 232) = v3;
  sub_24F91FD78();

  sub_24ECC9AB8(v2);
  if (*(v3 + 18) == 2)
  {

    *(v3 + 18) = 2;
  }

  else
  {
    v5 = *(v0 + 312);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 2;
    *(v0 + 240) = v5;
    sub_24F91FD78();
  }

  v7 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 248) = v7;
  sub_24F91FD88();

  v8 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  swift_beginAccess();
  sub_24E60169C(v7 + v8, v0 + 56, &qword_27F22D4C8);
  if (!*(v0 + 80))
  {
    sub_24E601704(v0 + 56, &qword_27F22D4C8);
LABEL_16:
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E940);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v23, v24, "Game Services not available.", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    v26 = *(v0 + 312);

    sub_24ECC5388(v26);
    goto LABEL_21;
  }

  v9 = (v0 + 16);
  v10 = *(v0 + 312);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 256) = v10;
  sub_24F91FD88();

  v11 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v10 + v11, v0 + 136, &qword_27F22D4D0);
  if (!*(v0 + 160))
  {
    sub_24E601704(v0 + 136, &qword_27F22D4D0);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_16;
  }

  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = objc_opt_self();
  *(v0 + 616) = v12;
  *(v0 + 624) = *MEMORY[0x277CEE160];
  v13 = [v12 ams_sharedAccountStoreForMediaType_];
  v14 = [v13 ams_activeiTunesAccount];

  if (v14)
  {

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    *(v0 + 632) = __swift_project_value_buffer(v15, qword_27F39E940);
    v16 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "App Store is signed in.", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1(v9, v19);
    v21 = swift_task_alloc();
    *(v0 + 640) = v21;
    *v21 = v0;
    v21[1] = sub_24ECC3BD4;

    return MEMORY[0x282165230](v19, v20);
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v28 = sub_24F9220D8();
  __swift_project_value_buffer(v28, qword_27F39E940);
  v29 = sub_24F9220B8();
  v30 = sub_24F92BD98();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24E5DD000, v29, v30, "App Store is signed out.", v31, 2u);
    MEMORY[0x2530542D0](v31, -1, -1);
  }

  v32 = *(v0 + 312);

  sub_24ECC5388(v32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v9);
LABEL_21:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24ECC4F88()
{
  v1 = v0[82];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed getting the player's onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v9 = v0[39];

  sub_24ECC5388(v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ECC517C()
{
  (*(v0[51] + 8))(v0[53], v0[50]);
  v1 = v0[84];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed getting the player's onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v9 = v0[39];

  sub_24ECC5388(v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ECC5388(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  else
  {
    *(result + 16) = 0;
  }

  if (*(v1 + 17) == 1)
  {
    *(v1 + 17) = 1;
  }

  else
  {
    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24ECC5568()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  if (*(v0 + 17) == 1)
  {
    *(v0 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v0;
    LOBYTE(v13[-1]) = 1;
    v13[1] = v0;
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E940);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Turning off Combine Gaming Activity...", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F994EB0, v11);
}

uint64_t sub_24ECC5810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  v4[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC594C, 0, 0);
}

uint64_t sub_24ECC594C()
{
  v1 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 144) = v1;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v1 + v2, v0 + 56, &qword_27F22D4D0);
  if (!*(v0 + 80))
  {
    v8 = &qword_27F22D4D0;
    v9 = v0 + 56;
    goto LABEL_5;
  }

  v3 = *(v0 + 192);
  v23 = *(v0 + 184);
  v24 = v0 + 16;
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 152) = v5;
  sub_24F91FD88();

  v6 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  swift_beginAccess();
  sub_24E60169C(v5 + v6, v4, &qword_27F22D4E0);
  if ((*(v3 + 48))(v4, 1, v23) == 1)
  {
    v7 = *(v0 + 176);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v8 = &qword_27F22D4E0;
    v9 = v7;
LABEL_5:
    sub_24E601704(v9, v8);
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E940);
    v11 = sub_24F9220B8();
    v12 = sub_24F92BD98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24E5DD000, v11, v12, "ShareGameActivity: Telling the app to rebootstrap...", v13, 2u);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    v14 = *(v0 + 168);

    v15 = sub_24F92B858();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_24F92B7F8();
    v16 = sub_24F92B7E8();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    sub_24EA998B8(0, 0, v14, &unk_24F994EC0, v17);

    v19 = *(v0 + 8);

    return v19();
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  v21 = swift_task_alloc();
  *(v0 + 208) = v21;
  *v21 = v0;
  v21[1] = sub_24ECC5D78;
  v22 = *(v0 + 200);

  return sub_24ECC61D0(v24, v22);
}

uint64_t sub_24ECC5D78()
{

  return MEMORY[0x2822009F8](sub_24ECC5E74, 0, 0);
}

uint64_t sub_24ECC5E74()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E940);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ShareGameActivity: Telling the app to rebootstrap...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[21];

  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_24F92B7F8();
  v7 = sub_24F92B7E8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_24EA998B8(0, 0, v5, &unk_24F994EC0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ECC6068()
{
  sub_24F92B7F8();
  *(v0 + 16) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECC60FC, v2, v1);
}

uint64_t sub_24ECC60FC()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F210FB0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_27F39DBC8 object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ECC61D0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24F921668();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  type metadata accessor for GamesSettings.BagStatus(0);
  v3[12] = swift_task_alloc();
  v5 = sub_24F92A498();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_24F920988();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC6378, 0, 0);
}

uint64_t sub_24ECC6378()
{
  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[19] = __swift_project_value_buffer(v1, qword_27F39E940);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "rejectCrossUsePrivacy: Performing...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_24F920968();
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_24ECC6528;
  v9 = v0[18];
  v10 = v0[7];

  return MEMORY[0x282165200](v9, v10, v6, v7);
}

uint64_t sub_24ECC6528()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);
  if (v0)
  {
    v3 = sub_24ECC7000;
  }

  else
  {
    v3 = sub_24ECC6690;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ECC6690()
{
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "rejectCrossUsePrivacy: Success.", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[8];

  swift_getKeyPath();
  v0[5] = v7;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v8 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  sub_24ECCA40C(v7 + v8, v6);
  if ((*(v5 + 48))(v6, 3, v4))
  {
    sub_24ECC9AB8(v0[12]);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDD8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "GamesSettings: rejectCrossUsePrivacy called without a bag", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    goto LABEL_9;
  }

  v12 = v0[21];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v0[22] = sub_24F920FD8();
  v0[23] = v13;
  if (v12)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    v14 = v12;
    v9 = sub_24F9220B8();
    v15 = sub_24F92BDB8();

    if (!os_log_type_enabled(v9, v15))
    {

      goto LABEL_10;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_24E5DD000, v9, v15, "rejectCrossUsePrivacy: Failed, reason: %@", v16, 0xCu);
    sub_24E601704(v17, &qword_27F227B20);
    MEMORY[0x2530542D0](v17, -1, -1);
    MEMORY[0x2530542D0](v16, -1, -1);

LABEL_9:
LABEL_10:

    v20 = v0[1];

    return v20();
  }

  v22 = sub_24F92A328();
  v23 = swift_task_alloc();
  v0[24] = v23;
  *v23 = v0;
  v23[1] = sub_24ECC6A90;
  v24 = v0[11];

  return MEMORY[0x282140780](v24, v22);
}

uint64_t sub_24ECC6A90()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECC7184, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_24ECC6C50;
    v4 = v2[22];
    v5 = v2[23];
    v6 = v2[11];

    return (sub_24F567434)(v6, v4, v5, 0x6B6E696C6E75, 0xE600000000000000, 0xD000000000000015, 0x800000024FA59C00);
  }
}

uint64_t sub_24ECC6C50()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_24ECC6E44;
  }

  else
  {
    v2 = sub_24ECC6D84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC6D84()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ECC6E44()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v4;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "rejectCrossUsePrivacy: Failed, reason: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24ECC7000()
{
  v1 = *(v0 + 168);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "rejectCrossUsePrivacy: Failed, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24ECC7184()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[25];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "rejectCrossUsePrivacy: Failed, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24ECC7320()
{
  v1[14] = v0;
  v2 = sub_24F921638();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = sub_24F921608();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_24F921668();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E568);
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  v1[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v1[28] = v6;
  v1[29] = *(v6 - 8);
  v1[30] = swift_task_alloc();
  type metadata accessor for GamesSettings.BagStatus(0);
  v1[31] = swift_task_alloc();
  v7 = sub_24F92A498();
  v1[32] = v7;
  v1[33] = *(v7 - 8);
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC7628, 0, 0);
}

uint64_t sub_24ECC7628()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[8] = v1;
  v0[35] = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v0[36] = sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  if (*(v1 + 18) != 1)
  {
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E940);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDD8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "GamesSettings: resetAnalyticsIdentifier called with invalid resetIdentifierStatus";
    goto LABEL_11;
  }

  v2 = v0[33];
  v36 = v0[32];
  v3 = v0[31];
  v4 = v0[14];
  swift_getKeyPath();
  v0[9] = v4;
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  sub_24ECCA40C(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 3, v36))
  {
    sub_24ECC9AB8(v0[31]);
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E940);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDD8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "GamesSettings: resetAnalyticsIdentifier called without a bag";
LABEL_11:
    _os_log_impl(&dword_24E5DD000, v7, v8, v10, v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
LABEL_12:

LABEL_13:

    v12 = v0[1];

    return v12();
  }

  v14 = v0[29];
  v37 = v0[28];
  v15 = v0[27];
  v16 = v0[14];
  (*(v0[33] + 32))(v0[34], v0[31], v0[32]);
  swift_getKeyPath();
  v0[10] = v16;
  sub_24F91FD88();

  v17 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  swift_beginAccess();
  sub_24E60169C(v16 + v17, v15, &qword_27F22D4E0);
  if ((*(v14 + 48))(v15, 1, v37) == 1)
  {
    sub_24E601704(v0[27], &qword_27F22D4E0);
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v18 = sub_24F9220D8();
    __swift_project_value_buffer(v18, qword_27F39E940);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BDD8();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[33];
    v22 = v0[34];
    v24 = v0[32];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "GamesSettings: resetAnalyticsIdentifier called without a player", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    goto LABEL_13;
  }

  (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
  if (*(v1 + 18) != 3)
  {
    v26 = v0[14];
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v26;
    *(v27 + 24) = 3;
    v0[11] = v26;
    sub_24F91FD78();
  }

  v28 = sub_24F920FD8();
  v0[37] = v28;
  v0[38] = v29;
  v31 = v0[25];
  v30 = v0[26];
  v32 = v0[24];
  *v30 = v28;
  v30[1] = v29;
  (*(v31 + 104))(v30, *MEMORY[0x277CEE0E8], v32);

  v33 = sub_24F92A328();
  v34 = swift_task_alloc();
  v0[39] = v34;
  *v34 = v0;
  v34[1] = sub_24ECC7ED0;
  v35 = v0[23];

  return MEMORY[0x282140780](v35, v33);
}

uint64_t sub_24ECC7ED0()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECC8F44, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[41] = v3;
    *v3 = v2;
    v3[1] = sub_24ECC8090;
    v4 = v2[37];
    v5 = v2[38];
    v6 = v2[23];

    return (sub_24F567434)(v6, v4, v5, 0x6B6E696C6E75, 0xE600000000000000, 0xD000000000000015, 0x800000024FA59C00);
  }
}

uint64_t sub_24ECC8090()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_24ECC8578;
  }

  else
  {
    v2 = sub_24ECC81AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC81AC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D520);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v8 + v7, v1, v3);
  v9 = sub_24E8047A4(v8);
  v0[43] = v9;
  swift_setDeallocating();
  v10 = *(v2 + 8);
  v0[44] = v10;
  v0[45] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v8 + v7, v3);
  swift_deallocClassInstance();
  (*(v5 + 104))(v4, *MEMORY[0x277CEE100], v6);
  v11 = swift_task_alloc();
  v0[46] = v11;
  *v11 = v0;
  v11[1] = sub_24ECC835C;
  v12 = v0[20];
  v13 = v0[17];
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D837E0];
  v16 = MEMORY[0x277D83840];

  return MEMORY[0x282140758](v9, v12, v14, v15, v16, v13);
}

uint64_t sub_24ECC835C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    return MEMORY[0x2822009F8](sub_24ECC922C, 0, 0);
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v4 = swift_task_alloc();
    v2[47] = v4;
    *v4 = v3;
    v4[1] = sub_24ECC887C;
    v5 = v2[37];
    v6 = v2[38];
    v7 = v2[23];

    return (sub_24F567434)(v7, v5, v6, 1802398060, 0xE400000000000000, 0xD000000000000015, 0x800000024FA59C00);
  }
}

uint64_t sub_24ECC8578()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  v5 = v0[14];
  if (*(v5 + 18) != 1)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[12] = v5;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E940);
  v8 = v4;
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[30];
  v17 = v0[28];
  if (v11)
  {
    v27 = v0[34];
    v18 = swift_slowAlloc();
    v26 = v14;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_24E5DD000, v9, v10, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v18, 0xCu);
    sub_24E601704(v19, &qword_27F227B20);
    v22 = v19;
    v14 = v26;
    MEMORY[0x2530542D0](v22, -1, -1);
    v23 = v18;
    v13 = v27;
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  (*(v15 + 8))(v16, v17);
  (*(v12 + 8))(v13, v14);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24ECC887C()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24ECC8C48;
  }

  else
  {
    v2 = sub_24ECC89B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC89B0()
{
  v1 = v0[14];
  if (*(v1 + 18) != 4)
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 4;
    v0[13] = v1;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E940);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDD8();
  v6 = os_log_type_enabled(v4, v5);
  v22 = v0[44];
  v8 = v0[33];
  v7 = v0[34];
  v23 = v0[32];
  v9 = v0[29];
  v20 = v0[28];
  v21 = v0[30];
  v19 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v13 = v0[22];
  if (v6)
  {
    v18 = v0[34];
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GamesSettings: resetAnalyticsIdentifier: identifier rotation succeeded", v14, 2u);
    v15 = v14;
    v7 = v18;
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  (*(v13 + 8))(v11, v12);
  v22(v19, v10);
  (*(v9 + 8))(v21, v20);
  (*(v8 + 8))(v7, v23);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24ECC8C48()
{
  v1 = v0[44];
  v2 = v0[26];
  v3 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1(v2, v3);
  v4 = v0[48];
  v5 = v0[14];
  if (*(v5 + 18) != 1)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[12] = v5;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E940);
  v8 = v4;
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[30];
  v17 = v0[28];
  if (v11)
  {
    v27 = v0[34];
    v18 = swift_slowAlloc();
    v26 = v14;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_24E5DD000, v9, v10, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v18, 0xCu);
    sub_24E601704(v19, &qword_27F227B20);
    v22 = v19;
    v14 = v26;
    MEMORY[0x2530542D0](v22, -1, -1);
    v23 = v18;
    v13 = v27;
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  (*(v15 + 8))(v16, v17);
  (*(v12 + 8))(v13, v14);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24ECC8F44()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[40];
  v2 = v0[14];
  if (*(v2 + 18) != 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[12] = v2;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E940);
  v5 = v1;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[32];
  v12 = v0[29];
  v13 = v0[30];
  v14 = v0[28];
  if (v8)
  {
    v24 = v0[34];
    v15 = swift_slowAlloc();
    v23 = v11;
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_24E5DD000, v6, v7, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v15, 0xCu);
    sub_24E601704(v16, &qword_27F227B20);
    v19 = v16;
    v11 = v23;
    MEMORY[0x2530542D0](v19, -1, -1);
    v20 = v15;
    v10 = v24;
    MEMORY[0x2530542D0](v20, -1, -1);
  }

  (*(v12 + 8))(v13, v14);
  (*(v9 + 8))(v10, v11);

  v21 = v0[1];

  return v21();
}

uint64_t sub_24ECC922C()
{
  v1 = v0[44];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  sub_24ECCA7A4(&qword_27F22D528, MEMORY[0x277CEE118]);
  v34 = swift_allocError();
  (*(v8 + 32))(v10, v7, v9);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v11 = v0[14];
  if (*(v11 + 18) != 1)
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 1;
    v0[12] = v11;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9220D8();
  __swift_project_value_buffer(v13, qword_27F39E940);
  v14 = v34;
  v15 = sub_24F9220B8();
  v16 = sub_24F92BDB8();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[33];
  v19 = v0[34];
  v20 = v0[32];
  v21 = v0[29];
  v22 = v0[30];
  v23 = v0[28];
  if (v17)
  {
    v33 = v0[34];
    v24 = swift_slowAlloc();
    v32 = v20;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v34;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_24E5DD000, v15, v16, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v24, 0xCu);
    sub_24E601704(v25, &qword_27F227B20);
    v28 = v25;
    v20 = v32;
    MEMORY[0x2530542D0](v28, -1, -1);
    v29 = v24;
    v19 = v33;
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  (*(v21 + 8))(v22, v23);
  (*(v18 + 8))(v19, v20);

  v30 = v0[1];

  return v30();
}

uint64_t sub_24ECC95A8(uint64_t a1)
{
  v2 = sub_24F92A498();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540);
  return sub_24F92B798();
}

uint64_t sub_24ECC9688(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540);
  return sub_24F92B788();
}

uint64_t GamesSettings.deinit()
{
  sub_24ECC9AB8(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService, &qword_27F22D4C8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService, &qword_27F22D4D0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef, &qword_27F22D4E0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingState, &qword_27F22D4D8);
  v1 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GamesSettings.__deallocating_deinit()
{
  sub_24ECC9AB8(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService, &qword_27F22D4C8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService, &qword_27F22D4D0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef, &qword_27F22D4E0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingState, &qword_27F22D4D8);
  v1 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECC9AB8(uint64_t a1)
{
  v2 = type metadata accessor for GamesSettings.BagStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ECC9B14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540);
  v3 = *(v2 - 8);
  v15[2] = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  if (qword_27F210540 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92A468();
  __swift_project_value_buffer(v6, qword_27F22D478);
  v7 = [objc_opt_self() currentProcess];
  v15[1] = sub_24F92A348();

  v8 = *(v3 + 16);
  v8(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15[0] = swift_allocObject();
  v10 = *(v3 + 32);
  v10(v15[0] + v9, v5, v2);
  v8(v5, a1, v2);
  v11 = swift_allocObject();
  v10(v11 + v9, v5, v2);
  v12 = sub_24E74EC40();
  v13 = sub_24F92BEF8();
  v16[3] = v12;
  v16[4] = MEMORY[0x277D225C0];
  v16[0] = v13;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_24ECC9ED0()
{
  type metadata accessor for GamesSettings.BagStatus(319);
  if (v0 <= 0x3F)
  {
    sub_24ECCA178();
    if (v1 <= 0x3F)
    {
      sub_24ECCA1DC();
      if (v2 <= 0x3F)
      {
        sub_24F91FDC8();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of GamesSettings.load()()
{
  v4 = (*(*v0 + 608) + **(*v0 + 608));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24E6541E4;

  return v4();
}

void sub_24ECCA178()
{
  if (!qword_27F22D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2139D8);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22D4F8);
    }
  }
}

void sub_24ECCA1DC()
{
  if (!qword_27F22D500)
  {
    sub_24F920958();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22D500);
    }
  }
}

uint64_t sub_24ECCA258(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A498();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ECCA2D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24F92A498();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24ECCA35C()
{
  v0 = sub_24F92A498();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_24ECCA3B8()
{
  result = qword_27F22D518;
  if (!qword_27F22D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D518);
  }

  return result;
}

uint64_t sub_24ECCA40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECCA4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D530);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24E60169C(a1, &v21 - v12, &qword_27F22D4E0);
  sub_24E60169C(a2, &v13[v15], &qword_27F22D4E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24E60169C(v13, v10, &qword_27F22D4E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24ECCA9F8();
      v18 = sub_24F92AFF8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24E601704(v13, &qword_27F22D4E0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24E601704(v13, &qword_27F22D530);
    v17 = 1;
    return v17 & 1;
  }

  sub_24E601704(v13, &qword_27F22D4E0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_24ECCA7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ECCA7EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECCA82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24ECC5810(a1, v4, v5, v6);
}

uint64_t sub_24ECCA8E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECCA918()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24ECC6068();
}

unint64_t sub_24ECCA9F8()
{
  result = qword_27F22D538;
  if (!qword_27F22D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2139D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D538);
  }

  return result;
}

uint64_t sub_24ECCAA60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540);

  return sub_24ECC95A8(a1);
}

uint64_t objectdestroy_117Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCAB70(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540);

  return sub_24ECC9688(a1);
}

uint64_t sub_24ECCABEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECCACE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCC910();
  sub_24F91FD88();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_24ECCAD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v56 = a5;
  v58 = a4;
  v52 = a3;
  v45 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v12 = *(v11 - 8);
  v48 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D548);
  v15 = *(v57 - 8);
  v41[2] = *(v15 + 64);
  MEMORY[0x28223BE20](v57);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v55 = v41 - v19;
  v41[1] = *(a2 + 16);
  v20 = *(v12 + 16);
  v50 = v12 + 16;
  v51 = v20;
  v44 = v14;
  v42 = v11;
  (v20)(v14, a1, v11, v18);
  v21 = v12;
  v46 = *(v12 + 80);
  v22 = (v46 + 56) & ~v46;
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  v24 = v56;
  *(v23 + 4) = v58;
  *(v23 + 5) = v24;
  *(v23 + 6) = v54;
  v25 = *(v21 + 32);
  v47 = v21 + 32;
  v49 = v25;
  v25(&v23[v22], v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D550);
  sub_24ECCB64C();

  sub_24F9288B8();
  v26 = v55;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v59);
  v27 = v43;
  v28 = v57;
  (*(v15 + 16))(v43, v26, v57);
  v29 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  (*(v15 + 32))(v30 + v29, v27, v28);

  v31 = v42;
  v32 = v45;
  sub_24F92B898();
  v33 = sub_24F92B858();
  v34 = v53;
  (*(*(v33 - 8) + 56))(v53, 1, 1, v33);
  v35 = v44;
  v51(v44, v32, v31);
  v36 = (v46 + 72) & ~v46;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = v52;
  *(v37 + 4) = a2;
  *(v37 + 5) = v38;
  v39 = v56;
  *(v37 + 6) = v58;
  *(v37 + 7) = v39;
  *(v37 + 8) = v54;
  v49(&v37[v36], v35, v31);

  sub_24F1D3DA4(0, 0, v34, &unk_24F994EF8, v37);

  return (*(v15 + 8))(v55, v57);
}

uint64_t sub_24ECCB298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a3;
  v29 = a6;
  v27 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v26 = &v26 - v16;
  v18 = *a1;
  v19 = sub_24F92B858();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = v11;
  (*(v12 + 16))(v14, a7, v11);
  v21 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  *(v22 + 5) = v18;
  v23 = v27;
  *(v22 + 6) = v28;
  *(v22 + 7) = a4;
  v24 = v29;
  *(v22 + 8) = v23;
  *(v22 + 9) = v24;
  (*(v12 + 32))(&v22[v21], v14, v20);

  sub_24F1D3DA4(0, 0, v26, &unk_24F994F30, v22);
}

uint64_t sub_24ECCB4DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCB5C4(uint64_t *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_24ECCB298(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_24ECCB64C()
{
  result = qword_27F22D558;
  if (!qword_27F22D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D558);
  }

  return result;
}

uint64_t sub_24ECCB6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v14;
  v8[19] = v15;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v11 = swift_task_alloc();
  v8[25] = v11;
  *v11 = v8;
  v11[1] = sub_24ECCB81C;

  return MEMORY[0x28217F228](v8 + 8, v10, v10);
}

uint64_t sub_24ECCB81C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ECCBCFC;
  }

  else
  {
    v2 = sub_24ECCB930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCB930()
{
  sub_24F92B7F8();

  *(v0 + 216) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECCB9D0, v2, v1);
}

uint64_t sub_24ECCB9D0()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[13] = v1;
  sub_24ECCC910();
  sub_24F91FD88();

  v0[28] = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24ECCBA8C, 0, 0);
}

uint64_t sub_24ECCBA8C(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 224);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v7 + 136);
  if (v9 >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
  }

  v12 = *(v7 + 120);
  v11 = *(v7 + 128);
  v13 = v10 + 32 * v9;
  v14 = *(v13 + 32);
  *(v7 + 232) = v14;
  v15 = *(v13 + 40);
  *(v7 + 240) = v15;
  v16 = *(v13 + 48);
  v17 = *(v13 + 56);
  v18 = *(v7 + 88);
  v19 = *(v7 + 96);
  __swift_project_boxed_opaque_existential_1((v7 + 64), v18);
  *(v7 + 16) = v12;
  *(v7 + 24) = v11;
  *(v7 + 32) = v14;
  *(v7 + 40) = v15;
  *(v7 + 48) = v16;
  *(v7 + 56) = v17;

  v20 = swift_task_alloc();
  *(v7 + 248) = v20;
  a5 = sub_24E7C5F68();
  *v20 = v7;
  v20[1] = sub_24ECCBBE8;
  a1 = *(v7 + 192);
  a3 = *(v7 + 144);
  a4 = &type metadata for GameDetailsMediaPreviewShelfConstructionIntent;
  a2 = v7 + 16;
  a6 = v18;
  a7 = v19;

  return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24ECCBBE8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ECCBE88;
  }

  else
  {
    v2 = sub_24ECCBD7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCBCFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECCBD7C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];

  __swift_destroy_boxed_opaque_existential_1((v0 + 8));
  sub_24E614E60(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  (*(v4 + 8))(v3, v5);
  sub_24E614EC4(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24ECCBE88()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECCBF2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D548);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v14;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v11 = swift_task_alloc();
  v8[25] = v11;
  *v11 = v8;
  v11[1] = sub_24ECCC1E0;

  return MEMORY[0x28217F228](v8 + 8, v10, v10);
}

uint64_t sub_24ECCC1E0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ECCCB9C;
  }

  else
  {
    v2 = sub_24ECCC2F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCC2F4()
{
  sub_24F92B7F8();

  *(v0 + 216) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECCC394, v2, v1);
}

uint64_t sub_24ECCC394()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[13] = v1;
  sub_24ECCC910();
  sub_24F91FD88();

  v0[28] = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24ECCC450, 0, 0);
}

uint64_t sub_24ECCC450(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 224);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v7 + 136);
  if (v9 >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
  }

  v12 = *(v7 + 120);
  v11 = *(v7 + 128);
  v13 = v10 + 32 * v9;
  v14 = *(v13 + 32);
  *(v7 + 232) = v14;
  v15 = *(v13 + 40);
  *(v7 + 240) = v15;
  v16 = *(v13 + 48);
  v17 = *(v13 + 56);
  v18 = *(v7 + 88);
  v19 = *(v7 + 96);
  __swift_project_boxed_opaque_existential_1((v7 + 64), v18);
  *(v7 + 16) = v12;
  *(v7 + 24) = v11;
  *(v7 + 32) = v14;
  *(v7 + 40) = v15;
  *(v7 + 48) = v16;
  *(v7 + 56) = v17;

  v20 = swift_task_alloc();
  *(v7 + 248) = v20;
  a5 = sub_24E7C5F68();
  *v20 = v7;
  v20[1] = sub_24ECCC5AC;
  a1 = *(v7 + 192);
  a3 = *(v7 + 144);
  a4 = &type metadata for GameDetailsMediaPreviewShelfConstructionIntent;
  a2 = v7 + 16;
  a6 = v18;
  a7 = v19;

  return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24ECCC5AC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ECCCB94;
  }

  else
  {
    v2 = sub_24ECCCB98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCC6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCC7B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24ECCC070(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_24ECCC910()
{
  result = qword_27F224068;
  if (!qword_27F224068)
  {
    type metadata accessor for GameMediaPreviewPlatformOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224068);
  }

  return result;
}

uint64_t sub_24ECCC968()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCCA60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E614970;

  return sub_24ECCB6B0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24ECCCBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924E18();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24F924E28();
}

uint64_t sub_24ECCCC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F924E18();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24F924E28();
}

__n128 DebugNotificationView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v43 - v5;
  v7 = [*v1 text];
  v8 = sub_24F92B0D8();
  v10 = v9;

  v56 = v8;
  v57 = v10;
  sub_24E600AEC();
  v48 = sub_24F925E18();
  v47 = v11;
  LOBYTE(v7) = v12;
  v46 = v13;
  sub_24F927628();
  sub_24F9242E8();
  LOBYTE(v10) = v7 & 1;
  v58 = v7 & 1;
  v45 = sub_24F925808();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v56) = 0;
  v22 = sub_24F925908();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v44 = sub_24F925968();
  sub_24ECCD0C8(v6);
  KeyPath = swift_getKeyPath();
  v24 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v25 = sub_24F927618();
  v27 = v26;
  sub_24F926C68();
  v28 = sub_24F926D08();

  v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D560) + 36));
  v30 = *(sub_24F924258() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_24F924B38();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #12.0 }

  *v29 = _Q0;
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  v38 = v47;
  *a1 = v48;
  *(a1 + 8) = v38;
  *(a1 + 16) = v10;
  *(a1 + 24) = v46;
  v39 = v54;
  *(a1 + 96) = v53;
  *(a1 + 112) = v39;
  *(a1 + 128) = v55;
  v40 = v50;
  *(a1 + 32) = v49;
  *(a1 + 48) = v40;
  result = v52;
  *(a1 + 64) = v51;
  *(a1 + 80) = result;
  *(a1 + 144) = v45;
  *(a1 + 152) = v15;
  *(a1 + 160) = v17;
  *(a1 + 168) = v19;
  *(a1 + 176) = v21;
  *(a1 + 184) = 0;
  v42 = v44;
  *(a1 + 192) = KeyPath;
  *(a1 + 200) = v42;
  *(a1 + 208) = v24;
  *(a1 + 216) = v28;
  *(a1 + 224) = v25;
  *(a1 + 232) = v27;
  return result;
}

uint64_t sub_24ECCD0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ECCD134()
{
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
  sub_24F91FD88();
}

uint64_t sub_24ECCD1D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

uint64_t sub_24ECCD284(uint64_t a1)
{

  v4 = sub_24EA184FC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
    sub_24F91FD78();
  }
}

void *sub_24ECCD3D8()
{
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
  sub_24F91FD88();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_24ECCD480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
  sub_24F91FD88();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_24ECCD538(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
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
    sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24F91F1C8();
  v5 = v4;
  v6 = a1;
  v7 = sub_24F92C408();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

uint64_t sub_24ECCD6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F927D88();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300);
  v10 = sub_24F92BEF8();
  aBlock[4] = sub_24ECCF524;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_67;
  v11 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24ECCF544(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v11);
  _Block_release(v11);

  (*(v14 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v13);
}

uint64_t sub_24ECCD998()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = [*(result + 24) messages];
    sub_24E69A5C4(0, &qword_27F2252F0);
    sub_24F92B598();

    sub_24ECCD284(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_24ECCDA50()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC12GameStoreKit25DebugNotificationObserver___observationRegistrar;
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
  sub_24F91FD88();

  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = v3;
    sub_24F91F1B8();
  }

  v5 = sub_24F91FDC8();
  (*(*(v5 - 8) + 8))(v1 + v2, v5);
  return swift_deallocClassInstance();
}

uint64_t DebugNotificationViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_24F927618();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D568) + 36);
  sub_24ECCDC68(v5, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D570) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D578);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t sub_24ECCDC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D608);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D610);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D618);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D620);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D628);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D630);
  sub_24ECCE094(v47, &v5[*(v22 + 44)]);
  v5[*(v3 + 44)] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v5, v9, &qword_27F22D608);
  v23 = &v9[*(v7 + 44)];
  v24 = v54;
  *(v23 + 4) = v53;
  *(v23 + 5) = v24;
  *(v23 + 6) = v55;
  v25 = v50;
  *v23 = v49;
  *(v23 + 1) = v25;
  v26 = v52;
  *(v23 + 2) = v51;
  *(v23 + 3) = v26;
  LOBYTE(v5) = sub_24F925808();
  sub_24F923318();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_24E6009C8(v9, v13, &qword_27F22D610);
  v35 = &v13[*(v11 + 44)];
  *v35 = v5;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_24F927618();
  v38 = v37;
  v39 = sub_24F926C98();
  sub_24E6009C8(v13, v17, &qword_27F22D618);
  v40 = &v17[*(v15 + 44)];
  *v40 = v39;
  v40[1] = v36;
  v40[2] = v38;
  v41 = sub_24F927718();
  swift_getKeyPath();
  v42 = v47;
  v48 = v47;
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
  sub_24F91FD88();

  v43 = *(v42 + 16);
  sub_24E6009C8(v17, v21, &qword_27F22D620);
  v44 = &v21[*(v19 + 44)];
  *v44 = v41;
  v44[1] = v43;
  sub_24E6009C8(v21, v46, &qword_27F22D628);
}

uint64_t sub_24ECCE094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D638);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  swift_getKeyPath();
  v16 = a1;
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver);
  sub_24F91FD88();

  v16 = *(a1 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D640);
  sub_24E602068(&qword_27F22D648, &qword_27F22D640);
  sub_24ECCF58C();
  sub_24ECCF5F4();
  sub_24F927228();
  v11 = *(v5 + 16);
  v11(v7, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D660);
  v11((a2 + *(v12 + 48)), v7, v4);
  v13 = *(v5 + 8);
  v13(v10, v4);
  return (v13)(v7, v4);
}

id sub_24ECCE334@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_24ECCE340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_24F927618();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D568) + 36);
  sub_24ECCDC68(v5, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D570) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D578);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t View.withDebugNotificationView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v65 = a2;
  v4 = 0x6C616E7265746E69;
  v61 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = sub_24F924038();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v56 - v13;
  MEMORY[0x28223BE20](v14);
  v58 = &v56 - v15;
  v16 = sub_24F924E38();
  v63 = *(v16 - 8);
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  v62 = &v56 - v17;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v19 = 0x6C616E7265746E69;
  }

  else
  {
    v19 = 0x69746375646F7270;
  }

  if (has_internal_content)
  {
    v20 = 0xE800000000000000;
  }

  else
  {
    v20 = 0xEA00000000006E6FLL;
  }

  if (byte_2861C0A48 > 1u)
  {
    v24 = byte_2861C0A48 == 2 ? 0x6C616E7265746E69 : 0x69746375646F7270;
    v25 = byte_2861C0A48 == 2 ? 0xE800000000000000 : 0xEA00000000006E6FLL;
    if (v24 == v19 && v25 == v20)
    {
      goto LABEL_34;
    }
  }

  v21 = sub_24F92CE08();

  if (v21)
  {
    goto LABEL_35;
  }

  if (byte_2861C0A49 > 1u)
  {
    if (byte_2861C0A49 == 2)
    {
      v26 = 0xE800000000000000;
      if (v19 != 0x6C616E7265746E69)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26 = 0xEA00000000006E6FLL;
      if (v19 != 0x69746375646F7270)
      {
        goto LABEL_10;
      }
    }

    if (v26 == v20)
    {
LABEL_34:

      goto LABEL_35;
    }
  }

LABEL_10:
  v22 = sub_24F92CE08();

  if (v22)
  {
    goto LABEL_35;
  }

  if (byte_2861C0A4A > 1u)
  {
    if (byte_2861C0A4A == 2)
    {
      v27 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x69746375646F7270;
      v27 = 0xEA00000000006E6FLL;
    }

    if (v4 == v19 && v27 == v20)
    {
      goto LABEL_34;
    }
  }

  v23 = sub_24F92CE08();

  if ((v23 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_35:
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = sub_24F92B098();
  v30 = [v28 arrayForKey_];

  if (!v30)
  {

LABEL_43:
    v43 = v65;
    sub_24E7896B8(v67, a1, v65);
    sub_24E7896B8(v9, a1, v43);
    v50 = sub_24ECCEDCC();
    v70[6] = v43;
    v70[7] = v50;
    swift_getWitnessTable();
    v49 = v62;
    sub_24ECCCC98(v6, v10, a1);
    v51 = *(v61 + 8);
    v51(v6, a1);
    v51(v9, a1);
    goto LABEL_44;
  }

  v31 = sub_24F92B5A8();

  v32 = sub_24E9E2340(v31);

  if (!v32)
  {
    goto LABEL_43;
  }

  v70[0] = 0xD000000000000011;
  v70[1] = 0x800000024FA59C40;
  MEMORY[0x28223BE20](v33);
  *(&v56 - 2) = v70;
  v34 = sub_24E6159B8(sub_24E7FA94C, (&v56 - 4), v32);

  if ((v34 & 1) == 0)
  {
    goto LABEL_43;
  }

  type metadata accessor for DebugNotificationObserver();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 16) = MEMORY[0x277D84F90];
  *(v35 + 24) = [objc_opt_self() sharedInstance];
  *(v35 + 32) = 0;
  sub_24F91FDB8();
  v37 = [*(v35 + 24) messages];
  v70[0] = 0;
  sub_24E69A5C4(0, &qword_27F2252F0);
  sub_24F92B598();

  if (v70[0])
  {
    v38 = v70[0];
  }

  else
  {
    v38 = v36;
  }

  sub_24ECCD284(v38);
  v70[0] = *(v35 + 24);
  v39 = v70[0];
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v40 = v39;
  v41 = sub_24F91F318();

  sub_24ECCD538(v41);
  v70[0] = v35;
  v42 = v57;
  v43 = v65;
  MEMORY[0x25304C420](v70, a1, &type metadata for DebugNotificationViewModifier, v65);

  v44 = sub_24ECCEDCC();
  v68 = v43;
  v69 = v44;
  WitnessTable = swift_getWitnessTable();
  v46 = v58;
  sub_24E7896B8(v42, v10, WitnessTable);
  v47 = *(v60 + 8);
  v47(v42, v10);
  v48 = v59;
  sub_24E7896B8(v46, v10, WitnessTable);
  v49 = v62;
  sub_24ECCCBA0(v48, v10);
  v47(v48, v10);
  v47(v46, v10);
LABEL_44:
  v52 = sub_24ECCEDCC();
  v70[4] = v43;
  v70[5] = v52;
  v70[2] = swift_getWitnessTable();
  v70[3] = v43;
  v53 = v64;
  v54 = swift_getWitnessTable();
  sub_24E7896B8(v49, v53, v54);
  return (*(v63 + 8))(v49, v53);
}

uint64_t sub_24ECCED1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924758();
  *a1 = result;
  return result;
}

uint64_t sub_24ECCED48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924758();
  *a1 = result;
  return result;
}

unint64_t sub_24ECCEDCC()
{
  result = qword_27F22D580;
  if (!qword_27F22D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D580);
  }

  return result;
}

uint64_t type metadata accessor for DebugNotificationObserver()
{
  result = qword_27F22D590;
  if (!qword_27F22D590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24ECCEE78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 messages];
  *a2 = result;
  return result;
}

uint64_t sub_24ECCEEB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ECCEF4C()
{
  result = sub_24F91FDC8();
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

unint64_t sub_24ECCF018()
{
  result = qword_27F22D5A0;
  if (!qword_27F22D5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D560);
    sub_24ECCF0D0();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5A0);
  }

  return result;
}

unint64_t sub_24ECCF0D0()
{
  result = qword_27F22D5A8;
  if (!qword_27F22D5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D5B0);
    sub_24ECCF188();
    sub_24E602068(&qword_27F22D5D8, &qword_27F22D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5A8);
  }

  return result;
}

unint64_t sub_24ECCF188()
{
  result = qword_27F22D5B8;
  if (!qword_27F22D5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D5C0);
    sub_24ECCF240();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5B8);
  }

  return result;
}

unint64_t sub_24ECCF240()
{
  result = qword_27F22D5C8;
  if (!qword_27F22D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D5D0);
    sub_24E99BE04();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5C8);
  }

  return result;
}

unint64_t sub_24ECCF2FC()
{
  result = qword_27F22D5E8;
  if (!qword_27F22D5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D568);
    sub_24E602068(&qword_27F22D5F0, &qword_27F22D578);
    sub_24E602068(&qword_27F22D5F8, &qword_27F22D570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5E8);
  }

  return result;
}

uint64_t sub_24ECCF3E0()
{
  sub_24F924038();
  sub_24F924E38();
  sub_24ECCEDCC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_24ECCF48C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24ECCD538(v1);
}

void sub_24ECCF4EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ECCF544(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ECCF58C()
{
  result = qword_27F22D650;
  if (!qword_27F22D650)
  {
    sub_24E69A5C4(255, &qword_27F2252F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D650);
  }

  return result;
}

unint64_t sub_24ECCF5F4()
{
  result = qword_27F22D658;
  if (!qword_27F22D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D658);
  }

  return result;
}

uint64_t sub_24ECCF650()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928FD8();
  sub_24F92A758();
  v0 = type metadata accessor for Restrictions();
  v29 = *v30;
  sub_24F92A758();
  v1 = v30[0];
  v2 = type metadata accessor for AppStateFieldsProvider();
  v31 = v2;
  v32 = sub_24ECD02B0(&qword_27F22D668, type metadata accessor for AppStateFieldsProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v4 = *(v2 + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  v7 = *(*(v6 - 8) + 104);
  v7(boxed_opaque_existential_1 + v4, v5, v6);
  *boxed_opaque_existential_1 = v29;
  v8 = qword_27F2102B8;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_24F92A2C8();
  __swift_project_value_buffer(v9, qword_27F229C80);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for FastImpressionsFieldsProvider(0);
  v32 = sub_24ECD02B0(&qword_27F22D670, type metadata accessor for FastImpressionsFieldsProvider);
  v10 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v10, v5, v6);
  if (qword_27F210298 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229C20);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for CrossfireReferralFieldsProvider(0);
  v32 = sub_24ECD02B0(&qword_27F22D678, type metadata accessor for CrossfireReferralFieldsProvider);
  v11 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v11, v5, v6);
  if (qword_27F2102A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229C38);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for CrossfireReferralCandidateFieldsProvider(0);
  v32 = sub_24ECD02B0(&qword_27F22D680, type metadata accessor for CrossfireReferralCandidateFieldsProvider);
  v12 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v12, v5, v6);
  if (qword_27F2102A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229C50);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for RefURLFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D688, type metadata accessor for RefURLFieldsProvider);
  v13 = __swift_allocate_boxed_opaque_existential_1(v30);
  v14 = *MEMORY[0x277D22348];
  v7(v13, v14, v6);
  if (qword_27F2102B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229C68);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for PreloadingFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D690, type metadata accessor for PreloadingFieldsProvider);
  v15 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v15, v14, v6);
  if (qword_27F2102C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229C98);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for SearchAdRotationFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D698, type metadata accessor for SearchAdRotationFieldsProvider);
  v16 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v16, v5, v6);
  if (qword_27F2102D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229CE0);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for SearchGhostHintFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D6A0, type metadata accessor for SearchGhostHintFieldsProvider);
  v17 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v17, v5, v6);
  if (qword_27F2102E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229CF8);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for GuidedSearchFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D6A8, type metadata accessor for GuidedSearchFieldsProvider);
  v18 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v18, v5, v6);
  if (qword_27F2102F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229D28);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for ImpressionsAppendixFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D6B0, type metadata accessor for ImpressionsAppendixFieldsProvider);
  v19 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v19, v5, v6);
  if (qword_27F2102F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229D40);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for AdvertDeviceWindowFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D6B8, type metadata accessor for AdvertDeviceWindowFieldsProvider);
  v20 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v20, v5, v6);
  if (qword_27F210300 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229D58);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = &type metadata for UserContentRestrictionProvider;
  v32 = sub_24ECD01D0();
  v21 = swift_allocObject();
  v30[0] = v21;
  v21[5] = v0;
  v21[6] = &protocol witness table for Restrictions;
  v21[2] = v1;
  v22 = qword_27F210308;

  if (v22 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229D70);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = &type metadata for ContentRestrictionReasonsProvider;
  v32 = sub_24ECD025C();
  v23 = swift_allocObject();
  v30[0] = v23;
  v23[5] = v0;
  v23[6] = &protocol witness table for Restrictions;
  v23[2] = v1;
  v24 = qword_27F210310;

  if (v24 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F229D88);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for MetricsActivityFieldsProvider(0);
  v32 = sub_24ECD02B0(&qword_27F22D6D0, type metadata accessor for MetricsActivityFieldsProvider);
  v25 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v25, v5, v6);
  if (qword_27F210328 != -1)
  {
    swift_once();
  }

  v26 = sub_24F92A278();
  __swift_project_value_buffer(v26, qword_27F229DD0);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = type metadata accessor for CanaryFieldsProvider();
  v32 = sub_24ECD02B0(&qword_27F22D6D8, type metadata accessor for CanaryFieldsProvider);
  v27 = __swift_allocate_boxed_opaque_existential_1(v30);
  v7(v27, v5, v6);
  if (qword_27F210320 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v26, qword_27F229DB8);
  sub_24F929F08();

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_24ECD01D0()
{
  result = qword_27F22D6C0;
  if (!qword_27F22D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D6C0);
  }

  return result;
}

uint64_t sub_24ECD0224()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24ECD025C()
{
  result = qword_27F22D6C8;
  if (!qword_27F22D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D6C8);
  }

  return result;
}

uint64_t sub_24ECD02B0(unint64_t *a1, void (*a2)(uint64_t))
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