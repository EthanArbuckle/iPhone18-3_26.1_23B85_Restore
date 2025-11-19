uint64_t sub_2519921DC(char a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  sub_251992968();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2519AEAE8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30[1] = a4;
    sub_2519AEAB8();
    v19 = sub_2519AEAC8();
    v20 = sub_2519AEF58();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = a3;
      v23 = v22;
      v31[0] = v22;
      *v21 = 136446210;
      v24 = sub_2519AF2A8();
      v26 = sub_251978CDC(v24, v25, v31);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_251974000, v19, v20, "[%{public}s] Onboarding acknowledged written and synced", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v27 = v23;
      a3 = v30[0];
      MEMORY[0x2530898E0](v27, -1, -1);
      MEMORY[0x2530898E0](v21, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    sub_2519AE828();
    sub_251992A08(&qword_27F469D70, MEMORY[0x277D10D50]);
    sub_2519AF288();
  }

  else
  {
    if (a2)
    {
      swift_getErrorValue();
      sub_2519AF238();
    }

    else
    {
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      sub_2519AF148();
      MEMORY[0x253088EC0](91, 0xE100000000000000);
      v28 = sub_2519AF2A8();
      MEMORY[0x253088EC0](v28);

      MEMORY[0x253088EC0](0xD000000000000068, 0x80000002519B4300);
    }

    sub_2519AE818();
    swift_storeEnumTagMultiPayload();
  }

  a3(v12);
  return sub_251992A50(v12, sub_251992968);
}

uint64_t WalkingSteadinessAdvertisableFeatureSourceProvider.__deallocating_deinit()
{
  sub_251992A50(v0 + OBJC_IVAR____TtC16HealthMobilityUI50WalkingSteadinessAdvertisableFeatureSourceProvider_currentCountry, sub_2519914A0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25199260C()
{
  v1 = sub_2519AEAE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *v0;
  sub_2519AEAB8();
  type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider();
  sub_2519AE778();
  return (*(v2 + 8))(v6, v1);
}

void sub_251992744()
{
  if (!qword_27F469D50)
  {
    v0 = sub_2519AEFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469D50);
    }
  }
}

void sub_2519927B0()
{
  sub_2519914A0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_251992968()
{
  if (!qword_27F469D68)
  {
    sub_2519AE828();
    sub_251992A08(&qword_27F469D70, MEMORY[0x277D10D50]);
    v0 = sub_2519AF298();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469D68);
    }
  }
}

uint64_t sub_251992A08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251992A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsDataSource()
{
  result = qword_27F469D78;
  if (!qword_27F469D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251992B48()
{
  v0 = sub_2519AE638();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251992E84();
  v6 = *(sub_2519AE8C8() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2519B0FA0;
  sub_251994B64(&unk_2863D9678);
  sub_2519AE628();
  sub_2519AE618();
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_2519AE8B8();
  v14[0] = 0x3C53447961727241;
  v14[1] = 0xE800000000000000;
  sub_2519AE628();
  v10 = sub_2519AE618();
  v12 = v11;
  v9(v5, v0);
  MEMORY[0x253088EC0](v10, v12);

  MEMORY[0x253088EC0](62, 0xE100000000000000);
  return sub_2519AE898();
}

uint64_t sub_251992DB4()
{
  v0 = sub_2519AE8A8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_251992DEC()
{
  type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsCell();
  sub_251992E2C();
  return sub_2519AEF08();
}

unint64_t sub_251992E2C()
{
  result = qword_27F469D88;
  if (!qword_27F469D88)
  {
    type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469D88);
  }

  return result;
}

void sub_251992E84()
{
  if (!qword_27F469D90)
  {
    sub_2519AE8C8();
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469D90);
    }
  }
}

HealthMobilityUI::WalkingSteadinessOnboardingAboutHealthDetailsItem_optional __swiftcall WalkingSteadinessOnboardingAboutHealthDetailsItem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2519AF1D8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WalkingSteadinessOnboardingAboutHealthDetailsItem.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E41746867696568;
  }

  else
  {
    result = 0x6942664F65746164;
  }

  *v0;
  return result;
}

uint64_t sub_251992F90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E41746867696568;
  }

  else
  {
    v4 = 0x6942664F65746164;
  }

  if (v3)
  {
    v5 = 0xEB00000000687472;
  }

  else
  {
    v5 = 0xEF74686769655764;
  }

  if (*a2)
  {
    v6 = 0x6E41746867696568;
  }

  else
  {
    v6 = 0x6942664F65746164;
  }

  if (*a2)
  {
    v7 = 0xEF74686769655764;
  }

  else
  {
    v7 = 0xEB00000000687472;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2519AF208();
  }

  return v9 & 1;
}

uint64_t sub_25199304C()
{
  v1 = *v0;
  sub_2519AF258();
  sub_2519AEE78();

  return sub_2519AF278();
}

uint64_t sub_2519930E4()
{
  *v0;
  sub_2519AEE78();
}

uint64_t sub_251993168()
{
  v1 = *v0;
  sub_2519AF258();
  sub_2519AEE78();

  return sub_2519AF278();
}

uint64_t sub_2519931FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2519AF1D8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25199325C(uint64_t *a1@<X8>)
{
  v2 = 0x6942664F65746164;
  if (*v1)
  {
    v2 = 0x6E41746867696568;
  }

  v3 = 0xEB00000000687472;
  if (*v1)
  {
    v3 = 0xEF74686769655764;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t WalkingSteadinessOnboardingAboutHealthDetailsItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  sub_251993388();
  v5 = sub_2519AEE58();
  MEMORY[0x253088EC0](46, 0xE100000000000000);
  if (v1)
  {
    v2 = 0x6E41746867696568;
  }

  else
  {
    v2 = 0x6942664F65746164;
  }

  if (v1)
  {
    v3 = 0xEF74686769655764;
  }

  else
  {
    v3 = 0xEB00000000687472;
  }

  MEMORY[0x253088EC0](v2, v3);

  return v5;
}

unint64_t sub_251993388()
{
  result = qword_27F469D98;
  if (!qword_27F469D98)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469D98);
  }

  return result;
}

unint64_t sub_2519933DC()
{
  result = qword_27F469DA0;
  if (!qword_27F469DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469DA0);
  }

  return result;
}

unint64_t sub_251993434()
{
  result = qword_27F469DA8;
  if (!qword_27F469DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469DA8);
  }

  return result;
}

uint64_t sub_2519934B0(uint64_t a1)
{
  v2 = sub_251993864();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t getEnumTagSinglePayload for WalkingSteadinessOnboardingAboutHealthDetailsItem(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WalkingSteadinessOnboardingAboutHealthDetailsItem(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25199366C()
{
  if (*v0)
  {
    if (qword_27F469440 == -1)
    {
      return sub_2519AE4D8();
    }

    goto LABEL_6;
  }

  if (qword_27F469440 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_2519AE4D8();
}

uint64_t sub_251993768()
{
  if (*v0)
  {
    if (qword_27F469440 == -1)
    {
      return sub_2519AE4D8();
    }

    goto LABEL_6;
  }

  if (qword_27F469440 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_2519AE4D8();
}

unint64_t sub_251993864()
{
  result = qword_27F469DB0;
  if (!qword_27F469DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469DB0);
  }

  return result;
}

uint64_t sub_2519938B8()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469DB8);
  v1 = __swift_project_value_buffer(v0, qword_27F469DB8);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_251993980(uint64_t a1, uint64_t *a2)
{
  sub_251980888(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_251980988(v6, v3 + v4);
  swift_endAccess();
  sub_251993A08();
  return sub_2519948D4(v6, &qword_27F4697E0, &qword_27F4697E8);
}

void sub_251993A08()
{
  swift_getObjectType();
  v1 = sub_2519AEBF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_251980888(v0 + v7, v32);
  if (v33)
  {
    sub_251994930(0, &qword_27F4697E8);
    sub_251994930(0, &qword_27F469DF8);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        v8 = sub_251975F90(&v34, v37);
        MEMORY[0x253088FD0](v8);
        v9 = v38;
        v10 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        (*(v10 + 8))(v9, v10);
        sub_2519AEBC8();
        v11 = v38;
        v12 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        (*(v12 + 16))(v11, v12);
        sub_2519AEB18();
        *(&v35 + 1) = v1;
        v36 = MEMORY[0x277D74C30];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
        (*(v2 + 16))(boxed_opaque_existential_1, v6, v1);
        MEMORY[0x253088FC0](&v34);
        sub_251994260();
        sub_251980888(v0 + v7, v32);
        if (v33)
        {
          sub_251994930(0, &unk_27F4698E0);
          if (swift_dynamicCast())
          {
            if (*(&v35 + 1))
            {
              __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
              v14 = sub_2519AE968();
              v16 = v15;
              __swift_destroy_boxed_opaque_existential_0Tm(&v34);
              v17 = v14;
LABEL_18:
              sub_251994500(v17, v16);

              (*(v2 + 8))(v6, v1);
              __swift_destroy_boxed_opaque_existential_0Tm(v37);
              return;
            }
          }

          else
          {
            v36 = 0;
            v34 = 0u;
            v35 = 0u;
          }
        }

        else
        {
          sub_2519948D4(v32, &qword_27F4697E0, &qword_27F4697E8);
          v34 = 0u;
          v35 = 0u;
          v36 = 0;
        }

        sub_2519948D4(&v34, &qword_27F4698D8, &unk_27F4698E0);
        v17 = 0;
        v16 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    sub_2519948D4(v32, &qword_27F4697E0, &qword_27F4697E8);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  sub_2519948D4(&v34, &qword_27F469DF0, &qword_27F469DF8);
  if (qword_27F4694A0 != -1)
  {
    swift_once();
  }

  v18 = sub_2519AEAE8();
  __swift_project_value_buffer(v18, qword_27F469DB8);
  v19 = v0;
  v20 = sub_2519AEAC8();
  v21 = sub_2519AEF38();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37[0] = v23;
    *v22 = 136446722;
    v24 = sub_2519AF2A8();
    v26 = sub_251978CDC(v24, v25, v37);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_251978CDC(1835365481, 0xE400000000000000, v37);
    *(v22 + 22) = 2082;
    sub_251994820(0, &qword_27F4697E0, &qword_27F4697E8);
    *&v34 = v27;
    sub_251981014();
    v28 = sub_2519AEE58();
    v30 = sub_251978CDC(v28, v29, v37);

    *(v22 + 24) = v30;
    _os_log_impl(&dword_251974000, v20, v21, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to TitleValueProviding", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v23, -1, -1);
    MEMORY[0x2530898E0](v22, -1, -1);
  }
}

uint64_t sub_251993F48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v1 + v3, a1);
}

uint64_t sub_251993FA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_251980988(a1, v1 + v3);
  swift_endAccess();
  sub_251993A08();
  return sub_2519948D4(a1, &qword_27F4697E0, &qword_27F4697E8);
}

void (*sub_251994024(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_251994088;
}

void sub_251994088(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_251993A08();
  }
}

id sub_251994260()
{
  sub_2519947C8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2519AEBF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x253088FB0](v18, v10);
  if (!v19)
  {
    sub_2519948D4(v18, &qword_27F469DE0, &qword_27F469DE8);
    (*(v7 + 56))(v5, 1, 1, v6);
    return sub_251994878(v5);
  }

  sub_251994930(0, &qword_27F469DE8);
  v13 = swift_dynamicCast();
  (*(v7 + 56))(v5, v13 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_251994878(v5);
  }

  (*(v7 + 32))(v12, v5, v6);
  result = [v0 tintColor];
  if (result)
  {
    v15 = sub_2519AEB98();
    sub_2519AEB58();
    v15(v18, 0);
    v19 = v6;
    v20 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(v7 + 16))(boxed_opaque_existential_1, v12, v6);
    MEMORY[0x253088FC0](v18);
    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251994500(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_251980C7C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2519B12D0;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    *(v5 + 48) = 0x6C6156656C746954;
    *(v5 + 56) = 0xEA00000000006575;
    *(v5 + 64) = 1819043139;
    *(v5 + 72) = 0xE400000000000000;

    v6 = sub_2519AEEB8();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {

    [v2 setAccessibilityIdentifier_];
  }
}

id TitleValueTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleValueTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2519947C8()
{
  if (!qword_27F469DD8)
  {
    sub_2519AEBF8();
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469DD8);
    }
  }
}

void sub_251994820(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_251994930(255, a3);
    v4 = sub_2519AF0E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251994878(uint64_t a1)
{
  sub_2519947C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2519948D4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_251994820(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251994930(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ConfirmDetailsModel.__allocating_init(valueFormatter:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  v7 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker) = 3;
  sub_251975F90(a1, v5 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter);
  return v5;
}

uint64_t sub_251994A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25199FCE0(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25199FCE0((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      type metadata accessor for HKAppleWalkingSteadinessClassification(0);
      v12 = v9;
      v13 = sub_251999478(&qword_27F469E78, type metadata accessor for HKAppleWalkingSteadinessClassification);
      *&v11 = v5;
      *(v2 + 16) = v8 + 1;
      sub_251975F90(&v11, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_251994B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25199FCE0(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v12 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25199FCE0((v6 > 1), v7 + 1, 1);
        v2 = v12;
      }

      v10 = &type metadata for WalkingSteadinessOnboardingAboutHealthDetailsItem;
      v11 = sub_251993434();
      LOBYTE(v9) = v5;
      *(v2 + 16) = v7 + 1;
      sub_251975F90(&v9, v2 + 40 * v7 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_251994C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25199FD18(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    sub_251999504(0, &qword_27F469E80, &qword_27F4697E8);
    sub_251999504(0, &qword_27F469E88, &qword_27F469E90);
    do
    {
      v8 = *v4;

      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25199FD18((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_251994D84()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469E00);
  v1 = __swift_project_value_buffer(v0, qword_27F469E00);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_251994E4C()
{
  if (*v0)
  {
    if (*v0 != 1)
    {
      goto LABEL_7;
    }

    v1 = sub_2519AEEB8();
    v2 = HKUIJoinStringsForAutomationIdentifier();

    if (v2)
    {
LABEL_8:
      sub_2519AEE38();

      return;
    }

    __break(1u);
  }

  v3 = sub_2519AEEB8();
  v2 = HKUIJoinStringsForAutomationIdentifier();

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v4 = sub_2519AEEB8();
  v2 = HKUIJoinStringsForAutomationIdentifier();

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
}

HealthMobilityUI::ConfirmDetailsModel::Row::HealthDetail_optional __swiftcall ConfirmDetailsModel.Row.HealthDetail.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_251994F68()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1);
  return sub_2519AF278();
}

uint64_t sub_251994FDC()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1);
  return sub_2519AF278();
}

uint64_t sub_251995020@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  if (sub_2519AE708())
  {
    v6 = sub_2519AE718();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    v8 = -4;
LABEL_10:
    *a3 = v8;
    return result;
  }

  v9 = sub_2519AE6F8();
  v10 = sub_2519AE718();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  if (v5 == 3)
  {
    goto LABEL_7;
  }

  if (v5 + 1 == v9)
  {
    v8 = v5 | 0x80;
    goto LABEL_10;
  }

  v11 = v9 > v5;
  v12 = __OFSUB__(v9, v11);
  v9 -= v11;
  if (!v12)
  {
LABEL_7:
    if (v9 >= 3)
    {
      v8 = -4;
    }

    else
    {
      v8 = v9;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t ConfirmDetailsModel.Row.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x2530892A0](v1 >> 7);
  return MEMORY[0x2530892A0](v1 & 0x7F);
}

uint64_t ConfirmDetailsModel.Row.hashValue.getter()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1 >> 7);
  MEMORY[0x2530892A0](v1 & 0x7F);
  return sub_2519AF278();
}

uint64_t sub_2519951C0()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1 >> 7);
  MEMORY[0x2530892A0](v1 & 0x7F);
  return sub_2519AF278();
}

uint64_t sub_251995214()
{
  v1 = *v0;
  MEMORY[0x2530892A0](v1 >> 7);
  return MEMORY[0x2530892A0](v1 & 0x7F);
}

uint64_t sub_251995254()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1 >> 7);
  MEMORY[0x2530892A0](v1 & 0x7F);
  return sub_2519AF278();
}

uint64_t sub_2519952A4()
{
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v32 - v12;
  sub_251995B90(0, &qword_27F469938, MEMORY[0x277CC8990]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v32 - v17;
  v19 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251995C40(v0 + v19, v13, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v20 = type metadata accessor for ConfirmDetailsProvider.Details();
  v21 = *(*(v20 - 8) + 48);
  if (v21(v13, 1, v20))
  {
    sub_251995BE4(v13, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
    v22 = sub_2519AE4C8();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
LABEL_4:
    v24 = &qword_27F469938;
    v25 = MEMORY[0x277CC8990];
    v26 = v18;
LABEL_5:
    sub_251995BE4(v26, v24, v25);
    return 0;
  }

  sub_251995C40(v13, v18, &qword_27F469938, MEMORY[0x277CC8990]);
  sub_251995BE4(v13, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v23 = sub_2519AE4C8();
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    goto LABEL_4;
  }

  sub_251995BE4(v18, &qword_27F469938, MEMORY[0x277CC8990]);
  sub_251995C40(v0 + v19, v10, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  if (v21(v10, 1, v20))
  {
    v24 = &qword_27F469658;
    v25 = type metadata accessor for ConfirmDetailsProvider.Details;
    v26 = v10;
    goto LABEL_5;
  }

  v28 = *&v10[*(v20 + 24)];
  v29 = v28;
  sub_251995BE4(v10, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  if (!v28)
  {
    return 0;
  }

  sub_251995C40(v0 + v19, v6, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  if (v21(v6, 1, v20))
  {
    v24 = &qword_27F469658;
    v25 = type metadata accessor for ConfirmDetailsProvider.Details;
    v26 = v6;
    goto LABEL_5;
  }

  v30 = *&v6[*(v20 + 20)];
  v31 = v30;
  sub_251995BE4(v6, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  if (!v30)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2519956F4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_251995730(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_251995790(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_251995824;
}

void sub_251995824(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t sub_2519958A8(uint64_t a1, uint64_t *a2)
{
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  sub_251995C40(a1, &v12 - v7, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251997FD0(v8, v9 + v10, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  return swift_endAccess();
}

uint64_t sub_251995998@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_251995C40(v1 + v3, a1, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
}

uint64_t sub_251995A0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251997FD0(a1, v1 + v3, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  return swift_endAccess();
}

uint64_t ConfirmDetailsModel.init(valueFormatter:)(__int128 *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  v4 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker) = 3;
  sub_251975F90(a1, v1 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter);
  return v1;
}

void sub_251995B90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2519AF0E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251995BE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251995B90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251995C40(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251995B90(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251995CAC(uint64_t a1)
{
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  sub_25198504C(a1, &v16 - v6);
  v8 = type metadata accessor for ConfirmDetailsProvider.Details();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251997FD0(v7, v1 + v10, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  swift_endAccess();
  sub_25198504C(a1, v7);
  v9(v7, 0, 1, v8);
  v11 = (*(*v1 + 208))(v7);
  sub_251995BE4(v7, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  *(v1 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker) = 3;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v12 = v1[3];
  ObjectType = swift_getObjectType();
  v14 = sub_251994C50(v11);

  (*(v12 + 32))(v14, ObjectType, v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_251995ED4(uint64_t a1)
{
  v3[3] = a1;
  v1 = sub_251995FA8(sub_251995F54, v3, &unk_2863D9618);
  sub_251997F70(&unk_2863D9638, sub_2519960D4);
  return v1;
}

uint64_t sub_251995F54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[1] = *(v2 + 16);
  result = sub_251996124(sub_2519994C0, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_251995FA8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_25199FC80(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_25199FC80((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_2519960D4()
{
  if (!qword_27F469E28)
  {
    v0 = sub_2519AEEC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469E28);
    }
  }
}

uint64_t sub_251996124(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_25199FD58(0, v5, 0);
  v6 = v16;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v14 = v10;
    a1(v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_25199FD58((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    sub_251975F90(v15, v6 + 40 * v12 + 32);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_25199623C(uint64_t a1)
{
  v122 = a1;
  v120 = *v1;
  v2 = sub_2519AE718();
  v121 = *(v2 - 8);
  v3 = *(v121 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v119 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v117 = &v112 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v118 = &v112 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v114 = &v112 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v115 = &v112 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v112 - v20;
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v116 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v112 - v28;
  v30 = type metadata accessor for ConfirmDetailsProvider.Details();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251995C40(v1 + v36, v29, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_251995BE4(v29, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
    if (qword_27F4694A8 != -1)
    {
      swift_once();
    }

    v37 = sub_2519AEAE8();
    __swift_project_value_buffer(v37, qword_27F469E00);
    v38 = sub_2519AEAC8();
    v39 = sub_2519AEF38();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v126[0] = v41;
      *v40 = 136446466;
      v42 = sub_2519AF2A8();
      v44 = sub_251978CDC(v42, v43, v126);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_251978CDC(0xD000000000000014, 0x80000002519B4610, v126);
      _os_log_impl(&dword_251974000, v38, v39, "[%{public}s.%{public}s]: Attempted to change details before we received them.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v41, -1, -1);
      MEMORY[0x2530898E0](v40, -1, -1);
    }

    return;
  }

  v113 = v35;
  sub_2519980D8(v29, v35, type metadata accessor for ConfirmDetailsProvider.Details);
  v45 = v121;
  v46 = *(v121 + 16);
  v46(v21, v122, v2);
  v47 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker;
  LOBYTE(v123[0]) = *(v1 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker);
  sub_251995020(v21, v123, v126);
  v48 = LOBYTE(v126[0]);
  v49 = v45;
  if (LOBYTE(v126[0]) <= 0xFBu)
  {
    if ((v126[0] & 0x80) != 0)
    {
      if (qword_27F4694A8 != -1)
      {
        swift_once();
      }

      v73 = sub_2519AEAE8();
      __swift_project_value_buffer(v73, qword_27F469E00);
      v74 = sub_2519AEAC8();
      v75 = sub_2519AEF48();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v126[0] = v77;
        *v76 = 136446722;
        v78 = sub_2519AF2A8();
        v80 = sub_251978CDC(v78, v79, v126);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2082;
        *(v76 + 14) = sub_251978CDC(0xD000000000000014, 0x80000002519B4610, v126);
        *(v76 + 22) = 2082;
        LOBYTE(v123[0]) = v48 & 0x7F;
        v81 = sub_2519AEE58();
        v83 = sub_251978CDC(v81, v82, v126);

        *(v76 + 24) = v83;
        _os_log_impl(&dword_251974000, v74, v75, "[%{public}s.%{public}s]: Should not be able to tap on picker %{public}s", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2530898E0](v77, -1, -1);
        MEMORY[0x2530898E0](v76, -1, -1);
      }

      goto LABEL_25;
    }

    v68 = *(v1 + v47);
    if (LOBYTE(v126[0]) == 3)
    {
      v69 = v118;
      if (v68 == 3)
      {
LABEL_15:
        *(v1 + v47) = 3;
        v70 = v115;
        MEMORY[0x253088710](v48 + 1, 0);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v71 = v1[3];
          ObjectType = swift_getObjectType();
          (*(v71 + 24))(v70, ObjectType, v71);
          swift_unknownObjectRelease();
        }

        (*(v49 + 8))(v70, v2);
LABEL_25:
        sub_251997F70(v113, type metadata accessor for ConfirmDetailsProvider.Details);
        return;
      }
    }

    else
    {
      v69 = v118;
      if (v68 == 3)
      {
        v84 = v49;
        *(v1 + v47) = v126[0];
        v85 = v114;
        MEMORY[0x253088710](v48 + 1, 0);
        LOBYTE(v123[0]) = v48 | 0x80;
        v86 = v113;
        v87 = v116;
        sub_25198504C(v113, v116);
        (*(v31 + 56))(v87, 0, 1, v30);
        sub_251997120(v123, v87, v126);
        sub_251995BE4(v87, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v88 = v1[3];
          v89 = swift_getObjectType();
          v90 = v84;
          v91 = v127;
          v92 = v128;
          v93 = __swift_project_boxed_opaque_existential_1(v126, v127);
          v124 = v91;
          v125 = *(v92 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v123);
          (*(*(v91 - 8) + 16))(boxed_opaque_existential_1, v93, v91);
          (*(v88 + 16))(v123, v85, v89, v88);
          swift_unknownObjectRelease();
          (*(v90 + 8))(v85, v2);
LABEL_34:
          sub_251997F70(v86, type metadata accessor for ConfirmDetailsProvider.Details);
          __swift_destroy_boxed_opaque_existential_0Tm(v123);
LABEL_38:
          __swift_destroy_boxed_opaque_existential_0Tm(v126);
          return;
        }

        (*(v84 + 8))(v85, v2);
LABEL_37:
        sub_251997F70(v86, type metadata accessor for ConfirmDetailsProvider.Details);
        goto LABEL_38;
      }

      if (LOBYTE(v126[0]) == v68)
      {
        goto LABEL_15;
      }
    }

    v95 = v49;
    MEMORY[0x253088710](v68 + 1, 0);
    *(v1 + v47) = v48;
    MEMORY[0x253088710](v48 + 1, 0);
    LOBYTE(v123[0]) = v48 | 0x80;
    v86 = v113;
    v96 = v116;
    sub_25198504C(v113, v116);
    (*(v31 + 56))(v96, 0, 1, v30);
    sub_251997120(v123, v96, v126);
    v97 = v1;
    sub_251995BE4(v96, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v98 = v1[3];
      v99 = swift_getObjectType();
      (*(v98 + 24))(v69, v99, v98);
      v97 = v1;
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v100 = v97[3];
      v101 = swift_getObjectType();
      v102 = v95;
      v103 = v2;
      v104 = v69;
      v105 = v127;
      v106 = v128;
      v107 = __swift_project_boxed_opaque_existential_1(v126, v127);
      v124 = v105;
      v125 = *(v106 + 8);
      v108 = __swift_allocate_boxed_opaque_existential_1(v123);
      (*(*(v105 - 8) + 16))(v108, v107, v105);
      v109 = v117;
      (*(v100 + 16))(v123, v117, v101, v100);
      swift_unknownObjectRelease();
      v110 = *(v102 + 8);
      v110(v109, v103);
      v110(v104, v103);
      goto LABEL_34;
    }

    v111 = *(v95 + 8);
    v111(v117, v2);
    v111(v69, v2);
    goto LABEL_37;
  }

  v50 = v45;
  if (qword_27F4694A8 != -1)
  {
    swift_once();
  }

  v51 = sub_2519AEAE8();
  __swift_project_value_buffer(v51, qword_27F469E00);
  v52 = v119;
  v46(v119, v122, v2);
  v53 = sub_2519AEAC8();
  v54 = sub_2519AEF48();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v113;
  if (v55)
  {
    v57 = v2;
    v58 = swift_slowAlloc();
    v59 = v52;
    v60 = swift_slowAlloc();
    v126[0] = v60;
    *v58 = 136446722;
    v61 = sub_2519AF2A8();
    v63 = sub_251978CDC(v61, v62, v126);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2082;
    *(v58 + 14) = sub_251978CDC(0xD000000000000014, 0x80000002519B4610, v126);
    *(v58 + 22) = 2082;
    sub_251999478(&qword_27F469E30, MEMORY[0x277CC9AF8]);
    v64 = sub_2519AF1E8();
    v66 = v65;
    (*(v50 + 8))(v59, v57);
    v67 = sub_251978CDC(v64, v66, v126);

    *(v58 + 24) = v67;
    _os_log_impl(&dword_251974000, v53, v54, "[%{public}s.%{public}s]: Unable to determine row for index path %{public}s", v58, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v60, -1, -1);
    MEMORY[0x2530898E0](v58, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v52, v2);
  }

  sub_251997F70(v56, type metadata accessor for ConfirmDetailsProvider.Details);
}

void (*sub_251996FC8@<X0>(char *a1@<X0>, uint64_t a2@<X8>))(_BYTE *, void)
{
  v5 = sub_2519AE718();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7F) + 1;
  }

  else
  {
    v12 = v11;
  }

  MEMORY[0x253088710](v12, 0);
  v13 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker);
  if (v13 == 3 || v11 < 0)
  {
    return (*(v6 + 32))(a2, v10, v5);
  }

  v14 = sub_2519AE6F8() > v13;
  result = sub_2519AE6E8();
  if (!__OFADD__(*v16, v14))
  {
    *v16 += v14;
    result(v17, 0);
    return (*(v6 + 32))(a2, v10, v5);
  }

  __break(1u);
  return result;
}

char *sub_251997120@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v117 = a3;
  v118 = a2;
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v116 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v116 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v116 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v116 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v116 - v27;
  sub_251995B90(0, &qword_27F469938, MEMORY[0x277CC8990]);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v116 - v36;
  v38 = type metadata accessor for DateOfBirthItem();
  v39 = *(*(v38 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = (&v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *a1;
  if (*a1 < 0)
  {
    v47 = v44 & 0x7F;
    if (v47)
    {
      if (v47 == 1)
      {
        sub_251995C40(v118, v17, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
        v48 = type metadata accessor for ConfirmDetailsProvider.Details();
        if ((*(*(v48 - 8) + 48))(v17, 1, v48) == 1)
        {
          sub_251995BE4(v17, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
          v49 = 0;
        }

        else
        {
          v49 = *&v17[*(v48 + 20)];
          v74 = v49;
          sub_251997F70(v17, type metadata accessor for ConfirmDetailsProvider.Details);
        }

        sub_251979694(v116 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter, v119);
        v75 = type metadata accessor for WeightPickerItem();
        v76 = objc_allocWithZone(v75);
        v77 = WeightPickerItem.init(initialValue:valueFormatter:)(v49, v119);
        v78 = &v77[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate];
        swift_beginAccess();
        *(v78 + 1) = &protocol witness table for ConfirmDetailsModel;
        swift_unknownObjectWeakAssign();
        v122 = 1;
        sub_251994E4C();
        v80 = v79;
        v82 = v81;
        v83 = &v77[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier];
        swift_beginAccess();
        v84 = *(v83 + 1);
        *v83 = v80;
        *(v83 + 1) = v82;

        v85 = v117;
        v117[3] = v75;
        result = sub_251999478(&qword_27F469E48, type metadata accessor for WeightPickerItem);
        v85[4] = result;
        *v85 = v77;
      }

      else
      {
        sub_251995C40(v118, v13, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
        v57 = type metadata accessor for ConfirmDetailsProvider.Details();
        if ((*(*(v57 - 8) + 48))(v13, 1, v57) == 1)
        {
          sub_251995BE4(v13, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
          v58 = 0;
        }

        else
        {
          v58 = *&v13[*(v57 + 24)];
          v102 = v58;
          sub_251997F70(v13, type metadata accessor for ConfirmDetailsProvider.Details);
        }

        sub_251979694(v116 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter, v119);
        v103 = type metadata accessor for HeightPickerItem();
        v104 = objc_allocWithZone(v103);
        *&v104[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v105 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight;
        *&v104[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight] = 0;
        v104[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
        v106 = &v104[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier];
        *v106 = 0;
        v106[1] = 0;
        *&v104[v105] = v58;
        sub_251979694(v119, &v104[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter]);
        v121.receiver = v104;
        v121.super_class = v103;
        v107 = objc_msgSendSuper2(&v121, sel_init);
        __swift_destroy_boxed_opaque_existential_0Tm(v119);
        v108 = &v107[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate];
        swift_beginAccess();
        *(v108 + 1) = &protocol witness table for ConfirmDetailsModel;
        swift_unknownObjectWeakAssign();
        v122 = 2;
        sub_251994E4C();
        v110 = v109;
        v112 = v111;
        v113 = &v107[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier];
        swift_beginAccess();
        v114 = *(v113 + 1);
        *v113 = v110;
        *(v113 + 1) = v112;

        v115 = v117;
        v117[3] = v103;
        result = sub_251999478(&qword_27F469E40, type metadata accessor for HeightPickerItem);
        v115[4] = result;
        *v115 = v107;
      }
    }

    else
    {
      sub_251995C40(v118, v9, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
      v55 = type metadata accessor for ConfirmDetailsProvider.Details();
      if ((*(*(v55 - 8) + 48))(v9, 1, v55) == 1)
      {
        sub_251995BE4(v9, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
        v56 = sub_2519AE4C8();
        (*(*(v56 - 8) + 56))(v34, 1, 1, v56);
      }

      else
      {
        sub_251995C40(v9, v34, &qword_27F469938, MEMORY[0x277CC8990]);
        sub_251997F70(v9, type metadata accessor for ConfirmDetailsProvider.Details);
      }

      v86 = *MEMORY[0x277CCE588];
      v87 = type metadata accessor for BirthdayPickerItem();
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      v90 = swift_allocObject();
      *(v90 + 5) = 0;
      *(v90 + 3) = 0;
      *(v90 + 2) = 0;
      swift_unknownObjectWeakInit();
      v91 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem____lazy_storage___calendar;
      v92 = sub_2519AE6C8();
      (*(*(v92 - 8) + 56))(&v90[v91], 1, 1, v92);
      v93 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_currentValue;
      v94 = sub_2519AE4C8();
      (*(*(v94 - 8) + 56))(&v90[v93], 1, 1, v94);
      swift_beginAccess();
      sub_251997FD0(v34, &v90[v93], &qword_27F469938, MEMORY[0x277CC8990]);
      swift_endAccess();
      *&v90[OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_defaultAge] = v86;
      v95 = &v90[OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_dateGenerator];
      *v95 = sub_251990020;
      v95[1] = 0;
      swift_beginAccess();
      *(v90 + 5) = &protocol witness table for ConfirmDetailsModel;
      swift_unknownObjectWeakAssign();
      v122 = 0;
      sub_251994E4C();
      v97 = v96;
      v99 = v98;
      swift_beginAccess();
      v100 = *(v90 + 3);
      *(v90 + 2) = v97;
      *(v90 + 3) = v99;

      v101 = v117;
      v117[3] = v87;
      result = sub_251999478(&qword_27F469E38, type metadata accessor for BirthdayPickerItem);
      v101[4] = result;
      *v101 = v90;
    }
  }

  else if (*a1)
  {
    if (v44 == 1)
    {
      sub_251995C40(v118, v25, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
      v45 = type metadata accessor for ConfirmDetailsProvider.Details();
      if ((*(*(v45 - 8) + 48))(v25, 1, v45) == 1)
      {
        sub_251995BE4(v25, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
        v46 = 0;
      }

      else
      {
        v46 = *&v25[*(v45 + 20)];
        v59 = v46;
        sub_251997F70(v25, type metadata accessor for ConfirmDetailsProvider.Details);
      }

      v60 = v117;
      sub_251979694(v116 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter, v119 + 8);
      *&v119[0] = v46;
      v122 = 1;
      sub_251994E4C();
      *&v120 = v61;
      *(&v120 + 1) = v62;
      v60[3] = &type metadata for WeightItem;
      v60[4] = sub_251981AC4();
    }

    else
    {
      sub_251995C40(v118, v21, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
      v53 = type metadata accessor for ConfirmDetailsProvider.Details();
      if ((*(*(v53 - 8) + 48))(v21, 1, v53) == 1)
      {
        sub_251995BE4(v21, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
        v54 = 0;
      }

      else
      {
        v54 = *&v21[*(v53 + 24)];
        v69 = v54;
        sub_251997F70(v21, type metadata accessor for ConfirmDetailsProvider.Details);
      }

      v60 = v117;
      sub_251979694(v116 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter, v119 + 8);
      *&v119[0] = v54;
      v122 = 2;
      sub_251994E4C();
      *&v120 = v70;
      *(&v120 + 1) = v71;
      v60[3] = &type metadata for HeightItem;
      v60[4] = sub_25199803C();
    }

    result = swift_allocObject();
    *v60 = result;
    v72 = v119[1];
    *(result + 1) = v119[0];
    *(result + 2) = v72;
    v73 = v120;
    *(result + 3) = v119[2];
    *(result + 4) = v73;
  }

  else
  {
    v50 = v41;
    sub_251995C40(v118, v28, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
    v51 = type metadata accessor for ConfirmDetailsProvider.Details();
    if ((*(*(v51 - 8) + 48))(v28, 1, v51) == 1)
    {
      sub_251995BE4(v28, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
      v52 = sub_2519AE4C8();
      (*(*(v52 - 8) + 56))(v37, 1, 1, v52);
    }

    else
    {
      sub_251995C40(v28, v37, &qword_27F469938, MEMORY[0x277CC8990]);
      sub_251997F70(v28, type metadata accessor for ConfirmDetailsProvider.Details);
    }

    v63 = v117;
    sub_25199008C(v37, v43 + *(v50 + 20));
    v64 = (v43 + *(v50 + 24));
    *v64 = sub_251990020;
    v64[1] = 0;
    LOBYTE(v119[0]) = 0;
    sub_251994E4C();
    *v43 = v65;
    v43[1] = v66;
    v63[3] = v50;
    v63[4] = sub_251999478(&qword_27F469D00, type metadata accessor for DateOfBirthItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
    return sub_2519980D8(v43, boxed_opaque_existential_1, type metadata accessor for DateOfBirthItem);
  }

  return result;
}

uint64_t ConfirmDetailsModel.deinit()
{
  sub_25197ABDC(v0 + 16);
  sub_251995BE4(v0 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter));
  return v0;
}

uint64_t ConfirmDetailsModel.__deallocating_deinit()
{
  sub_25197ABDC(v0 + 16);
  sub_251995BE4(v0 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_251997F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251997FD0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251995B90(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_25199803C()
{
  result = qword_27F469E50;
  if (!qword_27F469E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469E50);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2519980D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*sub_251998140(void *a1))(uint64_t *, void)
{
  v2 = v1;
  v38 = sub_2519AE718();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v38, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - v11;
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v37 - v16;
  v18 = sub_251995A88();
  v20 = v19;
  v21 = type metadata accessor for ConfirmDetailsProvider.Details();
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = *(v21 + 24);
    v23 = *(v20 + v22);
    *(v20 + v22) = a1;
    v24 = a1;
  }

  (v18)(v40, 0);
  LOBYTE(v39[0]) = 2;
  v25 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251995C40(v2 + v25, v17, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  sub_251997120(v39, v17, v40);
  sub_251995BE4(v17, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x253088710](2, 0);
  v26 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker);
  v27 = v38;
  if (v26 != 3)
  {
    v28 = sub_2519AE6F8() > v26;
    result = sub_2519AE6E8();
    if (__OFADD__(*v30, v28))
    {
      __break(1u);
      return result;
    }

    *v30 += v28;
    result(v39, 0);
  }

  (*(v4 + 32))(v12, v9, v27);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v34 = v41;
    v33 = v42;
    v35 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v39[3] = v34;
    v39[4] = *(v33 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v35, v34);
    (*(v31 + 8))(v12, v39, ObjectType, v31);
    swift_unknownObjectRelease();
    (*(v4 + 8))(v12, v27);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {
    (*(v4 + 8))(v12, v27);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

void (*sub_251998500(void *a1))(uint64_t *, void)
{
  v2 = v1;
  v38 = sub_2519AE718();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v38, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - v11;
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v37 - v16;
  v18 = sub_251995A88();
  v20 = v19;
  v21 = type metadata accessor for ConfirmDetailsProvider.Details();
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = *(v21 + 20);
    v23 = *(v20 + v22);
    *(v20 + v22) = a1;
    v24 = a1;
  }

  (v18)(v40, 0);
  LOBYTE(v39[0]) = 1;
  v25 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251995C40(v2 + v25, v17, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  sub_251997120(v39, v17, v40);
  sub_251995BE4(v17, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x253088710](1, 0);
  v26 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker);
  v27 = v38;
  if (v26 != 3)
  {
    v28 = sub_2519AE6F8() > v26;
    result = sub_2519AE6E8();
    if (__OFADD__(*v30, v28))
    {
      __break(1u);
      return result;
    }

    *v30 += v28;
    result(v39, 0);
  }

  (*(v4 + 32))(v12, v9, v27);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v34 = v41;
    v33 = v42;
    v35 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v39[3] = v34;
    v39[4] = *(v33 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v35, v34);
    (*(v31 + 8))(v12, v39, ObjectType, v31);
    swift_unknownObjectRelease();
    (*(v4 + 8))(v12, v27);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {
    (*(v4 + 8))(v12, v27);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

void (*sub_2519988C0(uint64_t a1))(uint64_t *, void)
{
  v2 = v1;
  v4 = sub_2519AE718();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v37 - v12;
  sub_251995B90(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = v37 - v17;
  v19 = sub_251995A88();
  v21 = v20;
  v22 = type metadata accessor for ConfirmDetailsProvider.Details();
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    sub_251995BE4(v21, &qword_27F469938, MEMORY[0x277CC8990]);
    v23 = sub_2519AE4C8();
    v24 = a1;
    v25 = *(v23 - 8);
    (*(v25 + 16))(v21, v24, v23);
    (*(v25 + 56))(v21, 0, 1, v23);
  }

  (v19)(v38, 0);
  LOBYTE(v37[0]) = 0;
  v26 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_251995C40(v2 + v26, v18, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  sub_251997120(v37, v18, v38);
  sub_251995BE4(v18, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x253088710](0, 0);
  v27 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker);
  if (v27 != 3)
  {
    v28 = sub_2519AE6F8() > v27;
    result = sub_2519AE6E8();
    if (__OFADD__(*v30, v28))
    {
      __break(1u);
      return result;
    }

    *v30 += v28;
    result(v37, 0);
  }

  (*(v5 + 32))(v13, v10, v4);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v33 = v39;
    v34 = v40;
    v35 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v37[3] = v33;
    v37[4] = *(v34 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
    (*(v31 + 8))(v13, v37, ObjectType, v31);
    swift_unknownObjectRelease();
    (*(v5 + 8))(v13, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  else
  {
    (*(v5 + 8))(v13, v4);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

unint64_t sub_251998D18()
{
  result = qword_27F469E58;
  if (!qword_27F469E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469E58);
  }

  return result;
}

unint64_t sub_251998D70()
{
  result = qword_27F469E60;
  if (!qword_27F469E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469E60);
  }

  return result;
}

uint64_t type metadata accessor for ConfirmDetailsModel()
{
  result = qword_27F469E68;
  if (!qword_27F469E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251998E68()
{
  sub_251995B90(319, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ConfirmDetailsModel.Row(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ConfirmDetailsModel.Row(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmDetailsModel.Row.HealthDetail(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfirmDetailsModel.Row.HealthDetail(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_251999478(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_2519994C0@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v6 = *a1;
  return sub_251997120(&v6, v3, a2);
}

void sub_251999504(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_251994930(255, a3);
    v4 = sub_2519AEEC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2519995A8()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem____lazy_storage___localeUnit;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem____lazy_storage___localeUnit);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem____lazy_storage___localeUnit);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_valueFormatter + 24);
    v5 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_valueFormatter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_valueFormatter), v4);
    v11 = 0;
    v6 = v0;
    v7 = (*(v5 + 8))(&v11, v4, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_25199969C(void *a1, double a2)
{
  v3 = (v2 + *a1);
  if (*(v3 + 8) != 1)
  {
    v11 = *v3;
    return;
  }

  v5 = [objc_opt_self() poundUnit];
  v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a2];

  v7 = sub_2519995A8();
  [v6 doubleValueForUnit_];
  v9 = v8;

  v10 = round(v9);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v10 > -9.22337204e18)
  {
    if (v10 < 9.22337204e18)
    {
      *v3 = v10;
      *(v3 + 8) = 0;
      return;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_2519997B8()
{
  type metadata accessor for PickerTableViewCell();
  sub_25199A55C(&qword_27F469AF0, 255, type metadata accessor for PickerTableViewCell);
  return sub_2519AE888();
}

uint64_t sub_251999824()
{
  swift_getObjectType();
  sub_251999C34();
  return sub_2519AEE58();
}

uint64_t sub_251999860()
{
  v1 = v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2519998B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25199991C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197A1AC;
}

uint64_t sub_2519999BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_251999A28()
{
  v1 = (v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_251999A80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id WeightPickerItem.init(initialValue:valueFormatter:)(uint64_t a1, uint64_t *a2)
{
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem____lazy_storage___localeUnit] = 0;
  v5 = &v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem____lazy_storage___localeMaxWeight];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem____lazy_storage___localeMinWeight];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem____lazy_storage___localeAverageWeight];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_currentWeight;
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_currentWeight] = 0;
  v9 = &v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[v8] = a1;
  sub_251979694(a2, &v2[OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_valueFormatter]);
  v12.receiver = v2;
  v12.super_class = type metadata accessor for WeightPickerItem();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v10;
}

unint64_t sub_251999C34()
{
  result = qword_27F469E98;
  if (!qword_27F469E98)
  {
    type metadata accessor for WeightPickerItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469E98);
  }

  return result;
}

void sub_251999C9C(void *a1, char a2)
{
  v4 = sub_2519995A8();
  [a1 doubleValueForUnit_];
  v6 = v5;

  v7 = round(v6);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    return;
  }

  sub_251999674();
  v9 = v8;
  sub_25199965C();
  if (v10 < v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_2519AEE08();
}

id WeightPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeightPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeightPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251999ED8()
{
  v1 = (*v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_251999F34(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_251999F98())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_251999FFC()
{
  v1 = *v0;
  swift_getObjectType();
  sub_251999C34();
  return sub_2519AEE58();
}

uint64_t sub_25199A038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

void WeightPickerItem.initialSelections.getter()
{
  sub_25198BEE8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2519B0FA0;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_currentWeight);
  if (v2)
  {
    v3 = v2;
    sub_251999C9C(v3, 1);
    v5 = v4;
  }

  else
  {
    sub_251999684();
    v5 = v6;
  }

  sub_251999674();
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v5 - v7;
    *(v1 + 40) = 0;
  }
}

Swift::Int __swiftcall WeightPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  if (numberOfRowsInComponent)
  {
    return 0;
  }

  sub_25199965C();
  v4 = v3;
  sub_251999674();
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall WeightPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  sub_25199A310(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void sub_25199A310(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_25199965C();
    if (v4 >= a1)
    {
      v5 = sub_2519995A8();
      sub_251999674();
      if (__OFADD__(a1, v6))
      {
        __break(1u);
      }

      else
      {
        v7 = [objc_opt_self() quantityWithUnit:v5 doubleValue:(a1 + v6)];

        v8 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_valueFormatter + 24);
        v9 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_valueFormatter + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_valueFormatter), v8);
        v10 = 0;
        (*(v9 + 16))(&v10, v7, v8, v9);
      }
    }
  }
}

void sub_25199A408(uint64_t a1)
{
  v3 = sub_2519995A8();
  sub_251999674();
  if (__OFADD__(a1, v4))
  {
    __break(1u);
  }

  else
  {
    v5 = [objc_opt_self() quantityWithUnit:v3 doubleValue:(a1 + v4)];

    v6 = *(v1 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_currentWeight);
    *(v1 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_currentWeight) = v5;
    v7 = v5;

    v8 = v1 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v1, v7, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_25199A55C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *BirthdayPickerItem.__allocating_init(initialValue:defaultAge:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  *(v12 + 5) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem____lazy_storage___calendar;
  v14 = sub_2519AE6C8();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_currentValue;
  v16 = sub_2519AE4C8();
  (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  swift_beginAccess();
  sub_25199C228(a1, &v12[v15], &qword_27F469938, MEMORY[0x277CC8990]);
  swift_endAccess();
  *&v12[OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_defaultAge] = a2;
  v17 = &v12[OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_dateGenerator];
  *v17 = a3;
  *(v17 + 1) = a4;
  return v12;
}

uint64_t sub_25199A918()
{
  type metadata accessor for CalendarPickerTableViewCell();
  sub_25199BEDC(&qword_27F469F18, type metadata accessor for CalendarPickerTableViewCell);
  return sub_2519AE888();
}

uint64_t sub_25199A980()
{
  v2 = *v0;
  sub_25199B104();
  return sub_2519AEE58();
}

uint64_t sub_25199A9D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_25199AA38()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25199AA84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_25199AB28()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_25199AB64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25199ABC4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_25199AC58;
}

void sub_25199AC58(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t sub_25199ACDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2519AE658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x277CC99E8];
  sub_25199BAF4(0, &qword_27F469F28, MEMORY[0x277CC99E8]);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v25[-v17];
  v19 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem____lazy_storage___calendar;
  swift_beginAccess();
  sub_25199C1BC(v1 + v19, v18, &qword_27F469F28, v9);
  v20 = sub_2519AE6C8();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) != 1)
  {
    return (*(v21 + 32))(a1, v18, v20);
  }

  v22 = v18;
  v23 = MEMORY[0x277CC99E8];
  sub_25199B22C(v22, &qword_27F469F28, MEMORY[0x277CC99E8]);
  (*(v4 + 104))(v8, *MEMORY[0x277CC9830], v3);
  sub_2519AE668();
  (*(v4 + 8))(v8, v3);
  (*(v21 + 16))(v15, a1, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  swift_beginAccess();
  sub_25199C228(v15, v1 + v19, &qword_27F469F28, v23);
  return swift_endAccess();
}

char *BirthdayPickerItem.init(initialValue:defaultAge:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 5) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem____lazy_storage___calendar;
  v10 = sub_2519AE6C8();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_currentValue;
  v12 = sub_2519AE4C8();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  swift_beginAccess();
  sub_25199C228(a1, &v4[v11], &qword_27F469938, MEMORY[0x277CC8990]);
  swift_endAccess();
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_defaultAge] = a2;
  v13 = &v4[OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_dateGenerator];
  *v13 = a3;
  *(v13 + 1) = a4;
  return v4;
}

unint64_t sub_25199B104()
{
  result = qword_27F469F20;
  if (!qword_27F469F20)
  {
    type metadata accessor for BirthdayPickerItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469F20);
  }

  return result;
}

uint64_t type metadata accessor for BirthdayPickerItem()
{
  result = qword_27F469F38;
  if (!qword_27F469F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BirthdayPickerItem.deinit()
{
  v1 = *(v0 + 24);

  sub_25197ABDC(v0 + 32);
  sub_25199B22C(v0 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem____lazy_storage___calendar, &qword_27F469F28, MEMORY[0x277CC99E8]);
  sub_25199B22C(v0 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_currentValue, &qword_27F469938, MEMORY[0x277CC8990]);
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_dateGenerator + 8);

  return v0;
}

uint64_t sub_25199B22C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_25199BAF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t BirthdayPickerItem.__deallocating_deinit()
{
  v1 = v0[3];

  sub_25197ABDC((v0 + 4));
  sub_25199B22C(v0 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem____lazy_storage___calendar, &qword_27F469F28, MEMORY[0x277CC99E8]);
  sub_25199B22C(v0 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_currentValue, &qword_27F469938, MEMORY[0x277CC8990]);
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_dateGenerator + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_25199B358()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_25199B3A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t (*sub_25199B400())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25199B454()
{
  v2 = **v0;
  sub_25199B104();
  return sub_2519AEE58();
}

uint64_t sub_25199B4AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t BirthdayPickerItem.initialDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_2519AE608();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2519AE6B8();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2519AE6C8();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25199BAF4(0, &qword_27F469D10, MEMORY[0x277CC9578]);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v50 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v49 - v22;
  v24 = MEMORY[0x277CC8990];
  sub_25199BAF4(0, &qword_27F469938, MEMORY[0x277CC8990]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v49 - v28;
  v30 = sub_2519AE4C8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_currentValue;
  swift_beginAccess();
  sub_25199C1BC(v2 + v36, v29, &qword_27F469938, v24);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_25199B22C(v29, &qword_27F469938, MEMORY[0x277CC8990]);
    v38 = v56;
    v37 = v57;
  }

  else
  {
    (*(v31 + 32))(v35, v29, v30);
    sub_25199ACDC(v15);
    sub_2519AE688();
    (*(v58 + 8))(v15, v59);
    (*(v31 + 8))(v35, v30);
    v38 = v56;
    v37 = v57;
    if ((*(v56 + 48))(v23, 1, v57) != 1)
    {
      return (*(v38 + 32))(v55, v23, v37);
    }

    sub_25199B22C(v23, &qword_27F469D10, MEMORY[0x277CC9578]);
  }

  v39 = v2;
  sub_25199ACDC(v15);
  v41 = v53;
  v40 = v54;
  v42 = v15;
  v43 = v52;
  result = (*(v53 + 104))(v52, *MEMORY[0x277CC9988], v54);
  if (__OFSUB__(0, *(v39 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_defaultAge)))
  {
    __break(1u);
  }

  else
  {
    v45 = *(v39 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_dateGenerator);
    v46 = v51;
    v56 = *(v39 + OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_dateGenerator + 8);
    v57 = v45;
    (v45)(result);
    v47 = v50;
    sub_2519AE698();
    (*(v38 + 8))(v46, v37);
    (*(v41 + 8))(v43, v40);
    (*(v58 + 8))(v42, v59);
    v48 = *(v38 + 48);
    if (v48(v47, 1, v37) == 1)
    {
      v57();
      result = v48(v47, 1, v37);
      if (result != 1)
      {
        return sub_25199B22C(v47, &qword_27F469D10, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      return (*(v38 + 32))(v55, v47, v37);
    }
  }

  return result;
}

void sub_25199BAF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2519AF0E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25199BB9C(uint64_t a1)
{
  v2 = v1;
  v27[1] = a1;
  v28 = MEMORY[0x277CC8990];
  sub_25199BAF4(0, &qword_27F469938, MEMORY[0x277CC8990]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v27 - v6;
  v8 = sub_2519AE6C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2519AE4C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25199ACDC(v13);
  v20 = sub_2519AE678();
  (*(v9 + 8))(v13, v8);
  v21 = sub_2519AE5D8();
  v22 = [v20 hk:v21 dateOfBirthDateComponentsWithDate:?];

  sub_2519AE4B8();
  (*(v15 + 16))(v7, v19, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  v23 = OBJC_IVAR____TtC16HealthMobilityUI18BirthdayPickerItem_currentValue;
  swift_beginAccess();
  sub_25199C228(v7, v2 + v23, &qword_27F469938, v28);
  swift_endAccess();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v24 + 8))(v2, v19, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_25199BEDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25199BF40()
{
  sub_25199BAF4(319, &qword_27F469F28, MEMORY[0x277CC99E8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25199BAF4(319, &qword_27F469938, MEMORY[0x277CC8990]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_25199C1BC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25199BAF4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25199C228(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25199BAF4(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t HeightItem.init(height:valueFormatter:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[6] = 0;
  a3[7] = 0;
  *a3 = a1;
  return sub_251975F90(a2, (a3 + 1));
}

uint64_t HeightItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251981334();
  return sub_2519AE888();
}

uint64_t HeightItem.uniqueIdentifier.getter()
{
  sub_25199C39C();
  v1 = sub_2519AEE58();
  v2 = *v0;
  sub_25198148C();
  v3 = v2;
  v4 = sub_2519AEE58();
  v6 = v5;

  MEMORY[0x253088EC0](v4, v6);

  return v1;
}

unint64_t sub_25199C39C()
{
  result = qword_27F469F48;
  if (!qword_27F469F48)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469F48);
  }

  return result;
}

uint64_t HeightItem.baseIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t HeightItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_25199C46C()
{
  sub_25199C39C();
  v1 = sub_2519AEE58();
  v2 = *v0;
  sub_25198148C();
  v3 = v2;
  v4 = sub_2519AEE58();
  v6 = v5;

  MEMORY[0x253088EC0](v4, v6);

  return v1;
}

uint64_t sub_25199C51C(uint64_t a1)
{
  v2 = sub_25199803C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t HeightItem.title.getter()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

uint64_t HeightItem.value.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v2);
    v8 = 1;
    v4 = *(v3 + 16);
    v5 = v1;
    v6 = v4(&v8, v5, v2, v3);

    return v6;
  }

  else
  {
    if (qword_27F469438 != -1)
    {
      swift_once();
    }

    return sub_2519AE4D8();
  }
}

unint64_t sub_25199C704()
{
  result = qword_27F469F50;
  if (!qword_27F469F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469F50);
  }

  return result;
}

uint64_t sub_25199C758()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

uint64_t sub_25199C7F8()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469F58);
  v1 = __swift_project_value_buffer(v0, qword_27F469F58);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_25199C8C0(uint64_t a1, uint64_t *a2)
{
  sub_251980888(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_251980988(v6, v3 + v4);
  swift_endAccess();
  sub_25199C948();
  return sub_2519948D4(v6, &qword_27F4697E0, &qword_27F4697E8);
}

void sub_25199C948()
{
  swift_getObjectType();
  v1 = sub_2519AE608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_251980888(v0 + v7, v33);
  if (v34)
  {
    sub_251994930(0, &qword_27F4697E8);
    sub_251994930(0, &qword_27F469F88);
    if (swift_dynamicCast())
    {
      if (*(&v36 + 1))
      {
        sub_251975F90(&v35, v38);
        sub_251980888(v0 + v7, v33);
        if (v34)
        {
          sub_251994930(0, &unk_27F4698E0);
          if (swift_dynamicCast())
          {
            if (*(&v36 + 1))
            {
              __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
              v8 = sub_2519AE968();
              v10 = v9;
              __swift_destroy_boxed_opaque_existential_0Tm(&v35);
              v11 = v8;
LABEL_18:
              v25 = v0;
              sub_25199D780(v11, v10);

              v26 = v39;
              v27 = v40;
              __swift_project_boxed_opaque_existential_1(v38, v39);
              (*(v27 + 8))(v26, v27);
              v28 = sub_25199CFE4();
              v29 = sub_2519AE5D8();
              [v28 setDate:v29 animated:0];

              v30 = v39;
              v31 = v40;
              __swift_project_boxed_opaque_existential_1(v38, v39);
              (*(v31 + 16))(v25, v6, v30, v31);
              (*(v2 + 8))(v6, v1);
              __swift_destroy_boxed_opaque_existential_0Tm(v38);
              return;
            }
          }

          else
          {
            v37 = 0;
            v35 = 0u;
            v36 = 0u;
          }
        }

        else
        {
          sub_2519948D4(v33, &qword_27F4697E0, &qword_27F4697E8);
          v35 = 0u;
          v36 = 0u;
          v37 = 0;
        }

        sub_2519948D4(&v35, &qword_27F4698D8, &unk_27F4698E0);
        v11 = 0;
        v10 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    sub_2519948D4(v33, &qword_27F4697E0, &qword_27F4697E8);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_2519948D4(&v35, &qword_27F469F80, &qword_27F469F88);
  if (qword_27F4694B0 != -1)
  {
    swift_once();
  }

  v12 = sub_2519AEAE8();
  __swift_project_value_buffer(v12, qword_27F469F58);
  v13 = v0;
  v14 = sub_2519AEAC8();
  v15 = sub_2519AEF38();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v16 = 136446722;
    v18 = sub_2519AF2A8();
    v20 = sub_251978CDC(v18, v19, v38);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_251978CDC(1835365481, 0xE400000000000000, v38);
    *(v16 + 22) = 2082;
    sub_251994820(0, &qword_27F4697E0, &qword_27F4697E8);
    *&v35 = v21;
    sub_251981014();
    v22 = sub_2519AEE58();
    v24 = sub_251978CDC(v22, v23, v38);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_251974000, v14, v15, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to CalendarPickerTableViewCellDataSource", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v17, -1, -1);
    MEMORY[0x2530898E0](v16, -1, -1);
  }
}

uint64_t sub_25199CE70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v1 + v3, a1);
}

uint64_t sub_25199CEC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_251980988(a1, v1 + v3);
  swift_endAccess();
  sub_25199C948();
  return sub_2519948D4(a1, &qword_27F4697E0, &qword_27F4697E8);
}

void (*sub_25199CF4C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25199CFB0;
}

void sub_25199CFB0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_25199C948();
  }
}

id sub_25199CFE4()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell____lazy_storage___picker;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell____lazy_storage___picker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell____lazy_storage___picker);
  }

  else
  {
    v4 = sub_25199D048(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_25199D048(uint64_t a1)
{
  v22 = a1;
  v1 = sub_2519AE6C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2519AE608();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setPreferredDatePickerStyle_];
  [v13 setDatePickerMode_];
  sub_2519AE5F8();
  v14 = sub_2519AE5D8();
  v15 = *(v8 + 8);
  v15(v12, v7);
  [v13 setMaximumDate_];

  v16 = objc_opt_self();
  sub_2519AE6A8();
  v17 = sub_2519AE678();
  (*(v2 + 8))(v6, v1);
  v18 = [v16 hk:v17 minimumDateForBirthDateWithCalendar:?];

  sub_2519AE5E8();
  v19 = sub_2519AE5D8();
  v15(v12, v7);
  [v13 setMinimumDate_];

  [v13 addTarget:v22 action:sel_pickerDateChanged_ forControlEvents:4096];
  return v13;
}

char *sub_25199D2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell____lazy_storage___picker] = 0;
  if (a3)
  {
    v6 = sub_2519AEE28();
  }

  else
  {
    v6 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for CalendarPickerTableViewCell();
  v7 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  v9 = [v8 contentView];
  v10 = sub_25199CFE4();
  [v9 addSubview_];

  v11 = *&v8[OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell____lazy_storage___picker];
  v12 = [v8 contentView];

  [v11 hk:v12 alignConstraintsWithView:?];
  return v8;
}

uint64_t sub_25199D4F4(void *a1)
{
  v3 = sub_2519AE608();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v9 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_251980888(v1 + v9, v15);
  if (v16)
  {
    sub_251994930(0, &qword_27F4697E8);
    sub_251994930(0, &qword_27F469F88);
    if (swift_dynamicCast())
    {
      v10 = *(&v18 + 1);
      if (*(&v18 + 1))
      {
        v11 = v19;
        __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
        v12 = [a1 date];
        sub_2519AE5E8();

        (*(v11 + 16))(v1, v8, v10, v11);
        (*(v4 + 8))(v8, v3);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      }
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    sub_2519948D4(v15, &qword_27F4697E0, &qword_27F4697E8);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  return sub_2519948D4(&v17, &qword_27F469F80, &qword_27F469F88);
}

void sub_25199D780(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_251980C7C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2519B12D0;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    *(v5 + 48) = 0x7261646E656C6143;
    *(v5 + 56) = 0xE800000000000000;
    *(v5 + 64) = 0x72656B636950;
    *(v5 + 72) = 0xE600000000000000;

    v6 = sub_2519AEEB8();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {

    [v2 setAccessibilityIdentifier_];
  }
}

id CalendarPickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarPickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t ConfirmDetailsDataSource.__allocating_init(detailsProvider:model:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ConfirmDetailsDataSource.init(detailsProvider:model:)(a1, a2);
}

uint64_t sub_25199DAE0()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469F90);
  v1 = __swift_project_value_buffer(v0, qword_27F469F90);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_25199DBB0()
{
  sub_2519AF258();
  MEMORY[0x2530892A0](0);
  return sub_2519AF278();
}

uint64_t sub_25199DC1C()
{
  sub_2519AF258();
  MEMORY[0x2530892A0](0);
  return sub_2519AF278();
}

uint64_t sub_25199DC70()
{
  v1 = v0 + qword_27F469FA8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_25199DCC0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F469FA8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25199DD2C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_27F469FA8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197A1AC;
}

uint64_t sub_25199DE1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_27F469FB0);
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_25197A770(v3 + v4, a1);
}

size_t ConfirmDetailsDataSource.init(detailsProvider:model:)(uint64_t a1, uint64_t a2)
{
  v96 = sub_2519AE8C8();
  v5 = *(v96 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v90 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2519A0A74(0, &qword_27F469FB8, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v85 = &v73 - v11;
  v81 = sub_2519AED58();
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  (MEMORY[0x28223BE20])();
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25199EAE0();
  v84 = v14;
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  (MEMORY[0x28223BE20])();
  v82 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25199EC24();
  v88 = v17;
  v87 = *(v17 - 8);
  v18 = *(v87 + 64);
  (MEMORY[0x28223BE20])();
  v86 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2519AE638();
  v20 = *(v98 - 8);
  v21 = *(v20 + 64);
  (MEMORY[0x28223BE20])();
  v97 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519A0A74(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, v8);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v26 = &v73 - v25;
  *(v2 + qword_27F469FA8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_27F469FF0) = 0;
  *(v2 + qword_27F469FF8) = a1;
  v78 = v2;
  *(v2 + qword_27F469FB0) = a2;
  v27 = type metadata accessor for ConfirmDetailsProvider.Details();
  v28 = *(*(v27 - 8) + 56);
  v77 = v27;
  v28(v26, 1, 1);
  v29 = *(*a2 + 208);

  v30 = v29(v26);
  sub_2519A02F4(v26, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  v31 = *(v30 + 16);
  if (v31)
  {
    v75 = a1;
    v76 = a2;
    v107 = MEMORY[0x277D84F90];
    result = sub_25199FCC0(0, v31, 0);
    v33 = v107;
    v93 = v30 + 32;
    v92 = (v20 + 8);
    v91 = v5 + 32;
    v34 = v90;
    v74 = v20;
    v35 = 0;
    v89 = v5;
    v94 = v31;
    v95 = v30;
    while (v35 < *(v30 + 16))
    {
      v100 = v35;
      v101 = v33;
      v36 = *(v93 + 8 * v35);
      v37 = *(v36 + 16);
      if (v37)
      {
        v106 = MEMORY[0x277D84F90];

        sub_25199FCE0(0, v37, 0);
        v38 = v106;
        v99 = v36;
        v39 = v36 + 32;
        do
        {
          sub_251979694(v39, v102);
          sub_251994930(0, &qword_27F4697E8);
          sub_251994930(0, &qword_27F469E90);
          swift_dynamicCast();
          v106 = v38;
          v41 = *(v38 + 16);
          v40 = *(v38 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_25199FCE0((v40 > 1), v41 + 1, 1);
          }

          v42 = v104;
          v43 = v105;
          v44 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
          v45 = *(*(v42 - 8) + 64);
          MEMORY[0x28223BE20](v44, v44);
          v47 = &v73 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v48 + 16))(v47);
          sub_2519A025C(v41, v47, &v106, v42, v43);
          __swift_destroy_boxed_opaque_existential_0Tm(v103);
          v38 = v106;
          v39 += 40;
          --v37;
        }

        while (v37);
        v5 = v89;
        v34 = v90;
      }

      else
      {
        v49 = *(v93 + 8 * v35);
      }

      v50 = v97;
      sub_2519AE628();
      sub_2519AE618();
      (*v92)(v50, v98);
      sub_2519AE8B8();

      v33 = v101;
      v107 = v101;
      v52 = *(v101 + 16);
      v51 = *(v101 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_25199FCC0(v51 > 1, v52 + 1, 1);
        v33 = v107;
      }

      v35 = v100 + 1;
      *(v33 + 16) = v52 + 1;
      result = (*(v5 + 32))(v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v52, v34, v96);
      v30 = v95;
      if (v35 == v94)
      {

        a1 = v75;
        v20 = v74;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    v103[0] = 0;
    v103[1] = 0xE000000000000000;
    sub_2519AF148();

    strcpy(v103, "MutableArray<");
    HIWORD(v103[1]) = -4864;
    v53 = v97;
    sub_2519AE628();
    v54 = sub_2519AE618();
    v56 = v55;
    (*(v20 + 8))(v53, v98);
    MEMORY[0x253088EC0](v54, v56);

    MEMORY[0x253088EC0](62, 0xE100000000000000);
    v57 = sub_2519AE8E8();
    v58 = *(v57 + qword_27F469FB0);
    swift_beginAccess();
    *(v58 + 24) = &protocol witness table for ConfirmDetailsDataSource;
    swift_unknownObjectWeakAssign();
    v59 = *(*a1 + 160);
    v60 = swift_retain_n();
    v102[0] = v59(v60);
    sub_25199EB8C();
    sub_2519A036C(&qword_27F469FD0, sub_25199EB8C);
    v61 = v82;
    sub_2519AED08();

    sub_25197FBF8();
    v62 = v80;
    v63 = v79;
    v64 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277D851C0], v81);
    v65 = sub_2519AF068();
    (*(v62 + 8))(v63, v64);
    v102[0] = v65;
    v66 = sub_2519AF018();
    v67 = v85;
    (*(*(v66 - 8) + 56))(v85, 1, 1, v66);
    sub_2519A036C(&qword_27F469FE0, sub_25199EAE0);
    sub_2519A036C(&qword_27F469FE8, sub_25197FBF8);
    v68 = v86;
    v69 = v84;
    sub_2519AED18();
    sub_2519A02F4(v67, &qword_27F469FB8, MEMORY[0x277D85248]);

    (*(v83 + 8))(v61, v69);
    swift_allocObject();
    swift_weakInit();

    sub_2519A036C(&qword_27F46A000, sub_25199EC24);
    v70 = v88;
    v71 = sub_2519AED28();

    (*(v87 + 8))(v68, v70);
    v72 = *(v57 + qword_27F469FF0);
    *(v57 + qword_27F469FF0) = v71;

    return v57;
  }

  return result;
}

void sub_25199EAE0()
{
  if (!qword_27F469FC0)
  {
    sub_25199EB8C();
    type metadata accessor for ConfirmDetailsProvider.Details();
    sub_2519A036C(&qword_27F469FD0, sub_25199EB8C);
    v0 = sub_2519AEC28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469FC0);
    }
  }
}

void sub_25199EB8C()
{
  if (!qword_27F469FC8)
  {
    sub_2519A0A74(255, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x277D83D88]);
    v0 = sub_2519AEC78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469FC8);
    }
  }
}

void sub_25199EC24()
{
  if (!qword_27F469FD8)
  {
    sub_25199EAE0();
    sub_25197FBF8();
    sub_2519A036C(&qword_27F469FE0, sub_25199EAE0);
    sub_2519A036C(&qword_27F469FE8, sub_25197FBF8);
    v0 = sub_2519AEC58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469FD8);
    }
  }
}

uint64_t sub_25199ED18(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(**(result + qword_27F469FB0) + 200))(a1);
  }

  return result;
}

uint64_t sub_25199EDAC()
{
  (*(*v0 + class metadata base offset for ConfirmDetailsDataSource + 192))();
  v1 = v0 + qword_27F469FA8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25199EE7C()
{
  (*(*v0 + class metadata base offset for ConfirmDetailsDataSource + 200))();
  v1 = v0 + qword_27F469FA8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_25199EF4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(*v1 + class metadata base offset for ConfirmDetailsDataSource + 208);

    v4(0, v3);

    v5 = v1 + qword_27F469FA8;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27F4694B8 != -1)
    {
      swift_once();
    }

    v8 = sub_2519AEAE8();
    __swift_project_value_buffer(v8, qword_27F469F90);
    swift_bridgeObjectRetain_n();
    v9 = sub_2519AEAC8();
    v10 = sub_2519AEF48();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[0] = v12;
      *v11 = 136446722;
      v13 = sub_2519AF2A8();
      v15 = sub_251978CDC(v13, v14, v16);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_251978CDC(0xD000000000000019, 0x80000002519B4910, v16);
      *(v11 + 22) = 2048;

      *(v11 + 24) = v2;

      _os_log_impl(&dword_251974000, v9, v10, "[%{public}s.%{public}s]: Received unexpected number of sections: %ld", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v12, -1, -1);
      MEMORY[0x2530898E0](v11, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t sub_25199F1E8()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_2519A036C(&qword_27F4698F0, type metadata accessor for TitleValueTableViewCell);
  sub_2519AEF08();
  type metadata accessor for MultiselectTableViewCell();
  sub_2519A036C(&qword_27F469670, type metadata accessor for MultiselectTableViewCell);
  sub_2519AEF08();
  type metadata accessor for PickerTableViewCell();
  sub_2519A036C(&qword_27F469AF0, type metadata accessor for PickerTableViewCell);
  sub_2519AEF08();
  type metadata accessor for CalendarPickerTableViewCell();
  sub_2519A036C(&qword_27F469F18, type metadata accessor for CalendarPickerTableViewCell);
  return sub_2519AEF08();
}

double sub_25199F394@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

char *sub_25199F3A4(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_2519AEBF8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2519A03B4();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2519AE708();
  v18 = *(v12 + 56);
  *v16 = v17 != 0;
  v19 = sub_2519AE878();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v16[v18], a1, v19);
  if (v17)
  {
    goto LABEL_2;
  }

  v22 = (*(v20 + 88))(&v16[v18], v19);
  if (v22 == *MEMORY[0x277D10DF0])
  {
    if (qword_27F469440 != -1)
    {
      swift_once();
    }

    sub_2519AE4D8();
    sub_2519AE4D8();
    sub_25199F7E8();

    v23 = objc_allocWithZone(type metadata accessor for ConfirmDetailsLearnMoreView());

    return sub_2519A6CE0(v10, a2, v3, &off_2863DA910);
  }

  else
  {
    if (v22 != *MEMORY[0x277D10DE8])
    {
LABEL_2:
      sub_2519A0474(v16);
      return 0;
    }

    if (qword_27F469440 != -1)
    {
      swift_once();
    }

    sub_2519AE4D8();
    sub_2519AEBD8();

    sub_2519AEBC8();
    v24 = [objc_opt_self() preferredFontForTextStyle_];
    v25 = sub_2519AEB78();
    sub_2519AEB38();
    v25(v29, 0);
    v26 = [objc_opt_self() labelColor];
    v27 = sub_2519AEB78();
    sub_2519AEB58();
    v27(v29, 0);

    v28 = objc_allocWithZone(type metadata accessor for ConfirmDetailsFooterView());
    return sub_25198E228(v10, a2);
  }
}

id sub_25199F7E8()
{
  sub_2519AEBE8();

  sub_2519AEBC8();
  v0 = objc_opt_self();
  result = [v0 _preferredFontForTextStyle_variant_];
  if (result)
  {
    v2 = sub_2519AEB78();
    sub_2519AEB38();
    v2(v10, 0);
    v3 = objc_opt_self();
    v4 = [v3 labelColor];
    v5 = sub_2519AEB78();
    sub_2519AEB58();
    v5(v10, 0);

    sub_2519AEB18();
    v6 = [v0 preferredFontForTextStyle_];
    v7 = sub_2519AEB98();
    sub_2519AEB38();
    v7(v10, 0);
    v8 = [v3 labelColor];
    v9 = sub_2519AEB98();
    sub_2519AEB58();
    return v9(v10, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25199FA1C()
{
  sub_25197ABDC(v0 + qword_27F469FA8);
  v1 = *(v0 + qword_27F469FF8);

  v2 = *(v0 + qword_27F469FB0);

  v3 = *(v0 + qword_27F469FF0);
}

uint64_t ConfirmDetailsDataSource.deinit()
{
  v0 = sub_2519AE928();
  sub_25197ABDC(v0 + qword_27F469FA8);
  v1 = *(v0 + qword_27F469FF8);

  v2 = *(v0 + qword_27F469FB0);

  v3 = *(v0 + qword_27F469FF0);

  return v0;
}

uint64_t ConfirmDetailsDataSource.__deallocating_deinit()
{
  v0 = sub_2519AE928();
  v1 = qword_27F469FA8;

  sub_25197ABDC(v2 + v1);
  v3 = *(v0 + qword_27F469FF8);

  v4 = *(v0 + qword_27F469FB0);

  v5 = *(v0 + qword_27F469FF0);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25199FB7C()
{
  v1 = v0 + qword_27F469FA8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_25199FC80(void *a1, int64_t a2, char a3)
{
  result = sub_25199FF8C(a1, a2, a3, *v3, &qword_27F46A038, &qword_27F469E80, &qword_27F4697E8, MEMORY[0x277D10D48]);
  *v3 = result;
  return result;
}

size_t sub_25199FCC0(size_t a1, int64_t a2, char a3)
{
  result = sub_25199FD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25199FCE0(void *a1, int64_t a2, char a3)
{
  result = sub_2519A00F4(a1, a2, a3, *v3, &qword_27F46A030, &qword_27F469E90, MEMORY[0x277D10D40]);
  *v3 = result;
  return result;
}

void *sub_25199FD18(void *a1, int64_t a2, char a3)
{
  result = sub_25199FF8C(a1, a2, a3, *v3, &qword_27F46A048, &qword_27F469E88, &qword_27F469E90, MEMORY[0x277D10D40]);
  *v3 = result;
  return result;
}

void *sub_25199FD58(void *a1, int64_t a2, char a3)
{
  result = sub_2519A00F4(a1, a2, a3, *v3, &qword_27F46A040, &qword_27F4697E8, MEMORY[0x277D10D48]);
  *v3 = result;
  return result;
}

size_t sub_25199FD90(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2519A0A74(0, &qword_27F469D90, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v10 = *(sub_2519AE8C8() - 8);
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
  v15 = *(sub_2519AE8C8() - 8);
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

void *sub_25199FF8C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    sub_2519A0AD8(0, a5, a6, a7, a8);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 25;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 3);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2519A0A0C(0, a6, a7, a8, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_2519A00F4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_2519A0A0C(0, a5, a6, a7, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251994930(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_2519A025C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_251999560(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2519A02F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2519A0A74(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2519A036C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2519A03B4()
{
  if (!qword_27F46A008)
  {
    sub_2519A0424();
    sub_2519AE878();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46A008);
    }
  }
}

void sub_2519A0424()
{
  if (!qword_27F46A010)
  {
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A010);
    }
  }
}

uint64_t sub_2519A0474(uint64_t a1)
{
  sub_2519A03B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ConfirmDetailsDataSource()
{
  result = qword_27F46A018;
  if (!qword_27F46A018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2519A09B8()
{
  result = qword_27F46A028;
  if (!qword_27F46A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46A028);
  }

  return result;
}

void sub_2519A0A0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251994930(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2519A0A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2519A0AD8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_2519A0A0C(255, a3, a4, a5, MEMORY[0x277D83940]);
    v6 = sub_2519AF1F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2519A0B6C()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F46A050);
  v1 = __swift_project_value_buffer(v0, qword_27F46A050);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2519A0C34()
{
  sub_2519A57CC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  sub_2519A58D8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  sub_2519A5B04(0, &qword_27F46A0D0, MEMORY[0x277CBCEA8]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0;
  v17 = sub_2519AECE8();
  sub_2519AE9B8();
  sub_2519A5864();
  sub_2519AED08();
  sub_251985814(0, &qword_27F46A068, 0x277CCD460);
  v17 = sub_2519AEA38();
  sub_2519A4C40();
  sub_2519A5784(&qword_27F46A0F0, sub_2519A57CC);
  sub_2519A5784(&qword_27F46A080, sub_2519A4C40);
  sub_2519AEC38();
  sub_2519A5784(&qword_27F46A0F8, sub_2519A58D8);
  v14 = sub_2519AECF8();

  (*(v6 + 8))(v10, v5);
  return v14;
}

uint64_t sub_2519A0F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2519A57CC();
  v29 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  sub_2519A58D8();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  (*(v16 + 16))(&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  (*(v16 + 32))(v20 + v19, &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2519A5B04(0, &qword_27F46A0D0, MEMORY[0x277CBCEA8]);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v30 = sub_2519AECE8();
  sub_2519AE9B8();
  sub_2519A5864();
  sub_2519AED08();
  v30 = sub_2519AEA18();
  sub_2519A4C40();
  sub_2519A5784(&qword_27F46A0F0, sub_2519A57CC);
  sub_2519A5784(&qword_27F46A080, sub_2519A4C40);
  sub_2519AEC38();
  sub_2519A5784(&qword_27F46A0F8, sub_2519A58D8);
  v24 = v28;
  v25 = sub_2519AECF8();

  (*(v10 + 8))(v15, v24);
  return v25;
}

uint64_t sub_2519A12D0(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a1;
  v29 = a2;
  v4 = sub_2519AED48();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2519AED78();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2519AED58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251985814(0, &qword_280DD9200, 0x277D85C78);
  (*(v15 + 104))(v19, *MEMORY[0x277D851B8], v14);
  v20 = sub_2519AF068();
  (*(v15 + 8))(v19, v14);
  v21 = swift_allocObject();
  v22 = v28;
  v23 = v29;
  v21[2] = a3;
  v21[3] = v22;
  v21[4] = v23;
  aBlock[4] = sub_2519A5C24;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_58;
  v24 = _Block_copy(aBlock);
  v25 = a3;

  sub_2519AED68();
  v32 = MEMORY[0x277D84F90];
  sub_2519A5784(&qword_280DD9240, MEMORY[0x277D85198]);
  sub_2519A4F30(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();
  sub_2519AF108();
  MEMORY[0x253089080](0, v13, v8, v24);
  _Block_release(v24);

  (*(v31 + 8))(v8, v4);
  (*(v9 + 8))(v13, v30);
}

uint64_t sub_2519A1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a1;
  v34 = a3;
  v38 = a2;
  v39 = sub_2519AED48();
  v42 = *(v39 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v39, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2519AED78();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  v19 = sub_2519AED58();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251985814(0, &qword_280DD9200, 0x277D85C78);
  (*(v20 + 104))(v24, *MEMORY[0x277D851B8], v19);
  v35 = sub_2519AF068();
  (*(v20 + 8))(v24, v19);
  (*(v16 + 16))(&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v34, a4);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = a4;
  *(v26 + 24) = v27;
  (*(v16 + 32))(v26 + v25, &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v28 = (v26 + ((v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v38;
  *v28 = v37;
  v28[1] = v29;
  aBlock[4] = sub_2519A5A80;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_3;
  v30 = _Block_copy(aBlock);

  sub_2519AED68();
  v43 = MEMORY[0x277D84F90];
  sub_2519A5784(&qword_280DD9240, MEMORY[0x277D85198]);
  sub_2519A4F30(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();
  v31 = v39;
  sub_2519AF108();
  v32 = v35;
  MEMORY[0x253089080](0, v15, v9, v30);
  _Block_release(v30);

  (*(v42 + 8))(v9, v31);
  (*(v40 + 8))(v15, v41);
}

uint64_t sub_2519A1B10(uint64_t a1, void (*a2)(char *))
{
  sub_2519A5B04(0, &qword_27F46A100, MEMORY[0x277D84C48]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - v6;
  v8 = sub_2519AE9B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251985814(0, &qword_27F46A068, 0x277CCD460);
  sub_2519AEA28();
  (*(v9 + 16))(v7, v13, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_storeEnumTagMultiPayload();
  a2(v7);
  sub_2519A5BA4(v7);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_2519A1EE4(uint64_t a1, void (*a2)(char *))
{
  v15 = a2;
  sub_2519A5B04(0, &qword_27F46A100, MEMORY[0x277D84C48]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - v5;
  v7 = sub_2519AE9B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519AEA08();
  (*(v8 + 16))(v6, v12, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_storeEnumTagMultiPayload();
  v15(v6);
  sub_2519A5BA4(v6);
  return (*(v8 + 8))(v12, v7);
}

uint64_t WalkingSteadinessOnboardingModel.CannotProgressReason.hashValue.getter()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1);
  return sub_2519AF278();
}

uint64_t WalkingSteadinessOnboardingModel.WarningReason.hashValue.getter()
{
  sub_2519AF258();
  MEMORY[0x2530892A0](0);
  return sub_2519AF278();
}

BOOL static WalkingSteadinessOnboardingModel.ProgressionState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return 1;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F)
  {
    return v2 == v3;
  }

  return 0;
}

BOOL sub_2519A2410(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 >> 6 == 1)
  {
    return (v3 & 0xC0) == 0x40;
  }

  return v3 == 128;
}

uint64_t sub_2519A2464@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);

  os_unfair_lock_lock((v3 + 36));
  v4 = *(v3 + 32);
  *a1 = *(v3 + 24);
  *(a1 + 8) = v4;
  os_unfair_lock_unlock((v3 + 36));
}

uint64_t WalkingSteadinessOnboardingModel.__allocating_init(featureStatusManager:detailsProvider:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 featureAvailabilityProviding];
  v12[3] = sub_251985814(0, &qword_27F46A068, 0x277CCD460);
  v12[4] = MEMORY[0x277D113B8];
  v12[0] = a1;
  sub_251979694(v12, v11);
  v7 = a1;
  v8 = sub_2519A0C34();
  v9 = (*(v3 + 192))(v11, v8, v6, a2, sub_251990020, 0);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v9;
}

uint64_t WalkingSteadinessOnboardingModel.__allocating_init(featureStatusProvider:featureAvailabilityProvider:detailsProvider:dateProvider:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_2519A4AD8(v16, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v18;
}

void *WalkingSteadinessOnboardingModel.__allocating_init(featureStatusProvider:featureStatusPublisher:featureAvailabilityProvider:detailsProvider:dateProvider:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  if (MEMORY[0x277D84F90] >> 62 && sub_2519AF1A8())
  {
    v12 = sub_2519A4CA8(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v11[11] = v12;
  sub_251979694(a1, (v11 + 2));
  v11[7] = a3;
  v11[8] = a4;
  v11[9] = a5;
  v11[10] = a6;
  sub_2519A4BD8();
  v13 = swift_allocObject();
  *(v13 + 36) = 0;
  *(v13 + 16) = 514;
  *(v13 + 24) = 0;
  *(v13 + 32) = 513;
  v11[12] = v13;
  swift_allocObject();
  swift_weakInit();
  sub_2519A4C40();
  sub_2519A5784(&qword_27F46A080, sub_2519A4C40);
  swift_unknownObjectRetain();

  sub_2519AED28();

  swift_beginAccess();
  sub_2519AEC88();
  swift_endAccess();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

void *WalkingSteadinessOnboardingModel.init(featureStatusProvider:featureStatusPublisher:featureAvailabilityProvider:detailsProvider:dateProvider:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (MEMORY[0x277D84F90] >> 62 && sub_2519AF1A8())
  {
    v13 = sub_2519A4CA8(MEMORY[0x277D84F90]);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v7[11] = v13;
  sub_251979694(a1, (v7 + 2));
  v7[7] = a3;
  v7[8] = a4;
  v7[9] = a5;
  v7[10] = a6;
  sub_2519A4BD8();
  v14 = swift_allocObject();
  *(v14 + 36) = 0;
  *(v14 + 16) = 514;
  *(v14 + 24) = 0;
  *(v14 + 32) = 513;
  v7[12] = v14;
  swift_allocObject();
  swift_weakInit();
  sub_2519A4C40();
  sub_2519A5784(&qword_27F46A080, sub_2519A4C40);
  swift_unknownObjectRetain();

  sub_2519AED28();

  swift_beginAccess();
  sub_2519AEC88();
  swift_endAccess();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2519A2AE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 96);
    MEMORY[0x28223BE20](result, v1);

    os_unfair_lock_lock((v2 + 36));
    sub_2519A5C34((v2 + 16));
    os_unfair_lock_unlock((v2 + 36));
  }

  return result;
}

uint64_t sub_2519A2BA4()
{
  v34[1] = *v0;
  v1 = sub_2519AE9B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2519AE608();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v35 = v34 - v14;
  sub_2519AE5F8();
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v16 = sub_2519AEA08();
  v17 = v0[12];
  MEMORY[0x28223BE20](v16, v18);
  v34[-2] = v6;

  os_unfair_lock_lock((v17 + 36));
  sub_2519A56D4((v17 + 16));
  os_unfair_lock_unlock((v17 + 36));

  (*(v2 + 8))(v6, v1);
  v19 = v7;
  v21 = v35;
  v20 = v36;
  sub_2519AE5F8();
  sub_2519AE5C8();
  v23 = v22;
  v24 = *(v20 + 8);
  v24(v12, v19);
  if (qword_27F4694C0 != -1)
  {
    swift_once();
  }

  v25 = sub_2519AEAE8();
  __swift_project_value_buffer(v25, qword_27F46A050);
  v26 = sub_2519AEAC8();
  v27 = sub_2519AEF58();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37[0] = v29;
    *v28 = 136315650;
    v30 = sub_2519AF2A8();
    v32 = sub_251978CDC(v30, v31, v37);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_251978CDC(0xD000000000000019, 0x80000002519B4BB0, v37);
    *(v28 + 22) = 2048;
    *(v28 + 24) = round(v23 * 1000.0) / 1000.0;
    _os_log_impl(&dword_251974000, v26, v27, "[%s] %s: Feature status fetch execution time: %f seconds.", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v29, -1, -1);
    MEMORY[0x2530898E0](v28, -1, -1);
  }

  return (v24)(v21, v19);
}

void sub_2519A3124(_BYTE *a1)
{
  v2 = *MEMORY[0x277D11A40];
  v3 = sub_2519AE9C8();
  v4 = *MEMORY[0x277CCBF88];
  v5 = sub_2519AF098();

  a1[1] = v5 & 1;
  v6 = sub_2519AE9C8();
  v7 = *MEMORY[0x277CCBF40];
  v8 = sub_2519AF098();

  *a1 = v8 & 1;
}

uint64_t sub_2519A31EC(unsigned __int8 *a1, void *a2, uint64_t a3, int a4, uint64_t (*a5)(__int128 *), uint64_t a6)
{
  v135 = a6;
  v136 = a5;
  LODWORD(v131) = a4;
  v133 = a2;
  v134 = a3;
  v132 = *v6;
  v8 = sub_2519AE608();
  v130 = *(v8 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_2519A4F30(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v123 - v17;
  v19 = sub_2519AE4C8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519A4F30(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, v13);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v123 - v28;
  v30 = type metadata accessor for ConfirmDetailsProvider.Details();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30, v32);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  if (v36 > 1)
  {
    if (v36 == 3)
    {
      sub_2519A2BA4();
      v37 = v6;
      v38 = v6[12];

      os_unfair_lock_lock((v38 + 36));
      v39 = *(v38 + 16);
      os_unfair_lock_unlock((v38 + 36));

      if (v39 == 2)
      {
        if (qword_27F4694C0 != -1)
        {
          swift_once();
        }

        v40 = sub_2519AEAE8();
        __swift_project_value_buffer(v40, qword_27F46A050);
        v41 = sub_2519AEAC8();
        v42 = sub_2519AEF48();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_35;
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v139 = v44;
        *v43 = 136446210;
        v45 = sub_2519AF2A8();
        v47 = sub_251978CDC(v45, v46, &v139);

        *(v43 + 4) = v47;
        v48 = "[%{public}s] Fitness tracking enabled determination not present at time of progressing from notifications";
        goto LABEL_14;
      }

      if ((v39 & 1) == 0)
      {
        if (qword_27F4694C0 != -1)
        {
          swift_once();
        }

        v80 = sub_2519AEAE8();
        __swift_project_value_buffer(v80, qword_27F46A050);
        v81 = sub_2519AEAC8();
        v82 = sub_2519AEF28();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v139 = v84;
          *v83 = 136446466;
          v85 = sub_2519AF2A8();
          v87 = sub_251978CDC(v85, v86, &v139);

          *(v83 + 4) = v87;
          *(v83 + 12) = 2082;
          *(v83 + 14) = sub_251978CDC(0xD000000000000052, 0x80000002519B4A90, &v139);
          _os_log_impl(&dword_251974000, v81, v82, "[%{public}s.%{public}s]: Motion & Fitness Tracking disabled, warning", v83, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530898E0](v84, -1, -1);
          MEMORY[0x2530898E0](v83, -1, -1);
        }

        v78 = 64;
        goto LABEL_36;
      }

      if (v131)
      {
        v66 = v37[12];

        os_unfair_lock_lock((v66 + 36));
        v67 = *(v66 + 17);
        os_unfair_lock_unlock((v66 + 36));

        if (v67 == 2)
        {
          if (qword_27F4694C0 != -1)
          {
            swift_once();
          }

          v68 = sub_2519AEAE8();
          __swift_project_value_buffer(v68, qword_27F46A050);
          v41 = sub_2519AEAC8();
          v42 = sub_2519AEF48();
          if (!os_log_type_enabled(v41, v42))
          {
            goto LABEL_35;
          }

          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v139 = v44;
          *v43 = 136446210;
          v69 = sub_2519AF2A8();
          v71 = sub_251978CDC(v69, v70, &v139);

          *(v43 + 4) = v71;
          v48 = "[%{public}s] Notifications authorized determination not present at time of progressing from notifications";
          goto LABEL_14;
        }

        if ((v67 & 1) == 0)
        {
          if (qword_27F4694C0 != -1)
          {
            swift_once();
          }

          v115 = sub_2519AEAE8();
          __swift_project_value_buffer(v115, qword_27F46A050);
          v116 = sub_2519AEAC8();
          v117 = sub_2519AEF58();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            *&v139 = v119;
            *v118 = 136446466;
            v120 = sub_2519AF2A8();
            v122 = sub_251978CDC(v120, v121, &v139);

            *(v118 + 4) = v122;
            *(v118 + 12) = 2082;
            *(v118 + 14) = sub_251978CDC(0xD000000000000052, 0x80000002519B4A90, &v139);
            _os_log_impl(&dword_251974000, v116, v117, "[%{public}s.%{public}s]: Notification authorization denied, cannot proceed", v118, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2530898E0](v119, -1, -1);
            MEMORY[0x2530898E0](v118, -1, -1);
          }

          v78 = 3;
          goto LABEL_36;
        }

        if (qword_27F4694C0 != -1)
        {
          swift_once();
        }

        v107 = sub_2519AEAE8();
        __swift_project_value_buffer(v107, qword_27F46A050);
        v41 = sub_2519AEAC8();
        v73 = sub_2519AEF28();
        if (!os_log_type_enabled(v41, v73))
        {
LABEL_35:

          v78 = 0x80;
LABEL_36:
          LOBYTE(v139) = v78;
          return v136(&v139);
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v139 = v44;
        *v43 = 136446466;
        v108 = sub_2519AF2A8();
        v110 = sub_251978CDC(v108, v109, &v139);

        *(v43 + 4) = v110;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_251978CDC(0xD000000000000052, 0x80000002519B4A90, &v139);
        v77 = "[%{public}s.%{public}s]: Motion & Fitness Tracking enabled and notification authorization authorized, proceeding";
      }

      else
      {
        if (qword_27F4694C0 != -1)
        {
          swift_once();
        }

        v88 = sub_2519AEAE8();
        __swift_project_value_buffer(v88, qword_27F46A050);
        v41 = sub_2519AEAC8();
        v73 = sub_2519AEF28();
        if (!os_log_type_enabled(v41, v73))
        {
          goto LABEL_35;
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v139 = v44;
        *v43 = 136446466;
        v89 = sub_2519AF2A8();
        v91 = sub_251978CDC(v89, v90, &v139);

        *(v43 + 4) = v91;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_251978CDC(0xD000000000000052, 0x80000002519B4A90, &v139);
        v77 = "[%{public}s.%{public}s]: Secondary button pressed, not enabling notifications";
      }

LABEL_33:
      _os_log_impl(&dword_251974000, v41, v73, v77, v43, 0x16u);
      swift_arrayDestroy();
      goto LABEL_34;
    }

LABEL_27:
    LOBYTE(v139) = 0x80;
    return v136(&v139);
  }

  v127 = v24;
  v128 = v18;
  v125 = v12;
  v126 = v8;
  v129 = v20;
  v131 = v19;
  if (!v36)
  {
    v49 = v6[12];

    os_unfair_lock_lock((v49 + 36));
    v50 = *(v49 + 16);
    os_unfair_lock_unlock((v49 + 36));

    if (v50 == 2)
    {
      if (qword_27F4694C0 != -1)
      {
        swift_once();
      }

      v51 = sub_2519AEAE8();
      __swift_project_value_buffer(v51, qword_27F46A050);
      v41 = sub_2519AEAC8();
      v42 = sub_2519AEF48();
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_35;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v139 = v44;
      *v43 = 136446210;
      v52 = sub_2519AF2A8();
      v54 = sub_251978CDC(v52, v53, &v139);

      *(v43 + 4) = v54;
      v48 = "[%{public}s] Fitness tracking enabled determination not present at time of progressing from start";
LABEL_14:
      _os_log_impl(&dword_251974000, v41, v42, v48, v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
LABEL_34:
      MEMORY[0x2530898E0](v44, -1, -1);
      MEMORY[0x2530898E0](v43, -1, -1);
      goto LABEL_35;
    }

    if ((v50 & 1) == 0)
    {
      LOBYTE(v139) = 0;
      return v136(&v139);
    }

    goto LABEL_27;
  }

  v55 = v33;
  v124 = v35;
  v56 = v133;
  v137 = v133;
  v138 = v134;
  sub_25198112C(0, &qword_27F46A088);
  sub_25198112C(0, &qword_27F46A090);
  v57 = v56;
  if (!swift_dynamicCast())
  {
    v141 = 0;
    v139 = 0u;
    v140 = 0u;
    sub_2519A507C(&v139, sub_2519A4F94);
    (*(v55 + 56))(v29, 1, 1, v30);
    goto LABEL_29;
  }

  v58 = v6;
  v59 = *(&v140 + 1);
  v60 = v141;
  __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
  (*(v60 + 8))(v59, v60);
  __swift_destroy_boxed_opaque_existential_0Tm(&v139);
  if ((*(v55 + 48))(v29, 1, v30) == 1)
  {
LABEL_29:
    sub_2519A5000(v29, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
    if (qword_27F4694C0 != -1)
    {
      swift_once();
    }

    v72 = sub_2519AEAE8();
    __swift_project_value_buffer(v72, qword_27F46A050);
    v41 = sub_2519AEAC8();
    v73 = sub_2519AEF48();
    if (!os_log_type_enabled(v41, v73))
    {
      goto LABEL_35;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v139 = v44;
    *v43 = 136446466;
    v74 = sub_2519AF2A8();
    v76 = sub_251978CDC(v74, v75, &v139);

    *(v43 + 4) = v76;
    *(v43 + 12) = 2082;
    *(v43 + 14) = sub_251978CDC(0xD000000000000052, 0x80000002519B4A90, &v139);
    v77 = "[%{public}s.%{public}s]: Confirm details screen should provide details";
    goto LABEL_33;
  }

  v61 = v124;
  sub_2519850B0(v29, v124);
  v62 = v61;
  v63 = v128;
  sub_2519A5A00(v62, v128, &qword_27F469938, MEMORY[0x277CC8990]);
  v64 = v129;
  v65 = v131;
  if ((*(v129 + 48))(v63, 1, v131) == 1)
  {
    sub_2519A5000(v63, &qword_27F469938, MEMORY[0x277CC8990]);
LABEL_60:
    v111 = v58[8];
    v112 = swift_allocObject();
    v112[2] = v136;
    v112[3] = v135;
    v112[4] = v58;
    v113 = *(*v111 + 200);

    v114 = v124;
    v113(v124, sub_2519A5070, v112);

    return sub_2519A507C(v114, type metadata accessor for ConfirmDetailsProvider.Details);
  }

  v92 = v127;
  (*(v64 + 32))(v127, v63, v65);
  v93 = *MEMORY[0x277CCE588];
  v94 = sub_2519AE4A8();
  v95 = v6[10];
  v96 = v125;
  (v58[9])();
  v97 = sub_2519AE5D8();
  (*(v130 + 8))(v96, v126);
  v98 = [v94 hk:v97 ageWithCurrentDate:?];

  if (v98 >= v93)
  {
    (*(v64 + 8))(v92, v65);
    goto LABEL_60;
  }

  if (qword_27F4694C0 != -1)
  {
    swift_once();
  }

  v99 = sub_2519AEAE8();
  __swift_project_value_buffer(v99, qword_27F46A050);
  v100 = sub_2519AEAC8();
  v101 = sub_2519AEF58();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v139 = v103;
    *v102 = 136446210;
    v104 = sub_2519AF2A8();
    v106 = sub_251978CDC(v104, v105, &v139);

    *(v102 + 4) = v106;
    v92 = v127;
    _os_log_impl(&dword_251974000, v100, v101, "[%{public}s] User not old enough to continue onboarding", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    MEMORY[0x2530898E0](v103, -1, -1);
    MEMORY[0x2530898E0](v102, -1, -1);
  }

  LOBYTE(v139) = 1;
  v136(&v139);
  (*(v64 + 8))(v92, v65);
  return sub_2519A507C(v124, type metadata accessor for ConfirmDetailsProvider.Details);
}

uint64_t sub_2519A42D8(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) == 1)
  {
    v10 = 2;
    v5 = &v10;
  }

  else
  {
    v6 = *a1;
    v7 = *(a4 + 96);

    os_unfair_lock_lock((v7 + 36));
    *(v7 + 24) = v6;
    *(v7 + 32) = 0;
    os_unfair_lock_unlock((v7 + 36));

    v9 = 0x80;
    v5 = &v9;
  }

  return a2(v5);
}

uint64_t sub_2519A436C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_251992744();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[12];

  os_unfair_lock_lock((v16 + 36));
  *(v16 + 33) = a1;
  os_unfair_lock_unlock((v16 + 36));

  v17 = v4[7];
  swift_getObjectType();
  sub_2519AEFC8();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = v17;
  *(v18 + 40) = a1;
  *(v18 + 48) = v8;

  swift_unknownObjectRetain();
  sub_2519AF088();

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_2519A4520(char a1, void *a2, uint64_t (*a3)(void, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_251992744();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    sub_2519AEFD8();
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a7;

    sub_2519AF088();

    return (*(v14 + 8))(v18, v13);
  }

  else
  {
    if (qword_27F4694C0 != -1)
    {
      swift_once();
    }

    v21 = sub_2519AEAE8();
    __swift_project_value_buffer(v21, qword_27F46A050);
    v22 = a2;
    v23 = sub_2519AEAC8();
    v24 = sub_2519AEF38();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v25 = 136446466;
      v28 = sub_2519AF2A8();
      v30 = sub_251978CDC(v28, v29, &v35);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2112;
      if (a2)
      {
        v31 = a2;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v25 + 14) = v32;
      *v26 = v33;
      _os_log_impl(&dword_251974000, v23, v24, "[%{public}s] Error when saving onboarding acknowledgement: %@", v25, 0x16u);
      sub_2519A507C(v26, sub_25198F8CC);
      MEMORY[0x2530898E0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x2530898E0](v27, -1, -1);
      MEMORY[0x2530898E0](v25, -1, -1);
    }

    return a3(0, a2);
  }
}

uint64_t sub_2519A4828(char a1, void *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (a1)
  {
    v4 = 1;
    v5 = 0;
  }

  else
  {
    if (qword_27F4694C0 != -1)
    {
      swift_once();
    }

    v7 = sub_2519AEAE8();
    __swift_project_value_buffer(v7, qword_27F46A050);
    v8 = a2;
    v9 = sub_2519AEAC8();
    v10 = sub_2519AEF38();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136446466;
      v14 = sub_2519AF2A8();
      v16 = sub_251978CDC(v14, v15, &v21);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v11 + 14) = v18;
      *v12 = v19;
      _os_log_impl(&dword_251974000, v9, v10, "[%{public}s] Error when saving onboarding acknowledgement: %@", v11, 0x16u);
      sub_2519A507C(v12, sub_25198F8CC);
      MEMORY[0x2530898E0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2530898E0](v13, -1, -1);
      MEMORY[0x2530898E0](v11, -1, -1);
    }

    v4 = 0;
    v5 = a2;
  }

  return a3(v4, v5);
}

uint64_t *WalkingSteadinessOnboardingModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  return v0;
}

uint64_t WalkingSteadinessOnboardingModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2519A4AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[3] = a7;
  v21[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  sub_251979694(v21, v20);
  v17 = sub_2519A0F30(a7, a8);
  v18 = (*(a6 + 192))(v20, v17, a2, a3, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v18;
}

void sub_2519A4BD8()
{
  if (!qword_27F46A070)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_2519AF168();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A070);
    }
  }
}

void sub_2519A4C40()
{
  if (!qword_27F46A078)
  {
    sub_2519AE9B8();
    v0 = sub_2519AEC78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A078);
    }
  }
}

unint64_t sub_2519A4CA8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_2519AF1A8();
    if (result)
    {
LABEL_3:
      sub_2519A56F0();
      result = sub_2519AF118();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_2519AF1A8();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x253089190](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_2519AEC98();
    sub_2519A5784(&qword_27F46A0B8, MEMORY[0x277CBCDA8]);
    result = sub_2519AEDE8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_2519A5784(&qword_27F46A0C0, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_2519AEE18();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_2519A4F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2519A4F94()
{
  if (!qword_27F46A098)
  {
    sub_25198112C(255, &qword_27F46A090);
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A098);
    }
  }
}

uint64_t sub_2519A5000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2519A4F30(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2519A507C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_4Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 24);

  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

unint64_t sub_2519A5150()
{
  result = qword_27F46A0A0;
  if (!qword_27F46A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46A0A0);
  }

  return result;
}

unint64_t sub_2519A51A8()
{
  result = qword_27F46A0A8;
  if (!qword_27F46A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46A0A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WalkingSteadinessOnboardingModel.CannotProgressReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WalkingSteadinessOnboardingModel.CannotProgressReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WalkingSteadinessOnboardingModel.ProgressionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for WalkingSteadinessOnboardingModel.ProgressionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2519A5594(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_2519A55C0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WalkingSteadinessOnboardingModel.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[18])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WalkingSteadinessOnboardingModel.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2519A56C8(char a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_2519A4828(a1, a2, *(v2 + 16));
}

void sub_2519A56F0()
{
  if (!qword_27F46A0B0)
  {
    sub_2519AEC98();
    sub_2519A5784(&qword_27F46A0B8, MEMORY[0x277CBCDA8]);
    v0 = sub_2519AF128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A0B0);
    }
  }
}

uint64_t sub_2519A5784(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2519A57CC()
{
  if (!qword_27F46A0C8)
  {
    sub_2519A5B04(255, &qword_27F46A0D0, MEMORY[0x277CBCEA8]);
    sub_2519AE9B8();
    sub_2519A5864();
    v0 = sub_2519AEC28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A0C8);
    }
  }
}

unint64_t sub_2519A5864()
{
  result = qword_27F46A0E0;
  if (!qword_27F46A0E0)
  {
    sub_2519A5B04(255, &qword_27F46A0D0, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46A0E0);
  }

  return result;
}

void sub_2519A58D8()
{
  if (!qword_27F46A0E8)
  {
    sub_2519A57CC();
    sub_2519A4C40();
    sub_2519A5784(&qword_27F46A0F0, sub_2519A57CC);
    sub_2519A5784(&qword_27F46A080, sub_2519A4C40);
    v0 = sub_2519AEC48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A0E8);
    }
  }
}

uint64_t sub_2519A5A00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2519A4F30(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2519A5A80()
{
  v1 = *(v0 + 24);
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(v3 + 8);
  return sub_2519A1EE4(v0 + v2, *v3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2519A5B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_2519A4F30(255, &qword_27F46A0D8, MEMORY[0x277D11290], MEMORY[0x277D83D88]);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2519A5BA4(uint64_t a1)
{
  sub_2519A5B04(0, &qword_27F46A100, MEMORY[0x277D84C48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2519A5C94()
{
  v1 = v0 + qword_27F46A110;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2519A5CE4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F46A110;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2519A5D50(uint64_t *a1))()
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
  v5 = qword_27F46A110;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251979A40;
}

uint64_t WalkingSteadinessOnboardingLevelsViewController.init()()
{
  *(v0 + qword_27F46A108) = 2;
  *(v0 + qword_27F46A110 + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + qword_27F46A118);
  *v1 = 0xD000000000000025;
  v1[1] = 0x80000002519B4BD0;
  v2 = type metadata accessor for WalkingSteadinessLevelsDataSource();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2519AB8C8();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();
  return sub_2519AE938();
}

void sub_2519A5F94()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for WalkingSteadinessOnboardingLevelsViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setSeparatorStyle_];

    v3 = [v0 tableView];
    if (v3)
    {
      v4 = v3;
      [v3 setContentInset_];

      v5 = [v0 headerView];
      LODWORD(v6) = 1036831949;
      [v5 setTitleHyphenationFactor_];

      v7 = *&v0[qword_27F46A118];
      v8 = *&v0[qword_27F46A118 + 8];
      v9 = sub_2519AEE28();

      v10 = sub_2519AEE28();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2519A6104(void *a1)
{
  v1 = a1;
  sub_2519A5F94();
}

void sub_2519A614C(char *a1)
{
  v2 = &a1[qword_27F46A110];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_2519A61F8(char *a1)
{
  v2 = &a1[qword_27F46A110];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_2519A62A4(char *a1)
{
  v2 = &a1[qword_27F46A110];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 24);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2519A6380()
{
  sub_25197ABDC(v0 + qword_27F46A110);
  v1 = *(v0 + qword_27F46A118 + 8);
}

id WalkingSteadinessOnboardingLevelsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingLevelsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2519A63FC(uint64_t a1)
{
  sub_25197ABDC(a1 + qword_27F46A110);
  v2 = *(a1 + qword_27F46A118 + 8);
}

uint64_t (*sub_2519A6460(uint64_t *a1))()
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
  v5 = qword_27F46A110;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197AC8C;
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingLevelsViewController()
{
  result = qword_27F46A120;
  if (!qword_27F46A120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmDetailsLearnMoreView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView_configuration;
  v4 = sub_2519AEBF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2519A67DC(uint64_t *a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v7 = v3;
  v8 = sub_2519AEB68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v35 - v17;
  v19 = *a1;
  v20 = *(v3 + *a1);
  if (v20)
  {
    v21 = *(v3 + *a1);
  }

  else
  {
    a2(v16);
    v22 = sub_2519AEB28();
    v35 = a3;
    v36 = v22;
    v23 = *(v9 + 8);
    v24 = v23(v18, v8);
    a2(v24);
    v25 = sub_2519AEB48();
    v26 = v23(v14, v8);
    v27 = v36;
    v35(v26);
    v29 = v28;
    v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v30 setNumberOfLines_];
    [v30 setFont_];
    [v30 setTextColor_];
    if (v29)
    {
      v31 = sub_2519AEE28();

      [v30 setText_];
    }

    v32 = *(v7 + v19);
    *(v7 + v19) = v30;
    v21 = v30;

    v20 = 0;
  }

  v33 = v20;
  return v21;
}

id sub_2519A6A10()
{
  v1 = v0;
  v2 = sub_2519AEB68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel;
  v9 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel];
  if (v9)
  {
    v10 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel];
  }

  else
  {
    sub_2519AEBA8();
    v11 = sub_2519AEB28();
    (*(v3 + 8))(v7, v2);
    v12 = [v1 tintColor];
    if (qword_27F469438 != -1)
    {
      swift_once();
    }

    sub_2519AE4D8();
    v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v13 setNumberOfLines_];
    [v13 setFont_];
    if (v12)
    {
      [v13 setTextColor_];
    }

    v14 = sub_2519AEE28();

    [v13 setText_];

    v15 = *&v1[v8];
    *&v1[v8] = v13;
    v10 = v13;

    v9 = 0;
  }

  v16 = v9;
  return v10;
}

id sub_2519A6C5C()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_learnMoreTapped];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2519A6CE0(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v8 = &v4[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView_delegate];
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel] = 0;
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___tapGestureRecognizer] = 0;
  v9 = OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView_configuration;
  v55 = sub_2519AEBF8();
  v57 = *(v55 - 8);
  (*(v57 + 16))(&v4[v9], a1, v55);
  *(v8 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v58.receiver = v4;
  v58.super_class = type metadata accessor for ConfirmDetailsLearnMoreView();
  v10 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = sub_2519A6774();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v12 = OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel;
  [*&v10[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel] setPreferredMaxLayoutWidth_];
  v13 = *&v10[v12];
  v14 = v10;
  [v14 addSubview_];
  v15 = sub_2519A67A8();
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel;
  [*&v14[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel] setPreferredMaxLayoutWidth_];
  [v14 addSubview_];
  v17 = sub_2519A6A10();
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v18 = OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel;
  [*&v14[OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel] setUserInteractionEnabled_];
  v19 = *&v14[v18];
  v20 = sub_2519A6C5C();
  [v19 addGestureRecognizer_];

  [v14 addSubview_];
  v54 = objc_opt_self();
  sub_25198E884();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2519B22C0;
  v22 = [*&v10[v12] topAnchor];
  v23 = [v14 &selRef_dealloc];

  v24 = [v22 constraintEqualToAnchor_];
  *(v21 + 32) = v24;
  v25 = [*&v10[v12] leadingAnchor];
  v26 = [v14 &off_2796DA528 + 1];

  v27 = [v25 constraintEqualToAnchor:v26 constant:0.0];
  *(v21 + 40) = v27;
  v28 = [*&v10[v12] trailingAnchor];
  v29 = [v14 trailingAnchor];

  v30 = [v28 constraintLessThanOrEqualToAnchor:v29 constant:-0.0];
  *(v21 + 48) = v30;
  v31 = [*&v14[v16] topAnchor];
  v32 = [*&v10[v12] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:4.0];

  *(v21 + 56) = v33;
  v34 = [*&v14[v16] leadingAnchor];
  v35 = [v14 leadingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35 constant:0.0];
  *(v21 + 64) = v36;
  v37 = [*&v14[v16] trailingAnchor];
  v38 = [v14 trailingAnchor];

  v39 = [v37 constraintLessThanOrEqualToAnchor:v38 constant:-0.0];
  *(v21 + 72) = v39;
  v40 = [*&v14[v18] topAnchor];
  v41 = [*&v14[v16] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:2.0];

  *(v21 + 80) = v42;
  v43 = [*&v14[v18] leadingAnchor];
  v44 = [v14 leadingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44 constant:0.0];
  *(v21 + 88) = v45;
  v46 = [*&v14[v18] trailingAnchor];
  v47 = [v14 trailingAnchor];

  v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:-0.0];
  *(v21 + 96) = v48;
  v49 = [*&v14[v18] bottomAnchor];
  v50 = [v14 bottomAnchor];

  v51 = [v49 constraintEqualToAnchor:v50 constant:-18.0];
  *(v21 + 104) = v51;
  sub_25198E8D8();
  v52 = sub_2519AEEB8();

  [v54 activateConstraints_];

  swift_unknownObjectRelease();
  (*(v57 + 8))(a1, v55);
  return v14;
}

id ConfirmDetailsLearnMoreView.__deallocating_deinit()
{
  v1 = sub_2519A6A10();
  v2 = sub_2519A6C5C();
  [v1 removeGestureRecognizer_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ConfirmDetailsLearnMoreView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for ConfirmDetailsLearnMoreView()
{
  result = qword_27F46A158;
  if (!qword_27F46A158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ConfirmDetailsLearnMoreView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_2519A78AC()
{
  result = sub_2519AEBF8();
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

unint64_t WalkingSteadinessOnboardingStage.analyticsName.getter()
{
  v1 = *v0;
  v2 = 0x446D7269666E6F63;
  v3 = 0xD000000000000017;
  v4 = 0x6163696669746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6974656C706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t WalkingSteadinessOnboardingStage.hashValue.getter()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1);
  return sub_2519AF278();
}

unint64_t sub_2519A7ACC()
{
  result = qword_27F46A168;
  if (!qword_27F46A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46A168);
  }

  return result;
}

unint64_t sub_2519A7B24()
{
  result = qword_27F46A170;
  if (!qword_27F46A170)
  {
    sub_2519A7B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46A170);
  }

  return result;
}

void sub_2519A7B7C()
{
  if (!qword_27F46A178)
  {
    v0 = sub_2519AEEC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46A178);
    }
  }
}

uint64_t getEnumTagSinglePayload for WalkingSteadinessOnboardingStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WalkingSteadinessOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_2519A7D3C()
{
  type metadata accessor for Dummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DD9178 = result;
  return result;
}

id static NSBundle.healthMobilityUI.getter()
{
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v1 = qword_280DD9178;

  return v1;
}

id sub_2519A7E30(uint64_t a1, unint64_t *a2, uint64_t *a3, void *a4)
{
  sub_251985814(0, a2, a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a4 = result;
  return result;
}

char *sub_2519A7EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_title;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setNumberOfLines_];
  *&v4[v7] = v8;
  v9 = OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_detail;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setNumberOfLines_];
  *&v4[v9] = v10;
  if (a3)
  {
    v11 = sub_2519AEE28();
  }

  else
  {
    v11 = 0;
  }

  v70.receiver = v4;
  v70.super_class = type metadata accessor for BaseInfoCell();
  v12 = objc_msgSendSuper2(&v70, sel_initWithStyle_reuseIdentifier_, a1, v11);

  v13 = v12;
  v14 = [v13 contentView];
  v15 = OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_title;
  [v14 addSubview_];

  v16 = [v13 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_];
  v17 = OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_detail;
  [v16 addSubview_];

  v18 = *&v13[v15];
  v19 = objc_opt_self();
  v20 = [v19 _preferredFontForTextStyle_variant_];
  [v18 setFont_];

  v21 = *&v13[v17];
  v22 = [v19 preferredFontForTextStyle_];
  [v21 setFont_];

  [*&v13[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v23) = 1148846080;
  [*&v13[v15] setContentCompressionResistancePriority:1 forAxis:v23];
  LODWORD(v24) = 1144750080;
  [*&v13[v15] setContentHuggingPriority:1 forAxis:v24];
  LODWORD(v25) = 1144750080;
  [*&v13[v15] setContentHuggingPriority:0 forAxis:v25];
  [*&v13[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v26) = 1148846080;
  [*&v13[v17] setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [*&v13[v17] setContentHuggingPriority:1 forAxis:v27];
  LODWORD(v28) = 1144750080;
  [*&v13[v17] setContentHuggingPriority:0 forAxis:v28];
  v69 = objc_opt_self();
  sub_25198E884();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2519B2460;
  v30 = [*&v13[v15] topAnchor];
  v31 = [v13 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_];
  v32 = [v31 layoutMarginsGuide];

  v33 = [v32 &selRef_dealloc];
  v34 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v34;
  v35 = [*&v13[v15] leadingAnchor];
  v36 = [v13 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_];
  v37 = [v36 layoutMarginsGuide];

  v38 = [v37 leadingAnchor];
  v39 = [v35 &selRef:v38 presentationControllerWillDismiss:? + 5];

  *(v29 + 40) = v39;
  v40 = [*&v13[v15] trailingAnchor];
  v41 = [v13 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_];
  v42 = [v41 layoutMarginsGuide];

  v43 = [v42 &selRef_navigationItem + 4];
  v44 = [v40 &selRef:v43 presentationControllerWillDismiss:? + 5];

  *(v29 + 48) = v44;
  v45 = [*&v13[v17] topAnchor];
  v46 = [*&v13[v15] bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:4.0];

  *(v29 + 56) = v47;
  v48 = [*&v13[v17] leadingAnchor];
  v49 = [v13 contentView];
  v50 = [v49 layoutMarginsGuide];

  v51 = [v50 leadingAnchor];
  v52 = [v48 &selRef:v51 presentationControllerWillDismiss:? + 5];

  *(v29 + 64) = v52;
  v53 = [*&v13[v17] trailingAnchor];
  v54 = [v13 contentView];
  v55 = [v54 layoutMarginsGuide];

  v56 = [v55 trailingAnchor];
  v57 = [v53 &selRef:v56 presentationControllerWillDismiss:? + 5];

  *(v29 + 72) = v57;
  v58 = [*&v13[v17] bottomAnchor];
  v59 = [v13 contentView];

  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor:v60 constant:-5.0];

  *(v29 + 80) = v61;
  sub_25198E8D8();
  v62 = sub_2519AEEB8();

  [v69 activateConstraints_];

  sub_2519A8FD8();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_2519B08A0;
  v64 = sub_2519AEC08();
  v65 = MEMORY[0x277D74DB8];
  *(v63 + 32) = v64;
  *(v63 + 40) = v65;
  v66 = sub_2519AEAF8();
  v67 = MEMORY[0x277D74BA0];
  *(v63 + 48) = v66;
  *(v63 + 56) = v67;
  sub_2519AF0A8();

  swift_unknownObjectRelease();

  return v13;
}

id sub_2519A86A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseInfoCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2519A8788()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v3 = sub_2519AF0E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12[-v7];
  v9 = qword_27F46A1A0;
  swift_beginAccess();
  sub_251980888(v0 + v9, v12);
  sub_2519A8D58();
  v10 = swift_dynamicCast();
  (*(*(v2 - 8) + 56))(v8, v10 ^ 1u, 1, v2);
  (*((*v1 & *v0) + 0x98))(v8);
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_2519A8928@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F46A1A0;
  swift_beginAccess();
  return sub_251980888(v1 + v3, a1);
}

uint64_t sub_2519A8980(uint64_t a1)
{
  v3 = qword_27F46A1A0;
  swift_beginAccess();
  sub_251980988(a1, v1 + v3);
  swift_endAccess();
  sub_2519A8788();
  return sub_2519A8DC0(a1);
}

uint64_t (*sub_2519A89EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2519A8A50;
}

uint64_t sub_2519A8A50(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2519A8788();
  }

  return result;
}

id sub_2519A8AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85000] & *v3;
  v6 = v3 + qword_27F46A1A0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  if (a3)
  {
    v7 = sub_2519AEE28();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 104);
  v9 = *(v5 + 112);
  v12.receiver = v3;
  v12.super_class = type metadata accessor for BaseInfoItemCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v10;
}

uint64_t sub_2519A8BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = sub_2519AEE38();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

id sub_2519A8C48()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseInfoItemCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void (*sub_2519A8CE8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2519A89EC(v2);
  return sub_251988414;
}

void sub_2519A8D58()
{
  if (!qword_27F4697E0)
  {
    sub_251994930(255, &qword_27F4697E8);
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4697E0);
    }
  }
}

uint64_t sub_2519A8DC0(uint64_t a1)
{
  sub_2519A8D58();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519A8E20(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_title);
  v3 = objc_opt_self();
  v4 = [v3 _preferredFontForTextStyle_variant_];
  [v2 setFont_];

  v5 = *(a1 + OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_detail);
  v6 = [v3 preferredFontForTextStyle_];
  [v5 setFont_];
}

void sub_2519A8F0C()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_title;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_detail;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setNumberOfLines_];
  *(v0 + v3) = v4;
  sub_2519AF198();
  __break(1u);
}

void sub_2519A8FD8()
{
  if (!qword_27F469A20)
  {
    sub_251989F7C();
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469A20);
    }
  }
}

uint64_t sub_2519A9030()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F46A228);
  v1 = __swift_project_value_buffer(v0, qword_27F46A228);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2519A90F8()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController____lazy_storage___iconWithShadow;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController____lazy_storage___iconWithShadow);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController____lazy_storage___iconWithShadow);
  }

  else
  {
    v4 = sub_2519AA18C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2519A9158()
{
  *&v0[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController____lazy_storage___iconWithShadow] = 0;
  v0[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_stage] = 3;
  *&v0[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_baseIdentifier];
  *v1 = 0xD000000000000028;
  v1[1] = 0x80000002519B3F20;
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v2 = sub_2519AEE28();

  sub_2519AE4D8();
  v3 = sub_2519AEE28();

  v31.receiver = v0;
  v31.super_class = type metadata accessor for WalkingSteadinessOnboardingNotificationsViewController();
  v4 = objc_msgSendSuper2(&v31, sel_initWithTitle_detailText_icon_contentLayout_, v2, v3, 0, 3, 0xE000000000000000);

  v5 = v4;
  v6 = [v5 headerView];
  LODWORD(v7) = 1036831949;
  [v6 setTitleHyphenationFactor_];

  v8 = [v5 headerView];
  [v8 setAllowFullWidthIcon_];

  v9 = [v5 headerView];
  v10 = [v9 customIconContainerView];

  if (v10)
  {
    [v10 setClipsToBounds_];
    v11 = sub_2519A90F8();
    [v10 addSubview_];

    v12 = objc_opt_self();
    if (([v12 hk_currentDeviceHas4InchScreen] & 1) != 0 || objc_msgSend(v12, sel_hk_currentDeviceHas4Point7InchScreen))
    {
      v13 = objc_opt_self();
      sub_2519AA3BC(0, &qword_27F469750);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2519B1270;
      v15 = OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController____lazy_storage___iconWithShadow;
      v16 = [*&v5[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController____lazy_storage___iconWithShadow] topAnchor];
      v17 = [v10 topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];

      *(v14 + 32) = v18;
      v19 = [*&v5[v15] leadingAnchor];
      v20 = [v10 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v14 + 40) = v21;
      v22 = [*&v5[v15] trailingAnchor];
      v23 = [v10 trailingAnchor];
      v24 = [v22 constraintEqualToAnchor_];

      *(v14 + 48) = v24;
      v25 = [*&v5[v15] bottomAnchor];
      v26 = [v10 bottomAnchor];
      v27 = [v25 constraintEqualToAnchor_];

      *(v14 + 56) = v27;
      sub_251985814(0, &qword_27F469C40, 0x277CCAAD0);
      v28 = sub_2519AEEB8();

      [v13 activateConstraints_];
    }

    else
    {
      v29 = *&v5[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController____lazy_storage___iconWithShadow];
      v28 = v10;
      [v29 hk:v28 alignConstraintsWithView:?];
    }
  }

  return v5;
}

void sub_2519A966C()
{
  ObjectType = swift_getObjectType();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for WalkingSteadinessOnboardingNotificationsViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  sub_2519A8FD8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2519B0FA0;
  v3 = sub_2519AEB08();
  v4 = MEMORY[0x277D74BF0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  *(swift_allocObject() + 16) = ObjectType;
  sub_2519AEFA8();
  swift_unknownObjectRelease();

  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v5 = sub_2519AEE28();

  sub_2519AA3BC(0, &qword_27F4697F8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2519B12D0;
  v7 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_baseIdentifier];
  v8 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_baseIdentifier + 8];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *(v6 + 48) = 0x656C62616E45;
  *(v6 + 56) = 0xE600000000000000;
  *(v6 + 64) = 0x6E6F74747542;
  *(v6 + 72) = 0xE600000000000000;
  swift_bridgeObjectRetain_n();
  v9 = sub_2519AEEB8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  sub_2519AE4D8();
  v11 = sub_2519AEE28();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2519B12D0;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 48) = 0x62616E45746E6F44;
  *(v12 + 56) = 0xEA0000000000656CLL;
  *(v12 + 64) = 0x6E6F74747542;
  *(v12 + 72) = 0xE600000000000000;
  v13 = sub_2519AEEB8();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  v15 = sub_2519AEE28();
}

void sub_2519A9A50(void *a1)
{
  v2 = [a1 traitCollection];
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v3 = qword_280DD9178;
  v4 = sub_2519AEE28();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 compatibleWithTraitCollection:v2];

  if (v5)
  {
    oslog = [a1 headerView];
    [oslog setIcon:v5 accessibilityLabel:0];
  }

  else
  {
    if (qword_27F4694D8 != -1)
    {
      swift_once();
    }

    v6 = sub_2519AEAE8();
    __swift_project_value_buffer(v6, qword_27F46A228);
    v7 = a1;
    oslog = sub_2519AEAC8();
    v8 = sub_2519AEF48();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 136446466;
      v12 = sub_2519AF2A8();
      v14 = sub_251978CDC(v12, v13, &v17);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = [v7 traitCollection];
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_251974000, oslog, v8, "[%{public}s] Unable to load icon for %@", v9, 0x16u);
      sub_251988B9C(v10);
      MEMORY[0x2530898E0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x2530898E0](v11, -1, -1);
      MEMORY[0x2530898E0](v9, -1, -1);
    }
  }
}

id sub_2519A9F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingNotificationsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2519AA030()
{
  v1 = v0 + OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2519AA080(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2519AA0EC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16HealthMobilityUI54WalkingSteadinessOnboardingNotificationsViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197A1AC;
}

id sub_2519AA18C()
{
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v0 = qword_280DD9178;
  v1 = sub_2519AEE28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setContentMode_];
  v5 = [v4 layer];
  v6 = [objc_opt_self() blackColor];
  v7 = [v6 CGColor];

  [v5 setShadowColor_];
  v8 = [v4 layer];
  LODWORD(v9) = 1041865114;
  [v8 setShadowOpacity_];

  v10 = [v4 layer];
  [v10 setShadowRadius_];

  v11 = [v4 layer];
  [v11 setShadowOffset_];

  return v4;
}

void sub_2519AA3BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2519AF1F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *ConfirmDetailsValueFormatterImpl.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v6 = [v5 createHKUnitPreferenceController];

  v2[3] = v6;
  return v2;
}

uint64_t sub_2519AA4AC()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F46A260);
  v1 = __swift_project_value_buffer(v0, qword_27F46A260);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2519AA574()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAB08]) init];
  [v0 setForPersonMassUse_];
  v1 = [v0 numberFormatter];
  if (v1)
  {
    v2 = v1;
    [v1 setRoundingMode_];

    qword_27F46CD40 = v0;
  }

  else
  {
    __break(1u);
  }
}

id sub_2519AA624(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  result = [objc_opt_self() sharedFormatter];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2519AA66C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (*v0)
  {
    if (qword_27F4694F0 != -1)
    {
      swift_once();
    }

    v1 = [qword_27F46CD48 usesImperialUnits];
    v2 = objc_opt_self();
    if (v1)
    {
      v3 = [v2 inchUnit];
    }

    else
    {
      v3 = [v2 meterUnitWithMetricPrefix_];
    }
  }

  else
  {
    v6[0] = 14;
    if (qword_27F4694E8 != -1)
    {
      swift_once();
    }

    v3 = [objc_opt_self() unitFromMassFormatterUnit_];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_2519AA7DC(id a1)
{
  if (*v1 == 1)
  {
    if (qword_27F4694F0 != -1)
    {
      swift_once();
    }

    v3 = qword_27F46CD48;
    v4 = [objc_opt_self() meterUnitWithMetricPrefix_];
    [a1 doubleValueForUnit_];

    v5 = sub_2519AEEE8();
    a1 = [v3 localizedStringFromHeightInCentimeters_];

    if (a1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (qword_27F4694F8 != -1)
  {
    swift_once();
  }

  v6 = qword_27F46CD50;
  v7 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [a1 doubleValueForUnit_];

  v8 = sub_2519AEEE8();
  a1 = [v6 stringFromWeightInKilograms_];

  if (a1)
  {
LABEL_9:
    sub_2519AEE38();

    return;
  }

  __break(1u);
}

uint64_t ConfirmDetailsValueFormatterImpl.ValueType.hashValue.getter()
{
  v1 = *v0;
  sub_2519AF258();
  MEMORY[0x2530892A0](v1);
  return sub_2519AF278();
}

id sub_2519AAA40()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [*(v0 + 16) displayTypeController];
  if (result)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_2519AAAB4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCAAE0]) init];
  [v3 setForPersonHeightUse_];
  [v3 setUnitStyle_];
  result = [v3 numberFormatter];
  if (result)
  {
    v5 = result;
    [result setMaximumFractionDigits_];

    v6 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *ConfirmDetailsValueFormatterImpl.init(healthStore:)(void *a1)
{
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v6 = [v5 createHKUnitPreferenceController];

  v1[3] = v6;
  return v1;
}

id sub_2519AAC10(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  sub_251985814(0, &qword_27F469BB0, 0x277CCD830);
  v5 = MEMORY[0x277CCCBA8];
  if (!v4)
  {
    v5 = MEMORY[0x277CCC990];
  }

  v6 = MEMORY[0x253088FA0](*v5);
  v7 = sub_2519AAA40();
  v8 = [v7 displayTypeForObjectType_];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v2[3] unitForDisplayType_];
  if (!v9)
  {

LABEL_10:
    if (qword_27F4694E0 != -1)
    {
      swift_once();
    }

    v16 = sub_2519AEAE8();
    __swift_project_value_buffer(v16, qword_27F46A260);
    v17 = v6;
    v18 = sub_2519AEAC8();
    v19 = sub_2519AEF48();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136446722;
      v22 = sub_2519AF2A8();
      v24 = sub_251978CDC(v22, v23, &v30);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_251978CDC(0xD000000000000013, 0x80000002519B50B0, &v30);
      *(v20 + 22) = 2082;
      v25 = [v17 identifier];
      v26 = sub_2519AEE38();
      v28 = v27;

      v29 = sub_251978CDC(v26, v28, &v30);

      *(v20 + 24) = v29;
      _os_log_impl(&dword_251974000, v18, v19, "[%{public}s.%{public}s]: Unable to determine preferred unit for type %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v21, -1, -1);
      MEMORY[0x2530898E0](v20, -1, -1);
    }

    v31 = v4;
    v10 = sub_2519AA66C();

    return v10;
  }

  v10 = v9;
  if (v4)
  {
    sub_251985814(0, &qword_27F469B48, 0x277CCDAB0);
    v11 = objc_opt_self();
    v12 = [v11 meterUnit];
    v13 = sub_2519AF0C8();

    if (v13)
    {
      v14 = [v11 meterUnitWithMetricPrefix_];

      return v14;
    }
  }

  return v10;
}

uint64_t sub_2519AAF84(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v44 = *a1;
  v6 = v44;
  v7 = sub_2519AAC10(&v44);
  sub_251985814(0, &qword_27F469BB0, 0x277CCD830);
  v8 = MEMORY[0x277CCCBA8];
  if (!v6)
  {
    v8 = MEMORY[0x277CCC990];
  }

  v9 = MEMORY[0x253088FA0](*v8);
  v10 = sub_2519AAA40();
  v11 = [v10 displayTypeForObjectType_];

  if (!v11)
  {
    if (qword_27F4694E0 != -1)
    {
      swift_once();
    }

    v18 = sub_2519AEAE8();
    __swift_project_value_buffer(v18, qword_27F46A260);
    v19 = v9;
    v20 = sub_2519AEAC8();
    v21 = sub_2519AEF48();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v22 = 136446722;
      v23 = sub_2519AF2A8();
      v25 = sub_251978CDC(v23, v24, &v42);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_251978CDC(0xD00000000000001DLL, 0x80000002519B50D0, &v42);
      *(v22 + 22) = 2082;
      v26 = [v19 identifier];
      v27 = sub_2519AEE38();
      v28 = a2;
      v30 = v29;

      v31 = sub_251978CDC(v27, v30, &v42);
      a2 = v28;

      *(v22 + 24) = v31;
      _os_log_impl(&dword_251974000, v20, v21, "[%{public}s.%{public}s]: Unable to determine display type for type %{public}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v41, -1, -1);
      MEMORY[0x2530898E0](v22, -1, -1);
    }

    v43 = v6;
    sub_2519AA7DC(a2);
    v33 = v32;

    return v33;
  }

  if (!v6)
  {
    v34 = [v11 hk:v7 valueFormatterForUnit:?];
    [a2 doubleValueForUnit_];
    v35 = sub_2519AEEE8();
    v36 = [v34 stringFromValue:v35 displayType:v11 unitController:v3[3]];

    if (v36)
    {
      v33 = sub_2519AEE38();
    }

    else
    {

      return 0;
    }

    return v33;
  }

  v12 = objc_opt_self();
  v13 = v7;
  v14 = [v12 footUnit];
  sub_251985814(0, &qword_27F469B48, 0x277CCDAB0);
  v15 = sub_2519AF0C8();

  if (v15)
  {
    [a2 doubleValueForUnit_];
    v16 = HKFormattedFeetAndInches();
    if (v16)
    {
      v17 = v16;
LABEL_17:
      v33 = sub_2519AEE38();

      return v33;
    }

    __break(1u);
  }

  else
  {
    v13 = v13;
    v37 = [v12 meterUnitWithMetricPrefix_];
    v38 = sub_2519AF0C8();

    if (v38)
    {
      v39 = sub_2519AAAB4();
      [a2 doubleValueForUnit_];
      v17 = [v39 stringFromValue:9 unit:?];

      goto LABEL_17;
    }
  }

  result = sub_2519AF198();
  __break(1u);
  return result;
}

uint64_t ConfirmDetailsValueFormatterImpl.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_2519AB578()
{
  result = qword_27F46A278;
  if (!qword_27F46A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46A278);
  }

  return result;
}

unint64_t HKAppleWalkingSteadinessClassification.uniqueIdentifier.getter()
{
  sub_2519AF148();

  v0 = sub_2519AF1E8();
  MEMORY[0x253088EC0](v0);

  return 0xD000000000000027;
}

uint64_t sub_2519AB7C0(uint64_t a1)
{
  v2 = sub_2519ABBAC(&qword_27F46A298, type metadata accessor for HKAppleWalkingSteadinessClassification);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t type metadata accessor for WalkingSteadinessLevelsDataSource()
{
  result = qword_27F46A280;
  if (!qword_27F46A280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2519AB8C8()
{
  v0 = sub_2519AE638();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251992E84();
  v6 = *(sub_2519AE8C8() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2519B0FA0;
  sub_251994A48(&unk_2863D9640);
  sub_2519AE628();
  sub_2519AE618();
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_2519AE8B8();
  v14[0] = 0x3C53447961727241;
  v14[1] = 0xE800000000000000;
  sub_2519AE628();
  v10 = sub_2519AE618();
  v12 = v11;
  v9(v5, v0);
  MEMORY[0x253088EC0](v10, v12);

  MEMORY[0x253088EC0](62, 0xE100000000000000);
  return sub_2519AE898();
}

uint64_t sub_2519ABB3C()
{
  type metadata accessor for WalkingSteadinessLevelCell();
  sub_2519ABBAC(&qword_27F46A290, type metadata accessor for WalkingSteadinessLevelCell);
  return sub_2519AEF08();
}

uint64_t sub_2519ABBAC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2519ABBF4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2519AEE28();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for WalkingSteadinessLevelCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a3, v5);

  return v6;
}

id sub_2519ABC78(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = *&v2[OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_title];
    v5 = objc_opt_self();
    v6 = [v5 localizedTitleForClassification_];
    [v4 setText_];

    v7 = *&v2[OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_detail];
    v8 = [v5 localizedDescriptionForClassification_];
    [v7 setText_];

    return [v2 setSelectionStyle_];
  }

  return result;
}

id sub_2519ABD78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessLevelCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WalkingSteadinessLevelCell()
{
  result = qword_27F46A2A0;
  if (!qword_27F46A2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2519ABE6C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2519AEE28();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a3, v5);

  return v6;
}

_BYTE *sub_2519ABEF0(_BYTE *result)
{
  if (*result != 2)
  {
    v2 = *&v1[OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_title];
    sub_25199366C();
    v3 = sub_2519AEE28();

    [v2 setText_];

    v4 = *&v1[OBJC_IVAR____TtC16HealthMobilityUI12BaseInfoCell_detail];
    sub_251993768();
    v5 = sub_2519AEE28();

    [v4 setText_];

    return [v1 setSelectionStyle_];
  }

  return result;
}

id sub_2519ABFFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsCell()
{
  result = qword_27F46A2B0;
  if (!qword_27F46A2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2519AC0A8()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F46A2C0);
  v1 = __swift_project_value_buffer(v0, qword_27F46A2C0);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2519AC198(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_2519AC1DC()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_accessoryImage;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2519AC230(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_accessoryImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2519AC2E8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_2519AC344()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_tintAccessoryColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2519AC398(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_tintAccessoryColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2519AC450(uint64_t a1, uint64_t *a2)
{
  sub_251980888(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_251980988(v6, v3 + v4);
  swift_endAccess();
  sub_2519AC4C0();
  return sub_2519A8DC0(v6);
}

void sub_2519AC4C0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_251980888(&v1[v2], v38);
  if (!v38[3])
  {
    sub_2519A8DC0(v38);
    goto LABEL_13;
  }

  sub_251994930(0, &qword_27F4697E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_27F469500 != -1)
    {
      swift_once();
    }

    v15 = sub_2519AEAE8();
    __swift_project_value_buffer(v15, qword_27F46A2C0);
    v16 = v1;
    v17 = sub_2519AEAC8();
    v18 = sub_2519AEF38();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136446722;
      v21 = sub_2519AF2A8();
      v23 = sub_251978CDC(v21, v22, &v36);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_251978CDC(1835365481, 0xE400000000000000, &v36);
      *(v19 + 22) = 2082;
      sub_2519A8D58();
      v38[0] = v24;
      sub_251981014();
      v25 = sub_2519AEE58();
      v27 = sub_251978CDC(v25, v26, &v36);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_251974000, v17, v18, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that was not MultiselectItem", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v20, -1, -1);
      MEMORY[0x2530898E0](v19, -1, -1);
    }

    return;
  }

  v3 = [v1 textLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2519AEE28();
    [v4 setText_];
  }

  v6 = [v1 detailTextLabel];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2519AEE28();
    [v7 setText_];
  }

  sub_2519AD420();
  if (v37)
  {
    v9 = *MEMORY[0x277D76918];
    v10 = sub_2519AF0B8();
    if (v10)
    {
      v11 = v10;

      v12 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_accessoryImage;
      swift_beginAccess();
      v13 = *&v1[v12];
      *&v1[v12] = v11;

      if (qword_27F469510 != -1)
      {
        swift_once();
      }

      v14 = qword_27F46CD70;
LABEL_22:
      v33 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_tintAccessoryColor;
      swift_beginAccess();
      v34 = *&v1[v33];
      *&v1[v33] = v14;
      v35 = v14;

      sub_2519ACB18();
      return;
    }

    __break(1u);
  }

  else
  {
    v28 = *MEMORY[0x277D76918];
    v29 = sub_2519AF0B8();
    if (v29)
    {
      v30 = v29;

      v31 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_accessoryImage;
      swift_beginAccess();
      v32 = *&v1[v31];
      *&v1[v31] = v30;

      if (qword_27F469508 != -1)
      {
        swift_once();
      }

      v14 = qword_27F46CD68;
      goto LABEL_22;
    }
  }

  __break(1u);
}

uint64_t sub_2519AC958@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v1 + v3, a1);
}

uint64_t sub_2519AC9B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_251980988(a1, v1 + v3);
  swift_endAccess();
  sub_2519AC4C0();
  return sub_2519A8DC0(a1);
}

void (*sub_2519ACA1C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2519ACA80;
}

void sub_2519ACA80(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_2519AC4C0();
  }
}

void sub_2519ACB18()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = [v2 preferredFontForTextStyle_];
  [v3 pointSize];
  v6 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v5];
  v7 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_accessoryImage;
  swift_beginAccess();
  v8 = [*&v1[v7] imageWithConfiguration_];
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v10 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_tintAccessoryColor;
  swift_beginAccess();
  [v9 setTintColor_];
  [v1 setAccessoryView_];
  v11 = [v1 textLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setFont_];
  }

  v13 = [v1 detailTextLabel];
  if (v13)
  {
    v14 = v13;
    v15 = v4;
    [v14 setFont_];

    v6 = v15;
  }
}

id MultiselectTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiselectTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_2519AD084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_2519AD420();
  v5 = *MEMORY[0x277D76918];
  result = sub_2519AF0B8();
  if (result)
  {
    *&v2[OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_accessoryImage] = result;
    v7 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_tintAccessoryColor;
    if (qword_27F469508 != -1)
    {
      swift_once();
    }

    v8 = qword_27F46CD68;
    *&v3[v7] = qword_27F46CD68;
    v9 = &v3[OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item];
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 4) = 0;
    v10 = v8;
    if (a2)
    {
      v11 = sub_2519AEE28();
    }

    else
    {
      v11 = 0;
    }

    v25.receiver = v3;
    v25.super_class = type metadata accessor for MultiselectTableViewCell();
    v12 = objc_msgSendSuper2(&v25, sel_initWithStyle_reuseIdentifier_, 3, v11);

    v13 = v12;
    v14 = [v13 textLabel];
    if (v14)
    {
      v15 = v14;
      [v14 setNumberOfLines_];
    }

    v16 = [v13 detailTextLabel];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() secondaryLabelColor];
      [v17 setTextColor_];
    }

    v19 = [v13 detailTextLabel];

    if (v19)
    {
      [v19 setNumberOfLines_];
    }

    sub_2519A8FD8();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2519B08A0;
    v21 = sub_2519AEC08();
    v22 = MEMORY[0x277D74DB8];
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    v23 = sub_2519AEAF8();
    v24 = MEMORY[0x277D74BA0];
    *(v20 + 48) = v23;
    *(v20 + 56) = v24;
    sub_2519AF0A8();

    swift_unknownObjectRelease();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2519AD320()
{
  v1 = v0;
  sub_2519AD420();
  v2 = *MEMORY[0x277D76918];
  v3 = sub_2519AF0B8();
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_accessoryImage) = v3;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_tintAccessoryColor;
  if (qword_27F469508 != -1)
  {
    swift_once();
  }

  *(v1 + v4) = qword_27F46CD68;
  v5 = v1 + OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  sub_2519AF198();
  __break(1u);
}

unint64_t sub_2519AD420()
{
  result = qword_27F46A2F0;
  if (!qword_27F46A2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F46A2F0);
  }

  return result;
}

id sub_2519AD46C(uint64_t a1, uint64_t a2)
{
  sub_2519AD8D4(a1, a2, 1954047310, 0xE400000000000000);
  v4 = v3;
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v5 = sub_2519AEE28();

  if (v4)
  {
    v6 = sub_2519AEE28();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v2 addPrimaryFooterButtonWithTitle:v5 automationIdentifier:{v6, 0xE000000000000000}];

  return v7;
}

id sub_2519AD5D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, SEL *a6, void *a7)
{
  v10 = *a5;
  v11 = [objc_opt_self() *a6];
  v12 = v11;
  if (a4)
  {
    a4 = sub_2519AEE28();
  }

  [v11 setAccessibilityIdentifier_];

  [v11 addTarget:v7 action:*a7 forControlEvents:64];
  v13 = sub_2519AEE28();
  [v11 setTitle:v13 forState:0];

  v14 = [v7 buttonTray];
  v15 = v11;
  [v14 addButton_];

  return v15;
}

id sub_2519AD71C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, SEL *a6, void *a7)
{
  v12 = sub_2519AEE38();
  v14 = v13;
  if (a4)
  {
    v15 = sub_2519AEE38();
    a4 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = a1;
  v18 = sub_2519AD5D0(v12, v14, v15, a4, a5, a6, a7);

  return v18;
}

id sub_2519AD7E8(uint64_t a1, uint64_t a2)
{
  sub_2519AD8D4(a1, a2, 0x6C65636E6143, 0xE600000000000000);
  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_cancelButtonTapped];
  v6 = v5;
  if (v4)
  {
    v7 = sub_2519AEE28();
  }

  else
  {
    v7 = 0;
  }

  [v5 setAccessibilityIdentifier_];

  v8 = [v2 navigationItem];
  [v8 setRightBarButtonItem_];

  return v5;
}

uint64_t sub_2519AD8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_251980C7C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2519B12D0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 56) = a4;
    *(v8 + 64) = 0x6E6F74747542;
    *(v8 + 72) = 0xE600000000000000;

    v9 = sub_2519AEEB8();

    v10 = HKUIJoinStringsForAutomationIdentifier();

    if (v10)
    {
      a1 = sub_2519AEE38();
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

id sub_2519AD9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_2519AEE38();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id sub_2519ADA60()
{
  v1 = [objc_opt_self() buttonWithType_];
  v2 = sub_2519AEE28();
  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_contentViewButtonTapped forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview_];

  v4 = [v0 contentView];
  [v1 hk:v4 alignConstraintsWithView:?];

  return v1;
}

id sub_2519ADB64(void *a1)
{
  sub_2519AEE38();
  v2 = a1;
  v3 = sub_2519ADA60();

  return v3;
}

uint64_t sub_2519ADCA0(uint64_t a1, uint64_t *a2)
{
  sub_2519AE044();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519AE09C(a1, v8);
  v9 = *a2;
  return sub_2519ADE3C(v8);
}

uint64_t sub_2519ADD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_2519AEE28();
  v5 = [v3 hk:v4 keyExists:?];

  if (v5)
  {
    v6 = sub_2519AEE28();
    [v3 doubleForKey_];

    sub_2519AE5A8();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_2519AE608();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_2519ADE3C(uint64_t a1)
{
  v2 = v1;
  sub_2519AE044();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2519AE608();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519AE09C(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2519AE100(v8);
    v15 = *(v2 + 16);
    v16 = sub_2519AEE28();
    [v15 removeObjectForKey_];

    return sub_2519AE100(a1);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    sub_2519AE5B8();
    v19 = v18;
    v20 = *(v2 + 16);
    v21 = sub_2519AEE28();
    [v20 setDouble:v21 forKey:v19];

    sub_2519AE100(a1);
    return (*(v10 + 8))(v14, v9);
  }
}

void sub_2519AE044()
{
  if (!qword_27F469D10)
  {
    sub_2519AE608();
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469D10);
    }
  }
}

uint64_t sub_2519AE09C(uint64_t a1, uint64_t a2)
{
  sub_2519AE044();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2519AE100(uint64_t a1)
{
  sub_2519AE044();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_2519AE15C(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_2519AE044();
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  sub_2519ADD2C(v5);
  return sub_2519AE20C;
}

void sub_2519AE20C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_2519AE09C(v3, v2);
    sub_2519ADE3C(v2);
    sub_2519AE100(v3);
  }

  else
  {
    sub_2519ADE3C(v3);
  }

  free(v3);

  free(v2);
}

void WalkingSteadinessSettingsManager.__allocating_init()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2519AEE28();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    type metadata accessor for WalkingSteadinessSettingsManager();
    *(swift_allocObject() + 16) = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t WalkingSteadinessSettingsManager.__allocating_init(userDefaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t WalkingSteadinessSettingsManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}