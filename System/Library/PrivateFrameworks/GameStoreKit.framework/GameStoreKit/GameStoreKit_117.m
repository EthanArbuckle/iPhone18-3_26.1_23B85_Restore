void (*sub_24F1FE3B8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F1FE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F1FE9C0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F1FE4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F1FE9C0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F1FE508(uint64_t a1)
{
  v2 = sub_24F1FE9C0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24F1FE55C()
{
  result = qword_27F23C468;
  if (!qword_27F23C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C458);
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088]);
    sub_24E602068(&qword_27F23C470, &qword_27F23C478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C468);
  }

  return result;
}

uint64_t sub_24F1FE644(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F1FE68C()
{
  result = qword_27F23C480;
  if (!qword_27F23C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C460);
    sub_24E602068(&qword_27F23C488, &qword_27F23C490);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C480);
  }

  return result;
}

unint64_t sub_24F1FE770()
{
  result = qword_27F23C498;
  if (!qword_27F23C498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C450);
    sub_24F1FE55C();
    sub_24F1FE68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C498);
  }

  return result;
}

unint64_t sub_24F1FE810()
{
  result = qword_27F23C4A0;
  if (!qword_27F23C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C4A8);
    sub_24F1FE770();
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4A0);
  }

  return result;
}

unint64_t sub_24F1FE914()
{
  result = qword_27F23C4C0;
  if (!qword_27F23C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4C0);
  }

  return result;
}

unint64_t sub_24F1FE96C()
{
  result = qword_27F23C4C8;
  if (!qword_27F23C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4C8);
  }

  return result;
}

unint64_t sub_24F1FE9C0()
{
  result = qword_27F23C4D0;
  if (!qword_27F23C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4D0);
  }

  return result;
}

uint64_t Footnote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Footnote.__allocating_init(id:text:clickAction:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 80) = 0;
  sub_24E65E064(a1, &v28);
  if (*(&v29 + 1))
  {
    v15 = v29;
    *(v14 + 40) = v28;
    *(v14 + 56) = v15;
    *(v14 + 72) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24 = a2;
    v25 = a3;
    v17 = v16;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v26 = v17;
    v27 = v21;
    a5 = v19;
    a4 = v18;
    a2 = v24;
    a3 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  swift_beginAccess();
  *(v14 + 80) = a4;
  *(v14 + 32) = a5;
  return v14;
}

uint64_t Footnote.init(id:text:clickAction:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 80) = 0;
  sub_24E65E064(a1, &v29);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25 = a2;
    v26 = a3;
    v17 = v16;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v27 = v17;
    v28 = v21;
    a5 = v19;
    a4 = v18;
    a2 = v25;
    a3 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v22 = v33;
  *(v6 + 40) = v32;
  *(v6 + 56) = v22;
  *(v6 + 72) = v34;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  *(v6 + 80) = a4;

  *(v6 + 32) = a5;
  return v6;
}

uint64_t Footnote.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Footnote.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Footnote.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v40 = a2;
  v3 = v2;
  v39[0] = *v3;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F928388();
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v39 - v16;
  *(v3 + 80) = 0;
  v39[1] = v3 + 80;
  v41 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v42 = v18;
    v43 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v6;
    v23 = v22;
    (*(v21 + 8))(v8, v5);
    v42 = v20;
    v43 = v23;
  }

  sub_24F92C7F8();
  v24 = *(v9 + 8);
  v24(v17, v47);
  v25 = v45;
  *(v3 + 40) = v44;
  *(v3 + 56) = v25;
  *(v3 + 72) = v46;
  v26 = v41;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v24(v14, v47);
  if (v29)
  {
    *(v3 + 16) = v27;
    *(v3 + 24) = v29;
    type metadata accessor for Action();
    sub_24F928398();
    v30 = v40;
    v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v11, v40);
    v32 = v47;
    v24(v11, v47);
    swift_beginAccess();
    *(v3 + 80) = v31;

    sub_24F928398();
    v33 = _sSo28ASKFootnotePresentationStyleV12GameStoreKitE13deserializingAB9JetEngine10JSONObjectV_tcfC_0(v11);
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v30, v34);
    v24(v26, v32);
    *(v3 + 32) = v33;
  }

  else
  {
    v35 = sub_24F92AC38();
    sub_24F1FFAEC(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v36 = 1954047348;
    v36[1] = 0xE400000000000000;
    v36[2] = v39[0];
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v40, v37);
    v24(v26, v47);
    sub_24E6585F8(v3 + 40);

    type metadata accessor for Footnote();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_24F1FF35C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t sub_24F1FF3F4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_24F1FF43C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Footnote();
  *a1 = v1;
}

uint64_t Footnote.deinit()
{

  sub_24E6585F8(v0 + 40);

  return v0;
}

uint64_t Footnote.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1FF504@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Footnote();
  v7 = swift_allocObject();
  result = Footnote.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1FF5B0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Footnote();
  *a1 = v3;
}

uint64_t _sSo28ASKFootnotePresentationStyleV12GameStoreKitE13deserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  sub_24F9282B8();
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = sub_24F928388();
    (*(*(v7 - 8) + 8))(a1, v7);
    sub_24E601704(v4, &qword_27F2213B0);
    return 0;
  }

  v8 = sub_24F92ABC8();
  (*(v6 + 8))(v4, v5);
  if (!v8)
  {
    v17 = sub_24F928388();
    (*(*(v17 - 8) + 8))(a1, v17);
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v25 = "textLightensOnHighlight";
    v11 = (v8 + 40);
    v24 = xmmword_24F93A400;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = v12 == 0x7276656843736168 && v13 == 0xEA00000000006E6FLL;
      if (v14 || (sub_24F92CE08() & 1) != 0)
      {
        v10 |= 2uLL;
      }

      else
      {
        v15 = v12 == 0xD000000000000017 && 0x800000024FA6F3E0 == v13;
        if (v15 || (sub_24F92CE08() & 1) != 0)
        {
          v10 |= 4uLL;
        }

        else if (v12 == 0x7261706553736168 && v13 == 0xEC000000726F7461 || (sub_24F92CE08() & 1) != 0)
        {
          v10 |= 8uLL;
        }

        else
        {
          v22 = v8;
          v23 = a1;
          v16 = qword_27F210568;

          if (v16 != -1)
          {
            swift_once();
          }

          v21 = sub_24F92AAE8();
          v20[2] = __swift_project_value_buffer(v21, qword_27F39C398);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          v20[1] = *(*(sub_24F928468() - 8) + 72);
          *(swift_allocObject() + 16) = v24;
          sub_24F9283A8();
          v26[3] = MEMORY[0x277D837D0];
          v26[0] = v12;
          v26[1] = v13;
          sub_24F928438();
          sub_24E601704(v26, &qword_27F2129B0);
          sub_24F92A5B8();

          v8 = v22;
          a1 = v23;
        }
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = sub_24F928388();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v10;
}

uint64_t sub_24F1FFAEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24F1FFB34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t ReloadableItemPagePresenter.reloadItem(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93DE60;
  (*(v7 + 16))(v9 + v8, a1, v6);
  (*(a3 + 8))(v9, a2, a3);
}

double NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

UIEdgeInsets __swiftcall NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v1 = v2;
  }

  v4 = v3;
  result.right = v4;
  result.left = v1;
  return result;
}

BOOL NSParagraphStyle.isListItem.getter()
{
  [v0 firstLineHeadIndent];
  if (v1 != 0.0)
  {
    return 0;
  }

  [v0 headIndent];
  if (v2 <= 0.0)
  {
    return 0;
  }

  [v0 defaultTabInterval];
  return v3 > 0.0;
}

id _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v4 setAlignment_];
  sub_24F91F708();
  v5 = sub_24F91F728();

  v6 = 1;
  if (v5 != 2)
  {
    v6 = -1;
  }

  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [v4 setBaseWritingDirection_];
  sub_24F91F708();
  v8 = sub_24F92B358();

  v9 = 1.3;
  if ((v8 & 1) == 0)
  {
    sub_24F91F708();
    v10 = sub_24F92B358();

    if ((v10 & 1) == 0)
    {
      sub_24F91F708();
      v11 = sub_24F92B358();

      if (v11)
      {
        v9 = 1.3;
      }

      else
      {
        v9 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

id _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_24F20059C();
  v5 = sub_24F92B588();
  [v4 setTabStops_];

  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  sub_24F91F708();
  v6 = sub_24F92B358();

  v7 = 1.3;
  if ((v6 & 1) == 0)
  {
    sub_24F91F708();
    v8 = sub_24F92B358();

    if ((v8 & 1) == 0)
    {
      sub_24F91F708();
      v9 = sub_24F92B358();

      if (v9)
      {
        v7 = 1.3;
      }

      else
      {
        v7 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  sub_24F91F708();
  v10 = sub_24F91F728();

  v11 = 1;
  if (v10 != 2)
  {
    v11 = -1;
  }

  if (v10 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [v4 setBaseWritingDirection_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

id _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_24F20059C();
  v5 = sub_24F92B588();
  [v4 setTabStops_];

  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  sub_24F91F708();
  v6 = sub_24F91F728();

  v7 = 1;
  if (v6 != 2)
  {
    v7 = -1;
  }

  if (v6 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v4 setBaseWritingDirection_];
  sub_24F91F708();
  v9 = sub_24F92B358();

  v10 = 1.3;
  if ((v9 & 1) == 0)
  {
    sub_24F91F708();
    v11 = sub_24F92B358();

    if ((v11 & 1) == 0)
    {
      sub_24F91F708();
      v12 = sub_24F92B358();

      if (v12)
      {
        v10 = 1.3;
      }

      else
      {
        v10 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_24F20059C()
{
  result = qword_27F23C4E0;
  if (!qword_27F23C4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23C4E0);
  }

  return result;
}

GameStoreKit::AccountSection::ContentItemType_optional __swiftcall AccountSection.ContentItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccountSection.ContentItemType.rawValue.getter()
{
  v1 = 1802398060;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x7473694C6F666E69;
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

uint64_t sub_24F2006C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F200788()
{
  sub_24F92B218();
}

uint64_t sub_24F200834()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2008FC(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1802398060;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000021;
    v4 = 0x800000024FA40560;
  }

  if (*v1)
  {
    v3 = 0x7473694C6F666E69;
    v2 = 0xEC0000006D657449;
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

uint64_t AccountSection.ContentItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v84 = a2;
  v76 = a3;
  v79 = sub_24F9285B8();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v71 - v6;
  MEMORY[0x28223BE20](v7);
  v72 = &v71 - v8;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  sub_24F928398();
  sub_24F2010AC();
  v27 = v78;
  sub_24F928218();
  if (v27)
  {
    (*(v77 + 8))(v84, v79);
    v28 = *(v10 + 8);
    v28(a1, v9);
    return (v28)(v26, v9);
  }

  v30 = *(v10 + 8);
  v78 = v10 + 8;
  v71 = v30;
  v30(v26, v9);
  v31 = v9;
  if (v80 > 1u)
  {
    v74 = 0;
    if (v80 != 2)
    {
      v49 = v14;
      v50 = a1;
      sub_24F928398();
      v51 = sub_24F928348();
      v53 = v52;
      v54 = v49;
      v55 = v71;
      v71(v54, v31);
      v56 = v73;
      sub_24F928398();
      v57 = sub_24F928278();
      (*(v77 + 8))(v84, v79);
      v55(v50, v31);
      result = (v55)(v56, v31);
      v58 = v80;
      v59 = v76;
      *(v76 + 33) = v81;
      v60 = *v83;
      *(v59 + 49) = v82;
      *(v59 + 65) = v60;
      *v59 = v51;
      *(v59 + 1) = v53;
      *(v59 + 16) = v57 & 1;
      *(v59 + 10) = *&v83[15];
      *(v59 + 17) = v58;
      *(v59 + 88) = 3;
      return result;
    }

    (*(v10 + 16))(v17, a1, v9);
    v38 = v77;
    v39 = v75;
    v40 = v84;
    v41 = v79;
    (*(v77 + 16))(v75, v84, v79);
    type metadata accessor for AccountSectionText();
    swift_allocObject();
    v42 = v74;
    v43 = AccountSectionText.init(deserializing:using:)(v17, v39);
    if (v42)
    {
      (*(v38 + 8))(v40, v41);
      return (v71)(a1, v31);
    }

    v63 = v43;
    (*(v38 + 8))(v40, v41);
    result = (v71)(a1, v31);
    v67 = v76;
    *v76 = v63;
    v64 = v80;
    *(v67 + 24) = v81;
    v65 = *v83;
    *(v67 + 40) = v82;
    *(v67 + 56) = v65;
    *(v67 + 72) = *&v83[16];
    *(v67 + 8) = v64;
    v70 = 2;
  }

  else
  {
    if (!v80)
    {
      v32 = v23;
      (*(v10 + 16))(v23, a1, v9);
      v33 = v77;
      v34 = v72;
      v35 = v84;
      v36 = v79;
      (*(v77 + 16))(v72, v84, v79);
      AccountSectionLink.init(deserializing:using:)(v32, v34, &v80);
      v37 = v76;
      (*(v33 + 8))(v35, v36);
      result = (v71)(a1, v9);
      v83[40] = 0;
      v61 = *v83;
      v37[2] = v82;
      v37[3] = v61;
      v37[4] = *&v83[16];
      v62 = v81;
      *v37 = v80;
      v37[1] = v62;
      *(v37 + 73) = *&v83[25];
      return result;
    }

    v44 = v20;
    (*(v10 + 16))(v20, a1, v9);
    v45 = v77;
    v46 = v74;
    v47 = v84;
    v48 = v79;
    (*(v77 + 16))(v74, v84, v79);
    type metadata accessor for AccountSectionInfoListItem();
    swift_allocObject();
    v66 = AccountSectionInfoListItem.init(deserializing:using:)(v44, v46);
    (*(v45 + 8))(v47, v48);
    result = (v71)(a1, v9);
    v67 = v76;
    *v76 = v66;
    v68 = v80;
    *(v67 + 24) = v81;
    v69 = *v83;
    *(v67 + 40) = v82;
    *(v67 + 56) = v69;
    *(v67 + 72) = *&v83[16];
    *(v67 + 8) = v68;
    v70 = 1;
  }

  *(v67 + 88) = v70;
  return result;
}

unint64_t sub_24F2010AC()
{
  result = qword_27F23C4E8;
  if (!qword_27F23C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4E8);
  }

  return result;
}

uint64_t AccountSection.ContentItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  sub_24F201C70(v2, v16);
  if (v18 <= 1u)
  {
    if (!v18)
    {
      v13[2] = v16[2];
      v14[0] = v16[3];
      v14[1] = v16[4];
      v15 = v17;
      v13[0] = v16[0];
      v13[1] = v16[1];
      sub_24E65864C(v14, a1);
      return sub_24F201CD8(v13);
    }

    v12 = *&v16[0] + 48;
    goto LABEL_7;
  }

  if (v18 == 2)
  {
    v12 = *&v16[0] + 24;
LABEL_7:
    sub_24E65864C(v12, a1);
  }

  sub_24F201CA8(v16);
  sub_24F91F6A8();
  (*(v5 + 16))(v7, v10, v4);
  sub_24F201D2C(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92C7F8();
  return (*(v5 + 8))(v10, v4);
}

uint64_t AccountSection.__allocating_init(id:title:footer:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    v15 = v26;
    *(v14 + 48) = v25;
    *(v14 + 64) = v15;
    *(v14 + 80) = v27;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v24[1] = v20;
    v24[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v25);
  }

  sub_24E9BBAA8(a1);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t AccountSection.init(id:title:footer:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v26);
  }

  sub_24E9BBAA8(a1);
  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t AccountSection.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSection.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSection.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = v2;
  v45 = sub_24F9285B8();
  v53 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v44 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v47 = v10;
  if (v18)
  {
    v48 = v17;
    v49 = v18;
    sub_24F92C7F8();
    v19 = *(v11 + 8);
    v20 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = v16;
    v22 = v10;
    v23 = v10;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v7;
    v26 = v3;
    v28 = v27;
    (*(v43 + 8))(v9, v25);
    v48 = v24;
    v49 = v28;
    v3 = v26;
    sub_24F92C7F8();
    v19 = *(v11 + 8);
    v20 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = v16;
    v23 = v47;
    v22 = v47;
  }

  v29 = v19;
  v19(v21, v23);
  v30 = v51;
  *(v3 + 48) = v50;
  *(v3 + 64) = v30;
  *(v3 + 80) = v52;
  v31 = v44;
  sub_24F928398();
  v32 = sub_24F928348();
  v34 = v33;
  v42 = v29;
  v43 = v20;
  v29(v13, v22);
  *(v3 + 16) = v32;
  *(v3 + 24) = v34;
  type metadata accessor for LinkableText();
  v35 = v31;
  sub_24F928398();
  v41 = *(v53 + 16);
  v37 = v45;
  v36 = v46;
  v41(v6, v46, v45);
  sub_24F201D2C(&qword_27F21C360, type metadata accessor for LinkableText);
  sub_24F929548();
  *(v3 + 32) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C4F0);
  sub_24F928398();
  v41(v6, v36, v37);
  sub_24F201D74();
  sub_24F929548();
  if (v50)
  {
    v38 = v50;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  (*(v53 + 8))(v36, v37);
  v42(v35, v47);
  *(v3 + 40) = v38;
  return v3;
}

uint64_t AccountSection.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountSection.deinit()
{

  sub_24E9BBAA8(v0 + 48);
  return v0;
}

uint64_t AccountSection.__deallocating_deinit()
{

  sub_24E9BBAA8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_24F201BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSection();
  v7 = swift_allocObject();
  result = AccountSection.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F201D2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F201D74()
{
  result = qword_27F23C4F8;
  if (!qword_27F23C4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C4F0);
    sub_24F201DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C4F8);
  }

  return result;
}

unint64_t sub_24F201DF8()
{
  result = qword_27F23C500;
  if (!qword_27F23C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C500);
  }

  return result;
}

unint64_t sub_24F201E50()
{
  result = qword_27F23C508;
  if (!qword_27F23C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C508);
  }

  return result;
}

unint64_t sub_24F201EA8()
{
  result = qword_27F23C510;
  if (!qword_27F23C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C510);
  }

  return result;
}

uint64_t sub_24F201FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F201FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F202048(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t PresentPromptV2ActionIntent.triggerKind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresentPromptV2ActionIntent.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentPromptV2ActionIntent() + 20);
  v4 = sub_24F9294C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PresentPromptV2ActionIntent()
{
  result = qword_27F23C530;
  if (!qword_27F23C530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t PresentPromptV2ActionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4B72656767697274;
  *(inited + 40) = 0xEB00000000646E69;
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x617461646174656DLL;
  *(inited + 96) = 0xE800000000000000;
  v7 = *(type metadata accessor for PresentPromptV2ActionIntent() + 20);
  v8 = sub_24F9294C8();
  v9 = MEMORY[0x277D21EE8];
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, &v1[v7], v8);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_24F20232C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x4B72656767697274;
  }
}

uint64_t sub_24F202370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B72656767697274 && a2 == 0xEB00000000646E69;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F202450(uint64_t a1)
{
  v2 = sub_24F202B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F20248C(uint64_t a1)
{
  v2 = sub_24F202B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PresentPromptV2ActionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C518);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F202B58();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for PresentPromptV2ActionIntent();
    v8[14] = 1;
    sub_24F9294C8();
    sub_24F202BAC(&qword_27F226DB0);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PresentPromptV2ActionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F9294C8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C528);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PresentPromptV2ActionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F202B58();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24F202BAC(&qword_27F226DC0);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24F202BF0(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F202C54(v10);
}

unint64_t sub_24F2029CC@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4B72656767697274;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xEB00000000646E69;
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0x617461646174656DLL;
  *(inited + 96) = 0xE800000000000000;
  v9 = *(a1 + 20);
  v10 = sub_24F9294C8();
  v11 = MEMORY[0x277D21EE8];
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, &v2[v9], v10);

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v13;
  return result;
}

unint64_t sub_24F202B58()
{
  result = qword_27F23C520;
  if (!qword_27F23C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C520);
  }

  return result;
}

uint64_t sub_24F202BAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F9294C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F202BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentPromptV2ActionIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F202C54(uint64_t a1)
{
  v2 = type metadata accessor for PresentPromptV2ActionIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F202CC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F9294C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F202D84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F9294C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F202E28()
{
  result = sub_24F9294C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F202EB8()
{
  result = qword_27F23C540;
  if (!qword_27F23C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C540);
  }

  return result;
}

unint64_t sub_24F202F10()
{
  result = qword_27F23C548;
  if (!qword_27F23C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C548);
  }

  return result;
}

unint64_t sub_24F202F68()
{
  result = qword_27F23C550;
  if (!qword_27F23C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C550);
  }

  return result;
}

uint64_t sub_24F202FBC()
{
  sub_24F92B218();
}

uint64_t sub_24F203148()
{
  sub_24F92B218();
}

uint64_t sub_24F2032F0()
{
  sub_24F92B218();
}

uint64_t sub_24F203448()
{
  sub_24F92B218();
}

uint64_t sub_24F203590()
{
  sub_24F92B218();
}

uint64_t sub_24F20372C()
{
  sub_24F92B218();
}

uint64_t sub_24F203890()
{
  sub_24F92B218();
}

uint64_t sub_24F203A14()
{
  sub_24F92B218();
}

uint64_t sub_24F203BAC()
{
  sub_24F92B218();
}

uint64_t sub_24F203D40()
{
  sub_24F92B218();
}

uint64_t sub_24F203E84()
{
  sub_24F92B218();
}

uint64_t sub_24F203F9C()
{
  sub_24F92B218();
}

uint64_t sub_24F20410C()
{
  sub_24F92B218();
}

uint64_t sub_24F20425C()
{
  sub_24F92B218();
}

uint64_t sub_24F2043A0()
{
  sub_24F92B218();
}

uint64_t sub_24F2044B4()
{
  sub_24F92B218();
}

uint64_t sub_24F2045BC()
{
  sub_24F92B218();
}

uint64_t sub_24F204720()
{
  sub_24F92B218();
}

uint64_t sub_24F204854()
{
  sub_24F92B218();
}

uint64_t sub_24F2049D0()
{
  sub_24F92B218();
}

uint64_t sub_24F204B30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_24E8E2880(a2, a3);
  sub_24F92B218();
}

uint64_t StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = a1[1];
  *a9 = *a1;
  a9[1] = v17;
  v18 = type metadata accessor for StoreTab();
  sub_24E99091C(a2, a9 + v18[6]);
  v19 = (a9 + v18[7]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a9 + v18[9]);
  *v20 = a5;
  v20[1] = a6;
  if (a8)
  {
    result = sub_24E601704(a2, &qword_27F228530);
    v22 = a7;
  }

  else
  {
    StoreTab.Identifier.rawValue.getter();
    sub_24E600AEC();
    v22 = sub_24F92C4F8();
    a8 = v23;
    sub_24E601704(a2, &qword_27F228530);
  }

  a9[2] = v22;
  a9[3] = a8;
  *(a9 + v18[8]) = a10;
  return result;
}

uint64_t type metadata accessor for StoreTab()
{
  result = qword_27F23C570;
  if (!qword_27F23C570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F204E74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a3)
    {
      sub_24F92C888();
      MEMORY[0x253050C20](0xD000000000000025, 0x800000024FA6F4F0);
      MEMORY[0x253050C20](a1, a2);
      v7 = 0x6461637241736926;
      v8 = 0xEE00657572743D65;
    }

    else
    {
      sub_24F92C888();

      v7 = a1;
      v8 = a2;
    }

    MEMORY[0x253050C20](v7, v8);
    sub_24F91F488();
  }

  else
  {
    v9 = sub_24F91F4A8();
    v10 = *(*(v9 - 8) + 56);

    return v10(a4, 1, 1, v9);
  }
}

uint64_t sub_24F204FFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a3)
    {
      sub_24F92C888();
      MEMORY[0x253050C20](0xD000000000000023, 0x800000024FA6F520);
      MEMORY[0x253050C20](a1, a2);
      v7 = 0x6461637241736926;
      v8 = 0xEE00657572743D65;
    }

    else
    {
      sub_24F92C888();

      v7 = a1;
      v8 = a2;
    }

    MEMORY[0x253050C20](v7, v8);
    sub_24F91F488();
  }

  else
  {
    v9 = sub_24F91F4A8();
    v10 = *(*(v9 - 8) + 56);

    return v10(a4, 1, 1, v9);
  }
}

uint64_t StoreTab.identifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24E8E2880(v2, v3);
}

uint64_t StoreTab.pageContext.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StoreTab.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 4)
  {
    if (v2 <= 7)
    {
      if (v2 == 5)
      {
        v3 = 0x656461637261;
      }

      else if (v2 == 6)
      {
        v3 = 0x6465727574616566;
      }

      else
      {
        v3 = 0x69726F6765746163;
      }

      goto LABEL_25;
    }

    switch(v2)
    {
      case 8:
        v3 = 0x737472616863;
        goto LABEL_25;
      case 9:
        v3 = 0x6573616863727570;
        goto LABEL_25;
      case 10:
        v3 = 0x64616F6C6E776F64;
        goto LABEL_25;
    }

LABEL_24:
    v3 = *v0;
    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x7961646F74;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v3 = 0x73656D6167;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v2 == 2)
  {
    v3 = 1936748641;
  }

  else if (v2 == 3)
  {
    v3 = 0x73657461647075;
  }

  else
  {
    v3 = 0x686372616573;
  }

LABEL_25:
  sub_24E8E2880(v1, v2);
  return v3;
}

uint64_t StoreTab.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoreTab() + 24);

  return sub_24E99091C(v3, a1);
}

uint64_t StoreTab.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoreTab() + 28));

  return v1;
}

uint64_t StoreTab.editorialPageUrls.getter()
{
  type metadata accessor for StoreTab();
}

uint64_t StoreTab.imageIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoreTab() + 36));

  return v1;
}

uint64_t StoreTab.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a2;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v16);
  v82 = &v73 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  sub_24F928398();
  sub_24F205C40();
  v24 = v83;
  sub_24F928218();
  if (v24)
  {
    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v84, v25);
    v26 = *(v10 + 8);
    v26(a1, v9);
    return (v26)(v23, v9);
  }

  else
  {
    v75 = v15;
    v73 = v12;
    v77 = v8;
    v83 = 0;
    v29 = *(v10 + 8);
    v28 = v10 + 8;
    v29(v23, v9);
    v30 = v87;
    v31 = v88;
    v32 = v89;
    *v89 = v87;
    v32[1] = v31;
    v74 = v30;
    v80 = v31;
    sub_24E8E2880(v30, v31);
    v33 = a1;
    sub_24F928398();
    v34 = type metadata accessor for StoreTab();
    sub_24F928268();
    v35 = v29;
    v29(v20, v9);
    sub_24F928398();
    v36 = sub_24F928348();
    v38 = v37;
    v29(v20, v9);
    v39 = (v32 + *(v34 + 28));
    *v39 = v36;
    v39[1] = v38;
    sub_24F928398();
    v40 = sub_24F928348();
    v42 = v41;
    v29(v20, v9);
    v78 = v34;
    v43 = (v32 + *(v34 + 36));
    *v43 = v40;
    v43[1] = v42;
    v44 = v82;
    sub_24F928398();
    v45 = sub_24F928348();
    v47 = v46;
    v29(v44, v9);
    v82 = v9;
    if (v47)
    {
      v48 = v77;
      v49 = v74;
    }

    else
    {
      v49 = v74;
      v87 = v74;
      v88 = v80;
      v85 = StoreTab.Identifier.rawValue.getter();
      v86 = v50;
      sub_24E600AEC();
      v45 = sub_24F92C4F8();
      v47 = v51;

      v48 = v77;
    }

    v52 = v89;
    v89[2] = v45;
    v52[3] = v47;
    v53 = v80;
    v87 = v49;
    v88 = v80;
    v54 = StoreTab.Identifier.rawValue.getter();
    v56 = v55;
    sub_24E8E29C4(v49, v53);
    if (v54 == 0x656461637261 && v56 == 0xE600000000000000)
    {

      LODWORD(v77) = 1;
    }

    else
    {
      LODWORD(v77) = sub_24F92CE08();
    }

    v57 = v75;
    sub_24F928398();
    sub_24F9281F8();
    v58 = v82;
    v35(v57, v82);
    v59 = sub_24F928E68();
    v60 = *(v59 - 8);
    v80 = v28;
    v61 = v35;
    v62 = *(v60 + 48);
    v63 = v62(v48, 1, v59);
    v79 = v61;
    v76 = v33;
    if (v63 == 1)
    {
      sub_24E601704(v48, qword_27F221C40);
      v64 = v73;
      sub_24F928398();
      v65 = v81;
      sub_24F9281F8();
      v61(v64, v58);
      v66 = v62(v65, 1, v59);
      if (v66 == 1)
      {
        sub_24E601704(v65, qword_27F221C40);
        v67 = sub_24E609218(MEMORY[0x277D84F90]);
      }

      else
      {
        MEMORY[0x28223BE20](v66);
        *(&v73 - 16) = v77 & 1;
        sub_24F91F4A8();
        sub_24F206DC0();
        v71 = v83;
        v67 = sub_24F928E38();
        v83 = v71;
        (*(v60 + 8))(v65, v59);
      }

      v69 = v84;
      v70 = v89;
    }

    else
    {
      MEMORY[0x28223BE20](v63);
      *(&v73 - 16) = v77 & 1;
      sub_24F91F4A8();
      sub_24F206DC0();
      v68 = v83;
      v67 = sub_24F928E38();
      v83 = v68;
      (*(v60 + 8))(v48, v59);
      v69 = v84;
      v70 = v89;
    }

    v72 = sub_24F9285B8();
    (*(*(v72 - 8) + 8))(v69, v72);
    result = v79(v76, v82);
    *(v70 + *(v78 + 32)) = v67;
  }

  return result;
}

unint64_t sub_24F205C40()
{
  result = qword_27F23C558;
  if (!qword_27F23C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C558);
  }

  return result;
}

uint64_t sub_24F205C94@<X0>(void (*a1)(uint64_t)@<X4>, _BYTE *a2@<X8>)
{
  v18 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_24F92CB88();

  if (v10 > 2)
  {
    goto LABEL_4;
  }

  v11 = sub_24F928348();
  v18(v11);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E601704(v5, &qword_27F228530);
LABEL_4:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132F0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  v14 = *(v7 + 32);
  v14(v9, v5, v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132F0);
  v16 = *(v15 + 48);
  *a2 = v10;
  v14(&a2[v16], v9, v6);
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t StoreTab.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_24E8E2880(*v2, *(v2 + 8));
  sub_24F92B218();

  sub_24F92B218();
  v11 = type metadata accessor for StoreTab();
  sub_24E99091C(v2 + v11[6], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24F92D088();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24F92D088();
    sub_24F2071B4(&qword_27F2252E0, MEMORY[0x277CC9260]);
    sub_24F92AEF8();
    (*(v5 + 8))(v7, v4);
  }

  if (*(v2 + v11[7] + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F206438(a1, *(v2 + v11[8]));
  if (!*(v2 + v11[9] + 8))
  {
    return sub_24F92D088();
  }

  sub_24F92D088();
  return sub_24F92B218();
}

uint64_t StoreTab.hashValue.getter()
{
  sub_24F92D068();
  StoreTab.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F20638C@<X0>(uint64_t *a1@<X8>)
{
  result = StoreTab.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F2063B4()
{
  sub_24F92D068();
  StoreTab.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F2063F8()
{
  sub_24F92D068();
  StoreTab.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F206438(__int128 *a1, uint64_t a2)
{
  v49 = a1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A970);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = *(a2 + 64);
  v39 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v4 + 16;
  v50 = (v4 + 32);
  v46 = v4;
  v47 = a2;
  v48 = (v4 + 8);

  v21 = 0;
  v22 = 0;
  v45 = v6;
  v42 = v11;
  v43 = v3;
  v41 = v14;
  while (1)
  {
    v51 = v21;
    if (!v18)
    {
      break;
    }

    v23 = v22;
LABEL_14:
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v46;
    v29 = *(*(v47 + 48) + v27);
    v3 = v43;
    v30 = v44;
    (*(v46 + 16))(v44, *(v47 + 56) + *(v46 + 72) * v27, v43);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978);
    v32 = *(v31 + 48);
    v33 = v42;
    *v42 = v29;
    v11 = v33;
    (*(v28 + 32))(&v33[v32], v30, v3);
    (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
    v6 = v45;
    v14 = v41;
LABEL_15:
    sub_24F207144(v11, v14);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978);
    if ((*(*(v34 - 8) + 48))(v14, 1, v34) == 1)
    {

      return MEMORY[0x253052A00](v51);
    }

    (*v50)(v6, &v14[*(v34 + 48)], v3);
    v35 = v49[3];
    v54 = v49[2];
    v55 = v35;
    v56 = *(v49 + 8);
    v36 = v49[1];
    v52 = *v49;
    v53 = v36;
    sub_24F92B218();

    sub_24F2071B4(&qword_27F2252E0, MEMORY[0x277CC9260]);
    sub_24F92AEF8();
    (*v48)(v6, v3);
    result = sub_24F92D0B8();
    v21 = result ^ v51;
  }

  if (v19 <= v22 + 1)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978);
      (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
      v18 = 0;
      v22 = v25;
      goto LABEL_15;
    }

    v18 = *(v39 + 8 * v23);
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12GameStoreKit0B3TabV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C18);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = *a1;
  v40 = *a2;
  v41 = v13;
  v14 = StoreTab.Identifier.rawValue.getter();
  v16 = v15;
  if (v14 == StoreTab.Identifier.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_24F92CE08();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for StoreTab();
  v20 = v19[6];
  v21 = *(v10 + 48);
  sub_24E99091C(a1 + v20, v12);
  sub_24E99091C(a2 + v20, &v12[v21]);
  v22 = *(v5 + 48);
  if (v22(v12, 1, v4) != 1)
  {
    sub_24E99091C(v12, v9);
    if (v22(&v12[v21], 1, v4) != 1)
    {
      v24 = v39;
      (*(v5 + 32))(v39, &v12[v21], v4);
      sub_24F2071B4(&qword_27F226C38, MEMORY[0x277CC9260]);
      v25 = sub_24F92AFF8();
      v26 = *(v5 + 8);
      v26(v24, v4);
      v26(v9, v4);
      sub_24E601704(v12, &qword_27F228530);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v9, v4);
LABEL_13:
    sub_24E601704(v12, &qword_27F226C18);
    return 0;
  }

  if (v22(&v12[v21], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_24E601704(v12, &qword_27F228530);
LABEL_17:
  v27 = v19[7];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  sub_24EBACFF8(*(a1 + v19[8]), *(a2 + v19[8]));
  if (v32)
  {
    v33 = v19[9];
    v34 = (a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    v37 = v36[1];
    if (v35)
    {
      if (v37 && (*v34 == *v36 && v35 == v37 || (sub_24F92CE08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v37)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_24F206DC0()
{
  result = qword_27F23C560;
  if (!qword_27F23C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C560);
  }

  return result;
}

uint64_t sub_24F206EA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F206F70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F207020()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24F2070D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F2070D8()
{
  if (!qword_27F23C580)
  {
    sub_24F91F4A8();
    sub_24F206DC0();
    v0 = sub_24F92AEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23C580);
    }
  }
}

uint64_t sub_24F207144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2071B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F207210(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F207290(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GameCenterSignOutAction()
{
  result = qword_27F23C588;
  if (!qword_27F23C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F20734C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GameCenterSignOutAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2077AC();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F207800(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F2075B8(uint64_t a1)
{
  v2 = sub_24F2077AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2075F4(uint64_t a1)
{
  v2 = sub_24F2077AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F207648(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C5A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2077AC();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F2077AC()
{
  result = qword_27F23C5A0;
  if (!qword_27F23C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5A0);
  }

  return result;
}

uint64_t sub_24F207800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterSignOutAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F207878()
{
  result = qword_27F23C5B0;
  if (!qword_27F23C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5B0);
  }

  return result;
}

unint64_t sub_24F2078D0()
{
  result = qword_27F23C5B8;
  if (!qword_27F23C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5B8);
  }

  return result;
}

unint64_t sub_24F207928()
{
  result = qword_27F23C5C0;
  if (!qword_27F23C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5C0);
  }

  return result;
}

id static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = objc_opt_self();
  if (a5)
  {
    v11 = [v10 configurationWithTextStyle_];
  }

  else
  {
    v11 = [v10 configurationWithTextStyle:a1 scale:a4];
  }

  result = v11;
  if ((a3 & 1) == 0)
  {
    v13 = result;
    v14 = [objc_opt_self() configurationWithWeight_];
    v15 = [v13 configurationByApplyingConfiguration_];

    return v15;
  }

  return result;
}

uint64_t sub_24F207A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F929FB8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F207AEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24F929FB8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for StoreViewControllerLifecycleEvent()
{
  result = qword_27F23C5C8;
  if (!qword_27F23C5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F207BBC()
{
  v0 = sub_24F929FB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

char *sub_24F207C28(char *a1, void *a2, void *a3, uint64_t a4)
{
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return a1;
  }

  v8 = [a2 toDictionary];
  if (!v8)
  {
    a1 = "ctive JS worker thread";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();

    return a1;
  }

  v9 = v8;
  v10 = sub_24F92AE38();

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a4;
  v12 = a3;

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_24F207E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15JSAMSEngagement_engagement);
  v5 = sub_24F92AE28();
  v6 = [v4 enqueueData_];

  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v9[4] = sub_24F20B72C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24E955CC4;
  v9[3] = &block_descriptor_127;
  v8 = _Block_copy(v9);

  [v6 addErrorBlock_];
  _Block_release(v8);
}

uint64_t sub_24F207F84(uint64_t a1, uint64_t a2)
{
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v7[0] = a2;
  sub_24F928438();
  sub_24E857CC8(v7);
  MetatypeMetadata = MEMORY[0x277D837D0];
  v7[0] = 0x4465756575716E65;
  v7[1] = 0xEF293A5F28617461;
  sub_24F928438();
  sub_24E857CC8(v7);
  sub_24F9283A8();
  swift_getErrorValue();
  MetatypeMetadata = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v7);
  sub_24F92A5A8();
}

uint64_t sub_24F208278(uint64_t a1)
{
  v35 = a1;
  v38 = sub_24F922028();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v37 = v3;
  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v11 = sub_24F922038();
  v12 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v14, "EngagementRequestPromise", "", v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  v15 = *(v1 + 16);
  v16 = v38;
  v15(v6, v9, v38);
  sub_24F922098();
  swift_allocObject();
  v34 = sub_24F922088();
  v17 = *(v1 + 8);
  v17(v9, v16);
  sub_24F922038();
  v18 = v37;
  sub_24F921FF8();
  v19 = sub_24F922038();
  v20 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v19, v20, v22, "EngagementRequest", "", v21, 2u);
    v23 = v21;
    v18 = v37;
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  v24 = v38;
  v15(v6, v18, v38);
  swift_allocObject();
  v25 = sub_24F922088();
  v26 = v18;
  v27 = v25;
  v17(v26, v24);
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v28 = sub_24F92C448();
  MEMORY[0x28223BE20](v28);
  v29 = v35;
  *(&v33 - 4) = v34;
  *(&v33 - 3) = v27;
  v30 = v36;
  *(&v33 - 2) = v29;
  *(&v33 - 1) = v30;
  v31 = sub_24F92C458();

  return v31;
}

const char *sub_24F208638(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v55 = a5;
  v60 = a3;
  v61 = a2;
  v54 = a1;
  v53 = sub_24F922068();
  v57 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = sub_24F922028();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = sub_24F92AC68();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v20 = MEMORY[0x25304F260]();
  if (!v20)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v33 = sub_24F922058();
    __swift_project_value_buffer(v33, qword_27F23DAC0);
    v34 = sub_24F922038();
    sub_24F922078();
    v35 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v36 = v57;
      v37 = v53;
      if ((*(v57 + 88))(v7, v53) == *MEMORY[0x277D85B00])
      {
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v36 + 8))(v7, v37);
        v38 = "success=false";
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v34, v35, v47, "EngagementRequest", v38, v46, 2u);
      MEMORY[0x2530542D0](v46, -1, -1);
    }

    (*(v58 + 8))(v13, v59);
    v30 = "RecommendationPromise";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [a4 toDictionary];
  if (!v22)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v39 = sub_24F922058();
    __swift_project_value_buffer(v39, qword_27F23DAC0);
    v40 = sub_24F922038();
    sub_24F922078();
    v41 = sub_24F92C048();
    v42 = sub_24F92C478();
    v43 = v57;
    if (v42)
    {

      sub_24F9220A8();

      v44 = v53;
      if ((*(v43 + 88))(v10, v53) == *MEMORY[0x277D85B00])
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v10, v44);
        v45 = "success=false";
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v40, v41, v49, "EngagementRequest", v45, v48, 2u);
      MEMORY[0x2530542D0](v48, -1, -1);
    }

    (*(v58 + 8))(v16, v59);
    v30 = "EngagementRequestPromise";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_22;
  }

  v23 = v22;
  v24 = sub_24F92AE38();

  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v21;
  v27 = v60;
  v26[4] = v25;
  v26[5] = v27;
  v28 = v54;
  v29 = v55;
  v26[6] = v55;
  v30 = v28;

  v31 = v29;
  v32 = v56;
  sub_24F92AC48();
  if (v32)
  {

LABEL_22:

LABEL_23:
    sub_24F208D50();
    return v30;
  }

  v30 = sub_24F92AC58();

  (*(v52 + 8))(v19, v17);

  sub_24F208D50();
  return v30;
}

uint64_t sub_24F208D50()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAC0);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "EngagementRequestPromise", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F208FDC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v49 = a2;
  v54 = a6;
  v55 = a5;
  v53 = a1;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F9298B8();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0x74756F656D6974;
  v57 = 0xE700000000000000;
  sub_24F92C7F8();
  v17 = *(a4 + 16);
  v50 = v13;
  v51 = a3;
  v52 = a7;
  if (v17 && (v18 = sub_24E76D934(v58), (v19 & 1) != 0))
  {
    sub_24E643A9C(*(a4 + 56) + 32 * v18, v59);
    sub_24E6585F8(v58);
    if (swift_dynamicCast())
    {
      (*(v12 + 16))(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
      v20 = a7;
      v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v22 = swift_allocObject();
      v45 = v12;
      *(v22 + 16) = v54;
      *(v22 + 24) = v20;
      v23 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = v14;
      v25 = v11;
      (*(v45 + 32))(v22 + v21, v24, v11);

      sub_24F9298C8();
      v12 = v45;

      (*(v46 + 8))(v16, v47);
    }

    else
    {
      v23 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = v11;
    }
  }

  else
  {
    v23 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v11;
    sub_24E6585F8(v58);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90);
  v26 = *(v48 + OBJC_IVAR____TtC12GameStoreKit15JSAMSEngagement_engagement);
  v27 = sub_24F92AE28();
  v28 = [v26 enqueueData_];

  v48 = sub_24F92A9D8();
  v29 = *(v12 + 16);
  v30 = v23;
  v29(v23, v49, v25);
  v31 = *(v12 + 80);
  v32 = v50;
  v33 = swift_allocObject();
  v49 = v33;
  v34 = v54;
  v33[2] = v55;
  v33[3] = v34;
  v35 = v52;
  v33[4] = v53;
  v33[5] = v35;
  v36 = *(v12 + 32);
  v36(v33 + ((v31 + 48) & ~v31), v23, v25);
  v29(v23, v51, v25);
  v37 = (v31 + 40) & ~v31;
  v38 = swift_allocObject();
  v39 = v54;
  *(v38 + 2) = v55;
  *(v38 + 3) = v39;
  *(v38 + 4) = v52;
  v36(&v38[v37], v30, v25);
  v40 = v53;
  *&v38[(v32 + v37 + 7) & 0xFFFFFFFFFFFFFFF8] = v53;
  v41 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v42 = v40;
  v43 = sub_24F92BEF8();
  v58[3] = v41;
  v58[4] = MEMORY[0x277D225C0];
  v58[0] = v43;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

void sub_24F209500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F922068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v22 = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v14 = sub_24F922058();
    __swift_project_value_buffer(v14, qword_27F23DAC0);
    v15 = sub_24F922038();
    sub_24F922078();
    v16 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v17 = "success=false";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v16, v19, "EngagementRequest", v17, v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 56) = sub_24F92A868();
    __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    sub_24F92A808();
    v21 = sub_24F9281A8();
  }
}

uint64_t sub_24F209B24(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21[1] = a2;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = *a1;
  (*(v12 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11, v14);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = v15;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v18 = v15;
  v19 = a4;

  sub_24F9298E8();
}

void sub_24F209CA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v8 = sub_24F922068();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  v13 = sub_24F922028();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v44 - v18;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v20 = sub_24F92AAE8();
    __swift_project_value_buffer(v20, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v45 = v8;
    v44[1] = v16;
    v49 = v14;
    swift_beginAccess();
    *(a1 + 16) = 1;
    v21 = sub_24E608448(MEMORY[0x277D84F90]);
    v22 = [a2 data];
    if (v22)
    {
      v23 = v22;
      v24 = sub_24F92AE38();

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
      *&v52 = v24;
      sub_24E612B0C(&v52, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v21;
      sub_24E81C1D4(v51, 1635017060, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      v21 = v50;
    }

    v26 = [a2 actions];
    if (v26)
    {
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
      v28 = sub_24F92B5A8();

      if (*(v28 + 16))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC38);
        *&v52 = v28;
        sub_24E612B0C(&v52, v51);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v50 = v21;
        sub_24E81C1D4(v51, 0x736E6F69746361, 0xE700000000000000, v29);
        v21 = v50;
      }

      else
      {
      }
    }

    *&v52 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v30 = sub_24F92CF68();
    v31 = [objc_opt_self() valueWithObject:v30 inContext:a3];
    swift_unknownObjectRelease();
    if (v31)
    {

      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v32 = sub_24F922058();
      __swift_project_value_buffer(v32, qword_27F23DAC0);
      v33 = sub_24F922038();
      sub_24F922078();
      v34 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();

        v35 = v47;
        v36 = v45;
        if ((*(v47 + 88))(v12, v45) == *MEMORY[0x277D85B00])
        {
          v37 = "[Error] Interval already ended";
        }

        else
        {
          (*(v35 + 8))(v12, v36);
          v37 = "success=true";
        }

        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v33, v34, v39, "EngagementRequest", v37, v38, 2u);
        MEMORY[0x2530542D0](v38, -1, -1);
      }

      v40 = *(v49 + 8);
      v49 += 8;
      v40(v19, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_24F93DE60;
      *(v41 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
      *(v41 + 32) = v31;
      v42 = v31;
      v43 = sub_24F9281A8();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24F20A680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a6;
  v22[1] = a2;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a5, v10, v13);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a1;
  v18 = v22[0];
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22[0];

  v19 = a1;
  v20 = v18;
  sub_24F9298E8();
}

void sub_24F20A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v8 = sub_24F922068();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v27[0] = a5;
    v27[1] = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v17 = sub_24F922058();
    __swift_project_value_buffer(v17, qword_27F23DAC0);
    v18 = sub_24F922038();
    sub_24F922078();
    v19 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v8);
        v20 = "success=false";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v18, v19, v22, "EngagementRequest", v20, v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F93DE60;
    v24 = sub_24E69A5C4(0, &qword_27F21C8E0);
    v25 = MEMORY[0x253051C90](v28, v27[0]);
    *(v23 + 56) = v24;
    *(v23 + 32) = v25;
    v26 = sub_24F9281A8();
  }
}

id sub_24F20AEB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAMSEngagement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F20AF4C()
{

  return swift_deallocObject();
}

uint64_t sub_24F20AFC8()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F20B0A4(void **a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_24F209B24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24F20B11C()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F20B204(void *a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F20A680(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_24F20B2A8()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24F20B374()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_24F209500(v2, v3, v4);
}

uint64_t sub_24F20B3D8()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24F20B4D0()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_24F20A818(v6, v7, v0 + v2, v4, v5);
}

uint64_t sub_24F20B56C()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24F20B648()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_24F209CA4(v2, v3, v4, v5, v6);
}

uint64_t sub_24F20B6D0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SearchHistoryItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  sub_24F928398();
  v12 = sub_24F928348();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14)
  {
    v26 = v12;
    v27 = v14;
    sub_24E600AEC();
    v16 = sub_24F92C518();
    v25 = v17;

    sub_24F928398();
    sub_24EC556D4();
    sub_24F928248();
    v18 = sub_24F9285B8();
    (*(*(v18 - 8) + 8))(v28, v18);
    v15(a1, v5);
    result = (v15)(v8, v5);
    v20 = v26;
    v21 = v25;
    *a3 = v16;
    *(a3 + 8) = v21;
    *(a3 + 16) = v20;
  }

  else
  {
    v22 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v23 = 1836213620;
    v23[1] = 0xE400000000000000;
    v23[2] = &type metadata for SearchHistoryItem;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    v24 = sub_24F9285B8();
    (*(*(v24 - 8) + 8))(v28, v24);
    return (v15)(a1, v5);
  }

  return result;
}

uint64_t sub_24F20BA30(char a1)
{
  v2 = 0x656461637261;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = MEMORY[0x277D84F98];
  if (a1)
  {
    sub_24F92D068();
    sub_24F92B218();
    sub_24F92D088();
    if (v5 != 4)
    {
      sub_24F92B218();
    }

    sub_24F92D0B8();
    v7 = sub_24F92CD88();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D324(v7, v9, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v3, v4, 1836213620, 0xE400000000000000, v11);
  if (v5 <= 1)
  {
    if (v5)
    {
      v2 = 0x79726F7473;
    }

    else
    {
      v2 = 0x65706F6C65766564;
    }

    if (v5)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE900000000000072;
    }

    goto LABEL_16;
  }

  if (v5 == 2)
  {
    v12 = 0xE600000000000000;
    goto LABEL_16;
  }

  if (v5 == 3)
  {
    v12 = 0xE500000000000000;
    v2 = 0x6863746177;
LABEL_16:
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D324(v2, v12, 0x797469746E65, 0xE600000000000000, v13);
  }

  return v6;
}

uint64_t SearchHistoryItem.id.getter()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92D088();
  if (v1 != 4)
  {
    sub_24F92B218();
  }

  sub_24F92D0B8();
  return sub_24F92C7F8();
}

uint64_t SearchHistoryItem.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92D088();
  if (v1 != 4)
  {
    sub_24F92B218();
  }

  return sub_24F92D0B8();
}

uint64_t SearchHistoryItem.term.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F20BEC0()
{
  if (*v0)
  {
    return 0x797469746E65;
  }

  else
  {
    return 1836213620;
  }
}

uint64_t sub_24F20BEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F20BFC8(uint64_t a1)
{
  v2 = sub_24F20C878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F20C004(uint64_t a1)
{
  v2 = sub_24F20C878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchHistoryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C5E0);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F20C878();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_24F20C8CC();
    sub_24F92CCF8();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t SearchHistoryItem.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_24F92B218();
  if (v1 == 4)
  {
    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
}

uint64_t SearchHistoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C5F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F20C878();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_24F20C920();
  sub_24F92CC18();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F20C4BC()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92D088();
  if (v1 != 4)
  {
    sub_24F92B218();
  }

  return sub_24F92D0B8();
}

uint64_t SearchHistoryItem.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) == 4)
  {
    v4 = 0x203A6D726574;
    MEMORY[0x253050C20](v1, v2);
  }

  else
  {
    v4 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](0x203A6D726574, 0xE600000000000000);
    MEMORY[0x253050C20](v1, v2);
    MEMORY[0x253050C20](0x797469746E65202CLL, 0xEA0000000000203ALL);
    sub_24F92CA38();
  }

  return v4;
}

unint64_t SearchHistoryItem.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F20BA30(1);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  result = sub_24E776F6C();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_24F20C76C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F20BA30(1);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  result = sub_24E776F6C();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t _s12GameStoreKit17SearchHistoryItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_24F92CE08(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 4)
    {
      if (v3 != 4)
      {
        return 0;
      }
    }

    else if (v3 == 4 || (sub_24F0CEE64(v2, v3) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_24F20C878()
{
  result = qword_27F23C5E8;
  if (!qword_27F23C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5E8);
  }

  return result;
}

unint64_t sub_24F20C8CC()
{
  result = qword_27F23C5F0;
  if (!qword_27F23C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5F0);
  }

  return result;
}

unint64_t sub_24F20C920()
{
  result = qword_27F23C600;
  if (!qword_27F23C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C600);
  }

  return result;
}

unint64_t sub_24F20C978()
{
  result = qword_27F23C608;
  if (!qword_27F23C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C608);
  }

  return result;
}

unint64_t sub_24F20C9F0()
{
  result = qword_27F23C610;
  if (!qword_27F23C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C610);
  }

  return result;
}

unint64_t sub_24F20CA48()
{
  result = qword_27F23C618;
  if (!qword_27F23C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C618);
  }

  return result;
}

unint64_t sub_24F20CAA0()
{
  result = qword_27F23C620;
  if (!qword_27F23C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C620);
  }

  return result;
}

uint64_t sub_24F20CAF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211750 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t PrivacySettingsSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C628);
  MEMORY[0x28223BE20](v31);
  v32 = &v28 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C630);
  MEMORY[0x28223BE20](v39);
  v36 = &v28 - v3;
  v30 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView(0);
  MEMORY[0x28223BE20](v30);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C638);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C640);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C648);
  MEMORY[0x28223BE20](v37);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C650);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C658);
  MEMORY[0x28223BE20](v38);
  v17 = &v28 - v16;
  v18 = *v1;
  swift_getKeyPath();
  v41 = v18;
  sub_24F20DE60(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  if (*(v18 + 18) > 2u)
  {
    MEMORY[0x28223BE20](v19);
    if (qword_27F211748 == -1)
    {
LABEL_7:
      v20 = unk_27F39EF60;
      *v5 = qword_27F39EF58;
      v5[1] = v20;
      v21 = *(v30 + 20);
      *(v5 + v21) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CD8);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C660);
      sub_24F20DB04();
      sub_24F20DB58();
      sub_24F20DE60(&qword_27F23C678, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
      v22 = v33;
      sub_24F9272A8();
      v24 = v34;
      v23 = v35;
      (*(v34 + 16))(v32, v22, v35);
      swift_storeEnumTagMultiPayload();
      sub_24F20DC3C();
      v25 = v36;
      sub_24F924E28();
      sub_24E60169C(v25, v12, &qword_27F23C630);
      swift_storeEnumTagMultiPayload();
      sub_24F20DD0C();
      sub_24F20DEA8();
      sub_24F924E28();
      sub_24E601704(v25, &qword_27F23C630);
      return (*(v24 + 8))(v22, v23);
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (*(v18 + 18))
  {
    if (*(v18 + 18) == 1)
    {
      MEMORY[0x28223BE20](v19);
      if (qword_27F211748 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView(0);
    sub_24F20DB04();
    sub_24F20DE60(&qword_27F23C698, type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView);
    sub_24F927298();
    v27 = v29;
    (*(v29 + 16))(v15, v10, v8);
    swift_storeEnumTagMultiPayload();
    sub_24F20DD98();
    sub_24F924E28();
    sub_24E60169C(v17, v12, &qword_27F23C658);
    swift_storeEnumTagMultiPayload();
    sub_24F20DD0C();
    sub_24F20DEA8();
    sub_24F924E28();
    sub_24E601704(v17, &qword_27F23C658);
    return (*(v27 + 8))(v10, v8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24F20DD98();
    sub_24F924E28();
    sub_24E60169C(v17, v12, &qword_27F23C658);
    swift_storeEnumTagMultiPayload();
    sub_24F20DD0C();
    sub_24F20DEA8();
    sub_24F924E28();
    return sub_24E601704(v17, &qword_27F23C658);
  }
}

uint64_t sub_24F20D51C()
{
  v0 = objc_opt_self();
  v1 = sub_24F92B098();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2 && (v3 = [v2 flow], v2, v4 = objc_msgSend(v3, sel_localizedButtonTitle), v3, v4))
  {
    v5 = sub_24F92B0D8();
  }

  else
  {
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E940);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Failed to get the link title from OnBoardingKit with the provided bundle identifier. Defaulting to the hardcoded string.", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    if (qword_27F211768 != -1)
    {
      swift_once();
    }

    v5 = qword_27F39EF98;
  }

  return v5;
}

uint64_t sub_24F20D6F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F20D51C();
  v4 = v3;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CD8);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView(0);
  v6 = (a1 + *(result + 20));
  *v6 = v2;
  v6[1] = v4;
  return result;
}

uint64_t sub_24F20D780@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{

  sub_24F926F88();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C660);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_24E600A48;
  v7[2] = v5;
  return result;
}

uint64_t sub_24F20D868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24F92B7F8();

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_24EA998B8(0, 0, v4, &unk_24F9D6A50, v7);
}

uint64_t sub_24F20D98C()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24ECC7320();
}

uint64_t sub_24F20DA38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211760 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_24F20DB04()
{
  result = qword_27F23C668;
  if (!qword_27F23C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C668);
  }

  return result;
}

unint64_t sub_24F20DB58()
{
  result = qword_27F23C670;
  if (!qword_27F23C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C660);
    sub_24E602068(&qword_27F222D00, &qword_27F222D08);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C670);
  }

  return result;
}

unint64_t sub_24F20DC3C()
{
  result = qword_27F23C680;
  if (!qword_27F23C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C638);
    sub_24F20DB04();
    sub_24F20DB58();
    sub_24F20DE60(&qword_27F23C678, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C680);
  }

  return result;
}

unint64_t sub_24F20DD0C()
{
  result = qword_27F23C688;
  if (!qword_27F23C688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C658);
    sub_24F20DD98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C688);
  }

  return result;
}

unint64_t sub_24F20DD98()
{
  result = qword_27F23C690;
  if (!qword_27F23C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C640);
    sub_24F20DB04();
    sub_24F20DE60(&qword_27F23C698, type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C690);
  }

  return result;
}

uint64_t sub_24F20DE60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F20DEA8()
{
  result = qword_27F23C6A0;
  if (!qword_27F23C6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C630);
    sub_24F20DC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C6A0);
  }

  return result;
}

unint64_t sub_24F20DF64()
{
  result = qword_27F23C6A8;
  if (!qword_27F23C6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23C6B0);
    sub_24F20DD0C();
    sub_24F20DEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C6A8);
  }

  return result;
}

uint64_t sub_24F20E03C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F20E07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F20D98C();
}

uint64_t sub_24F20E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, &qword_27F23C840);
    v8 = sub_24F92B5A8();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t sub_24F20E228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, a5);
    v7 = sub_24F92B5A8();
  }

  v9 = a4;
  v8(v7, a3, a4);
}

id ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  [v7 lock];
  sub_24F213714(a1, a2, a3, v3);

  return [v7 unlock];
}

uint64_t ArcadeState.stringValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8) >> 6;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else if (v3)
  {
    return ArcadeState.stringValue.getter(a1, a2);
  }

  else if (*v2)
  {
    if (*v2 == 1)
    {
      return 0x7263736275736E75;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    return 0xD000000000000012;
  }
}

id ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v20 = *a1;
  LOBYTE(v21) = v7;
  v8 = v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 8);
  v23 = v9;
  v24 = v10;
  sub_24EB6CE50(v9, v10);
  v11 = static ArcadeState.== infix(_:_:)(&v20, &v23);
  sub_24EB6CE70(v9, v10);
  v12 = *v8;
  v13 = *(v8 + 8);
  if (v11)
  {
    *a3 = v12;
    *(a3 + 8) = v13;
    return sub_24EB6CE50(v12, v13);
  }

  else
  {
    *v8 = v6;
    *(v8 + 8) = v7;
    sub_24EB6CE50(v12, v13);
    sub_24EB6CE50(v6, v7);
    sub_24EB6CE70(v12, v13);
    if (a2)
    {
      v20 = v12;
      LOBYTE(v21) = v13;
      sub_24F2117D8(&v20);
    }

    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger), *(v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v15 = *v8;
    v16 = *(v8 + 8);
    v23 = v15;
    v24 = v16;
    sub_24EB6CE50(v15, v16);
    v17 = ArcadeState.summary.getter();
    v19 = v18;
    v22 = MEMORY[0x277D837D0];
    sub_24EB6CE70(v15, v16);
    v20 = v17;
    v21 = v19;
    sub_24F928438();
    sub_24E601704(&v20, &qword_27F2129B0);
    sub_24F92A588();

    *a3 = v12;
    *(a3 + 8) = v13;
  }

  return result;
}

id ArcadeSubscriptionManager.__allocating_init(arcadeSubscriptionFamilyId:subscriptionEntitlements:activeStoreAccountProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = *(a4 + 24);
  v13 = *(a4 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = sub_24F215138(a1, a2, v11, v14, v4, v9, v12, v10, v13);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v15;
}

uint64_t ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9479A0;
  *(v4 + 32) = @"debug";
  *(v4 + 40) = @"convergence";
  *(v4 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v5 = @"debug";
  v6 = @"convergence";
  v7 = @"internal";
  v8 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v3, v8);

  if (!IsAnyOf || (v10 = byte_27F23B3E0, byte_27F23B3E0 == 7))
  {
    sub_24E615E00(&v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], &v58);
    __swift_project_boxed_opaque_existential_1(&v58, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    sub_24F9283A8();
    v57 = &type metadata for EntitlementRefeshCondition;
    v51 = v2;
    LOBYTE(v54) = v2;
    sub_24F928438();
    v52 = v1;
    sub_24E601704(&v54, &qword_27F2129B0);
    sub_24F9283A8();
    v13 = &v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v14 = *v13;
    v53 = v13[8];
    sub_24EB6CE50(*v13, v53);
    v15 = ArcadeState.summary.getter();
    v17 = v16;
    v57 = MEMORY[0x277D837D0];
    sub_24EB6CE70(v14, v53);
    v54 = v15;
    v55 = v17;
    sub_24F928438();
    v18 = v52;
    sub_24E601704(&v54, &qword_27F2129B0);
    sub_24F9283A8();
    v19 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId + 8];
    if (v19)
    {
      v20 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
      v21 = MEMORY[0x277D837D0];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v56 = 0;
    }

    v54 = v20;
    v55 = v19;
    v57 = v21;

    sub_24F928458();
    sub_24E601704(&v54, &qword_27F2129B0);
    sub_24F92A588();

    __swift_destroy_boxed_opaque_existential_1(&v58);
    v23 = MEMORY[0x277D21FB0];
    if (v51 >> 6 <= 1 || v51 >> 6 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);
      v24 = sub_24F92A9E8();
      v25 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
      v26 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
      __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v25);
      v27 = *(v26 + 16);

      v28 = v26;
      v18 = v52;
      v27(1, sub_24F216018, v24, v25, v28);
      v29 = swift_allocObject();
      *(v29 + 16) = v52;
      *(v29 + 24) = v51 & 1;
      v60 = sub_24F929638();
      v61 = v23;
      __swift_allocate_boxed_opaque_existential_1(&v58);
      v30 = v52;
      sub_24F929628();
      sub_24E602068(&unk_27F23C718, &qword_27F23C6E8);
      sub_24F92A9B8();

      __swift_destroy_boxed_opaque_existential_1(&v58);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);
      v31 = sub_24F92A9E8();
      if (v51 == 192)
      {
        v32 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
        v33 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
        __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v32);
        v34 = *(v33 + 16);
        swift_retain_n();
        v34(1, sub_24F2152DC, v31, v32, v33);
      }

      else
      {
        v37 = swift_allocObject();
        *(v37 + 16) = 1;
        *(v37 + 24) = v52;
        *(v37 + 32) = v31;
        v38 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
        v39 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
        __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v38);
        v40 = *(v39 + 8);
        swift_retain_n();
        v41 = v52;
        v40(1, 1, sub_24F21544C, v37, v38, v39);
      }
    }

    *(swift_allocObject() + 16) = v18;
    v60 = sub_24F929638();
    v61 = v23;
    __swift_allocate_boxed_opaque_existential_1(&v58);
    v42 = v18;
    sub_24F929628();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6F8);
    sub_24E602068(&qword_27F23C700, &qword_27F23C6F8);
    sub_24F92A9B8();

    __swift_destroy_boxed_opaque_existential_1(&v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C708);
    v43 = sub_24F92A9E8();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_24F21535C;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v43;
    v49 = sub_24E69A5C4(0, &qword_27F222300);
    swift_retain_n();

    v50 = sub_24F92BEF8();
    v60 = v49;
    v61 = MEMORY[0x277D225C0];
    v58 = v50;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(&v58);

    return v43;
  }

  else
  {
    if (byte_27F23B3E0 <= 2u)
    {
      if (byte_27F23B3E0 == 1)
      {
        v22 = -127;
      }

      else
      {
        v22 = -64;
      }

      v11 = 0;
      if (byte_27F23B3E0)
      {
        v12 = v22;
      }

      else
      {
        v12 = -126;
      }
    }

    else if (byte_27F23B3E0 > 4u)
    {
      if (byte_27F23B3E0 == 5)
      {
        v12 = 0;
        v11 = 2;
      }

      else
      {
        v11 = swift_allocObject();
        *(v11 + 16) = 2;
        *(v11 + 24) = 0;
        v12 = 64;
      }
    }

    else
    {
      v11 = 1;
      if (byte_27F23B3E0 == 3)
      {
        v12 = -64;
      }

      else
      {
        v12 = 0;
      }
    }

    v54 = v11;
    LOBYTE(v55) = v12;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v54, 1, &v58);
    sub_24EB6CE70(v11, v12);
    sub_24EB6CE70(v58, v59);
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v10 = 0;
          v35 = -127;
        }

        else
        {
          v10 = 0;
          v35 = -64;
        }
      }

      else
      {
        v35 = -126;
      }
    }

    else if (v10 > 4)
    {
      if (v10 == 5)
      {
        v35 = 0;
        v10 = 2;
      }

      else
      {
        v10 = swift_allocObject();
        *(v10 + 16) = 2;
        *(v10 + 24) = 0;
        v35 = 64;
      }
    }

    else
    {
      if (v10 == 3)
      {
        v35 = -64;
      }

      else
      {
        v35 = 0;
      }

      v10 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C708);
    v58 = v10;
    v59 = v35;
    return sub_24F92A988();
  }
}

uint64_t static ArcadeState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v6 == 2)
    {
      if ((v5 & 0xC0) == 0x80)
      {
        if (v2)
        {
          if (!v4)
          {
            sub_24EB6CE50(0, *(a2 + 8));
            sub_24EB6CE50(0, v5);
            sub_24EB6CE50(v2, v3);
            sub_24EB6CE70(v2, v3);
            v14 = 0;
            goto LABEL_20;
          }

          sub_24E69A5C4(0, &qword_27F22BD50);
          sub_24EB6CE50(v4, v5);
          sub_24EB6CE50(v4, v5);
          sub_24EB6CE50(v2, v3);
          v8 = sub_24F92C408();
          sub_24EB6CE70(v4, v5);
          if ((v8 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v4)
          {
            sub_24EB6CE50(*a2, *(a2 + 8));
            sub_24EB6CE50(0, v3);
            v13 = 0;
            goto LABEL_19;
          }

          sub_24EB6CE50(0, *(a2 + 8));
          sub_24EB6CE50(0, v5);
          sub_24EB6CE50(0, v3);
        }

        sub_24EB6CE70(v2, v3);
        sub_24EB6CE70(v4, v5);
        v7 = ((v5 ^ v3) & 0x3F) == 0;
        return v7 & 1;
      }

      v12 = v2;
    }

    else if (v5 > 0xBF)
    {
      sub_24EB6CE70(*a1, v3);
      sub_24EB6CE70(v4, v5);
      v7 = v4 ^ v2 ^ 1;
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (v6)
  {
    if ((v5 & 0xC0) == 0x40)
    {
      v9 = *(v2 + 24);
      v10 = *(v4 + 2);
      v11 = *(v4 + 24);
      v18 = *(v2 + 2);
      v19 = v9;
      v16 = v10;
      v17 = v11;
      sub_24EB6CE50(v4, v5);
      sub_24EB6CE50(v2, v3);
      v7 = static ArcadeState.== infix(_:_:)(&v18, &v16);
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v4, v5);
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (v5 >= 0x40)
  {
LABEL_17:
    sub_24EB6CE50(v4, v5);
LABEL_18:
    v13 = v2;
LABEL_19:
    sub_24EB6CE70(v13, v3);
    v14 = v4;
LABEL_20:
    sub_24EB6CE70(v14, v5);
    v7 = 0;
    return v7 & 1;
  }

  sub_24EB6CE70(*a1, v3);
  sub_24EB6CE70(v4, v5);
  v7 = v4 == v2;
  return v7 & 1;
}

id ArcadeSubscriptionManager.removeSubscriptionStateActions(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  [v3 lock];
  swift_beginAccess();
  sub_24E98A534(0, a1);
  swift_endAccess();
  return [v3 unlock];
}

uint64_t ArcadeSubscriptionManager.PaymentCallbacks.init(success:failure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void ArcadeSubscriptionManager.purchaseSubscription(product:appAdamId:decorator:paymentMetricsOverlay:callbacks:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v12 = a3[1];
  v32 = *a3;
  v14 = *a6;
  v13 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v17 = *(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler) = a7;

  sub_24F215494(a4, &v38);
  v33 = a1;
  if (v38)
  {
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v43 = v38;
    v44 = v39;
    v18 = a7;
    ArcadeSubscriptionDecorator.decorate()();
    v19 = swift_allocObject();
    v19[2] = v35;
    v19[3] = a5;
    v19[4] = v14;
    v19[5] = v13;
    v19[6] = v15;
    v19[7] = v16;
    v20 = swift_allocObject();
    v20[2] = v35;
    v20[3] = a1;
    v21 = a2;
    v20[4] = a2;
    v20[5] = v32;
    v20[6] = v12;
    v20[7] = a5;
    v20[8] = v14;
    v20[9] = v13;
    v20[10] = v15;
    v20[11] = v16;
    v22 = sub_24E69A5C4(0, &qword_27F222300);

    v23 = v35;
    sub_24F215624(v14, v13, v15);
    v24 = v23;

    sub_24F215624(v14, v13, v15);

    v25 = sub_24F92BEF8();
    *(&v39 + 1) = v22;
    *&v40 = MEMORY[0x277D225C0];
    *&v38 = v25;
    sub_24F92A958();

    sub_24F1C5354(&v43);
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v26 = a7;
    sub_24E601704(&v38, qword_27F23BBB0);
    *&v38 = v32;
    *(&v38 + 1) = v12;
    *&v43 = v14;
    *(&v43 + 1) = v13;
    *&v44 = v15;
    *(&v44 + 1) = v16;
    v27 = a1;
    v21 = a2;
    sub_24F210878(v27, a2, &v38, 0, a5, &v43);
  }

  __swift_project_boxed_opaque_existential_1(&v35[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], *&v35[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  *(&v44 + 1) = MEMORY[0x277D837D0];
  *&v43 = v33;
  *(&v43 + 1) = v21;

  sub_24F928438();
  sub_24E601704(&v43, &qword_27F2129B0);
  sub_24F92A588();

  v28 = swift_allocObject();
  v29 = &v35[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v30 = *v29;
  *(v28 + 16) = *v29;
  v31 = v29[8];
  *(v28 + 24) = v31;
  v36 = v28;
  v37 = 64;
  sub_24EB6CE50(v30, v31);
  ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v36, 1, &v38);
  sub_24EB6CE70(v28, 0x40u);
  sub_24EB6CE70(v38, BYTE8(v38));
}

uint64_t ArcadeState.shortSummary.getter()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if ((v2 & 0x3F) == 1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0x6269726373627553;
    }

    if (v1)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x6E776F6E6B6E55;
    }

    if (v3 == 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000023;
    }

    else
    {
      v4 = 0xD000000000000022;
    }

    if (v3)
    {
      return 0x6973616863727550;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t ArcadeState.summary.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8) >> 6;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      sub_24F92C888();

      v6 = 0xD00000000000001ELL;
      if (v1)
      {
        v4 = 1702195828;
      }

      else
      {
        v4 = 0x65736C6166;
      }

      if (v1)
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      MEMORY[0x253050C20](v4, v5);

      return v6;
    }

    v6 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6F890);
  }

  else
  {
    if (v2)
    {
      return 0x6973616863727550;
    }

    v6 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001FLL, 0x800000024FA6F8C0);
  }

  sub_24F92CA38();
  return v6;
}

uint64_t ArcadeState.nextState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = -64;
    }

    if (v4 == 2)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    if (v4 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }
  }

  else if (v4)
  {
    result = 0;
    v7 = 0x80;
  }

  else if (v2 == 1)
  {
    v5 = a1;
    result = swift_allocObject();
    a1 = v5;
    *(result + 16) = v2;
    *(result + 24) = v3;
    v7 = 64;
  }

  else
  {
    result = 0;
    v7 = -64;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_24F20FEE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24F20E140;
  v10[3] = &block_descriptor_93;
  v8 = _Block_copy(v10);

  [v7 getSubscriptionEntitlementsForSegment:a1 ignoreCaches:a2 & 1 withCacheInfoResultHandler:v8];
  _Block_release(v8);
}

uint64_t sub_24F20FFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24F20E200;
  v8[3] = &block_descriptor_90;
  v6 = _Block_copy(v8);

  [v5 getCachedSubscriptionEntitlementsForSegment:a1 withResultHandler:v6];
  _Block_release(v6);
}

uint64_t sub_24F210068(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24F20E214;
  v6[3] = &block_descriptor_87;
  v4 = _Block_copy(v6);

  [v3 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler_];
  _Block_release(v4);
}

id ACAccountStore.ams_DSID.getter()
{
  v1 = [v0 ams_activeiTunesAccount];
  v2 = [v1 ams_DSID];

  return v2;
}

id sub_24F210174()
{
  v1 = [*v0 ams_activeiTunesAccount];
  v2 = [v1 ams_DSID];

  return v2;
}

unint64_t EntitlementRefeshCondition.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 != 2)
    {
      if (v1 == 192)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    v8 = 0;
    sub_24F92C888();
    v3 = "always refresh cache";
    v4 = 0xD00000000000003DLL;
    goto LABEL_7;
  }

  if (v2)
  {
    v8 = 0;
    sub_24F92C888();
    v3 = "s unsubscribed, (may prompt: ";
    v4 = 0xD00000000000003BLL;
LABEL_7:
    MEMORY[0x253050C20](v4, v3 | 0x8000000000000000);
    goto LABEL_8;
  }

  sub_24F92C888();

  v8 = 0xD00000000000002ALL;
LABEL_8:
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v5, v6);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v8;
}

id ArcadeStateChange.oldState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_24EB6CE50(v2, v3);
}

id ArcadeStateChange.newState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_24EB6CE50(v2, v3);
}

void sub_24F21037C(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue);
  if (v4)
  {
    [v4 removeTransactionObserver_];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v8 = a1;

  v6 = *(v1 + v3);
  if (v6)
  {
    v7 = v6;
    [v7 addTransactionObserver_];
  }
}

id ArcadeSubscriptionManager.subscriptionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_24EB6CE50(v4, v5);
}

id ArcadeSubscriptionManager.init(arcadeSubscriptionFamilyId:subscriptionEntitlements:activeStoreAccountProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v8 = *(a3 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = *(a4 + 24);
  v15 = *(a4 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_24F214C60(a1, a2, v13, v20, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v22;
}

id ArcadeSubscriptionManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue];
  if (v2)
  {
    [v2 removeTransactionObserver_];
  }

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_24F2107EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  v12 = *(*a1 + 32);
  v11 = *(*a1 + 40);
  v16[0] = v12;
  v16[1] = v11;
  v13 = *(v8 + 48);
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;

  sub_24F210878(v9, v10, v16, v13, a3, v15);
}

void sub_24F210878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v12 = sub_24F928418();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = *a3;
  v56 = *a6;
  v57 = a3[1];
  v54 = a6[2];
  v55 = a6[1];
  v53 = a6[3];
  v14 = *(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue);
  v15 = &off_279691000;
  if (v14)
  {
    v16 = a4;
    v17 = v14;
    v18 = [v17 paymentQueueClient];
    v19 = [v18 storeItemIdentifier];

    v51 = v13;
    *&v60 = v13;
    *(&v60 + 1) = v57;
    AdamId.numberValue.getter();
    v21 = v20;
    if (v19)
    {
      if (v20)
      {
        sub_24E69A5C4(0, &qword_27F22BD50);
        v22 = sub_24F92C408();

        if ((v22 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_8:
        v58 = v17;
        a4 = v16;
        v15 = &off_279691000;
        goto LABEL_21;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_8;
      }

      v17 = v21;
    }

LABEL_10:

    a4 = v16;
    v15 = &off_279691000;
    v13 = v51;
  }

  v52 = a5;
  v23 = [objc_opt_self() mainBundle];
  v24 = [objc_allocWithZone(MEMORY[0x277CDD380]) v15[222]];
  v25 = [v23 bundleIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = sub_24F92B0D8();
    v29 = v28;

    if (v27 == 0x6C7070612E6D6F63 && v29 == 0xEF73656D61672E65)
    {

      v15 = &off_279691000;
    }

    else
    {
      v31 = sub_24F92CE08();

      v15 = &off_279691000;
      if ((v31 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v34 = sub_24F92B098();
    [v24 setBundleIdentifier_];

    v33 = sub_24F92B098();
    goto LABEL_20;
  }

LABEL_17:
  v32 = [v23 bundleIdentifier];
  [v24 setBundleIdentifier_];

  sub_24F211044();
  v33 = sub_24F92B098();

LABEL_20:
  [v24 setBundleVersion_];

  [v24 setDelegate_];
  [v24 setEnvironmentType_];
  *&v60 = v13;
  *(&v60 + 1) = v57;
  AdamId.numberValue.getter();
  v36 = v35;
  [v24 setStoreItemIdentifier_];

  sub_24E69A5C4(0, &qword_27F22BD50);
  v37 = sub_24F92C3E8();
  [v24 setStoreExternalVersion_];

  v38 = [objc_allocWithZone(MEMORY[0x277CDD378]) initWithPaymentQueueClient_];
  v58 = v38;
  sub_24F21037C(v38);

  a5 = v52;
LABEL_21:
  v39 = [objc_allocWithZone(MEMORY[0x277CDD360]) v15[222]];
  v40 = sub_24F92B098();
  [v39 setProductIdentifier_];

  if (a4)
  {
    v41 = sub_24F92AE28();
  }

  else
  {
    v41 = 0;
  }

  [v39 setRequestParameters_];

  if (a5)
  {
    v42 = sub_24F92AE28();
    [v39 setMetricsOverlay_];
  }

  sub_24E615E00(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger, &v60);
  __swift_project_boxed_opaque_existential_1(&v60, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  if (a4)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
    v44 = a4;
  }

  else
  {
    v44 = 0;
    v43 = 0;
    v59[1] = 0;
    v59[2] = 0;
  }

  v59[0] = v44;
  v59[3] = v43;

  sub_24F9283C8();
  sub_24E601704(v59, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v45 = [v39 productIdentifier];
  v46 = sub_24F92B0D8();
  v48 = v47;

  v49 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
  swift_beginAccess();
  if (v56)
  {
    sub_24F215624(v56, v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = *(v7 + v49);
    sub_24E822640(v56, v55, v54, v53, v46, v48, isUniquelyReferenced_nonNull_native);

    *(v7 + v49) = v60;
  }

  else
  {
    sub_24E990370(v46, v48, &v60);

    sub_24F215D98(v60, *(&v60 + 1), v61);
  }

  swift_endAccess();
  [v58 addPayment_];
}

__n128 sub_24F210FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v14[0] = a5;
  v14[1] = a6;
  v11 = a8;
  v12 = a9;
  v13 = a10;
  sub_24F210878(a3, a4, v14, 0, a7, &v11);
  return result;
}

void sub_24F211044()
{
  if (*MEMORY[0x277CBED58])
  {
    if ([v0 objectForInfoDictionaryKey_])
    {
      sub_24F92C648();
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0u;
      v2 = 0u;
    }

    v3[0] = v1;
    v3[1] = v2;
    if (*(&v2 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_24E601704(v3, &qword_27F2129B0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24F211118()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger), *(v0 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v1 = sub_24F92B0D8();
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0);
  sub_24F92A588();

  LOBYTE(v4[0]) = 0;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v4);
}

uint64_t sub_24F2112DC(unint64_t a1)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  if (!a1)
  {
    goto LABEL_31;
  }

  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_30:
    v13 = sub_24F92C738();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_31:
    v34 = 0;
    v33 = 0;
    return v33 | v34;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_4:
  v14 = 0;
  v45 = v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId;
  v43 = v13;
  v44 = a1 & 0xC000000000000001;
  v37 = (v4 + 32);
  v40 = v12;
  v41 = v11;
  v42 = (v4 + 8);
  while (1)
  {
    if (v44)
    {
      v15 = MEMORY[0x253052270](v14, a1, v9);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v4 = v15;
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v1 = *(v45 + 1);
    if (!v1)
    {
      goto LABEL_5;
    }

    v17 = v3;
    v18 = a1;
    v19 = *v45;
    v20 = [v15 familyID];
    v21 = [v20 stringValue];

    v22 = sub_24F92B0D8();
    v24 = v23;

    if (v22 == v19 && v1 == v24)
    {

      a1 = v18;
      v3 = v17;
      v12 = v40;
      v11 = v41;
    }

    else
    {
      v26 = sub_24F92CE08();

      a1 = v18;
      v3 = v17;
      v12 = v40;
      v11 = v41;
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v27 = [v4 expiryDate];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v29 = v38;
    sub_24F91F608();

    (*v37)(v11, v29, v3);
    v30 = v39;
    sub_24F91F638();
    LOBYTE(v29) = sub_24F91F588();
    v1 = *v42;
    (*v42)(v30, v3);
    if (v29)
    {
      break;
    }

    v31 = [v4 isInGracePeriod];
    v1(v11, v3);
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_5:

    ++v14;
    if (v16 == v43)
    {
      goto LABEL_31;
    }
  }

  v1(v11, v3);
LABEL_24:
  v32 = [v4 isTrialPeriod];

  if (v32)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  return v33 | v34;
}

uint64_t sub_24F211664(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *v2;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v18 = sub_24F92C738();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v18 != v7;
    if (v18 == v7)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](v7, a1);
    }

    else
    {
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = [v9 stringValue];
    v12 = sub_24F92B0D8();
    v14 = v13;

    if (v12 == v5 && v3 == v14)
    {

      return 1;
    }

    v16 = sub_24F92CE08();

    ++v7;
  }

  while ((v16 & 1) == 0);
  return v8;
}

uint64_t sub_24F2117D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_24E69A5C4(0, &qword_27F222300);
  v12 = sub_24F92BEF8();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  aBlock[4] = sub_24F215F54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_127_0;
  v14 = _Block_copy(aBlock);
  v15 = v2;
  sub_24EB6CE50(v10, v11);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F215DE4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v14);
  _Block_release(v14);

  (*(v18 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v17);
}

void ArcadeSubscriptionManager.handle(_:resultHandler:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
  if (v6)
  {
    v13 = v6;
    CommerceDialogHandler.handle(_:resultHandler:)(a1, a2, a3);
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      sub_24F92B0D8();
    }

    v10 = sub_24F92B098();

    v11 = sub_24F92B098();
    v12 = sub_24F92B098();
    v13 = AMSCustomError();

    a2(0, v13);
  }
}

id ArcadeSubscriptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall ArcadeSubscriptionManager.paymentQueue(_:updatedTransactions:)(SKPaymentQueue _, Swift::OpaquePointer updatedTransactions)
{
  v3 = v2;
  internal = _._internal;
  isa = _.super.isa;
  v116 = sub_24F927D88();
  v5 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_24F927DC8();
  v7 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (internal >> 62)
  {
    v9 = sub_24F92C738();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((internal & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 >= 1)
  {
    v138 = &v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger];
    v125 = &v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider];
    v10 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
    v137 = internal & 0xC000000000000001;
    v131 = &v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v11 = 0;
    v124 = "adeSubscriptionManager";
    v123 = "ansaction restored";
    v122 = "Transaction purchasing";
    v121 = "Transaction purchased";
    v120 = "allbacks complete";
    v117 = *MEMORY[0x277CDD438];
    v112 = "Transaction failed";
    v119 = "titlement update.";
    v111 = &v145;
    v110 = (v5 + 8);
    v109 = (v7 + 8);
    v134 = xmmword_24F93A400;
    v118 = xmmword_24F9479A0;
    v108 = xmmword_24F93DE60;
    v133 = v3;
    v139 = internal;
    v136 = v9;
    v135 = v10;
    while (1)
    {
      v13 = v137 ? MEMORY[0x253052270](v11, internal) : *(internal + 8 * v11 + 32);
      v140 = v13;
      v14 = [v13 transactionState];
      if (v14 <= 1)
      {
        if (!v14)
        {
          sub_24E615E00(v138, &aBlock);
          v130 = v147;
          __swift_project_boxed_opaque_existential_1(&aBlock, v146);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = v134;
          sub_24F9283A8();
          v43 = [v140 transactionIdentifier];
          if (v43)
          {
            v44 = v43;
            v45 = sub_24F92B0D8();
            v47 = v46;

            *(&v142 + 1) = MEMORY[0x277D837D0];
            *&v141 = v45;
            *(&v141 + 1) = v47;
            internal = v139;
            v3 = v133;
          }

          else
          {
            v141 = 0u;
            v142 = 0u;
          }

          sub_24F928438();
          sub_24E601704(&v141, &qword_27F2129B0);
          sub_24F92A588();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v9 = v136;
          v10 = v135;
          goto LABEL_8;
        }

        if (v14 == 1)
        {
          sub_24E615E00(v138, &aBlock);
          v128 = v147;
          v127 = __swift_project_boxed_opaque_existential_1(&aBlock, v146);
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          v21 = *(sub_24F928468() - 8);
          v22 = *(v21 + 72);
          v23 = *(v21 + 80);
          v130 = v20;
          v129 = (((v23 + 32) & ~v23) + 2 * v22);
          *(swift_allocObject() + 16) = v134;
          sub_24F9283A8();
          v24 = [v140 transactionIdentifier];
          if (v24)
          {
            v25 = v24;
            v26 = sub_24F92B0D8();
            v126 = v23;
            v27 = v26;
            v29 = v28;

            *(&v142 + 1) = MEMORY[0x277D837D0];
            *&v141 = v27;
            *(&v141 + 1) = v29;
          }

          else
          {
            v141 = 0u;
            v142 = 0u;
          }

          sub_24F928438();
          sub_24E601704(&v141, &qword_27F2129B0);
          sub_24F92A588();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v3 = v133;
          v88 = v140;
          sub_24F21328C(v133, v140, &unk_286211738, sub_24F215C68, &block_descriptor_99);
          sub_24E615E00(v138, &aBlock);
          __swift_project_boxed_opaque_existential_1(&aBlock, v146);
          *(swift_allocObject() + 16) = v134;
          sub_24F9283A8();
          v89 = [v88 transactionIdentifier];
          if (v89)
          {
            v90 = v89;
            v91 = sub_24F92B0D8();
            v93 = v92;

            *(&v142 + 1) = MEMORY[0x277D837D0];
            *&v141 = v91;
            *(&v141 + 1) = v93;
            v3 = v133;
          }

          else
          {
            v141 = 0u;
            v142 = 0u;
          }

          sub_24F928438();
          sub_24E601704(&v141, &qword_27F2129B0);
          sub_24F92A588();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v94 = *(v125 + 3);
          v95 = *(v125 + 4);
          __swift_project_boxed_opaque_existential_1(v125, v94);
          v96 = (*(v95 + 8))(v94, v95);
          *&v141 = v96;
          BYTE8(v141) = 0x80;
          ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v141, 1, &aBlock);
          sub_24EB6CE70(v96, 0x80u);
          v86 = aBlock;
          v87 = v144;
LABEL_56:
          sub_24EB6CE70(v86, v87);
LABEL_57:
          v9 = v136;
          v10 = v135;
LABEL_58:
          v97 = v140;
          [(objc_class *)isa finishTransaction:v140];
          v98 = [v97 payment];
          v99 = [v98 productIdentifier];

          v100 = sub_24F92B0D8();
          v102 = v101;

          swift_beginAccess();
          v103 = sub_24E76D644(v100, v102);
          internal = v139;
          if (v104)
          {
            v105 = v103;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v107 = *&v3[v10];
            *&v141 = v107;
            *&v3[v10] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_24E8B6488();
              v107 = v141;
            }

            v12 = *(*(v107 + 56) + 32 * v105 + 16);

            sub_24E824448(v12);
            sub_24EB52998(v105, v107);
            *&v3[v10] = v107;
            internal = v139;
          }

          swift_endAccess();

          goto LABEL_7;
        }
      }

      else
      {
        switch(v14)
        {
          case 2:
            sub_24E615E00(v138, &aBlock);
            v130 = v147;
            v129 = __swift_project_boxed_opaque_existential_1(&aBlock, v146);
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
            v31 = *(sub_24F928468() - 8);
            v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
            v128 = v30;
            *(swift_allocObject() + 16) = v118;
            v127 = v32;
            sub_24F9283A8();
            v33 = [v140 transactionIdentifier];
            if (v33)
            {
              v34 = v33;
              v35 = sub_24F92B0D8();
              v37 = v36;

              *(&v142 + 1) = MEMORY[0x277D837D0];
              *&v141 = v35;
              *(&v141 + 1) = v37;
            }

            else
            {
              v141 = 0u;
              v142 = 0u;
            }

            sub_24F928438();
            sub_24E601704(&v141, &qword_27F2129B0);
            v71 = [v140 error];
            if (v71)
            {
              v72 = v71;
              swift_getErrorValue();
              v73 = sub_24F92CFE8();
              v75 = v74;
              *(&v142 + 1) = MEMORY[0x277D837D0];

              *&v141 = v73;
              *(&v141 + 1) = v75;
            }

            else
            {
              v141 = 0u;
              v142 = 0u;
            }

            v9 = v136;
            sub_24F928438();
            sub_24E601704(&v141, &qword_27F2129B0);
            sub_24F92A588();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v3 = v133;
            sub_24F21328C(v133, v140, &unk_286211788, sub_24F216034, &block_descriptor_106);
            v76 = v131[8];
            if ((v76 & 0xC0) == 0x40)
            {
              v77 = *v131;
              v78 = *(*v131 + 24);
              *&v141 = *(*v131 + 16);
              BYTE8(v141) = v78;

              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v141, 1, &aBlock);
              sub_24EB6CE70(aBlock, v144);
              sub_24EB6CE70(v77, v76);
            }

            else
            {
              *&v141 = 0;
              BYTE8(v141) = -64;
              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v141, 1, &aBlock);
              sub_24EB6CE70(aBlock, v144);
              LOBYTE(aBlock) = -63;
              ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
            }

            v10 = v135;
            v79 = [v140 error];
            if (v79)
            {
              v80 = v79;
              v81 = sub_24F91F268();
              IsEqual = AMSErrorIsEqual();

              if (IsEqual)
              {
                __swift_project_boxed_opaque_existential_1(v138, *(v138 + 3));
                *(swift_allocObject() + 16) = v108;
                sub_24F9283A8();
                v10 = v135;
                sub_24F92A588();
                v9 = v136;

                LOBYTE(aBlock) = -63;
                ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
              }
            }

            goto LABEL_58;
          case 3:
            sub_24E615E00(v138, &aBlock);
            __swift_project_boxed_opaque_existential_1(&aBlock, v146);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
            sub_24F928468();
            *(swift_allocObject() + 16) = v134;
            sub_24F9283A8();
            v38 = [v140 transactionIdentifier];
            if (v38)
            {
              v39 = v38;
              v40 = sub_24F92B0D8();
              v42 = v41;

              *(&v142 + 1) = MEMORY[0x277D837D0];
              *&v141 = v40;
              *(&v141 + 1) = v42;
              v3 = v133;
            }

            else
            {
              v141 = 0u;
              v142 = 0u;
            }

            sub_24F928438();
            sub_24E601704(&v141, &qword_27F2129B0);
            sub_24F92A5B8();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            sub_24F21328C(v3, v140, &unk_286211738, sub_24F215C68, &block_descriptor_99);
            LOBYTE(aBlock) = -63;
LABEL_50:
            ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);

            goto LABEL_57;
          case 4:
            sub_24E615E00(v138, &aBlock);
            __swift_project_boxed_opaque_existential_1(&aBlock, v146);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
            sub_24F928468();
            *(swift_allocObject() + 16) = v134;
            sub_24F9283A8();
            v15 = [v140 transactionIdentifier];
            if (v15)
            {
              v16 = v15;
              v17 = sub_24F92B0D8();
              v19 = v18;

              *(&v142 + 1) = MEMORY[0x277D837D0];
              *&v141 = v17;
              *(&v141 + 1) = v19;
              v3 = v133;
            }

            else
            {
              v141 = 0u;
              v142 = 0u;
            }

            sub_24F928438();
            sub_24E601704(&v141, &qword_27F2129B0);
            sub_24F92A588();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            sub_24F21328C(v3, v140, &unk_286211738, sub_24F215C68, &block_descriptor_99);
            v83 = v131[8];
            if ((v83 & 0xC0) == 0x40)
            {
              v84 = *v131;
              v85 = *(*v131 + 24);
              *&v141 = *(*v131 + 16);
              BYTE8(v141) = v85;

              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v141, 1, &aBlock);
              sub_24EB6CE70(aBlock, v144);
              v86 = v84;
              v87 = v83;
              goto LABEL_56;
            }

            *&v141 = 0;
            BYTE8(v141) = -64;
            ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v141, 1, &aBlock);
            sub_24EB6CE70(aBlock, v144);
            LOBYTE(aBlock) = -63;
            goto LABEL_50;
        }
      }

      v48 = [v140 payment];
      v49 = [v48 productIdentifier];

      v50 = sub_24F92B0D8();
      v52 = v51;

      swift_beginAccess();
      v53 = *&v3[v10];
      if (!*(v53 + 16))
      {
        break;
      }

      v54 = sub_24E76D644(v50, v52);
      v56 = v55;

      if ((v56 & 1) == 0)
      {
        goto LABEL_62;
      }

      v57 = (*(v53 + 56) + 32 * v54);
      v58 = *v57;
      v59 = v57[1];
      v61 = v57[2];
      v60 = v57[3];
      swift_endAccess();
      sub_24E69A5C4(0, &qword_27F222300);

      sub_24E5FCA4C(v61);
      v130 = sub_24F92BEF8();
      v62 = swift_allocObject();
      v62[2] = v3;
      v62[3] = v58;
      v62[4] = v59;
      v62[5] = v61;
      v129 = v60;
      v62[6] = v60;
      v147 = sub_24F215670;
      v148 = v62;
      aBlock = MEMORY[0x277D85DD0];
      v144 = 1107296256;
      v145 = sub_24EAF8248;
      v146 = &block_descriptor_128;
      v63 = _Block_copy(&aBlock);

      sub_24E5FCA4C(v61);
      v64 = v3;

      v65 = v113;
      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24F215DE4(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E602068(&qword_27F222940, &qword_27F222310);
      v66 = v115;
      v67 = v116;
      sub_24F92C6A8();
      v68 = v130;
      MEMORY[0x2530518B0](0, v65, v66, v63);
      v69 = v63;
      internal = v139;
      _Block_release(v69);
      v9 = v136;

      sub_24E824448(v61);
      (*v110)(v66, v67);
      v70 = v65;
      v10 = v135;
      (*v109)(v70, v114);
LABEL_7:

LABEL_8:
      if (v9 == ++v11)
      {
        return;
      }
    }

LABEL_62:
    swift_endAccess();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_24F21328C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v7 = sub_24F927D88();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v40 = *(v10 - 8);
  v41 = v10;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 payment];
  v15 = [v14 productIdentifier];

  v16 = sub_24F92B0D8();
  v18 = v17;

  v19 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
  swift_beginAccess();
  v20 = *&a1[v19];
  if (*(v20 + 16))
  {
    v21 = sub_24E76D644(v16, v18);
    v23 = v22;

    if (v23)
    {
      v24 = (*(v20 + 56) + 32 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      swift_endAccess();
      sub_24E69A5C4(0, &qword_27F222300);

      sub_24E5FCA4C(v27);
      v36 = sub_24F92BEF8();
      v29 = swift_allocObject();
      v29[2] = a1;
      v29[3] = v25;
      v29[4] = v26;
      v29[5] = v27;
      v35 = v27;
      v29[6] = v28;
      aBlock[4] = v38;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      aBlock[3] = v39;
      v30 = _Block_copy(aBlock);

      sub_24E5FCA4C(v27);
      v31 = a1;

      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24F215DE4(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E602068(&qword_27F222940, &qword_27F222310);
      sub_24F92C6A8();
      v32 = v36;
      MEMORY[0x2530518B0](0, v13, v9, v30);
      _Block_release(v30);

      sub_24E824448(v35);
      (*(v37 + 8))(v9, v7);
      return (*(v40 + 8))(v13, v41);
    }
  }

  else
  {
  }

  return swift_endAccess();
}

uint64_t sub_24F213714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v25 = a2;
  v26 = a3;
  sub_24F215F60(v24, v23);
  v8 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a4 + v8);
  *(a4 + v8) = 0x8000000000000000;
  v12 = sub_24E76D97C(a1);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(a4 + v8) = v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_24E8B5974();
      *(a4 + v8) = v10;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_24EC2665C(v12, a1, MEMORY[0x277D84F90], v10);
    goto LABEL_9;
  }

  sub_24E8A73E0(v15, isUniquelyReferenced_nonNull_native);
  v17 = sub_24E76D97C(a1);
  if ((v16 & 1) != (v18 & 1))
  {
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v12 = v17;
  *(a4 + v8) = v10;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a4 = v10[7];
  v10 = *(a4 + 8 * v12);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 8 * v12) = v10;
  if ((v19 & 1) == 0)
  {
LABEL_14:
    v10 = sub_24E61A034(0, v10[2] + 1, 1, v10);
    *(a4 + 8 * v12) = v10;
  }

  v21 = v10[2];
  v20 = v10[3];
  if (v21 >= v20 >> 1)
  {
    v10 = sub_24E61A034((v20 > 1), v21 + 1, 1, v10);
    *(a4 + 8 * v12) = v10;
  }

  v10[2] = v21 + 1;
  sub_24F215FC8(v23, &v10[3 * v21 + 4]);
  swift_endAccess();
  return sub_24F215F98(v24);
}

id sub_24F213914(uint64_t a1, void *a2, int a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  [v6 lock];
  sub_24F2139B8(a1, a2, a3);

  return [v6 unlock];
}

uint64_t sub_24F2139B8(uint64_t a1, void *a2, int a3)
{
  v55 = a3;
  v4 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  swift_beginAccess();
  v38 = v4;
  v39 = a1;
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = v5 + 64;
  v8 = -1;
  if (v6 < 64)
  {
    v8 = ~(-1 << v6);
  }

  v9 = v8 & *(v5 + 64);
  v47 = a1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  v10 = (v6 + 63) >> 6;
  v44 = v5;

  v11 = 0;
  v40 = MEMORY[0x277D84F98];
  v41 = v7;
  v42 = v10;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v45 = v12;
    v46 = v9;
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v43 = *(*(v44 + 48) + v13);
    v14 = *(*(v44 + 56) + v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;

      swift_beginAccess();
      v17 = MEMORY[0x277D84F90];
      do
      {
        sub_24F215F60(v16, v53);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v18 = *v47;
          v19 = *(v47 + 8);
          v20 = v54;
          v49 = a2;
          v21 = v55;
          v50 = v55;
          v51 = v18;
          v52 = v19;
          sub_24EB6CE50(v18, v19);
          sub_24EB6CE50(a2, v21);
          v20(&v49);
          sub_24F215F60(v53, &v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_24E61A034(0, v17[2] + 1, 1, v17);
          }

          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            v17 = sub_24E61A034((v22 > 1), v23 + 1, 1, v17);
          }

          sub_24EB6CE70(a2, v55);
          sub_24EB6CE70(v18, v19);
          v17[2] = v23 + 1;
          sub_24F215FC8(&v49, &v17[3 * v23 + 4]);
        }

        sub_24F215F98(v53);
        v16 += 24;
        --v15;
      }

      while (v15);

      v7 = v41;
      v10 = v42;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v9 = (v46 - 1) & v46;
    if (v17[2])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v40;
      v25 = sub_24E76D97C(v43);
      v27 = v40[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_35;
      }

      v31 = v26;
      if (v40[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v25;
          sub_24E8B5974();
          v25 = v36;
          v9 = (v46 - 1) & v46;
        }
      }

      else
      {
        sub_24E8A73E0(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_24E76D97C(v43);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_37;
        }
      }

      v33 = v49;
      v40 = v49;
      if (v31)
      {
        *(v49[7] + 8 * v25) = v17;
      }

      else
      {
        v49[(v25 >> 6) + 8] |= 1 << v25;
        *(v33[6] + 8 * v25) = v43;
        *(v33[7] + 8 * v25) = v17;
        v34 = v33[2];
        v29 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v29)
        {
          goto LABEL_36;
        }

        v33[2] = v35;
      }

      v10 = v42;
      v11 = v45;
    }

    else
    {

      v11 = v45;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      *(v39 + v38) = v40;
    }

    v9 = *(v7 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24F213DA4(int a1, char a2, char a3, id a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    if (a5 & 1) != 0 && (a2 & 1) != 0 && (a3)
    {
      type metadata accessor for Code(0);
      v10 = a4;
      sub_24F215DE4(&qword_27F212540, type metadata accessor for Code);
      if (sub_24F91F0F8())
      {
        __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger), *(a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        v11 = *(a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24);
        v12 = *(a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32);
        __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements), v11);
        v13 = *(v12 + 8);

        v13(1, 1, sub_24F215E2C, a7, v11, v12);

        return;
      }
    }

    else
    {
      v14 = a4;
    }

    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

void sub_24F213FFC(int a1, int a2, int a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

void sub_24F21407C(int a1, int a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

uint64_t sub_24F2140FC(uint64_t a1, char *a2, char a3)
{
  if (*(a1 + 9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);
    v5 = sub_24F92A9E8();
    v6 = swift_allocObject();
    *(v6 + 16) = a3 & 1;
    *(v6 + 24) = a2;
    *(v6 + 32) = v5;
    v7 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
    v8 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v7);
    v9 = *(v8 + 8);
    v10 = a2;

    v9(1, 1, sub_24F216044, v6, v7, v8);

    return v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);

    return sub_24F92A988();
  }
}

uint64_t sub_24F214240(uint64_t a1, char *a2, char a3)
{
  v5 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if ((sub_24F2112DC(*a1) & 1) == 0 && (v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);

    return sub_24F92A988();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);
  v7 = sub_24F92A9E8();
  v8 = swift_allocObject();
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v7;
  v9 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
  v10 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v9);
  v11 = *(v10 + 8);
  v12 = a2;

  v11(1, 1, sub_24F216044, v8, v9, v10);

  return v7;
}

uint64_t sub_24F21439C(uint64_t a1, char *a2, char a3)
{
  v5 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if ((sub_24F2112DC(*a1) & 1) != 0 && (v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);

    return sub_24F92A988();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8);
  v7 = sub_24F92A9E8();
  v8 = swift_allocObject();
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v7;
  v9 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
  v10 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v9);
  v11 = *(v10 + 8);
  v12 = a2;

  v11(1, 1, sub_24F216044, v8, v9, v10);

  return v7;
}

uint64_t sub_24F2144F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6F8);
  v6 = sub_24F92A9E8();
  v7 = (a2 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements);
  v8 = *(a2 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24);
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v3;
  *(v10 + 32) = v4;
  *(v10 + 33) = v5;
  v11 = *(v9 + 24);

  v11(sub_24F215EF0, v10, v8, v9);

  return v6;
}

void sub_24F2145EC(int a1, int a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    sub_24F92A9A8();
  }

  else
  {

    sub_24F92A9C8();
  }
}

void sub_24F21468C(unint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24E615E00(Strong + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger, v32);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    if (a1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C850);
      v7 = a1;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      v29 = 0;
      v30 = 0;
    }

    v28 = v7;
    v31 = v6;

    sub_24F928458();
    sub_24E601704(&v28, &qword_27F2129B0);
    sub_24F9283A8();
    if (a2)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C848);
      v9 = a2;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v29 = 0;
      v30 = 0;
    }

    v28 = v9;
    v31 = v8;

    sub_24F928458();
    sub_24E601704(&v28, &qword_27F2129B0);
    sub_24F92A588();

    __swift_destroy_boxed_opaque_existential_1(v32);
    v10 = &v5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[8];
    sub_24EB6CE50(*v10, v12);
    v13 = sub_24F2112DC(a1);
    if (v13)
    {
      v14 = v13;
      v15 = *&v5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider + 24];
      v16 = *&v5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider], v15);
      v17 = (*(v16 + 8))(v15, v16);
      v26 = v17;
      if ((v14 & 0x100) != 0)
      {
        v18 = -127;
      }

      else
      {
        v18 = -126;
      }

      v27 = v18;
      ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v26, 0, &v28);
      sub_24EB6CE70(v11, v12);
      v19 = v17;
      v20 = v18;
    }

    else
    {
      v21 = sub_24F211664(a2);
      v22 = 1;
      if (v21)
      {
        v22 = 2;
      }

      v26 = v22;
      v27 = 0;
      ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v26, 0, &v28);
      v19 = v11;
      v20 = v12;
    }

    sub_24EB6CE70(v19, v20);
    v23 = v28;
    v24 = v29;
    v25 = v10[8];
    v28 = *v10;
    LOBYTE(v29) = v25;
    sub_24EB6CE50(v28, v25);
    sub_24F92A9C8();
    sub_24EB6CE70(v28, v29);
    v28 = v23;
    LOBYTE(v29) = v24;
    sub_24EB6CE50(v23, v24);
    sub_24F2117D8(&v28);

    sub_24EB6CE70(v23, v24);
    sub_24EB6CE70(v28, v29);
  }
}

void sub_24F214A54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v9 = 1;
    v10 = -64;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v9, 0, &v6);
    v2 = v6;
    v3 = v7;
    sub_24F92A9A8();
    v6 = v2;
    LOBYTE(v7) = v3;
    sub_24F2117D8(&v6);
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], *&v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v4 = sub_24F92CFE8();
    v8 = MEMORY[0x277D837D0];
    v6 = v4;
    v7 = v5;
    sub_24F928438();
    sub_24E601704(&v6, &qword_27F2129B0);
    sub_24F92A5A8();

    sub_24EB6CE70(v2, v3);
  }
}

id sub_24F214C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v42 = a3;
  v47 = a1;
  v48 = a2;
  v43 = a9;
  v44 = a4;
  ObjectType = swift_getObjectType();
  v46 = sub_24F929078();
  v12 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F92AAB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24F92AAE8();
  v19 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a6;
  v52[4] = v41;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, v42, a6);
  v51[3] = a7;
  v51[4] = v43;
  v23 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(a7 - 8) + 32))(v23, v44, a7);
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue] = 0;
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler] = 0;
  v24 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  *&a5[v24] = sub_24E60F260(MEMORY[0x277D84F90]);
  v25 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock;
  *&a5[v25] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks] = MEMORY[0x277D84F98];
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_27F39C380);
  (*(v16 + 16))(v18, v26, v15);
  sub_24F92AAD8();
  v27 = v46;
  (*(v12 + 104))(v14, *MEMORY[0x277D21DD8], v46);
  v28 = v45;
  v29 = sub_24F92A578();
  (*(v12 + 8))(v14, v27);
  (*(v19 + 8))(v21, v28);
  v30 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger];
  v31 = sub_24F928EB8();
  v32 = MEMORY[0x277D21D78];
  v30[3] = v31;
  v30[4] = v32;
  *v30 = v29;
  v33 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
  v34 = v48;
  *v33 = v47;
  *(v33 + 1) = v34;
  sub_24E615E00(v52, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements]);
  v35 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  *v35 = 0;
  v35[8] = -64;
  sub_24E615E00(v51, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider]);
  v50.receiver = a5;
  v50.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v50, sel_init);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 defaultCenter];
  [v39 addObserver:v38 selector:sel_entitlementsDidChange name:*MEMORY[0x277CEC318] object:0];

  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v38;
}

id sub_24F215138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a2;
  v27 = a8;
  v25 = a1;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v21);
  (*(v17 + 16))(v20, a3, a6);
  (*(v13 + 16))(v15, a4, a7);
  return sub_24F214C60(v25, v26, v20, v15, v22, a6, a7, v27, a9);
}

uint64_t sub_24F2152E4()
{

  return swift_deallocObject();
}

uint64_t sub_24F215324()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F215364()
{

  return swift_deallocObject();
}

uint64_t sub_24F2153F0()
{

  return swift_deallocObject();
}

uint64_t sub_24F215458()
{
  sub_24EB6CE70(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F215494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23BBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F215504()
{

  if (*(v0 + 32))
  {

    if (*(v0 + 48))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F215564()
{

  if (*(v0 + 64))
  {

    if (*(v0 + 80))
    {
    }
  }

  return swift_deallocObject();
}

void sub_24F2155D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v7[0] = *(v0 + 40);
  v7[1] = v4;
  v5 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v5;
  sub_24F210878(v1, v2, v7, 0, v3, v6);
}

uint64_t sub_24F215624(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_24E5FCA4C(a3);
  }

  return result;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F215690()
{
  result = qword_27F23C760;
  if (!qword_27F23C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C760);
  }

  return result;
}

unint64_t sub_24F2156E8()
{
  result = qword_27F23C768;
  if (!qword_27F23C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C768);
  }

  return result;
}

uint64_t sub_24F215748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F215798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_24F2158A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F2158F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_24F2159C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
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

uint64_t sub_24F215A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_24F215A88(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v4 = *(a2 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
  if (v4)
  {
    v14 = v4;
    sub_24F0848D0(a1, v14, a3);
  }

  else
  {
    v6 = objc_opt_self();
    _Block_copy(a3);
    v7 = [v6 mainBundle];
    v8 = [v7 bundleIdentifier];

    if (v8)
    {
      sub_24F92B0D8();
    }

    v9 = sub_24F92B098();

    v10 = sub_24F92B098();
    v11 = sub_24F92B098();
    v12 = AMSCustomError();

    v13 = sub_24F91F268();
    (a3)[2](a3, 0, v13);

    _Block_release(a3);
  }
}

id sub_24F215C68()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  (*(v0 + 24))([v1 lock]);

  return [v1 unlock];
}

uint64_t objectdestroy_42Tm_1()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_24F215D28()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  v3 = [v2 lock];
  if (v1)
  {
    v1(v3);
  }

  return [v2 unlock];
}

uint64_t sub_24F215D98(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_24E824448(a3);
  }

  return result;
}

uint64_t sub_24F215DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_27Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F215F10()
{
  sub_24EB6CE70(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t SearchResultsDiffablePagePresenter.__allocating_init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:source:referrerData:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, __int128 *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(char *, uint64_t, uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v142 = a7;
  v125 = a6;
  v124 = a5;
  v158 = a1;
  v153 = a24;
  v155 = a23;
  v134 = a22;
  v154 = a21;
  v127 = a20;
  v151 = a19;
  v133 = a18;
  v132 = a17;
  v131 = a16;
  v130 = a15;
  v129 = a14;
  v128 = a13;
  v147 = a11;
  v145 = a10;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v141 = &v118 - v30;
  v140 = sub_24F92BEE8();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_24F92BE88();
  MEMORY[0x28223BE20](v136);
  v137 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F927DC8();
  MEMORY[0x28223BE20](v33 - 8);
  v135 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v35 - 8);
  v152 = &v118 - v36;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v157 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v126 = &v118 - v37;
  v149 = sub_24F9288E8();
  v156 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v25;
  v39 = swift_allocObject();
  v120 = *a8;
  v121 = *a9;
  v123 = *(a12 + 4);
  *(v39 + qword_27F39DDD0) = 0;
  v122 = *(a12 + 40);
  v40 = qword_27F39DDD8;
  *(v39 + qword_27F39DDD8) = 4;
  v41 = (v39 + qword_27F39DDE0);
  *v41 = 0;
  v41[1] = 0;
  v42 = v39 + qword_27F23C860;
  *v42 = xmmword_24F9406F0;
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = 0;
  *(v42 + 40) = 0;
  *(v39 + qword_27F39DDE8) = 1;
  *(v39 + qword_27F39DDF0) = 0;
  *(v39 + qword_27F23C868) = 0;
  v43 = qword_27F39DDF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C870);
  swift_allocObject();
  *(v39 + v43) = sub_24F92ADA8();
  v44 = qword_27F39DE00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C878);
  swift_allocObject();
  *(v39 + v44) = sub_24F92ADA8();
  v45 = qword_27F39DE08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C880);
  swift_allocObject();
  *(v39 + v45) = sub_24F92ADA8();
  *(v39 + qword_27F39DE10) = 0;
  *(v39 + qword_27F39DE18) = 0;
  type metadata accessor for ASKBagContract();
  v46 = *a12;
  v119 = a12[1];
  v118 = v46;
  sub_24F928F28();
  v47 = *&v161[0];
  *(v39 + qword_27F23C888) = a2;
  *(v39 + qword_27F39DE20) = a3;
  v48 = (v39 + qword_27F23C890);
  v49 = v124;
  *v48 = a4;
  v48[1] = v49;
  v50 = (v39 + qword_27F39DE28);
  v51 = v142;
  *v50 = v125;
  v50[1] = v51;
  swift_beginAccess();
  *(v39 + v40) = v120;
  *(v39 + qword_27F39DE30) = v121;
  swift_beginAccess();
  v52 = v147;
  *v41 = v145;
  v41[1] = v52;
  v142 = a2;

  v147 = a3;

  v145 = a4;
  swift_unknownObjectRetain();

  v53 = *v42;
  v54 = *(v42 + 8);
  v55 = *(v42 + 16);
  v56 = *(v42 + 24);
  v57 = *(v42 + 32);
  v58 = v119;
  *v42 = v118;
  *(v42 + 16) = v58;
  *(v42 + 32) = v123;
  v59 = *(v42 + 40);
  *(v42 + 40) = v122;
  sub_24EA14B54(v53, v54, v55, v56, v57, v59);
  *(v39 + qword_27F39DE38) = v128;
  *(v39 + qword_27F39DE40) = v129;
  *(v39 + qword_27F39DE48) = v130;
  v60 = (v39 + qword_27F39DE50);
  v61 = v132;
  *v60 = v131;
  v60[1] = v61;
  *(v39 + qword_27F39DE58) = v133;
  v62 = (v39 + qword_27F39DE60);
  v63 = v127;
  *v62 = v151;
  v62[1] = v63;
  v64 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  if (qword_27F210900 != -1)
  {
    swift_once();
  }

  v65 = *MEMORY[0x277D21C38];
  v66 = v156;
  v67 = v148;
  v68 = v149;
  v133 = *(v156 + 104);
  v133(v148, v65, v149);
  v132 = v64;
  v69 = v126;
  sub_24F92A368();
  v151 = v47;
  v70 = *(v66 + 8);
  v156 = v66 + 8;
  v70(v67, v68);
  v71 = v150;
  sub_24F92A408();
  v72 = *(v157 + 8);
  v157 += 8;
  v72(v69, v71);
  v73 = *&v161[0];
  type metadata accessor for FastImpressionFlushGate();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74[4] = 0;
  v74[5] = 0;
  v74[2] = v73;
  *(v39 + qword_27F23C898) = v74;
  v75 = (v39 + qword_27F23C8A0);
  v76 = v134;
  *v75 = v154;
  v75[1] = v76;
  v77 = (v39 + qword_27F39DE68);
  v78 = v153;
  *v77 = v155;
  v77[1] = v78;
  v79 = qword_27F2108F0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v80 = v69;
  if (v79 != -1)
  {
    swift_once();
  }

  v81 = v148;
  v82 = v65;
  v83 = v149;
  v133(v148, v82, v149);
  sub_24F92A368();
  v70(v81, v83);
  v84 = v150;
  sub_24F92A408();
  v72(v80, v84);
  v85 = *&v161[0];
  type metadata accessor for FastImpressionsTracker();
  v86 = swift_allocObject();
  v86[3] = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  v86[5] = sub_24F929E98();
  swift_allocObject();
  v86[6] = sub_24F929E98();
  v86[4] = v85;
  v87 = sub_24F91F4A8();
  (*(*(v87 - 8) + 56))(v152, 1, 1, v87);
  v157 = sub_24F218910(&qword_27F22D210, type metadata accessor for FastImpressionsTracker);
  memset(v161, 0, sizeof(v161));
  v162 = 0;
  *(v39 + qword_27F39CC00) = 0;
  v88 = MEMORY[0x277D84F90];
  *(v39 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v39 + qword_27F2326C8) = 0;
  v89 = *(*v39 + 640);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD70);
  v91 = *(*(v90 - 8) + 56);
  v91(v39 + v89, 1, 1, v90);
  v92 = *(*v39 + 648);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v93 - 8) + 56))(v39 + v92, 1, 1, v93);
  v94 = *(*v39 + 656);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD68);
  (*(*(v95 - 8) + 56))(v39 + v94, 1, 1, v95);
  v91(v39 + *(*v39 + 664), 1, 1, v90);
  v96 = *(*v39 + 672);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v97 - 8) + 56))(v39 + v96, 1, 1, v97);
  v98 = *(*v39 + 680);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v99 - 8) + 56))(v39 + v98, 1, 1, v99);
  v100 = *(*v39 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v159 = v88;
  sub_24F218910(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v139 + 104))(v138, *MEMORY[0x277D85260], v140);
  *(v39 + v100) = sub_24F92BF38();
  sub_24EBD3128(v39 + *(*v39 + 696));
  v101 = (v39 + *(*v39 + 704));
  *v101 = 0u;
  v101[1] = 0u;
  *(v101 + 25) = 0u;
  v102 = *(*v39 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v39 + v102) = sub_24F92ADA8();
  v103 = *(*v39 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v39 + v103) = sub_24F92ADA8();
  v104 = *(*v39 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v39 + v104) = sub_24F92ADA8();
  *(v39 + *(*v39 + 736)) = 0;
  v105 = (v39 + *(*v39 + 752));
  *v105 = 0;
  v105[1] = 0;
  v106 = v152;
  sub_24E60169C(v152, v39 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v161, v39 + *(*v39 + 744), &qword_27F229490);
  v107 = type metadata accessor for InlineUnifiedMessagePresenter();
  v160.receiver = objc_allocWithZone(v107);
  v160.super_class = v107;
  *(v39 + qword_27F39CC08) = objc_msgSendSuper2(&v160, sel_init);
  v108 = v158;

  v109 = sub_24EBBA1A8(v108, v86, v157, 0);
  v110 = *(*v109 + 1112);

  *(v109 + qword_27F39CC00) = v110(0);

  sub_24EBC957C(0);

  sub_24E601704(v161, &qword_27F229490);
  sub_24E601704(v106, &qword_27F228530);
  swift_beginAccess();
  v86[3] = &protocol witness table for SearchResultsDiffablePagePresenter;
  swift_unknownObjectWeakAssign();
  v111 = (v109 + *(*v109 + 208));
  swift_beginAccess();
  v112 = v153;
  *v111 = v155;
  v111[1] = v112;
  swift_retain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648);
  sub_24E602068(&qword_27F22A940, &qword_27F22A648);
  sub_24F9288B8();
  v113 = v141;
  sub_24F9288C8();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v161);
  (*(v144 + 8))(v113, v146);

  v114 = *(v109 + qword_27F23C898);

  v115 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v116 = *(v114 + 32);
  *(v114 + 32) = sub_24F218A6C;
  *(v114 + 40) = v115;

  sub_24E824448(v116);

  return v109;
}

uint64_t SearchResultsDiffablePagePresenter.init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:source:referrerData:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, __int128 *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, void (*a17)(void, void, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const char *a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v140 = a7;
  v123 = a6;
  v122 = a5;
  v155 = a1;
  v150 = a24;
  v152 = a23;
  v132 = a22;
  v151 = a21;
  v125 = a20;
  v148 = a19;
  v131 = a18;
  v130 = a17;
  v129 = a16;
  v128 = a15;
  v127 = a14;
  v126 = a13;
  v144 = a11;
  v142 = a10;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v139 = &v116 - v30;
  v138 = sub_24F92BEE8();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_24F92BE88();
  MEMORY[0x28223BE20](v134);
  v135 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F927DC8();
  MEMORY[0x28223BE20](v33 - 8);
  v133 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v35 - 8);
  v149 = &v116 - v36;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v154 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v124 = &v116 - v37;
  v146 = sub_24F9288E8();
  v153 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *a8;
  v119 = *a9;
  v121 = *(a12 + 4);
  *(v25 + qword_27F39DDD0) = 0;
  v120 = *(a12 + 40);
  v39 = qword_27F39DDD8;
  *(v25 + qword_27F39DDD8) = 4;
  v40 = (v25 + qword_27F39DDE0);
  *v40 = 0;
  v40[1] = 0;
  v41 = v25 + qword_27F23C860;
  *v41 = xmmword_24F9406F0;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  *(v25 + qword_27F39DDE8) = 1;
  *(v25 + qword_27F39DDF0) = 0;
  *(v25 + qword_27F23C868) = 0;
  v42 = qword_27F39DDF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C870);
  swift_allocObject();
  *(v25 + v42) = sub_24F92ADA8();
  v43 = qword_27F39DE00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C878);
  swift_allocObject();
  *(v25 + v43) = sub_24F92ADA8();
  v44 = qword_27F39DE08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C880);
  swift_allocObject();
  *(v25 + v44) = sub_24F92ADA8();
  *(v25 + qword_27F39DE10) = 0;
  *(v25 + qword_27F39DE18) = 0;
  type metadata accessor for ASKBagContract();
  v45 = *a12;
  v117 = a12[1];
  v116 = v45;
  sub_24F928F28();
  v46 = *&v158[0];
  *(v25 + qword_27F23C888) = a2;
  *(v25 + qword_27F39DE20) = a3;
  v47 = (v25 + qword_27F23C890);
  v48 = v122;
  *v47 = a4;
  v47[1] = v48;
  v49 = (v25 + qword_27F39DE28);
  v50 = v140;
  *v49 = v123;
  v49[1] = v50;
  swift_beginAccess();
  *(v25 + v39) = v118;
  *(v25 + qword_27F39DE30) = v119;
  swift_beginAccess();
  v51 = v144;
  *v40 = v142;
  v40[1] = v51;
  v140 = a2;

  v144 = a3;

  v142 = a4;
  swift_unknownObjectRetain();

  v52 = *v41;
  v53 = *(v41 + 8);
  v54 = *(v41 + 16);
  v55 = *(v41 + 24);
  v56 = *(v41 + 32);
  v57 = v117;
  *v41 = v116;
  *(v41 + 16) = v57;
  *(v41 + 32) = v121;
  v58 = *(v41 + 40);
  *(v41 + 40) = v120;
  sub_24EA14B54(v52, v53, v54, v55, v56, v58);
  *(v25 + qword_27F39DE38) = v126;
  *(v25 + qword_27F39DE40) = v127;
  *(v25 + qword_27F39DE48) = v128;
  v59 = (v25 + qword_27F39DE50);
  v60 = v130;
  *v59 = v129;
  v59[1] = v60;
  *(v25 + qword_27F39DE58) = v131;
  v61 = (v25 + qword_27F39DE60);
  v62 = v125;
  *v61 = v148;
  v61[1] = v62;
  if (qword_27F210900 != -1)
  {
    swift_once();
  }

  v63 = v153;
  v64 = *(v153 + 104);
  v65 = v145;
  LODWORD(v131) = *MEMORY[0x277D21C38];
  v66 = v146;
  v130 = v64;
  v64(v145);
  v67 = v124;
  sub_24F92A368();
  v148 = v46;
  v68 = v65;
  v69 = *(v63 + 8);
  v153 = v63 + 8;
  v69(v68, v66);
  v70 = v147;
  sub_24F92A408();
  v71 = *(v154 + 8);
  v154 += 8;
  v71(v67, v70);
  v72 = *&v158[0];
  type metadata accessor for FastImpressionFlushGate();
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73[4] = 0;
  v73[5] = 0;
  v73[2] = v72;
  *(v25 + qword_27F23C898) = v73;
  v74 = (v25 + qword_27F23C8A0);
  v75 = v132;
  *v74 = v151;
  v74[1] = v75;
  v76 = (v25 + qword_27F39DE68);
  v77 = v150;
  *v76 = v152;
  v76[1] = v77;
  v78 = qword_27F2108F0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v79 = v67;
  if (v78 != -1)
  {
    swift_once();
  }

  v132 = "";
  v80 = v145;
  v81 = v146;
  v130(v145, v131, v146);
  sub_24F92A368();
  v69(v80, v81);
  v82 = v147;
  sub_24F92A408();
  v71(v79, v82);
  v83 = *&v158[0];
  type metadata accessor for FastImpressionsTracker();
  v84 = swift_allocObject();
  v84[3] = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  v84[5] = sub_24F929E98();
  swift_allocObject();
  v84[6] = sub_24F929E98();
  v84[4] = v83;
  v85 = sub_24F91F4A8();
  (*(*(v85 - 8) + 56))(v149, 1, 1, v85);
  v154 = sub_24F218910(&qword_27F22D210, type metadata accessor for FastImpressionsTracker);
  memset(v158, 0, sizeof(v158));
  v159 = 0;
  *(v25 + qword_27F39CC00) = 0;
  v86 = MEMORY[0x277D84F90];
  *(v25 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v25 + qword_27F2326C8) = 0;
  v87 = *(*v25 + 640);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD70);
  v89 = *(*(v88 - 8) + 56);
  v89(v25 + v87, 1, 1, v88);
  v90 = *(*v25 + 648);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v91 - 8) + 56))(v25 + v90, 1, 1, v91);
  v92 = *(*v25 + 656);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD68);
  (*(*(v93 - 8) + 56))(v25 + v92, 1, 1, v93);
  v89(v25 + *(*v25 + 664), 1, 1, v88);
  v94 = *(*v25 + 672);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v95 - 8) + 56))(v25 + v94, 1, 1, v95);
  v96 = *(*v25 + 680);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v97 - 8) + 56))(v25 + v96, 1, 1, v97);
  v98 = *(*v25 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v156 = v86;
  sub_24F218910(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v137 + 104))(v136, *MEMORY[0x277D85260], v138);
  *(v25 + v98) = sub_24F92BF38();
  sub_24EBD3128(v25 + *(*v25 + 696));
  v99 = (v25 + *(*v25 + 704));
  *v99 = 0u;
  v99[1] = 0u;
  *(v99 + 25) = 0u;
  v100 = *(*v25 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v25 + v100) = sub_24F92ADA8();
  v101 = *(*v25 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v25 + v101) = sub_24F92ADA8();
  v102 = *(*v25 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v25 + v102) = sub_24F92ADA8();
  *(v25 + *(*v25 + 736)) = 0;
  v103 = (v25 + *(*v25 + 752));
  *v103 = 0;
  v103[1] = 0;
  v104 = v149;
  sub_24E60169C(v149, v25 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v158, v25 + *(*v25 + 744), &qword_27F229490);
  v105 = type metadata accessor for InlineUnifiedMessagePresenter();
  v157.receiver = objc_allocWithZone(v105);
  v157.super_class = v105;
  *(v25 + qword_27F39CC08) = objc_msgSendSuper2(&v157, sel_init);
  v106 = v155;

  v107 = sub_24EBBA1A8(v106, v84, v154, 0);
  v108 = *(*v107 + 1112);

  *(v107 + qword_27F39CC00) = v108(0);

  sub_24EBC957C(0);

  sub_24E601704(v158, &qword_27F229490);
  sub_24E601704(v104, &qword_27F228530);
  swift_beginAccess();
  v84[3] = &protocol witness table for SearchResultsDiffablePagePresenter;
  swift_unknownObjectWeakAssign();
  v109 = (v107 + *(*v107 + 208));
  swift_beginAccess();
  v110 = v150;
  *v109 = v152;
  v109[1] = v110;
  swift_retain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648);
  sub_24E602068(&qword_27F22A940, &qword_27F22A648);
  sub_24F9288B8();
  type metadata accessor for SearchResultsDiffablePagePresenter();
  v111 = v139;
  sub_24F9288C8();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v158);
  (*(v141 + 8))(v111, v143);

  v112 = *(v107 + qword_27F23C898);

  v113 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v114 = *(v112 + 32);
  *(v112 + 32) = sub_24F21C034;
  *(v112 + 40) = v113;

  sub_24E824448(v114);

  return v107;
}

uint64_t sub_24F218910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F218998()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F2189D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9287F8();
    v2 = __swift_project_value_buffer(v1, qword_27F2230A0);
    sub_24ED48168(v2);
  }

  return result;
}

uint64_t type metadata accessor for SearchResultsDiffablePagePresenter()
{
  result = qword_27F23C8A8;
  if (!qword_27F23C8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchResultsDiffablePagePresenter.term.getter()
{
  v1 = *(v0 + qword_27F39DE28);

  return v1;
}

uint64_t sub_24F218AFC()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_27F39DE28 + 8);
  if (v5)
  {
    v15 = *(v0 + qword_27F39DE28);
    v16 = v5;

    sub_24F91EA98();
    sub_24E600AEC();
    v6 = sub_24F92C538();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x745F686372616573;
  *(inited + 40) = 0xEB000000006D7265;
  v15 = 11043298;
  v16 = 0xA300000000000000;
  MEMORY[0x253050C20](v6, v8);

  MEMORY[0x253050C20](11108834, 0xA300000000000000);
  v10 = v16;
  *(inited + 48) = v15;
  *(inited + 56) = v10;
  v11 = sub_24E6086DC(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F219F90);
  v12._object = 0x800000024FA6FD80;
  v12._countAndFlagsBits = 0xD000000000000013;
  countAndFlagsBits = localizedString(_:with:)(v12, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_24F218D20()
{
  v1 = qword_27F39DDD0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F218D64(uint64_t a1)
{
  v3 = qword_27F39DDD0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F218E14@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27F39DDD8;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24F218E68(char *a1)
{
  v2 = *a1;
  v3 = qword_27F39DDD8;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24F218F18@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27F39DE30;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24F218F6C(char *a1)
{
  v2 = *a1;
  v3 = qword_27F39DE30;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24F21901C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39DDE0);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24F219088()
{
  v1 = (v0 + qword_27F39DDE0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24F2190E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27F39DDE0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SearchResultsDiffablePagePresenter.originatingTerm.getter()
{
  v1 = *(v0 + qword_27F39DE50);

  return v1;
}

uint64_t SearchResultsDiffablePagePresenter.guidedSearchOptimizationTerm.getter()
{
  v1 = *(v0 + qword_27F39DE60);

  return v1;
}

uint64_t sub_24F219268()
{
  v1 = qword_27F39DDE8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F2192AC(char a1)
{
  v3 = qword_27F39DDE8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F2193CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v122 = &v90 - v3;
  v123 = sub_24F91F6B8();
  v100 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v99 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_27F39DE28 + 8))
  {
    v5 = *(v0 + qword_27F39DE28);
    v120 = *(v0 + qword_27F39DE28 + 8);
    v121 = v5;
  }

  else
  {
    v120 = 0xE000000000000000;
    v121 = 0;
  }

  v6 = qword_27F39DE30;
  swift_beginAccess();
  v119 = *(v1 + v6);
  v7 = (v1 + qword_27F39DDE0);
  swift_beginAccess();
  v8 = v7[1];
  v118 = *v7;
  v117 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658);
  sub_24F92BF18();
  v116 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v124);

  v9 = qword_27F39DDD8;
  swift_beginAccess();
  v115 = *(v1 + v9);
  v114 = *(v1 + qword_27F39DE38);
  v113 = *(v1 + qword_27F39DE40);
  v109 = *(v1 + qword_27F39DE48);
  v10 = *(v1 + qword_27F39DE50 + 8);
  v112 = *(v1 + qword_27F39DE50);
  v108 = v10;
  v110 = *(v1 + qword_27F39DE58);
  v12 = *(v1 + qword_27F23C860 + 8);
  v107 = *(v1 + qword_27F23C860);
  v11 = v107;
  v106 = v12;
  v13 = *(v1 + qword_27F23C860 + 24);
  v105 = *(v1 + qword_27F23C860 + 16);
  v14 = v105;
  v104 = v13;
  v103 = *(v1 + qword_27F23C860 + 32);
  v15 = v103;
  v16 = *(v1 + qword_27F39DE60 + 8);
  v111 = *(v1 + qword_27F39DE60);
  v101 = v16;
  v17 = *(v1 + qword_27F23C860 + 40);
  v102 = v17;

  sub_24EA145F0(v11, v12, v14, v13, v15, v17);

  v18 = v99;
  sub_24F91F6A8();
  v98 = sub_24F91F668();
  v97 = v19;
  (*(v100 + 8))(v18, v123);
  v90 = v1[2];
  v96 = *(v1 + qword_27F23C888);
  v20 = *(v1 + qword_27F23C890 + 8);
  v95 = *(v1 + qword_27F23C890);
  v94 = v20;
  v22 = *(v1 + qword_27F23C8A0 + 8);
  v92 = *(v1 + qword_27F23C8A0);
  v21 = v92;
  v93 = v22;
  swift_beginAccess();
  v23 = v1[3];
  swift_beginAccess();
  v24 = v1[4];
  v25 = *(v1 + qword_27F39DE68 + 8);
  v99 = *(v1 + qword_27F39DE68);
  v100 = v25;
  type metadata accessor for SearchResultsDiffablePageContentPresenter();
  v26 = swift_allocObject();
  v27 = qword_27F238640;
  v91 = v24;

  v123 = v23;

  v28 = MEMORY[0x277D84F90];
  *(v26 + v27) = sub_24E60A69C(MEMORY[0x277D84F90]);
  v29 = (v26 + qword_27F238648);
  *v29 = v21;
  v29[1] = v22;
  v30 = sub_24F91F4A8();
  (*(*(v30 - 8) + 56))(v122, 1, 1, v30);
  *(v26 + qword_27F22F198) = 0;
  *(v26 + qword_27F22F1A0) = v28;
  v31 = qword_27F39C780;
  swift_unknownObjectRetain();

  *(v26 + v31) = sub_24E60986C(v28);
  v32 = (v26 + qword_27F22F1A8);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v26 + qword_27F22F1B0);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v26 + qword_27F22F1B8);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v26 + qword_27F22F1C0);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v26 + qword_27F22F1C8);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v26 + qword_27F39C788);
  *v37 = 0u;
  v37[1] = 0u;
  *(v37 + 25) = 0u;
  *(v26 + qword_27F39C790) = 0;
  *(v26 + qword_27F22F1D0) = 0;
  *(v26 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v26 + qword_27F39C798) = 0;
  v38 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78);
  swift_allocObject();
  *(v26 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v26 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90);
  swift_allocObject();
  *(v26 + v40) = sub_24F92ADA8();
  v41 = qword_27F39C7B8;
  swift_allocObject();
  *(v26 + v41) = sub_24F92ADA8();
  v42 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v26 + v42) = sub_24F92ADA8();
  v43 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v26 + v43) = sub_24F92ADA8();
  v44 = qword_27F22F1E0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v46 = *(*(v45 - 8) + 56);
  v47 = v26 + v44;
  v48 = v90;
  v46(v47, 1, 1, v45);
  v46(v26 + qword_27F22F1E8, 1, 1, v45);
  *(v26 + 16) = v48;
  sub_24E911D90(v122, v26 + qword_27F39C7D0);
  v49 = *v32;
  *v32 = 0;
  v32[1] = 0;
  sub_24E824448(v49);
  v50 = *v34;
  *v34 = 0;
  v34[1] = 0;
  sub_24E824448(v50);
  v51 = *v33;
  *v33 = 0;
  v33[1] = 0;
  sub_24E824448(v51);
  v52 = *v35;
  *v35 = 0;
  v35[1] = 0;
  sub_24E824448(v52);
  v53 = *v36;
  *v36 = 0;
  v36[1] = 0;
  sub_24E824448(v53);
  *(v26 + qword_27F22F1F0) = v123;
  v54 = v91;
  *(v26 + qword_27F39C7D8) = v91;
  v55 = swift_allocObject();
  *(v55 + 24) = v94;
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v56;
  *(v57 + 32) = v48;
  *(v57 + 40) = v54;
  v58 = v97;
  *(v57 + 48) = v98;
  *(v57 + 56) = v58;
  v59 = v120;
  *(v57 + 64) = v121;
  *(v57 + 72) = v59;
  *(v57 + 80) = v119;
  v60 = v117;
  *(v57 + 88) = v118;
  *(v57 + 96) = v60;
  *(v57 + 104) = v116;
  *(v57 + 112) = v115;
  *(v57 + 113) = v114;
  *(v57 + 114) = v113;
  v61 = v112;
  *(v57 + 120) = v109;
  *(v57 + 128) = v61;
  v62 = v110;
  *(v57 + 136) = v108;
  *(v57 + 144) = v62;
  v63 = v106;
  *(v57 + 152) = v107;
  *(v57 + 160) = v63;
  v64 = v104;
  *(v57 + 168) = v105;
  *(v57 + 176) = v64;
  *(v57 + 184) = v103;
  *(v57 + 192) = v102;
  v65 = v101;
  *(v57 + 200) = v111;
  *(v57 + 208) = v65;
  v66 = v92;
  *(v57 + 216) = 0;
  *(v57 + 224) = v66;
  *(v57 + 232) = v93;
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  v69 = v99;
  v68[2] = v67;
  v68[3] = v69;
  v68[4] = v100;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_24F08D6D0;
  *(v70 + 24) = v48;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_24F08D7E8;
  *(v71 + 24) = v57;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_24E965628;
  *(v72 + 24) = v71;
  v73 = (v26 + qword_27F22F1A8);
  v74 = *(v26 + qword_27F22F1A8);
  *v73 = sub_24E965630;
  v73[1] = v72;
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_retain_n();

  swift_unknownObjectRetain();

  sub_24E824448(v74);
  v75 = (v26 + qword_27F22F1B0);
  v76 = *(v26 + qword_27F22F1B0);
  v77 = *(v26 + qword_27F22F1B0 + 8);
  if (v76)
  {
    v78 = swift_allocObject();
    *(v78 + 16) = v76;
    *(v78 + 24) = v77;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_24E8D23E0;
    *(v79 + 24) = v78;
    v80 = sub_24E965648;
  }

  else
  {
    v80 = 0;
    v79 = *(v26 + qword_27F22F1B0 + 8);
  }

  *v75 = v80;
  v75[1] = v79;
  sub_24E5FCA4C(v76);
  sub_24E824448(v76);
  v81 = swift_allocObject();
  *(v81 + 16) = sub_24F08D6DC;
  *(v81 + 24) = v68;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_24E965638;
  *(v82 + 24) = v81;
  v83 = (v26 + qword_27F22F1B8);
  v84 = *(v26 + qword_27F22F1B8);
  *v83 = sub_24E965640;
  v83[1] = v82;

  sub_24E824448(v84);
  v85 = swift_allocObject();
  *(v85 + 16) = sub_24ECB25B4;
  *(v85 + 24) = v70;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_24E965628;
  *(v86 + 24) = v85;
  v87 = (v26 + qword_27F22F1C8);
  v88 = *(v26 + qword_27F22F1C8);
  *v87 = sub_24E965630;
  v87[1] = v86;

  sub_24E824448(v88);

  return v26;
}

uint64_t sub_24F21A098(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  result = sub_24F2F4B68(*a1, a1[1], *(a1 + 16));
  if ((v3 & 0x80000000) == 0)
  {

    v5 = qword_27F39DDD0;
    swift_beginAccess();
    if (!*(v1 + v5))
    {
      v6 = *&v2[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason];
      v7 = *&v2[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8];
      if (!v7)
      {
        v8._countAndFlagsBits = 0xD000000000000017;
        v8._object = 0x800000024FA6FF50;
        v9._countAndFlagsBits = 0;
        v9._object = 0xE000000000000000;
        localizedString(_:comment:)(v8, v9);
        v11 = *(v1 + qword_27F39DE28);
        v10 = *(v1 + qword_27F39DE28 + 8);
        if (v10)
        {
          v12 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v12 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (v12)
          {
            v13._object = 0x800000024FA6FF70;
            v13._countAndFlagsBits = 0xD000000000000011;
            v14._countAndFlagsBits = 0;
            v14._object = 0xE000000000000000;
            localizedString(_:comment:)(v13, v14);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_24F93DE60;
            *(v15 + 56) = MEMORY[0x277D837D0];
            *(v15 + 64) = sub_24E90A06C();
            *(v15 + 32) = v11;
            *(v15 + 40) = v10;

            sub_24F92B0A8();
          }
        }
      }

      sub_24ECDE61C(v6, v7);
      sub_24F92AD88();
    }
  }

  return result;
}

uint64_t sub_24F21A2EC(uint64_t a1, int a2)
{
  sub_24F2F70DC(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled);
  v5 = qword_27F39DDE8;
  swift_beginAccess();
  v53 = v4;
  v52 = v5;
  *(v2 + v5) = v4;
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink);
  v7 = qword_27F39DDF0;
  swift_beginAccess();
  v55 = v2;
  *(v2 + v7) = v6;

  v8 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v54 = v8;
  v9 = *(a1 + v8);
  v10 = MEMORY[0x277D84F90];
  v56[0] = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  v12 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v11)
  {
    v15 = v10;
    goto LABEL_14;
  }

  v13 = 0;
  v14 = v9 + 32;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v16 = v14 + 40 * v13;
    v17 = v13;
    while (1)
    {
      if (v17 >= *(v9 + 16))
      {
        goto LABEL_59;
      }

      sub_24E65864C(v16, &_);
      if (!*(*(a1 + v12) + 16))
      {
        goto LABEL_4;
      }

      sub_24E76D934(&_);
      if (v18)
      {
        break;
      }

LABEL_4:
      ++v17;
      sub_24E6585F8(&_);
      v16 += 40;
      if (v11 == v17)
      {
        goto LABEL_14;
      }
    }

    v19 = sub_24E6585F8(&_);
    MEMORY[0x253050F00](v19);
    if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v13 = v17 + 1;
    sub_24F92B638();
    v15 = v56[0];
    v14 = v9 + 32;
  }

  while (v11 - 1 != v17);
LABEL_14:

  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_61;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v21 = 0;
    v22 = 0;
    while (v20 != v21)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x253052270](v21, v15);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v21 >= *(v16 + 16))
        {
          goto LABEL_57;
        }

        if (__OFADD__(v21, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      v24 = *(*(v23 + 24) + 16);

      ++v21;
      v25 = __OFADD__(v22, v24);
      v22 += v24;
      if (v25)
      {
        goto LABEL_58;
      }
    }

    v26 = qword_27F39DDD0;
    v27 = v55;
    swift_beginAccess();
    *(v55 + v26) = v22;
    v15 = *(a1 + v54);
    v57 = v10;
    v28 = *(v15 + 16);

    swift_beginAccess();
    if (v28)
    {
      v29 = 0;
      v30 = v15 + 32;
      v10 = MEMORY[0x277D84F90];
      v54 = v15 + 32;
LABEL_29:
      v31 = v30 + 40 * v29;
      v16 = v29;
      while (v16 < *(v15 + 16))
      {
        sub_24E65864C(v31, v56);
        if (*(*(a1 + v12) + 16))
        {

          sub_24E76D934(v56);
          if (v32)
          {

            v33 = sub_24E6585F8(v56);
            MEMORY[0x253050F00](v33);
            if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            v29 = v16 + 1;
            sub_24F92B638();
            v10 = v57;
            v30 = v15 + 32;
            v27 = v55;
            if (v28 - 1 != v16)
            {
              goto LABEL_29;
            }

            goto LABEL_40;
          }
        }

        ++v16;
        sub_24E6585F8(v56);
        v31 += 40;
        if (v28 == v16)
        {
          v27 = v55;
          goto LABEL_40;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      v20 = sub_24F92C738();
      continue;
    }

    break;
  }

LABEL_40:

  if (v10 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_42;
    }

LABEL_63:

    goto LABEL_64;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_63;
  }

LABEL_42:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x253052270](0, v10);
LABEL_45:

    v35 = *(v34 + 24);

    if (!*(v35 + 16))
    {
      goto LABEL_63;
    }

    sub_24E615E00(v35 + 32, &_);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    type metadata accessor for AdvertsSearchResult();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_64;
    }

    v15 = *(v56[0] + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
    if (v15 >> 62)
    {
      goto LABEL_71;
    }

    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v10 + 32);

      goto LABEL_45;
    }

    __break(1u);
LABEL_71:
    if (!sub_24F92C738())
    {
LABEL_72:

      goto LABEL_64;
    }
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v15 + 32);

      goto LABEL_52;
    }

    __break(1u);
LABEL_81:
    MEMORY[0x253052270](0, v15);

    swift_unknownObjectRelease();
LABEL_64:
    v37 = 0;
    goto LABEL_65;
  }

  v10 = MEMORY[0x253052270](0, v15);

LABEL_52:
  v15 = *(v10 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers);
  if (!(v15 >> 62))
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_75;
    }

    goto LABEL_54;
  }

  if (sub_24F92C738())
  {
LABEL_54:
    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_81;
    }

    v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v36)
    {
      goto LABEL_64;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_75:
  v51 = *(v10 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots);
  if (v51 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_83;
    }

LABEL_77:
    if ((v51 & 0xC000000000000001) != 0)
    {
      MEMORY[0x253052270](0, v51);
      swift_unknownObjectRelease();
    }

    else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    goto LABEL_64;
  }

  result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_77;
  }

LABEL_83:

  v37 = 1;
LABEL_65:
  *(v27 + qword_27F23C868) = v37;
  sub_24F92AD88();
  if (*(v27 + v26))
  {
    *(v27 + v52) = v53;
    v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
    v39 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
    v40 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 24);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
    _.value.resetButtonTitle.value._countAndFlagsBits = v38;
    _.value.resetButtonTitle.value._object = v39;
    _.value.allowsResetButton = v40;
    v41._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions);
    sub_24E903680(_.value.facetGroups._rawValue);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&_, v41);
    sub_24E9036C4(_.value.facetGroups._rawValue);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message);

    sub_24F92AD88();
  }

  else
  {
    v42 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
    v43 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
    v44 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 24);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
    _.value.resetButtonTitle.value._countAndFlagsBits = v42;
    _.value.resetButtonTitle.value._object = v43;
    _.value.allowsResetButton = v44;
    v45._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions);
    sub_24E903680(_.value.facetGroups._rawValue);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&_, v45);
    sub_24E9036C4(_.value.facetGroups._rawValue);
  }

  v46 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction);
  v47 = qword_27F39DE18;
  swift_beginAccess();
  *(v27 + v47) = v46;

  v48 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction);
  v49 = qword_27F39DE10;
  swift_beginAccess();
  *(v27 + v49) = v48;
}