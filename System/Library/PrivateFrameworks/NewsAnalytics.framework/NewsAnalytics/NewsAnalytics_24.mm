uint64_t URLReferralData.widgetEngagementData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 208), 0x1C8uLL);
  memcpy(a1, (v1 + 208), 0x1C8uLL);
  return sub_217AE38AC(__dst, v4, &qword_2811C1A08);
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics16NotificationDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217CEFA38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 664))
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

uint64_t sub_217CEFA80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 664) = 1;
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

    *(result + 664) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Tracker.feedbackSubmit<A>(_:)()
{
  sub_217D888CC();
  sub_217D8893C();

  return MEMORY[0x28213D6D0](0x6B63616264656566, 0xEF73746E6576655FLL);
}

uint64_t AccessTracker.feedbackSubmit<A>(_:)()
{
  sub_217D881CC();
  memset(v1, 0, sizeof(v1));
  sub_217D8822C();
  sub_217A576FC(v1);
  return sub_217D881DC();
}

uint64_t sub_217CEFCD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  sub_217CEFD98(v0 + OBJC_IVAR____TtC13NewsAnalytics37RollingTimestampConfigurationProvider_lastConfig);
  v2 = OBJC_IVAR____TtC13NewsAnalytics37RollingTimestampConfigurationProvider_lastConfigRollDate;
  v3 = sub_217D87C9C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_217CEFD98(uint64_t a1)
{
  sub_217A4A0E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PurchaseSessionData.purchaseSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PurchaseSessionData.purchaseSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CEFEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DD2540 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CEFF3C(uint64_t a1)
{
  v2 = sub_217CF0100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CEFF78(uint64_t a1)
{
  v2 = sub_217CF0100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseSessionData.encode(to:)(void *a1)
{
  sub_217CF02D8(0, &qword_2811BC670, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0100();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CF0100()
{
  result = qword_2811C27F8[0];
  if (!qword_2811C27F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C27F8);
  }

  return result;
}

uint64_t PurchaseSessionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CF02D8(0, &qword_27CBA43B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0100();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF02D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF0100();
    v7 = a3(a1, &type metadata for PurchaseSessionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF035C(void *a1)
{
  sub_217CF02D8(0, &qword_2811BC670, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0100();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CF04CC()
{
  result = qword_27CBA43C0;
  if (!qword_27CBA43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43C0);
  }

  return result;
}

unint64_t sub_217CF0524()
{
  result = qword_2811C27E8;
  if (!qword_2811C27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27E8);
  }

  return result;
}

unint64_t sub_217CF057C()
{
  result = qword_2811C27F0;
  if (!qword_2811C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27F0);
  }

  return result;
}

NewsAnalytics::ArticleAccessType_optional __swiftcall ArticleAccessType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticleAccessType.rawValue.getter()
{
  v1 = 1701147238;
  if (*v0 != 1)
  {
    v1 = 1684627824;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CF0678(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1701147238;
  if (v2 != 1)
  {
    v3 = 1684627824;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1701147238;
  if (*a2 != 1)
  {
    v6 = 1684627824;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217CF0760()
{
  result = qword_27CBA43C8;
  if (!qword_27CBA43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43C8);
  }

  return result;
}

uint64_t sub_217CF07B4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF0848()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CF08C8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CF0964(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1701147238;
  if (v2 != 1)
  {
    v4 = 1684627824;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217CF0A74()
{
  result = qword_2811C4978;
  if (!qword_2811C4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4978);
  }

  return result;
}

uint64_t RecipeViewData.viewSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RecipeViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CF0B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CF0C14(uint64_t a1)
{
  v2 = sub_217CF0DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF0C50(uint64_t a1)
{
  v2 = sub_217CF0DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeViewData.encode(to:)(void *a1)
{
  sub_217CF0FB0(0, &qword_27CBA43D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0DD8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CF0DD8()
{
  result = qword_27CBA43D8;
  if (!qword_27CBA43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43D8);
  }

  return result;
}

uint64_t RecipeViewData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CF0FB0(0, &qword_27CBA43E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0DD8();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF0FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF0DD8();
    v7 = a3(a1, &type metadata for RecipeViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF1034(void *a1)
{
  sub_217CF0FB0(0, &qword_27CBA43D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0DD8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CF11A4()
{
  result = qword_27CBA43E8;
  if (!qword_27CBA43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43E8);
  }

  return result;
}

unint64_t sub_217CF11FC()
{
  result = qword_27CBA43F0;
  if (!qword_27CBA43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43F0);
  }

  return result;
}

unint64_t sub_217CF1254()
{
  result = qword_27CBA43F8;
  if (!qword_27CBA43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43F8);
  }

  return result;
}

uint64_t sub_217CF1370()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4430);
  __swift_project_value_buffer(v0, qword_27CBA4430);
  return sub_217D8866C();
}

uint64_t IngredientsShareViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IngredientsShareViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 24);
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IngredientsShareViewEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 24);
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.ingredientsShareActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 28);
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IngredientsShareViewEvent.ingredientsShareActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 28);
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.resultTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 32);
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CF19C4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t IngredientsShareViewEvent.resultTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 32);
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IngredientsShareViewEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t sub_217CF1DB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IngredientsShareViewEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IngredientsShareViewEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t IngredientsShareViewEvent.Model.ingredientsShareActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IngredientsShareViewEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t IngredientsShareViewEvent.Model.resultTypeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IngredientsShareViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t IngredientsShareViewEvent.Model.init(eventData:timedData:recipeData:ingredientsShareActionData:resultTypeData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v12 = a3[3];
  v13 = a3[4];
  v14 = *a4;
  v21 = *a5;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  v17 = v16[5];
  v18 = sub_217D889CC();
  result = (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  v20 = a6 + v16[6];
  *v20 = v9;
  *(v20 + 8) = v10;
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  *(v20 + 32) = v13;
  *(a6 + v16[7]) = v14;
  *(a6 + v16[8]) = v21;
  return result;
}

uint64_t sub_217CF203C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144657069636572;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0x7954746C75736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217CF20EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CF3248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CF2114(uint64_t a1)
{
  v2 = sub_217CF24C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF2150(uint64_t a1)
{
  v2 = sub_217CF24C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IngredientsShareViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CF2AA8(0, &qword_27CBA4450, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF24C0();
  sub_217D89E7C();
  LOBYTE(v21) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for IngredientsShareViewEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v21) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v16 = *(v14 + 16);
    v17 = v14[3];
    v18 = v14[4];
    v21 = *v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    HIBYTE(v20) = 2;
    sub_217B1F08C();

    sub_217D89CAC();

    LOBYTE(v21) = *(v3 + v12[7]);
    HIBYTE(v20) = 3;
    sub_217BE5070();
    sub_217D89CAC();
    LOBYTE(v21) = *(v3 + v12[8]);
    HIBYTE(v20) = 4;
    sub_217B247D8();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CF24C0()
{
  result = qword_27CBA4458;
  if (!qword_27CBA4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4458);
  }

  return result;
}

uint64_t IngredientsShareViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_217D889CC();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CF2AA8(0, &qword_27CBA4460, MEMORY[0x277D844C8]);
  v38 = v9;
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF24C0();
  v37 = v12;
  v18 = v39;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v33;
  v21 = v34;
  LOBYTE(v40) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v22 = *(v20 + 32);
  v23 = v16;
  v39 = v6;
  v22(v16, v36);
  LOBYTE(v40) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v32 + 32))(&v16[v13[5]], v19, v21);
  v45 = 2;
  sub_217B1F038();
  v36 = 0;
  sub_217D89BCC();
  v24 = v41;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v28 = &v16[v13[6]];
  *v28 = v40;
  *(v28 + 1) = v24;
  v28[16] = v25;
  *(v28 + 3) = v26;
  *(v28 + 4) = v27;
  v45 = 3;
  sub_217BE5018();
  sub_217D89BCC();
  v29 = v35;
  *(v23 + v13[7]) = v40;
  v45 = 4;
  sub_217B24784();
  sub_217D89BCC();
  (*(v29 + 8))(v37, v38);
  *(v23 + v13[8]) = v40;
  sub_217CF2B0C(v23, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CF2B70(v23);
}

void sub_217CF2AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF24C0();
    v7 = a3(a1, &type metadata for IngredientsShareViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF2B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CF2B70(uint64_t a1)
{
  v2 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CF2CA4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217CF2EF4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217CF19C4(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
      if (v2 <= 0x3F)
      {
        sub_217CF19C4(319, &qword_27CBA4448, sub_217BE5018, sub_217BE5070);
        if (v3 <= 0x3F)
        {
          sub_217CF19C4(319, &qword_2811C8818, sub_217B24784, sub_217B247D8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217CF3090()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217CF3144()
{
  result = qword_27CBA4488;
  if (!qword_27CBA4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4488);
  }

  return result;
}

unint64_t sub_217CF319C()
{
  result = qword_27CBA4490;
  if (!qword_27CBA4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4490);
  }

  return result;
}

unint64_t sub_217CF31F4()
{
  result = qword_27CBA4498;
  if (!qword_27CBA4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4498);
  }

  return result;
}

uint64_t sub_217CF3248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD2560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEE00617461446570)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t PurchaseData.purchaseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PurchaseData.purchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CF352C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CF360C(uint64_t a1)
{
  v2 = sub_217CF3824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF3648(uint64_t a1)
{
  v2 = sub_217CF3824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseData.encode(to:)(void *a1)
{
  sub_217CF3AD0(0, &qword_2811BC800, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = *(v1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_217CF3824();
  sub_217D89E7C();
  v21 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v20 = v18;
    v19 = 1;
    sub_217CF3878();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_217CF3824()
{
  result = qword_2811C7960;
  if (!qword_2811C7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7960);
  }

  return result;
}

unint64_t sub_217CF3878()
{
  result = qword_2811C7938;
  if (!qword_2811C7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7938);
  }

  return result;
}

uint64_t PurchaseData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CF3AD0(0, &qword_2811BCB10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF3824();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  sub_217CF3B34();
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  v16 = v20;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF3AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF3824();
    v7 = a3(a1, &type metadata for PurchaseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CF3B34()
{
  result = qword_2811C7928;
  if (!qword_2811C7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7928);
  }

  return result;
}

unint64_t sub_217CF3BE4()
{
  result = qword_27CBA44A0;
  if (!qword_27CBA44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44A0);
  }

  return result;
}

unint64_t sub_217CF3C3C()
{
  result = qword_2811C7950;
  if (!qword_2811C7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7950);
  }

  return result;
}

unint64_t sub_217CF3C94()
{
  result = qword_2811C7958;
  if (!qword_2811C7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7958);
  }

  return result;
}

NewsAnalytics::CrashSignal_optional __swiftcall CrashSignal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CrashSignal.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6C6C696B676973;
    v7 = 0x6D726574676973;
    if (v1 != 8)
    {
      v7 = 0x74697571676973;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x737562676973;
    if (v1 != 5)
    {
      v8 = 0x70617274676973;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6C6C69676973;
    v4 = 0x74726261676973;
    if (v1 != 3)
    {
      v4 = 0x657066676973;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x76676573676973;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_217CF3E7C()
{
  result = qword_27CBA44A8;
  if (!qword_27CBA44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44A8);
  }

  return result;
}

uint64_t sub_217CF3ED0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83934();
  return sub_217D89E3C();
}

uint64_t sub_217CF3F20()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83934();
  return sub_217D89E3C();
}

uint64_t sub_217CF3F70@<X0>(uint64_t *a1@<X8>)
{
  result = CrashSignal.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CF4058()
{
  result = qword_27CBA44B0;
  if (!qword_27CBA44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44B0);
  }

  return result;
}

uint64_t sub_217CF4138()
{
  if (*v0)
  {
    result = 0x6C616E676973;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_217CF4168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E676973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CF4240(uint64_t a1)
{
  v2 = sub_217CF4464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF427C(uint64_t a1)
{
  v2 = sub_217CF4464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashExceptionData.encode(to:)(void *a1)
{
  sub_217CF4744(0, &qword_27CBA44B8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF4464();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217CF44B8();
  sub_217D89C3C();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217CF450C();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217CF4464()
{
  result = qword_27CBA44C0;
  if (!qword_27CBA44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44C0);
  }

  return result;
}

unint64_t sub_217CF44B8()
{
  result = qword_27CBA44C8;
  if (!qword_27CBA44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44C8);
  }

  return result;
}

unint64_t sub_217CF450C()
{
  result = qword_27CBA44D0;
  if (!qword_27CBA44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44D0);
  }

  return result;
}

uint64_t CrashExceptionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CF4744(0, &qword_27CBA44D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF4464();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217CF47A8();
    sub_217D89B5C();
    v12 = v19;
    v16 = 1;
    sub_217CF47FC();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF4744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF4464();
    v7 = a3(a1, &type metadata for CrashExceptionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CF47A8()
{
  result = qword_27CBA44E0;
  if (!qword_27CBA44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44E0);
  }

  return result;
}

unint64_t sub_217CF47FC()
{
  result = qword_27CBA44E8;
  if (!qword_27CBA44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44E8);
  }

  return result;
}

unint64_t sub_217CF4854()
{
  result = qword_27CBA44F0;
  if (!qword_27CBA44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44F0);
  }

  return result;
}

unint64_t sub_217CF48AC()
{
  result = qword_27CBA44F8;
  if (!qword_27CBA44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashExceptionData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 65290 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65290 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65290;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65290;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65290;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 11;
  if (v6 < 0xA)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashExceptionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65290 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65290 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 16) + 1;
    *result = a2 - 246;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CF4AA8()
{
  result = qword_27CBA4500;
  if (!qword_27CBA4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4500);
  }

  return result;
}

unint64_t sub_217CF4B00()
{
  result = qword_27CBA4508;
  if (!qword_27CBA4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4508);
  }

  return result;
}

unint64_t sub_217CF4B58()
{
  result = qword_27CBA4510;
  if (!qword_27CBA4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4510);
  }

  return result;
}

NewsAnalytics::CrashExceptionType_optional __swiftcall CrashExceptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CrashExceptionType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6341646142637865;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6874697241637865;
      break;
    case 4:
      result = 0x616C756D45637865;
      break;
    case 5:
      result = 0x7774666F53637865;
      break;
    case 6:
      result = 0x6B61657242637865;
      break;
    case 7:
      result = 0x6163737953637865;
      break;
    case 8:
      result = 0x536863614D637865;
      break;
    case 9:
      result = 0x6C41637052637865;
      break;
    case 0xA:
      result = 0x6873617243637865;
      break;
    case 0xB:
      result = 0x756F736552637865;
      break;
    case 0xC:
      result = 0x6472617547637865;
      break;
    case 0xD:
      result = 0x7370726F43637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CF4DDC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CrashExceptionType.rawValue.getter();
  v4 = v3;
  if (v2 == CrashExceptionType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217CF4E7C()
{
  result = qword_27CBA4518;
  if (!qword_27CBA4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4518);
  }

  return result;
}

uint64_t sub_217CF4ED0()
{
  v1 = *v0;
  sub_217D89E1C();
  CrashExceptionType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF4F38()
{
  v2 = *v0;
  CrashExceptionType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CF4F9C()
{
  v1 = *v0;
  sub_217D89E1C();
  CrashExceptionType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217CF500C@<X0>(unint64_t *a1@<X8>)
{
  result = CrashExceptionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CF50F4()
{
  result = qword_27CBA4520;
  if (!qword_27CBA4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4520);
  }

  return result;
}

uint64_t sub_217CF51B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CF5240(uint64_t a1)
{
  v2 = sub_217CF5414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF527C(uint64_t a1)
{
  v2 = sub_217CF5414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashTerminationReasonData.encode(to:)(void *a1)
{
  sub_217CF5654(0, &qword_27CBA4528, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5414();
  sub_217D89E7C();
  v13 = v9;
  sub_217CF5468();
  sub_217D89C3C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CF5414()
{
  result = qword_27CBA4530;
  if (!qword_27CBA4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4530);
  }

  return result;
}

unint64_t sub_217CF5468()
{
  result = qword_27CBA4538;
  if (!qword_27CBA4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4538);
  }

  return result;
}

uint64_t CrashTerminationReasonData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CF5654(0, &qword_27CBA4540, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5414();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CF56B8();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF5654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF5414();
    v7 = a3(a1, &type metadata for CrashTerminationReasonData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CF56B8()
{
  result = qword_27CBA4548;
  if (!qword_27CBA4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4548);
  }

  return result;
}

unint64_t sub_217CF5710()
{
  result = qword_27CBA4550;
  if (!qword_27CBA4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4550);
  }

  return result;
}

unint64_t sub_217CF5768()
{
  result = qword_27CBA4558;
  if (!qword_27CBA4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashTerminationReasonData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x27)
  {
    v7 = 39;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 40;
  if (v6 < 0x27)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashTerminationReasonData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CF5960()
{
  result = qword_27CBA4560;
  if (!qword_27CBA4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4560);
  }

  return result;
}

unint64_t sub_217CF59B8()
{
  result = qword_27CBA4568;
  if (!qword_27CBA4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4568);
  }

  return result;
}

unint64_t sub_217CF5A10()
{
  result = qword_27CBA4570;
  if (!qword_27CBA4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4570);
  }

  return result;
}

unint64_t sub_217CF5AF0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6F69747065637865;
  }

  *v0;
  return result;
}

uint64_t sub_217CF5B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69747065637865 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2580 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CF5C20(uint64_t a1)
{
  v2 = sub_217CF5E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF5C5C(uint64_t a1)
{
  v2 = sub_217CF5E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashData.encode(to:)(void *a1)
{
  sub_217CF6080(0, &qword_27CBA4578, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 2);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5E48();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217CF48AC();
  sub_217D89C3C();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217CF5768();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217CF5E48()
{
  result = qword_27CBA4580;
  if (!qword_27CBA4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4580);
  }

  return result;
}

uint64_t CrashData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CF6080(0, &qword_27CBA4588, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5E48();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217CF4854();
    sub_217D89B5C();
    v12 = v19;
    v16 = 1;
    sub_217CF5710();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    *(a2 + 2) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF6080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF5E48();
    v7 = a3(a1, &type metadata for CrashData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CrashData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5)
  {
    if ((a2 + 33554187) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776971;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776971;
      }
    }
  }

  v4 = a1[1];
  if (v4 <= 0xB)
  {
    v5 = 11;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v5 - 12;
  if (v4 < 0xA)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554187) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xF4)
  {
    v3 = 0;
  }

  if (a2 > 0xF4)
  {
    *result = a2 - 245;
    *(result + 2) = (a2 - 245) >> 16;
    if (v3)
    {
      v4 = ((a2 - 245) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 11;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_217CF624C()
{
  result = qword_27CBA4590;
  if (!qword_27CBA4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4590);
  }

  return result;
}

unint64_t sub_217CF62A4()
{
  result = qword_27CBA4598;
  if (!qword_27CBA4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4598);
  }

  return result;
}

unint64_t sub_217CF62FC()
{
  result = qword_27CBA45A0;
  if (!qword_27CBA45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45A0);
  }

  return result;
}

NewsAnalytics::CrashTerminationReasonNamespace_optional __swiftcall CrashTerminationReasonNamespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 21;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
LABEL_35:
      v6 = v5;
      break;
    case 21:
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    default:
      v6 = 39;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t CrashTerminationReasonNamespace.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x7073656D614E6F6ELL;
      break;
    case 2:
      result = 0x6D617374656ALL;
      break;
    case 3:
      result = 0x6C616E676973;
      break;
    case 4:
      result = 0x6E67697365646F63;
      break;
    case 5:
      result = 0x63617274676E6168;
      break;
    case 6:
      result = 1953719668;
      break;
    case 7:
      result = 1684830564;
      break;
    case 8:
      result = 0x63707862696CLL;
      break;
    case 9:
      result = 1667916399;
      break;
    case 0xA:
      result = 1667594341;
      break;
    case 0xB:
      result = 0x616F62746E6F7266;
      break;
    case 0xC:
      result = 0x6C6573756F726163;
      break;
    case 0xD:
      result = 6513524;
      break;
    case 0xE:
      result = 0x726374726F706572;
      break;
    case 0xF:
      result = 0x6D696E6165726F63;
      break;
    case 0x10:
      result = 0x7461676572676761;
      break;
    case 0x11:
      result = 0x62676E696E6E7572;
      break;
    case 0x12:
      result = 0x6B6C6177796B73;
      break;
    case 0x13:
      result = 0x73676E6974746573;
      break;
    case 0x14:
      result = 0x657473797362696CLL;
      break;
    case 0x15:
      result = 0x697461646E756F66;
      break;
    case 0x16:
      result = 0x676F646863746177;
      break;
    case 0x17:
      result = 0x6C6174656DLL;
      break;
    case 0x18:
      result = 0x74696B6863746177;
      break;
    case 0x19:
      result = 0x6472617567;
      break;
    case 0x1A:
      result = 0x636974796C616E61;
      break;
    case 0x1B:
      result = 0x786F62646E6173;
      break;
    case 0x1C:
      result = 0x7974697275636573;
      break;
    case 0x1D:
      result = 0xD000000000000010;
      break;
    case 0x1E:
      result = 0x7065637845636170;
      break;
    case 0x1F:
      result = 0x746F6F7465756C62;
      break;
    case 0x20:
      result = 0x6361705374726F70;
      break;
    case 0x21:
      result = 0x74696B626577;
      break;
    case 0x22:
      result = 0xD000000000000011;
      break;
    case 0x23:
      result = 0x61747465736F72;
      break;
    case 0x24:
      result = 0x6F69647561;
      break;
    case 0x25:
      result = 0x6B7974696C616572;
      break;
    case 0x26:
      result = 0x6C69614665746DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CF6904(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CrashTerminationReasonNamespace.rawValue.getter();
  v4 = v3;
  if (v2 == CrashTerminationReasonNamespace.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217CF69A4()
{
  result = qword_27CBA45A8;
  if (!qword_27CBA45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45A8);
  }

  return result;
}

uint64_t sub_217CF69F8()
{
  v1 = *v0;
  sub_217D89E1C();
  CrashTerminationReasonNamespace.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF6A60()
{
  v2 = *v0;
  CrashTerminationReasonNamespace.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CF6AC4()
{
  v1 = *v0;
  sub_217D89E1C();
  CrashTerminationReasonNamespace.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217CF6B34@<X0>(unint64_t *a1@<X8>)
{
  result = CrashTerminationReasonNamespace.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CrashTerminationReasonNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashTerminationReasonNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CF6D5C()
{
  result = qword_27CBA45B0;
  if (!qword_27CBA45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45B0);
  }

  return result;
}

NewsAnalytics::InterfaceOrientation_optional __swiftcall InterfaceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InterfaceOrientation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x70616373646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x7469617274726F70;
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

unint64_t sub_217CF6ED4()
{
  result = qword_27CBA45B8;
  if (!qword_27CBA45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45B8);
  }

  return result;
}

uint64_t sub_217CF6F28()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF7028()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CF7114()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CF721C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000217DCB8E0;
  v6 = 0xD000000000000012;
  v7 = 0xED00007466654C65;
  if (v2 != 3)
  {
    v7 = 0xEE00746867695265;
  }

  if (v2 != 2)
  {
    v6 = 0x70616373646E616CLL;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7469617274726F70;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_217CF7398()
{
  result = qword_2811C1F18;
  if (!qword_2811C1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F18);
  }

  return result;
}

uint64_t ArticleViewData.viewSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArticleViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CF7484(uint64_t a1)
{
  v2 = sub_217CF7648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF74C0(uint64_t a1)
{
  v2 = sub_217CF7648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewData.encode(to:)(void *a1)
{
  sub_217CF7820(0, &qword_2811BC768, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF7648();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CF7648()
{
  result = qword_2811C6938;
  if (!qword_2811C6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6938);
  }

  return result;
}

uint64_t ArticleViewData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CF7820(0, &qword_2811BCAB8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF7648();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF7820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF7648();
    v7 = a3(a1, &type metadata for ArticleViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF78A4(void *a1)
{
  sub_217CF7820(0, &qword_2811BC768, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF7648();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CF7A14()
{
  result = qword_27CBA45C0;
  if (!qword_27CBA45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45C0);
  }

  return result;
}

unint64_t sub_217CF7A6C()
{
  result = qword_2811C6928;
  if (!qword_2811C6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6928);
  }

  return result;
}

unint64_t sub_217CF7AC4()
{
  result = qword_2811C6930;
  if (!qword_2811C6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6930);
  }

  return result;
}

uint64_t sub_217CF7BE0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA45C8);
  __swift_project_value_buffer(v0, qword_27CBA45C8);
  return sub_217D8866C();
}

uint64_t AppSessionResignEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionResignEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResignEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionResignEvent(0);
  v5 = *(v4 + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AppSessionResignEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionResignEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t AppSessionResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionResignEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 AppSessionResignEvent.Model.init(eventData:userBundleSubscriptionContextData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AppSessionResignEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_217CF837C(uint64_t a1)
{
  v2 = sub_217CF86A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF83B8(uint64_t a1)
{
  v2 = sub_217CF86A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CF8AF4(0, &qword_27CBA45E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF86A0();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AppSessionResignEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v28 = v13[1];
    v29 = v14;
    v27 = v15;
    v30 = *(v13 + 48);
    v23 = v16;
    v24 = v28;
    v25 = v13[2];
    v26 = *(v13 + 48);
    v22 = 1;
    sub_217ACC004(&v27, v20);
    sub_217A55B98();
    sub_217D89CAC();
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_217ACC69C(v20);
    v19 = *(v3 + *(v12 + 24));
    v18[13] = 2;
    sub_217A4CF88();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CF86A0()
{
  result = qword_27CBA45E8;
  if (!qword_27CBA45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45E8);
  }

  return result;
}

uint64_t AppSessionResignEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CF8AF4(0, &qword_27CBA45F0, MEMORY[0x277D844C8]);
  v31 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppSessionResignEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF86A0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v16 = v29;
  v25 = v11;
  v26 = v14;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v30;
  v18 = v31;
  sub_217D89BCC();
  (*(v16 + 32))(v26, v19, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v26[*(v25 + 20)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v20[48] = v35;
  v36 = 2;
  sub_217A4CF30();
  sub_217D89BCC();
  (*(v17 + 8))(v10, v18);
  v22 = v26;
  *&v26[*(v25 + 24)] = v37;
  sub_217CF8B58(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CF8BBC(v22);
}

void sub_217CF8AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF86A0();
    v7 = a3(a1, &type metadata for AppSessionResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF8B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CF8BBC(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CF8D54()
{
  result = qword_27CBA4608;
  if (!qword_27CBA4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4608);
  }

  return result;
}

unint64_t sub_217CF8DAC()
{
  result = qword_27CBA4610;
  if (!qword_27CBA4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4610);
  }

  return result;
}

unint64_t sub_217CF8E04()
{
  result = qword_27CBA4618;
  if (!qword_27CBA4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4618);
  }

  return result;
}

uint64_t ExternalAnalyticsURLProvider.__allocating_init(queryItemsGenerators:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ExternalAnalyticsURLProvider.generateURL<A>(from:configuration:sessionID:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a4;
  v8 = v7;
  v40 = a6;
  v39 = a5;
  v36 = a2;
  v37 = a7;
  v11 = sub_217D87CCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CFA2FC(0, &qword_2811C8CA0, MEMORY[0x277CC9260]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v23 = sub_217CF91F4(v8, a1, a3, v38, v39, v40);
  if (v23)
  {
    v24 = v23;
    sub_217D87CBC();
    v25 = sub_217D87CAC();
    v27 = v26;
    (*(v12 + 8))(v15, v11);
    sub_217CF92FC(v36, v24, v25, v27, v22);

    sub_217A61C54(v22, v20);
    v28 = sub_217D87BAC();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v20, 1, v28) == 1)
    {
      v30 = MEMORY[0x277CC9260];
      sub_217A61D58(v20, &qword_2811C8CA0, MEMORY[0x277CC9260]);
      sub_217CF9FBC();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();
      return sub_217A61D58(v22, &qword_2811C8CA0, v30);
    }

    else
    {
      sub_217A61D58(v22, &qword_2811C8CA0, MEMORY[0x277CC9260]);
      v34 = v37;
      (*(v29 + 32))(v37, v20, v28);
      return (*(v29 + 56))(v34, 0, 1, v28);
    }
  }

  else
  {
    v33 = sub_217D87BAC();
    return (*(*(v33 - 8) + 56))(v37, 1, 1, v33);
  }
}

uint64_t sub_217CF91F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!*(v6 + 16))
  {
    return 0;
  }

  sub_217A4998C(v6 + 32, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = (*(v10 + 8))(a2, a3, a4, a5, a6, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

id sub_217CF92FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_217CFA2FC(0, &qword_2811C8CA0, MEMORY[0x277CC9260]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v80 - v12;
  v112 = sub_217D87BAC();
  v13 = *(v112 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v112);
  v98 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_217D87A4C();
  v16 = *(v117 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v117);
  v116 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v115 = &v80 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v97 = &v80 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v80 - v25;
  MEMORY[0x28223BE20](v24);
  v99 = &v80 - v26;
  sub_217CFA2FC(0, qword_2811C8CB8, MEMORY[0x277CC8958]);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v106 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - v31;
  v33 = sub_217D87AAC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v95 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v101 = &v80 - v38;
  v114 = a1;
  v39 = [a1 analyticsBaseUrl];
  if (!v39)
  {
    return (*(v13 + 56))(a5, 1, 1, v112);
  }

  v94 = a4;
  v93 = a2;
  v40 = v39;
  sub_217D8954C();
  v42 = v41;

  sub_217D87A9C();
  v43 = *(v34 + 48);
  v100 = v34 + 48;
  if ((v43)(v32, 1, v33) == 1)
  {

    sub_217A61D58(v32, qword_2811C8CB8, MEMORY[0x277CC8958]);
    return (*(v13 + 56))(a5, 1, 1, v112);
  }

  (*(v34 + 32))(v101, v32, v33);
  v45 = [v114 queryParameterConfigs];
  if (!v45 || (v46 = v45, v118 = 0, sub_217CFA350(), sub_217D896DC(), v46, (v47 = v118) == 0))
  {

    sub_217CFA010();
    v79 = v101;
    sub_217D87A6C();
LABEL_52:
    sub_217D87A8C();
    return (*(v34 + 8))(v79, v33);
  }

  v48 = v118 & 0xFFFFFFFFFFFFFF8;
  v111 = v118;
  if (v118 >> 62)
  {
LABEL_55:
    v49 = sub_217D89AAC();
    v47 = v111;
  }

  else
  {
    v49 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = a5;
  v50 = MEMORY[0x277D84F90];
  if (!v49)
  {
LABEL_51:

    v79 = v101;
    sub_217D87A6C();
    goto LABEL_52;
  }

  v91 = v48;
  v92 = v43;
  v88 = a3;
  a3 = 0;
  v110 = v47 & 0xC000000000000001;
  v105 = v16 + 32;
  v89 = (v13 + 56);
  v86 = (v34 + 16);
  v85 = (v34 + 8);
  v84 = (v13 + 48);
  v82 = (v13 + 32);
  v103 = v16 + 8;
  v104 = (v16 + 16);
  v81 = (v13 + 8);
  v113 = v33;
  v109 = v34;
  v107 = v49;
  v87 = v16;
  v108 = v42;
  while (1)
  {
    if (v110)
    {
      v52 = MEMORY[0x21CEAD080](a3, v47);
    }

    else
    {
      if (a3 >= *(v91 + 16))
      {
        goto LABEL_54;
      }

      v52 = *(v47 + 8 * a3 + 32);
    }

    a5 = v52;
    v34 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v53 = [v114 eventQueryParameterName];
    if (!v53)
    {
      break;
    }

    v54 = v53;
    v55 = sub_217D8954C();
    v48 = v56;

    v57 = [a5 name];
    if (!v57)
    {
      goto LABEL_36;
    }

    v58 = v57;
    v59 = sub_217D8954C();
    v61 = v60;

    if (v59 == v55 && v61 == v48)
    {
    }

    else
    {
      v62 = sub_217D89D4C();

      if ((v62 & 1) == 0)
      {
LABEL_36:

        break;
      }
    }

    v90 = v55;
    result = [a5 value];
    if (!result)
    {
      goto LABEL_57;
    }

    v63 = result;
    sub_217D8954C();

    v43 = v106;
    sub_217D87A9C();

    v33 = v113;
    v64 = v92;
    if (!v92(v43, 1, v113))
    {
      v118 = MEMORY[0x277D84F90];

      sub_217B0E7A0(v65);
      sub_217D87A1C();
      v66 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_217B5ABE8(0, v66[2] + 1, 1, v66);
      }

      v68 = v66[2];
      v67 = v66[3];
      if (v68 >= v67 >> 1)
      {
        v66 = sub_217B5ABE8(v67 > 1, v68 + 1, 1, v66);
      }

      v66[2] = v68 + 1;
      (*(v16 + 32))(v66 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v68, v99, v117);
      v43 = v106;
      sub_217D87A6C();
      v33 = v113;
      v64 = v92;
    }

    if (v64(v43, 1, v33))
    {

      v13 = v102;
      (*v89)(v102, 1, 1, v112);
    }

    else
    {
      v69 = v95;
      (*v86)(v95, v43, v33);
      v13 = v102;
      sub_217D87A8C();
      (*v85)(v69, v33);
      v70 = v112;
      if ((*v84)(v13, 1, v112) != 1)
      {
        (*v82)(v98, v13, v70);
        sub_217D87B5C();
        v13 = v96;
        sub_217D87A1C();

        (*v104)(v97, v13, v117);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_217B5ABE8(0, v50[2] + 1, 1, v50);
        }

        v16 = v87;
        v77 = v50[2];
        v76 = v50[3];
        v48 = v77 + 1;
        v33 = v113;
        if (v77 >= v76 >> 1)
        {
          v50 = sub_217B5ABE8(v76 > 1, v77 + 1, 1, v50);
        }

        v78 = v117;
        (*(v16 + 8))(v96, v117);
        (*v81)(v98, v112);
        v50[2] = v48;
        (*(v16 + 32))(v50 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v77, v97, v78);
        v43 = v106;
        goto LABEL_13;
      }

      v43 = v106;
      v16 = v87;
    }

    sub_217A61D58(v13, &qword_2811C8CA0, MEMORY[0x277CC9260]);
LABEL_13:
    v42 = v108;
    sub_217A61D58(v43, qword_2811C8CB8, MEMORY[0x277CC8958]);
LABEL_14:
    ++a3;
    v51 = v34 == v107;
    v34 = v109;
    v47 = v111;
    if (v51)
    {
      goto LABEL_51;
    }
  }

  result = [a5 name];
  if (result)
  {
    v71 = result;
    sub_217D8954C();

    v72 = [a5 value];
    if (v72)
    {
      v73 = v72;
      sub_217D8954C();
    }

    v13 = v115;
    sub_217D87A1C();

    (*v104)(v116, v13, v117);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_217B5ABE8(0, v50[2] + 1, 1, v50);
    }

    v33 = v113;
    v43 = v50[2];
    v74 = v50[3];
    v48 = v43 + 1;
    if (v43 >= v74 >> 1)
    {
      v50 = sub_217B5ABE8(v74 > 1, v43 + 1, 1, v50);
    }

    v75 = v117;
    (*(v16 + 8))(v115, v117);
    v50[2] = v48;
    (*(v16 + 32))(v50 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v43, v116, v75);
    v42 = v108;
    goto LABEL_14;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_217CF9FBC()
{
  result = qword_27CBA4620;
  if (!qword_27CBA4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4620);
  }

  return result;
}

void *sub_217CFA010()
{
  v0 = sub_217D87A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];

  sub_217B0E7A0(v5);
  sub_217D87A1C();
  v6 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_217B5ABE8(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_217B5ABE8(v7 > 1, v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  (*(v1 + 32))(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v4, v0);
  return v6;
}

uint64_t ExternalAnalyticsURLProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ExternalAnalyticsURLProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_217CFA2A8()
{
  result = qword_27CBA4628;
  if (!qword_27CBA4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4628);
  }

  return result;
}

void sub_217CFA2FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D898EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217CFA350()
{
  result = qword_2811BCBA8;
  if (!qword_2811BCBA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCBA8);
  }

  return result;
}

uint64_t HeartbeatData.init(userID:timestamp:eventID:osVersion:osBundleVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for HeartbeatData();
  v18 = v17[5];
  v19 = sub_217D87C9C();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &a9[v17[7]];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v17[8]];
  *v23 = a8;
  *(v23 + 1) = a10;
  return result;
}

uint64_t HeartbeatData.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HeartbeatData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HeartbeatData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeartbeatData() + 20);
  v4 = sub_217D87C9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeartbeatData.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartbeatData() + 20);
  v4 = sub_217D87C9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeartbeatData.eventID.getter()
{
  v1 = (v0 + *(type metadata accessor for HeartbeatData() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeartbeatData.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for HeartbeatData() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeartbeatData.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osBundleVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for HeartbeatData() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeartbeatData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_217CFA8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CFAF68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CFA8D4(uint64_t a1)
{
  v2 = sub_217A5B1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFA910(uint64_t a1)
{
  v2 = sub_217A5B1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_217D87C9C();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A5B0B0(0, &qword_27CBA4630, MEMORY[0x277D844C8]);
  v36 = v7;
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - v9;
  v11 = type metadata accessor for HeartbeatData();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5B1AC();
  v35 = v10;
  v16 = v37;
  sub_217D89E5C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v33;
  v42 = 0;
  *v14 = sub_217D89B8C();
  v14[1] = v18;
  v37 = v18;
  v41 = 1;
  sub_217A5B3A8(&qword_27CBA4638, MEMORY[0x277CC9578]);
  sub_217D89BCC();
  (*(v17 + 32))(v14 + v11[5], v6, v3);
  v40 = 2;
  v31[1] = 0;
  v19 = sub_217D89B8C();
  v20 = (v14 + v11[6]);
  *v20 = v19;
  v20[1] = v21;
  v39 = 3;
  v22 = sub_217D89B8C();
  v23 = (v14 + v11[7]);
  *v23 = v22;
  v23[1] = v24;
  v38 = 4;
  v25 = sub_217D89B8C();
  v31[0] = v26;
  v27 = v25;
  (*(v34 + 8))(v35, v36);
  v28 = (v14 + v11[8]);
  v29 = v31[0];
  *v28 = v27;
  v28[1] = v29;
  sub_217B8B618(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CFADD4(v14);
}

uint64_t sub_217CFADD4(uint64_t a1)
{
  v2 = type metadata accessor for HeartbeatData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CFAF14()
{
  result = qword_27CBA4640;
  if (!qword_27CBA4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4640);
  }

  return result;
}

uint64_t sub_217CFAF68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

NewsAnalytics::SubscribeButtonTargetType_optional __swiftcall SubscribeButtonTargetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscribeButtonTargetType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x50676E69646E616CLL;
  v4 = 1802398060;
  if (v1 != 3)
  {
    v4 = 0x65676150706D61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6573616863727570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217CFB23C()
{
  result = qword_27CBA4648;
  if (!qword_27CBA4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4648);
  }

  return result;
}

uint64_t sub_217CFB290()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CFB380()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CFB45C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CFB554(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000656761;
  v6 = 0x50676E69646E616CLL;
  v7 = 0xE400000000000000;
  v8 = 1802398060;
  if (v2 != 3)
  {
    v8 = 0x65676150706D61;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xED00007465656853;
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

unint64_t sub_217CFB6C0()
{
  result = qword_2811BF150;
  if (!qword_2811BF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF150);
  }

  return result;
}

NewsAnalytics::LiveActivityOrigination_optional __swiftcall LiveActivityOrigination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LiveActivityOrigination.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465626D45626577;
  v4 = 0x50676E69646E616CLL;
  if (v1 != 4)
  {
    v4 = 0x6B6E696C70656564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6163696669746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x6C69546F63736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217CFB850()
{
  result = qword_27CBA4650;
  if (!qword_27CBA4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4650);
  }

  return result;
}

uint64_t sub_217CFB8AC()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217CFB9C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6465626D45626577;
  v7 = 0xEB00000000656761;
  v8 = 0x50676E69646E616CLL;
  if (v2 != 4)
  {
    v8 = 0x6B6E696C70656564;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000006E6F6974;
  v10 = 0x6163696669746F6ELL;
  if (v2 != 1)
  {
    v10 = 0x6C69546F63736964;
    v9 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217CFBB58()
{
  result = qword_27CBA4658;
  if (!qword_27CBA4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4658);
  }

  return result;
}

uint64_t backgroundTask(withName:work:)(uint64_t a1, uint64_t a2, void (*a3)(void (*)(), uint64_t))
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = sub_217D8951C();
  v6 = [v4 beginBackgroundTaskWithName:v5 expirationHandler:0];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  a3(sub_217CFBC90, v7);
}

uint64_t backgroundTask(withName:timeout:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_217D88FCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v24[-v12];
  v25 = a3;
  v26 = a4;
  sub_217CFBFF0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_217D88DDC();
  v17 = [objc_opt_self() sharedApplication];
  v18 = sub_217D8951C();
  v19 = [v17 beginBackgroundTaskWithName:v18 expirationHandler:0];

  sub_217D88FBC();
  sub_217D88FDC();
  v20 = *(v7 + 8);
  v20(v11, v6);
  v21 = sub_217D88D6C();
  sub_217D88DCC();

  v20(v13, v6);
  sub_217A569F4();
  v22 = sub_217D8982C();
  *(swift_allocObject() + 16) = v19;
  sub_217D88DBC();
}

uint64_t sub_217CFBF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_217A591DC;
  *(v9 + 24) = v8;

  a5(sub_217A590F0, v9);
}

void sub_217CFBFF0()
{
  if (!qword_2811BCF18)
  {
    v0 = sub_217D88DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCF18);
    }
  }
}

void sub_217CFC044(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 endBackgroundTask_];
}

void __swiftcall ChannelData.init(channelID:adSupportedChannel:isBundleChannel:language:)(NewsAnalytics::ChannelData *__return_ptr retstr, Swift::String channelID, Swift::Bool adSupportedChannel, Swift::Bool isBundleChannel, Swift::String language)
{
  retstr->channelID = channelID;
  retstr->adSupportedChannel = adSupportedChannel;
  retstr->isBundleChannel = isBundleChannel;
  retstr->language = language;
}

uint64_t ChannelData.channelID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ChannelData.channelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ChannelData.language.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ChannelData.language.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_217CFC244()
{
  v1 = 0x496C656E6E616863;
  v2 = 0x656C646E75427369;
  if (*v0 != 2)
  {
    v2 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_217CFC2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CFC9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CFC2FC(uint64_t a1)
{
  v2 = sub_217CFC550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFC338(uint64_t a1)
{
  v2 = sub_217CFC550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelData.encode(to:)(void *a1)
{
  sub_217CFC81C(0, &qword_2811BC858, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = *(v1 + 16);
  v16 = *(v1 + 17);
  v11 = v1[3];
  v15[0] = v1[4];
  v15[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFC550();
  sub_217D89E7C();
  v22 = 0;
  v13 = v17;
  sub_217D89C6C();
  if (!v13)
  {
    v21 = 1;
    sub_217D89C7C();
    v20 = 2;
    sub_217D89C7C();
    v19 = 3;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CFC550()
{
  result = qword_2811C7D98;
  if (!qword_2811C7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D98);
  }

  return result;
}

uint64_t ChannelData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CFC81C(0, &qword_2811BCB48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFC550();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v28 = 1;
  v25 = sub_217D89B9C() & 1;
  v27 = 2;
  v30 = sub_217D89B9C() & 1;
  v26 = 3;
  v16 = sub_217D89B8C();
  v19 = v18;
  v20 = *(v7 + 8);
  v24 = v16;
  v20(v10, v6);
  v21 = v25;
  v22 = v30;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v21;
  *(a2 + 17) = v22;
  *(a2 + 24) = v24;
  *(a2 + 32) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CFC81C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CFC550();
    v7 = a3(a1, &type metadata for ChannelData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CFC8CC()
{
  result = qword_27CBA4660;
  if (!qword_27CBA4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4660);
  }

  return result;
}

unint64_t sub_217CFC924()
{
  result = qword_2811C7D88;
  if (!qword_2811C7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D88);
  }

  return result;
}

unint64_t sub_217CFC97C()
{
  result = qword_2811C7D90;
  if (!qword_2811C7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D90);
  }

  return result;
}

uint64_t sub_217CFC9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD2600 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEF6C656E6E616843 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t AppLaunchTakeoverTriggerData.articleId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AppLaunchTakeoverTriggerData.articleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_217CFCC24()
{
  if (*v0)
  {
    result = 0x49656C6369747261;
  }

  else
  {
    result = 0x746C75736572;
  }

  *v0;
  return result;
}

uint64_t sub_217CFCC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CFCD40(uint64_t a1)
{
  v2 = sub_217CFCF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFCD7C(uint64_t a1)
{
  v2 = sub_217CFCF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppLaunchTakeoverTriggerData.encode(to:)(void *a1)
{
  sub_217CFD1D8(0, &qword_2811BC560, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFCF48();
  sub_217D89E7C();
  v17 = v10;
  v16 = 0;
  sub_217CFCF9C();
  sub_217D89CAC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217CFCF48()
{
  result = qword_2811BEB80;
  if (!qword_2811BEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB80);
  }

  return result;
}

unint64_t sub_217CFCF9C()
{
  result = qword_2811BE1C0;
  if (!qword_2811BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1C0);
  }

  return result;
}

uint64_t AppLaunchTakeoverTriggerData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CFD1D8(0, &qword_27CBA4668, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFCF48();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_217CFD23C();
  sub_217D89BCC();
  v12 = v20;
  v18 = 1;
  v13 = sub_217D89B2C();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CFD1D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CFCF48();
    v7 = a3(a1, &type metadata for AppLaunchTakeoverTriggerData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CFD23C()
{
  result = qword_27CBA4670;
  if (!qword_27CBA4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4670);
  }

  return result;
}

unint64_t sub_217CFD294()
{
  result = qword_2811BEB60;
  if (!qword_2811BEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB60);
  }

  return result;
}

unint64_t sub_217CFD2EC()
{
  result = qword_2811BEB68;
  if (!qword_2811BEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB68);
  }

  return result;
}

unint64_t sub_217CFD394()
{
  result = qword_27CBA4678;
  if (!qword_27CBA4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4678);
  }

  return result;
}

unint64_t sub_217CFD3EC()
{
  result = qword_2811BEB70;
  if (!qword_2811BEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB70);
  }

  return result;
}

unint64_t sub_217CFD444()
{
  result = qword_2811BEB78;
  if (!qword_2811BEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB78);
  }

  return result;
}

uint64_t sub_217CFD498(uint64_t a1, uint64_t a2, float a3)
{
  v7 = sub_217D8946C();
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217D8945C();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217D8957C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CFDA7C(a1, a2, v3);
  sub_217D8956C();
  v20 = sub_217D8955C();
  v22 = v21;

  v23 = v19;
  v24 = v22;
  (*(v16 + 8))(v23, v15);
  if (v22 >> 60 == 15)
  {
    sub_217A535B4();
    v25 = sub_217D898DC();
    sub_217D897DC();
    sub_217D88E5C();

    return 0;
  }

  sub_217CFDDC8(&qword_2811BCEA8, MEMORY[0x277CC5540]);
  sub_217D8944C();
  sub_217B0A564(v20, v22);
  sub_217CFDBE8(v20, v22);
  sub_217B0AABC(v20, v22);
  sub_217D8943C();
  (*(v47 + 8))(v10, v7);
  v52 = v11;
  v53 = sub_217CFDDC8(&qword_27CBA4680, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  v27 = v48;
  (*(v48 + 16))(boxed_opaque_existential_1, v14, v11);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_217D87B0C();
  v29 = v49;
  v28 = v50;
  sub_217B0A564(v49, v50);
  result = __swift_destroy_boxed_opaque_existential_1(v51);
  v31 = v28 >> 62;
  v32 = v14;
  v33 = v11;
  if ((v28 >> 62) > 1)
  {
    if (v31 != 2)
    {
LABEL_11:
      sub_217A535B4();
      v38 = sub_217D898DC();
      sub_217D897DC();
      sub_217D88E5C();

      sub_217AE010C(v29, v28);
      sub_217B0AABC(v20, v24);
      (*(v27 + 8))(v32, v11);
      return 0;
    }

    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v37 > 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    sub_217AE010C(v29, v28);
    goto LABEL_11;
  }

  if (!v31)
  {
    if (BYTE6(v28) > 1uLL)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v29), v29))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v29) - v29 <= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  if (v31 == 2)
  {
    v41 = *(v29 + 16);
    v40 = *(v29 + 24);
    v36 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (!v36)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    v39 = BYTE6(v28);
    goto LABEL_23;
  }

  if (v31 != 1)
  {
    goto LABEL_22;
  }

  LODWORD(v39) = HIDWORD(v29) - v29;
  if (__OFSUB__(HIDWORD(v29), v29))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v39 = v39;
LABEL_23:
  result = v39 - 2;
  if (__OFSUB__(v39, 2))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_217D87BDC();
  if (v31 == 2)
  {
    v44 = *(v29 + 16);
    v43 = *(v29 + 24);
    v36 = __OFSUB__(v43, v44);
    v42 = v43 - v44;
    if (!v36)
    {
LABEL_32:
      if (!__OFSUB__(v42, 1))
      {
        v45 = result << 8;
        v46 = sub_217D87BDC();
        sub_217AE010C(v29, v28);
        sub_217B0AABC(v20, v24);
        sub_217AE010C(v29, v28);
        (*(v27 + 8))(v32, v33);
        return (a3 * 65536.0) > (v45 | v46);
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_31:
    v42 = BYTE6(v28);
    goto LABEL_32;
  }

  if (v31 != 1)
  {
    goto LABEL_31;
  }

  LODWORD(v42) = HIDWORD(v29) - v29;
  if (!__OFSUB__(HIDWORD(v29), v29))
  {
    v42 = v42;
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_217CFDA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
    v10 = *(*v5 + 24);
    v11 = *(*v5 + 32);

    MEMORY[0x21CEACC70](45, 0xE100000000000000);
    MEMORY[0x21CEACC70](a1, a2);
    return v10;
  }

  else
  {
    v7 = __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
    v6 = *(*v7 + 24);
    v8 = *(*v7 + 32);
  }

  return v6;
}

uint64_t sub_217CFDB1C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

_BYTE *sub_217CFDB54@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_217CFDEF0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_217CFDFA8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_217CFE024(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_217CFDBE8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_217D8946C();
      sub_217CFDDC8(&qword_2811BCEA8, MEMORY[0x277CC5540]);
      result = sub_217D8942C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_217CFDE10(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_217CFDDC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217CFDE10(uint64_t a1, uint64_t a2)
{
  result = sub_217D87ACC();
  if (!result || (result = sub_217D87AEC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_217D87ADC();
      sub_217D8946C();
      sub_217CFDDC8(&qword_2811BCEA8, MEMORY[0x277CC5540]);
      return sub_217D8942C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217CFDEF0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_217CFDFA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_217D87AFC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_217D87ABC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_217D87BCC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_217CFE024(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_217D87AFC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_217D87ABC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

NewsAnalytics::ArticleConcernContentType_optional __swiftcall ArticleConcernContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ArticleConcernContentType.rawValue.getter()
{
  v1 = 0x726F666E4973696DLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_217CFE19C()
{
  result = qword_27CBA4688;
  if (!qword_27CBA4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4688);
  }

  return result;
}

uint64_t sub_217CFE1F0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CFE2C0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CFE37C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CFE454(unint64_t *a1@<X8>)
{
  v2 = 0xEE006E6F6974616DLL;
  v3 = 0x726F666E4973696DLL;
  v4 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000217DCC580;
  }

  v5 = 0x8000000217DCC530;
  if (*v1)
  {
    v4 = 0xD000000000000017;
    v5 = 0x8000000217DCC550;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217CFE5A0()
{
  result = qword_27CBA4690;
  if (!qword_27CBA4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4690);
  }

  return result;
}

uint64_t sub_217CFE6BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA46C8);
  __swift_project_value_buffer(v0, qword_27CBA46C8);
  return sub_217D8866C();
}

uint64_t AudioUpsellMessageCompleted.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioUpsellMessageCompleted.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.upsellVariantData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.upsellVariantData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioUpsellMessageCompleted(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v6, v15);
}

uint64_t AudioUpsellMessageCompleted.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t AudioUpsellMessageCompleted.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t AudioUpsellMessageCompleted.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioUpsellMessageCompleted.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t AudioUpsellMessageCompleted.Model.upsellVariantData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 AudioUpsellMessageCompleted.Model.init(eventData:articleData:channelData:feedData:userBundleSubscriptionContextData:upsellVariantData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a3 + 4);
  v31 = *a4;
  v13 = *(a4 + 2);
  v14 = *a6;
  v15 = a6[1];
  v16 = sub_217D8899C();
  v29 = a3[1];
  v30 = *a3;
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  v18 = a7 + v17[5];
  v19 = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = v19;
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  *(v18 + 127) = *(a2 + 127);
  v21 = *(a2 + 112);
  *(v18 + 96) = *(a2 + 96);
  *(v18 + 112) = v21;
  v22 = *(a2 + 80);
  *(v18 + 64) = *(a2 + 64);
  *(v18 + 80) = v22;
  v23 = a7 + v17[6];
  *v23 = v30;
  *(v23 + 16) = v29;
  *(v23 + 32) = v12;
  v24 = a7 + v17[7];
  *v24 = v31;
  *(v24 + 16) = v13;
  v25 = a7 + v17[8];
  v26 = *(a5 + 16);
  *v25 = *a5;
  *(v25 + 16) = v26;
  result = *(a5 + 32);
  *(v25 + 32) = result;
  *(v25 + 48) = *(a5 + 48);
  v28 = (a7 + v17[9]);
  *v28 = v14;
  v28[1] = v15;
  return result;
}

uint64_t sub_217CFF6E0(uint64_t a1)
{
  v2 = sub_217CFFC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFF71C(uint64_t a1)
{
  v2 = sub_217CFFC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioUpsellMessageCompleted.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D00378(0, &qword_27CBA46E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v36[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFFC18();
  sub_217D89E7C();
  v72 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v73 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
    v12 = v3 + *(v73 + 20);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v69 = *(v12 + 80);
    v70 = v13;
    v15 = *(v12 + 96);
    *v71 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v66 = *(v12 + 32);
    v67 = v17;
    v18 = *(v12 + 48);
    v68 = *(v12 + 64);
    v19 = *(v12 + 16);
    v65[0] = *v12;
    v65[1] = v19;
    v62 = v69;
    v63 = v15;
    v64[0] = *(v12 + 112);
    v59 = v66;
    v60 = v18;
    v61 = v14;
    *&v71[15] = *(v12 + 127);
    *(v64 + 15) = *(v12 + 127);
    v57 = v65[0];
    v58 = v16;
    v56 = 1;
    sub_217AFFBC0(v65, v54);
    sub_217ACF52C();
    sub_217D89C3C();
    v54[6] = v63;
    *v55 = v64[0];
    *&v55[15] = *(v64 + 15);
    v54[2] = v59;
    v54[3] = v60;
    v54[4] = v61;
    v54[5] = v62;
    v54[0] = v57;
    v54[1] = v58;
    sub_217B009E0(v54);
    v20 = v73;
    v21 = (v3 + *(v73 + 24));
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[4];
    *&v46 = *v21;
    *(&v46 + 1) = v22;
    *&v47 = v23;
    *(&v47 + 1) = v24;
    *&v48 = v25;
    LOBYTE(v42) = 2;
    sub_217AD86BC(v46, v22);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v46, *(&v46 + 1));
    v26 = (v3 + v20[7]);
    v27 = v26[1];
    v28 = v26[2];
    v51 = *v26;
    v52 = v27;
    v53 = v28;
    v50 = 3;
    sub_217AD1A68(v51, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v51, v52, v53);
    v29 = (v3 + v20[8]);
    v30 = v29[1];
    v46 = *v29;
    v47 = v30;
    v32 = *v29;
    v31 = v29[1];
    v48 = v29[2];
    v49 = *(v29 + 48);
    v42 = v32;
    v43 = v31;
    v44 = v29[2];
    v45 = *(v29 + 48);
    v41 = 4;
    sub_217ACC004(&v46, v39);
    sub_217A55B98();
    sub_217D89CAC();
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    v40 = v45;
    sub_217ACC69C(v39);
    v33 = (v3 + v20[9]);
    v34 = v33[1];
    v37 = *v33;
    v38 = v34;
    v36[15] = 5;
    sub_217C7CEB4();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CFFC18()
{
  result = qword_27CBA46E8;
  if (!qword_27CBA46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA46E8);
  }

  return result;
}

uint64_t AudioUpsellMessageCompleted.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D00378(0, &qword_27CBA46F0, MEMORY[0x277D844C8]);
  v52 = v7;
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFFC18();
  v35 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v44) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v34;
  sub_217D89BCC();
  (*(v32 + 32))(v14, v17, v4);
  v43 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v18 = &v14[v11[5]];
  v19 = *v51;
  *(v18 + 6) = v50;
  *(v18 + 7) = v19;
  *(v18 + 127) = *&v51[15];
  v20 = v47;
  *(v18 + 2) = v46;
  *(v18 + 3) = v20;
  v21 = v49;
  *(v18 + 4) = v48;
  *(v18 + 5) = v21;
  v22 = v45;
  *v18 = v44;
  *(v18 + 1) = v22;
  LOBYTE(v37) = 2;
  sub_217AD07F8();
  v34 = 0;
  sub_217D89B5C();
  v23 = v41;
  v24 = &v14[v11[6]];
  v25 = v40;
  *v24 = v39;
  *(v24 + 1) = v25;
  *(v24 + 4) = v23;
  LOBYTE(v37) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v26 = v40;
  v27 = &v14[v11[7]];
  *v27 = v39;
  *(v27 + 2) = v26;
  v38 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v28 = &v14[v11[8]];
  v29 = v40;
  *v28 = v39;
  *(v28 + 1) = v29;
  *(v28 + 2) = v41;
  v28[48] = v42;
  v36 = 5;
  sub_217C7CE5C();
  sub_217D89B5C();
  (*(v16 + 8))(v35, v52);
  *&v14[v11[9]] = v37;
  sub_217D003DC(v14, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D00440(v14);
}

void sub_217D00378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CFFC18();
    v7 = a3(a1, &type metadata for AudioUpsellMessageCompleted.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D003DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D00440(uint64_t a1)
{
  v2 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D005D8()
{
  result = qword_27CBA4718;
  if (!qword_27CBA4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4718);
  }

  return result;
}

unint64_t sub_217D00630()
{
  result = qword_27CBA4720;
  if (!qword_27CBA4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4720);
  }

  return result;
}

unint64_t sub_217D00688()
{
  result = qword_27CBA4728;
  if (!qword_27CBA4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4728);
  }

  return result;
}

NewsAnalytics::IssueType_optional __swiftcall IssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IssueType.rawValue.getter()
{
  v1 = 6712929;
  if (*v0 != 1)
  {
    v1 = 6710384;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217D007DC(_BYTE *a1, _BYTE *a2)
{
  v2 = 6710384;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 6712929;
  }

  else
  {
    v4 = 6710384;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 6712929;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217D008B0()
{
  result = qword_27CBA47A0;
  if (!qword_27CBA47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA47A0);
  }

  return result;
}

uint64_t sub_217D00904()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0099C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217D00A20()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D00AC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 6712929;
  if (v2 != 1)
  {
    v4 = 6710384;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217D00BD4()
{
  result = qword_2811BD100;
  if (!qword_2811BD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD100);
  }

  return result;
}

double ScienceDataFactory.scienceData(for:scoringContext:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_217D00CA8(a1);
  if (v3)
  {
    v4 = v3;
    FCFeedPersonalizedItemScoreProfile.scienceData.getter(__src);

    memcpy(a2, __src, 0x111uLL);
  }

  else
  {

    return static ScienceData.emptyScienceData.getter(a2);
  }

  return result;
}

id sub_217D00CA8(void *a1)
{
  v3 = sub_217D890AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  result = [a1 scoreProfile];
  if (!result)
  {
    v12 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_217D01058();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_217DBF9F0;
    *(v13 + 32) = a1;
    swift_unknownObjectRetain();
    v14 = sub_217D8918C();

    if (*(v14 + 16))
    {
      (*(v4 + 16))(v8, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      (*(v4 + 32))(v10, v8, v3);
      v15 = sub_217D8909C();
      (*(v4 + 8))(v10, v3);
      return v15;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void ScienceDataFactory.recipeScienceData(for:scoringContext:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = [*(v2 + 56) appConfiguration];
  if ([v5 respondsToSelector_])
  {
    v6 = [v5 shouldIncludeRecipePersonalizationScienceData];
  }

  else
  {
    v6 = 1;
  }

  swift_unknownObjectRelease();
  v7 = [a1 scoreProfile];
  if (v7)
  {
    v8 = v7;
    [v7 tabiScore];
    v10 = v9;

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (!v6)
    {
LABEL_10:
      v16 = 0;
      v18 = 0;
      goto LABEL_11;
    }
  }

  v11 = [a1 rapidUpdatePersonalizationData];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v13 = sub_217D87C0C();
  v15 = v14;

  v16 = sub_217D87BFC();
  v18 = v17;
  sub_217AE010C(v13, v15);
LABEL_11:
  *a2 = v10;
  a2[1] = v16;
  a2[2] = v18;
}

uint64_t ScienceDataFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ScienceDataFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_217D01058()
{
  if (!qword_2811BC408)
  {
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC408);
    }
  }
}

uint64_t GroupData.init(groupLocation:groupType:groupID:groupCount:groupPosition:groupedArticleIDs:groupedIssueIDs:groupedTagIDs:groupedRecipeIDs:curatedSubtype:layoutIDs:formationReason:groupBackingTagId:personalizationScore:competingGroups:groupedAuxiliaryData:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char *a13, __int128 a14, uint64_t a15, char a16, uint64_t a17, uint64_t *a18)
{
  v19 = *a2;
  v20 = *a13;
  v21 = *a18;
  *a9 = *a1;
  *(a9 + 1) = v19;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 28) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v20;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16 & 1;
  *(a9 + 128) = a17;

  *(a9 + 136) = v21;
  return result;
}

uint64_t GroupData.groupID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GroupData.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t GroupData.groupedArticleIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t GroupData.groupedIssueIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t GroupData.groupedTagIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t GroupData.groupedRecipeIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t GroupData.curatedSubtype.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t GroupData.curatedSubtype.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t GroupData.layoutIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t GroupData.groupBackingTagId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t GroupData.groupBackingTagId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t GroupData.personalizationScore.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t GroupData.personalizationScore.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t GroupData.competingGroups.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t GroupData.groupedAuxiliaryData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 136);

  *(v1 + 136) = v2;
  return result;
}

unint64_t sub_217D01668(char a1)
{
  result = 0x636F4C70756F7267;
  switch(a1)
  {
    case 1:
      result = 0x70795470756F7267;
      break;
    case 2:
      result = 0x444970756F7267;
      break;
    case 3:
      result = 0x756F4370756F7267;
      break;
    case 4:
      result = 0x736F5070756F7267;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x49646570756F7267;
      break;
    case 7:
      result = 0x54646570756F7267;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x5364657461727563;
      break;
    case 10:
      result = 0x444974756F79616CLL;
      break;
    case 11:
      result = 0x6F6974616D726F66;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
    case 15:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x6E697465706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D01870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D02CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D01898(uint64_t a1)
{
  v2 = sub_217D01EDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D018D4(uint64_t a1)
{
  v2 = sub_217D01EDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupData.encode(to:)(void *a1)
{
  sub_217D029B0(0, &qword_2811BC4E0, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  LODWORD(v38) = v1[1];
  v9 = *(v1 + 1);
  v36 = *(v1 + 2);
  v37 = v9;
  LODWORD(v6) = *(v1 + 7);
  v41 = *(v1 + 6);
  v35 = v6;
  v10 = *(v1 + 4);
  v33 = *(v1 + 5);
  v34 = v10;
  v11 = *(v1 + 6);
  v31 = *(v1 + 7);
  v32 = v11;
  v12 = *(v1 + 8);
  v29 = *(v1 + 9);
  v30 = v12;
  v28 = *(v1 + 10);
  v27 = v1[88];
  v13 = *(v1 + 12);
  v25 = *(v1 + 13);
  v26 = v13;
  v24 = *(v1 + 14);
  v23[1] = v1[120];
  v14 = *(v1 + 16);
  v15 = *(v1 + 17);
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_217D01EDC();
  sub_217D89E7C();
  LOBYTE(v40) = v8;
  v42 = 0;
  sub_217D01F30();
  v21 = v39;
  sub_217D89CAC();
  if (v21)
  {
    return (*(v4 + 8))(v7, v20);
  }

  v39 = v15;
  LOBYTE(v40) = v38;
  v42 = 1;
  sub_217C0AA48();
  sub_217D89CAC();
  LOBYTE(v40) = 2;
  sub_217D89C6C();
  LOBYTE(v40) = 3;
  sub_217D89CBC();
  LOBYTE(v40) = 4;
  sub_217D89CBC();
  v40 = v34;
  v42 = 5;
  sub_217D01FD8(0, &qword_2811BCD50);
  sub_217A560C0(&qword_2811BCD48);
  v38 = v7;
  sub_217D89C3C();
  v40 = v33;
  v42 = 6;
  sub_217D89C3C();
  v40 = v32;
  v42 = 7;
  sub_217D89C3C();
  v40 = v31;
  v42 = 8;
  sub_217D89C3C();
  LOBYTE(v40) = 9;
  sub_217D89C0C();
  v40 = v28;
  v42 = 10;
  sub_217D89C3C();
  LOBYTE(v40) = v27;
  v42 = 11;
  sub_217D01F84();
  sub_217D89C3C();
  LOBYTE(v40) = 12;
  sub_217D89C0C();
  LOBYTE(v40) = 13;
  sub_217D89C2C();
  v40 = v14;
  v42 = 14;
  sub_217D01FD8(0, &qword_2811BCD88);
  sub_217D02ABC(&qword_2811BCD80, sub_217D02024);
  sub_217D89C3C();
  v40 = v39;
  v42 = 15;
  sub_217B75F00();

  sub_217D89C3C();

  return (*(v4 + 8))(v38, v20);
}

unint64_t sub_217D01EDC()
{
  result = qword_2811BD1A0;
  if (!qword_2811BD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1A0);
  }

  return result;
}

unint64_t sub_217D01F30()
{
  result = qword_2811C72A8;
  if (!qword_2811C72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72A8);
  }

  return result;
}

unint64_t sub_217D01F84()
{
  result = qword_2811C2048[0];
  if (!qword_2811C2048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2048);
  }

  return result;
}

void sub_217D01FD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217D8971C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_217D02024()
{
  result = qword_2811BD6B0;
  if (!qword_2811BD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6B0);
  }

  return result;
}

uint64_t GroupData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217D029B0(0, &qword_2811BC8D8, MEMORY[0x277D844C8]);
  v85 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D01EDC();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v49 = a2;
    LOBYTE(v50) = 0;
    sub_217D02A14();
    sub_217D89BCC();
    v11 = LOBYTE(v59[0]);
    LOBYTE(v50) = 1;
    sub_217C0AC98();
    sub_217D89BCC();
    v12 = LOBYTE(v59[0]);
    LOBYTE(v59[0]) = 2;
    v44 = sub_217D89B8C();
    v45 = v12;
    v47 = v13;
    LOBYTE(v59[0]) = 3;
    v14 = sub_217D89BDC();
    LOBYTE(v59[0]) = 4;
    v41 = sub_217D89BDC();
    v42 = v14;
    v43 = v11;
    sub_217D01FD8(0, &qword_2811BCD50);
    LOBYTE(v50) = 5;
    sub_217A560C0(&qword_2811BCD38);
    sub_217D89B5C();
    v40 = v59[0];
    LOBYTE(v50) = 6;
    sub_217D89B5C();
    v39 = v59[0];
    LOBYTE(v50) = 7;
    sub_217D89B5C();
    v38 = v59[0];
    LOBYTE(v50) = 8;
    sub_217D89B5C();
    v37 = v6;
    v46 = v59[0];
    LOBYTE(v59[0]) = 9;
    v15 = sub_217D89B2C();
    v48 = v16;
    v17 = v15;
    LOBYTE(v50) = 10;
    sub_217D89B5C();
    v18 = v59[0];
    LOBYTE(v50) = 11;
    sub_217D02A68();
    sub_217D89B5C();
    v36 = LOBYTE(v59[0]);
    LOBYTE(v59[0]) = 12;
    v35 = sub_217D89B2C();
    v20 = v19;
    LOBYTE(v59[0]) = 13;
    v34 = sub_217D89B4C();
    v81 = v21 & 1;
    sub_217D01FD8(0, &qword_2811BCD88);
    LOBYTE(v50) = 14;
    sub_217D02ABC(&qword_2811BCD78, sub_217D02B38);
    sub_217D89B5C();
    v22 = v59[0];
    v78 = 15;
    sub_217B75EA8();
    sub_217D89B5C();
    (*(v37 + 8))(v9, v85);
    v23 = v79;

    LOBYTE(v50) = v43;
    BYTE1(v50) = v45;
    *(&v50 + 2) = v83;
    WORD3(v50) = v84;
    *(&v50 + 1) = v44;
    *&v51 = v47;
    *(&v51 + 1) = __PAIR64__(v41, v42);
    *&v52 = v40;
    *(&v52 + 1) = v39;
    *&v53 = v38;
    *(&v53 + 1) = v46;
    v33 = v17;
    *&v54 = v17;
    *(&v54 + 1) = v48;
    *&v55 = v18;
    BYTE8(v55) = v36;
    HIDWORD(v55) = *&v82[3];
    *(&v55 + 9) = *v82;
    *&v56 = v35;
    *(&v56 + 1) = v20;
    *&v57 = v34;
    LODWORD(v85) = v81;
    BYTE8(v57) = v81;
    *(&v57 + 9) = *v80;
    HIDWORD(v57) = *&v80[3];
    *&v58 = v22;
    *(&v58 + 1) = v23;
    v24 = v50;
    v25 = v51;
    v26 = v53;
    v27 = v49;
    v49[2] = v52;
    v27[3] = v26;
    *v27 = v24;
    v27[1] = v25;
    v28 = v54;
    v29 = v55;
    v30 = v58;
    v27[7] = v57;
    v27[8] = v30;
    v31 = v56;
    v27[5] = v29;
    v27[6] = v31;
    v27[4] = v28;
    sub_217AF7618(&v50, v59);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v59[0]) = v43;
    BYTE1(v59[0]) = v45;
    *(v59 + 2) = v83;
    HIWORD(v59[0]) = v84;
    v59[1] = v44;
    v59[2] = v47;
    v60 = v42;
    v61 = v41;
    v62 = v40;
    v63 = v39;
    v64 = v38;
    v65 = v46;
    v66 = v33;
    v67 = v48;
    v68 = v18;
    v69 = v36;
    *&v70[3] = *&v82[3];
    *v70 = *v82;
    v71 = v35;
    v72 = v20;
    v73 = v34;
    v74 = v85;
    *v75 = *v80;
    *&v75[3] = *&v80[3];
    v76 = v22;
    v77 = v23;
    return sub_217AF8104(v59);
  }
}

void sub_217D029B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D01EDC();
    v7 = a3(a1, &type metadata for GroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D02A14()
{
  result = qword_2811C7298;
  if (!qword_2811C7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7298);
  }

  return result;
}

unint64_t sub_217D02A68()
{
  result = qword_2811C2038;
  if (!qword_2811C2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2038);
  }

  return result;
}

uint64_t sub_217D02ABC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217D01FD8(255, &qword_2811BCD88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217D02B38()
{
  result = qword_2811BD6A8;
  if (!qword_2811BD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6A8);
  }

  return result;
}

unint64_t sub_217D02BD0()
{
  result = qword_27CBA47A8;
  if (!qword_27CBA47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA47A8);
  }

  return result;
}

unint64_t sub_217D02C28()
{
  result = qword_2811BD190;
  if (!qword_2811BD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD190);
  }

  return result;
}

unint64_t sub_217D02C80()
{
  result = qword_2811BD198;
  if (!qword_2811BD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD198);
  }

  return result;
}

uint64_t sub_217D02CD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636F4C70756F7267 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70795470756F7267 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F4370756F7267 && a2 == 0xEA0000000000746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736F5070756F7267 && a2 == 0xED00006E6F697469 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2830 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49646570756F7267 && a2 == 0xEF73444965757373 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x54646570756F7267 && a2 == 0xED00007344496761 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2850 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5364657461727563 && a2 == 0xEE00657079746275 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x444974756F79616CLL && a2 == 0xE900000000000073 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6974616D726F66 && a2 == 0xEF6E6F736165526ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2870 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E697465706D6F63 && a2 == 0xEF7370756F724767 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2890 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t AMSMarketingItemData.amsPurchaseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AMSMarketingItemData.amsPurchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AMSMarketingItemData.campaignId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AMSMarketingItemData.campaignId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall AMSMarketingItemData.init(amsPurchaseID:campaignId:isPaidBundleViaOffer:)(NewsAnalytics::AMSMarketingItemData *__return_ptr retstr, Swift::String_optional amsPurchaseID, Swift::String_optional campaignId, Swift::Bool_optional isPaidBundleViaOffer)
{
  retstr->amsPurchaseID = amsPurchaseID;
  retstr->campaignId = campaignId;
  retstr->isPaidBundleViaOffer = isPaidBundleViaOffer;
}

uint64_t sub_217D0336C()
{
  v1 = 0x6E676961706D6163;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6863727550736D61;
  }
}

uint64_t sub_217D033DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D03BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D03404(uint64_t a1)
{
  v2 = sub_217D03628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D03440(uint64_t a1)
{
  v2 = sub_217D03628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AMSMarketingItemData.encode(to:)(void *a1)
{
  sub_217D038CC(0, &qword_2811BC668, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v16 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D03628();
  sub_217D89E7C();
  v19 = 0;
  v13 = v15[3];
  sub_217D89C0C();
  if (!v13)
  {
    v18 = 1;
    sub_217D89C0C();
    v17 = 2;
    sub_217D89C1C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D03628()
{
  result = qword_2811C2478[0];
  if (!qword_2811C2478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2478);
  }

  return result;
}

uint64_t AMSMarketingItemData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D038CC(0, &qword_27CBA47B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D03628();
  sub_217D89E5C();
  if (!v2)
  {
    v27 = 0;
    v12 = sub_217D89B2C();
    v15 = v14;
    v16 = v12;
    v26 = 1;
    v17 = sub_217D89B2C();
    v19 = v18;
    v23 = v17;
    v25 = 2;
    v20 = sub_217D89B3C();
    v21 = *(v7 + 8);
    v24 = v20;
    v21(v10, v6);
    *a2 = v16;
    *(a2 + 8) = v15;
    *(a2 + 16) = v23;
    *(a2 + 24) = v19;
    *(a2 + 32) = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D038CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D03628();
    v7 = a3(a1, &type metadata for AMSMarketingItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D03934()
{
  result = qword_2811C2450;
  if (!qword_2811C2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2450);
  }

  return result;
}

unint64_t sub_217D0398C()
{
  result = qword_2811C2458;
  if (!qword_2811C2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2458);
  }

  return result;
}

uint64_t sub_217D03A10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_217D03A6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217D03AE8()
{
  result = qword_27CBA47B8;
  if (!qword_27CBA47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA47B8);
  }

  return result;
}

unint64_t sub_217D03B40()
{
  result = qword_2811C2468;
  if (!qword_2811C2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2468);
  }

  return result;
}

unint64_t sub_217D03B98()
{
  result = qword_2811C2470;
  if (!qword_2811C2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2470);
  }

  return result;
}

uint64_t sub_217D03BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863727550736D61 && a2 == 0xED00004449657361;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEA00000000006449 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD28B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217D03DE4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA47F0);
  __swift_project_value_buffer(v0, qword_27CBA47F0);
  return sub_217D8866C();
}

uint64_t InteractivePuzzleTeaserEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 20);
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 20);
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 24);
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 24);
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 28);
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 28);
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 32);
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 32);
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 36);
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 36);
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 40);
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 40);
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.interactivePuzzleTeaserEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 44);
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D04A08(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t InteractivePuzzleTeaserEngagementEvent.interactivePuzzleTeaserEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 44);
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0);
  v5 = v4[5];
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 20));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_217AD85B8(v10, &v9);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 36));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.interactivePuzzleTeaserEngagementData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 InteractivePuzzleTeaserEngagementEvent.Model.init(eventData:puzzleData:feedData:channelData:userBundleSubscriptionContextData:groupData:feedPositionData:interactivePuzzleTeaserEngagementData:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v36 = *a3;
  v15 = *(a3 + 2);
  v16 = *(a4 + 4);
  v17 = *a7;
  v18 = *(a7 + 4);
  v37 = *a8;
  v19 = sub_217D8899C();
  v34 = a4[1];
  v35 = *a4;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  v21 = (a9 + v20[5]);
  v22 = a2[3];
  v21[2] = a2[2];
  v21[3] = v22;
  v21[4] = a2[4];
  v23 = a2[1];
  *v21 = *a2;
  v21[1] = v23;
  v24 = a9 + v20[6];
  *v24 = v36;
  *(v24 + 16) = v15;
  v25 = a9 + v20[7];
  *v25 = v35;
  *(v25 + 16) = v34;
  *(v25 + 32) = v16;
  v26 = a9 + v20[8];
  v27 = *(a5 + 16);
  *v26 = *a5;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a5 + 32);
  *(v26 + 48) = *(a5 + 48);
  v28 = a9 + v20[9];
  v29 = *(a6 + 112);
  *(v28 + 96) = *(a6 + 96);
  *(v28 + 112) = v29;
  *(v28 + 128) = *(a6 + 128);
  v30 = *(a6 + 48);
  *(v28 + 32) = *(a6 + 32);
  *(v28 + 48) = v30;
  v31 = *(a6 + 80);
  *(v28 + 64) = *(a6 + 64);
  *(v28 + 80) = v31;
  result = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = result;
  v33 = a9 + v20[10];
  *v33 = v17;
  *(v33 + 4) = v18;
  *(a9 + v20[11]) = v37;
  return result;
}

unint64_t sub_217D05398()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000025;
    if (v1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000021;
    if (v1 != 4)
    {
      v6 = 0x74614470756F7267;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x746144746E657665;
    v3 = 0x6174614464656566;
    if (v1 != 2)
    {
      v3 = 0x446C656E6E616863;
    }

    if (*v0)
    {
      v2 = 0x6144656C7A7A7570;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_217D054A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D06DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D054CC(uint64_t a1)
{
  v2 = sub_217D05AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D05508(uint64_t a1)
{
  v2 = sub_217D05AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D062A0(0, &qword_27CBA4810, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D05AF8();
  sub_217D89E7C();
  v93 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v89 = v13[1];
    v90 = v14;
    v16 = v13[2];
    v17 = v13[4];
    v91 = v13[3];
    v92 = v17;
    v18 = *v13;
    v85 = v16;
    v86 = v91;
    v87 = v13[4];
    v88 = v18;
    v83 = v15;
    v84 = v89;
    v82 = 1;
    sub_217AD85B8(&v88, &v59);
    sub_217AD6D08();
    sub_217D89CAC();
    v81[2] = v85;
    v81[3] = v86;
    v81[4] = v87;
    v81[0] = v83;
    v81[1] = v84;
    sub_217AD9650(v81);
    v19 = (v3 + v12[6]);
    v20 = v19[1];
    v21 = v19[2];
    *&v59 = *v19;
    *(&v59 + 1) = v20;
    *&v60 = v21;
    LOBYTE(v48) = 2;
    sub_217AD1A68(v59, v20, v21);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v59, *(&v59 + 1), v60);
    v22 = (v3 + v12[7]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v76 = *v22;
    v77 = v23;
    v78 = v24;
    v79 = v25;
    v80 = v26;
    v75 = 3;
    sub_217AD86BC(v76, v23);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v76, v77);
    v27 = (v3 + v12[8]);
    v28 = v27[1];
    v73[0] = *v27;
    v73[1] = v28;
    v30 = *v27;
    v29 = v27[1];
    v73[2] = v27[2];
    v74 = *(v27 + 48);
    v69 = v30;
    v70 = v29;
    v71 = v27[2];
    v72 = *(v27 + 48);
    v68 = 4;
    sub_217ACC004(v73, &v59);
    sub_217A55B98();
    sub_217D89CAC();
    v57[0] = v69;
    v57[1] = v70;
    v57[2] = v71;
    v58 = v72;
    sub_217ACC69C(v57);
    v31 = (v3 + v12[9]);
    v32 = v31[5];
    v33 = v31[7];
    v65 = v31[6];
    v66 = v33;
    v34 = v31[7];
    v67 = v31[8];
    v35 = v31[1];
    v36 = v31[3];
    v61 = v31[2];
    v62 = v36;
    v37 = v31[3];
    v38 = v31[5];
    v63 = v31[4];
    v64 = v38;
    v39 = v31[1];
    v59 = *v31;
    v60 = v39;
    v54 = v65;
    v55 = v34;
    v56 = v31[8];
    v50 = v61;
    v51 = v37;
    v52 = v63;
    v53 = v32;
    v48 = v59;
    v49 = v35;
    v47 = 5;
    sub_217AD87FC(&v59, v46);
    sub_217A5D3B4();
    sub_217D89C3C();
    v46[6] = v54;
    v46[7] = v55;
    v46[8] = v56;
    v46[2] = v50;
    v46[3] = v51;
    v46[4] = v52;
    v46[5] = v53;
    v46[0] = v48;
    v46[1] = v49;
    sub_217AD96E8(v46);
    v40 = (v3 + v12[10]);
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 4);
    v44 = v41;
    v45 = v40;
    HIBYTE(v43) = 6;
    sub_217AD7710();
    sub_217D89C3C();
    LOBYTE(v44) = *(v3 + v12[11]);
    HIBYTE(v43) = 7;
    sub_217B71080();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D05AF8()
{
  result = qword_27CBA4818;
  if (!qword_27CBA4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4818);
  }

  return result;
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_217D8899C();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D062A0(0, &qword_27CBA4820, MEMORY[0x277D844C8]);
  v45 = v7;
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217D05AF8();
  v44 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v17 = v41;
  v39 = v11;
  LOBYTE(v61) = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v42;
  sub_217D89BCC();
  (*(v17 + 32))(v14, v18, v4);
  v55 = 1;
  sub_217AD6CB4();
  sub_217D89BCC();
  v42 = 0;
  v19 = v39;
  v20 = &v14[v39[5]];
  v21 = v59;
  *(v20 + 2) = v58;
  *(v20 + 3) = v21;
  *(v20 + 4) = v60;
  v22 = v57;
  *v20 = v56;
  *(v20 + 1) = v22;
  LOBYTE(v51) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v23 = v62;
  v24 = &v14[v19[6]];
  *v24 = v61;
  *(v24 + 2) = v23;
  LOBYTE(v51) = 3;
  sub_217AD07F8();
  sub_217D89B5C();
  v25 = v63;
  v26 = &v14[v19[7]];
  v27 = v62;
  *v26 = v61;
  *(v26 + 1) = v27;
  *(v26 + 4) = v25;
  v50 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v28 = &v14[v19[8]];
  v29 = v52;
  *v28 = v51;
  *(v28 + 1) = v29;
  *(v28 + 2) = v53;
  v28[48] = v54;
  v49 = 5;
  sub_217A5D308();
  sub_217D89B5C();
  v30 = &v14[v19[9]];
  v31 = v68;
  *(v30 + 6) = v67;
  *(v30 + 7) = v31;
  *(v30 + 8) = v69;
  v32 = v64;
  *(v30 + 2) = v63;
  *(v30 + 3) = v32;
  v33 = v66;
  *(v30 + 4) = v65;
  *(v30 + 5) = v33;
  v34 = v62;
  *v30 = v61;
  *(v30 + 1) = v34;
  v46 = 6;
  sub_217AD76BC();
  sub_217D89B5C();
  v35 = v48;
  v36 = &v14[v19[10]];
  *v36 = v47;
  v36[4] = v35;
  v46 = 7;
  sub_217B71028();
  sub_217D89BCC();
  (*(v43 + 8))(v44, v45);
  v37 = v40;
  v14[v39[11]] = v47;
  sub_217D06304(v14, v37);
  __swift_destroy_boxed_opaque_existential_1(v70);
  return sub_217D06368(v14);
}

void sub_217D062A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D05AF8();
    v7 = a3(a1, &type metadata for InteractivePuzzleTeaserEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D06304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D06368(uint64_t a1)
{
  v2 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D0649C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217D068A0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217D04A08(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
    if (v1 <= 0x3F)
    {
      sub_217D04A08(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217D04A08(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217D04A08(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
          if (v4 <= 0x3F)
          {
            sub_217D04A08(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
            if (v5 <= 0x3F)
            {
              sub_217D04A08(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
              if (v6 <= 0x3F)
              {
                sub_217D04A08(319, &qword_27CBA4808, sub_217B71028, sub_217B71080);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_217D06B64()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C5238);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217D06C9C()
{
  result = qword_27CBA4848;
  if (!qword_27CBA4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4848);
  }

  return result;
}

unint64_t sub_217D06CF4()
{
  result = qword_27CBA4850;
  if (!qword_27CBA4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4850);
  }

  return result;
}

unint64_t sub_217D06D4C()
{
  result = qword_27CBA4858;
  if (!qword_27CBA4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4858);
  }

  return result;
}

uint64_t sub_217D06DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217DD28D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

NewsAnalytics::TextSizeData __swiftcall TextSizeData.init(contentSizeCategory:)(__C::UIContentSizeCategory contentSizeCategory)
{
  v2 = v1;
  sub_217A5DAC8(contentSizeCategory._rawValue, &v4);
  *v2 = v4;
  return result;
}

NewsAnalytics::ArticleTextSizeData __swiftcall ArticleTextSizeData.init(startContentSizeCategory:endContentSizeCategory:diagnosticsEnabled:)(__C::UIContentSizeCategory startContentSizeCategory, __C::UIContentSizeCategory endContentSizeCategory, Swift::Bool diagnosticsEnabled)
{
  v7 = v3;
  if (sub_217D8986C())
  {
    v8 = 1;
LABEL_5:
    v9 = sub_217D89D4C();

    if ((v9 & 1) != 0 && !diagnosticsEnabled)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_217A5DAC8(endContentSizeCategory._rawValue, &v12);

    v11 = v12;
    goto LABEL_10;
  }

  if (sub_217D8987C())
  {
    v8 = 2;
    goto LABEL_5;
  }

  v8 = 0;
  if (diagnosticsEnabled)
  {
    goto LABEL_9;
  }

LABEL_7:

  v11 = 13;
LABEL_10:
  *v7 = v8;
  v7[1] = v11;
  return v10;
}

NewsAnalytics::NotificationType_optional __swiftcall NotificationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NotificationType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E4F64656B636970;
    v7 = 0x64657265746C6966;
    if (v1 != 8)
    {
      v7 = 0x6E65476961;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x647541664F646E65;
    if (v1 != 5)
    {
      v8 = 0xD00000000000001DLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6169726F74696465;
    v4 = 0x657573734977656ELL;
    if (v1 != 3)
    {
      v4 = 0x656C6369747261;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6E6974656B72616DLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_217D07360()
{
  result = qword_27CBA4860;
  if (!qword_27CBA4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4860);
  }

  return result;
}

uint64_t sub_217D073B4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D833AC();
  return sub_217D89E3C();
}

uint64_t sub_217D07404()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D833AC();
  return sub_217D89E3C();
}

unint64_t sub_217D07454@<X0>(unint64_t *a1@<X8>)
{
  result = NotificationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217D0753C()
{
  result = qword_27CBA4868;
  if (!qword_27CBA4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4868);
  }

  return result;
}

NewsAnalytics::AdJournalEntryError_optional __swiftcall AdJournalEntryError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AdJournalEntryError.rawValue.getter()
{
  v1 = 0x726568746FLL;
  v2 = 0x6F5464656C696166;
  if (*v0 != 2)
  {
    v2 = 0x4674736575716572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

unint64_t sub_217D07690()
{
  result = qword_27CBA4870;
  if (!qword_27CBA4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4870);
  }

  return result;
}

uint64_t sub_217D076E4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D077C0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217D07888()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0796C(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726568746FLL;
  v4 = 0xEE007265646E6552;
  v5 = 0x6F5464656C696166;
  if (*v1 != 2)
  {
    v5 = 0x4674736575716572;
    v4 = 0xED000064656C6961;
  }

  if (*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000217DCC600;
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

unint64_t sub_217D07AC4()
{
  result = qword_2811C2D88;
  if (!qword_2811C2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2D88);
  }

  return result;
}

uint64_t sub_217D07B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217D07C0C(uint64_t a1)
{
  v2 = sub_217D07DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D07C48(uint64_t a1)
{
  v2 = sub_217D07DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackData.encode(to:)(void *a1)
{
  sub_217D07FA8(0, &qword_27CBA4878, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D07DCC();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D07DCC()
{
  result = qword_27CBA4880;
  if (!qword_27CBA4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4880);
  }

  return result;
}

uint64_t PlaybackData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217D07FA8(0, &qword_27CBA4888, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D07DCC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D89BBC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D07FA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D07DCC();
    v7 = a3(a1, &type metadata for PlaybackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D0802C(void *a1)
{
  sub_217D07FA8(0, &qword_27CBA4878, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D07DCC();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D08198()
{
  result = qword_27CBA4890;
  if (!qword_27CBA4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4890);
  }

  return result;
}

unint64_t sub_217D081F0()
{
  result = qword_27CBA4898;
  if (!qword_27CBA4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4898);
  }

  return result;
}

unint64_t sub_217D08248()
{
  result = qword_27CBA48A0;
  if (!qword_27CBA48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA48A0);
  }

  return result;
}

uint64_t sub_217D0829C()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA48A8);
  v1 = __swift_project_value_buffer(v0, qword_27CBA48A8);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217D0838C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA48C0);
  v1 = __swift_project_value_buffer(v0, qword_27CBA48C0);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217D0844C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA48D8);
  __swift_project_value_buffer(v0, qword_27CBA48D8);
  return sub_217D8866C();
}

uint64_t IgnoreSportsTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IgnoreSportsTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IgnoreSportsTagEvent(0);
  v5 = v4[5];
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t IgnoreSportsTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t IgnoreSportsTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IgnoreSportsTagEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 28));
}

uint64_t IgnoreSportsTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 IgnoreSportsTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:sportsData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
  v17 = a6 + v16[5];
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v18;
  result = *(a2 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a2 + 48);
  v20 = (a6 + v16[6]);
  *v20 = v9;
  v20[1] = v10;
  *(a6 + v16[7]) = v11;
  v21 = a6 + v16[8];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  return result;
}

uint64_t sub_217D09120(uint64_t a1)
{
  v2 = sub_217D09550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0915C(uint64_t a1)
{
  v2 = sub_217D09550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IgnoreSportsTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D09AB0(0, &qword_27CBA48F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D09550();
  sub_217D89E7C();
  v39 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v36 = v13[1];
    v37 = v14;
    v35 = v15;
    v38 = *(v13 + 48);
    v31 = v16;
    v32 = v36;
    v33 = v13[2];
    v34 = *(v13 + 48);
    v30 = 1;
    sub_217ACC004(&v35, v28);
    sub_217A55B98();
    sub_217D89CAC();
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v29 = v34;
    sub_217ACC69C(v28);
    v17 = (v3 + v12[6]);
    v18 = v17[1];
    v24 = *v17;
    v25 = v18;
    v27 = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v24 = *(v3 + v12[7]);
    v27 = 3;
    sub_217A61284();

    sub_217D89CAC();

    v20 = (v3 + v12[8]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    v24 = v21;
    v25 = v22;
    v26 = v20;
    v27 = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D09550()
{
  result = qword_27CBA48F8;
  if (!qword_27CBA48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA48F8);
  }

  return result;
}

uint64_t IgnoreSportsTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D09AB0(0, &qword_27CBA4900, MEMORY[0x277D844C8]);
  v33 = v7;
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D09550();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  LOBYTE(v37) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v30;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v42 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v18 = &v14[v11[5]];
  v19 = v38;
  *v18 = v37;
  *(v18 + 1) = v19;
  *(v18 + 2) = v39;
  v18[48] = v40;
  v41 = 2;
  sub_217AF6AC0();
  v30 = 0;
  sub_217D89BCC();
  v20 = v31;
  v21 = v35;
  v22 = &v14[v11[6]];
  *v22 = v34;
  *(v22 + 1) = v21;
  v41 = 3;
  sub_217A6120C();
  sub_217D89BCC();
  *&v14[v11[7]] = v34;
  v41 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v20 + 8))(v32, v33);
  v23 = v35;
  v24 = v36;
  v25 = &v14[v11[8]];
  *v25 = v34;
  *(v25 + 1) = v23;
  *(v25 + 8) = v24;
  sub_217D09B14(v14, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D09B78(v14);
}