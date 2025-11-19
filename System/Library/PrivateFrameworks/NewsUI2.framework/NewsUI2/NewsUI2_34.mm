unint64_t sub_218A86234()
{
  result = qword_27CC0D688;
  if (!qword_27CC0D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D688);
  }

  return result;
}

unint64_t sub_218A8628C()
{
  result = qword_280E9E990;
  if (!qword_280E9E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E990);
  }

  return result;
}

unint64_t sub_218A862E4()
{
  result = qword_280E9E998;
  if (!qword_280E9E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E998);
  }

  return result;
}

unint64_t sub_218A8633C()
{
  result = qword_280E9EA48;
  if (!qword_280E9EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9EA48);
  }

  return result;
}

unint64_t sub_218A86394()
{
  result = qword_280E9EA50;
  if (!qword_280E9EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9EA50);
  }

  return result;
}

unint64_t sub_218A863E8()
{
  result = qword_280EAEAF0;
  if (!qword_280EAEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEAF0);
  }

  return result;
}

uint64_t sub_218A8643C()
{
  v0 = sub_219BF7614();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_218A86488()
{
  result = qword_27CC0D690;
  if (!qword_27CC0D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D690);
  }

  return result;
}

uint64_t sub_218A864F0()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218951F54();
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EBF18(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

id sub_218A86720()
{
  ObjectType = swift_getObjectType();
  v37 = sub_219BEB384();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38.receiver = v0;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v9 = *&v0[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  result = [v9 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  result = [v9 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v13 setFrame_];
  v23 = [v0 traitCollection];
  sub_218A87318();

  v24 = sub_219BF65B4();
  v25 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_doDoneAction];
  [v24 setLeftBarButtonItem_];

  sub_219BE8644();
  if (qword_27CC08A20 != -1)
  {
    swift_once();
  }

  v26 = qword_27CCD9078;
  v27 = sub_219BE9334();
  v28 = MEMORY[0x277D6E550];
  v8[3] = v27;
  v8[4] = v28;
  *v8 = v26;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_opt_self();

  v31 = [v30 bundleForClass_];
  sub_219BDB5E4();

  v32 = sub_219BF54E4();
  v34 = v33;

  v8[5] = v32;
  v8[6] = v34;
  (*(v6 + 104))(v8, *MEMORY[0x277D6EC80], v5);
  v35 = v37;
  (*(v2 + 104))(v4, *MEMORY[0x277D6ECB0], v37);
  sub_219BE6BD4();

  (*(v2 + 8))(v4, v35);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218A86DE8()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218A86FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 48))(ObjectType, v10);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    return (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_218A871B4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 40))(a2, ObjectType, v4);
}

void sub_218A87318()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_styler], v14);
  v3 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v14);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setSeparatorStyle_];

    v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v10 = [v1 navigationItem];
    v11 = *v9;
    if (sub_219BED0C4())
    {
      v12 = [objc_opt_self() clearColor];
    }

    else
    {
      v12 = *(*__swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    }

    v13 = v12;
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

void sub_218A8750C()
{
  if (!qword_280E92460)
  {
    type metadata accessor for WeatherTagFeedGroupConfigData();
    sub_218A875D8(&unk_280EADD20, type metadata accessor for WeatherTagFeedGroupConfigData);
    sub_218A875D8(qword_280EADD30, type metadata accessor for WeatherTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92460);
    }
  }
}

uint64_t sub_218A875D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WeatherTagFeedGroupEmitter()
{
  result = qword_280EB97A0;
  if (!qword_280EB97A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A87680()
{
  sub_218A8750C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &unk_280E915D0);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, qword_280EBC100);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_218A87784(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeatherTagFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2;
  v19 = a1;
  sub_218A89548();
  sub_219BE3204();
  sub_218A897AC(v2, v7, type metadata accessor for WeatherTagFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_218A895B8(v7, v10 + v8);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_218A8961C;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F74();

  sub_218A897AC(v2, v7, type metadata accessor for WeatherTagFeedGroupEmitter);
  v13 = swift_allocObject();
  sub_218A895B8(v7, v13 + v8);
  v14 = sub_219BE2E54();
  v15 = sub_219BE3064();

  return v15;
}

uint64_t sub_218A879CC(uint64_t a1, uint64_t a2)
{
  result = sub_218A87A54(a2);
  if (!v2)
  {
    sub_218A88420();
    v4 = sub_219BE31C4();

    return v4;
  }

  return result;
}

uint64_t sub_218A87A54(uint64_t a1)
{
  v66 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2186E4594(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v52 - v4;
  sub_2186E4594(0, &qword_280E90150, MEMORY[0x277D33EC8], v2);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v52 - v6;
  v7 = type metadata accessor for WeatherTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4594(0, &qword_280E91A70, sub_2189AD5C8, v2);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v52 - v10;
  v11 = sub_219BF2AB4();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v69 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2034();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WeatherTagFeedGroupConfigData();
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BF1934();
  v25 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for WeatherTagFeedGroupEmitter();
  v28 = *(v56 + 24);
  v55 = v1;
  v29 = *(v1 + v28 + 24);
  v64 = *(v1 + v28 + 32);
  v65 = v29;
  v63 = __swift_project_boxed_opaque_existential_1((v1 + v28), v29);
  sub_218A8750C();
  sub_219BEDD14();
  v68 = *(v22 + 28);
  v61 = sub_219BEDCA4();
  v30 = sub_219BEC004();
  v31 = *(v30 - 8);
  v53 = *(v31 + 56);
  v54 = v31 + 56;
  v53(v20, 1, 1, v30);
  sub_218A42400(0);
  (*(*(v32 - 8) + 56))(v17, 1, 1, v32);
  v33 = v68;
  v67 = v27;
  sub_219BF1764();

  sub_218A89AC8(v17, sub_218A89A94);
  sub_218A89AC8(v20, sub_2186FE720);
  v34 = *(v25 + 8);
  v68 = v25 + 8;
  v61 = v34;
  v34(&v24[v33], v74);
  v53(v20, 1, 1, v30);
  v35 = v57;
  v36 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v36);
  sub_219A951A0(v36);
  sub_219A951B8(v36);
  sub_219A952CC(v36);
  sub_219A952E4(v36);
  sub_219A953F8(v36);
  v37 = v60;
  sub_219BF2024();
  v38 = v59;
  sub_218A897AC(v55 + *(v56 + 20), v59, type metadata accessor for WeatherTagFeedGroupKnobs);
  sub_2189AD5C8();
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = v58;
  (*(v41 + 32))(v58, v38, v39);
  (*(v41 + 56))(v42, 0, 1, v40);
  sub_219BEF0B4();
  v43 = *(v76 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v44 = sub_219BF35D4();
  (*(*(v44 - 8) + 56))(v62, 1, 1, v44);
  LOBYTE(v75) = 5;
  sub_218A89B28(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v45 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v46 = sub_219BF2774();
  (*(*(v46 - 8) + 56))(v37, 1, 1, v46);
  v47 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v47 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v48 = v69;
  sub_219BF2A84();
  v49 = v67;
  v50 = sub_219BF2194();
  (*(v72 + 8))(v48, v73);
  (*(v70 + 8))(v35, v71);
  v61(v49, v74);
  return v50;
}

uint64_t sub_218A88420()
{
  v1 = type metadata accessor for WeatherTagFeedGroupEmitter();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_219BEF0B4();
  v4 = *(v13[1] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v5 = [v4 backingChannel];

  if (v5)
  {
    MEMORY[0x28223BE20](v6);
    v13[-2] = v0;
    v13[-1] = v5;
    sub_219BF1404();
    sub_219BE3204();
    sub_218A897AC(v0, v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherTagFeedGroupEmitter);
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_218A895B8(v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    v9 = sub_219BE2E54();
    sub_219BF0D34();
    v10 = sub_219BE2F64();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_219BEEDD4();
    sub_218A875D8(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D323B8], v10);
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_218A886D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v39 = a2;
  sub_2186E4594(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = v33 - v7;
  v8 = type metadata accessor for WeatherTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEF554();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v33[1] = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33[2] = v33 - v14;
  v15 = sub_219BF1904();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[5] = v18;
  v19 = sub_219BED8D4();
  v35 = *(v19 - 8);
  v36 = v19;
  MEMORY[0x28223BE20](v19);
  v34 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  sub_218A8750C();
  v21 = sub_219BEDCB4();
  v33[3] = v22;
  v33[4] = v21;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v23 = *(type metadata accessor for WeatherTagFeedGroupEmitter() + 20);
  sub_218A897AC(a3 + v23, v10, type metadata accessor for WeatherTagFeedGroupKnobs);
  sub_2189AD5C8();
  v25 = v24;
  sub_219BEE9B4();
  v26 = *(*(v25 - 8) + 8);
  v26(v10, v25);
  sub_218A897AC(a3 + v23, v10, type metadata accessor for WeatherTagFeedGroupKnobs);
  sub_219BEE984();
  v26(v10, v25);
  sub_218A897AC(a3 + v23, v10, type metadata accessor for WeatherTagFeedGroupKnobs);
  sub_219BEE9D4();
  v26(v10, v25);
  v27 = sub_219BEE5D4();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  v28 = v34;
  sub_219BED854();
  v29 = sub_219BF0D34();
  v30 = v38;
  (*(*(v29 - 8) + 16))(v38, v39, v29);
  v31 = type metadata accessor for WeatherTagFeedGroup();
  (*(v35 + 32))(v30 + *(v31 + 20), v28, v36);
  type metadata accessor for TagFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_218A59C84();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218A88BB8()
{
  type metadata accessor for WeatherTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_218A875D8(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_218A88CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherTagFeedGroupEmitter();
  v5 = __swift_project_boxed_opaque_existential_1((a1 + *(v4 + 32)), *(a1 + *(v4 + 32) + 24));
  v7 = *v5;
  v6 = v5[1];
  sub_218A4FB84();
  sub_219BE3204();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = sub_219BE2E54();
  sub_219BF1404();
  sub_219BE2F64();

  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = sub_219BE2E54();
  v12 = sub_219BE3054();

  return v12;
}

uint64_t sub_218A88E44(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WeatherTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a2 + *(v3 + 28)), *(a2 + *(v3 + 28) + 24));
  return sub_219BEF404();
}

uint64_t sub_218A88EB0()
{
  sub_2186E4594(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218A88F30(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_218A88F68@<X0>(uint64_t *a1@<X8>)
{
  sub_218A8750C();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000002;
  return result;
}

uint64_t sub_218A88FE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for WeatherTagFeedGroupKnobs();
  a2[4] = sub_218A875D8(&qword_280EBFB50, type metadata accessor for WeatherTagFeedGroupKnobs);
  a2[5] = sub_218A875D8(&qword_27CC0D6E8, type metadata accessor for WeatherTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218A897AC(v2 + v4, boxed_opaque_existential_1, type metadata accessor for WeatherTagFeedGroupKnobs);
}

uint64_t sub_218A890AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218A897AC(v2 + *(a2 + 20), v6, type metadata accessor for WeatherTagFeedGroupKnobs);
  v11[15] = 5;
  sub_2189AD5C8();
  v8 = v7;
  v9 = sub_219BEE964();
  (*(*(v8 - 8) + 8))(v6, v8);
  return v9;
}

uint64_t sub_218A891A8()
{
  sub_218A8750C();

  return sub_219BEDCA4();
}

uint64_t sub_218A891D4@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4594(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218A8750C();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A89AC8(inited + 32, sub_2188317B0);
  sub_218A89BC4(0);
  a1[3] = v5;
  a1[4] = sub_218A875D8(&qword_27CC0D6F8, sub_218A89BC4);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218A89358()
{
  sub_218A875D8(&unk_27CC0D6C0, type metadata accessor for WeatherTagFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_218A89548()
{
  if (!qword_27CC0D6D8)
  {
    sub_219BF1904();
    sub_219BF0D34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D6D8);
    }
  }
}

uint64_t sub_218A895B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A8961C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for WeatherTagFeedGroupEmitter() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_218A886D4(a1, a2, v8, a3);
}

uint64_t sub_218A896D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_218A89548();
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_218A897AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = (type metadata accessor for WeatherTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218A8750C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218A89AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A89B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_218A875D8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218A89BF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDCD34();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D6E830])
  {
    v15 = *MEMORY[0x277D2D868];
    v16 = sub_219BDF074();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  else if (v14 == *MEMORY[0x277D6E840] || v14 == *MEMORY[0x277D6E848] || v14 == *MEMORY[0x277D6E838])
  {
    sub_219BDD184();
    sub_218A8CC2C(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F548], v3);
    sub_219BDD094();
    (*(v4 + 8))(v6, v3);
    v20 = sub_219BDCD14();

    (*(v7 + 8))(v9, v24);
    v21 = sub_219BDF074();
    if (v20)
    {
      v22 = MEMORY[0x277D2D820];
    }

    else
    {
      v22 = MEMORY[0x277D2D810];
    }

    return (*(*(v21 - 8) + 104))(a2, *v22, v21);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218A8A03C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_218A8CD00(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_218A8C9A0(v37, sub_21880702C);
  sub_219BE8F44();
  (*(v10 + 32))(v12, v15, v9);
  v19 = (*(v10 + 88))(v12, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v12, v9);
    }
  }

  sub_219BDF234();
  sub_218A8CC2C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_218A8CD00(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_218A8CD00(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_218A8A664(uint64_t a1)
{
  sub_218985EAC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985E18();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A8CAC4(0, &qword_27CC0D700, MEMORY[0x277D6DA48]);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v12 + 8))(v14, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v19 = &v9[*(v20 + 48)];
    return sub_218A8C9A0(v19, type metadata accessor for HistoryFeedGapLocation);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v9[v17], v18);
    v19 = v9;
    return sub_218A8C9A0(v19, type metadata accessor for HistoryFeedGapLocation);
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_219BF07D4();
  sub_218A8A950(a1, v22[1]);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218A8A950(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  sub_218A8CAC4(0, &qword_27CC0D700, MEMORY[0x277D6DA48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v17 - v8;
  v10 = v2[8];
  v17[1] = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v10);
  v11 = [*(a2 + 16) identifier];
  sub_219BF5414();

  v12 = sub_219BF4774();

  (*(v6 + 16))(v9, v19, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  (*(v6 + 32))(v14 + v13, v9, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v2;
  *(v15 + 8) = v12 & 1;

  sub_219BDD154();
}

uint64_t sub_218A8AB54()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985E18();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218985FD4();
      v9 = *(v8 + 48);
      v10 = sub_219BF1584();
      (*(*(v10 - 8) + 8))(&v6[v9], v10);
      v11 = type metadata accessor for HistoryFeedGapLocation;
    }

    else
    {
      *v3 = 0x656E696C64616568;
      v3[1] = 0xE800000000000000;
      (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
      sub_219BDD204();
      (*(v1 + 8))(v3, v0);
      v11 = type metadata accessor for HistoryFeedModel;
    }

    v13 = v11;
    v14 = v6;
  }

  else
  {

    sub_218986048();
    v13 = type metadata accessor for HistoryFeedGapLocation;
    v14 = &v6[*(v12 + 48)];
  }

  return sub_218A8C9A0(v14, v13);
}

uint64_t sub_218A8AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v138 = a5;
  v170 = a4;
  v173 = a3;
  v185 = a1;
  v144 = sub_219BDBD34();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BDF8A4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_218A8CC2C(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v135 = &v120 - v10;
  v146 = sub_219BDF754();
  v137 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v136 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_219BE0444();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A8CC2C(0, &unk_280EE5BE0, sub_218985E18, v8);
  MEMORY[0x28223BE20](v13 - 8);
  v128 = &v120 - v14;
  sub_218985E18();
  v165 = v15;
  v164 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v160 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A8CAC4(0, &qword_280EE3638, MEMORY[0x277D6EC60]);
  v163 = v17;
  v162 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v159 = &v120 - v18;
  sub_218A8CBB8();
  MEMORY[0x28223BE20](v19 - 8);
  v161 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A8CAC4(0, &qword_280EE5970, MEMORY[0x277D6D710]);
  v167 = v21;
  v166 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v145 = &v120 - v22;
  v134 = sub_219BE09E4();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BDF104();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A8CC2C(0, &qword_280EE8330, MEMORY[0x277D2E738], v8);
  MEMORY[0x28223BE20](v25 - 8);
  v156 = &v120 - v26;
  v158 = sub_219BE0724();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v127 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BE1774();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BEFBD4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDF1A4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BDFCE4();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BE0D44();
  v171 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDF0E4();
  v181 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = *(a2 + 16);
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_218A8CC2C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v183 = v36;
  v37 = sub_219BDCD44();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = *(v38 + 80);
  v41 = (v40 + 32) & ~v40;
  v42 = swift_allocObject();
  v184 = xmmword_219C09BA0;
  *(v42 + 16) = xmmword_219C09BA0;
  v43 = *MEMORY[0x277CEAD18];
  v178 = *(v38 + 104);
  v178(v42 + v41, v43, v37);
  v182 = "eedTracker.swift";
  sub_218A8CD00(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  (*(v181 + 8))(v35, v33);
  v44 = v168;
  sub_219BF6834();
  v174 = v39;
  v179 = v40;
  v45 = swift_allocObject();
  *(v45 + 16) = v184;
  v175 = v41;
  v46 = v178;
  v177 = v43;
  v180 = v37;
  v181 = v38 + 104;
  v178(v45 + v41, v43, v37);
  sub_218A8CD00(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v47 = v169;
  sub_219BDCCC4();

  (*(v171 + 8))(v44, v47);
  sub_218A8CAC4(0, &qword_27CC0D700, MEMORY[0x277D6DA48]);
  v49 = v48;
  v50 = sub_218A8CD00(&qword_27CC0D708, type metadata accessor for HistoryFeedModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v169 = v50;
  v171 = v49;
  v52 = v147;
  sub_219BDFCD4();
  v53 = v175;
  v54 = swift_allocObject();
  *(v54 + 16) = v184;
  v55 = v177;
  v46(v54 + v53, v177, v180);
  sub_218A8CD00(&unk_280EE8590, MEMORY[0x277D2E058]);
  v56 = v149;
  sub_219BDCCC4();

  (*(v148 + 8))(v52, v56);
  v57 = v151;
  v58 = v150;
  v59 = v152;
  (*(v151 + 104))(v150, *MEMORY[0x277D329E0], v152);
  v60 = v153;
  v61 = v176;
  sub_219BE02C4();
  (*(v57 + 8))(v58, v59);
  v62 = swift_allocObject();
  v63 = v46;
  *(v62 + 16) = v184;
  v64 = v61;
  v63(v62 + v53, v55, v180);
  sub_218A8CD00(&unk_280EE8850, MEMORY[0x277D2D950]);
  v65 = v155;
  sub_219BDCCC4();

  (*(v154 + 8))(v60, v65);
  v66 = [v64 scoreProfile];
  v67 = v158;
  v68 = v157;
  if (v66)
  {
    v69 = v66;
    if ([v66 hasShadowScores])
    {
      [v69 shadowTabiScore];
      [v69 shadowAgedPersonalizationScore];
      v70 = v121;
      sub_219BE1764();
      v71 = v175;
      v72 = swift_allocObject();
      *(v72 + 16) = v184;
      v178(v72 + v71, v177, v180);
      sub_218A8CD00(&unk_280EE7F40, MEMORY[0x277D2F8F0]);
      v73 = v123;
      sub_219BDCCC4();

      (*(v122 + 8))(v70, v73);
    }

    else
    {
    }
  }

  v74 = v156;
  sub_219BF6824();
  if ((*(v68 + 48))(v74, 1, v67) == 1)
  {
    sub_218A8CC90(v74, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v75 = v127;
    (*(v68 + 32))(v127, v74, v67);
    v76 = v175;
    v77 = swift_allocObject();
    *(v77 + 16) = v184;
    v178(v77 + v76, v177, v180);
    sub_218A8CD00(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v68 + 8))(v75, v67);
  }

  v78 = [v64 sourceChannel];
  if (v78)
  {
    v170 = *(v170 + 32);
    v79 = v129;
    v168 = v78;
    sub_219BE01F4();
    v80 = v175;
    v81 = swift_allocObject();
    *(v81 + 16) = v184;
    v82 = v180;
    v178(v81 + v80, v177, v180);
    sub_218A8CD00(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v83 = v131;
    sub_219BDCCC4();

    (*(v130 + 8))(v79, v83);
    v84 = v132;
    sub_219BE01E4();
    v85 = swift_allocObject();
    *(v85 + 16) = v184;
    v178(v85 + v80, v177, v82);
    sub_218A8CD00(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v86 = v134;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v133 + 8))(v84, v86);
  }

  v87 = v180;
  v88 = v159;
  sub_219BE7594();
  v89 = v160;
  sub_219BE7564();
  v90 = v165;
  sub_219BE5F84();
  v91 = v164;
  (*(v164 + 8))(v89, v90);
  v92 = v161;
  v93 = v163;
  sub_219BEB244();

  (*(v162 + 8))(v88, v93);
  v94 = v166;
  v95 = v167;
  if ((*(v166 + 48))(v92, 1, v167) != 1)
  {
    (*(v94 + 32))(v145, v92, v95);
    v99 = v128;
    sub_219BE7564();
    (*(v91 + 56))(v99, 0, 1, v90);
    v100 = sub_219BE6A34();
    result = sub_218A8CC90(v99, &unk_280EE5BE0, sub_218985E18);
    v98 = v175;
    if (v100 >= 0xFFFFFFFF80000000)
    {
      if (v100 <= 0x7FFFFFFF)
      {
        v101 = v94;
        v102 = v124;
        sub_219BE0434();
        v103 = swift_allocObject();
        *(v103 + 16) = v184;
        v97 = v87;
        v178(v103 + v98, v177, v87);
        sub_218A8CD00(&unk_280EE8400, MEMORY[0x277D2E530]);
        v104 = v126;
        sub_219BDCCC4();

        (*(v125 + 8))(v102, v104);
        (*(v101 + 8))(v145, v95);
        v96 = v146;
        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_218A8C9A0(v92, sub_218A8CBB8);
  v96 = v146;
  v97 = v87;
  v98 = v175;
LABEL_17:
  v105 = v135;
  sub_219BF6804();
  v106 = v137;
  if ((*(v137 + 48))(v105, 1, v96) == 1)
  {
    sub_218A8CC90(v105, &unk_280EE8690, MEMORY[0x277D2DD28]);
    v107 = v177;
    v108 = v97;
    v109 = v178;
  }

  else
  {
    (*(v106 + 32))(v136, v105, v96);
    v110 = swift_allocObject();
    *(v110 + 16) = v184;
    v111 = v110 + v98;
    v112 = v106;
    v107 = v177;
    v113 = v97;
    v109 = v178;
    v178(v111, v177, v113);
    sub_218A8CD00(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();
    v108 = v180;

    (*(v112 + 8))(v136, v96);
    v98 = v175;
  }

  v114 = v139;
  sub_219BDF894();
  v115 = swift_allocObject();
  *(v115 + 16) = v184;
  v109(v115 + v98, v107, v108);
  sub_218A8CD00(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v116 = v141;
  sub_219BDCCC4();

  (*(v140 + 8))(v114, v116);
  sub_219BE0834();
  v117 = v142;
  sub_219BE75A4();
  sub_218A8CD00(&qword_280EE82C0, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v118 = *(v143 + 8);
  v119 = v144;
  v118(v117, v144);
  sub_219BE7574();
  v186[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v186);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v118(v117, v119);
  return sub_218A8C9A0(v186, sub_21880702C);
}

uint64_t sub_218A8C92C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_218A8C9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A8CA00(uint64_t a1)
{
  sub_218A8CAC4(0, &qword_27CC0D700, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_218A8AD90(a1, v6, v1 + v5, v8, v9);
}

void sub_218A8CAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_218A8CD00(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    v8[3] = sub_218A8CD00(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218A8CBB8()
{
  if (!qword_280EE5968)
  {
    sub_218A8CAC4(255, &qword_280EE5970, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5968);
    }
  }
}

void sub_218A8CC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218A8CC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218A8CC2C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218A8CD00(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_218A8CD48()
{
  v1 = OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController____lazy_storage___closeBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController____lazy_storage___closeBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController____lazy_storage___closeBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_doDismiss];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_218A8CF28()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintViewController];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame_];
    sub_219BE8664();
    v16 = sub_219BE7BC4();

    sub_219BF25D4();
    sub_21874E0A8(&qword_280E903F8, MEMORY[0x277D33920]);
    sub_219BF6C74();

    v17 = sub_219BF65B4();
    sub_218725F94();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C146A0;
    *(v18 + 32) = sub_218A8CD48();
    sub_2186C6148(0, &qword_280E8E5D0);
    v19 = sub_219BF5904();

    [v17 setLeftBarButtonItems_];

    v20 = [v1 traitCollection];
    sub_218A8E7B4();

    v21 = *(*&v1[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler] + 40);
    ObjectType = swift_getObjectType();
    return (*(v21 + 72))(ObjectType, v21);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218A8D268(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BED174();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED214();
  v24 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidAppear_, a1 & 1);
  sub_2186C6148(0, &qword_280E8E3B0);
  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  aBlock[4] = sub_218A8ECA8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E0A8(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21878D5C4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v10, v7, v21);
  _Block_release(v21);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
  return (v19)(v17, v24);
}

void sub_218A8D65C(void *a1)
{
  v1 = *MEMORY[0x277D76488];
  v2 = [a1 view];
  UIAccessibilityPostNotification(v1, v2);
}

uint64_t sub_218A8D8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingNotificationsPrewarm();
  MEMORY[0x28223BE20](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = [v7 indexPathsForVisibleItems];

  sub_219BDC104();
  v9 = sub_219BF5924();

  LOBYTE(v8) = sub_2190890C0(a2, v9);

  if ((v8 & 1) == 0)
  {
    sub_219BE8664();
    v10 = sub_219BE7BC4();

    v11 = sub_219BDC094();
    [v10 scrollToItemAtIndexPath:v11 atScrollPosition:2 animated:1];
  }

  v12 = (a1 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_followingNotificationsPrewarm);
  swift_beginAccess();
  sub_218A8EC44(v12, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v6;
    sub_21878D714();
    v15 = *(v14 + 48);
    v6 = (v6 + v15);
    *v12 = v13;
    v16 = sub_219BF3BD4();
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  }

  else
  {
    v17 = sub_219BF3BD4();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  swift_storeEnumTagMultiPayload();
  sub_218A8EBB8(v6);
  return swift_endAccess();
}

uint64_t sub_218A8DB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  sub_21878D5C4(0, &qword_280E8FFE0, MEMORY[0x277D34098], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for FollowingNotificationsPrewarm();
  MEMORY[0x28223BE20](v11);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218944130(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    sub_21878D714();
    v16 = v15;
    v17 = sub_218A8EB04(v13 + *(v15 + 48), v10);
    MEMORY[0x28223BE20](v17);
    *&v21[-16] = a1;
    *&v21[-8] = a2;
    v18 = sub_218860300(sub_218A8EB98, &v21[-32], v14);

    v19 = *(v16 + 48);
    *a3 = v18;
    sub_218A8EB04(v10, a3 + v19);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_218944130(v4, a3);
    return sub_218A8EBB8(v13);
  }
}

void sub_218A8DD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 56))(ObjectType, v10);
    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    (*(v12 + 64))(v13, v12);
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E978])
    {
      if (v9 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v9 != *MEMORY[0x277D6E958])
      {
        if (v9 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v14 = sub_219BE7BC4();

          sub_2186C6148(0, &qword_280E8E4C0);
          sub_219BE6FB4();
        }

        else if (v9 != *MEMORY[0x277D6E960] && v9 != *MEMORY[0x277D6E968] && v9 != *MEMORY[0x277D6E938] && v9 != *MEMORY[0x277D6E940])
        {
          sub_219BF7514();
          __break(1u);
        }
      }
    }
  }
}

void sub_218A8E004(void *a1)
{
  v2 = v1;
  v4 = [v1 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    sub_219BF6C44();
  }

  v8 = *&v2[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintReadableContentGuide];
  *&v2[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintReadableContentGuide] = a1;
  v7 = a1;
}

uint64_t sub_218A8E0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5880](a1, a2, a3, a4, ObjectType, a6);
}

uint64_t sub_218A8E148()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 88), *(*(v0 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 112));
  v1 = off_282A46F80;
  type metadata accessor for FollowingNotificationsTracker();
  return v1();
}

uint64_t sub_218A8E234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v4 = sub_219BE5C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 24);
  v10 = sub_218A8E478();
  v12 = v11;
  v26 = v9;
  v13 = [*(v9 + 16) identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {
  }

  else
  {
    v18 = sub_219BF78F4();

    if ((v18 & 1) == 0)
    {
      *v27 = v8;
    }
  }

  v20 = *(v8 + 16);
  (*(v5 + 16))(v7, v25, v4);
  v21 = (*(v5 + 88))(v7, v4);
  v22 = 1;
  if (v21 != *MEMORY[0x277D6D338])
  {
    if (v21 == *MEMORY[0x277D6D340])
    {
      v22 = 2;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v22 = 3;
    }
  }

  v23 = sub_218A8E700(v22);
  type metadata accessor for FollowingTagModel();
  result = swift_allocObject();
  *(result + 16) = v20;
  *(result + 24) = v23;
  *(result + 32) = 1;
  *v27 = result;
  return result;
}

uint64_t sub_218A8E478()
{
  v1 = v0;
  v2 = 4;
  for (i = &unk_282A22200; ; i += 16)
  {
    sub_218A26508(v1, v30);
    if (v31)
    {
      if (v31 == 1)
      {
        sub_2186CB1F0(v30, v27);
        v4 = v28;
        v5 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v6 = *(v5 + 16);
        v7 = *(v6 + 8);

        v7(v4, v6);
        __swift_destroy_boxed_opaque_existential_1(v27);
      }

      else
      {
      }
    }

    else
    {
      v8 = *(*&v30[0] + 24);
      v27[0] = 0;
      v27[1] = 0xE000000000000000;

      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v9 = [*(v8 + 16) identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      MEMORY[0x21CECC330](v10, v12);
    }

    v13 = sub_219BF5624();

    if (v13)
    {
      break;
    }

    if (!--v2)
    {
      swift_arrayDestroy();
      return sub_219A3D0C4();
    }
  }

  swift_arrayDestroy();
  v15 = sub_219A3D0C4();
  v17 = v16;
  v18 = sub_219BF5554();

  v19 = sub_219BC923C(v18, v15, v17);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = MEMORY[0x21CECC290](v19, v21, v23, v25);

  return v26;
}

uint64_t sub_218A8E700(char a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  if (a1 == 3)
  {
    v3 = *(v2 + 25);
  }

  v6 = *(v2 + 26);
  v7 = *(v2 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v3;
  *(v8 + 26) = v6;
  *(v8 + 32) = v7;

  swift_unknownObjectRetain();
  return v8;
}

void sub_218A8E7B4()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_styler);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_styler), *(v0 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_styler + 24));
  v2 = sub_219BF65B4();
  sub_21968E344(v2);

  v3 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_219BE8664();
  v5 = sub_219BE7BC4();

  v4 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 56), *(*v3 + 80)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
  [v5 setBackgroundColor_];
}

uint64_t sub_218A8E8A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE5C64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FollowingNotificationsPrewarm();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-v13];
  v15 = *(*(v2 + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  (*(v15 + 40))(a1, a2, ObjectType, v15);
  v17 = OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_followingNotificationsPrewarm;
  swift_beginAccess();
  sub_218944130(v2 + v17, v12);
  sub_219BE6154();
  sub_218A8DB30(a1, v8, v14);
  (*(v6 + 8))(v8, v5);
  sub_218944194(v12);
  swift_beginAccess();
  sub_218A8EAA0(v14, v2 + v17);
  return swift_endAccess();
}

uint64_t sub_218A8EAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingNotificationsPrewarm();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A8EB04(uint64_t a1, uint64_t a2)
{
  sub_21878D5C4(0, &qword_280E8FFE0, MEMORY[0x277D34098], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A8EBB8(uint64_t a1)
{
  sub_21878D5C4(0, &qword_280E8FFE0, MEMORY[0x277D34098], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A8EC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingNotificationsPrewarm();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A8ECB0(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = 0;
  v15 = MEMORY[0x277D84F90];
  v6 = result + 64;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 64);
  v10 = (v7 + 63) >> 6;
  v13 = result;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {

      return v15;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
  }

  while (!v9);
  while (1)
  {
    v14 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    v12 = sub_218A905B0(&v14, a2);
    if (v2)
    {
      break;
    }

    v9 &= v9 - 1;
    if (v12)
    {
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      v4 = v13;
      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v5;
  }
}

uint64_t sub_218A8EE44(void *a1, unint64_t a2)
{
  v3 = v2;
  if (qword_280E8D8A0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_219BF6214();
    sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09EC0;
    v6 = v3[11];
    v42 = a2;
    if (v6 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v44.a = v7;
    v8 = sub_219BF7894();
    v10 = v9;
    v11 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v12 = sub_2186FC3BC();
    *(v5 + 64) = v12;
    *(v5 + 32) = v8;
    *(v5 + 40) = v10;
    v13 = _s4ItemCMa();
    v14 = MEMORY[0x21CECC6D0](v6, v13);
    *(v5 + 96) = v11;
    *(v5 + 104) = v12;
    *(v5 + 72) = v14;
    *(v5 + 80) = v15;
    sub_219BE5314();

    v16 = v3[3];
    v45 = *(v3[2] + 24);
    v46 = *(v16 + 24);
    *&v44.a = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();

    sub_2191ED74C(v45);

    sub_2191ED74C(v17);
    sub_218A98808();
    swift_arrayDestroy();
    if (!(*&v44.a >> 62))
    {
      v3 = *((*&v44.a & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        break;
      }

      goto LABEL_6;
    }

    v3 = sub_219BF7214();
    if (!v3)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a2 = *&v44.a & 0xC000000000000001;
    while (a2)
    {
      v19 = MEMORY[0x21CECE0F0](v18, *&v44.a);
      v20 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_14;
      }

LABEL_10:
      [*(v19 + 16) setHidden_];

      ++v18;
      if (v20 == v3)
      {
        goto LABEL_19;
      }
    }

    if (v18 >= *((*&v44.a & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v19 = *(*&v44.a + 8 * v18 + 32);

    v20 = (v18 + 1);
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_19:

  v21 = sub_219BF59A4();
  v22 = v21;
  if (v21 >> 62)
  {
    goto LABEL_43;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v42;
  if (v23)
  {
LABEL_21:
    v25 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x21CECE0F0](v25, v22);
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v28 = *(v22 + 8 * v25 + 32);

        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v23 = sub_219BF7214();
          v24 = v42;
          if (!v23)
          {
          }

          goto LABEL_21;
        }
      }

      v30 = *(v28 + 80);
      if (v30 >= 2 && v30 == 2)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = 1.0;
      }

      [*(v28 + 88) setAlpha_];
      v33 = (v28 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame);
      if ((*(v28 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 32) & 1) == 0 || (v33 = (v28 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame), v34 = 0.0, v35 = 0.0, v36 = 0.0, v37 = 0.0, (*(v28 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame + 32) & 1) == 0))
      {
        v36 = v33[2];
        v37 = v33[3];
        v34 = *v33;
        v35 = v33[1];
      }

      [*(v28 + 88) setFrame_];
      v38 = *(v28 + 88);
      v39 = 0uLL;
      if (*(v28 + 80) == 2)
      {
        v26 = xmmword_219C18010;
        v27 = xmmword_219C18000;
        if (*(v28 + 48))
        {
          v40 = *(v28 + 88);
          CGAffineTransformMakeScale(&v44, 0.8, 0.8);
          v38 = v40;
          v24 = v42;
          v26 = *&v44.a;
          v27 = *&v44.c;
          v39 = *&v44.tx;
        }
      }

      else
      {
        v26 = xmmword_219C18010;
        v27 = xmmword_219C18000;
      }

      *&v44.a = v26;
      *&v44.c = v27;
      *&v44.tx = v39;
      [v38 setTransform_];
      [a1 insertSubview:*(v28 + 88) belowSubview:v24];

      ++v25;
    }

    while (v29 != v23);
  }
}

uint64_t sub_218A8F318(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_218A8F36C()
{
  v1 = *(*(v0 + 16) + 24);
  v13 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();

  sub_2191ED74C(v1);

  sub_2191ED74C(v2);
  sub_218A98808();
  swift_arrayDestroy();
  if (v13 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v4 = 0;
    while ((v13 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v4, v13);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [*(v5 + 16) setHidden_];

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v13 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v8 = *(v0 + 88);
  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_16:
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CECE0F0](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          result = sub_219BF7214();
          v9 = result;
          if (!result)
          {
            return result;
          }

          goto LABEL_16;
        }
      }

      [*(v11 + 88) removeFromSuperview];

      ++v10;
    }

    while (v12 != v9);
  }

  return result;
}

uint64_t sub_218A8F584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v8 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v8;
  *(v3 + 64) = *(a3 + 32);
  *(v3 + 80) = *(a3 + 48);

  v9 = sub_218A8F66C(a1, a3, a2);

  if (v4)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 88) = v9;
  }

  return v3;
}

uint64_t sub_218A8F66C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v8 = sub_218A9C0B4(v7, a2, a1, a3);

  if (v3)
  {
    return result;
  }

  v31 = v8;

  v11 = sub_218A8ECB0(v10, &v31);
  if (qword_280E8D8A0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_219BF6214();
    sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    v13 = _s4ItemCMa_0();
    v26 = v11;
    v14 = MEMORY[0x21CECC6D0](v11, v13);
    v16 = v15;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2186FC3BC();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = v26;
    sub_219BE5314();

    if (v26 >> 62)
    {
      break;
    }

    v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_5:
    v24 = a1;
    v25 = a2;
    a1 = a3;
    v30 = MEMORY[0x277D84F90];
    v11 = &v30;
    result = sub_219BF73F4();
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    while (1)
    {
      a3 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CECE0F0](v19, v17);
        v21 = a1;
        v22 = v25;
      }

      else
      {
        if (v19 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v20 = v17[v19 + 4];

        v22 = v25;
        v21 = a1;
      }

      v28 = v20;
      sub_218A908F8(&v28, v22, v24, v21, &v27, &v29);

      sub_219BF73D4();
      a2 = *(v30 + 16);
      sub_219BF7414();
      v17 = v26;
      sub_219BF7424();
      v11 = &v30;
      sub_219BF73E4();
      ++v19;
      if (a3 == v18)
      {

        v23 = v30;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v18 = sub_219BF7214();
  if (v18)
  {
    goto LABEL_5;
  }

LABEL_18:

  v23 = MEMORY[0x277D84F90];
LABEL_19:
  sub_2191ED720(v23);
  return v31;
}

uint64_t sub_218A8F9BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v106 = a5;
  v7 = v6;
  *&v108 = a4;
  v110 = a2;
  v97 = a6;
  sub_218A9DB94();
  *&v105 = v10;
  v102 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v98 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_218A9DCC0(0, &qword_27CC0D738, sub_218A9DB94, MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v109 = &v95 - v17;
  v18 = sub_219BDC104();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  sub_218A9DCC0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], v12);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v99 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v103 = &v95 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v95 - v30;
  MEMORY[0x28223BE20](v29);
  v120 = &v95 - v32;
  v33 = *(*a1 + 24);
  v107 = *a1;
  v34 = [*(v107 + 40) indexPath];
  sub_219BDC0B4();

  v35 = *(a3 + 32);
  v104 = v33;
  if (v33 > 1)
  {
    if ((v33 - 2) >= 2)
    {
      v36 = v120;
      if (v33 != 4)
      {
        v100 = v35;
        (*(v19 + 32))(v120, v23, v18);
        (*(v19 + 56))(v36, 0, 1, v18);
        goto LABEL_14;
      }

      v96 = v16;
      v37 = v108;
      v38 = v35;
      sub_218A92928(v23, v35, *(v108 + 32), v120);
      if (!v6)
      {
        v100 = v38;
        (*(v19 + 8))(v23, v18);
        v16 = v96;
        goto LABEL_16;
      }
    }

    else
    {
      v100 = v35;
      v36 = v120;
      sub_218A91D6C(v23, v120);
      if (!v6)
      {
        (*(v19 + 8))(v23, v18);
LABEL_14:
        v37 = v108;
        goto LABEL_16;
      }
    }

LABEL_12:
    result = (*(v19 + 8))(v23, v18);
LABEL_27:
    *v106 = v7;
    return result;
  }

  v100 = v35;
  v36 = v120;
  if (v33)
  {
    sub_218A968FC(v23, v120);
  }

  else
  {
    sub_218A95188(v23, v120);
  }

  v7 = v6;
  v37 = v108;
  if (v6)
  {
    goto LABEL_12;
  }

  (*(v19 + 8))(v23, v18);
LABEL_16:
  sub_218A9DD24(v36, v31, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  v40 = 1;
  if ((*(v19 + 48))(v31, 1, v18) != 1)
  {
    v41 = v7;
    v42 = v18;
    v43 = v101;
    (*(v19 + 32))(v101, v31, v42);
    v44 = v109;
    (*(v19 + 16))(v109, v43, v42);
    v45 = sub_2197966C4();
    v47 = v46;
    v48 = v43;
    v18 = v42;
    v7 = v41;
    v37 = v108;
    (*(v19 + 8))(v48, v18);
    v40 = 0;
    v49 = (v44 + *(v105 + 52));
    *v49 = v45;
    v49[1] = v47;
  }

  v50 = v102;
  v51 = 1;
  v52 = v109;
  v53 = v40;
  v54 = v105;
  (*(v102 + 56))(v109, v53, 1, v105);
  sub_218A9DD24(v52, v16, &qword_27CC0D738, sub_218A9DB94);
  if ((*(v50 + 48))(v16, 1, v54) == 1)
  {
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = &selRef_boldSystemFontOfSize_;
  }

  else
  {
    v58 = v98;
    sub_218A9DEA8(v16, v98);
    v59 = *(v37 + 16);
    if (*(v59 + 16) && (v60 = sub_21931EC7C(v58), (v61 & 1) != 0))
    {
      [*(*(v59 + 56) + 8 * v60) frame];
      v51 = 0;
      *(&v63 + 1) = v62;
      v105 = v63;
      *(&v65 + 1) = v64;
      v66 = &v122;
    }

    else
    {
      v65 = 0uLL;
      v108 = 0u;
      v66 = &v121;
    }

    *(v66 - 16) = v65;
    v57 = &selRef_boldSystemFontOfSize_;
    sub_218A9DF0C(v58, sub_218A9DB94);
    v55 = v108;
    v56 = v105;
  }

  v117 = v55;
  v118 = v56;
  v119 = v51;
  v67 = v107;
  v68 = v57;
  v69 = [*(v107 + 40) v57[160]];
  v70 = v103;
  sub_219BDC0B4();

  *&v108 = *(v19 + 56);
  (v108)(v70, 0, 1, v18);
  v71 = *(v67 + 64);
  v114 = *(v67 + 48);
  v115 = v71;
  v116 = 0;
  v72 = v104;
  sub_218A99A50(v104, v70, v120, &v114, &v117, v100, v112);
  sub_218A9DDA4(v70, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  if (v7)
  {
    sub_218A9DDA4(v109, &qword_27CC0D738, sub_218A9DB94);
    result = sub_218A9DDA4(v120, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    goto LABEL_27;
  }

  v73 = *(v67 + 32);
  v74 = *(v67 + 40);
  v75 = v73;
  v76 = [v74 v68 + 3960];
  v77 = v101;
  sub_219BDC0B4();

  sub_218A9DD24(v120, v99, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  _s4ItemCMa();
  v78 = swift_allocObject();
  v79 = v112[3];
  *(v78 + 48) = v112[2];
  *(v78 + 64) = v79;
  *(v78 + 80) = v113;
  v80 = v112[1];
  *(v78 + 16) = v112[0];
  *(v78 + 32) = v80;
  *(v78 + 81) = v72;
  *(v78 + 88) = v75;
  v81 = OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath;
  (*(v19 + 32))(v78 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath, v77, v18);
  (v108)(v78 + v81, 0, 1, v18);
  sub_218A9DE14(v99, v78 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath);
  v82 = v78 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame;
  v83 = v114;
  v84 = v115;
  *(v82 + 32) = v116;
  *v82 = v83;
  *(v82 + 16) = v84;
  v85 = v78 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame;
  v86 = v118;
  *v85 = v117;
  *(v85 + 16) = v86;
  *(v85 + 32) = v119;
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  v110 = qword_280F61768;
  sub_219BF6214();
  sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_219C09EC0;
  v111 = v78;
  sub_218A9DF6C(&qword_27CC0C858, _s4ItemCMa);
  v88 = sub_219BF7894();
  v90 = v89;
  v91 = MEMORY[0x277D837D0];
  *(v87 + 56) = MEMORY[0x277D837D0];
  v92 = sub_2186FC3BC();
  *(v87 + 64) = v92;
  *(v87 + 32) = v88;
  *(v87 + 40) = v90;
  v111 = v107;
  _s4ItemCMa_0();
  sub_218A9DF6C(&qword_27CC0D740, _s4ItemCMa_0);
  v93 = sub_219BF7894();
  *(v87 + 96) = v91;
  *(v87 + 104) = v92;
  *(v87 + 72) = v93;
  *(v87 + 80) = v94;
  sub_219BE5314();

  sub_218A9DDA4(v109, &qword_27CC0D738, sub_218A9DB94);
  result = sub_218A9DDA4(v120, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  *v97 = v78;
  return result;
}

uint64_t sub_218A905B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 >> 62)
  {
LABEL_69:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0xED0000676E696665;
    v7 = 0xEC000000746E6574;
    v31 = v3 & 0xC000000000000001;
    v29 = v3;
    v30 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = v4;
    do
    {
      if (v31)
      {
        v8 = MEMORY[0x21CECE0F0](v5, v3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_64:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_69;
        }

        v8 = *(v3 + 8 * v5 + 32);

        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_64;
        }
      }

      if (*(v8 + 80) < 3u && CGRectEqualToRect(*(v8 + 16), *(v2 + 48)))
      {
        v10 = *(v8 + 81);
        if (v10 > 2)
        {
          v16 = 0xE900000000000072;
          if (v10 == 4)
          {
            v17 = 0x6F74617261706573;
          }

          else
          {
            v17 = 0x697242796C696164;
          }

          if (v10 != 4)
          {
            v16 = v6;
          }

          if (v10 == 3)
          {
            v13 = 0x7265746F6F66;
          }

          else
          {
            v13 = v17;
          }

          if (v10 == 3)
          {
            v14 = 0xE600000000000000;
          }

          else
          {
            v14 = v16;
          }

          v15 = v7;
        }

        else
        {
          if (v10 == 1)
          {
            v11 = 0x6C65436B63617274;
          }

          else
          {
            v11 = 0x726564616568;
          }

          if (v10 == 1)
          {
            v12 = 0xE90000000000006CLL;
          }

          else
          {
            v12 = 0xE600000000000000;
          }

          if (*(v8 + 81))
          {
            v13 = v11;
          }

          else
          {
            v13 = 0x6E6F436B63617274;
          }

          if (*(v8 + 81))
          {
            v14 = v12;
          }

          else
          {
            v14 = v7;
          }

          v15 = v7;
        }

        v18 = *(v2 + 24);
        v19 = 0xE900000000000072;
        if (v18 == 4)
        {
          v20 = 0x6F74617261706573;
        }

        else
        {
          v20 = 0x697242796C696164;
        }

        v21 = 0xE90000000000006CLL;
        v22 = v6;
        if (v18 != 4)
        {
          v19 = v6;
        }

        if (v18 == 3)
        {
          v20 = 0x7265746F6F66;
          v19 = 0xE600000000000000;
        }

        if (v18 == 1)
        {
          v23 = 0x6C65436B63617274;
        }

        else
        {
          v23 = 0x726564616568;
        }

        if (v18 != 1)
        {
          v21 = 0xE600000000000000;
        }

        if (!*(v2 + 24))
        {
          v23 = 0x6E6F436B63617274;
          v21 = v15;
        }

        if (*(v2 + 24) <= 2u)
        {
          v24 = v23;
        }

        else
        {
          v24 = v20;
        }

        if (*(v2 + 24) <= 2u)
        {
          v25 = v21;
        }

        else
        {
          v25 = v19;
        }

        v7 = v15;
        if (v13 == v24 && v14 == v25)
        {

LABEL_67:

          return 0;
        }

        v26 = sub_219BF78F4();

        v6 = v22;
        v4 = v28;
        v3 = v29;
        if (v26)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v9 != v4);
  }

  return 1;
}

uint64_t sub_218A908F8@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *&v132 = a5;
  v7 = v6;
  v135 = a2;
  v119 = a6;
  sub_218A9DB94();
  v126 = v11;
  v125 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v128 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_218A9DCC0(0, &qword_27CC0D738, sub_218A9DB94, MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v124 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v127 = &v117 - v17;
  v134 = sub_219BDC104();
  v18 = *(v134 - 8);
  v19 = MEMORY[0x28223BE20](v134);
  v118 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  *&v129 = &v117 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v120 = &v117 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v117 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v117 - v28;
  sub_218A9DCC0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], v13);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v117 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v130 = &v117 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v123 = &v117 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v117 - v38;
  MEMORY[0x28223BE20](v37);
  v136 = &v117 - v40;
  v41 = *a1;
  LODWORD(a1) = *(*a1 + 24);
  v133 = v41;
  v42 = [*(v41 + 40) indexPath];
  sub_219BDC0B4();

  v43 = a1;
  v121 = a3;
  v44 = *(a3 + 32);
  v45 = *(a4 + 32);
  LODWORD(v131) = v43;
  if (v43 <= 1)
  {
    v122 = v44;
    if (v43)
    {
      sub_218A97484(v29, v136);
    }

    else
    {
      sub_218A95EBC(v29, v136);
    }

LABEL_10:
    v7 = v6;
    v46 = v18;
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_12:
    v49 = v29;
    v50 = v134;
    (*(v46 + 8))(v49, v134);
    goto LABEL_14;
  }

  if ((v43 - 2) < 2)
  {
    v122 = v44;
    sub_218A923B0(v29, v136);
    goto LABEL_10;
  }

  v46 = v18;
  if (v43 == 4)
  {
    sub_218A93FCC(v29, v44, v45, v136);
    if (v6)
    {
LABEL_11:
      v47 = v132;
      result = (*(v46 + 8))(v29, v134);
LABEL_41:
      *v47 = v7;
      return result;
    }

    v122 = v44;
    goto LABEL_12;
  }

  v122 = v44;
  v51 = v136;
  v52 = v29;
  v50 = v134;
  (*(v18 + 32))(v136, v52, v134);
  (*(v18 + 56))(v51, 0, 1, v50);
LABEL_14:
  v53 = [*(v133 + 40) indexPath];
  sub_219BDC0B4();

  if (v131 <= 1)
  {
    if (!v131)
    {
      sub_218A95EBC(v27, v39);
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    sub_218A97484(v27, v39);
    if (v7)
    {
      goto LABEL_25;
    }

LABEL_23:
    (*(v46 + 8))(v27, v50);
    goto LABEL_27;
  }

  if ((v131 - 2) < 2)
  {
    sub_218A923B0(v27, v39);
    if (!v7)
    {
      goto LABEL_23;
    }

LABEL_25:
    v47 = v132;
    (*(v46 + 8))(v27, v50);
    result = sub_218A9DDA4(v136, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    goto LABEL_41;
  }

  if (v131 == 4)
  {
    sub_218A93FCC(v27, v122, v45, v39);
    if (v7)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  (*(v46 + 32))(v39, v27, v50);
  (*(v46 + 56))(v39, 0, 1, v50);
LABEL_27:
  v54 = v123;
  sub_218A9DD24(v39, v123, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  if ((*(v46 + 48))(v54, 1, v50) == 1)
  {
    sub_218A9DDA4(v39, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v55 = 1;
    v56 = v130;
    v57 = v127;
    v58 = v126;
  }

  else
  {
    v59 = v120;
    (*(v46 + 32))(v120, v54, v50);
    v60 = v127;
    (*(v46 + 16))(v127, v59, v50);
    v61 = sub_2197966C4();
    v63 = v62;
    v64 = v50;
    v57 = v60;
    (*(v46 + 8))(v59, v64);
    sub_218A9DDA4(v39, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v55 = 0;
    v58 = v126;
    v65 = &v60[*(v126 + 52)];
    *v65 = v61;
    v65[1] = v63;
    v56 = v130;
  }

  v66 = v125;
  (*(v125 + 56))(v57, v55, 1, v58);
  v67 = v124;
  sub_218A9DD24(v57, v124, &qword_27CC0D738, sub_218A9DB94);
  v68 = (*(v66 + 48))(v67, 1, v58);
  v69 = v128;
  if (v68 != 1)
  {
    sub_218A9DEA8(v67, v128);
    v70 = *(v121 + 16);
    if (*(v70 + 16))
    {
      v71 = sub_21931EC7C(v69);
      v72 = v133;
      if (v73)
      {
        v74 = *(*(v70 + 56) + 8 * v71);
        sub_218A9DF0C(v69, sub_218A9DB94);
        sub_218A9DDA4(v57, &qword_27CC0D738, sub_218A9DB94);
      }

      else
      {
        sub_218A9DF0C(v69, sub_218A9DB94);
        sub_218A9DDA4(v57, &qword_27CC0D738, sub_218A9DB94);
        v74 = 0;
      }

      goto LABEL_36;
    }

    sub_218A9DF0C(v69, sub_218A9DB94);
  }

  sub_218A9DDA4(v57, &qword_27CC0D738, sub_218A9DB94);
  v74 = 0;
  v72 = v133;
LABEL_36:
  v75 = [*(v72 + 40) indexPath];
  v76 = v129;
  sub_219BDC0B4();

  v77 = v134;
  v135 = *(v46 + 32);
  v135(v56, v76, v134);
  v130 = *(v46 + 56);
  (v130)(v56, 0, 1, v77);
  if (v74)
  {
    [v74 frame];
    *(&v79 + 1) = v78;
    *(&v81 + 1) = v80;
  }

  else
  {
    v79 = 0uLL;
    v81 = 0uLL;
  }

  v82 = v136;
  v139[0] = v79;
  v139[1] = v81;
  v140 = v74 == 0;
  v83 = *(v72 + 64);
  v141 = *(v72 + 48);
  v142 = v83;
  v143 = 0;
  sub_218A99A50(v131, v136, v56, v139, &v141, v122, v137);
  if (v7)
  {

    v84 = MEMORY[0x277CC9AF8];
    sub_218A9DDA4(v56, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    result = sub_218A9DDA4(v82, &unk_280EE9BB0, v84);
    v47 = v132;
    goto LABEL_41;
  }

  v85 = v56;
  v86 = v82;
  v87 = MEMORY[0x277CC9AF8];
  sub_218A9DDA4(v85, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  v88 = *(v72 + 32);
  v89 = v86;
  v90 = v117;
  sub_218A9DD24(v89, v117, &unk_280EE9BB0, v87);
  v91 = *(v72 + 40);
  v128 = v88;
  v92 = [v91 indexPath];
  v93 = v118;
  sub_219BDC0B4();

  if (v74)
  {
    [v74 frame];
    *(&v95 + 1) = v94;
    v129 = v95;
    *(&v97 + 1) = v96;
    v98 = &v146;
  }

  else
  {
    v97 = 0uLL;
    v132 = 0u;
    v98 = &v144;
  }

  *(v98 - 16) = v97;
  v99 = v74 == 0;
  _s4ItemCMa();
  v100 = swift_allocObject();
  v101 = v137[3];
  *(v100 + 48) = v137[2];
  *(v100 + 64) = v101;
  *(v100 + 80) = v138;
  v102 = v137[1];
  *(v100 + 16) = v137[0];
  *(v100 + 32) = v102;
  *(v100 + 81) = v131;
  *(v100 + 88) = v128;
  sub_218A9DE14(v90, v100 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath);
  v131 = v74;
  v103 = OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath;
  v104 = v134;
  v135(v100 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath, v93, v134);
  (v130)(v100 + v103, 0, 1, v104);
  v105 = v100 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame;
  *(v105 + 32) = v99;
  v106 = v129;
  *v105 = v132;
  *(v105 + 16) = v106;
  v107 = v100 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame;
  *(v107 + 32) = v143;
  v108 = v142;
  *v107 = v141;
  *(v107 + 16) = v108;
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_219C09EC0;
  v145 = v100;
  sub_218A9DF6C(&qword_27CC0C858, _s4ItemCMa);
  v110 = sub_219BF7894();
  v112 = v111;
  v113 = MEMORY[0x277D837D0];
  *(v109 + 56) = MEMORY[0x277D837D0];
  v114 = sub_2186FC3BC();
  *(v109 + 64) = v114;
  *(v109 + 32) = v110;
  *(v109 + 40) = v112;
  v145 = v133;
  _s4ItemCMa_0();
  sub_218A9DF6C(&qword_27CC0D740, _s4ItemCMa_0);
  v115 = sub_219BF7894();
  *(v109 + 96) = v113;
  *(v109 + 104) = v114;
  *(v109 + 72) = v115;
  *(v109 + 80) = v116;
  sub_219BE5314();

  result = sub_218A9DDA4(v136, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  *v119 = v100;
  return result;
}

id sub_218A91854(uint64_t a1)
{
  v1 = *(a1 + 88);
  [v1 setAlpha_];
  CGAffineTransformMakeScale(&v3, 0.8, 0.8);
  return [v1 setTransform_];
}

id sub_218A918C8(uint64_t a1, char a2)
{
  v3 = *(a1 + 88);
  result = [v3 setAlpha_];
  if (a2)
  {
    CGAffineTransformMakeScale(&v5, 0.8, 0.8);
    return [v3 setTransform_];
  }

  return result;
}

void sub_218A91944(uint64_t a1, char a2, uint64_t a3, void (*a4)(id, double))
{
  if (!a1)
  {
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v4;
    v26 = v5;
    if (a2)
    {
      v13 = *(a3 + 88);
      *&v20.a = 0x3FF0000000000000uLL;
      v20.c = 0.0;
      v20.d = 1.0;
      *&v20.tx = 0uLL;
      [v13 setTransform_];
    }

    v14 = *(a3 + 88);
    [v14 setFrame_];
    if (a2)
    {
      CGAffineTransformMakeScale(&v20, 0.92, 0.92);
      [v14 setTransform_];
    }

    v15 = objc_allocWithZone(MEMORY[0x277D753D0]);

    v16 = [v15 initWithControlPoint1:0.33 controlPoint2:{0.0, 0.83, 1.0}];
    v17 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v16 timingParameters:0.2];

    *&v20.tx = sub_218A9DB3C;
    *&v20.ty = a3;
    *&v20.a = MEMORY[0x277D85DD0];
    *&v20.b = 1107296256;
    *&v20.c = sub_218793E0C;
    *&v20.d = &block_descriptor_73;
    v18 = _Block_copy(&v20);

    [v17 addAnimations_];
    _Block_release(v18);

    if (a2)
    {

      v19 = sub_2190380A8(sub_218A9DB50, a3);

      a4(v19, 0.15);
    }

    a4(v17, 0.15);
  }
}

uint64_t sub_218A91BB8()
{

  return swift_deallocClassInstance();
}

uint64_t _s7ContextOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t _s4PlanC9AnimationOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s4PlanC9AnimationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_218A91D18(uint64_t a1)
{
  if (*(a1 + 64) <= 2u)
  {
    return *(a1 + 64);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_218A91D30(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_218A91D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  if (sub_219BDC0D4() > 1)
  {
    _s7ContextO6ErrorsOMa();
    sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
    swift_allocError();
    v15 = v14;
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000032, 0x8000000219CE4D80);
    sub_218A9DF6C(&unk_27CC1CBB0, MEMORY[0x277CC9AF8]);
    v16 = sub_219BF7894();
    MEMORY[0x21CECC330](v16);

    v17 = v59;
    *v15 = v58;
    v15[1] = v17;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v57 = a2;
  v60 = v3;
  v20 = *v2;
  v19 = *(v2 + 8);
  v21 = *(v2 + 16);
  v22 = *(v2 + 48);
  if (!(v22 >> 6))
  {
    if (v20)
    {
LABEL_20:
      v35 = v57;
      (*(v8 + 16))(v57, a1, v7);
      v36 = *(v8 + 56);
      v37 = v35;
LABEL_21:
      v38 = 0;
      return v36(v37, v38, 1, v7);
    }

    v26 = *(v2 + 8);
    v27 = sub_219BDC0F4();
    v55 = v26;
    MEMORY[0x21CEB2E60](v21, v26);
    v28 = sub_219BDC0F4();
    v29 = *(v8 + 8);
    v29(v13, v7);
    if (v27 != v28)
    {
      v30 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v21, v55);
      v31 = sub_219BDC0F4();
      v29(v13, v7);
      if (v31 < v30)
      {
        v32 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        v25 = v57;
        if (!__OFSUB__(result, 1))
        {
          MEMORY[0x21CEB2E60](v32, result - 1);
          return (*(v8 + 56))(v25, 0, 1, v7);
        }

        goto LABEL_42;
      }

LABEL_38:
      v25 = v57;
      (*(v8 + 16))(v57, a1, v7);
      return (*(v8 + 56))(v25, 0, 1, v7);
    }

    goto LABEL_31;
  }

  v24 = *(v2 + 24);
  v23 = v4[4];
  if (v22 >> 6 == 1)
  {
    v56 = v4[4];
    if (v20)
    {
      goto LABEL_6;
    }

    v54 = v24;
    v39 = v19;
    v40 = sub_219BDC0F4();
    v55 = v39;
    MEMORY[0x21CEB2E60](v21, v39);
    v41 = sub_219BDC0F4();
    v53 = *(v8 + 8);
    v53(v13, v7);
    if (v40 != v41)
    {
      v42 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v21, v55);
      v43 = sub_219BDC0F4();
      v53(v13, v7);
      v44 = v43 < v42;
      v24 = v54;
      if (v44)
      {
        v45 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        if (__OFSUB__(result, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        MEMORY[0x21CEB2E60](v45, result - 1);
        if (v54 != 1)
        {
          goto LABEL_8;
        }

LABEL_7:
        if (sub_219BDC0F4() < v56)
        {
          goto LABEL_8;
        }

        v46 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        if (!__OFADD__(result, 1))
        {
          v25 = v57;
          MEMORY[0x21CEB2E60](v46, result + 1);
          (*(v8 + 8))(v11, v7);
          return (*(v8 + 56))(v25, 0, 1, v7);
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_6:
      (*(v8 + 16))(v11, a1, v7);
      if (v24 != 1)
      {
LABEL_8:
        v25 = v57;
        (*(v8 + 32))(v57, v11, v7);
        return (*(v8 + 56))(v25, 0, 1, v7);
      }

      goto LABEL_7;
    }

    goto LABEL_31;
  }

  if ((v22 & 1) == 0)
  {
    v34 = v4[5];
    if (v20)
    {
      if (v23 != 1)
      {
        goto LABEL_20;
      }

LABEL_33:
      v50 = v57;
      sub_219985040(v20, v19, v23, v34, v57);
      v36 = *(v8 + 56);
      v37 = v50;
      goto LABEL_21;
    }

    v54 = v24;
    v47 = v19;
    v48 = v23;
    v49 = sub_219BDC0F4();
    v23 = v48;
    v19 = v47;
    if (v49 != v47)
    {
      goto LABEL_33;
    }

LABEL_31:
    v36 = *(v8 + 56);
    v37 = v57;
    v38 = 1;
    return v36(v37, v38, 1, v7);
  }

  if (v20)
  {
    goto LABEL_20;
  }

  v33 = v4[1];
  if (sub_219BDC0F4() == v33)
  {
    return (*(v8 + 56))(v57, 1, 1, v7);
  }

  if (v33 >= sub_219BDC0F4())
  {
    goto LABEL_38;
  }

  v51 = sub_219BDC0D4();
  result = sub_219BDC0F4();
  if (!__OFSUB__(result, 1))
  {
    v25 = v57;
    MEMORY[0x21CEB2E60](v51, result - 1);
    return (*(v8 + 56))(v25, 0, 1, v7);
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_218A923B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BDC104();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  if (sub_219BDC0D4() > 1)
  {
    _s7ContextO6ErrorsOMa();
    sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
    swift_allocError();
    v13 = v12;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000032, 0x8000000219CE4D80);
    sub_218A9DF6C(&unk_27CC1CBB0, MEMORY[0x277CC9AF8]);
    v14 = sub_219BF7894();
    MEMORY[0x21CECC330](v14);

    v15 = v52;
    *v13 = v51;
    v13[1] = v15;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v50 = a2;
  v18 = *v2;
  v17 = *(v2 + 8);
  v19 = *(v2 + 16);
  v20 = *(v2 + 48);
  if (!(v20 >> 6))
  {
    if (!v18)
    {
      v25 = *(v2 + 8);
      v26 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v19, v25);
      v27 = sub_219BDC0F4();
      (*(v6 + 8))(v11, v5);
      if (v26 >= v27)
      {
        v44 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        v28 = v50;
        if (__OFADD__(result, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        MEMORY[0x21CEB2E60](v44, result + 1);
      }

      else
      {
        v28 = v50;
        (*(v6 + 16))(v50, a1, v5);
      }

      v36 = *(v6 + 56);
      v37 = v28;
      return v36(v37, 0, 1, v5);
    }

    goto LABEL_26;
  }

  v21 = *(v2 + 24);
  v22 = *(v2 + 32);
  if (v20 >> 6 == 1)
  {
    v48 = *(v2 + 24);
    v49 = v22;
    if (v21 == 1)
    {
      v23 = v17;
      v24 = sub_219BDC0F4();
      v17 = v23;
      if (v24 == v49)
      {
        return (*(v6 + 56))(v50, 1, 1, v5);
      }
    }

    if (v18 || (v32 = v17, v33 = sub_219BDC0F4(), MEMORY[0x21CEB2E60](v19, v32), v34 = sub_219BDC0F4(), (*(v6 + 8))(v11, v5), v33 < v34))
    {
      (*(v6 + 16))(v9, a1, v5);
    }

    else
    {
      v45 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      if (__OFADD__(result, 1))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      MEMORY[0x21CEB2E60](v45, result + 1);
    }

    v31 = v50;
    if (v48 != 1 || v49 >= sub_219BDC0F4())
    {
      (*(v6 + 32))(v31, v9, v5);
      goto LABEL_23;
    }

    v35 = sub_219BDC0D4();
    result = sub_219BDC0F4();
    if (!__OFSUB__(result, 1))
    {
      MEMORY[0x21CEB2E60](v35, result - 1);
      (*(v6 + 8))(v9, v5);
      goto LABEL_23;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v20 & 1) == 0)
  {
    v38 = *(v2 + 40);
    if (!v18 || v22 == 1)
    {
      if (v19 == 1)
      {
        v40 = *(v2 + 32);
        v41 = *(v2 + 24);
        v48 = *(v2 + 8);
        v42 = sub_219BDC0F4();
        v17 = v48;
        v22 = v40;
        if (v42 == v41)
        {
          return (*(v6 + 56))(v50, 1, 1, v5);
        }
      }

      v43 = v50;
      sub_219985040(v18, v17, v22, v38, v50);
      v36 = *(v6 + 56);
      v37 = v43;
      return v36(v37, 0, 1, v5);
    }

    goto LABEL_26;
  }

  if (v18)
  {
LABEL_26:
    v39 = v50;
    (*(v6 + 16))(v50, a1, v5);
    v36 = *(v6 + 56);
    v37 = v39;
    return v36(v37, 0, 1, v5);
  }

  v29 = *(v2 + 8);
  v30 = sub_219BDC0F4();
  v31 = v50;
  if (v30 < v29)
  {
    (*(v6 + 16))(v50, a1, v5);
LABEL_23:
    v36 = *(v6 + 56);
    v37 = v31;
    return v36(v37, 0, 1, v5);
  }

  v46 = sub_219BDC0D4();
  result = sub_219BDC0F4();
  if (!__OFADD__(result, 1))
  {
    MEMORY[0x21CEB2E60](v46, result + 1);
    goto LABEL_23;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_218A92928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v181 = a3;
  v5 = v4;
  v182 = a4;
  v185 = sub_219BDC104();
  v8 = *(v185 - 8);
  v9 = MEMORY[0x28223BE20](v185);
  v11 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v176 = &v168 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v175 = &v168 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v174 = &v168 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v168 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v178 = &v168 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v179 = &v168 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v180 = (&v168 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v177 = &v168 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v172 = &v168 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v173 = &v168 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v168 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v168 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v168 - v40;
  MEMORY[0x28223BE20](v39);
  v186 = a1;
  v187 = &v168 - v42;
  v43 = sub_219BDC0F4();
  v44 = *(a2 + 16);
  v45 = (a2 + 32);
  do
  {
    if (!v44)
    {
      v50 = v185;
      (*(v8 + 16))(v187, v186, v185);
LABEL_7:
      v184 = v8;
      if (sub_219BDC0D4() < 1)
      {
        _s7ContextO6ErrorsOMa();
        sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
        swift_allocError();
        v65 = v67;
        v188 = 0;
        v189 = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219CE4FE0);
        v194 = sub_219BDC0D4();
        v68 = sub_219BF7894();
        MEMORY[0x21CECC330](v68);

        MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219CE5000);
        sub_218A9DF6C(&unk_27CC1CBB0, MEMORY[0x277CC9AF8]);
        v69 = sub_219BF7894();
        MEMORY[0x21CECC330](v69);

        goto LABEL_15;
      }

      v51 = *v5;
      v183 = *(v5 + 8);
      v52 = *(v5 + 16);
      v53 = *(v5 + 48);
      if (!(v53 >> 6))
      {
        v170 = v51;
        v72 = v52;
        v73 = v183;
        MEMORY[0x21CEB2E60](v52, v183);
        v74 = sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v75 = v187;
        v185 = v74;
        v76 = sub_219BF53A4();
        v77 = *(v184 + 8);
        v77(v41, v50);
        if (v76)
        {
          v77(v75, v50);
          v78 = 1;
LABEL_41:
          v87 = v184;
          goto LABEL_42;
        }

        v171 = v72;
        MEMORY[0x21CEB2E60](v72, v73);
        v88 = sub_219BDC0D4();
        v77(v41, v50);
        v89 = v182;
        if (v88 || (MEMORY[0x21CEB2E60](1, 0), v90 = sub_219BF53A4(), v77(v41, v50), (v90 & 1) == 0))
        {
          v93 = v186;
          if (v170 || (v94 = sub_219BDC0F4(), MEMORY[0x21CEB2E60](v171, v183), v95 = sub_219BDC0F4(), v77(v41, v50), v95 >= v94))
          {
            v97 = v77;
            (*(v184 + 16))(v38, v93, v50);
          }

          else
          {
            v96 = sub_219BDC0D4();
            result = sub_219BDC0F4();
            if (__OFSUB__(result, 1))
            {
              goto LABEL_125;
            }

            v97 = v77;
            MEMORY[0x21CEB2E60](v96, result - 1);
          }

          v101 = sub_219BDC0F4();
          v102 = v171;
          v103 = v183;
          MEMORY[0x21CEB2E60](v171, v183);
          v104 = sub_219BDC0F4();
          v97(v41, v50);
          if (v101 == v104)
          {
            v105 = sub_219BDC0D4();
            MEMORY[0x21CEB2E60](v102, v103);
            v106 = sub_219BDC0D4();
            v97(v41, v50);
            if (v106 < v105)
            {
              result = sub_219BDC0D4();
              v107 = result - 1;
              if (__OFSUB__(result, 1))
              {
                goto LABEL_124;
              }

              v108 = sub_219BDC0F4();
              v109 = v182;
              MEMORY[0x21CEB2E60](v107, v108);
              v97(v38, v50);
              v97(v187, v50);
              v89 = v109;
              goto LABEL_83;
            }
          }

          v97(v187, v50);
          v87 = v184;
          v89 = v182;
          (*(v184 + 32))(v182, v38, v50);
LABEL_49:
          v78 = 0;
          return (*(v87 + 56))(v89, v78, 1, v50);
        }

        v77(v187, v50);
        goto LABEL_31;
      }

      v54 = *(v5 + 24);
      v55 = *(v5 + 32);
      v56 = *(v5 + 40);
      v171 = v52;
      if (v53 >> 6 != 1)
      {
        v170 = v51;
        if (sub_219BDC0F4() == v54)
        {
          _s7ContextO6ErrorsOMa();
          sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
          swift_allocError();
          *v79 = 0xD000000000000081;
          v79[1] = 0x8000000219CE4E80;
          swift_storeEnumTagMultiPayload();
          v50 = v185;
          goto LABEL_16;
        }

        if (!v170)
        {
          v91 = sub_219BDC0F4();
          v71 = v187;
          if (v91 == v183)
          {
            _s7ContextO6ErrorsOMa();
            sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
            swift_allocError();
            *v92 = 0xD00000000000007DLL;
            v92[1] = 0x8000000219CE4E00;
            swift_storeEnumTagMultiPayload();
            v50 = v185;
            goto LABEL_17;
          }
        }

        MEMORY[0x21CEB2E60](1, v183);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v98 = v185;
        LODWORD(v181) = sub_219BF53A4();
        v99 = (v184 + 8);
        v100 = *(v184 + 8);
        v100(v41, v98);
        if (v181)
        {
          v100(v187, v98);
          v78 = 1;
          v50 = v98;
          goto LABEL_41;
        }

        v180 = v100;
        v181 = v99;
        if (v53)
        {
          v87 = v184;
          v89 = v182;
          v123 = v186;
          if (v170)
          {
            v80 = v175;
            v50 = v185;
            (*(v184 + 16))(v175, v186, v185);
            v124 = sub_219BDC0F4();
            v20 = v181;
            v125 = v180;
            if (v124 == v183)
            {
              v126 = sub_219BDC0D4();
              v127 = v126 - 1;
              if (!__OFSUB__(v126, 1))
              {
LABEL_90:
                v150 = sub_219BDC0F4();
                MEMORY[0x21CEB2E60](v127, v150);
                v125(v80, v50);
                v125(v187, v50);
                v78 = 0;
                v87 = v184;
                return (*(v87 + 56))(v89, v78, 1, v50);
              }

              __break(1u);
              goto LABEL_64;
            }
          }

          else
          {
            v151 = sub_219BDC0F4();
            v50 = v185;
            v80 = v175;
            v125 = v180;
            if (v183 < v151)
            {
              v152 = sub_219BDC0D4();
              result = sub_219BDC0F4();
              if (__OFSUB__(result, 1))
              {
                goto LABEL_133;
              }

              MEMORY[0x21CEB2E60](v152, result - 1);
              v87 = v184;
            }

            else
            {
              (*(v87 + 16))(v175, v123, v185);
            }
          }
        }

        else
        {
          v140 = v170;
          v141 = v183;
          sub_219985040(v170, v183, v55, v56, v11);
          sub_219985040(v140, v141, v55, v56, v41);
          v142 = sub_219BDC0F4();
          v50 = v185;
          v125 = v180;
          v180(v41, v185);
          if (v142 == v56)
          {
            result = sub_219BDC0D4();
            v143 = result + 1;
            v80 = v176;
            if (__OFADD__(result, 1))
            {
              goto LABEL_128;
            }

            v144 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v143, v144);
            v125(v11, v50);
            v87 = v184;
          }

          else
          {
            v87 = v184;
            v80 = v176;
            (*(v184 + 32))(v176, v11, v50);
          }

          v149 = sub_219BDC0F4();
          v89 = v182;
          if (v149 == v183)
          {
            result = sub_219BDC0D4();
            v127 = result - 1;
            if (__OFSUB__(result, 1))
            {
              goto LABEL_129;
            }

            goto LABEL_90;
          }
        }

        v125(v187, v50);
        (*(v87 + 32))(v89, v80, v50);
LABEL_116:
        v78 = 0;
        return (*(v87 + 56))(v89, v78, 1, v50);
      }

      v57 = v183;
      v190[0] = v51;
      v190[1] = v183;
      v190[2] = v52;
      v191 = v54;
      v192 = v55;
      v193 = v56;
      v58 = v52;
      v59 = v51;
      v60 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v58, v57);
      v61 = sub_219BDC0F4();
      v62 = (v184 + 8);
      v63 = *(v184 + 8);
      v63(v41, v185);
      if (v60 == v61 && !v59)
      {
        _s7ContextO6ErrorsOMa();
        sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
        swift_allocError();
        v65 = v64;
        v188 = 0;
        v189 = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD00000000000004ELL, 0x8000000219CE5020);
        sub_218A9DF6C(&unk_27CC1CBB0, MEMORY[0x277CC9AF8]);
        v50 = v185;
        v66 = sub_219BF7894();
        MEMORY[0x21CECC330](v66);

        MEMORY[0x21CECC330](0xD000000000000015, 0x8000000219CE5070);
LABEL_15:
        v70 = v189;
        *v65 = v188;
        v65[1] = v70;
        swift_storeEnumTagMultiPayload();
LABEL_16:
        v71 = v187;
LABEL_17:
        swift_willThrow();
        return (*(v184 + 8))(v71, v50);
      }

      v170 = v59;
      v176 = v63;
      v175 = v62;
      v80 = v192;
      v169 = v191;
      v81 = (v181 + 32);
      v82 = *(v181 + 2);
      do
      {
        v55 = v82;
        if (!v82)
        {
          break;
        }

        v83 = *v81++;
        --v82;
      }

      while (v83 != v192);
      MEMORY[0x21CEB2E60](v171, v57);
      sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
      v84 = v185;
      v85 = sub_219BF53A4();
      v86 = v176;
      (v176)(v41, v84);
      if (v85)
      {
        if (v169 == 1)
        {
          v50 = v185;
          (v176)(v187, v185);
          v87 = v184;
          v78 = 1;
LABEL_42:
          v89 = v182;
          return (*(v87 + 56))(v89, v78, 1, v50);
        }

LABEL_64:
        v89 = v182;
        v128 = v187;
        if (v193)
        {
          MEMORY[0x21CEB2E60](1, v80);
          if (v55)
          {
            result = sub_219BDC0D4();
            v129 = result + 1;
            if (__OFADD__(result, 1))
            {
              goto LABEL_130;
            }

            v130 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v129, v130);
            v131 = v20;
LABEL_82:
            v50 = v185;
            v148 = v176;
            (v176)(v131, v185);
            (v148)(v187, v50);
LABEL_83:
            v78 = 0;
            goto LABEL_84;
          }

          goto LABEL_102;
        }

        result = v169 - 2;
        if (__OFSUB__(v169, 2))
        {
          goto LABEL_126;
        }

        v145 = v174;
        MEMORY[0x21CEB2E60](result, v80);
        if (v55)
        {
          result = sub_219BDC0D4();
          v146 = result + 1;
          if (__OFADD__(result, 1))
          {
            goto LABEL_131;
          }

          v147 = sub_219BDC0F4();
          MEMORY[0x21CEB2E60](v146, v147);
          v131 = v145;
          goto LABEL_82;
        }

LABEL_122:
        v50 = v185;
        (v176)(v128, v185);
        v87 = v184;
        (*(v184 + 32))(v89, v145, v50);
        goto LABEL_49;
      }

      v110 = v171;
      MEMORY[0x21CEB2E60](v171, v183);
      v111 = sub_219BDC0D4();
      (v86)(v41, v84);
      if (!v111)
      {
        MEMORY[0x21CEB2E60](v110, v183);
        v112 = sub_219BDC0F4();
        v113 = v35;
        v114 = v185;
        v115 = v176;
        (v176)(v113, v185);
        MEMORY[0x21CEB2E60](1, v112);
        LOBYTE(v112) = sub_219BDC0A4();
        (v115)(v41, v114);
        if (v112)
        {
          v89 = v182;
          if (v169 != 1)
          {
            v128 = v187;
            v20 = v175;
            if (v193)
            {
              v145 = v173;
              MEMORY[0x21CEB2E60](1, v80);
              if (!v55)
              {
                goto LABEL_122;
              }

              v153 = sub_219BDC0D4();
              v128 = (v153 + 1);
              if (__OFADD__(v153, 1))
              {
                __break(1u);
LABEL_102:
                v50 = v185;
                (v176)(v128, v185);
                v87 = v184;
                (*(v184 + 32))(v89, v20, v50);
                goto LABEL_49;
              }
            }

            else
            {
              result = v169 - 2;
              if (__OFSUB__(v169, 2))
              {
                goto LABEL_135;
              }

              v145 = v172;
              MEMORY[0x21CEB2E60](result, v80);
              if (!v55)
              {
                goto LABEL_122;
              }

              result = sub_219BDC0D4();
              v128 = (result + 1);
              if (__OFADD__(result, 1))
              {
                goto LABEL_136;
              }
            }

            v165 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v128, v165);
            v166 = v145;
            v50 = v185;
            v167 = v176;
            (v176)(v166, v185);
            (v167)(v187, v50);
            goto LABEL_83;
          }

          v50 = v185;
          (v176)(v187, v185);
LABEL_31:
          v78 = 1;
LABEL_84:
          v87 = v184;
          return (*(v87 + 56))(v89, v78, 1, v50);
        }
      }

      v116 = v178;
      sub_219985230(v190, v178);
      if (v193)
      {
        sub_219985230(v190, v41);
        v117 = sub_219BDC0F4();
        v118 = v185;
        (v176)(v41, v185);
        if (v117 == v80)
        {
          result = sub_219BDC0D4();
          v119 = result + 1;
          if (__OFADD__(result, 1))
          {
            goto LABEL_127;
          }

          v120 = sub_219BDC0F4();
          v121 = v179;
          MEMORY[0x21CEB2E60](v119, v120);
          v118 = v185;
          (v176)(v116, v185);
          v122 = *(v184 + 32);
        }

        else
        {
          v122 = *(v184 + 32);
          v121 = v179;
          v122(v179, v116, v118);
        }

        v89 = v182;
      }

      else
      {
        v122 = *(v184 + 32);
        v132 = v116;
        v133 = v185;
        v122(v179, v132, v185);
        MEMORY[0x21CEB2E60](v171, v183);
        v134 = sub_219BDC0F4();
        v135 = v176;
        (v176)(v41, v133);
        if (v134 == v80)
        {
          v89 = v182;
          v121 = v179;
          if (v169 == 1 || !v170)
          {
            v118 = v185;
          }

          else
          {
            sub_219985230(v190, v41);
            v136 = sub_219BDC0F4();
            (v135)(v41, v185);
            if (v136 == v80 && v171 < sub_219BDC0D4())
            {
              v137 = v179;
              result = sub_219BDC0D4();
              v138 = result - 1;
              if (__OFSUB__(result, 1))
              {
                goto LABEL_134;
              }

              v139 = sub_219BDC0F4();
              MEMORY[0x21CEB2E60](v138, v139);
              v118 = v185;
              (v176)(v137, v185);
              goto LABEL_107;
            }

            v118 = v185;
            v121 = v179;
          }
        }

        else
        {
          v118 = v185;
          v89 = v182;
          v121 = v179;
        }
      }

      v122(v180, v121, v118);
LABEL_107:
      MEMORY[0x21CEB2E60](v171, v183);
      v154 = sub_219BDC0F4();
      v155 = v118;
      v156 = v176;
      (v176)(v41, v155);
      if (v154 == v80 && v169 != 1 && v170 || (v157 = sub_219BDC0F4(), MEMORY[0x21CEB2E60](v171, v183), v158 = sub_219BDC0F4(), (v156)(v41, v185), v157 != v158) || v171 >= sub_219BDC0D4())
      {
        v164 = v185;
        (v156)(v187, v185);
        v50 = v164;
        v87 = v184;
        v162 = v177;
        v122(v177, v180, v50);
      }

      else
      {
        v159 = v180;
        result = sub_219BDC0D4();
        v160 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_132;
        }

        v161 = sub_219BDC0F4();
        v162 = v177;
        MEMORY[0x21CEB2E60](v160, v161);
        v163 = v185;
        (v156)(v159, v185);
        (v156)(v187, v163);
        v50 = v163;
        v87 = v184;
      }

      v122(v89, v162, v50);
      goto LABEL_116;
    }

    v46 = *v45++;
    --v44;
  }

  while (v46 != v43);
  result = sub_219BDC0D4();
  v48 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v49 = sub_219BDC0F4();
    MEMORY[0x21CEB2E60](v48, v49);
    v50 = v185;
    goto LABEL_7;
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_218A93FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v170 = a4;
  v5 = v4;
  v165 = a2;
  v8 = sub_219BDC104();
  v173 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v162 = &v160 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v161 = &v160 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v164 = &v160 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v160 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v168 = &v160 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v167 = &v160 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v160 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v163 = &v160 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v160 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v166 = &v160 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v171 = &v160 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v160 - v38;
  MEMORY[0x28223BE20](v37);
  v172 = &v160 - v40;
  v182 = a1;
  v41 = sub_219BDC0F4();
  v42 = *(a3 + 16);
  v43 = (a3 + 32);
  do
  {
    if (!v42)
    {
      v49 = v172;
      (*(v173 + 16))(v172, v182, v8);
LABEL_7:
      if (sub_219BDC0D4() < 1)
      {
        _s7ContextO6ErrorsOMa();
        sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
        swift_allocError();
        v66 = v65;
        v174 = 0;
        v175 = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD000000000000036, 0x8000000219CE4DC0);
        sub_218A9DF6C(&unk_27CC1CBB0, MEMORY[0x277CC9AF8]);
        v67 = sub_219BF7894();
        MEMORY[0x21CECC330](v67);

        v68 = v175;
        *v66 = v174;
        v66[1] = v68;
        swift_storeEnumTagMultiPayload();
        v69 = v173;
LABEL_24:
        swift_willThrow();
        return (*(v69 + 8))(v49, v8);
      }

      v169 = v8;
      v51 = *v5;
      v50 = *(v5 + 8);
      v52 = *(v5 + 16);
      v53 = *(v5 + 48);
      if (v53 >> 6)
      {
        v55 = *(v5 + 24);
        v54 = *(v5 + 32);
        v56 = *(v5 + 40);
        if (v53 >> 6 == 1)
        {
          v176 = v51;
          v177 = v50;
          v178 = v52;
          v179 = v55;
          v180 = v54;
          v181 = v56;
          if (v56)
          {
            v57 = v171;
            MEMORY[0x21CEB2E60](1);
            v58 = sub_219BDC0A4();
            v59 = *(v173 + 8);
            v60 = v169;
            v59(v57, v169);
            v61 = v168;
            if (v58)
            {
              v62 = v177;
              v63 = v178;
              MEMORY[0x21CEB2E60](v178, v177);
              v64 = sub_219BDC0D4();
              v59(v57, v60);
              if (v64)
              {
                MEMORY[0x21CEB2E60](v63, v62);
                v182 = sub_219BDC0D4();
                v59(v57, v60);
              }

              else
              {
                v182 = 1;
              }

              v86 = v170;
              MEMORY[0x21CEB2E60](v63, v62);
              v140 = sub_219BDC0F4();
              v59(v57, v60);
              MEMORY[0x21CEB2E60](v182, v140);
              MEMORY[0x21CEB2E60](v63, v62);
              v141 = sub_219BDC0F4();
              v59(v32, v60);
              v142 = *(v165 + 16);
              v143 = (v165 + 32);
              v85 = v173;
              while (v142)
              {
                v144 = *v143++;
                --v142;
                if (v144 == v141)
                {
                  v145 = v166;
                  v146 = sub_219BDC0D4();
                  v147 = v146 + 1;
                  if (!__OFADD__(v146, 1))
                  {
                    goto LABEL_82;
                  }

                  __break(1u);
                  break;
                }
              }

              v59(v172, v60);
              (*(v85 + 32))(v86, v166, v60);
              goto LABEL_84;
            }

            sub_21998542C(&v176, v20);
            if (sub_219BDC0F4() == v180)
            {
              result = sub_219BDC0D4();
              v103 = result - 1;
              v104 = v173;
              v105 = v167;
              if (__OFSUB__(result, 1))
              {
                goto LABEL_100;
              }

              v106 = sub_219BDC0F4();
              MEMORY[0x21CEB2E60](v103, v106);
              v59(v20, v60);
              v107 = *(v104 + 32);
              v86 = v170;
            }

            else
            {
              v107 = *(v173 + 32);
              (v107)(v61, v20, v60);
              v86 = v170;
              v105 = v167;
            }

            goto LABEL_55;
          }

          result = v55 - 1;
          v60 = v169;
          if (__OFSUB__(v55, 1))
          {
            goto LABEL_96;
          }

          v91 = v171;
          MEMORY[0x21CEB2E60](result);
          v92 = sub_219BDC0A4();
          v93 = v173;
          v59 = *(v173 + 8);
          v59(v91, v60);
          if (v92)
          {
            v94 = v177;
            v95 = v178;
            MEMORY[0x21CEB2E60](v178, v177);
            v96 = sub_219BDC0D4();
            v59(v91, v60);
            v86 = v170;
            if (v96)
            {
              MEMORY[0x21CEB2E60](v95, v94);
              v97 = v91;
              v182 = sub_219BDC0D4();
              v59(v91, v60);
            }

            else
            {
              v97 = v91;
              v182 = 1;
            }

            MEMORY[0x21CEB2E60](v95, v94);
            v148 = sub_219BDC0F4();
            v59(v97, v60);
            MEMORY[0x21CEB2E60](v182, v148);
            MEMORY[0x21CEB2E60](v95, v94);
            v149 = sub_219BDC0F4();
            v59(v27, v60);
            v150 = *(v165 + 16);
            v151 = (v165 + 32);
            v85 = v173;
            do
            {
              if (!v150)
              {
                v59(v172, v60);
                (*(v85 + 32))(v86, v163, v60);
                goto LABEL_84;
              }

              v152 = *v151++;
              --v150;
            }

            while (v152 != v149);
            v145 = v163;
            result = sub_219BDC0D4();
            v147 = result + 1;
            if (__OFADD__(result, 1))
            {
              goto LABEL_101;
            }

LABEL_82:
            v153 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v147, v153);
            v59(v145, v60);
            v59(v172, v60);
            goto LABEL_84;
          }

          sub_21998542C(&v176, v20);
          v166 = *(v93 + 32);
          (v166)(v168, v20, v60);
          v110 = v176;
          v111 = v178;
          MEMORY[0x21CEB2E60](v178, v177);
          v112 = sub_219BDC0F4();
          v59(v91, v60);
          if (v112 == v180)
          {
            v105 = v167;
            if (v179 != 1 && v110 && sub_219BDC0F4() == v112)
            {
              v113 = sub_219BDC0D4();
              v86 = v170;
              v61 = v168;
              if (v113 >= v111)
              {
                result = sub_219BDC0D4();
                v155 = result + 1;
                if (__OFADD__(result, 1))
                {
                  goto LABEL_105;
                }

                v156 = sub_219BDC0F4();
                MEMORY[0x21CEB2E60](v155, v156);
                v59(v61, v60);
                goto LABEL_56;
              }

              v107 = v166;
LABEL_55:
              v166 = v107;
              (v107)(v105, v61, v60);
LABEL_56:
              v117 = v172;
              v85 = v173;
              v118 = v171;
              sub_21998542C(&v176, v171);
              v119 = sub_219BDC0F4();
              v59(v118, v60);
              v120 = v164;
              MEMORY[0x21CEB2E60](v178, v177);
              v121 = sub_219BDC0F4();
              v59(v120, v60);
              if (v119 == v121)
              {
                v122 = v167;
                result = sub_219BDC0D4();
                v123 = result + 1;
                if (__OFADD__(result, 1))
                {
                  goto LABEL_98;
                }

                v124 = sub_219BDC0F4();
                MEMORY[0x21CEB2E60](v123, v124);
                v59(v122, v60);
                v59(v117, v60);
              }

              else
              {
                v59(v117, v60);
                (v166)(v86, v167, v60);
              }

              goto LABEL_84;
            }

            v86 = v170;
          }

          else
          {
            v86 = v170;
            v105 = v167;
          }

          v61 = v168;
          v107 = v166;
          goto LABEL_55;
        }

        v167 = v54;
        v168 = v50;
        v87 = sub_219BDC0F4();
        v69 = v173;
        if (v87 == v55)
        {
          _s7ContextO6ErrorsOMa();
          sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
          swift_allocError();
          v89 = 0x8000000219CE4E80;
          v90 = 0xD000000000000081;
LABEL_23:
          *v88 = v90;
          v88[1] = v89;
          swift_storeEnumTagMultiPayload();
          v8 = v169;
          v49 = v172;
          goto LABEL_24;
        }

        if (!v51 && sub_219BDC0F4() == v168)
        {
          _s7ContextO6ErrorsOMa();
          sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
          swift_allocError();
          v89 = 0x8000000219CE4E00;
          v90 = 0xD00000000000007DLL;
          goto LABEL_23;
        }

        if ((v53 & 1) == 0)
        {
          sub_21998563C(v51, v168, v167, v56, v11);
          if (sub_219BDC0F4() == v56)
          {
            result = sub_219BDC0D4();
            v114 = result - 1;
            v60 = v169;
            if (__OFSUB__(result, 1))
            {
              goto LABEL_102;
            }

            v115 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v114, v115);
            (*(v173 + 8))(v11, v60);
          }

          else
          {
            v60 = v169;
            (*(v69 + 32))(v162, v11, v169);
          }

          v131 = v171;
          v132 = v168;
          sub_21998563C(v51, v168, v167, v56, v171);
          v133 = sub_219BDC0F4();
          v134 = v173;
          v135 = *(v173 + 8);
          v135(v131, v60);
          if (v133 == v132)
          {
            v85 = v134;
            v136 = v162;
            result = sub_219BDC0D4();
            v137 = result + 1;
            v86 = v170;
            v138 = v172;
            if (__OFADD__(result, 1))
            {
              goto LABEL_103;
            }

            v139 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v137, v139);
            v135(v136, v60);
            v135(v138, v60);
            v102 = 0;
          }

          else
          {
            v135(v172, v60);
            v86 = v170;
            (*(v134 + 32))(v170, v162, v60);
            v102 = 0;
            v85 = v134;
          }

          return (*(v85 + 56))(v86, v102, 1, v60);
        }

        v98 = v171;
        MEMORY[0x21CEB2E60](1, v168);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v99 = v172;
        v60 = v169;
        v100 = sub_219BF53A4();
        v101 = *(v69 + 8);
        v101(v98, v60);
        v86 = v170;
        if ((v100 & 1) == 0)
        {
          if (v51)
          {
            v85 = v173;
            v125 = v161;
            (*(v173 + 16))(v161, v182, v60);
            v126 = sub_219BDC0F4();
            v127 = v172;
            if (v126 == v168)
            {
              v128 = v125;
              result = sub_219BDC0D4();
              v129 = result + 1;
              if (__OFADD__(result, 1))
              {
                goto LABEL_104;
              }

              v130 = sub_219BDC0F4();
              MEMORY[0x21CEB2E60](v129, v130);
              v101(v128, v60);
              v101(v127, v60);
              v102 = 0;
              v85 = v173;
              return (*(v85 + 56))(v86, v102, 1, v60);
            }
          }

          else
          {
            v154 = v182;
            if (sub_219BDC0F4() >= v168)
            {
              v157 = sub_219BDC0D4();
              result = sub_219BDC0F4();
              v158 = result + 1;
              v127 = v172;
              if (__OFADD__(result, 1))
              {
                goto LABEL_106;
              }

              v159 = v157;
              v125 = v161;
              MEMORY[0x21CEB2E60](v159, v158);
              v85 = v173;
            }

            else
            {
              v85 = v173;
              v125 = v161;
              (*(v173 + 16))(v161, v154, v60);
              v127 = v172;
            }
          }

          v101(v127, v60);
          (*(v85 + 32))(v86, v125, v60);
          v102 = 0;
          return (*(v85 + 56))(v86, v102, 1, v60);
        }

        v101(v99, v60);
        v102 = 1;
      }

      else
      {
        v70 = *(v5 + 16);
        v168 = *(v5 + 8);
        v60 = v169;
        v71 = v173;
        v72 = v182;
        if (v51 || (v73 = sub_219BDC0F4(), v74 = v171, MEMORY[0x21CEB2E60](v70, v168), v75 = sub_219BDC0F4(), (*(v71 + 8))(v74, v60), v73 < v75))
        {
          (*(v71 + 16))(v39, v72, v60);
        }

        else
        {
          v116 = sub_219BDC0D4();
          result = sub_219BDC0F4();
          if (__OFADD__(result, 1))
          {
            goto LABEL_99;
          }

          MEMORY[0x21CEB2E60](v116, result + 1);
        }

        v76 = sub_219BDC0F4();
        v77 = v171;
        v78 = v70;
        v79 = v70;
        v80 = v168;
        MEMORY[0x21CEB2E60](v79, v168);
        v81 = sub_219BDC0F4();
        v82 = *(v71 + 8);
        v82(v77, v60);
        if (v76 != v81 || (v83 = sub_219BDC0D4(), MEMORY[0x21CEB2E60](v78, v80), v84 = sub_219BDC0D4(), v82(v77, v60), v83 < v84))
        {
          v82(v172, v60);
          v85 = v173;
          v86 = v170;
          (*(v173 + 32))(v170, v39, v60);
LABEL_84:
          v102 = 0;
          return (*(v85 + 56))(v86, v102, 1, v60);
        }

        result = sub_219BDC0D4();
        v108 = result + 1;
        if (__OFADD__(result, 1))
        {
          goto LABEL_97;
        }

        v109 = sub_219BDC0F4();
        v86 = v170;
        MEMORY[0x21CEB2E60](v108, v109);
        v82(v39, v60);
        v82(v172, v60);
        v102 = 0;
      }

      v85 = v173;
      return (*(v85 + 56))(v86, v102, 1, v60);
    }

    v44 = *v43++;
    --v42;
  }

  while (v44 != v41);
  result = sub_219BDC0D4();
  v46 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v47 = sub_219BDC0F4();
    v48 = v46;
    v49 = v172;
    MEMORY[0x21CEB2E60](v48, v47);
    goto LABEL_7;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_218A95188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v115 = a1;
  v3 = sub_219BDC104();
  v120 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v105 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v105 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v105 - v18;
  MEMORY[0x28223BE20](v17);
  v25 = &v105 - v24;
  v27 = *v2;
  v26 = *(v2 + 8);
  v28 = *(v2 + 16);
  v29 = *(v2 + 48);
  if (!(v29 >> 6))
  {
    v40 = *v2;
    v41 = *(v2 + 16);
    v113 = *(v2 + 8);
    MEMORY[0x21CEB2E60]();
    sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    v42 = v115;
    v43 = sub_219BF53A4();
    v35 = v120;
    v110 = *(v120 + 8);
    v110(v25, v3);
    if (v43)
    {
      v44 = 1;
      v39 = v114;
      return (*(v35 + 56))(v39, v44, 1, v3);
    }

    if (v40 || (v57 = sub_219BDC0F4(), MEMORY[0x21CEB2E60](v41, v113), v58 = sub_219BDC0F4(), v110(v25, v3), v58 >= v57))
    {
      (*(v35 + 16))(v19, v42, v3);
    }

    else
    {
      v59 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      if (__OFSUB__(result, 1))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      MEMORY[0x21CEB2E60](v59, result - 1);
    }

    v78 = v3;
    v109 = sub_219BDC0F4();
    v79 = v41;
    v80 = v41;
    v81 = v113;
    MEMORY[0x21CEB2E60](v80, v113);
    v82 = sub_219BDC0F4();
    v111 = v78;
    v83 = v78;
    v84 = v110;
    v110(v25, v83);
    if (v109 == v82 && (v85 = sub_219BDC0D4(), MEMORY[0x21CEB2E60](v79, v81), v86 = sub_219BDC0D4(), v84(v25, v111), v86 < v85))
    {
      v3 = v111;
      result = sub_219BDC0D4();
      v87 = result - 1;
      if (__OFSUB__(result, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v88 = sub_219BDC0F4();
      v39 = v114;
      MEMORY[0x21CEB2E60](v87, v88);
      v110(v19, v3);
    }

    else
    {
      v39 = v114;
      v3 = v111;
      (*(v35 + 32))(v114, v19, v111);
    }

    goto LABEL_74;
  }

  v31 = *(v2 + 24);
  v30 = *(v2 + 32);
  v32 = *(v2 + 40);
  v111 = *v2;
  v112 = v28;
  if (v29 >> 6 == 1)
  {
    v105 = v20;
    v106 = v21;
    v107 = v23;
    v108 = v22;
    v116[0] = v27;
    v116[1] = v26;
    v116[2] = v28;
    v117 = v31;
    v118 = v30;
    v119 = v32;
    v33 = v26;
    MEMORY[0x21CEB2E60]();
    sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    v34 = sub_219BF53A4();
    v35 = v120;
    v36 = v120 + 8;
    v37 = *(v120 + 8);
    v37(v25, v3);
    if (v34)
    {
      if (v119)
      {
        result = 0;
        v39 = v114;
LABEL_63:
        MEMORY[0x21CEB2E60](result, v118);
        goto LABEL_74;
      }

      result = v117 - 1;
      v39 = v114;
      if (!__OFSUB__(v117, 1))
      {
        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_85;
    }

    v47 = v105;
    sub_219985230(v116, v105);
    v113 = v33;
    MEMORY[0x21CEB2E60](v112, v33);
    v48 = sub_219BDC0F4();
    v49 = v25;
    v109 = v36;
    v50 = v37;
    v37(v25, v3);
    v51 = v118;
    v110 = v117;
    v52 = v111;
    if ((v48 != v118 || v110 == 1 || !v111) && (v119 & 1) != 0 && (sub_219985230(v116, v49), v53 = sub_219BDC0F4(), v47 = v105, v37(v49, v3), v53 == v51))
    {
      result = sub_219BDC0D4();
      v54 = result + 1;
      v55 = v108;
      if (__OFADD__(result, 1))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v56 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v54, v56);
      v50(v47, v3);
    }

    else
    {
      (*(v120 + 32))(v107, v47, v3);
      v55 = v108;
    }

    MEMORY[0x21CEB2E60](v112, v113);
    v61 = sub_219BDC0F4();
    v50(v49, v3);
    if (v61 == v51 && v110 != 1 && v52 && (v119 & 1) != 0 && (sub_219985230(v116, v49), v62 = sub_219BDC0F4(), v55 = v108, v50(v49, v3), v62 == v51) && sub_219BDC0D4() < v112)
    {
      v63 = v107;
      result = sub_219BDC0D4();
      v64 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v65 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v64, v65);
      v50(v63, v3);
    }

    else
    {
      (*(v120 + 32))(v55, v107, v3);
    }

    MEMORY[0x21CEB2E60](v112, v113);
    v66 = sub_219BDC0F4();
    v50(v49, v3);
    if ((v66 != v51 || v110 == 1 || !v52) && (v67 = sub_219BDC0F4(), MEMORY[0x21CEB2E60](v112, v113), v68 = sub_219BDC0F4(), v55 = v108, v50(v49, v3), v67 == v68) && (v69 = sub_219BDC0D4(), MEMORY[0x21CEB2E60](v112, v113), v70 = sub_219BDC0D4(), v55 = v108, v50(v49, v3), v70 < v69) && v52)
    {
      result = sub_219BDC0D4();
      v71 = result - 1;
      if (__OFSUB__(result, 1))
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v72 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v71, v72);
      v50(v55, v3);
    }

    else
    {
      (*(v120 + 32))(v106, v55, v3);
    }

    MEMORY[0x21CEB2E60](v112, v113);
    v73 = sub_219BDC0F4();
    v50(v49, v3);
    if (v73 == v51 && v110 != 1)
    {
      if (v52)
      {
        if ((v119 & 1) == 0)
        {
          sub_219985230(v116, v49);
          v74 = sub_219BDC0F4();
          v50(v49, v3);
          if (v74 == v51 && v112 < sub_219BDC0D4())
          {
            v75 = v106;
            result = sub_219BDC0D4();
            v76 = result - 1;
            if (__OFSUB__(result, 1))
            {
LABEL_93:
              __break(1u);
              goto LABEL_94;
            }

            v77 = sub_219BDC0F4();
            v39 = v114;
            MEMORY[0x21CEB2E60](v76, v77);
            v50(v75, v3);
            goto LABEL_11;
          }
        }
      }
    }

    v35 = v120;
    v39 = v114;
    (*(v120 + 32))(v114, v106, v3);
LABEL_74:
    v44 = 0;
    return (*(v35 + 56))(v39, v44, 1, v3);
  }

  v108 = v30;
  v109 = v32;
  v107 = v9;
  v113 = v26;
  MEMORY[0x21CEB2E60](0);
  sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
  v45 = sub_219BF53A4();
  v110 = *(v120 + 8);
  v110(v25, v3);
  if (v45)
  {
    v39 = v114;
    v46 = v31;
LABEL_10:
    MEMORY[0x21CEB2E60](0, v46);
LABEL_11:
    v44 = 0;
    v35 = v120;
    return (*(v35 + 56))(v39, v44, 1, v3);
  }

  if (v29)
  {
    if (v111 || v113 >= sub_219BDC0F4())
    {
      v35 = v120;
      (*(v120 + 16))(v12, v115, v3);
    }

    else
    {
      v60 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      v35 = v120;
      if (__OFSUB__(result, 1))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      MEMORY[0x21CEB2E60](v60, result - 1);
    }

    if (sub_219BDC0F4() != v113)
    {
      v39 = v114;
      (*(v35 + 32))(v114, v12, v3);
      goto LABEL_74;
    }

    result = sub_219BDC0D4();
    v92 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_86;
    }

    v93 = sub_219BDC0F4();
    v39 = v114;
    MEMORY[0x21CEB2E60](v92, v93);
    v94 = v12;
LABEL_70:
    v110(v94, v3);
    goto LABEL_74;
  }

  v89 = v113;
  MEMORY[0x21CEB2E60](0, v113);
  v90 = sub_219BF53A4();
  v91 = v110;
  v110(v25, v3);
  if (v90)
  {
    v39 = v114;
    v46 = v89;
    goto LABEL_10;
  }

  MEMORY[0x21CEB2E60](0, v31);
  v95 = sub_219BF53A4();
  v91(v25, v3);
  if (v95)
  {
    v39 = v114;
    v46 = v109;
    goto LABEL_10;
  }

  v96 = v91;
  v97 = v113;
  sub_219985040(v111, v113, v108, v109, v6);
  if (sub_219BDC0F4() == v97)
  {
    result = sub_219BDC0D4();
    v98 = result - 1;
    v99 = v107;
    if (__OFSUB__(result, 1))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v100 = sub_219BDC0F4();
    MEMORY[0x21CEB2E60](v98, v100);
    v96(v6, v3);
  }

  else
  {
    v99 = v107;
    (*(v120 + 32))(v107, v6, v3);
  }

  v101 = v109;
  sub_219985040(v111, v113, v108, v109, v25);
  v102 = sub_219BDC0F4();
  v96(v25, v3);
  if (v102 != v101)
  {
    v35 = v120;
    v39 = v114;
    (*(v120 + 32))(v114, v99, v3);
    goto LABEL_74;
  }

  result = sub_219BDC0D4();
  v103 = result + 1;
  v35 = v120;
  if (!__OFADD__(result, 1))
  {
    v104 = sub_219BDC0F4();
    v39 = v114;
    MEMORY[0x21CEB2E60](v103, v104);
    v94 = v99;
    goto LABEL_70;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_218A95EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v92 = sub_219BDC104();
  v99 = *(v92 - 8);
  v4 = MEMORY[0x28223BE20](v92);
  v5 = MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v83 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v83 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v83 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v83 - v17;
  MEMORY[0x28223BE20](v16);
  v23 = v83 - v19;
  v25 = *v2;
  v24 = *(v2 + 8);
  v26 = *(v2 + 16);
  v27 = *(v2 + 48);
  if (!(v27 >> 6))
  {
    v36 = *(v2 + 16);
    v37 = *(v2 + 8);
    if (v25)
    {
      v33 = v99;
      v35 = v92;
      (*(v99 + 16))(v83 - v19, a1, v92);
      v90 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v36, v37);
      v38 = sub_219BDC0F4();
      v89 = *(v33 + 8);
      v89(v18, v35);
      if (v90 == v38)
      {
        v39 = sub_219BDC0D4();
        MEMORY[0x21CEB2E60](v36, v37);
        v40 = sub_219BDC0D4();
        v89(v18, v35);
        if (v40 < v39)
        {
          v41 = v89;
          result = sub_219BDC0D4();
          v43 = result + 1;
          if (!__OFADD__(result, 1))
          {
            v44 = sub_219BDC0F4();
            v45 = v91;
            MEMORY[0x21CEB2E60](v43, v44);
            v41(v23, v35);
            return (*(v33 + 56))(v45, 0, 1, v35);
          }

          goto LABEL_60;
        }
      }
    }

    else
    {
      v52 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v36, v37);
      v53 = sub_219BDC0F4();
      v33 = v99;
      v35 = v92;
      (*(v99 + 8))(v18, v92);
      if (v52 >= v53)
      {
        v68 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        if (__OFADD__(result, 1))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        MEMORY[0x21CEB2E60](v68, result + 1);
      }

      else
      {
        (*(v33 + 16))(v23, a1, v35);
      }
    }

    v45 = v91;
    (*(v33 + 32))(v91, v23, v35);
    return (*(v33 + 56))(v45, 0, 1, v35);
  }

  v29 = *(v2 + 24);
  v28 = *(v2 + 32);
  v30 = *(v2 + 40);
  if (v27 >> 6 == 1)
  {
    v93 = *v2;
    v94 = v24;
    v95 = v26;
    v96 = v29;
    v97 = v28;
    v98 = v30;
    v90 = v21;
    if (v30)
    {
      MEMORY[0x21CEB2E60](0);
      v31 = a1;
      v32 = sub_219BDC0A4();
      v33 = v99;
      v34 = *(v99 + 8);
      v35 = v92;
      v34(v18, v92);
    }

    else
    {
      result = v29 - 1;
      v35 = v92;
      v33 = v99;
      if (__OFSUB__(v29, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v31 = a1;
      MEMORY[0x21CEB2E60](result);
      v32 = sub_219BDC0A4();
      v34 = *(v33 + 8);
      v34(v18, v35);
    }

    if (v32)
    {
      v45 = v91;
      MEMORY[0x21CEB2E60](v95, v94);
      return (*(v33 + 56))(v45, 0, 1, v35);
    }

    sub_21998542C(&v93, v14);
    if (sub_219BDC0F4() != v97 || v96 == 1)
    {
      (*(v33 + 32))(v90, v14, v35);
      goto LABEL_30;
    }

    result = sub_219BDC0D4();
    v50 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v51 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v50, v51);
      v34(v14, v35);
LABEL_30:
      sub_21998542C(&v93, v18);
      v58 = sub_219BDC0F4();
      v87 = v31;
      v59 = v58;
      v34(v18, v35);
      v60 = v94;
      v89 = v93;
      v61 = v95;
      MEMORY[0x21CEB2E60](v95, v94);
      v62 = sub_219BDC0F4();
      v34(v11, v35);
      if (v59 != v62 || (v63 = sub_219BDC0D4(), MEMORY[0x21CEB2E60](v61, v60), v64 = sub_219BDC0D4(), v34(v18, v35), v64 >= v63) || !v89)
      {
        v33 = v99;
        v45 = v91;
        (*(v99 + 32))(v91, v90, v35);
        return (*(v33 + 56))(v45, 0, 1, v35);
      }

      v65 = v90;
      result = sub_219BDC0D4();
      v66 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v67 = sub_219BDC0F4();
        v45 = v91;
        MEMORY[0x21CEB2E60](v66, v67);
        v35 = v92;
        v34(v65, v92);
        goto LABEL_42;
      }

      goto LABEL_61;
    }

    goto LABEL_58;
  }

  v83[0] = *(v2 + 32);
  v83[1] = v26;
  v85 = v22;
  v86 = v30;
  v90 = v24;
  v84 = v20;
  MEMORY[0x21CEB2E60](0, v29);
  sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
  v46 = v92;
  v47 = sub_219BF53A4();
  v88 = *(v99 + 8);
  v89 = (v99 + 8);
  v88(v18, v46);
  if (v47)
  {
    v45 = v91;
    MEMORY[0x21CEB2E60](0, v90);
    v35 = v92;
LABEL_42:
    v33 = v99;
    return (*(v33 + 56))(v45, 0, 1, v35);
  }

  if (v27)
  {
    if (v25)
    {
      v33 = v99;
      v35 = v92;
      (*(v99 + 16))(v8, a1, v92);
      if (sub_219BDC0F4() == v90)
      {
        result = sub_219BDC0D4();
        v48 = result + 1;
        if (!__OFADD__(result, 1))
        {
          v49 = sub_219BDC0F4();
          v45 = v91;
          MEMORY[0x21CEB2E60](v48, v49);
          v88(v8, v35);
          return (*(v33 + 56))(v45, 0, 1, v35);
        }

        goto LABEL_62;
      }
    }

    else
    {
      v71 = sub_219BDC0F4();
      v35 = v92;
      if (v71 >= v90)
      {
        v79 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        v33 = v99;
        if (__OFADD__(result, 1))
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        MEMORY[0x21CEB2E60](v79, result + 1);
      }

      else
      {
        v33 = v99;
        (*(v99 + 16))(v8, a1, v92);
      }
    }

    v45 = v91;
    (*(v33 + 32))(v91, v8, v35);
    return (*(v33 + 56))(v45, 0, 1, v35);
  }

  v54 = v90;
  MEMORY[0x21CEB2E60](0, v90);
  v87 = a1;
  v35 = v92;
  v55 = sub_219BF53A4();
  v56 = v88;
  v88(v18, v35);
  if (v55)
  {
    v45 = v91;
    v57 = v54;
LABEL_41:
    MEMORY[0x21CEB2E60](0, v57);
    goto LABEL_42;
  }

  v69 = v86;
  MEMORY[0x21CEB2E60](0, v86);
  v70 = sub_219BF53A4();
  v56(v18, v35);
  if (v70)
  {
    v45 = v91;
    v57 = v29;
    goto LABEL_41;
  }

  v72 = v83[0];
  sub_21998563C(v25, v90, v83[0], v69, v85);
  v73 = v25;
  v74 = v90;
  sub_21998563C(v73, v90, v72, v69, v18);
  v75 = sub_219BDC0F4();
  v56(v18, v35);
  if (v75 == v74)
  {
    v76 = v85;
    result = sub_219BDC0D4();
    v77 = result + 1;
    v33 = v99;
    if (__OFADD__(result, 1))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v78 = sub_219BDC0F4();
    MEMORY[0x21CEB2E60](v77, v78);
    v56(v76, v35);
  }

  else
  {
    v33 = v99;
    (*(v99 + 32))(v84, v85, v35);
  }

  if (sub_219BDC0F4() != v86)
  {
    v45 = v91;
    (*(v33 + 32))(v91, v84, v35);
    return (*(v33 + 56))(v45, 0, 1, v35);
  }

  v80 = v84;
  result = sub_219BDC0D4();
  v81 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v82 = sub_219BDC0F4();
    v45 = v91;
    MEMORY[0x21CEB2E60](v81, v82);
    v56(v80, v35);
    return (*(v33 + 56))(v45, 0, 1, v35);
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_218A968FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v116 = a1;
  v121 = sub_219BDC104();
  v115 = *(v121 - 8);
  v3 = MEMORY[0x28223BE20](v121);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v108 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v108 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v108 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v108 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v112 = &v108 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v108 - v22;
  MEMORY[0x28223BE20](v21);
  v26 = &v108 - v25;
  v28 = *v2;
  v27 = *(v2 + 8);
  v29 = *(v2 + 16);
  v30 = *(v2 + 48);
  v114 = v27;
  if (v30 >> 6)
  {
    v31 = *(v2 + 24);
    v32 = *(v2 + 32);
    v33 = *(v2 + 40);
    if (v30 >> 6 == 1)
    {
      v109 = v24;
      v117[0] = v28;
      v117[1] = v27;
      v117[2] = v29;
      v118 = v31;
      v119 = v32;
      v120 = v33;
      v34 = v28;
      v35 = v29;
      MEMORY[0x21CEB2E60]();
      v36 = sub_219BDC0F4();
      v37 = v115;
      v38 = v121;
      v39 = *(v115 + 8);
      v39(v26, v121);
      if (v36 == v119 && v118 != 1 && v34 != 0)
      {
        v63 = v113;
        (*(v37 + 16))(v113, v116, v38);
        return (*(v37 + 56))(v63, 0, 1, v38);
      }

      v110 = v118;
      v108 = v119;
      if (v34)
      {
        sub_219985230(v117, v17);
        v42 = v112;
        MEMORY[0x21CEB2E60](v35, v114);
        v43 = sub_219BDC0F4();
        v44 = v42;
        v45 = v121;
        v39(v44, v121);
        MEMORY[0x21CEB2E60](v34, v43);
        LOBYTE(v43) = sub_219BDC0A4();
        v39(v26, v45);
        if (v43)
        {
          result = sub_219BDC0D4();
          v46 = result - 1;
          if (__OFSUB__(result, 1))
          {
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v47 = sub_219BDC0F4();
          MEMORY[0x21CEB2E60](v46, v47);
          v39(v17, v121);
          goto LABEL_55;
        }
      }

      else
      {
        MEMORY[0x21CEB2E60](v35, v114);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v45 = v121;
        v83 = sub_219BF53A4();
        v39(v26, v45);
        if (v83)
        {
          return (*(v115 + 56))(v113, 1, 1, v45);
        }

        sub_219985230(v117, v17);
      }

      (*(v115 + 32))(v109, v17, v45);
LABEL_55:
      v88 = v115;
      if (v110 == 1)
      {
        goto LABEL_60;
      }

      v89 = v110;
      sub_219985230(v117, v26);
      result = v89 - 1;
      if (!__OFSUB__(v89, 1))
      {
        v90 = v112;
        MEMORY[0x21CEB2E60](result, v108);
        v91 = sub_219BDC0A4();
        v92 = v90;
        v93 = v121;
        v39(v92, v121);
        v39(v26, v93);
        if (v91)
        {
          v94 = v109;
          result = sub_219BDC0D4();
          v95 = result + 1;
          if (!__OFADD__(result, 1))
          {
            v96 = sub_219BDC0F4();
            v97 = v113;
            MEMORY[0x21CEB2E60](v95, v96);
            v98 = v94;
            v99 = v121;
            v39(v98, v121);
            return (*(v88 + 56))(v97, 0, 1, v99);
          }

          goto LABEL_78;
        }

LABEL_60:
        v97 = v113;
        v99 = v121;
        (*(v88 + 32))(v113, v109, v121);
        return (*(v88 + 56))(v97, 0, 1, v99);
      }

      goto LABEL_72;
    }

    v110 = *(v2 + 24);
    v111 = v28;
    if (v28)
    {
      v58 = v115;
      if (v30)
      {
        goto LABEL_22;
      }

      v69 = v28;
      v70 = v114;
      v108 = v33;
      v109 = v29;
      sub_219985040(v28, v114, v32, v33, v5);
      MEMORY[0x21CEB2E60](v69, v70);
      v71 = sub_219BDC0A4();
      v72 = v58;
      v73 = *(v58 + 8);
      v74 = v121;
      v73(v26, v121);
      if (v71)
      {
        result = sub_219BDC0D4();
        v75 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v76 = sub_219BDC0F4();
        MEMORY[0x21CEB2E60](v75, v76);
        v77 = v5;
        v78 = v121;
        v73(v77, v121);
        v79 = v78;
        v80 = v115;
        goto LABEL_64;
      }
    }

    else
    {
      v108 = v33;
      v109 = v29;
      v68 = sub_219BDC0F4();
      v58 = v115;
      if (v68 == v114)
      {
        return (*(v115 + 56))(v113, 1, 1, v121);
      }

      if (v30)
      {
        v86 = v114;
        if (v86 < sub_219BDC0F4())
        {
          v87 = sub_219BDC0D4();
          result = sub_219BDC0F4();
          if (__OFSUB__(result, 1))
          {
LABEL_80:
            __break(1u);
            return result;
          }

          MEMORY[0x21CEB2E60](v87, result - 1);
          v59 = v113;
LABEL_23:
          if (sub_219BDC0F4() == v114 && sub_219BDC0D4() == v111)
          {
            result = sub_219BDC0D4();
            v60 = result - 1;
            if (__OFSUB__(result, 1))
            {
LABEL_76:
              __break(1u);
              goto LABEL_77;
            }

            v61 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v60, v61);
            v62 = v121;
            (*(v58 + 8))(v11, v121);
          }

          else
          {
            v62 = v121;
            (*(v58 + 32))(v14, v11, v121);
          }

          if (sub_219BDC0F4() == v110 && sub_219BDC0D4() >= 1)
          {
            result = sub_219BDC0D4();
            v81 = result + 1;
            if (__OFADD__(result, 1))
            {
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            v82 = sub_219BDC0F4();
            MEMORY[0x21CEB2E60](v81, v82);
            (*(v58 + 8))(v14, v62);
          }

          else
          {
            (*(v58 + 32))(v59, v14, v62);
          }

          return (*(v58 + 56))(v59, 0, 1, v62);
        }

LABEL_22:
        (*(v58 + 16))(v11, v116, v121);
        v59 = v113;
        goto LABEL_23;
      }

      sub_219985040(0, v114, v32, v108, v5);
      v72 = v58;
      v74 = v121;
    }

    (*(v72 + 32))(v8, v5, v74);
    v80 = v72;
    v79 = v74;
LABEL_64:
    v100 = v110;
    v101 = v108;
    if (v32 == 1 || (sub_219985040(v111, v114, v32, v108, v26), v102 = v112, MEMORY[0x21CEB2E60](v32, v101), v103 = sub_219BDC0A4(), v104 = *(v80 + 8), v104(v102, v79), v104(v26, v79), (v103 & 1) == 0))
    {
      v107 = v113;
      (*(v80 + 32))(v113, v8, v79, v100);
    }

    else
    {
      result = sub_219BDC0D4();
      v105 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v106 = sub_219BDC0F4();
      v107 = v113;
      MEMORY[0x21CEB2E60](v105, v106);
      v104(v8, v79);
    }

    return (*(v80 + 56))(v107, 0, 1, v79);
  }

  v48 = v29;
  v49 = v115;
  v50 = v116;
  v51 = v121;
  v111 = v28;
  if (v28)
  {
    goto LABEL_16;
  }

  v65 = sub_219BDC0F4();
  v109 = v48;
  v110 = v65;
  v66 = v114;
  MEMORY[0x21CEB2E60](v48, v114);
  v67 = sub_219BDC0F4();
  v108 = *(v49 + 8);
  v108(v26, v51);
  if (v110 == v67)
  {
    return (*(v49 + 56))(v113, 1, 1, v51);
  }

  v110 = sub_219BDC0F4();
  MEMORY[0x21CEB2E60](v109, v66);
  v84 = sub_219BDC0F4();
  v108(v26, v51);
  if (v84 >= v110)
  {
LABEL_16:
    (*(v49 + 16))(v23, v50, v51);
  }

  else
  {
    v85 = sub_219BDC0D4();
    result = sub_219BDC0F4();
    if (__OFSUB__(result, 1))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    MEMORY[0x21CEB2E60](v85, result - 1);
  }

  v52 = v112;
  MEMORY[0x21CEB2E60](v48, v114);
  v53 = sub_219BDC0F4();
  v54 = *(v49 + 8);
  v54(v52, v51);
  MEMORY[0x21CEB2E60](v111, v53);
  LOBYTE(v53) = sub_219BDC0A4();
  v54(v26, v51);
  if (v53)
  {
    result = sub_219BDC0D4();
    v55 = result - 1;
    v56 = v113;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v57 = sub_219BDC0F4();
    MEMORY[0x21CEB2E60](v55, v57);
    v54(v23, v51);
  }

  else
  {
    v56 = v113;
    (*(v49 + 32))(v113, v23, v51);
  }

  return (*(v49 + 56))(v56, 0, 1, v51);
}

uint64_t sub_218A97484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v122 = a1;
  v115 = sub_219BDC104();
  v117 = *(v115 - 8);
  v3 = MEMORY[0x28223BE20](v115);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v107 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v107 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v107 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v107 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v107 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v107 - v25;
  MEMORY[0x28223BE20](v24);
  v31 = &v107 - v27;
  v32 = *v2;
  v116 = *(v2 + 8);
  v33 = *(v2 + 16);
  v34 = *(v2 + 48);
  if (!(v34 >> 6))
  {
    v51 = *(v2 + 16);
    if (v32)
    {
      v52 = v117;
      v53 = *(v117 + 16);
      v54 = v28;
      v112 = v32;
      v55 = v115;
      v53(&v107 - v27, v122, v115);
      MEMORY[0x21CEB2E60](v51, v116);
      v56 = sub_219BDC0F4();
      v57 = *(v52 + 8);
      v57(v54, v55);
      MEMORY[0x21CEB2E60](v112, v56);
      LOBYTE(v56) = sub_219BDC0A4();
      v57(v26, v55);
      if (v56)
      {
        result = sub_219BDC0D4();
        v58 = result + 1;
        if (__OFADD__(result, 1))
        {
          goto LABEL_77;
        }

        v59 = sub_219BDC0F4();
        v60 = v114;
        MEMORY[0x21CEB2E60](v58, v59);
        v57(v31, v55);
        v52 = v117;
        return (*(v52 + 56))(v60, 0, 1, v55);
      }
    }

    else
    {
      v67 = v122;
      v68 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v51, v116);
      v69 = sub_219BDC0F4();
      v70 = v117;
      v55 = v115;
      (*(v117 + 8))(v26, v115);
      if (v68 >= v69)
      {
        v95 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        if (__OFADD__(result, 1))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        MEMORY[0x21CEB2E60](v95, result + 1);
        v52 = v117;
      }

      else
      {
        (*(v70 + 16))(v31, v67, v55);
        v52 = v70;
      }
    }

    v60 = v114;
    (*(v52 + 32))(v114, v31, v55);
    return (*(v52 + 56))(v60, 0, 1, v55);
  }

  v35 = *(v2 + 24);
  v36 = *(v2 + 32);
  v37 = *(v2 + 40);
  if (v34 >> 6 == 1)
  {
    v109 = v29;
    v110 = v30;
    v111 = v28;
    v118[0] = v32;
    v118[1] = v116;
    v118[2] = v33;
    v119 = v35;
    v120 = v36;
    v121 = v37;
    v38 = v32;
    v113 = v33;
    MEMORY[0x21CEB2E60]();
    v39 = sub_219BDC0F4();
    v40 = v117;
    v41 = *(v117 + 8);
    v42 = v115;
    v41(v26, v115);
    if (v39 == v120 && v119 != 1 && v38 != 0)
    {
      v65 = v114;
      (*(v40 + 16))(v114, v122, v42);
      return (*(v40 + 56))(v65, 0, 1, v42);
    }

    v107 = v120;
    v108 = v119;
    v45 = v122;
    if (v38 || (v46 = sub_219BDC0F4(), MEMORY[0x21CEB2E60](v113, v116), v47 = sub_219BDC0F4(), v41(v26, v115), v48 = v46 < v47, v45 = v122, v48))
    {
      (*(v40 + 16))(v20, v45, v115);
    }

    else
    {
      v97 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      if (__OFADD__(result, 1))
      {
        goto LABEL_87;
      }

      MEMORY[0x21CEB2E60](v97, result + 1);
    }

    if (v108 == 1 && v107 < sub_219BDC0F4())
    {
      v49 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      if (__OFSUB__(result, 1))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      MEMORY[0x21CEB2E60](v49, result - 1);
      v50 = v115;
      v41(v20, v115);
    }

    else
    {
      v72 = *(v40 + 32);
      v50 = v115;
      v72(v110, v20, v115);
    }

    result = sub_21998542C(v118, v26);
    if (!__OFSUB__(v38, 1))
    {
      MEMORY[0x21CEB2E60](v113, v116);
      v73 = sub_219BDC0F4();
      v41(v17, v50);
      v74 = v111;
      MEMORY[0x21CEB2E60](v38 - 1, v73);
      v75 = sub_219BDC0A4();
      v41(v74, v50);
      v41(v26, v50);
      if ((v75 & 1) == 0)
      {
        (*(v117 + 32))(v109, v110, v50);
        goto LABEL_50;
      }

      v76 = v110;
      result = sub_219BDC0D4();
      v77 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v78 = sub_219BDC0F4();
        MEMORY[0x21CEB2E60](v77, v78);
        v41(v76, v50);
LABEL_50:
        if (sub_219BDC0F4() != v107)
        {
          goto LABEL_55;
        }

        result = sub_219BDC0D4();
        if (!__OFSUB__(v108, 1))
        {
          if (result == v108 - 1)
          {
            v90 = v109;
            result = sub_219BDC0D4();
            v91 = result - 1;
            if (!__OFSUB__(result, 1))
            {
              v92 = sub_219BDC0F4();
              v93 = v114;
              MEMORY[0x21CEB2E60](v91, v92);
              v41(v90, v50);
              v94 = v117;
              return (*(v94 + 56))(v93, 0, 1, v50);
            }

            goto LABEL_84;
          }

LABEL_55:
          v94 = v117;
          v93 = v114;
          (*(v117 + 32))(v114, v109, v50);
          return (*(v94 + 56))(v93, 0, 1, v50);
        }

        goto LABEL_79;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v112 = v32;
  v108 = v35;
  if (!v32)
  {
    v109 = v37;
    v110 = v8;
    v113 = v33;
    v111 = v28;
    v71 = sub_219BDC0F4();
    v61 = v115;
    if (v71 == v116)
    {
      return (*(v117 + 56))(v114, 1, 1, v115);
    }

    if (v34)
    {
      if (v116 < sub_219BDC0F4())
      {
        v96 = sub_219BDC0D4();
        result = sub_219BDC0F4();
        if (__OFSUB__(result, 1))
        {
LABEL_88:
          __break(1u);
          return result;
        }

        MEMORY[0x21CEB2E60](v96, result - 1);
        v62 = v117;
LABEL_26:
        if (sub_219BDC0F4() == v116 && sub_219BDC0D4() == v112)
        {
          result = sub_219BDC0D4();
          v63 = result - 1;
          if (__OFSUB__(result, 1))
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v64 = sub_219BDC0F4();
          MEMORY[0x21CEB2E60](v63, v64);
          (*(v62 + 8))(v11, v61);
        }

        else
        {
          (*(v62 + 32))(v14, v11, v61);
        }

        if (sub_219BDC0F4() == v108 && sub_219BDC0D4() >= 1)
        {
          result = sub_219BDC0D4();
          v87 = result + 1;
          if (__OFADD__(result, 1))
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v88 = sub_219BDC0F4();
          v89 = v114;
          MEMORY[0x21CEB2E60](v87, v88);
          (*(v62 + 8))(v14, v61);
        }

        else
        {
          v89 = v114;
          (*(v62 + 32))(v114, v14, v61);
        }

        return (*(v62 + 56))(v89, 0, 1, v61);
      }

LABEL_25:
      v62 = v117;
      (*(v117 + 16))(v11, v122, v61);
      goto LABEL_26;
    }

    sub_219985040(0, v116, v36, v109, v5);
    v82 = v117;
    goto LABEL_68;
  }

  v61 = v115;
  if (v34)
  {
    goto LABEL_25;
  }

  v110 = v8;
  v111 = v28;
  v79 = v32;
  v80 = v116;
  v113 = v33;
  v109 = v37;
  sub_219985040(v32, v116, v36, v37, v5);
  MEMORY[0x21CEB2E60](v79, v80);
  v81 = sub_219BDC0A4();
  v82 = v117;
  v83 = *(v117 + 8);
  v83(v26, v61);
  if ((v81 & 1) == 0)
  {
LABEL_68:
    (*(v82 + 32))(v110, v5, v61);
    v86 = v82;
    goto LABEL_69;
  }

  result = sub_219BDC0D4();
  v84 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v85 = sub_219BDC0F4();
  MEMORY[0x21CEB2E60](v84, v85);
  v83(v5, v61);
  v86 = v117;
LABEL_69:
  v98 = v108;
  v99 = v109;
  if (v36 == 1 || (sub_219985040(v112, v116, v36, v109, v26), v100 = v111, MEMORY[0x21CEB2E60](v36, v99), v101 = sub_219BDC0A4(), v102 = *(v86 + 8), v102(v100, v61), v102(v26, v61), (v101 & 1) == 0))
  {
    v106 = v114;
    (*(v86 + 32))(v114, v110, v61, v98);
  }

  else
  {
    v103 = v110;
    result = sub_219BDC0D4();
    v104 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v105 = sub_219BDC0F4();
    v106 = v114;
    MEMORY[0x21CEB2E60](v104, v105);
    v102(v103, v61);
  }

  return (*(v86 + 56))(v106, 0, 1, v61);
}

uint64_t sub_218A98048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v59 = a1;
  v60 = a2;
  sub_218A9DFB4();
  v8 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v46[-v12];
  v14 = sub_219BDC104();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218A9DCC0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v46[-v22];
  result = MEMORY[0x28223BE20](v21);
  v28 = &v46[-v27];
  if (__OFSUB__(v60, 1))
  {
    __break(1u);
    return result;
  }

  v55 = v26;
  v56 = v11;
  v49 = v25;
  v52 = a4;
  v53 = a3;
  v29 = v60 - 1;
  MEMORY[0x21CEB2E60](a4, a3);
  v30 = sub_219BDC0F4();
  v31 = v15[1];
  v60 = v15 + 1;
  v58 = v31;
  v31(v17, v14);
  v51 = v29;
  MEMORY[0x21CEB2E60](v29, v30);
  v50 = v15[7];
  v50(v28, 0, 1, v14);
  v54 = v8;
  v32 = *(v8 + 48);
  v33 = MEMORY[0x277CC9AF8];
  sub_218A9DD24(v59, v13, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  sub_218A9DD24(v28, &v13[v32], &unk_280EE9BB0, v33);
  v59 = v15;
  v34 = v15[6];
  if (v34(v13, 1, v14) != 1)
  {
    sub_218A9DD24(v13, v23, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    if (v34(&v13[v32], 1, v14) == 1)
    {
LABEL_12:
      sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v58(v23, v14);
      return sub_218A9DF0C(v13, sub_218A9DFB4);
    }

    v48 = v34;
    (v59[4])(v17, &v13[v32], v14);
    sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    v47 = sub_219BF53A4();
    v36 = v58;
    v58(v17, v14);
    v37 = MEMORY[0x277CC9AF8];
    sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v35 = v36;
    v36(v23, v14);
    result = sub_218A9DDA4(v13, &unk_280EE9BB0, v37);
    if ((v47 & 1) == 0)
    {
      return result;
    }

LABEL_7:
    MEMORY[0x21CEB2E60](v52, v53);
    v38 = sub_219BDC0F4();
    v35(v17, v14);
    v39 = v55;
    MEMORY[0x21CEB2E60](v51, v38);
    v50(v39, 0, 1, v14);
    v40 = *(v54 + 48);
    v41 = MEMORY[0x277CC9AF8];
    v42 = v56;
    sub_218A9DD24(v57, v56, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    sub_218A9DD24(v39, v42 + v40, &unk_280EE9BB0, v41);
    v43 = v48;
    if (v48(v42, 1, v14) == 1)
    {
      sub_218A9DDA4(v39, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if (v43(v42 + v40, 1, v14) == 1)
      {
        return sub_218A9DDA4(v42, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      }

      v13 = v42;
      return sub_218A9DF0C(v13, sub_218A9DFB4);
    }

    v23 = v49;
    sub_218A9DD24(v42, v49, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    if (v43(v42 + v40, 1, v14) != 1)
    {
      (v59[4])(v17, v42 + v40, v14);
      sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
      sub_219BF53A4();
      v44 = v58;
      v58(v17, v14);
      v45 = MEMORY[0x277CC9AF8];
      sub_218A9DDA4(v39, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v44(v23, v14);
      return sub_218A9DDA4(v42, &unk_280EE9BB0, v45);
    }

    v28 = v39;
    v13 = v42;
    goto LABEL_12;
  }

  sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  if (v34(&v13[v32], 1, v14) == 1)
  {
    v48 = v34;
    sub_218A9DDA4(v13, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v35 = v58;
    goto LABEL_7;
  }

  return sub_218A9DF0C(v13, sub_218A9DFB4);
}

void sub_218A98808()
{
  if (!qword_27CC0D730)
  {
    sub_218A98884();
    _s4ItemCMa_0();
    sub_218A98990();
    v0 = sub_219BF5294();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0D730);
    }
  }
}

void sub_218A98884()
{
  if (!qword_27CC1A9B0)
  {
    sub_219BDC104();
    sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    sub_218A9893C();
    v0 = type metadata accessor for KeyPair();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A9B0);
    }
  }
}

unint64_t sub_218A9893C()
{
  result = qword_27CC1A9C0;
  if (!qword_27CC1A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A9C0);
  }

  return result;
}

unint64_t sub_218A98990()
{
  result = qword_27CC1A9D0;
  if (!qword_27CC1A9D0)
  {
    sub_218A98884();
    sub_218A9DF6C(&qword_280EE9BC8, MEMORY[0x277CC9AF8]);
    sub_218A98A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A9D0);
  }

  return result;
}

unint64_t sub_218A98A40()
{
  result = qword_27CC1A9E0;
  if (!qword_27CC1A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A9E0);
  }

  return result;
}

uint64_t sub_218A98A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v107 = a7;
  v119 = a6;
  v121 = a1;
  sub_218A9DFB4();
  v122 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v109 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v98 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v104 = &v98 - v17;
  MEMORY[0x28223BE20](v16);
  v106 = &v98 - v18;
  sub_218A9DCC0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v105 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v108 = &v98 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v115 = &v98 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v101 = &v98 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v103 = &v98 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v102 = &v98 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v110 = &v98 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v98 - v37;
  v39 = sub_219BDC104();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v98 - v44;
  v112 = a3;
  v114 = a2;
  MEMORY[0x21CEB2E60](a3, a2);
  v46 = sub_219BDC0F4();
  v120 = v40;
  v47 = *(v40 + 8);
  v111 = v45;
  v48 = v39;
  v117 = v47;
  v118 = v40 + 8;
  result = (v47)(v45, v39);
  v116 = a5;
  if (v46 == a5 && a4 != 1)
  {
    v50 = v122;
    if (v121)
    {
      return result;
    }

    goto LABEL_15;
  }

  v50 = v122;
  if (!v121)
  {
    goto LABEL_15;
  }

  sub_218A9DD24(v119, v38, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  v51 = v120 + 48;
  v99 = *(v120 + 48);
  v52 = v99(v38, 1, v48);
  if (v52 == 1)
  {
    sub_218A9DDA4(v38, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v100 = 0;
    v53 = v117;
  }

  else
  {
    v100 = sub_219BDC0F4();
    v53 = v117;
    v117(v38, v48);
  }

  MEMORY[0x21CEB2E60](v112, v114);
  v54 = sub_219BDC0F4();
  v53(v43, v48);
  v50 = v122;
  if (v52 == 1 || v100 != v54)
  {
LABEL_15:
    result = a4 - 2;
    if (!__OFSUB__(a4, 2))
    {
      v121 = a4 - 2;
      MEMORY[0x21CEB2E60]();
      v64 = v120;
      v65 = *(v120 + 56);
      v66 = v48;
      v65(v28, 0, 1, v48);
      v67 = *(v50 + 48);
      v68 = MEMORY[0x277CC9AF8];
      v69 = v113;
      sub_218A9DD24(v119, v113, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      sub_218A9DD24(v28, v69 + v67, &unk_280EE9BB0, v68);
      v70 = *(v64 + 48);
      if (v70(v69, 1, v66) == 1)
      {
        sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v70(v69 + v67, 1, v66) != 1)
        {
          return sub_218A9DF0C(v69, sub_218A9DFB4);
        }

        sub_218A9DDA4(v69, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      }

      else
      {
        sub_218A9DD24(v69, v115, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v70(v69 + v67, 1, v66) == 1)
        {
LABEL_26:
          v78 = v117;
          sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          v78(v115, v66);
          return sub_218A9DF0C(v69, sub_218A9DFB4);
        }

        v71 = v111;
        (*(v120 + 32))(v111, v69 + v67, v66);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        LODWORD(v119) = sub_219BF53A4();
        v72 = v117;
        v117(v71, v66);
        v73 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v72(v115, v66);
        result = sub_218A9DDA4(v69, &unk_280EE9BB0, v73);
        if ((v119 & 1) == 0)
        {
          return result;
        }
      }

      v28 = v108;
      MEMORY[0x21CEB2E60](v121, v116);
      v65(v28, 0, 1, v66);
      v74 = *(v122 + 48);
      v75 = MEMORY[0x277CC9AF8];
      v76 = v109;
      sub_218A9DD24(v107, v109, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      sub_218A9DD24(v28, v76 + v74, &unk_280EE9BB0, v75);
      if (v70(v76, 1, v66) == 1)
      {
        sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v70(v76 + v74, 1, v66) == 1)
        {
          return sub_218A9DDA4(v76, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        }

        v69 = v76;
        return sub_218A9DF0C(v69, sub_218A9DFB4);
      }

      v77 = v105;
      sub_218A9DD24(v76, v105, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if (v70(v76 + v74, 1, v66) != 1)
      {
        v81 = v111;
        (*(v120 + 32))(v111, v76 + v74, v66);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        sub_219BF53A4();
        v82 = v117;
        v117(v81, v66);
        v83 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v28, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v82(v77, v66);
        return sub_218A9DDA4(v76, &unk_280EE9BB0, v83);
      }

      v115 = v77;
      v69 = v76;
      goto LABEL_26;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  result = v121 - 1;
  if (__OFSUB__(v121, 1))
  {
    goto LABEL_45;
  }

  v55 = v110;
  MEMORY[0x21CEB2E60](result, v114);
  v56 = v48;
  v116 = *(v120 + 56);
  v116(v55, 0, 1, v48);
  v57 = *(v50 + 48);
  v58 = MEMORY[0x277CC9AF8];
  v59 = v106;
  sub_218A9DD24(v119, v106, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  sub_218A9DD24(v55, v59 + v57, &unk_280EE9BB0, v58);
  v60 = v99;
  v61 = v99(v59, 1, v48);
  v98 = v51;
  if (v61 == 1)
  {
    sub_218A9DDA4(v55, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v62 = v60(v59 + v57, 1, v48);
    v63 = v117;
    if (v62 == 1)
    {
      result = sub_218A9DDA4(v59, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v79 = v102;
  sub_218A9DD24(v59, v102, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  v80 = v60(v59 + v57, 1, v48);
  v63 = v117;
  if (v80 == 1)
  {
    sub_218A9DDA4(v110, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v63(v79, v48);
LABEL_29:
    result = sub_218A9DF0C(v59, sub_218A9DFB4);
    goto LABEL_35;
  }

  v84 = v117;
  v85 = v79;
  v86 = v111;
  (*(v120 + 32))(v111, v59 + v57, v48);
  sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
  sub_219BF53A4();
  v84(v86, v48);
  v87 = MEMORY[0x277CC9AF8];
  sub_218A9DDA4(v110, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  v88 = v85;
  v63 = v84;
  v84(v88, v48);
  result = sub_218A9DDA4(v59, &unk_280EE9BB0, v87);
LABEL_35:
  if (v121 == 1)
  {
    v89 = v103;
    MEMORY[0x21CEB2E60](1, v114);
    v116(v89, 0, 1, v48);
    v90 = *(v50 + 48);
    v91 = v89;
    v92 = MEMORY[0x277CC9AF8];
    v93 = v104;
    sub_218A9DD24(v119, v104, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v94 = v99;
    sub_218A9DD24(v91, v93 + v90, &unk_280EE9BB0, v92);
    if (v94(v93, 1, v48) == 1)
    {
      sub_218A9DDA4(v91, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if (v94(v93 + v90, 1, v48) == 1)
      {
        return sub_218A9DDA4(v93, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      }
    }

    else
    {
      v95 = v101;
      sub_218A9DD24(v93, v101, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if (v94(v93 + v90, 1, v56) != 1)
      {
        v96 = v111;
        (*(v120 + 32))(v111, v93 + v90, v56);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        sub_219BF53A4();
        v63(v96, v56);
        v97 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v91, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v63(v95, v56);
        return sub_218A9DDA4(v93, &unk_280EE9BB0, v97);
      }

      sub_218A9DDA4(v91, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v63(v95, v56);
    }

    return sub_218A9DF0C(v93, sub_218A9DFB4);
  }

  return result;
}

uint64_t sub_218A99A50@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v289 = a7;
  v275 = a6;
  v290 = a4;
  v280 = a3;
  v285 = a2;
  LODWORD(v286) = a1;
  v9 = *a5;
  v287 = a5[1];
  v288 = v9;
  v282 = sub_219BDC104();
  v284 = *(v282 - 8);
  v10 = MEMORY[0x28223BE20](v282);
  v269 = &v264 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v268 = &v264 - v13;
  MEMORY[0x28223BE20](v12);
  v279 = &v264 - v14;
  sub_218A9DFB4();
  v281 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v266 = &v264 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v265 = &v264 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v277 = &v264 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v276 = &v264 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v274 = &v264 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v272 = &v264 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v264 = &v264 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v271 = &v264 - v31;
  MEMORY[0x28223BE20](v30);
  v273 = &v264 - v32;
  sub_218A9DCC0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v264 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v38 = MEMORY[0x28223BE20](v37);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v270 = &v264 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v278 = &v264 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v267 = &v264 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v264 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v264 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v264 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v56 = MEMORY[0x28223BE20](v55);
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v264 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v264 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = MEMORY[0x28223BE20](&v264 - v63);
  v65 = MEMORY[0x28223BE20](v64);
  v66 = MEMORY[0x28223BE20](v65);
  v67 = MEMORY[0x28223BE20](v66);
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v264 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v264 - v73;
  result = MEMORY[0x28223BE20](v72);
  v88 = &v264 - v87;
  if (*(v290 + 32))
  {
    if (a5[2])
    {
      _s7ContextO6ErrorsOMa();
      sub_218A9DF6C(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
      swift_allocError();
      *v89 = 0xD000000000000063;
      v89[1] = 0x8000000219CE4F10;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v92 = 0;
    v90 = 2;
    LOBYTE(v91) = 1;
    goto LABEL_10;
  }

  if (v286 <= 1u)
  {
    if (v286)
    {
      if ((a5[2] & 1) == 0)
      {
        v94 = *a5;
        v95 = a5[1];
        v118 = *v283;
        v119 = v283[1];
        v120 = *(v283 + 48) >> 6;
        if (v120)
        {
          v93 = v289;
          if (v120 == 1)
          {
            v121 = v283[3];
            v122 = v283[4];
            v123 = *v283;
            v124 = v283[1];
            v125 = v283[2];
            v287 = a5[1];
            v288 = v94;
            result = sub_218A98A94(v123, v124, v125, v121, v122, v285, v280);
            v7 = v126;
            v90 = 0;
            v91 = v127;
            v95 = v287;
            v94 = v288;
            v92 = v91 & 0xFFFFFFFFFFFFFF00;
            *(&v86 + 1) = v128;
          }

          else
          {
            v90 = 0;
            v91 = *MEMORY[0x277D768C8];
            v86 = *(MEMORY[0x277D768C8] + 8);
            v7 = *(MEMORY[0x277D768C8] + 24);
            v92 = *MEMORY[0x277D768C8] & 0xFFFFFFFFFFFFFF00;
          }

          goto LABEL_26;
        }

        v136 = v283[2];
        v287 = a5[1];
        v288 = v94;
        result = sub_218A98048(v285, v118, v119, v136, v280);
        v7 = v137;
        v90 = 0;
        v91 = v138;
        v95 = v287;
        v94 = v288;
        v92 = v91 & 0xFFFFFFFFFFFFFF00;
        *(&v86 + 1) = v139;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v7 = 0;
    if (a5[2])
    {
LABEL_14:
      LOBYTE(v91) = 0;
      v92 = 0;
      v94 = 0uLL;
      v90 = 3;
LABEL_23:
      v95 = 0uLL;
      v86 = 0uLL;
LABEL_25:
      v93 = v289;
      goto LABEL_26;
    }

    v108 = *a5;
    v110 = v283[1];
    v109 = v283[2];
    v111 = *(v283 + 48);
    v287 = a5[1];
    v288 = v108;
    if (!(v111 >> 6))
    {
      MEMORY[0x21CEB2E60](v109, v110);
      v129 = v284;
      v130 = v282;
      (*(v284 + 56))(v54, 0, 1, v282);
      v131 = *(v281 + 48);
      v132 = MEMORY[0x277CC9AF8];
      v133 = v274;
      sub_218A9DD24(v285, v274, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      sub_218A9DD24(v54, v133 + v131, &unk_280EE9BB0, v132);
      v134 = *(v129 + 48);
      if (v134(v133, 1, v130) == 1)
      {
        sub_218A9DDA4(v54, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v135 = v134(v133 + v131, 1, v130);
        v93 = v289;
        if (v135 == 1)
        {
          result = sub_218A9DDA4(v133, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          LOBYTE(v91) = 0;
          v92 = 0;
          v94 = 0uLL;
          v90 = 3;
          v95 = 0uLL;
          v86 = 0uLL;
          goto LABEL_26;
        }
      }

      else
      {
        sub_218A9DD24(v133, v51, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v134(v133 + v131, 1, v130) != 1)
        {
          v210 = v133 + v131;
          v211 = v279;
          (*(v129 + 32))(v279, v210, v130);
          sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
          v212 = sub_219BF53A4();
          v213 = *(v129 + 8);
          v213(v211, v130);
          v214 = MEMORY[0x277CC9AF8];
          sub_218A9DDA4(v54, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          v213(v51, v130);
          v215 = v133;
          v216 = v214;
          goto LABEL_121;
        }

        sub_218A9DDA4(v54, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        (*(v129 + 8))(v51, v130);
        v93 = v289;
      }

      result = sub_218A9DF0C(v133, sub_218A9DFB4);
LABEL_125:
      v90 = 0;
      v91 = *MEMORY[0x277D768C8];
      v86 = *(MEMORY[0x277D768C8] + 8);
      v7 = *(MEMORY[0x277D768C8] + 24);
      v92 = *MEMORY[0x277D768C8] & 0xFFFFFFFFFFFFFF00;
      goto LABEL_11;
    }

    if (v111 >> 6 == 1)
    {
      MEMORY[0x21CEB2E60](v109, v110);
      v112 = v284;
      v113 = v282;
      (*(v284 + 56))(v48, 0, 1, v282);
      v114 = *(v281 + 48);
      v115 = MEMORY[0x277CC9AF8];
      v116 = v276;
      sub_218A9DD24(v285, v276, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      sub_218A9DD24(v48, v116 + v114, &unk_280EE9BB0, v115);
      v117 = *(v112 + 48);
      if (v117(v116, 1, v113) == 1)
      {
        sub_218A9DDA4(v48, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v117(v116 + v114, 1, v113) == 1)
        {
          result = sub_218A9DDA4(v116, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          goto LABEL_100;
        }
      }

      else
      {
        v159 = v267;
        sub_218A9DD24(v116, v267, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v117(v116 + v114, 1, v113) != 1)
        {
          v207 = v279;
          (*(v112 + 32))(v279, v116 + v114, v113);
          sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
          LODWORD(v290) = sub_219BF53A4();
          v208 = *(v112 + 8);
          v208(v207, v113);
          v209 = MEMORY[0x277CC9AF8];
          sub_218A9DDA4(v48, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          v208(v159, v113);
          result = sub_218A9DDA4(v116, &unk_280EE9BB0, v209);
          if ((v290 & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_100:
          v92 = 0;
          v90 = 1;
          LOBYTE(v91) = 1;
          goto LABEL_10;
        }

        sub_218A9DDA4(v48, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        (*(v112 + 8))(v159, v113);
      }

      v160 = v116;
      goto LABEL_62;
    }

    v275 = v36;
    v276 = v79;
    v274 = v78;
    v280 = v77;
    *&v286 = v283[3];
    v146 = v278;
    MEMORY[0x21CEB2E60](0, v110);
    v147 = v284;
    v148 = v282;
    v290 = *(v284 + 56);
    (v290)(v146, 0, 1, v282);
    v149 = *(v281 + 48);
    v150 = MEMORY[0x277CC9AF8];
    v151 = v277;
    sub_218A9DD24(v285, v277, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    sub_218A9DD24(v146, v151 + v149, &unk_280EE9BB0, v150);
    v152 = *(v147 + 48);
    if (v152(v151, 1, v148) == 1)
    {
      sub_218A9DDA4(v146, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v153 = v152;
      if (v152(v151 + v149, 1, v148) == 1)
      {
        result = sub_218A9DDA4(v151, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
LABEL_105:
        v92 = 0;
        LOBYTE(v91) = 1;
        v90 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v170 = v270;
      sub_218A9DD24(v151, v270, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v153 = v152;
      if (v152(v151 + v149, 1, v148) != 1)
      {
        v224 = v151;
        v225 = v284;
        v226 = v224 + v149;
        v227 = v279;
        (*(v284 + 32))(v279, v226, v148);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v228 = sub_219BF53A4();
        v229 = *(v225 + 8);
        v229(v227, v148);
        v230 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v278, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v229(v270, v148);
        result = sub_218A9DDA4(v277, &unk_280EE9BB0, v230);
        if (v228)
        {
          goto LABEL_105;
        }

        goto LABEL_67;
      }

      sub_218A9DDA4(v278, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      (*(v284 + 8))(v170, v148);
    }

    sub_218A9DF0C(v151, sub_218A9DFB4);
LABEL_67:
    if ((v111 & 1) == 0)
    {
      v185 = v280;
      MEMORY[0x21CEB2E60](0, v286);
      v186 = v282;
      (v290)(v185, 0, 1, v282);
      v173 = v186;
      v187 = *(v281 + 48);
      v188 = MEMORY[0x277CC9AF8];
      v176 = v266;
      sub_218A9DD24(v285, v266, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      sub_218A9DD24(v185, v176 + v187, &unk_280EE9BB0, v188);
      if (v153(v176, 1, v186) == 1)
      {
        sub_218A9DDA4(v185, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v153(v176 + v187, 1, v186) != 1)
        {
LABEL_118:
          v93 = v289;
          goto LABEL_119;
        }

        result = sub_218A9DDA4(v176, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v93 = v289;
      }

      else
      {
        v246 = v275;
        sub_218A9DD24(v176, v275, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if (v153(v176 + v187, 1, v186) == 1)
        {
          v93 = v289;
          v248 = v284;
          v247 = v280;
          goto LABEL_117;
        }

        v254 = v284;
        v255 = v176 + v187;
        v256 = v279;
        (*(v284 + 32))(v279, v255, v186);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v257 = sub_219BF53A4();
        v258 = *(v254 + 8);
        v258(v256, v173);
        v259 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v280, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v258(v246, v173);
        result = sub_218A9DDA4(v176, &unk_280EE9BB0, v259);
        v93 = v289;
        if ((v257 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      v92 = 0;
      LOBYTE(v91) = 1;
      v90 = 1;
      goto LABEL_11;
    }

    v171 = v276;
    MEMORY[0x21CEB2E60](0, v286);
    v172 = v282;
    (v290)(v171, 0, 1, v282);
    v173 = v172;
    v174 = *(v281 + 48);
    v175 = MEMORY[0x277CC9AF8];
    v176 = v265;
    sub_218A9DD24(v285, v265, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    sub_218A9DD24(v171, v176 + v174, &unk_280EE9BB0, v175);
    if (v153(v176, 1, v172) == 1)
    {
      sub_218A9DDA4(v171, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if (v153(v176 + v174, 1, v172) == 1)
      {
        result = sub_218A9DDA4(v176, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        goto LABEL_14;
      }

      goto LABEL_118;
    }

    v246 = v274;
    sub_218A9DD24(v176, v274, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    if (v153(v176 + v174, 1, v172) == 1)
    {
      v247 = v276;
      v93 = v289;
      v248 = v284;
LABEL_117:
      sub_218A9DDA4(v247, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      (*(v248 + 8))(v246, v173);
LABEL_119:
      result = sub_218A9DF0C(v176, sub_218A9DFB4);
      goto LABEL_125;
    }

    v249 = v284;
    v250 = v176 + v174;
    v251 = v279;
    (*(v284 + 32))(v279, v250, v172);
    sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    v212 = sub_219BF53A4();
    v252 = *(v249 + 8);
    v252(v251, v173);
    v253 = MEMORY[0x277CC9AF8];
    sub_218A9DDA4(v276, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v252(v246, v173);
    v215 = v176;
    v216 = v253;
LABEL_121:
    result = sub_218A9DDA4(v215, &unk_280EE9BB0, v216);
    v93 = v289;
    if (v212)
    {
      LOBYTE(v91) = 0;
      v92 = 0;
      v94 = 0uLL;
      v90 = 3;
      v95 = 0uLL;
      v86 = 0uLL;
      goto LABEL_26;
    }

    goto LABEL_125;
  }

  if (v286 - 2 < 2)
  {
    if ((a5[2] & 1) == 0)
    {
      v90 = 0;
      v91 = *MEMORY[0x277D768C8];
      v86 = *(MEMORY[0x277D768C8] + 8);
      v7 = *(MEMORY[0x277D768C8] + 24);
LABEL_8:
      v92 = v91 & 0xFFFFFFFFFFFFFF00;
LABEL_10:
      v93 = v289;
LABEL_11:
      v95 = v287;
      v94 = v288;
LABEL_26:
      *v93 = v94;
      *(v93 + 16) = v95;
      *(v93 + 32) = v92 | v91;
      *(v93 + 40) = v86;
      *(v93 + 56) = v7;
      *(v93 + 64) = v90;
      return result;
    }

LABEL_22:
    LOBYTE(v91) = 0;
    v92 = 0;
    v94 = 0uLL;
    v90 = 3;
    v7 = 0;
    goto LABEL_23;
  }

  if (v286 != 4)
  {
    v90 = 0;
    v91 = *MEMORY[0x277D768C8];
    v86 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 24);
    v92 = *MEMORY[0x277D768C8] & 0xFFFFFFFFFFFFFF00;
    v94 = 0uLL;
    v95 = 0uLL;
    goto LABEL_25;
  }

  if (a5[2])
  {
    goto LABEL_22;
  }

  v96 = *a5;
  v97 = a5[1];
  v99 = v283[1];
  v98 = v283[2];
  v100 = *(v283 + 48) >> 6;
  v287 = v97;
  v288 = v96;
  if (!v100)
  {
    MEMORY[0x21CEB2E60](v98, v99);
    v140 = v284;
    v141 = v282;
    (*(v284 + 56))(v88, 0, 1, v282);
    v142 = *(v281 + 48);
    v143 = MEMORY[0x277CC9AF8];
    v144 = v273;
    sub_218A9DD24(v285, v273, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    sub_218A9DD24(v88, v144 + v142, &unk_280EE9BB0, v143);
    v145 = *(v140 + 48);
    if (v145(v144, 1, v141) == 1)
    {
      sub_218A9DDA4(v88, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if (v145(v144 + v142, 1, v141) == 1)
      {
        result = sub_218A9DDA4(v144, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
LABEL_103:
        LOBYTE(v91) = 0;
        v92 = 0;
        v90 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      sub_218A9DD24(v144, v74, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if (v145(v144 + v142, 1, v141) != 1)
      {
        v217 = v144;
        v218 = v284;
        v219 = v217 + v142;
        v220 = v279;
        (*(v284 + 32))(v279, v219, v141);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v221 = sub_219BF53A4();
        v222 = *(v218 + 8);
        v222(v220, v141);
        v223 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v88, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v222(v74, v141);
        result = sub_218A9DDA4(v217, &unk_280EE9BB0, v223);
        if (v221)
        {
          goto LABEL_103;
        }

LABEL_63:
        v90 = 0;
        v91 = *MEMORY[0x277D768C8];
        v86 = *(MEMORY[0x277D768C8] + 8);
        v7 = *(MEMORY[0x277D768C8] + 24);
        v92 = *MEMORY[0x277D768C8] & 0xFFFFFFFFFFFFFF00;
        goto LABEL_10;
      }

      sub_218A9DDA4(v88, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      (*(v284 + 8))(v74, v141);
    }

    v160 = v144;
LABEL_62:
    result = sub_218A9DF0C(v160, sub_218A9DFB4);
    goto LABEL_63;
  }

  if (v100 != 1)
  {
    *&v286 = v80;
    v280 = v76;
    v290 = result;
    sub_218A9DD24(v285, v59, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v154 = v284;
    v155 = *(v284 + 48);
    v156 = v282;
    v157 = (v155)(v59, 1, v282);
    v283 = v155;
    if (v157 == 1)
    {
      v158 = *(v154 + 56);
      v158(v62, 1, 1, v156);
    }

    else
    {
      v177 = v154;
      v178 = *(v154 + 32);
      v179 = v269;
      v178(v269, v59, v156);
      v180 = *(v275 + 16);
      v181 = (v275 + 32);
      do
      {
        if (!v180)
        {
          v178(v62, v179, v156);
          v154 = v177;
          goto LABEL_88;
        }

        v182 = *v181++;
        --v180;
      }

      while (v182 != v99);
      result = sub_219BDC0D4();
      v183 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_133;
      }

      v184 = sub_219BDC0F4();
      MEMORY[0x21CEB2E60](v183, v184);
      v154 = v177;
      (*(v177 + 8))(v179, v156);
LABEL_88:
      v158 = *(v154 + 56);
      v158(v62, 0, 1, v156);
      v155 = v283;
    }

    if ((v155)(v62, 1, v156) == 1)
    {
      v198 = v155;
      v199 = v290;
      sub_218A9DD24(v285, v290, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if ((v198)(v62, 1, v156) != 1)
      {
        sub_218A9DDA4(v62, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      }
    }

    else
    {
      v199 = v290;
      (*(v154 + 32))(v290, v62, v156);
      v158(v199, 0, 1, v156);
    }

    v200 = v286;
    MEMORY[0x21CEB2E60](1, v99);
    v201 = v154;
    v158(v200, 0, 1, v156);
    v202 = *(v281 + 48);
    v203 = MEMORY[0x277CC9AF8];
    v204 = v272;
    sub_218A9DD24(v199, v272, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    sub_218A9DD24(v200, v204 + v202, &unk_280EE9BB0, v203);
    v205 = v283;
    if ((v283)(v204, 1, v156) == 1)
    {
      sub_218A9DDA4(v200, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if ((v205)(v204 + v202, 1, v156) == 1)
      {
        sub_218A9DDA4(v204, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        goto LABEL_129;
      }
    }

    else
    {
      v206 = v280;
      sub_218A9DD24(v204, v280, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if ((v205)(v204 + v202, 1, v156) != 1)
      {
        v242 = v279;
        (*(v201 + 32))(v279, v204 + v202, v156);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v243 = sub_219BF53A4();
        v244 = *(v201 + 8);
        v244(v242, v156);
        v245 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v286, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v244(v206, v156);
        sub_218A9DDA4(v204, &unk_280EE9BB0, v245);
        if ((v243 & 1) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_129;
      }

      sub_218A9DDA4(v286, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      (*(v201 + 8))(v206, v156);
    }

    sub_218A9DF0C(v204, sub_218A9DFB4);
    goto LABEL_112;
  }

  *&v286 = v82;
  v280 = v81;
  v278 = v85;
  v276 = v84;
  v290 = v83;
  sub_218A9DD24(v285, v70, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  v101 = v284;
  v102 = *(v284 + 48);
  v103 = v282;
  v285 = v284 + 48;
  v104 = v102(v70, 1, v282);
  v283 = v102;
  if (v104 == 1)
  {
    sub_218A9DDA4(v70, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v105 = *(v101 + 56);
    v106 = (v101 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v107 = v290;
    v105(v290, 1, 1, v103);
LABEL_81:
    v189 = v286;
    MEMORY[0x21CEB2E60](v98, v99);
    v277 = v106;
    v105(v189, 0, 1, v103);
    v190 = *(v281 + 48);
    v191 = MEMORY[0x277CC9AF8];
    v192 = v107;
    v193 = v271;
    sub_218A9DD24(v192, v271, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    sub_218A9DD24(v189, v193 + v190, &unk_280EE9BB0, v191);
    v194 = v283;
    if ((v283)(v193, 1, v103) == 1)
    {
      sub_218A9DDA4(v189, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      if ((v194)(v193 + v190, 1, v103) == 1)
      {
        sub_218A9DDA4(v193, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v103 = v282;
        v195 = v284;
        v196 = v279;
        goto LABEL_107;
      }

      goto LABEL_86;
    }

    v282 = v105;
    v197 = v280;
    sub_218A9DD24(v193, v280, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    if ((v194)(v193 + v190, 1, v103) == 1)
    {
      sub_218A9DDA4(v286, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      (*(v284 + 8))(v197, v103);
LABEL_86:
      sub_218A9DF0C(v193, sub_218A9DFB4);
      goto LABEL_112;
    }

    v196 = v279;
    (*(v284 + 32))(v279, v193 + v190, v103);
    sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    LODWORD(v275) = sub_219BF53A4();
    v231 = *(v284 + 8);
    v231(v196, v103);
    v232 = MEMORY[0x277CC9AF8];
    sub_218A9DDA4(v286, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v231(v197, v103);
    v233 = v232;
    v195 = v284;
    sub_218A9DDA4(v193, &unk_280EE9BB0, v233);
    v105 = v282;
    if (v275)
    {
LABEL_107:
      MEMORY[0x21CEB2E60](v98, v99);
      v234 = sub_219BDC0D4();
      v235 = *(v195 + 8);
      v235(v196, v103);
      if (!v234)
      {
        MEMORY[0x21CEB2E60](v98, v99);
        v236 = sub_219BDC0F4();
        v235(v196, v103);
        v237 = v278;
        MEMORY[0x21CEB2E60](1, v236);
        v105(v237, 0, 1, v103);
        v238 = *(v281 + 48);
        v239 = MEMORY[0x277CC9AF8];
        v240 = v264;
        sub_218A9DD24(v290, v264, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        sub_218A9DD24(v237, v240 + v238, &unk_280EE9BB0, v239);
        v241 = v283;
        if ((v283)(v240, 1, v103) == 1)
        {
          sub_218A9DDA4(v237, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          if ((v241)(v240 + v238, 1, v103) == 1)
          {
            sub_218A9DDA4(v240, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
            goto LABEL_112;
          }

          goto LABEL_128;
        }

        v260 = v276;
        sub_218A9DD24(v240, v276, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        if ((v241)(v240 + v238, 1, v103) == 1)
        {
          sub_218A9DDA4(v278, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          v235(v260, v103);
LABEL_128:
          sub_218A9DF0C(v240, sub_218A9DFB4);
          goto LABEL_129;
        }

        (*(v284 + 32))(v196, v240 + v238, v103);
        sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v261 = sub_219BF53A4();
        v235(v196, v103);
        v262 = v260;
        v263 = MEMORY[0x277CC9AF8];
        sub_218A9DDA4(v278, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v235(v262, v103);
        sub_218A9DDA4(v240, &unk_280EE9BB0, v263);
        if (v261)
        {
          goto LABEL_112;
        }
      }

LABEL_129:
      result = sub_218A9DDA4(v290, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      LOBYTE(v91) = 0;
      v92 = 0;
      v90 = 1;
      goto LABEL_10;
    }

LABEL_112:
    v91 = *MEMORY[0x277D768C8];
    v286 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 24);
    result = sub_218A9DDA4(v290, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    v86 = v286;
    v90 = 0;
    goto LABEL_8;
  }

  v161 = v268;
  MEMORY[0x21CEB2E60](v98, v99);
  v162 = sub_219BDC0F4();
  v163 = *(v101 + 8);
  v163(v161, v103);
  v164 = *(v275 + 16);
  v165 = (v275 + 32);
  v107 = v290;
  do
  {
    if (!v164)
    {
      v169 = v284;
      v103 = v282;
      (*(v284 + 16))(v290, v70, v282);
      goto LABEL_80;
    }

    v166 = *v165++;
    --v164;
  }

  while (v166 != v162);
  result = sub_219BDC0D4();
  v167 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v168 = sub_219BDC0F4();
    v107 = v290;
    MEMORY[0x21CEB2E60](v167, v168);
    v103 = v282;
    v169 = v284;
LABEL_80:
    v163(v70, v103);
    v105 = *(v169 + 56);
    v106 = (v169 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v105(v107, 0, 1, v103);
    goto LABEL_81;
  }

  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_218A9C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v30 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v25 = v5 + 64;
    result = sub_219BF7174();
    v8 = result;
    v9 = 0;
    v26 = *(v5 + 36);
    v21 = v5 + 72;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v25 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (v26 != *(v5 + 36))
      {
        goto LABEL_25;
      }

      v28 = *(*(v5 + 56) + 8 * v8);

      sub_218A8F9BC(&v28, a2, a3, a4, &v27, &v29);

      if (v4)
      {
      }

      v12 = v6;
      sub_219BF73D4();
      v13 = v5;
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      v10 = 1 << *(v5 + 32);
      if (v8 >= v10)
      {
        goto LABEL_26;
      }

      v14 = *(v25 + 8 * v11);
      if ((v14 & (1 << v8)) == 0)
      {
        goto LABEL_27;
      }

      if (v26 != *(v5 + 36))
      {
        goto LABEL_28;
      }

      v15 = v14 & (-2 << (v8 & 0x3F));
      if (v15)
      {
        v10 = __clz(__rbit64(v15)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v11 << 6;
        v17 = v11 + 1;
        v18 = (v21 + 8 * v11);
        while (v17 < (v10 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_2187BC250(v8, v26, 0);
            v10 = __clz(__rbit64(v19)) + v16;
            goto LABEL_19;
          }
        }

        result = sub_2187BC250(v8, v26, 0);
LABEL_19:
        v5 = v13;
      }

      ++v9;
      v8 = v10;
      v6 = v12;
      v4 = 0;
      if (v9 == v12)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void sub_218A9C328(uint64_t *a1, void *a2)
{
  sub_218A9DCC0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  v154 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v145 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  v12 = *(*a1 + 32);
  v11 = *(*a1 + 40);
  v13 = *(*a1 + 48);
  v15 = *(*a1 + 56);
  v14 = *(*a1 + 64);
  v16 = *(*a1 + 72);
  v17 = *(*a1 + 80);
  v18 = (*(*a1 + 49) << 8) | ((*(*a1 + 53) | (*(*a1 + 55) << 16)) << 40) | v13;
  v155 = v7;
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v150 = v13;
      *&v151 = v12;
      v152 = v10;
      v153 = v9;
      *(&v151 + 1) = v11;
      v54 = qword_280E8D8A0;
      *(&v149 + 1) = a2;
      if (v54 != -1)
      {
        swift_once();
      }

      *&v149 = qword_280F61768;
      LODWORD(v148) = sub_219BF6214();
      sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_219C0D560;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      LOBYTE(v160) = *(v8 + 81);
      sub_219BF7484();
      v56 = aBlock;
      v57 = MEMORY[0x277D837D0];
      *(v55 + 56) = MEMORY[0x277D837D0];
      v58 = sub_2186FC3BC();
      *(v55 + 64) = v58;
      *(v55 + 32) = v56;
      v59 = MEMORY[0x277CC9AF8];
      sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath, v6, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v60 = sub_219BF5484();
      *(v55 + 96) = v57;
      *(v55 + 104) = v58;
      *(v55 + 72) = v60;
      *(v55 + 80) = v61;
      v62 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 32);
      v63 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 16);
      aBlock = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame);
      v157 = v63;
      LOBYTE(v158) = v62;
      sub_218A9DCC0(0, &qword_280E8DB18, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
      v64 = sub_219BF5484();
      *(v55 + 136) = v57;
      *(v55 + 144) = v58;
      *(v55 + 112) = v64;
      *(v55 + 120) = v65;
      sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath, v6, &unk_280EE9BB0, v59);
      v66 = sub_219BF5484();
      *(v55 + 176) = v57;
      *(v55 + 184) = v58;
      *(v55 + 152) = v66;
      *(v55 + 160) = v67;
      v160 = 0;
      v161 = 0xE000000000000000;
      *&aBlock = v153;
      *(&aBlock + 1) = v152;
      v157 = v151;
      type metadata accessor for CGRect(0);
      sub_219BF7484();
      v68 = v160;
      v69 = v161;
      *(v55 + 216) = v57;
      *(v55 + 224) = v58;
      *(v55 + 192) = v68;
      *(v55 + 200) = v69;
      sub_219BE5314();

      v70 = objc_allocWithZone(MEMORY[0x277D753D0]);

      v71 = [v70 initWithControlPoint1:0.33 controlPoint2:{0.0, 0.83, 1.0}];
      v48 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v71 timingParameters:0.2];

      v158 = sub_218A9E07C;
      v159 = v8;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_218793E0C;
      *(&v157 + 1) = &block_descriptor_23;
      v72 = _Block_copy(&aBlock);

      [v48 addAnimations_];
      _Block_release(v72);

      v73 = *(&v149 + 1);
      if (v150)
      {

        v74 = sub_2190380A8(sub_218A9E078, v8);

        v75 = swift_allocObject();
        *(v75 + 16) = v73;
        v158 = sub_218A9E0B0;
        v159 = v75;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v157 = sub_218A8F318;
        *(&v157 + 1) = &block_descriptor_37;
        v76 = _Block_copy(&aBlock);
        v77 = v73;

        [v74 addCompletion_];
        _Block_release(v76);
        dispatch_group_enter(v77);
        [v74 startAnimationAfterDelay_];
      }

      v78 = swift_allocObject();
      *(v78 + 16) = v73;
      v158 = sub_218A9E0B0;
      v159 = v78;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_218A8F318;
      *(&v157 + 1) = &block_descriptor_30_1;
      v79 = _Block_copy(&aBlock);
      v80 = v73;

      [v48 addCompletion_];
      _Block_release(v79);
      dispatch_group_enter(v80);
      [v48 startAnimationAfterDelay_];
    }

    else
    {
      if (v12 | v10 | v9 | v11 | v15 | v14 | v16 | v18)
      {
        v111 = qword_280E8D8A0;
        v153 = a2;
        if (v111 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_219C0B8C0;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        LOBYTE(v160) = *(v8 + 81);
        sub_219BF7484();
        v113 = aBlock;
        v114 = MEMORY[0x277D837D0];
        *(v112 + 56) = MEMORY[0x277D837D0];
        v115 = sub_2186FC3BC();
        *(v112 + 64) = v115;
        *(v112 + 32) = v113;
        sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath, v6, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v116 = sub_219BF5484();
        *(v112 + 96) = v114;
        *(v112 + 104) = v115;
        *(v112 + 72) = v116;
        *(v112 + 80) = v117;
        v118 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 32);
        v119 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 16);
        aBlock = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame);
        v157 = v119;
        LOBYTE(v158) = v118;
        sub_218A9DCC0(0, &qword_280E8DB18, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
        v120 = sub_219BF5484();
        *(v112 + 136) = v114;
        *(v112 + 144) = v115;
        *(v112 + 112) = v120;
        *(v112 + 120) = v121;
        sub_219BE5314();

        v122 = objc_allocWithZone(MEMORY[0x277D753D0]);

        v123 = [v122 initWithControlPoint1:0.33 controlPoint2:{0.0, 0.83, 1.0}];
        v48 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v123 timingParameters:0.2];

        v158 = sub_218A9DB0C;
        v159 = v8;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v157 = sub_218793E0C;
        *(&v157 + 1) = &block_descriptor_63;
        v124 = _Block_copy(&aBlock);

        [v48 addAnimations_];
        _Block_release(v124);

        v125 = swift_allocObject();
        v126 = v153;
        *(v125 + 16) = v153;
        v158 = sub_218A9E0B0;
        v159 = v125;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v127 = &block_descriptor_70;
      }

      else
      {
        v128 = qword_280E8D8A0;
        v153 = a2;
        if (v128 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_219C0B8C0;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        LOBYTE(v160) = *(v8 + 81);
        sub_219BF7484();
        v130 = aBlock;
        v131 = MEMORY[0x277D837D0];
        *(v129 + 56) = MEMORY[0x277D837D0];
        v132 = sub_2186FC3BC();
        *(v129 + 64) = v132;
        *(v129 + 32) = v130;
        sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath, v6, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        v133 = sub_219BF5484();
        *(v129 + 96) = v131;
        *(v129 + 104) = v132;
        *(v129 + 72) = v133;
        *(v129 + 80) = v134;
        v135 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 32);
        v136 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 16);
        aBlock = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame);
        v157 = v136;
        LOBYTE(v158) = v135;
        sub_218A9DCC0(0, &qword_280E8DB18, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
        v137 = sub_219BF5484();
        *(v129 + 136) = v131;
        *(v129 + 144) = v132;
        *(v129 + 112) = v137;
        *(v129 + 120) = v138;
        sub_219BE5314();

        v139 = objc_allocWithZone(MEMORY[0x277D753D0]);

        v140 = [v139 initWithControlPoint1:0.33 controlPoint2:{0.0, 0.83, 1.0}];
        v48 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v140 timingParameters:0.2];

        v158 = sub_218A9DB04;
        v159 = v8;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v157 = sub_218793E0C;
        *(&v157 + 1) = &block_descriptor_53;
        v141 = _Block_copy(&aBlock);

        [v48 addAnimations_];
        _Block_release(v141);

        v142 = swift_allocObject();
        v126 = v153;
        *(v142 + 16) = v153;
        v158 = sub_218A9E0B0;
        v159 = v142;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v127 = &block_descriptor_60;
      }

      *&v157 = sub_218A8F318;
      *(&v157 + 1) = v127;
      v143 = _Block_copy(&aBlock);
      v144 = v126;

      [v48 addCompletion_];
      _Block_release(v143);
      dispatch_group_enter(v144);
      [v48 startAnimationAfterDelay_];
    }
  }

  else
  {
    v152 = v10;
    v153 = v9;
    *&v151 = v12;
    *(&v151 + 1) = v11;
    if (v17)
    {
      v150 = v13;
      v81 = qword_280E8D8A0;
      *(&v149 + 1) = a2;
      if (v81 != -1)
      {
        swift_once();
      }

      *&v149 = qword_280F61768;
      LODWORD(v148) = sub_219BF6214();
      sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_219C0D560;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      LOBYTE(v160) = *(v8 + 81);
      sub_219BF7484();
      v83 = aBlock;
      v84 = MEMORY[0x277D837D0];
      *(v82 + 56) = MEMORY[0x277D837D0];
      v85 = sub_2186FC3BC();
      *(v82 + 64) = v85;
      *(v82 + 32) = v83;
      v86 = MEMORY[0x277CC9AF8];
      sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath, v6, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v87 = sub_219BF5484();
      *(v82 + 96) = v84;
      *(v82 + 104) = v85;
      *(v82 + 72) = v87;
      *(v82 + 80) = v88;
      v89 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 32);
      v90 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 16);
      aBlock = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame);
      v157 = v90;
      LOBYTE(v158) = v89;
      sub_218A9DCC0(0, &qword_280E8DB18, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
      v91 = sub_219BF5484();
      *(v82 + 136) = v84;
      *(v82 + 144) = v85;
      *(v82 + 112) = v91;
      *(v82 + 120) = v92;
      sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath, v6, &unk_280EE9BB0, v86);
      v93 = sub_219BF5484();
      *(v82 + 176) = v84;
      *(v82 + 184) = v85;
      *(v82 + 152) = v93;
      *(v82 + 160) = v94;
      v160 = 0;
      v161 = 0xE000000000000000;
      *&aBlock = v153;
      *(&aBlock + 1) = v152;
      v95 = v151;
      v157 = v151;
      type metadata accessor for CGRect(0);
      sub_219BF7484();
      v96 = v160;
      v97 = v161;
      *(v82 + 216) = v84;
      *(v82 + 224) = v85;
      *(v82 + 192) = v96;
      *(v82 + 200) = v97;
      sub_219BE5314();

      v98 = swift_allocObject();
      *(v98 + 16) = v8;
      v99 = v150 & 1;
      *(v98 + 24) = v150 & 1;
      v100 = objc_allocWithZone(MEMORY[0x277D753D0]);

      v101 = [v100 initWithControlPoint1:0.33 controlPoint2:{0.0, 0.83, 1.0}];
      v48 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v101 timingParameters:0.2];

      v158 = sub_218A9DA84;
      v159 = v98;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_218793E0C;
      *(&v157 + 1) = &block_descriptor_14;
      v102 = _Block_copy(&aBlock);

      [v48 addAnimations_];
      _Block_release(v102);

      v103 = swift_allocObject();
      *(v103 + 16) = v99;
      v104 = v152;
      v105 = v153;
      *(v103 + 24) = v8;
      *(v103 + 32) = v105;
      *(v103 + 40) = v104;
      *(v103 + 48) = v95;
      *(v103 + 64) = sub_218A9DA7C;
      *(v103 + 72) = v155;
      v158 = sub_218A9DA90;
      v159 = v103;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_218A8F318;
      *(&v157 + 1) = &block_descriptor_14_0;
      v106 = _Block_copy(&aBlock);

      [v48 addCompletion_];
      _Block_release(v106);
      v107 = swift_allocObject();
      v108 = *(&v149 + 1);
      *(v107 + 16) = *(&v149 + 1);
      v158 = sub_218A9DAA8;
      v159 = v107;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_218A8F318;
      *(&v157 + 1) = &block_descriptor_20;
      v109 = _Block_copy(&aBlock);
      v110 = v108;

      [v48 addCompletion_];
      _Block_release(v109);
      dispatch_group_enter(v110);
      [v48 startAnimationAfterDelay_];
    }

    else
    {
      v146 = v15;
      *&v149 = v14;
      *(&v149 + 1) = v16;
      v19 = qword_280E8D8A0;
      v150 = a2;
      if (v19 != -1)
      {
        swift_once();
      }

      v148 = qword_280F61768;
      v147 = sub_219BF6214();
      sub_218A9DCC0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_219C12A40;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      LOBYTE(v160) = *(v8 + 81);
      sub_219BF7484();
      v21 = aBlock;
      v22 = MEMORY[0x277D837D0];
      *(v20 + 56) = MEMORY[0x277D837D0];
      v23 = sub_2186FC3BC();
      *(v20 + 64) = v23;
      *(v20 + 32) = v21;
      v24 = MEMORY[0x277CC9AF8];
      sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath, v6, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v25 = sub_219BF5484();
      *(v20 + 96) = v22;
      *(v20 + 104) = v23;
      *(v20 + 72) = v25;
      *(v20 + 80) = v26;
      v27 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 32);
      v28 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 16);
      aBlock = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame);
      v157 = v28;
      LOBYTE(v158) = v27;
      sub_218A9DCC0(0, &qword_280E8DB18, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
      v29 = sub_219BF5484();
      *(v20 + 136) = v22;
      *(v20 + 144) = v23;
      *(v20 + 112) = v29;
      *(v20 + 120) = v30;
      sub_218A9DD24(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath, v6, &unk_280EE9BB0, v24);
      v31 = sub_219BF5484();
      *(v20 + 176) = v22;
      *(v20 + 184) = v23;
      *(v20 + 152) = v31;
      *(v20 + 160) = v32;
      v33 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame + 32);
      v34 = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame + 16);
      aBlock = *(v8 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame);
      v157 = v34;
      LOBYTE(v158) = v33;
      v35 = sub_219BF5484();
      *(v20 + 216) = v22;
      *(v20 + 224) = v23;
      *(v20 + 192) = v35;
      *(v20 + 200) = v36;
      v160 = 0;
      v161 = 0xE000000000000000;
      v37 = v146;
      *&aBlock = v18;
      *(&aBlock + 1) = v146;
      v38 = *(&v149 + 1);
      v39 = v149;
      v157 = v149;
      type metadata accessor for UIEdgeInsets(0);
      sub_219BF7484();
      v40 = v160;
      v41 = v161;
      *(v20 + 256) = v22;
      *(v20 + 264) = v23;
      *(v20 + 232) = v40;
      *(v20 + 240) = v41;
      sub_219BE5314();

      v42 = swift_allocObject();
      v44 = v152;
      v43 = v153;
      *(v42 + 16) = v8;
      *(v42 + 24) = v43;
      v45 = v151;
      *(v42 + 32) = v44;
      *(v42 + 40) = v45;
      *(v42 + 56) = v18;
      *(v42 + 64) = v37;
      *(v42 + 72) = v39;
      *(v42 + 80) = v38;
      v46 = objc_allocWithZone(MEMORY[0x277D753D0]);

      v47 = [v46 initWithControlPoint1:0.33 controlPoint2:{0.0, 0.83, 1.0}];
      v48 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v47 timingParameters:0.2];

      v158 = sub_218A9DAB0;
      v159 = v42;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_218793E0C;
      *(&v157 + 1) = &block_descriptor_43;
      v49 = _Block_copy(&aBlock);

      [v48 addAnimations_];
      _Block_release(v49);

      v50 = swift_allocObject();
      v51 = v150;
      *(v50 + 16) = v150;
      v158 = sub_218A9E0B0;
      v159 = v50;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_218A8F318;
      *(&v157 + 1) = &block_descriptor_50;
      v52 = _Block_copy(&aBlock);
      v53 = v51;

      [v48 addCompletion_];
      _Block_release(v52);
      dispatch_group_enter(v53);
      [v48 startAnimationAfterDelay_];
    }
  }
}

id sub_218A9DAB0()
{
  v1 = *(*(v0 + 16) + 88);
  v2 = UIEdgeInsetsInsetRect(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return [v1 setFrame_];
}

id sub_218A9DB54()
{
  v1 = *(v0 + 88);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

void sub_218A9DB94()
{
  if (!qword_27CC1A9F0)
  {
    sub_219BDC104();
    sub_2186E3374();
    sub_218A9DF6C(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    sub_218A9DC50();
    v0 = type metadata accessor for KeyPair();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A9F0);
    }
  }
}

unint64_t sub_218A9DC50()
{
  result = qword_280E8F830;
  if (!qword_280E8F830)
  {
    sub_2186E3374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F830);
  }

  return result;
}

void sub_218A9DCC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218A9DD24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218A9DCC0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218A9DDA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218A9DCC0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218A9DE14(uint64_t a1, uint64_t a2)
{
  sub_218A9DCC0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A9DEA8(uint64_t a1, uint64_t a2)
{
  sub_218A9DB94();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A9DF0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A9DF6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218A9DFB4()
{
  if (!qword_280EE9BA0)
  {
    sub_218A9DCC0(255, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE9BA0);
    }
  }
}

char *sub_218A9E0B4()
{
  v1 = sub_219BF2124();
  MEMORY[0x28223BE20](v1 - 8);
  v22 = sub_219BF14C4();
  v2 = *(v22 - 8);
  v3 = MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  sub_219BF20F4();
  sub_219BF14A4();
  v8 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_2191F7664(v9 > 1, v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v13 = *(v2 + 32);
  v12 = v2 + 32;
  v11 = v13;
  v14 = (*(v12 + 48) + 32) & ~*(v12 + 48);
  v15 = *(v12 + 40);
  v16 = v7;
  v17 = v22;
  v13(&v8[v14 + v15 * v10], v16, v22);
  if (*(v0 + 40))
  {
    sub_219BF20F4();
    sub_219BF14A4();
    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_2191F7664(v18 > 1, v19 + 1, 1, v8);
    }

    *(v8 + 2) = v19 + 1;
    v11(&v8[v14 + v19 * v15], v5, v17);
  }

  return v8;
}

uint64_t sub_218A9E318()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218A9E388()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219BF5524();
  if (*(v1 + 40))
  {
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_219BF7AC4();
  }

  return sub_219BF7AE4();
}

uint64_t sub_218A9E410()
{
  v1 = *v0;
  sub_219BF5524();
  if (!*(v1 + 40))
  {
    return sub_219BF7AC4();
  }

  sub_219BF7AC4();

  return sub_219BF5524();
}

uint64_t sub_218A9E494()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219BF5524();
  if (*(v1 + 40))
  {
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_219BF7AC4();
  }

  return sub_219BF7AE4();
}

id sub_218A9E518()
{
  result = sub_218A9E560(1);
  qword_27CC0D748 = result;
  return result;
}

id sub_218A9E53C()
{
  result = sub_218A9E560(0);
  qword_27CC0D750 = result;
  return result;
}

id sub_218A9E560(int a1)
{
  v18 = a1;
  v17 = sub_219BDBE34();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBF94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_219BDBF34();
  v13 = sub_219BDBEE4();
  (*(v9 + 8))(v11, v8);
  [v12 setCalendar_];

  sub_219BDC074();
  v14 = sub_219BDC064();
  (*(v5 + 8))(v7, v4);
  [v12 setTimeZone_];

  sub_219BDBDF4();
  v15 = sub_219BDBDB4();
  (*(v1 + 8))(v3, v17);
  [v12 setLocale_];

  [v12 setDateStyle_];
  [v12 setDoesRelativeDateFormatting_];
  return v12;
}

id sub_218A9E824()
{
  result = sub_218A9E844();
  qword_27CC0D758 = result;
  return result;
}

id sub_218A9E844()
{
  v18 = sub_219BDBE34();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BDC084();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBF94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_219BDBF34();
  v12 = sub_219BDBEE4();
  (*(v8 + 8))(v10, v7);
  [v11 setCalendar_];

  sub_219BDC074();
  v13 = sub_219BDC064();
  (*(v4 + 8))(v6, v3);
  [v11 setTimeZone_];

  sub_219BDBDF4();
  v14 = sub_219BDBDB4();
  (*(v0 + 8))(v2, v18);
  [v11 setLocale_];

  v15 = sub_219BF53D4();
  [v11 setLocalizedDateFormatFromTemplate_];

  return v11;
}

unint64_t sub_218A9EB2C()
{
  result = qword_27CC0D760;
  if (!qword_27CC0D760)
  {
    type metadata accessor for SportsDateHeader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D760);
  }

  return result;
}

uint64_t sub_218A9EB80(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_219BF78F4(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[5];
    v8 = a2[5];
    result = (v7 | v8) == 0;
    if (v7 && v8 != 0)
    {
      if (a1[4] == a2[4] && v7 == v8)
      {
        return 1;
      }

      else
      {

        return sub_219BF78F4();
      }
    }
  }

  return result;
}

void *sub_218A9EC28()
{
  if (qword_27CC07D48 != -1)
  {
    swift_once();
  }

  v0 = qword_27CC0D748;
  v1 = sub_219BDBC04();
  v2 = [v0 stringFromDate_];

  v3 = sub_219BF5414();
  v5 = v4;

  if (qword_27CC07D50 != -1)
  {
    swift_once();
  }

  v6 = qword_27CC0D750;
  v7 = sub_219BDBC04();
  v8 = [v6 stringFromDate_];

  v9 = sub_219BF5414();
  v11 = v10;

  if (v3 == v9 && v5 == v11)
  {
  }

  else
  {
    v12 = sub_219BF78F4();

    if ((v12 & 1) == 0)
    {
      type metadata accessor for SportsDateHeader();
      result = swift_allocObject();
      result[2] = v3;
      result[3] = v5;
      result[4] = 0;
      result[5] = 0;
      return result;
    }
  }

  if (qword_27CC07D58 != -1)
  {
    swift_once();
  }

  v13 = qword_27CC0D758;
  v14 = sub_219BDBC04();
  v15 = [v13 stringFromDate_];

  v16 = sub_219BF5414();
  v18 = v17;

  type metadata accessor for SportsDateHeader();
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v5;
  result[4] = v16;
  result[5] = v18;
  return result;
}

void sub_218A9EE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, uint64_t a19)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(a5 + 16);
  if (a18)
  {
    v20 = 1.79769313e308;
  }

  else
  {
    v20 = a17;
  }

  v21 = objc_allocWithZone(MEMORY[0x277D30EB8]);

  v22 = sub_219BF53D4();
  v23 = [v21 initWithCloudContext:v19 channelID:v22 maxHeadlinesCount:0 maxHeadlinesPerFeed:10 fetchWindow:a8 sectionsCacheTimeToLive:a19 edgeCacheHint:v20];

  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = sub_218846958;
  v24[7] = v18;
  aBlock[4] = sub_218A9F3B8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218846728;
  aBlock[3] = &block_descriptor_15;
  v25 = _Block_copy(aBlock);

  [v23 setFetchCompletionHandler_];
  _Block_release(v25);
  [v23 start];
}

void sub_218A9F020(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, void (*a7)(void))
{
  if (a2)
  {
    sub_2186F20D4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09EC0;
    v12 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v13 = sub_2186FC3BC();
    *(v11 + 64) = v13;
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    v14 = a2;
    sub_2186CFDE4(0, &qword_280E8B580);

    sub_219BF7484();
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 72) = 0;
    *(v11 + 80) = 0xE000000000000000;
    sub_2186C6148(0, &qword_280E8D790);
    v15 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    sub_218A9F3C8();
    v16 = swift_allocError();
    *v17 = a3;
    v17[1] = a4;
    v17[2] = a2;
    v18 = a2;

    a5(v16);
  }

  else
  {
    if (a1)
    {
      v23 = a1;
      a7();
      v20 = v23;
    }

    else
    {
      sub_218A9F3C8();
      v21 = swift_allocError();
      *v22 = a3;
      v22[1] = a4;
      v22[2] = 0x8000000000000000;

      a5(v21);
      v20 = v21;
    }
  }
}