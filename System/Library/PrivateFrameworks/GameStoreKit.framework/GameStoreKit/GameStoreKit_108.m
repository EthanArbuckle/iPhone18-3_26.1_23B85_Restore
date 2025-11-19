uint64_t Action.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Action.init(deserializing:using:)(a1, a2);
  return v4;
}

char *sub_24F10ACF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F10AD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  result = sub_24F928328();
  if ((result & 1) == 0)
  {
    result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
    if (!v3)
    {
      *a3 = result;
      return result;
    }

    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
    sub_24F9285D8();
    (*(v8 + 8))(v10, v7);
    sub_24E60169C(v14, v12, &qword_27F226730);
    if (v13)
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      type metadata accessor for Action();
      sub_24F929EC8();

      sub_24E601704(v14, &qword_27F226730);
      result = __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_24E601704(v14, &qword_27F226730);

      result = sub_24E601704(v12, &qword_27F226730);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t sub_24F10AF2C(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v6, &qword_27F2129B0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  sub_24E8E7708(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t Action.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t sub_24F10B0B4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Action();
  a1[4] = sub_24F10B8A4(&qword_27F216DE8, type metadata accessor for Action);
  *a1 = v3;
}

uint64_t sub_24F10B134@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F10B170@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F2129B0);
}

uint64_t sub_24F10B1DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F10B2D8(uint64_t a1, uint64_t *a2)
{
  result = sub_24F928348();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    if (result == 0xD000000000000014 && 0x800000024FA6C750 == v4 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 2) != 0)
      {
        return result;
      }

      v7 = *a2 | 2;
      goto LABEL_7;
    }

    if (v5 == 0xD000000000000016 && 0x800000024FA6C770 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 4) == 0)
      {
        v7 = *a2 | 4;
LABEL_7:
        *a2 = v7;
      }
    }

    else if (v5 == 0xD000000000000021 && 0x800000024FA6C790 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v7 = *a2 | 8;
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      v9[3] = MEMORY[0x277D837D0];
      v9[0] = v5;
      v9[1] = v6;
      sub_24F928438();
      sub_24E601704(v9, &qword_27F2129B0);
      sub_24F92A5B8();
    }
  }

  return result;
}

uint64_t _sSo26ASKActionPresentationStyleV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_24F9282B8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_24F928388();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_24E601704(v4, &qword_27F2213B0);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    MEMORY[0x28223BE20](v10);
    *(&v13 - 2) = &v14;
    sub_24F92ABE8();
    v11 = sub_24F928388();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t type metadata accessor for Action()
{
  result = qword_27F239678;
  if (!qword_27F239678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_24F10B828@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = static Action.makeInstance(byDeserializing:using:)(a1, *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24F10B8A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F10B8EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F2129B0);
}

void sub_24F10B964()
{
  sub_24F928AD8();
  if (v0 <= 0x3F)
  {
    sub_24E61C938();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t LayoutMarginsAware<>.layoutFrame.getter()
{
  [v0 frame];
  [v0 layoutMargins];

  return sub_24F92C1C8();
}

GameStoreKit::MediaOverlayStyle_optional __swiftcall MediaOverlayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaOverlayStyle.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x737953686374616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_24F10BD48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 0x737953686374616DLL;
    v3 = 0xEB000000006D6574;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1802658148;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 0x737953686374616DLL;
    v7 = 0xEB000000006D6574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1802658148;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F10BE50()
{
  result = qword_27F239688;
  if (!qword_27F239688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239688);
  }

  return result;
}

uint64_t sub_24F10BEA4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F10BF44()
{
  sub_24F92B218();
}

uint64_t sub_24F10BFD0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F10C078(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 0x737953686374616DLL;
    v4 = 0xEB000000006D6574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1802658148;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TopChartsPage.__allocating_init(genreId:ageBandId:segments:initialSegmentIndex:title:categoriesButtonTitle:categories:pageRefreshPolicy:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int (*a8)(void, void, void), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a8;
  v71 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v20 - 8);
  v69 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v72 = &v68 - v23;
  MEMORY[0x28223BE20](v24);
  v73 = &v68 - v25;
  v76 = sub_24F928818();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v77 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v75 = &v68 - v28;
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  *v30 = a1;
  v30[1] = a2;
  v31 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  *v31 = a3;
  v31[1] = a4;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments) = a5;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex) = a6;
  v32 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v33 = v70;
  v34 = v71;
  *v32 = a7;
  v32[1] = v33;
  v35 = (v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  *v35 = a9;
  v35[1] = a10;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories) = v34;
  if (a5 >> 62)
  {
    v36 = sub_24F92C738();
  }

  else
  {
    v36 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = &OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v38 = &OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent;
  v39 = v75;
  v40 = v77;
  if (!v36)
  {
    sub_24F928808();
    v46 = 0;
    v43 = *(v74 + 16);
    v47 = v76;
    goto LABEL_13;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {

    v41 = MEMORY[0x253052270](0, a5);
  }

  else
  {
    if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v41 = *(a5 + 32);
  }

  v42 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v43 = *(v74 + 16);
  v43(v39, v41 + v42, v76);

  if ((a5 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x253052270](0, a5);

    v46 = *(v45 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();
    swift_unknownObjectRelease();
LABEL_12:
    v47 = v76;
    v40 = v77;
LABEL_13:
    v37 = a13;
    v43(v40, v39, v47);
    v49 = v73;
    sub_24E90A7EC(a13, v73);
    *(v29 + 16) = a12;
    v43((v29 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v40, v47);
    *(v29 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v46;
    v50 = v46;
    v51 = v72;
    sub_24E90A7EC(v49, v72);
    v38 = sub_24F9285B8();
    v52 = *(v38 - 1);
    v70 = *(v52 + 48);
    v71 = v52;
    if (v70(v51, 1, v38) == 1)
    {

      sub_24E90A85C(a13);
      sub_24E90A85C(v49);
      v53 = *(v74 + 8);
      v53(v40, v47);
      v53(v75, v47);
      v54 = v51;
      goto LABEL_21;
    }

    v55 = qword_27F2105F0;

    v68 = v50;
    if (v55 == -1)
    {
LABEL_16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v56, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      v57 = v72;
      sub_24F9285C8();
      v58 = v78;
      v59 = v73;
      if (v78)
      {
      }

      v60 = *(v71 + 8);
      v60(v57, v38);
      v61 = v76;
      if (!v58)
      {

        sub_24E90A85C(v37);
        sub_24E90A85C(v59);
        v65 = *(v74 + 8);
        v65(v77, v61);
        v65(v75, v61);
        return v29;
      }

      v62 = v69;
      sub_24E90A7EC(v59, v69);
      if (v70(v62, 1, v38) != 1)
      {
        sub_24ECDF110();

        sub_24E90A85C(v37);
        sub_24E90A85C(v59);
        v66 = v62;
        v67 = *(v74 + 8);
        v67(v77, v61);
        v67(v75, v61);
        v60(v66, v38);
        return v29;
      }

      sub_24E90A85C(v37);
      sub_24E90A85C(v59);
      v63 = v62;
      v64 = *(v74 + 8);
      v64(v77, v61);
      v64(v75, v61);
      v54 = v63;
LABEL_21:
      sub_24E90A85C(v54);
      return v29;
    }

LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(a5 + 32);

    v46 = *(v48 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t TopChartsPage.init(genreId:ageBandId:segments:initialSegmentIndex:title:categoriesButtonTitle:categories:pageRefreshPolicy:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a8;
  v75 = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v21 - 8);
  v74 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v76 = &v72 - v24;
  MEMORY[0x28223BE20](v25);
  v77 = &v72 - v26;
  v27 = sub_24F928818();
  v80 = *(v27 - 8);
  v81 = v27;
  MEMORY[0x28223BE20](v27);
  v78 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v72 - v30;
  v32 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  *v32 = a1;
  v32[1] = a2;
  v33 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  *v33 = a3;
  v33[1] = a4;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments) = a5;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex) = a6;
  v34 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v35 = v79;
  *v34 = a7;
  v34[1] = v35;
  v36 = (v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  *v36 = a9;
  v36[1] = a10;
  v79 = v13;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories) = v75;
  v82 = &v72 - v30;
  if (a5 >> 62)
  {
    v37 = sub_24F92C738();
    v31 = v82;
  }

  else
  {
    v37 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = &OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v39 = v78;
  if (!v37)
  {
    v46 = v31;
    sub_24F928808();
    v45 = 0;
    v47 = v81;
    v42 = *(v80 + 16);
    goto LABEL_13;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {

    v40 = MEMORY[0x253052270](0, a5);
  }

  else
  {
    if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v40 = *(a5 + 32);
  }

  v41 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v42 = *(v80 + 16);
  v42(v82, v40 + v41, v81);

  if ((a5 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x253052270](0, a5);

    v45 = *(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();
    swift_unknownObjectRelease();
LABEL_12:
    v47 = v81;
    v46 = v82;
LABEL_13:
    v42(v39, v46, v47);
    v49 = v77;
    sub_24E90A7EC(a13, v77);
    v50 = v79;
    *(v79 + 16) = a12;
    v42((v50 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v39, v47);
    *(v50 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v45;
    v51 = v76;
    sub_24E90A7EC(v49, v76);
    v38 = sub_24F9285B8();
    v75 = *(v38 - 1);
    v73 = *(v75 + 48);
    if (v73(v51, 1, v38) == 1)
    {
      v52 = v47;

      sub_24E90A85C(a13);
      sub_24E90A85C(v49);
      v53 = *(v80 + 8);
      v53(v39, v52);
      v53(v82, v52);
      v54 = v51;
      goto LABEL_21;
    }

    a3 = a13;
    v55 = qword_27F2105F0;

    v72 = v45;
    if (v55 == -1)
    {
LABEL_16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v56, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      v57 = v76;
      sub_24F9285C8();
      v58 = v83;
      v59 = v77;
      v60 = v78;
      v61 = v75;
      if (v83)
      {
      }

      v62 = *(v61 + 8);
      v62(v57, v38);
      if (!v58)
      {

        sub_24E90A85C(a3);
        sub_24E90A85C(v59);
        v67 = v81;
        v68 = *(v80 + 8);
        v68(v60, v81);
        v68(v82, v67);
        return v79;
      }

      v63 = v74;
      sub_24E90A7EC(v59, v74);
      if (v73(v63, 1, v38) != 1)
      {
        sub_24ECDF110();

        sub_24E90A85C(a3);
        sub_24E90A85C(v59);
        v69 = *(v80 + 8);
        v70 = v63;
        v71 = v81;
        v69(v60, v81);
        v69(v82, v71);
        v62(v70, v38);
        return v79;
      }

      sub_24E90A85C(a3);
      sub_24E90A85C(v59);
      v64 = *(v80 + 8);
      v65 = v63;
      v66 = v81;
      v64(v60, v81);
      v64(v82, v66);
      v54 = v65;
LABEL_21:
      sub_24E90A85C(v54);
      return v79;
    }

LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(a5 + 32);

    v45 = *(v48 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t TopChartsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v142 = sub_24F928818();
  v138 = *(v142 - 8);
  v3 = MEMORY[0x28223BE20](v142);
  v137 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v141 = v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v124 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v125 = v116 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v134 = v116 - v12;
  MEMORY[0x28223BE20](v11);
  v143 = v116 - v13;
  v14 = sub_24F9285B8();
  v146 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v130 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = v116 - v17;
  v18 = sub_24F928388();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v127 = v116 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v126 = v116 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v139 = v116 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v116 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v116 - v31;
  v33 = a1;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v39 = *(v19 + 8);
  v38 = v19 + 8;
  v37 = v39;
  v39(v32, v18);
  v129 = v36;
  if (!v36)
  {
    v81 = sub_24F92AC38();
    sub_24F10DD00(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v82 = 0x644965726E6567;
    v83 = v135;
    v82[1] = 0xE700000000000000;
    v82[2] = v83;
    (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277D22530], v81);
    swift_willThrow();
    (*(v146 + 8))(v145, v14);
    v37(v33, v18);
    return v139;
  }

  v123 = v34;
  v131 = v37;
  v132 = v38;
  v136 = v18;
  v133 = v33;
  v140 = v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  v41 = swift_allocObject();
  *(v41 + 16) = MEMORY[0x277D84F90];
  v147 = v41;
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  v43 = __swift_project_value_buffer(v42, qword_27F22D8D8);
  v44 = v144;
  v116[1] = v43;
  v116[2] = v40;
  sub_24F928528();

  sub_24F928398();
  v122 = sub_24F928348();
  v121 = v45;
  v46 = v30;
  v47 = v136;
  v48 = v131;
  v131(v46, v136);
  sub_24F928398();
  v119 = *(v146 + 16);
  v49 = v130;
  v119(v130, v44, v140);
  type metadata accessor for TopChartSegment();
  sub_24F10DD00(&qword_27F233F50, type metadata accessor for TopChartSegment);
  v50 = v49;
  v117 = sub_24F92B698();
  v51 = v126;
  sub_24F928398();
  v52 = sub_24F928258();
  LOBYTE(v49) = v53;
  v48(v51, v47);
  if (v49)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v55 = v127;
  sub_24F928398();
  v126 = sub_24F928348();
  v120 = v56;
  v48(v55, v47);
  v57 = v128;
  sub_24F928398();
  v127 = sub_24F928348();
  v118 = v58;
  v48(v57, v47);
  v59 = v117;
  sub_24F928398();
  v60 = v140;
  v61 = v119;
  v119(v50, v144, v140);
  type metadata accessor for TopChartCategory();
  sub_24F10DD00(&qword_27F237A68, type metadata accessor for TopChartCategory);
  v62 = sub_24F92B698();
  v63 = v143;
  v61(v143, v145, v60);
  v64 = v60;
  (*(v146 + 56))(v63, 0, 1, v60);
  v65 = swift_allocObject();
  v66 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  v67 = v129;
  *v66 = v123;
  v66[1] = v67;
  v68 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  v69 = v121;
  *v68 = v122;
  v68[1] = v69;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments) = v59;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex) = v54;
  v70 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v71 = v120;
  *v70 = v126;
  v70[1] = v71;
  v72 = (v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  v73 = v118;
  *v72 = v127;
  v72[1] = v73;
  v139 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories) = v62;
  if (v59 >> 62)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v142;
  if (!result)
  {
    v84 = v141;
    sub_24F928808();
    v80 = 0;
    v78 = *(v138 + 16);
    goto LABEL_19;
  }

  if ((v59 & 0xC000000000000001) != 0)
  {

    v76 = MEMORY[0x253052270](0, v59);
    goto LABEL_13;
  }

  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v76 = *(v59 + 32);

LABEL_13:
    v77 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v78 = *(v138 + 16);
    v78(v141, v76 + v77, v142);

    if ((v59 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x253052270](0, v59);

      v80 = *(v79 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = *(v59 + 32);

      v80 = *(v85 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
    }

    v64 = v140;
    v84 = v141;
    v75 = v142;
LABEL_19:
    v86 = v137;
    v78(v137, v84, v75);
    v87 = v134;
    sub_24E90A7EC(v143, v134);
    v88 = v139;
    *(v139 + 2) = 0;
    v78(&v88[OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics], v86, v75);
    *&v88[OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent] = v80;
    v89 = v125;
    sub_24E90A7EC(v87, v125);
    v90 = v146;
    v140 = *(v146 + 48);
    v91 = v140(v89, 1, v64);
    v92 = v133;
    if (v91 == 1)
    {

      v93 = *(v90 + 8);
      v93(v145, v64);
      v131(v92, v136);
      sub_24E90A85C(v87);
      v94 = *(v138 + 8);
      v94(v86, v75);
      v94(v141, v75);
      sub_24E90A85C(v143);
      v93(v144, v64);
      v95 = v89;
LABEL_26:
      sub_24E90A85C(v95);
      return v139;
    }

    v135 = v80;
    sub_24F9285C8();
    v96 = v148;
    if (v148)
    {
    }

    v97 = *(v90 + 8);
    v98 = v89;
    v99 = v64;
    v97(v98, v64);
    v100 = v136;
    v101 = v137;
    v102 = v124;
    if (v96)
    {
      v103 = v134;
      sub_24E90A7EC(v134, v124);
      if (v140(v102, 1, v99) == 1)
      {

        v97(v145, v99);
        v131(v92, v136);
        sub_24E90A85C(v103);
        v104 = *(v138 + 8);
        v105 = v99;
        v106 = v142;
        v104(v137, v142);
        v104(v141, v106);
        sub_24E90A85C(v143);
        v97(v144, v105);
        v95 = v102;
        goto LABEL_26;
      }

      v112 = v92;
      v113 = v99;
      sub_24ECDF110();

      v97(v145, v99);
      v131(v112, v136);
      sub_24E90A85C(v103);
      v114 = *(v138 + 8);
      v115 = v142;
      v114(v137, v142);
      v114(v141, v115);
      sub_24E90A85C(v143);
      v97(v144, v113);
      v110 = v102;
      v111 = v113;
    }

    else
    {

      v97(v145, v99);
      v131(v92, v100);
      sub_24E90A85C(v134);
      v107 = *(v138 + 8);
      v108 = v99;
      v109 = v142;
      v107(v101, v142);
      v107(v141, v109);
      sub_24E90A85C(v143);
      v110 = v144;
      v111 = v108;
    }

    v97(v110, v111);
    return v139;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F10DD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TopChartsPage.genreId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);

  return v1;
}

uint64_t TopChartsPage.ageBandId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);

  return v1;
}

uint64_t TopChartsPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);

  return v1;
}

uint64_t TopChartsPage.categoriesButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);

  return v1;
}

uint64_t sub_24F10DE98()
{
}

uint64_t TopChartsPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartsPage.__deallocating_deinit()
{
  TopChartsPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TopChartsPage()
{
  result = qword_27F239690;
  if (!qword_27F239690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductTextActivityProvider.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductTextActivityProvider.__allocating_init(text:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ProductTextActivityProvider.init(text:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ProductTextActivityProvider.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductTextActivityProvider.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ProductTextActivityProvider.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v20 = *v2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v9 = sub_24F928348();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  if (v11)
  {
    v13 = sub_24F9285B8();
    (*(*(v13 - 8) + 8))(v21, v13);
    v12(a1, v5);
    v3[2] = v9;
    v3[3] = v11;
  }

  else
  {
    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v15 = 1954047348;
    v16 = v20;
    v15[1] = 0xE400000000000000;
    v15[2] = v16;
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D22530], v14);
    swift_willThrow();
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v21, v17);
    v12(a1, v5);
    type metadata accessor for ProductTextActivityProvider();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t ProductTextActivityProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24F10E550@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductTextActivityProvider();
  v7 = swift_allocObject();
  result = ProductTextActivityProvider.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F10E648()
{
  sub_24F113E2C();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F10E684()
{
  result = sub_24F926DF8();
  qword_27F2396A0 = result;
  return result;
}

uint64_t sub_24F10E6C4()
{
  result = sub_24F926DF8();
  qword_27F2396A8 = result;
  return result;
}

uint64_t sub_24F10E700()
{
  result = sub_24F926DF8();
  qword_27F2396B0 = result;
  return result;
}

uint64_t sub_24F10E738()
{
  result = sub_24F926DF8();
  qword_27F2396B8 = result;
  return result;
}

void sub_24F10E770(void *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_24F926E08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F926E18();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v14 = a1;
    sub_24F926DD8();
    (*(v11 + 104))(v13, *MEMORY[0x277CE0FF0], v10);
    sub_24F926E28();

    (*(v11 + 8))(v13, v10);
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v15 = sub_24F926E88();

    (*(v7 + 8))(v9, v6);
    v16 = sub_24F927618();
    v18 = v17;

    v20[24] = 1;
    v20[16] = 0;
    v20[8] = 0;
    v19 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    a3 = 0.0;
  }

  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = v19;
  *(a2 + 24) = a3;
  *(a2 + 32) = 0;
  *(a2 + 40) = a3;
  *(a2 + 48) = 0;
  *(a2 + 56) = v16;
  *(a2 + 64) = v18;
}

__n128 sub_24F10E9F8@<Q0>(void *a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      LOBYTE(v10) = 1;
      v17[25] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397D8);
      sub_24F114588();
      sub_24F924E28();
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    sub_24F926DF8();
    sub_24F927618();

    v14 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0);
    sub_24F11466C(&qword_27F2397E8, &qword_27F2397F0, &unk_24F9CA878, sub_24F1146E8);
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &unk_24F9CA860, sub_24F1144FC);
    sub_24F924E28();
    v12 = v8;
    v13[0] = *v9;
    *(v13 + 9) = *&v9[9];
    v10 = v6;
    v11 = v7;
    v20 = v8;
    *v21 = *v9;
    *&v21[9] = *&v9[9];
    v18 = v6;
    v19 = v7;
    v15 = 0;
    v21[25] = 0;
    sub_24E60169C(&v10, v16, &qword_27F2397D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397D8);
    sub_24F114588();
    sub_24F924E28();

    sub_24E601704(&v10, &qword_27F2397D8);

    goto LABEL_6;
  }

  sub_24F10E770(a1, &v6, 20.0);
  v20 = v8;
  *v21 = *v9;
  *&v21[16] = *&v9[16];
  v18 = v6;
  v19 = v7;
  v14 = 1;
  v21[24] = 1;
  sub_24E60169C(&v6, v16, &qword_27F2397C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0);
  sub_24F11466C(&qword_27F2397E8, &qword_27F2397F0, &unk_24F9CA878, sub_24F1146E8);
  sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &unk_24F9CA860, sub_24F1144FC);
  sub_24F924E28();
  v20 = v12;
  *v21 = v13[0];
  *&v21[9] = *(v13 + 9);
  v18 = v10;
  v19 = v11;
  v15 = 0;
  v21[25] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397D8);
  sub_24F114588();
  sub_24F924E28();
  sub_24E601704(&v6, &qword_27F2397C0);
LABEL_6:
  v20 = v16[2];
  *v21 = *v17;
  *&v21[10] = *&v17[10];
  v18 = v16[0];
  v19 = v16[1];
LABEL_8:
  v4 = *v21;
  *(a3 + 32) = v20;
  *(a3 + 48) = v4;
  *(a3 + 58) = *&v21[10];
  result = v19;
  *a3 = v18;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_24F10EE1C@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v76) = a3;
  v79 = a4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239778);
  MEMORY[0x28223BE20](v78);
  v7 = (v63 - v6);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239780);
  MEMORY[0x28223BE20](v73);
  v74 = v63 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239788);
  MEMORY[0x28223BE20](v77);
  v75 = v63 - v9;
  v71 = sub_24F924258();
  MEMORY[0x28223BE20](v71);
  v11 = (v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_24F926E08();
  v12 = *(v69 - 1);
  MEMORY[0x28223BE20](v69);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F926E18();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195D0);
  MEMORY[0x28223BE20](v70);
  v72 = v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239790);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  if (a1)
  {
    v64 = v24;
    v65 = a2;
    v66 = v63 - v23;
    v67 = v22;
    v68 = v7;
    v63[1] = a1;
    v25 = a1;
    sub_24F926DD8();
    (*(v16 + 104))(v18, *MEMORY[0x277CE0FF0], v15);
    sub_24F926E28();

    (*(v16 + 8))(v18, v15);
    v26 = v69;
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v69);
    v27 = sub_24F926E88();

    (*(v12 + 8))(v14, v26);
    v69 = v25;
    [v25 size];
    if (v28 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (v28 >= v29)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    if (qword_27F210D78 != -1)
    {
      swift_once();
    }

    v32 = (*&qword_27F39D310 + -10.0 + -10.0 - v30 * ((*&qword_27F39D310 + -10.0 + -10.0) / v31)) * -0.5 + 14.0;
    v33 = *(v71 + 20);
    v34 = *MEMORY[0x277CE0118];
    v35 = sub_24F924B38();
    (*(*(v35 - 8) + 104))(v11 + v33, v34, v35);
    *v11 = v32;
    v11[1] = v32;
    v36 = v72;
    v37 = &v72[*(v70 + 36)];
    sub_24E73A8FC(v11, v37);
    *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)) = 256;
    *v36 = v27;
    *(v36 + 1) = 0;
    *(v36 + 8) = 1;
    sub_24F10E9F8(v65, v76, v110);
    v114 = v110[2];
    v115[0] = v111[0];
    *(v115 + 10) = *(v111 + 10);
    v112 = v110[0];
    v113 = v110[1];
    sub_24F9275D8();
    sub_24F9242E8();
    v38 = sub_24F927618();
    v40 = v39;
    v89 = v119;
    v90 = v120;
    v91 = v121;
    v92 = v122;
    v85 = v115[1];
    v86 = v116;
    v87 = v117;
    v88 = v118;
    v81 = v112;
    v82 = v113;
    v83 = v114;
    v84 = v115[0];
    __asm { FMOV            V0.2D, #3.0 }

    v76 = _Q0;
    v93 = _Q0;
    *&v94 = v38;
    *(&v94 + 1) = v39;
    v46 = v36;
    v47 = v64;
    sub_24E6009C8(v46, v64, &qword_27F2195D0);
    v48 = (v47 + *(v67 + 36));
    v49 = v92;
    v48[10] = v91;
    v48[11] = v49;
    v50 = v94;
    v48[12] = v93;
    v48[13] = v50;
    v51 = v88;
    v48[6] = v87;
    v48[7] = v51;
    v52 = v90;
    v48[8] = v89;
    v48[9] = v52;
    v53 = v84;
    v48[2] = v83;
    v48[3] = v53;
    v54 = v86;
    v48[4] = v85;
    v48[5] = v54;
    v55 = v82;
    *v48 = v81;
    v48[1] = v55;
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v99 = v115[1];
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v112;
    v96 = v113;
    v97 = v114;
    v98 = v115[0];
    v107 = v76;
    v108 = v38;
    v109 = v40;
    sub_24E60169C(&v81, &v80, &qword_27F2397B0);
    sub_24E601704(&v95, &qword_27F2397B0);
    v56 = v66;
    sub_24E6009C8(v47, v66, &qword_27F239790);
    sub_24E60169C(v56, v74, &qword_27F239790);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0);
    sub_24F114444();
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &unk_24F9CA860, sub_24F1144FC);
    v57 = v75;
    sub_24F924E28();
    sub_24E60169C(v57, v68, &qword_27F239788);
    swift_storeEnumTagMultiPayload();
    sub_24F11438C();
    sub_24F924E28();

    sub_24E601704(v57, &qword_27F239788);
    return sub_24E601704(v56, &qword_27F239790);
  }

  else if (a2)
  {
    sub_24F10E770(a2, &v95, 20.0);
    v59 = v98;
    v60 = v74;
    *(v74 + 32) = v97;
    *(v60 + 48) = v59;
    *(v60 + 64) = v99;
    v61 = v96;
    *v60 = v95;
    *(v60 + 16) = v61;
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v95, &v81, &qword_27F2397C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2397C0);
    sub_24F114444();
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &unk_24F9CA860, sub_24F1144FC);
    v62 = v75;
    sub_24F924E28();
    sub_24E60169C(v62, v7, &qword_27F239788);
    swift_storeEnumTagMultiPayload();
    sub_24F11438C();
    sub_24F924E28();
    sub_24E601704(&v95, &qword_27F2397C0);
    return sub_24E601704(v62, &qword_27F239788);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    *v7 = sub_24F926DD8();
    swift_storeEnumTagMultiPayload();
    sub_24F11438C();
    return sub_24F924E28();
  }
}

uint64_t sub_24F10F840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239770);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = sub_24F924258();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F114DA0(&qword_27F226F48, MEMORY[0x277CDFC08]);
    return sub_24F924E28();
  }

  else
  {
    v9 = *(v5 + 20);
    v10 = *MEMORY[0x277CE0118];
    v11 = sub_24F924B38();
    (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
    __asm { FMOV            V0.2D, #14.0 }

    *v7 = _Q0;
    sub_24E6EB910(v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_24F114DA0(&qword_27F226F48, MEMORY[0x277CDFC08]);
    sub_24F924E28();
    return sub_24E6EB974(v7);
  }
}

uint64_t sub_24F10FA60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_24F10EE1C(*v1, *(v1 + 8), *(v1 + 16), a1);
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  v4 = *&qword_27F39D310 + -10.0 + -10.0;
  v5 = sub_24F927618();
  v7 = v6;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239750) + 36);
  *v8 = v4;
  *(v8 + 8) = 0;
  *(v8 + 16) = v4;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239758) + 36);
  sub_24F10F840(v3);
  v10 = sub_24F927618();
  v12 = v11;
  v13 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239760) + 36));
  *v13 = v10;
  v13[1] = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239768);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_24F10FBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28);
  v18 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236350);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF30);
  sub_24F924038();
  v17 = *(a1 + 24);
  v29 = v17;
  v30 = sub_24E602068(&unk_27F212AB0, &qword_27F236350);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340);
  sub_24F924038();
  v25 = sub_24F115A14();
  v26 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v24 = sub_24E602068(&qword_27F212A60, &qword_27F223340);
  swift_getWitnessTable();
  v4 = type metadata accessor for TransparentButton();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = *v2;
  v12 = v2[1];
  v20 = v18;
  v21 = v17;
  v22 = v2;

  TransparentButton.init(action:label:)(v11, v12, sub_24F115ACC, v7);
  v13 = swift_getWitnessTable();
  sub_24E7896B8(v7, v4, v13);
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_24E7896B8(v10, v4, v13);
  return v14(v10, v4);
}

uint64_t sub_24F10FF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v49 = a1;
  v50 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236350);
  v5 = sub_24F924038();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = v33 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF30);
  v34 = v5;
  v7 = sub_24F924038();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28);
  v9 = sub_24E602068(&unk_27F212AB0, &qword_27F236350);
  v59 = a3;
  v60 = v9;
  v45 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v33[1] = WitnessTable;
  v11 = sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
  v57 = WitnessTable;
  v58 = v11;
  v37 = v7;
  v38 = swift_getWitnessTable();
  v40 = sub_24F9242F8();
  v12 = sub_24F924038();
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33[0] = v33 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340);
  v14 = sub_24F924038();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v36 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = v33 - v17;
  v18 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  *&v56[38] = v63;
  *&v56[22] = v62;
  *&v56[6] = v61;
  *(v55 + 10) = *v56;
  *&v55[0] = v18;
  WORD4(v55[0]) = 256;
  *(&v55[1] + 10) = *&v56[16];
  *(&v55[2] + 10) = *&v56[32];
  *(&v55[3] + 1) = *(&v63 + 1);
  type metadata accessor for MediaButton();
  v19 = v43;
  sub_24F9268C8();
  v20 = v39;
  v21 = v34;
  sub_24F9260D8();
  (*(v47 + 8))(v19, v21);
  sub_24F927618();
  v22 = sub_24F115A14();
  v23 = v33[0];
  v24 = v37;
  sub_24F926A18();
  (*(v48 + 8))(v20, v24);
  v64[0] = v55[0];
  v64[1] = v55[1];
  v64[2] = v55[2];
  v64[3] = v55[3];
  sub_24E601704(v64, &qword_27F239A28);
  v25 = swift_getWitnessTable();
  v53 = v22;
  v54 = v25;
  v26 = swift_getWitnessTable();
  sub_24F115AD8();
  v27 = v36;
  sub_24F926268();
  (*(v44 + 8))(v23, v12);
  v28 = sub_24E602068(&qword_27F212A60, &qword_27F223340);
  v51 = v26;
  v52 = v28;
  v29 = swift_getWitnessTable();
  v30 = v41;
  sub_24E7896B8(v27, v14, v29);
  v31 = *(v46 + 8);
  v31(v27, v14);
  sub_24E7896B8(v30, v14, v29);
  return (v31)(v30, v14);
}

uint64_t sub_24F110588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239838);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239840);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x3FF0000000000000;
  v6[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239848);
  sub_24F1107D8(0, v2, &v6[*(v10 + 44)]);
  v11 = sub_24F925838();
  v12 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v11)
  {
    v12 = sub_24F925848();
  }

  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24E6009C8(v6, v9, &qword_27F239838);
  v21 = &v9[*(v7 + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  KeyPath = swift_getKeyPath();
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239850) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0) + 28);
  v25 = *MEMORY[0x277CDFA88];
  v26 = sub_24F923F78();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = KeyPath;
  return sub_24E6009C8(v9, a1, &qword_27F239840);
}

uint64_t sub_24F1107D8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v266 = a1;
  v259 = a3;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239858);
  MEMORY[0x28223BE20](v237);
  v5 = (&v234 - v4);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239860);
  MEMORY[0x28223BE20](v236);
  v238 = &v234 - v6;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239868);
  MEMORY[0x28223BE20](v265);
  v239 = &v234 - v7;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239870);
  MEMORY[0x28223BE20](v263);
  v264 = &v234 - v8;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239878);
  MEMORY[0x28223BE20](v270);
  v260 = &v234 - v9;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239880);
  MEMORY[0x28223BE20](v269);
  v11 = (&v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v234 - v13);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239888);
  MEMORY[0x28223BE20](v271);
  v258 = &v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v243 = &v234 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v234 - v19;
  MEMORY[0x28223BE20](v21);
  v268 = &v234 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v234 - v24;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239890);
  MEMORY[0x28223BE20](v262);
  v242 = &v234 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v244 = &v234 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v234 - v30;
  MEMORY[0x28223BE20](v32);
  v251 = &v234 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239898);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v257 = &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v234 - v38;
  MEMORY[0x28223BE20](v40);
  v252 = &v234 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A0);
  MEMORY[0x28223BE20](v42 - 8);
  v256 = &v234 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  __asm { FMOV            V0.2D, #8.0 }

  v272 = _Q0;
  v261 = &v234 - v50;
  v267 = a2;
  v255 = v39;
  v235 = v5;
  v241 = v14;
  v254 = v11;
  v253 = v20;
  if (v266)
  {
    v249 = v35;
    v250 = v34;
    v51 = *(a2 + 8);
    v52 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
    swift_beginAccess();
    v53 = *(v51 + v52);
    if (*(v53 + 16) && (v54 = sub_24E7728EC(12), (v55 & 1) != 0))
    {
      v56 = (*(v53 + 56) + (v54 << 6));
      v58 = v56[2];
      v57 = v56[3];
      v59 = v56[1];
      v278 = *v56;
      v279 = v59;
      v280 = v58;
      v281 = v57;
      swift_endAccess();
      v60 = v278;
      sub_24E8B96C4(&v278, &v274);

      v61 = sub_24F925988();
      v62 = v236;
      v63 = *(v236 + 40);
      v64 = *MEMORY[0x277CE1058];
      v65 = sub_24F926E78();
      v66 = v238;
      (*(*(v65 - 8) + 104))(&v238[v63], v64, v65);
      *v66 = v60;
      sub_24F112674(&v278, v267, v66 + *(v62 + 44), xmmword_24F9CA3E0);
      *(v66 + 16) = v61;
      v67 = *(sub_24F924258() + 20);
      v68 = *MEMORY[0x277CE0118];
      v69 = sub_24F924B38();
      v70 = *(*(v69 - 8) + 104);
      v266 = v68;
      v70(v5 + v67, v68, v69);
      *v5 = v272;
      *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A8) + 36)) = vdupq_n_s64(0x4046000000000000uLL);
      _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      v71 = sub_24F926D08();

      *(v5 + *(v237 + 52)) = v71;
      v72 = v239;
      sub_24E60169C(v5, v239, &qword_27F239858);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398F0);
      sub_24E60169C(v66, v72 + v73[9], &qword_27F239860);
      v74 = v72 + v73[10];
      *v74 = sub_24F923398() & 1;
      *(v74 + 8) = v75;
      *(v74 + 16) = v76 & 1;
      v77 = v72 + v73[11];
      *v77 = swift_getKeyPath();
      *(v77 + 8) = 0;
      if (qword_27F211808 != -1)
      {
        swift_once();
      }

      v78 = qword_27F24E488;
      v79 = sub_24F923398();
      v81 = v80;
      v83 = v82;
      v84 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398E0) + 36);
      *v84 = v78;
      *(v84 + 8) = v79 & 1;
      *(v84 + 16) = v81;
      *(v84 + 24) = v83 & 1;
      LOBYTE(v78) = sub_24F923398();
      v86 = v85;
      LOBYTE(v81) = v87;
      sub_24E601704(v5, &qword_27F239858);
      sub_24E601704(v66, &qword_27F239860);
      v88 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398D0) + 36);
      *v88 = v78 & 1;
      *(v88 + 8) = v86;
      *(v88 + 16) = v81 & 1;
      LOBYTE(v86) = v279;
      KeyPath = swift_getKeyPath();
      v90 = swift_allocObject();
      *(v90 + 16) = v86;
      v91 = (v72 + *(v265 + 36));
      *v91 = KeyPath;
      v91[1] = sub_24E602370;
      v91[2] = v90;
      v92 = v72;
      sub_24E60169C(v72, v264, &qword_27F239868);
      swift_storeEnumTagMultiPayload();
      sub_24F114804();
      sub_24F114A00();
      v93 = v252;
      sub_24F924E28();
      sub_24F114BFC(&v278);
      sub_24E601704(v92, &qword_27F239868);
      v94 = v261;
      a2 = v267;
      v95 = v250;
    }

    else
    {
      swift_endAccess();

      v97 = sub_24F925988();
      v98 = *(v269 + 40);
      v99 = *MEMORY[0x277CE1058];
      v100 = sub_24F926E78();
      (*(*(v100 - 8) + 104))(v14 + v98, v99, v100);
      *v14 = sub_24F114C70;
      v14[1] = v51;
      sub_24F112960(v267, &qword_27F210ED0, &qword_27F2396A0, xmmword_24F9CA3E0);
      v14[2] = v97;
      v101 = *(sub_24F924258() + 20);
      v102 = *MEMORY[0x277CE0118];
      v103 = sub_24F924B38();
      v104 = *(*(v103 - 8) + 104);
      v105 = v260;
      v266 = v102;
      v104(&v260[v101], v102, v103);
      *v105 = v272;
      *(v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A8) + 36)) = vdupq_n_s64(0x4046000000000000uLL);
      _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      v106 = sub_24F926D08();

      *(v105 + *(v270 + 52)) = v106;
      sub_24E60169C(v105, v25, &qword_27F239878);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B0);
      sub_24E60169C(v14, &v25[v107[9]], &qword_27F239880);
      v108 = &v25[v107[10]];
      *v108 = sub_24F923398() & 1;
      *(v108 + 1) = v109;
      v108[16] = v110 & 1;
      v111 = &v25[v107[11]];
      *v111 = swift_getKeyPath();
      v111[8] = 0;
      if (qword_27F211808 != -1)
      {
        swift_once();
      }

      v112 = qword_27F24E488;
      v113 = sub_24F923398();
      v115 = v114;
      v117 = v116;
      v118 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B8) + 36)];
      *v118 = v112;
      v118[8] = v113 & 1;
      *(v118 + 2) = v115;
      v118[24] = v117 & 1;
      LOBYTE(v112) = sub_24F923398();
      v120 = v119;
      LOBYTE(v115) = v121;
      sub_24E601704(v105, &qword_27F239878);
      sub_24E601704(v14, &qword_27F239880);
      v122 = &v25[*(v271 + 36)];
      *v122 = v112 & 1;
      *(v122 + 1) = v120;
      v122[16] = v115 & 1;
      v93 = v252;
      if (*(v51 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath))
      {
        v95 = v250;
        if (*(v51 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier + 8))
        {
          v123 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands;
          swift_beginAccess();
          v124 = sub_24F4D95E8(6, *(v51 + v123)) ^ 1;
        }

        else
        {
          v124 = 1;
        }
      }

      else
      {
        v124 = 1;
        v95 = v250;
      }

      v125 = swift_getKeyPath();
      v126 = swift_allocObject();
      *(v126 + 16) = v124 & 1;
      sub_24E6009C8(v25, v31, &qword_27F239888);
      v127 = &v31[*(v262 + 36)];
      *v127 = v125;
      v127[1] = sub_24E602370;
      v127[2] = v126;
      v128 = v251;
      sub_24E6009C8(v31, v251, &qword_27F239890);
      sub_24E60169C(v128, v264, &qword_27F239890);
      swift_storeEnumTagMultiPayload();
      sub_24F114804();
      sub_24F114A00();
      sub_24F924E28();
      sub_24E601704(v128, &qword_27F239890);
      v94 = v261;
      a2 = v267;
    }

    sub_24E6009C8(v93, v94, &qword_27F239898);
    v249[7](v94, 0, 1, v95);
    v96 = v266;
  }

  else
  {
    (*(v35 + 56))();
    v96 = *MEMORY[0x277CE0118];
  }

  v129 = *(a2 + 8);
  v130 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  if (*(v129 + v130))
  {
    v131 = sub_24F114C50;
  }

  else
  {
    v131 = sub_24F1147A4;
  }

  v132 = sub_24F925988();
  v133 = *(v269 + 40);
  v134 = *MEMORY[0x277CE1048];
  v135 = sub_24F926E78();
  v136 = *(v135 - 8);
  v137 = v254;
  v246 = *(v136 + 104);
  v245 = v136 + 104;
  v246(v254 + v133, v134, v135);
  *v137 = v131;
  v137[1] = v129;
  sub_24F1123F8(a2);
  v137[2] = v132;
  v250 = sub_24F924258();
  v138 = *(v250 + 20);
  v139 = sub_24F924B38();
  v140 = *(v139 - 8);
  v141 = *(v140 + 104);
  v142 = v260;
  v266 = v96;
  v251 = v139;
  v249 = v141;
  v248 = v140 + 104;
  (v141)(&v260[v138], v96);
  *v142 = v272;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398A8);
  *(v142 + *(v247 + 36)) = vdupq_n_s64(0x4046000000000000uLL);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v143 = sub_24F926D08();

  *(v142 + *(v270 + 52)) = v143;
  v144 = v253;
  sub_24E60169C(v142, v253, &qword_27F239878);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B0);
  sub_24E60169C(v137, v144 + v145[9], &qword_27F239880);
  v146 = v144 + v145[10];
  *v146 = sub_24F923398() & 1;
  *(v146 + 8) = v147;
  *(v146 + 16) = v148 & 1;
  v149 = v144 + v145[11];
  *v149 = swift_getKeyPath();
  *(v149 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v150 = qword_27F24E488;
  v151 = sub_24F923398();
  v153 = v152;
  v155 = v154;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398B8);
  v156 = v144 + *(v240 + 36);
  v252 = v150;
  *v156 = v150;
  *(v156 + 8) = v151 & 1;
  *(v156 + 16) = v153;
  *(v156 + 24) = v155 & 1;
  v157 = sub_24F923398();
  v159 = v158;
  v161 = v160;
  sub_24E601704(v142, &qword_27F239878);
  sub_24E601704(v137, &qword_27F239880);
  v162 = v144 + *(v271 + 36);
  *v162 = v157 & 1;
  *(v162 + 8) = v159;
  *(v162 + 16) = v161 & 1;
  sub_24E6009C8(v144, v268, &qword_27F239888);
  v163 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  swift_beginAccess();
  v164 = *(v129 + v163);
  if (*(v164 + 16) && (v165 = sub_24E7728EC(11), (v166 & 1) != 0))
  {
    v167 = (*(v164 + 56) + (v165 << 6));
    v169 = v167[2];
    v168 = v167[3];
    v170 = *v167;
    v275 = v167[1];
    v276 = v169;
    v274 = v170;
    v277 = v168;
    swift_endAccess();
    v171 = *(&v274 + 1);
    v172 = v274;
    sub_24E8B96C4(&v274, v273);

    v173 = sub_24F925988();
    v174 = v236;
    v175 = v238;
    v246(&v238[*(v236 + 40)], *MEMORY[0x277CE1058], v135);
    *v175 = v172;
    v175[1] = v171;
    sub_24F112674(&v274, v267, v175 + *(v174 + 44), xmmword_24F9CA3F0);
    v175[2] = v173;
    v176 = v235;
    (v249)(v235 + *(v250 + 20), v266, v251);
    *v176 = v272;
    *(v176 + *(v247 + 36)) = vdupq_n_s64(0x4046000000000000uLL);
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v177 = sub_24F926D08();

    *(v176 + *(v237 + 52)) = v177;
    v178 = v239;
    sub_24E60169C(v176, v239, &qword_27F239858);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398F0);
    sub_24E60169C(v175, v178 + v179[9], &qword_27F239860);
    v180 = v178 + v179[10];
    *v180 = sub_24F923398() & 1;
    *(v180 + 8) = v181;
    *(v180 + 16) = v182 & 1;
    v183 = v178 + v179[11];
    *v183 = swift_getKeyPath();
    *(v183 + 8) = 0;
    v184 = v252;
    LOBYTE(v180) = sub_24F923398();
    v186 = v185;
    v188 = v187;
    v189 = v178 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398E0) + 36);
    *v189 = v184;
    *(v189 + 8) = v180 & 1;
    *(v189 + 16) = v186;
    *(v189 + 24) = v188 & 1;
    LOBYTE(v184) = sub_24F923398();
    v191 = v190;
    LOBYTE(v186) = v192;
    sub_24E601704(v176, &qword_27F239858);
    sub_24E601704(v175, &qword_27F239860);
    v193 = v178 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2398D0) + 36);
    *v193 = v184 & 1;
    *(v193 + 8) = v191;
    *(v193 + 16) = v186 & 1;
    LOBYTE(v177) = v275;
    v194 = swift_getKeyPath();
    v195 = swift_allocObject();
    *(v195 + 16) = v177;
    v196 = (v178 + *(v265 + 36));
    *v196 = v194;
    v196[1] = sub_24E602370;
    v196[2] = v195;
    v197 = &qword_27F239868;
    sub_24E60169C(v178, v264, &qword_27F239868);
    swift_storeEnumTagMultiPayload();
    sub_24F114804();
    sub_24F114A00();
    v198 = v255;
    sub_24F924E28();
    sub_24F114BFC(&v274);
    v199 = v178;
  }

  else
  {
    swift_endAccess();

    v200 = sub_24F925988();
    v201 = v241;
    v246(v241 + *(v269 + 40), *MEMORY[0x277CE1058], v135);
    *v201 = sub_24F1147CC;
    v201[1] = v129;
    sub_24F112960(v267, &qword_27F210ED8, &qword_27F2396A8, xmmword_24F9CA3F0);
    v201[2] = v200;
    (v249)(v142 + *(v250 + 20), v266, v251);
    *v142 = v272;
    *(v142 + *(v247 + 36)) = vdupq_n_s64(0x4046000000000000uLL);
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v202 = sub_24F926D08();

    *(v142 + *(v270 + 52)) = v202;
    v203 = v243;
    sub_24E60169C(v142, v243, &qword_27F239878);
    sub_24E60169C(v201, v203 + v145[9], &qword_27F239880);
    v204 = v203 + v145[10];
    *v204 = sub_24F923398() & 1;
    *(v204 + 8) = v205;
    *(v204 + 16) = v206 & 1;
    v207 = v203 + v145[11];
    *v207 = swift_getKeyPath();
    *(v207 + 8) = 0;
    v208 = v252;
    v209 = sub_24F923398();
    v210 = v203 + *(v240 + 36);
    *v210 = v208;
    *(v210 + 8) = v209 & 1;
    *(v210 + 16) = v211;
    *(v210 + 24) = v212 & 1;
    LOBYTE(v208) = sub_24F923398();
    v214 = v213;
    v216 = v215;
    sub_24E601704(v142, &qword_27F239878);
    sub_24E601704(v201, &qword_27F239880);
    v217 = v203 + *(v271 + 36);
    *v217 = v208 & 1;
    *(v217 + 8) = v214;
    *(v217 + 16) = v216 & 1;
    if (*(v129 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath))
    {
      v198 = v255;
      if (*(v129 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier + 8))
      {
        v218 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands;
        swift_beginAccess();
        v219 = sub_24F4D95E8(5, *(v129 + v218)) ^ 1;
      }

      else
      {
        v219 = 1;
      }
    }

    else
    {
      v219 = 1;
      v198 = v255;
    }

    v220 = swift_getKeyPath();
    v221 = swift_allocObject();
    *(v221 + 16) = v219 & 1;
    v222 = v242;
    sub_24E6009C8(v203, v242, &qword_27F239888);
    v223 = (v222 + *(v262 + 36));
    *v223 = v220;
    v223[1] = sub_24E600A48;
    v223[2] = v221;
    v197 = &qword_27F239890;
    v224 = v244;
    sub_24E6009C8(v222, v244, &qword_27F239890);
    sub_24E60169C(v224, v264, &qword_27F239890);
    swift_storeEnumTagMultiPayload();
    sub_24F114804();
    sub_24F114A00();
    sub_24F924E28();
    v199 = v224;
  }

  sub_24E601704(v199, v197);
  v225 = v261;
  v226 = v256;
  sub_24E60169C(v261, v256, &qword_27F2398A0);
  v227 = v268;
  v228 = v258;
  sub_24E60169C(v268, v258, &qword_27F239888);
  v229 = v257;
  sub_24E60169C(v198, v257, &qword_27F239898);
  v230 = v198;
  v231 = v259;
  sub_24E60169C(v226, v259, &qword_27F2398A0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239918);
  sub_24E60169C(v228, v231 + *(v232 + 48), &qword_27F239888);
  sub_24E60169C(v229, v231 + *(v232 + 64), &qword_27F239898);
  sub_24E601704(v230, &qword_27F239898);
  sub_24E601704(v227, &qword_27F239888);
  sub_24E601704(v225, &qword_27F2398A0);
  sub_24E601704(v229, &qword_27F239898);
  sub_24E601704(v228, &qword_27F239888);
  return sub_24E601704(v226, &qword_27F2398A0);
}

uint64_t sub_24F1123F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F239938);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - v4;
  v6 = *(a1 + 8);
  v7 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    if (qword_27F210EE0 != -1)
    {
      swift_once();
    }

    v8 = qword_27F2396B0;
  }

  else
  {
    if (qword_27F210EE8 != -1)
    {
      swift_once();
    }

    v8 = qword_27F2396B8;
  }

  *&v16 = v8;
  v9 = MEMORY[0x277CE1088];
  v10 = MEMORY[0x277CE1078];
  sub_24F926B78();
  v11 = *(a1 + 32);
  v16 = *(a1 + 16);
  v17 = v11;
  v18 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8);
  sub_24F923348();
  v16 = v14;
  v17 = v15;
  v14 = xmmword_24F9CA400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v13[0] = v9;
  v13[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  sub_24F9269B8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F112674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v16 = a4;
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239920);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239928);
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - v10;
  v26 = *(a1 + 24);
  v23.n128_u64[0] = v26;

  sub_24F926528();
  sub_24F114C90(&v26);
  v12 = sub_24F114CE4();
  sub_24F926B78();
  sub_24E601704(v8, &qword_27F239920);
  v13 = *(a2 + 32);
  v23 = *(a2 + 16);
  v24 = v13;
  v25 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8);
  sub_24F923348();
  v23 = v21;
  v24 = v22;
  v21 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v19 = v6;
  v20 = v12;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  v14 = v17;
  sub_24F9269B8();

  return (*(v9 + 8))(v11, v14);
}

uint64_t sub_24F112904(uint64_t a1, char a2)
{
  v3 = a2;
  sub_24E608448(MEMORY[0x277D84F90]);
  sub_24EDAD590(&v3);
}

uint64_t sub_24F112960(uint64_t a1, void *a2, unint64_t *a3, __n128 a4)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F239938);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  if (*a2 != -1)
  {
    swift_once();
  }

  v20.n128_u64[0] = *a3;
  v11 = MEMORY[0x277CE1088];
  v12 = MEMORY[0x277CE1078];
  sub_24F926B78();
  v13 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v13;
  v22 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8);
  sub_24F923348();
  v20 = v18;
  v21 = v19;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v16 = v11;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  sub_24F9269B8();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24F112BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_24F924C98();
  *(a3 + 24) = xmmword_24F9CA410;
  *(a3 + 40) = 0x403E000000000000;
  v28 = 0;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8);
  sub_24F926F28();
  v12 = v31;
  v13 = v32;
  *(a3 + 176) = v30;
  *(a3 + 184) = v12;
  *(a3 + 192) = v13;
  v28 = sub_24E6102E8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239808);
  sub_24F926F28();
  v14 = v31;
  *(a3 + 200) = v30;
  *(a3 + 208) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239810);
  v16 = sub_24F91F648();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_24E60169C(v10, v7, &unk_27F22EC30);
  sub_24F926F28();
  sub_24E601704(v10, &unk_27F22EC30);
  v17 = *(v15 + 72);
  *(a3 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v18 = *(v15 + 76);
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  swift_storeEnumTagMultiPayload();
  *a3 = v11;
  *(a3 + 8) = 0x4008000000000000;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0x4020000000000000;
  sub_24F112F04(a1, a3 + 56);
  KeyPath = swift_getKeyPath();
  v20 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239818) + 36);
  *v20 = KeyPath;
  *(v20 + 8) = 1;
  v21 = swift_getKeyPath();
  v22 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239820) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239828) + 28);
  v24 = *MEMORY[0x277CDD6B8];
  v25 = sub_24F923418();
  result = (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  return result;
}

uint64_t sub_24F112F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = (a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
    swift_beginAccess();
    if (v4[1])
    {
      v5 = *v4;
      v6 = v4[1];
    }

    else
    {
      swift_beginAccess();
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
    }

    KeyPath = swift_getKeyPath();
    v36 = swift_getKeyPath();
    v68 = 0;
    v67 = 0;
    v8 = qword_27F210D48;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39D2D8;
    v34 = swift_getKeyPath();
    v10 = (a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];

    v35 = v9;

    v13 = MEMORY[0x277D84F90];
    v37 = KeyPath;
    v38 = v5;
    if (v12)
    {
      v14 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v33 = v6;
        if (qword_27F210D50 != -1)
        {
          swift_once();
        }

        v15 = sub_24F925C98();
        v17 = v16;
        v19 = v18;

        if (qword_27F210D58 != -1)
        {
          swift_once();
        }

        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
        __swift_project_value_buffer(v20, qword_27F39D2E8);
        sub_24E602068(&qword_27F214428, &qword_27F213F10);
        v21 = sub_24F925C58();
        v12 = v22;
        v24 = v23;
        v26 = v25;
        sub_24E600B40(v15, v17, v19 & 1);

        v27 = v24 & 1;
        sub_24E5FD138(v21, v12, v24 & 1);

        KeyPath = v37;
        v28 = v38;
        v6 = v33;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }

      v21 = 0;
      v12 = 0;
    }

    else
    {
      v21 = 0;
    }

    v28 = v5;
    v27 = 0;
    v26 = 0;
LABEL_19:
    *&v39 = v28;
    *(&v39 + 1) = v6;
    LOBYTE(v40) = 0;
    *(&v40 + 1) = *v66;
    DWORD1(v40) = *&v66[3];
    *(&v40 + 1) = v13;
    *&v41 = KeyPath;
    *(&v41 + 1) = 2;
    LOBYTE(v42) = 0;
    *(&v42 + 1) = *v65;
    DWORD1(v42) = *&v65[3];
    *(&v42 + 1) = v36;
    LOBYTE(v43) = 0;
    *(&v43 + 1) = *v64;
    DWORD1(v43) = *&v64[3];
    *(&v43 + 1) = v34;
    v44 = v35;
    v45 = v39;
    v46 = v40;
    v50 = v35;
    v48 = v42;
    v49 = v43;
    v47 = v41;
    sub_24E60169C(&v39, v51, &qword_27F239830);
    sub_24E65D2B4(v21, v12, v27, v26);
    sub_24E65D2F8(v21, v12, v27, v26);
    v29 = v48;
    *(a2 + 32) = v47;
    *(a2 + 48) = v29;
    *(a2 + 64) = v49;
    v30 = v50;
    v31 = v46;
    *a2 = v45;
    *(a2 + 16) = v31;
    *(a2 + 80) = v30;
    *(a2 + 88) = v21;
    *(a2 + 96) = v12;
    *(a2 + 104) = v27;
    *(a2 + 112) = v26;
    sub_24E65D2F8(v21, v12, v27, v26);
    v51[0] = v38;
    v51[1] = v6;
    v52 = 0;
    *v53 = *v66;
    *&v53[3] = *&v66[3];
    v54 = MEMORY[0x277D84F90];
    v55 = v37;
    v56 = 2;
    v57 = 0;
    *v58 = *v65;
    *&v58[3] = *&v65[3];
    v59 = v36;
    v60 = 0;
    *&v61[3] = *&v64[3];
    *v61 = *v64;
    v62 = v34;
    v63 = v35;
    return sub_24E601704(v51, &qword_27F239830);
  }

  type metadata accessor for MediaPlayer(0);
  sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer);
  result = sub_24F9243C8();
  __break(1u);
  return result;
}

uint64_t sub_24F113404@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v42 = sub_24F925508();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239700);
  MEMORY[0x28223BE20](v41);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239708);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - v12;
  v55[0] = *(a1 + 8);
  v13 = *(&v55[0] + 1);
  v14 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  swift_beginAccess();
  v15 = *(v13 + v14);
  swift_beginAccess();
  v16 = *(v13 + 32);
  sub_24E60169C(v55, &v49, &qword_27F239710);
  v17 = v16;
  v18 = v15;
  v19 = sub_24EDAE168();
  if (!v19)
  {
    if (*a1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 3;
    }
  }

  *&v49 = v15;
  *(&v49 + 1) = v16;
  LOBYTE(v50) = v19;
  v53 = *(a1 + 24);
  v54 = *(a1 + 32);
  v20 = swift_allocObject();
  v21 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a1 + 32);
  sub_24E60169C(v55, v52, &qword_27F239710);
  sub_24E60169C(&v53, v52, &qword_27F223A10);
  sub_24F11401C();
  v22 = v48;
  sub_24F9262B8();

  type metadata accessor for MediaPlayer(0);
  sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer);
  *&v49 = sub_24F9243D8();
  *(&v49 + 1) = v23;
  sub_24F9254E8();
  sub_24F114070();
  v24 = v44;
  sub_24F926678();
  (*(v3 + 8))(v5, v42);

  *(v24 + *(v41 + 36)) = 0;
  v42 = sub_24F923C28();
  v41 = v25;
  sub_24F9233A8();
  v26 = v51;
  v40 = v49;
  v39 = v50;
  v27 = v43;
  v28 = *(v43 + 16);
  v29 = v45;
  v28(v45, v22, v9);
  v30 = v47;
  sub_24E60169C(v24, v47, &qword_27F239700);
  v31 = v9;
  v32 = v46;
  v28(v46, v29, v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239728);
  sub_24E60169C(v30, &v32[*(v33 + 48)], &qword_27F239700);
  v34 = &v32[*(v33 + 64)];
  v35 = v41;
  *v34 = v42;
  *(v34 + 1) = v35;
  v36 = v39;
  *(v34 + 1) = v40;
  *(v34 + 2) = v36;
  *(v34 + 6) = v26;

  sub_24E601704(v24, &qword_27F239700);
  v37 = *(v27 + 8);
  v37(v48, v31);

  sub_24E601704(v30, &qword_27F239700);
  return (v37)(v29, v31);
}

uint64_t sub_24F1139EC@<X0>(_WORD *a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12 = v3;
  v13 = *(v1 + 32);
  *a1 = 256;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396E0) + 40);
  *v4 = sub_24F924C88();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396E8) + 44)];
  *v5 = sub_24F9249A8();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396F0);
  sub_24F113404(&v11, &v5[*(v6 + 44)]);
  v7 = v12;
  type metadata accessor for MediaPlayer(0);
  sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer);
  v8 = sub_24F922F98();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2396F8) + 36));
  *v9 = v8;
  v9[1] = v7;
}

double sub_24F113B34@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying;
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying))
  {
    v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying);
  }

  else
  {
    if (qword_27F2106F0 != -1)
    {
      swift_once();
    }

    v5 = qword_27F39C840;
  }

  if (*(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath) && *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier + 8))
  {

    if (!*(a1 + v4))
    {
      if (qword_27F2106F0 != -1)
      {
        swift_once();
      }
    }

    type metadata accessor for MediaPlayer(0);
    sub_24F114DA0(&unk_27F23B820, type metadata accessor for MediaPlayer);

    sub_24F923C28();
    swift_getKeyPath();
  }

  else
  {
  }

  sub_24F113D3C();
  sub_24F924E28();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 33) = v10;
  return result;
}

unint64_t sub_24F113D3C()
{
  result = qword_27F2396C0;
  if (!qword_27F2396C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2396C0);
  }

  return result;
}

uint64_t sub_24F113D90@<X0>(_BYTE *a1@<X8>)
{
  sub_24F113E2C();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

unint64_t sub_24F113E2C()
{
  result = qword_27F2396C8;
  if (!qword_27F2396C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2396C8);
  }

  return result;
}

uint64_t sub_24F113E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F113ED8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_24F113F30()
{
  result = qword_27F2396D0;
  if (!qword_27F2396D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2396D8);
    sub_24F113D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2396D0);
  }

  return result;
}

uint64_t sub_24F113FD8()
{

  sub_24E62A5EC(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_24F11401C()
{
  result = qword_27F239718;
  if (!qword_27F239718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239718);
  }

  return result;
}

unint64_t sub_24F114070()
{
  result = qword_27F239720;
  if (!qword_27F239720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239720);
  }

  return result;
}

uint64_t sub_24F1140D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_24F114130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24F114190(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24F1141EC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24F114254()
{
  result = qword_27F239730;
  if (!qword_27F239730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2396F8);
    sub_24E602068(&qword_27F239738, &qword_27F2396E0);
    sub_24E602068(&qword_27F239740, &qword_27F239748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239730);
  }

  return result;
}

unint64_t sub_24F11438C()
{
  result = qword_27F239798;
  if (!qword_27F239798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239788);
    sub_24F114444();
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &unk_24F9CA860, sub_24F1144FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239798);
  }

  return result;
}

unint64_t sub_24F114444()
{
  result = qword_27F2397A0;
  if (!qword_27F2397A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239790);
    sub_24E704A58();
    sub_24E602068(&qword_27F2397A8, &qword_27F2397B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397A0);
  }

  return result;
}

unint64_t sub_24F1144FC()
{
  result = qword_27F2397C8;
  if (!qword_27F2397C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2397D0);
    sub_24E6E97A8();
    sub_24E60444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397C8);
  }

  return result;
}

unint64_t sub_24F114588()
{
  result = qword_27F2397E0;
  if (!qword_27F2397E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2397D8);
    sub_24F11466C(&qword_27F2397E8, &qword_27F2397F0, &unk_24F9CA878, sub_24F1146E8);
    sub_24F11466C(&qword_27F2397B8, &qword_27F2397C0, &unk_24F9CA860, sub_24F1144FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397E0);
  }

  return result;
}

uint64_t sub_24F11466C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1146E8()
{
  result = qword_27F2397F8;
  if (!qword_27F2397F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239800);
    sub_24E60444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2397F8);
  }

  return result;
}

unint64_t sub_24F114804()
{
  result = qword_27F2398C0;
  if (!qword_27F2398C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239868);
    sub_24F1148BC();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398C0);
  }

  return result;
}

unint64_t sub_24F1148BC()
{
  result = qword_27F2398C8;
  if (!qword_27F2398C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2398D0);
    sub_24F114948();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398C8);
  }

  return result;
}

unint64_t sub_24F114948()
{
  result = qword_27F2398D8;
  if (!qword_27F2398D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2398E0);
    sub_24E602068(&qword_27F2398E8, &qword_27F2398F0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398D8);
  }

  return result;
}

unint64_t sub_24F114A00()
{
  result = qword_27F2398F8;
  if (!qword_27F2398F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239890);
    sub_24F114AB8();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2398F8);
  }

  return result;
}

unint64_t sub_24F114AB8()
{
  result = qword_27F239900;
  if (!qword_27F239900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239888);
    sub_24F114B44();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239900);
  }

  return result;
}

unint64_t sub_24F114B44()
{
  result = qword_27F239908;
  if (!qword_27F239908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2398B8);
    sub_24E602068(&qword_27F239910, &qword_27F2398B0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239908);
  }

  return result;
}

unint64_t sub_24F114CE4()
{
  result = qword_27F239930;
  if (!qword_27F239930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239920);
    sub_24F114DA0(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239930);
  }

  return result;
}

uint64_t sub_24F114DA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F114DE8()
{
  result = sub_24E6C5550();
  if (v1 <= 0x3F)
  {
    result = sub_24F926E78();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24F114E90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24F926E78() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 24) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 24) & ~v10) + v12) & ~v12) + *(v8 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_24F115120(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24F926E78() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 24) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

unint64_t sub_24F115460()
{
  result = qword_27F2399C0;
  if (!qword_27F2399C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239768);
    sub_24F1154EC();
    sub_24E7EB6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399C0);
  }

  return result;
}

unint64_t sub_24F1154EC()
{
  result = qword_27F2399C8;
  if (!qword_27F2399C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239758);
    sub_24F1155A4();
    sub_24E602068(&qword_27F2399E8, &qword_27F239760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399C8);
  }

  return result;
}

unint64_t sub_24F1155A4()
{
  result = qword_27F2399D0;
  if (!qword_27F2399D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239750);
    sub_24F115630();
    sub_24E60444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399D0);
  }

  return result;
}

unint64_t sub_24F115630()
{
  result = qword_27F2399D8;
  if (!qword_27F2399D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2399E0);
    sub_24F11438C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399D8);
  }

  return result;
}

unint64_t sub_24F1156C0()
{
  result = qword_27F2399F0;
  if (!qword_27F2399F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239820);
    sub_24F115778();
    sub_24E602068(&qword_27F239A08, &qword_27F239828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399F0);
  }

  return result;
}

unint64_t sub_24F115778()
{
  result = qword_27F2399F8;
  if (!qword_27F2399F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239818);
    sub_24E602068(&qword_27F239A00, &qword_27F239810);
    sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2399F8);
  }

  return result;
}

unint64_t sub_24F115860()
{
  result = qword_27F239A10;
  if (!qword_27F239A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239850);
    sub_24F115918();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239A10);
  }

  return result;
}

unint64_t sub_24F115918()
{
  result = qword_27F239A18;
  if (!qword_27F239A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239840);
    sub_24E602068(&qword_27F239A20, &qword_27F239838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239A18);
  }

  return result;
}

unint64_t sub_24F115A14()
{
  result = qword_27F239A30;
  if (!qword_27F239A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28);
    sub_24E602068(&qword_27F239A38, &qword_27F239A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239A30);
  }

  return result;
}

unint64_t sub_24F115AD8()
{
  result = qword_27F239A48[0];
  if (!qword_27F239A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F239A48);
  }

  return result;
}

uint64_t sub_24F115B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239A28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236350);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22DF30);
  sub_24F924038();
  sub_24E602068(&unk_27F212AB0, &qword_27F236350);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340);
  sub_24F924038();
  sub_24F115A14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F212A60, &qword_27F223340);
  swift_getWitnessTable();
  type metadata accessor for TransparentButton();
  return swift_getWitnessTable();
}

uint64_t sub_24F115D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_24F92B138();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_24F91F4A8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for OverlayNowPlayingCacheDataIntent();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v8 = swift_task_alloc();
  v4[25] = v8;
  *v8 = v4;
  v8[1] = sub_24F115F3C;

  return MEMORY[0x28217F228](v4 + 2, v7, v7);
}

uint64_t sub_24F115F3C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24F116BEC;
  }

  else
  {
    v2 = sub_24F116050;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F116050()
{
  v55 = v0;
  v1 = v0[24];
  v3 = v0[12];
  v2 = v0[13];
  sub_24E70D960(v0[11], v1 + *(v0[23] + 20));
  *v1 = v3;
  v1[1] = v2;
  v4 = qword_27F211400;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  v0[27] = __swift_project_value_buffer(v5, qword_27F39E850);

  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_24E7620D4(v9, v8, &v53);
    _os_log_impl(&dword_24E5DD000, v6, v7, "Starting prefetch of Now Playing data for %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  v12 = v0[26];
  sub_24F116ED8(v0[22]);
  if (v12)
  {

    v13 = v12;
    v14 = sub_24F9220B8();
    v15 = sub_24F92BDB8();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[24];
    if (v16)
    {
      v19 = v0[12];
      v18 = v0[13];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_24E7620D4(v19, v18, &v53);
      *(v20 + 12) = 2112;
      v23 = v12;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_24E5DD000, v14, v15, "Error prefetching or caching Now Playing data for %s, error: %@", v20, 0x16u);
      sub_24E6D44CC(v21);
      MEMORY[0x2530542D0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2530542D0](v22, -1, -1);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    else
    {
    }

    sub_24F1191AC(v17, type metadata accessor for OverlayNowPlayingCacheDataIntent);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v43 = v0[1];

    return v43();
  }

  else
  {
    v25 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = v0[18];
    v30 = v0[12];
    v29 = v0[13];
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_24F92C888();

    v53 = v30;
    v54 = v29;
    MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA6C8B0);
    sub_24F91F3E8();

    (*(v27 + 16))(v26, v25, v28);
    v31 = sub_24F9220B8();
    v32 = sub_24F92BD98();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[19];
    v34 = v0[20];
    v36 = v0[18];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v37 = 136315138;
      sub_24F11920C(&qword_27F21B620, MEMORY[0x277CC9260]);
      v38 = sub_24F92CD88();
      v40 = v39;
      v41 = *(v35 + 8);
      v41(v34, v36);
      v42 = sub_24E7620D4(v38, v40, &v53);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_24E5DD000, v31, v32, "Caching prefetched data in: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x2530542D0](v52, -1, -1);
      MEMORY[0x2530542D0](v37, -1, -1);
    }

    else
    {

      v41 = *(v35 + 8);
      v41(v34, v36);
    }

    v0[28] = v41;
    v45 = v0[5];
    v46 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v45);
    v47 = swift_task_alloc();
    v0[29] = v47;
    v48 = sub_24F11920C(&qword_27F21D5D0, type metadata accessor for OverlayNowPlayingCacheDataIntent);
    *v47 = v0;
    v47[1] = sub_24F11667C;
    v50 = v0[23];
    v49 = v0[24];
    v51 = v0[14];

    return MEMORY[0x28217F4B0](v0 + 7, v49, v51, v50, v48, v45, v46);
  }
}

uint64_t sub_24F11667C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24F116C84;
  }

  else
  {
    v2 = sub_24F116790;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F116790()
{
  v37 = v0;
  v0[9] = v0[7];
  v1 = v0[30];
  v0[10] = v0[8];
  sub_24F92B128();
  sub_24E600AEC();
  sub_24F92C5C8();
  if (v1)
  {
    v2 = v0[28];
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[18];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v2(v4, v5);
    v2(v3, v5);

    v6 = v1;
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[24];
    if (v9)
    {
      v12 = v0[12];
      v11 = v0[13];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_24E7620D4(v12, v11, v36);
      *(v13 + 12) = 2112;
      v16 = v1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Error prefetching or caching Now Playing data for %s, error: %@", v13, 0x16u);
      sub_24E6D44CC(v14);
      MEMORY[0x2530542D0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x2530542D0](v15, -1, -1);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    else
    {
    }

    v30 = v10;
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[28];
    v22 = v0[24];
    v24 = v0[21];
    v23 = v0[22];
    v25 = v0[18];
    if (v20)
    {
      v34 = v0[22];
      v35 = v0[24];
      v27 = v0[12];
      v26 = v0[13];
      v33 = v0[21];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_24E7620D4(v27, v26, v36);
      _os_log_impl(&dword_24E5DD000, v18, v19, "Successfully prefetched and cached Now Playing data for %s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2530542D0](v29, -1, -1);
      MEMORY[0x2530542D0](v28, -1, -1);

      v21(v33, v25);
      v21(v34, v25);
      v30 = v35;
    }

    else
    {

      v21(v24, v25);
      v21(v23, v25);
      v30 = v22;
    }
  }

  sub_24F1191AC(v30, type metadata accessor for OverlayNowPlayingCacheDataIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v31 = v0[1];

  return v31();
}

uint64_t sub_24F116BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F116C84()
{
  v20 = v0;
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[18];
  v1(v0[21], v3);
  v1(v2, v3);
  v4 = v0[30];

  v5 = v4;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  if (v8)
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_24E7620D4(v11, v10, &v19);
    *(v12 + 12) = 2112;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Error prefetching or caching Now Playing data for %s, error: %@", v12, 0x16u);
    sub_24E6D44CC(v13);
    MEMORY[0x2530542D0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {
  }

  sub_24F1191AC(v9, type metadata accessor for OverlayNowPlayingCacheDataIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v17 = v0[1];

  return v17();
}

id sub_24F116ED8@<X0>(uint64_t a1@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v24[0] = 0;
  v11 = [v10 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v24];

  v12 = v24[0];
  if (v11)
  {
    v23 = a1;
    sub_24F91F428();
    v13 = v12;

    sub_24F91F3D8();
    v14 = *(v3 + 8);
    v14(v6, v2);
    v15 = [v9 defaultManager];
    v16 = sub_24F91F3B8();
    v24[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v24];

    v18 = v24[0];
    if (v17)
    {
      (*(v3 + 32))(v23, v8, v2);
      return v18;
    }

    else
    {
      v21 = v24[0];
      sub_24F91F278();

      swift_willThrow();
      return (v14)(v8, v2);
    }
  }

  else
  {
    v20 = v24[0];
    sub_24F91F278();

    return swift_willThrow();
  }
}

uint64_t sub_24F117184(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_24F92B138();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_24F116ED8(&v21 - v11);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_24F92C888();

  v24 = a2;
  v25 = a3;
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA6C8B0);
  sub_24F91F3E8();

  sub_24F92B128();
  v22 = sub_24F92B008();
  v23 = v13;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v14 = sub_24F9220D8();
  __swift_project_value_buffer(v14, qword_27F39E850);

  v15 = sub_24F9220B8();
  v16 = sub_24F92BD98();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_24E7620D4(a2, a3, &v24);
    _os_log_impl(&dword_24E5DD000, v15, v16, "Successfully loaded cached Now Playing data for %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);
  return v22;
}

uint64_t static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[277] = a5;
  v5[271] = a3;
  v5[265] = a2;
  v5[259] = a1;
  v5[283] = type metadata accessor for OverlaySocialDataPrefetchIntent();
  v5[284] = swift_task_alloc();
  v5[285] = *a4;

  return MEMORY[0x2822009F8](sub_24F1176DC, 0, 0);
}

uint64_t sub_24F1176DC()
{
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 16, v1, sub_24F1177BC, v0 + 1936);
}

uint64_t sub_24F1177F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v2 = swift_task_alloc();
  *(v0 + 2288) = v2;
  *v2 = v0;
  v2[1] = sub_24F1178B0;

  return MEMORY[0x28217F228](v0 + 1976, v1, v1);
}

uint64_t sub_24F1178B0()
{
  *(*v1 + 2296) = v0;

  if (v0)
  {
    v2 = sub_24F117F68;
  }

  else
  {
    v2 = sub_24F1179C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1179C4()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[271];
  v5 = v0[265];
  sub_24E6364A0(v0[259], v2);
  v6 = (v2 + *(v3 + 20));
  *v6 = v5;
  v6[1] = v4;
  *(v2 + *(v3 + 24)) = v1;
  v7 = v0[250];
  v8 = v0[251];
  __swift_project_boxed_opaque_existential_1(v0 + 247, v7);

  v9 = swift_task_alloc();
  v0[288] = v9;
  v10 = sub_24F11920C(&qword_27F21D5D8, type metadata accessor for OverlaySocialDataPrefetchIntent);
  *v9 = v0;
  v9[1] = sub_24F117B10;
  v11 = v0[284];
  v12 = v0[283];
  v13 = v0[277];

  return MEMORY[0x28217F4B0](v0 + 257, v11, v13, v12, v10, v7, v8);
}

uint64_t sub_24F117B10()
{
  *(*v1 + 2312) = v0;

  if (v0)
  {
    v2 = sub_24F118144;
  }

  else
  {
    v2 = sub_24F117C24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F117C24()
{
  v20 = v0;
  v1 = v0[257];
  v2 = v0[258];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E850);

  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[284];
  if (v6)
  {
    v8 = v0[271];
    v18 = v1;
    v9 = v0[265];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    if (v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0x800000024FA6C880;
    }

    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_24E7620D4(v18, v2, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Initiated Social tab data prefetching for %s, with result: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  sub_24F1191AC(v7, type metadata accessor for OverlaySocialDataPrefetchIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 247));

  return MEMORY[0x282200920](v0 + 162, v16, sub_24F117E7C, v0 + 266);
}

uint64_t sub_24F117F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F117F68()
{
  v17 = v0;
  v1 = v0[287];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = v0[271];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E850);

  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[271];
    v7 = v0[265];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = v6 == 0;
    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v12 = 0x800000024FA6C880;
    }

    else
    {
      v12 = v2;
    }

    v13 = sub_24E7620D4(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to prefetch Social tab data for %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  return MEMORY[0x282200920](v0 + 162, v14, sub_24F117E7C, v0 + 266);
}

uint64_t sub_24F118144()
{
  v17 = v0;
  sub_24F1191AC(v0[284], type metadata accessor for OverlaySocialDataPrefetchIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 247));
  v1 = v0[289];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = v0[271];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E850);

  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[271];
    v7 = v0[265];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = v6 == 0;
    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v12 = 0x800000024FA6C880;
    }

    else
    {
      v12 = v2;
    }

    v13 = sub_24E7620D4(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to prefetch Social tab data for %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  return MEMORY[0x282200920](v0 + 162, v14, sub_24F117E7C, v0 + 266);
}

uint64_t sub_24F118360()
{
  if (qword_27F20FF30 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39AD20;
  *(v0 + 16) = qword_27F39AD20;

  return MEMORY[0x2822009F8](sub_24F1183F8, v1, 0);
}

uint64_t sub_24F1183F8()
{
  sub_24F11868C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F118478()
{
  if (qword_27F2103A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39BDB0;
  *(v0 + 16) = qword_27F39BDB0;

  return MEMORY[0x2822009F8](sub_24F118510, v1, 0);
}

uint64_t sub_24F118510()
{
  sub_24F1187F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F118590()
{
  if (qword_27F211230 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39E518;
  *(v0 + 16) = qword_27F39E518;

  return MEMORY[0x2822009F8](sub_24F118628, v1, 0);
}

uint64_t sub_24F118628()
{
  sub_24F118968();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F11868C()
{
  v1 = v0;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24E7620D4(1701667143, 0xE400000000000000, v9);
    _os_log_impl(&dword_24E5DD000, v3, v4, "Clearing cache for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v7 = sub_24E60B5D8(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v1 + 112) = v7;
}

uint64_t sub_24F1187F4()
{
  v1 = v0;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24E7620D4(0xD000000000000016, 0x800000024FA47AB0, v9);
    _os_log_impl(&dword_24E5DD000, v3, v4, "Clearing cache for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v7 = sub_24E60D6F8(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v1 + 112) = v7;
}

uint64_t sub_24F118968()
{
  v1 = v0;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24E7620D4(0xD000000000000018, 0x800000024FA47AD0, v9);
    _os_log_impl(&dword_24E5DD000, v3, v4, "Clearing cache for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v7 = sub_24E6104D0(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v1 + 112) = v7;
}

uint64_t sub_24F118ADC()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24F118BB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_24F91F648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F118C40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_24F118EA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_24F91F648() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_24F1191AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F11920C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchPageSegmentChangeAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v24 = sub_24F9285B8();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v28 = sub_24F928388();
  v23 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  type metadata accessor for StyledText();
  sub_24F928398();
  v27 = v4;
  v12 = *(v4 + 16);
  v13 = a2;
  v14 = a2;
  v15 = v24;
  v12(v8, v14, v24);
  sub_24F119564();
  v16 = v13;
  v17 = a1;
  v18 = v23;
  sub_24F929548();
  *(v26 + OBJC_IVAR____TtC12GameStoreKit29SearchPageSegmentChangeAction_switchToOtherSegmentText) = v29;
  (*(v18 + 16))(v10, v17, v28);
  v19 = v25;
  v12(v25, v13, v15);
  v20 = PageTabChangeAction.init(deserializing:using:)(v10, v19);
  (*(v27 + 8))(v16, v15);
  (*(v18 + 8))(v17, v28);
  return v20;
}

unint64_t sub_24F119564()
{
  result = qword_27F22A8F8;
  if (!qword_27F22A8F8)
  {
    type metadata accessor for StyledText();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A8F8);
  }

  return result;
}

uint64_t SearchPageSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t SearchPageSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchPageSegmentChangeAction()
{
  result = qword_27F239B50;
  if (!qword_27F239B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F119890(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_24F923058();
  return (*(v4 + 8))(a1, a2);
}

char *DiffablePresenterBasedPageViewModel.__allocating_init(presenter:pageGridProvider:pageGridMapper:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24F11BE88(a1, a2, a3, a4);

  return v8;
}

char *DiffablePresenterBasedPageViewModel.init(presenter:pageGridProvider:pageGridMapper:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24F11BE88(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_24F119A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24E60169C(a1, &v9 - v6, &qword_27F22C688);
  sub_24E60169C(v7, v4, &qword_27F22C688);
  sub_24F923058();
  sub_24F11CC7C(a1);
  return sub_24F11CC7C(v7);
}

uint64_t sub_24F119B8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

uint64_t sub_24F119CC0(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v15 = v3[10];
  v7 = v15;
  v16 = v3[11];
  v8 = v16;
  v17 = v3[12];
  v9 = v17;
  v18 = v3[13];
  v10 = v18;
  v19 = v3[14];
  v11 = v19;
  v20 = v3[15];
  v12 = v20;
  swift_getKeyPath();
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;
  swift_getKeyPath();
  sub_24E60169C(a1, v6, &qword_27F22C688);

  sub_24F9230A8();
  return sub_24F11CC7C(a1);
}

uint64_t sub_24F119E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F119F8C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F11A0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  return sub_24E9B7D88(v1 + v3, a1);
}

uint64_t sub_24F11A128(uint64_t a1)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  sub_24F11CD00(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_24F11A194()
{
  result = sub_24F119E5C();
  if (v1 != -1)
  {
    if ((v1 & 1) == 0)
    {
      return result;
    }

    sub_24F11CF10(result, v1);
  }

  return 0;
}

uint64_t sub_24F11A1C4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 184));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_24E824448(v4);
}

uint64_t sub_24F11A1F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x28223BE20](v0);
  v20 = &v15 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C18);
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v17 = &v15 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF8);
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - v5;
  swift_beginAccess();
  v7 = sub_24E74EC40();

  v8 = sub_24F92BEF8();
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C20);
  sub_24F11CF48(&qword_27F239C08, &qword_27F22ABB0);
  sub_24F9288C8();

  (*(v4 + 8))(v6, v16);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v9 = sub_24F92BEF8();
  v10 = MEMORY[0x277D225C0];
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF10);
  sub_24F11CF48(&qword_27F239C28, &qword_27F22AF10);
  v11 = v17;
  sub_24F9288C8();

  (*(v18 + 8))(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v12 = sub_24F92BEF8();
  v24 = v7;
  v25 = v10;
  v23[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  sub_24F11CF48(&qword_27F22AC50, &qword_27F2226C8);
  v13 = v20;
  sub_24F9288C8();

  (*(v21 + 8))(v13, v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24F11A658()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x28223BE20](v0);
  v20 = &v15 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF0);
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v17 = &v15 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF8);
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - v5;
  swift_beginAccess();
  v7 = sub_24E74EC40();

  v8 = sub_24F92BEF8();
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C00);
  sub_24F11CF48(&qword_27F239C08, &qword_27F22ABB0);
  sub_24F9288C8();

  (*(v4 + 8))(v6, v16);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v9 = sub_24F92BEF8();
  v10 = MEMORY[0x277D225C0];
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AED0);
  sub_24F11CF48(&qword_27F239C10, &qword_27F22AED0);
  v11 = v17;
  sub_24F9288C8();

  (*(v18 + 8))(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v12 = sub_24F92BEF8();
  v24 = v7;
  v25 = v10;
  v23[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  sub_24F11CF48(&qword_27F22AC50, &qword_27F2226C8);
  v13 = v20;
  sub_24F9288C8();

  (*(v21 + 8))(v13, v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24F11AAC0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v20 - v3;
  v4 = v1[10];
  v25 = v1[11];
  v24 = v1[12];
  v23 = v1[13];
  v22 = v1[14];
  v21 = v1[15];
  v35 = v4;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  updated = type metadata accessor for DiffablePagePresenter.UpdatePhase();
  v5 = sub_24F929528();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v20 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF8);
  v20 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v20 - v7;
  sub_24EE9B350();
  v9 = sub_24E74EC40();

  v10 = sub_24F92BEF8();
  v34[3] = v9;
  v34[4] = MEMORY[0x277D225C0];
  v34[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F11CDB0;
  *(v11 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  v35 = v4;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  type metadata accessor for DiffablePresenterBasedPageViewModel();
  sub_24F11CF48(&qword_27F239C08, &qword_27F22ABB0);
  sub_24F9288C8();

  (*(v20 + 8))(v8, v26);
  __swift_destroy_boxed_opaque_existential_1(v34);

  v12 = sub_24F92BEF8();
  v13 = MEMORY[0x277D225C0];
  v38 = v9;
  v39 = MEMORY[0x277D225C0];
  v35 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24F11CE28;
  *(v14 + 24) = 0;
  sub_24F92ADB8();
  swift_getWitnessTable();
  v15 = v28;
  sub_24F9288C8();

  (*(v29 + 8))(v15, v30);
  __swift_destroy_boxed_opaque_existential_1(&v35);

  v16 = sub_24F92BEF8();
  v38 = v9;
  v39 = v13;
  v35 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24F11CE68;
  *(v17 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  sub_24F11CF48(&qword_27F22AC50, &qword_27F2226C8);
  v18 = v31;
  sub_24F9288C8();

  (*(v32 + 8))(v18, v33);
  return __swift_destroy_boxed_opaque_existential_1(&v35);
}

uint64_t sub_24F11B07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  sub_24E60169C(a1, v12 - v6, &qword_27F22ACF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = type metadata accessor for GenericPage();
  v12[6] = v9;
  v12[7] = &protocol witness table for GenericPage;
  v12[8] = &protocol witness table for BasePage;
  v12[9] = &protocol witness table for GenericPage;
  v12[10] = &protocol witness table for BasePage;
  v10 = sub_24F11CFA4(&qword_27F235598, type metadata accessor for GenericPage);
  v12[11] = v10;
  swift_getKeyPath();
  v12[0] = v9;
  v12[1] = &protocol witness table for GenericPage;
  v12[2] = &protocol witness table for BasePage;
  v12[3] = &protocol witness table for GenericPage;
  v12[4] = &protocol witness table for BasePage;
  v12[5] = v10;
  swift_getKeyPath();
  sub_24E60169C(v7, v5, &qword_27F22C688);

  sub_24F9230A8();
  return sub_24F11CC7C(v7);
}

uint64_t sub_24F11B288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  sub_24E60169C(a1, v12 - v6, &qword_27F22ACF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = type metadata accessor for ArticlePage();
  v12[6] = v9;
  v12[7] = &protocol witness table for ArticlePage;
  v12[8] = &protocol witness table for BasePage;
  v12[9] = &protocol witness table for ArticlePage;
  v12[10] = &protocol witness table for BasePage;
  v10 = sub_24F11CFA4(&qword_27F216890, type metadata accessor for ArticlePage);
  v12[11] = v10;
  swift_getKeyPath();
  v12[0] = v9;
  v12[1] = &protocol witness table for ArticlePage;
  v12[2] = &protocol witness table for BasePage;
  v12[3] = &protocol witness table for ArticlePage;
  v12[4] = &protocol witness table for BasePage;
  v12[5] = v10;
  swift_getKeyPath();
  sub_24E60169C(v7, v4, &qword_27F22C688);

  sub_24F9230A8();
  return sub_24F11CC7C(v7);
}

uint64_t sub_24F11B594(uint64_t a1, uint64_t a2)
{
  sub_24E9B7D88(a1, v5);
  v3 = *(*a2 + 176);
  swift_beginAccess();
  sub_24F11CD00(v5, a2 + v3);
  return swift_endAccess();
}

uint64_t sub_24F11B680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_24E60169C(a1, &v7 - v3, &qword_27F22ACF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  return sub_24F119CC0(v4);
}

uint64_t sub_24F11B770(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      sub_24E5FCA4C(v3);
      v5 = v2;
      sub_24F119F8C();
      v6 = (v1 + *(*v1 + 184));
      v7 = *v6;
      *v6 = v3;
      v6[1] = v4;
      goto LABEL_6;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  sub_24F119F8C();
  v8 = (v1 + *(*v1 + 184));
  v7 = *v8;
  *v8 = 0;
  v8[1] = 0;
LABEL_6:

  return sub_24E824448(v7);
}

void sub_24F11B88C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-1] - v3;
  v5 = *(v0 + *(*v0 + 200));
  if (v5)
  {
    v7[3] = type metadata accessor for Action();
    v7[4] = sub_24F11CFA4(&qword_27F216DE8, type metadata accessor for Action);
    v7[0] = v5;
    (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
    sub_24F929288();

    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    *(v0 + *(*v0 + 200)) = 0;
  }
}

uint64_t DiffablePresenterBasedPageViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v1 = qword_27F239B60;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 168);
  sub_24F92A748();
  sub_24F92C4A8();
  v4 = sub_24F9230B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_24E94E128(v0 + *(*v0 + 176));
  sub_24E824448(*(v0 + *(*v0 + 184)));

  return v0;
}

uint64_t DiffablePresenterBasedPageViewModel.__deallocating_deinit()
{
  DiffablePresenterBasedPageViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F11BC40@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DiffablePresenterBasedPageViewModel();
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24F11BC9C()
{
  sub_24F11BE3C();
}

uint64_t sub_24F11BCCC()
{
  sub_24F11BE64();
}

uint64_t sub_24F11BD30()
{
  v0 = sub_24F11BE44();
  sub_24E5FCA4C(v0);
  return v0;
}

id sub_24F11BD64()
{
  v0 = sub_24F11BE6C();

  return v0;
}

uint64_t sub_24F11BD90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F22C688);
  return sub_24F119CC0(v4);
}

char *sub_24F11BE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v6 = sub_24F928188();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v42 - v9;
  sub_24F92A748();
  sub_24F92C4A8();
  v10 = sub_24F9230B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v42 - v19;
  v21 = qword_27F239B60;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  v23 = v20;
  v24 = v43;
  sub_24F119A44(v23);
  v25 = v17;
  v26 = v44;
  (*(v15 + 32))(&v5[v21], v25, v14);
  v27 = *(*v5 + 168);
  v51 = 0;
  v52 = -1;
  v28 = sub_24F92C4A8();
  sub_24F119890(&v51, v28);
  v29 = &v5[v27];
  v30 = v45;
  (*(v11 + 32))(v29, v13, v10);
  v31 = &v5[*(*v5 + 176)];
  *(v31 + 25) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = &v5[*(*v5 + 184)];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v5[*(*v5 + 200)] = 0;
  *(v5 + 2) = v30;
  sub_24E615E00(v26, (v5 + 24));
  sub_24E615E00(v24, (v5 + 64));
  v33 = qword_27F2110D0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_24F2DAE78();
  v35 = v46;
  sub_24EA080F4(v46);
  v36 = sub_24F929158();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  sub_24F928FD8();
  sub_24F92A758();
  v37 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator());
  v38 = sub_24EEC35E0(v34 & 1, v35, &v51);
  *&v5[*(*v5 + 192)] = v38;
  v51 = v38;
  v39 = v47;
  sub_24F928178();
  v40 = sub_24F928F88();
  (*(v48 + 8))(v39, v49);
  *(v5 + 13) = v40;
  sub_24F11AAC0();
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v5;
}

uint64_t sub_24F11C3E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F11C43C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_24F11C478()
{
  sub_24F11C5E8();
  if (v0 <= 0x3F)
  {
    sub_24F92A748();
    sub_24F92C4A8();
    sub_24F9230B8();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_24F11C5E8()
{
  if (!qword_27F239BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C688);
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F239BE8);
    }
  }
}

char *sub_24F11C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v56 = a4;
  v50 = a3;
  v48 = a2;
  v51 = a1;
  v9 = sub_24F928188();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v47 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A8);
  v13 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v59[3] = a6;
  v59[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, v48, a6);
  v27 = qword_27F239B60;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  sub_24E60169C(v25, v22, &qword_27F22C688);
  sub_24F923058();
  v29 = v25;
  v30 = v50;
  sub_24F11CC7C(v29);
  (*(v17 + 32))(&a5[v27], v19, v16);
  v31 = *(*a5 + 168);
  v57 = 0;
  v58 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6B0);
  sub_24F923058();
  (*(v13 + 32))(&a5[v31], v15, v49);
  v32 = v51;
  v33 = &a5[*(*a5 + 176)];
  *(v33 + 25) = 0u;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v34 = &a5[*(*a5 + 184)];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&a5[*(*a5 + 200)] = 0;
  *(a5 + 2) = v32;
  sub_24E615E00(v59, (a5 + 24));
  sub_24E615E00(v30, (a5 + 64));
  v35 = qword_27F2110D0;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_24F2DAE78();
  v37 = qword_27F39B498;
  swift_beginAccess();
  v38 = sub_24F929158();
  v39 = *(v38 - 8);
  v40 = v32 + v37;
  v41 = v52;
  (*(v39 + 16))(v52, v40, v38);
  (*(v39 + 56))(v41, 0, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  sub_24F928FD8();
  sub_24F92A758();
  v42 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator());
  v43 = sub_24EEC35E0(v36 & 1, v41, &v57);
  *&a5[*(*a5 + 192)] = v43;
  v57 = v43;
  v44 = v53;
  sub_24F928178();
  v45 = sub_24F928F88();
  (*(v54 + 8))(v44, v55);
  *(a5 + 13) = v45;
  sub_24F11A658();
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return a5;
}

uint64_t sub_24F11CC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_24F11CD9C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_24F11CDF0()
{

  return swift_deallocObject();
}

uint64_t sub_24F11CEA8(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return (*(*v1 + 392))(&v5);
}

void sub_24F11CF10(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_24F11CF28(a1, a2 & 1);
  }
}

void sub_24F11CF28(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24F11CF48(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F11CFA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UICollectionView.dequeueConfiguredReusableCell<A, B>(using:in:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = sub_24F92C4A8();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v54 = &v43 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v50 = &v43 - v11;
  v58 = a4;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F91FA78();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v49 = *(a1 + 16);
  v47 = v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_24F92B098();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];

  v22 = sub_24F92B098();
  v23 = *a2;
  v24 = type metadata accessor for ItemLayoutContext();
  v25 = *(v24 + 32);
  v51 = a2;
  v26 = *&a2[v25 + *(type metadata accessor for ShelfLayoutContext() + 20)];
  v52 = v23;
  v46 = v26;
  MEMORY[0x253045380](v23);
  v27 = sub_24F91F9D8();
  v28 = *(v16 + 8);
  v55 = v16 + 8;
  v56 = v15;
  v28(v18, v15);
  v29 = v28;
  v30 = [v5 dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:v27];

  v31 = swift_dynamicCastUnknownClass();
  if (v31)
  {
    v32 = v31;
    (*(v53 + 16))(v50, &v51[*(v24 + 20)], v57);
    v33 = v54;
    v34 = v58;
    v35 = swift_dynamicCast();
    v36 = *(v12 + 56);
    if (v35)
    {
      v36(v33, 0, 1, v34);
      v37 = v48;
      (*(v12 + 32))(v48, v33, v34);
      MEMORY[0x253045380](v52, v46);
      v49(v32, v18, v37);
      v29(v18, v56);
      (*(v12 + 8))(v37, v34);
      return v32;
    }

    v36(v33, 1, 1, v34);
    (*(v43 + 8))(v33, v44);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA6CA60);
    MEMORY[0x253045380](v52, v46);
    sub_24F11D5E4();
    v39 = v56;
    v40 = sub_24F92CD88();
    MEMORY[0x253050C20](v40);

    v29(v18, v39);
    MEMORY[0x253050C20](8236, 0xE200000000000000);
    sub_24F11D63C();
    v41 = sub_24F92CD88();
    MEMORY[0x253050C20](v41);

    MEMORY[0x253050C20](8236, 0xE200000000000000);
    v42 = sub_24F92D1E8();
    MEMORY[0x253050C20](v42);
  }

  else
  {
  }

  result = sub_24F92CA88();
  __break(1u);
  return result;
}

unint64_t sub_24F11D5E4()
{
  result = qword_27F22ECE0;
  if (!qword_27F22ECE0)
  {
    sub_24F91FA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ECE0);
  }

  return result;
}

unint64_t sub_24F11D63C()
{
  result = qword_27F239C30;
  if (!qword_27F239C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239C30);
  }

  return result;
}

uint64_t SearchAdsCollectionElementsObserver.__allocating_init(presenter:advertControllerProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v3 + 24) = a2;

  return v3;
}

uint64_t SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F11E208(a1, a2);

  return v2;
}

uint64_t SearchAdsCollectionElementsObserver.willDisplayCell(_:in:collectionView:asPartOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    return sub_24E601704(v18, qword_27F239C40);
  }

  sub_24E612C80(v18, v23);
  v7 = v24;
  v8 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v7, v8))
  {
    v9 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a4);
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      if (v11 && a1)
      {
        v12 = v11;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 16);
        v15 = a1;

        v14(sub_24F11E254, v10, ObjectType, v12);
      }

      if (swift_weakLoadStrong())
      {
        sub_24EA0893C(&v20);

        if (*(&v21 + 1))
        {
          sub_24E601704(&v20, &qword_27F224FA0);
LABEL_17:
          sub_24EC4906C(a1);

          return __swift_destroy_boxed_opaque_existential_1(v23);
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
      }

      sub_24E601704(&v20, &qword_27F224FA0);
      if (swift_weakLoadStrong())
      {
        *(&v21 + 1) = type metadata accessor for AdvertRotationController();
        v22 = &protocol witness table for AdvertRotationController;
        *&v20 = v10;

        sub_24EA089B0(&v20);
      }

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v17 = off_27F229AB8;
      *(&v21 + 1) = type metadata accessor for AdvertRotationController();
      v22 = &protocol witness table for AdvertRotationController;
      *&v20 = v10;
      swift_beginAccess();

      sub_24EB6B058(&v20, v17 + 104);
      swift_endAccess();
      goto LABEL_17;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24F11DA44(uint64_t a1)
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(a1 + 112) == 1)
  {
    v4 = a1 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
    result = swift_beginAccess();
    if ((*(v4 + 1) & 1) == 0)
    {
      *(v4 + 1) = 1;
    }
  }

  return result;
}

uint64_t SearchAdsCollectionElementsObserver.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t SearchAdsCollectionElementsObserver.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_24F11DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
    {
      if (AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3))
      {
        sub_24EC4BB38();
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    return sub_24E601704(v8, qword_27F239C40);
  }
}

uint64_t sub_24F11DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6) && AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        sub_24EC4BDA8();
        v9 = sub_24F92C408();

        if (v9)
        {
          sub_24EC4BDF4();
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return sub_24E601704(v11, qword_27F239C40);
  }
}

uint64_t sub_24F11DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v15, v17);
    v5 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
    {
      v7 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3);
      if (v7)
      {
        v8 = v7;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          sub_24EC4BDA8();
          v11 = sub_24F92C408();

          if (v11)
          {
            if (qword_27F2105A0 != -1)
            {
              swift_once();
            }

            v12 = sub_24F92AAE8();
            __swift_project_value_buffer(v12, qword_27F39C440);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
            sub_24F928468();
            *(swift_allocObject() + 16) = xmmword_24F93A400;
            sub_24F928448();
            sub_24F9283A8();
            sub_24F92A588();

            if (*(v8 + 112) == 1)
            {
              v13 = v8 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
              swift_beginAccess();
              if ((*(v13 + 1) & 1) == 0)
              {
                *(v13 + 1) = 1;
              }
            }
          }
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    return sub_24E601704(v15, qword_27F239C40);
  }
}

uint64_t sub_24F11E208(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  swift_weakAssign();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t type metadata accessor for VideoPlaybackFailure()
{
  result = qword_27F239CC8;
  if (!qword_27F239CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F11E33C()
{
  sub_24F11E40C();
  if (v0 <= 0x3F)
  {
    sub_24F11E484(319, &qword_27F239CE8, &qword_27F218378, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_24F11E484(319, &qword_27F239CF0, &qword_27F239CF8, sub_24EC51A9C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24F11E40C()
{
  if (!qword_27F239CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239CE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F239CD8);
    }
  }
}

void sub_24F11E484(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_24F11E4D4(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24F11E4D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HorizontalRule.__allocating_init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  sub_24E65E064(a1, &v20);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v19[1] = v14;
    v19[2] = v16;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v20);
  }

  v17 = v24;
  *(v12 + 40) = v23;
  *(v12 + 56) = v17;
  *(v12 + 72) = v25;
  sub_24E9BBAA8(a1);
  *(v12 + 16) = v13;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  return v12;
}

uint64_t HorizontalRule.init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  sub_24E65E064(a1, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v21);
  }

  sub_24E9BBAA8(a1);
  v18 = v25;
  *(v5 + 40) = v24;
  *(v5 + 56) = v18;
  *(v5 + 72) = v26;
  *(v5 + 16) = v14;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4 & 1;
  return v5;
}

uint64_t HorizontalRule.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HorizontalRule.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HorizontalRule.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_24F91F6B8();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v38 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  if (v21)
  {
    v39 = v20;
    v40 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v23 = v5;
    v25 = v24;
    (*(v35 + 8))(v7, v23);
    v39 = v22;
    v40 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v9 + 8);
  v26(v19, v8);
  v27 = v42;
  *(v3 + 40) = v41;
  *(v3 + 56) = v27;
  *(v3 + 72) = v43;
  v28 = v38;
  sub_24F928398();
  sub_24F11ECA0();
  sub_24F928208();
  v26(v16, v8);
  *(v3 + 16) = v41;
  sub_24F928398();
  v29 = JSONObject.appStoreColor.getter();
  v26(v13, v8);
  if (!v29)
  {
    if (qword_27F210458 != -1)
    {
      swift_once();
    }

    v29 = qword_27F22BED8;
  }

  *(v3 + 24) = v29;
  v30 = v36;
  sub_24F928398();
  v31 = sub_24F928278();
  v32 = sub_24F9285B8();
  (*(*(v32 - 8) + 8))(v37, v32);
  v26(v28, v8);
  v26(v30, v8);
  *(v3 + 32) = v31 & 1;
  return v3;
}

unint64_t sub_24F11ECA0()
{
  result = qword_27F239D00;
  if (!qword_27F239D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D00);
  }

  return result;
}

uint64_t HorizontalRule.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24F11ED6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HorizontalRule();
  v7 = swift_allocObject();
  result = HorizontalRule.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F11EDE4()
{
  v1 = *v0;
  if ((v1 - 1) > 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9C29E0;
  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v4) = 1008981770;
  if (v1 == 1)
  {
    v5 = 9.0;
  }

  else
  {
    *&v4 = 4.0;
    v5 = 5.0;
  }

  *(v2 + 32) = [v3 initWithFloat_];
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v7 = v5;
  v8 = [v6 initWithFloat_];
  result = v2;
  *(v2 + 40) = v8;
  return result;
}

uint64_t HorizontalRule.Style.lineThickness(traitCollection:)()
{
  if (!*v0)
  {
    return sub_24F922D08();
  }

  return result;
}

CGMutablePathRef __swiftcall HorizontalRule.Style.path(in:traitCollection:)(__C::CGRect in, UITraitCollection traitCollection)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v7 = *v2;
  Mutable = CGPathCreateMutable();
  if (v7)
  {
    v9 = 9.0;
    if (v7 == 1)
    {
      v10 = 0.0;
    }

    else
    {
      v9 = 5.0;
      v10 = 4.0;
    }

    v11 = v9 + v10;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v12 = CGRectGetWidth(v28);
    v13 = 0.0;
    if (v7 == 1)
    {
      v14 = 3.0;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v12 + -2.0 - v14;
    v16 = v11 * floor(v15 / v11);
    v17 = v15 - v16;
    if (v7 == 1)
    {
      v18 = 5.0;
      v13 = 3.0;
      if (v10 + 3.0 > v17)
      {
        goto LABEL_15;
      }
    }

    else if (v10 > v17)
    {
LABEL_14:
      v18 = v14 + 2.0;
LABEL_15:
      v24 = v18 + v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239D08);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93A400;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v25 = v14 + CGRectGetMinX(v33) + 2.0;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      MidY = CGRectGetMidY(v34);
      *(v19 + 32) = v25;
      *(v19 + 40) = MidY;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v23 = CGRectGetMidY(v35);
      *(v19 + 48) = v24;
      goto LABEL_16;
    }

    v16 = v16 + v10 + v13;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239D08);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93A400;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v20 = CGRectGetMinX(v29) + 2.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v21 = CGRectGetMidY(v30);
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v22 = CGRectGetMaxX(v31) + -2.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v23 = CGRectGetMidY(v32);
  *(v19 + 48) = v22;
LABEL_16:
  *(v19 + 56) = v23;
  sub_24F92BE08();

  return Mutable;
}

Swift::Void __swiftcall HorizontalRule.Style.applyStyle(to:lineColor:traitCollection:)(CAShapeLayer to, CGColorRef lineColor, UITraitCollection traitCollection)
{
  v5 = *v3;
  [(objc_class *)to.super.super.isa setStrokeColor:lineColor];
  if (sub_24F11EDE4())
  {
    sub_24E9421D0();
    v6 = sub_24F92B588();
  }

  else
  {
    v6 = 0;
  }

  [(objc_class *)to.super.super.isa setLineDashPattern:v6];

  if (v5 == 1)
  {
    v7 = *MEMORY[0x277CDA780];
    [(objc_class *)to.super.super.isa setLineCap:v7];

    v8 = 3.0;
  }

  else
  {
    v9 = *MEMORY[0x277CDA778];
    [(objc_class *)to.super.super.isa setLineCap:v9];

    v8 = 1.0;
    if (!v5)
    {
      sub_24F922D08();
    }
  }

  [(objc_class *)to.super.super.isa setLineWidth:v8];
}

GameStoreKit::HorizontalRule::Style_optional __swiftcall HorizontalRule.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HorizontalRule.Style.rawValue.getter()
{
  v1 = 0x646574746F44;
  if (*v0 != 1)
  {
    v1 = 0x646568736144;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6F53;
  }
}

unint64_t sub_24F11F304()
{
  result = qword_27F239D10;
  if (!qword_27F239D10)
  {
    type metadata accessor for HorizontalRule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D10);
  }

  return result;
}

uint64_t sub_24F11F37C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646574746F44;
  if (v2 != 1)
  {
    v3 = 0x646568736144;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64696C6F53;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x646574746F44;
  if (*a2 != 1)
  {
    v6 = 0x646568736144;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64696C6F53;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

unint64_t sub_24F11F470()
{
  result = qword_27F239D18;
  if (!qword_27F239D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D18);
  }

  return result;
}

uint64_t sub_24F11F4C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F11F55C()
{
  sub_24F92B218();
}

uint64_t sub_24F11F5E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F11F680(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x646574746F44;
  if (v2 != 1)
  {
    v4 = 0x646568736144;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64696C6F53;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

GameStoreKit::AppStoreEngagementEvent_optional __swiftcall AppStoreEngagementEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppStoreEngagementEvent.rawValue.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  v4 = 0xD000000000000016;
  if (v2 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F11F89C()
{
  sub_24F92B218();
}

void sub_24F11F984(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = "didSubscribeToArcade";
  v5 = 0xD00000000000001CLL;
  v6 = "didBecomeArcadeTrialEligible";
  v7 = 0xD000000000000016;
  if (v3 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = "didBecomeNonSubscribed";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "arcadeTabDidComeOnScreen";
  if (v3 != 1)
  {
    v2 = 0xD000000000000014;
    v8 = "arcadePageDidAppear";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000018;
    v9 = "macOS";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t AppStoreEngagementTask.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  type metadata accessor for Action();
  sub_24F928398();
  v9 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, a2);
  v10 = sub_24F9285B8();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = *(v5 + 8);
  v11(a1, v4);
  v11(v7, v4);
  *(v8 + 16) = v9;
  return v8;
}

uint64_t AppStoreEngagementTask.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Action();
  sub_24F928398();
  v10 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, a2);
  v11 = sub_24F9285B8();
  (*(*(v11 - 8) + 8))(a2, v11);
  v12 = *(v7 + 8);
  v12(a1, v6);
  v12(v9, v6);
  *(v3 + 16) = v10;
  return v3;
}

uint64_t AppStoreEngagementTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24F11FD88()
{
  result = qword_27F239D20;
  if (!qword_27F239D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D20);
  }

  return result;
}

uint64_t sub_24F11FDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStoreEngagementTask();
  v10 = swift_allocObject();
  type metadata accessor for Action();
  sub_24F928398();
  v11 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, a2);
  v12 = sub_24F9285B8();
  (*(*(v12 - 8) + 8))(a2, v12);
  v13 = *(v7 + 8);
  v13(a1, v6);
  result = (v13)(v9, v6);
  *(v10 + 16) = v11;
  *a3 = v10;
  return result;
}

void sub_24F11FFD8(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  if (!(*(v11 + 16))(a2, a6, v10, v11))
  {
    v14 = 1;
    goto LABEL_5;
  }

  v12 = swift_conformsToProtocol2();
  if (!v12)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x28223BE20](v16);
      v13 = sub_24F12038C;
      goto LABEL_8;
    }

    v14 = 0;
LABEL_5:
    sub_24F120188();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
    return;
  }

  MEMORY[0x28223BE20](v12);
  v13 = sub_24F120390;
LABEL_8:
  v17 = ComponentHeightCache.height(for:or:)(a2, v13);
  if (v9 > v17)
  {
    v17 = v9;
  }

  *a1 = v17;
}

unint64_t sub_24F120188()
{
  result = qword_27F239D28;
  if (!qword_27F239D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D28);
  }

  return result;
}

void sub_24F1201DC(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X5>, double *a5@<X8>)
{
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  if (!(*(v10 + 16))(a1, a3, v9, v10))
  {
    v13 = 1;
    goto LABEL_5;
  }

  v11 = swift_conformsToProtocol2();
  if (!v11)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x28223BE20](v16);
      v12 = sub_24F120498;
      goto LABEL_8;
    }

    v13 = 0;
LABEL_5:
    sub_24F120188();
    v14 = swift_allocError();
    *v15 = v13;
    swift_willThrow();
    *a4 = v14;
    return;
  }

  MEMORY[0x28223BE20](v11);
  v12 = sub_24F12049C;
LABEL_8:
  *a5 = ComponentHeightCache.height(for:or:)(a1, v12);
}

uint64_t sub_24F120394()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for ItemLayoutContext();
  return (*(v2 + 16))(v4 + *(v5 + 32), v3, v1, v2);
}

unint64_t sub_24F120444()
{
  result = qword_27F239D30;
  if (!qword_27F239D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D30);
  }

  return result;
}

uint64_t NetworkInterface.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F12052C()
{
  result = qword_27F239D38;
  if (!qword_27F239D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D38);
  }

  return result;
}

uint64_t BadgeViewRibbonLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t BadgeViewRibbonLayout.Metrics.captionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t BadgeViewRibbonLayout.Metrics.captionBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueEditorsChoiceSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueIconSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_24E612C80(a1, v1 + 200);
}

void BadgeViewRibbonLayout.Metrics.spacingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 280);
  *a1 = *(v1 + 272);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewRibbonLayout.Metrics.spacingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 272) = *result;
  *(v1 + 280) = v2;
  return result;
}

void BadgeViewRibbonLayout.Metrics.captionCappingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 288);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewRibbonLayout.Metrics.captionCappingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 288) = *result;
  *(v1 + 296) = v2;
  return result;
}

void BadgeViewRibbonLayout.Metrics.regularBadgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = a3;
  v4[42] = a4;
}

void BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = a3;
  v4[46] = a4;
}

__n128 BadgeViewRibbonLayout.Metrics.init(headingSpace:captionSpace:captionBottomSpace:badgeValueEditorsChoiceSpace:badgeValueIconSpace:badgeValueTextSpace:badgeValueBaselineOffset:badgeIconSize:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:regularBadgeInsets:accessibleBadgeInsets:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, char *a18, char a19, char *a20, uint64_t a21, __n128 a22, uint64_t a23, uint64_t a24)
{
  v34 = *a7;
  v35 = *(a7 + 8);
  v36 = *a8;
  v37 = *(a8 + 8);
  v38 = *a18;
  v39 = *a20;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  *(a9 + 240) = a10;
  *(a9 + 248) = a11;
  *(a9 + 256) = a12;
  *(a9 + 264) = a13;
  *(a9 + 272) = v34;
  *(a9 + 280) = v35;
  *(a9 + 288) = v36;
  *(a9 + 296) = v37;
  *(a9 + 297) = v38;
  *(a9 + 298) = a19;
  *(a9 + 299) = v39;
  *(a9 + 304) = a21;
  *(a9 + 312) = a14;
  *(a9 + 320) = a15;
  *(a9 + 328) = a16;
  *(a9 + 336) = a17;
  result = a22;
  *(a9 + 344) = a22;
  *(a9 + 360) = a23;
  *(a9 + 368) = a24;
  return result;
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueSpace(with:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 297) - 3 > 0xA)
  {
    v3 = 200;
  }

  else
  {
    v3 = *&aX_3[8 * (*(v1 + 297) - 3)];
  }

  return sub_24E615E00(v1 + v3, a1);
}

__n128 BadgeViewRibbonLayout.init(metrics:headingLabel:captionView:valueLabel:valueView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(a6, __src, 0x178uLL);
  sub_24E612C80(a2, a6 + 376);
  sub_24E612C80(a3, a6 + 496);
  v11 = *(a4 + 16);
  *(a6 + 416) = *a4;
  *(a6 + 432) = v11;
  *(a6 + 448) = *(a4 + 32);
  result = *a5;
  v13 = *(a5 + 16);
  *(a6 + 456) = *a5;
  *(a6 + 472) = v13;
  *(a6 + 488) = *(a5 + 32);
  return result;
}

void BadgeViewRibbonLayout.measurements(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  sub_24F92BF98();

  sub_24F92C228();
  sub_24E60169C(v2 + 416, v17, &unk_27F22B200);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922298();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E601704(v17, &unk_27F22B200);
    v6 = 0.0;
  }

  sub_24E60169C(v2 + 456, v17, &qword_27F229780);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922298();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E601704(v17, &qword_27F229780);
    v8 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 496), *(v2 + 520));
  sub_24F922298();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1((v2 + 376), *(v2 + 400));
  sub_24F922298();
  if (v6 == 0.0 || v8 == 0.0)
  {
    v13 = 0.0;
    if (v10 <= v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = 272;
  if (*(v2 + 280))
  {
    v12 = 264;
  }

  v13 = *(v2 + v12);
  if (v10 > v11)
  {
LABEL_14:
    v11 = v10;
  }

LABEL_15:
  v14 = v6 + v8 + v13;
  if (v14 > v11)
  {
    v11 = v14;
  }

  if (*(v2 + 288))
  {
    v11 = v14;
  }

  v15 = [a1 traitCollection];
  sub_24F92BF98();

  v16 = [a1 traitCollection];
  _s12GameStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v2);
}

void static BadgeViewRibbonLayout.measurements(valueLabelWidth:viewSize:captionWidth:headingLabelWidth:fitting:using:in:)(uint64_t a1, id a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a3 == 0.0 || a4 == 0.0)
  {
    v10 = 0.0;
    if (a6 <= a7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 272;
  if (*(a1 + 280))
  {
    v9 = 264;
  }

  v10 = *(a1 + v9);
  if (a6 > a7)
  {
LABEL_8:
    a7 = a6;
  }

LABEL_9:
  v11 = a3 + a4 + v10;
  if (v11 > a7)
  {
    v12 = v11;
  }

  else
  {
    v12 = a7;
  }

  if (!*(a1 + 288))
  {
    v11 = v12;
  }

  v13 = [a2 traitCollection];
  sub_24F92BF98();

  v14 = [a2 traitCollection];
  _s12GameStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1);
}

id BadgeViewRibbonLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v155 = a2;
  v13 = sub_24F92CDB8();
  v157 = *(v13 - 8);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  sub_24F92BF98();

  v151 = a3;
  v152 = a4;
  v153 = a5;
  v154 = a6;
  sub_24F92C1C8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
  sub_24F922288();
  v181.origin.x = v19;
  v181.origin.y = v21;
  v181.size.width = v23;
  v181.size.height = v25;
  MinX = CGRectGetMinX(v181);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F9223C8();
  v182.origin.x = v19;
  v182.origin.y = v21;
  v182.size.width = v23;
  v182.size.height = v25;
  CGRectGetWidth(v182);
  __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 496), *(v7 + 520));
  sub_24F922288();
  v160 = v26;
  v27 = [a1 traitCollection];
  v28 = sub_24F92BF98();

  v183.origin.x = v19;
  v183.origin.y = v21;
  v183.size.width = v23;
  v183.size.height = v25;
  CGRectGetMinX(v183);
  if ((v28 & 1) == 0)
  {
    v184.origin.x = v19;
    v184.origin.y = v21;
    v184.size.width = v23;
    v184.size.height = v25;
    CGRectGetWidth(v184);
  }

  v185.origin.x = v19;
  v185.origin.y = v21;
  v185.size.width = v23;
  v185.size.height = v25;
  CGRectGetMaxY(v185);
  MinX = v19;
  __swift_project_boxed_opaque_existential_1((v7 + 80), *(v7 + 104));
  sub_24F922398();
  v29 = MinX;
  __swift_project_boxed_opaque_existential_1((v7 + 496), *(v7 + 520));
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E60169C(v7 + 416, &v168, &unk_27F22B200);
  v30 = *(&v169 + 1);
  sub_24E601704(&v168, &unk_27F22B200);
  if (v30 && *(v7 + 298) == 1)
  {
    sub_24E60169C(v7 + 416, &v178, &unk_27F22B200);
    v31 = *(&v179 + 1);
    if (*(&v179 + 1))
    {
      v32 = v180;
      v33 = __swift_project_boxed_opaque_existential_1(&v178, *(&v179 + 1));
      *(&v169 + 1) = v31;
      v170 = *(v32 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v168);
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v33, v31);
      __swift_destroy_boxed_opaque_existential_1(&v178);
    }

    else
    {
      sub_24E601704(&v178, &unk_27F22B200);
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
    }

    v178 = v168;
    v179 = v169;
    v180 = v170;
    sub_24E60169C(v7 + 456, &v175, &qword_27F229780);
  }

  else
  {
    sub_24E60169C(v7 + 456, &v178, &qword_27F229780);
    sub_24E60169C(v7 + 416, &v175, &unk_27F22B200);
    v35 = *(&v176 + 1);
    if (*(&v176 + 1))
    {
      v36 = v177;
      v37 = __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
      *(&v169 + 1) = v35;
      v170 = *(v36 + 8);
      v38 = __swift_allocate_boxed_opaque_existential_1(&v168);
      (*(*(v35 - 8) + 16))(v38, v37, v35);
      __swift_destroy_boxed_opaque_existential_1(&v175);
    }

    else
    {
      sub_24E601704(&v175, &unk_27F22B200);
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
    }

    v175 = v168;
    v176 = v169;
    v177 = v170;
  }

  sub_24E60169C(&v178, &v168, &qword_27F229780);
  v39 = *(&v169 + 1);
  sub_24E601704(&v168, &qword_27F229780);
  if (!v39)
  {
    sub_24E60169C(&v175, &v168, &qword_27F229780);
    v40 = *(&v169 + 1);
    sub_24E601704(&v168, &qword_27F229780);
    if (!v40)
    {
      goto LABEL_125;
    }
  }

  sub_24E60169C(&v178, &v168, &qword_27F229780);
  v41 = *(&v169 + 1);
  sub_24E601704(&v168, &qword_27F229780);
  v42 = 0.0;
  if (v41)
  {
    sub_24E60169C(&v175, &v168, &qword_27F229780);
    v43 = *(&v169 + 1);
    sub_24E601704(&v168, &qword_27F229780);
    if (v43)
    {
      v44 = 272;
      if (*(v7 + 280))
      {
        v44 = 264;
      }

      v42 = *(v7 + v44);
    }
  }

  sub_24E60169C(&v178, &v173, &qword_27F229780);
  if (!v174)
  {
    sub_24E601704(&v173, &qword_27F229780);
    v156 = 0.0;
    v160 = 0.0;
    goto LABEL_35;
  }

  sub_24E612C80(&v173, &v168);
  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x7061726761726170 && v45 == 0xE900000000000068)
  {
    goto LABEL_23;
  }

  v46 = sub_24F92CE08();

  if (v46)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v47 == 0xED0000676E697461)
  {
    goto LABEL_23;
  }

  v48 = sub_24F92CE08();

  if (v48)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x736F507472616863 && v131 == 0xED00006E6F697469)
  {
    goto LABEL_23;
  }

  v132 = sub_24F92CE08();

  if (v132)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x676E69746172 && v133 == 0xE600000000000000)
  {
    goto LABEL_23;
  }

  v134 = sub_24F92CE08();

  if (v134)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x4373726F74696465 && v135 == 0xED00006563696F68)
  {
LABEL_23:

LABEL_31:
    __swift_project_boxed_opaque_existential_1(&v168, *(&v169 + 1));
    sub_24F922298();
    v50 = v49;
    v156 = v51;
    v186.origin.x = v29;
    v186.origin.y = v21;
    v186.size.width = v23;
    v186.size.height = v25;
    Width = CGRectGetWidth(v186);
    if (Width >= v50)
    {
      Width = v50;
    }

    v160 = Width;
    goto LABEL_34;
  }

  v136 = sub_24F92CE08();

  if (v136)
  {
    goto LABEL_31;
  }

  sub_24E60169C(&v178, &v173, &qword_27F229780);
  if (v174)
  {
    __swift_project_boxed_opaque_existential_1(&v173, v174);
    sub_24F922218();
    v160 = v137;
    v156 = v138;
    __swift_destroy_boxed_opaque_existential_1(&v173);
  }

  else
  {
    sub_24E601704(&v173, &qword_27F229780);
    v160 = 0.0;
    v156 = 0.0;
  }

LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(&v168);
LABEL_35:
  sub_24E60169C(&v175, &v173, &qword_27F229780);
  if (v174)
  {
    sub_24E612C80(&v173, &v168);
    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x7061726761726170 && v53 == 0xE900000000000068)
    {
      goto LABEL_38;
    }

    v55 = sub_24F92CE08();

    if (v55)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v56 == 0xED0000676E697461)
    {
      goto LABEL_38;
    }

    v57 = sub_24F92CE08();

    if (v57)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x736F507472616863 && v139 == 0xED00006E6F697469)
    {
      goto LABEL_38;
    }

    v140 = sub_24F92CE08();

    if (v140)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x676E69746172 && v141 == 0xE600000000000000)
    {
      goto LABEL_38;
    }

    v142 = sub_24F92CE08();

    if (v142)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x4373726F74696465 && v143 == 0xED00006563696F68)
    {
LABEL_38:
    }

    else
    {
      v144 = sub_24F92CE08();

      if ((v144 & 1) == 0)
      {
        sub_24E60169C(&v175, &v173, &qword_27F229780);
        if (v174)
        {
          __swift_project_boxed_opaque_existential_1(&v173, v174);
          sub_24F922218();
          v54 = v145;
          v148 = v146;
          __swift_destroy_boxed_opaque_existential_1(&v173);
        }

        else
        {
          sub_24E601704(&v173, &qword_27F229780);
          v54 = 0.0;
          v148 = 0;
        }

LABEL_50:
        __swift_destroy_boxed_opaque_existential_1(&v168);
        goto LABEL_51;
      }
    }

LABEL_45:
    __swift_project_boxed_opaque_existential_1(&v168, *(&v169 + 1));
    sub_24F922298();
    v59 = v58;
    v148 = v60;
    v187.origin.x = v29;
    v187.origin.y = v21;
    v187.size.width = v23;
    v187.size.height = v25;
    v61 = CGRectGetWidth(v187) - (v42 + v160);
    if (v61 >= v59)
    {
      v61 = v59;
    }

    if (v61 > 0.0)
    {
      v54 = v61;
    }

    else
    {
      v54 = 0.0;
    }

    goto LABEL_50;
  }

  sub_24E601704(&v173, &qword_27F229780);
  v148 = 0;
  v54 = 0.0;
LABEL_51:
  v62 = *(v7 + 304);
  v149 = v54;
  if (v62 == 4)
  {
    v188.origin.x = v29;
    v188.origin.y = v21;
    v188.size.width = v23;
    v188.size.height = v25;
    v63 = CGRectGetMinX(v188);
  }

  else
  {
    v64 = v42 + v160 + v54;
    v189.origin.x = v29;
    v189.origin.y = v21;
    v189.size.width = v23;
    v189.size.height = v25;
    v63 = CGRectGetMidX(v189) + v64 * -0.5;
  }

  v159 = v63;
  sub_24E60169C(&v178, &v173, &qword_27F229780);
  v158 = v21;
  if (!v174)
  {
    sub_24E601704(&v173, &qword_27F229780);
    v66 = 0.0;
    v150 = 0.0;
    v160 = 0.0;
    v156 = 0.0;
    goto LABEL_65;
  }

  sub_24E612C80(&v173, &v168);
  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x7061726761726170 && v65 == 0xE900000000000068)
  {
    goto LABEL_57;
  }

  v67 = sub_24F92CE08();

  if (v67)
  {
    goto LABEL_60;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v117 == 0xED0000676E697461)
  {
    goto LABEL_57;
  }

  v118 = sub_24F92CE08();

  if (v118)
  {
    goto LABEL_60;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x736F507472616863 && v119 == 0xED00006E6F697469)
  {
    goto LABEL_57;
  }

  v120 = sub_24F92CE08();

  if (v120)
  {
    goto LABEL_60;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x676E69746172 && v121 == 0xE600000000000000)
  {
LABEL_57:
  }

  else
  {
    v122 = sub_24F92CE08();

    if ((v122 & 1) == 0)
    {

      v68 = v42;
      if (*(v7 + 297) - 3 > 0xA)
      {
        v123 = 200;
      }

      else
      {
        v123 = *&aX_3[8 * (*(v7 + 297) - 3)];
      }

      sub_24E615E00(v7 + v123, &v166);
      sub_24E612C80(&v166, &v173);
      __swift_project_boxed_opaque_existential_1(&v173, v174);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v71 = v147;
      (*(v157 + 8))(v16, v13);
      goto LABEL_64;
    }
  }

LABEL_60:
  v68 = v42;
  __swift_project_boxed_opaque_existential_1(&v168, *(&v169 + 1));
  sub_24F922288();

  if (*(v7 + 297) - 3 > 0xA)
  {
    v69 = 200;
  }

  else
  {
    v69 = *&aX_3[8 * (*(v7 + 297) - 3)];
  }

  sub_24E615E00(v7 + v69, &v166);
  sub_24E612C80(&v166, &v173);
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  sub_24F9223C8();
  v71 = v70;
LABEL_64:
  __swift_destroy_boxed_opaque_existential_1(&v173);
  v190.origin.x = v29;
  v190.origin.y = v158;
  v190.size.width = v23;
  v190.size.height = v25;
  MinY = CGRectGetMinY(v190);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v74 = v73;
  (*(v157 + 8))(v16, v13);
  v150 = v71 + MinY + v74 - *(v7 + 240);
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v66 = v159;
  v42 = v68;
LABEL_65:
  sub_24E60169C(&v175, &v173, &qword_27F229780);
  if (v174)
  {
    sub_24E612C80(&v173, &v168);
    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x7061726761726170 && v75 == 0xE900000000000068)
    {
      goto LABEL_68;
    }

    v77 = sub_24F92CE08();

    if (v77)
    {
      goto LABEL_72;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v124 == 0xED0000676E697461)
    {
      goto LABEL_68;
    }

    v125 = sub_24F92CE08();

    if (v125)
    {
      goto LABEL_72;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x736F507472616863 && v126 == 0xED00006E6F697469)
    {
      goto LABEL_68;
    }

    v127 = sub_24F92CE08();

    if (v127)
    {
      goto LABEL_72;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x676E69746172 && v128 == 0xE600000000000000)
    {
LABEL_68:
    }

    else
    {
      v129 = sub_24F92CE08();

      if ((v129 & 1) == 0)
      {

        v78 = v42;
        if (*(v7 + 297) - 3 > 0xA)
        {
          v130 = 200;
        }

        else
        {
          v130 = *&aX_3[8 * (*(v7 + 297) - 3)];
        }

        sub_24E615E00(v7 + v130, &v166);
        sub_24E612C80(&v166, &v173);
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        sub_24E8ED7D8();
        sub_24F9223A8();
        (*(v157 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(&v173);
LABEL_76:
        sub_24E60169C(&v178, &v173, &qword_27F229780);
        v80 = v174;
        sub_24E601704(&v173, &qword_27F229780);
        if (v80)
        {
          v191.origin.x = v66;
          v191.origin.y = v150;
          v191.size.width = v160;
          v191.size.height = v156;
          v159 = v78 + CGRectGetMaxX(v191);
        }

        v192.origin.x = v29;
        v192.origin.y = v158;
        v192.size.width = v23;
        v192.size.height = v25;
        CGRectGetMinY(v192);
        __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
        sub_24E8ED7D8();
        sub_24F9223A8();
        (*(v157 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(&v168);
        v76 = *(&v179 + 1);
        if (*(&v179 + 1))
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }
    }

LABEL_72:
    v78 = v42;
    __swift_project_boxed_opaque_existential_1(&v168, *(&v169 + 1));
    sub_24F922288();

    if (*(v7 + 297) - 3 > 0xA)
    {
      v79 = 200;
    }

    else
    {
      v79 = *&aX_3[8 * (*(v7 + 297) - 3)];
    }

    sub_24E615E00(v7 + v79, &v166);
    sub_24E612C80(&v166, &v173);
    __swift_project_boxed_opaque_existential_1(&v173, v174);
    sub_24F9223C8();
    __swift_destroy_boxed_opaque_existential_1(&v173);
    v29 = MinX;
    goto LABEL_76;
  }

  sub_24E601704(&v173, &qword_27F229780);
  v159 = 0.0;
  v149 = 0.0;
  v76 = *(&v179 + 1);
  if (*(&v179 + 1))
  {
LABEL_79:
    v81 = __swift_project_boxed_opaque_existential_1(&v178, v76);
    v82 = *(v76 - 8);
    v83 = MEMORY[0x28223BE20](v81);
    v85 = &v148 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v85, v83);
    sub_24F92C1D8();
    sub_24F922228();
    (*(v82 + 8))(v85, v76);
  }

LABEL_80:
  v86 = *(&v176 + 1);
  if (*(&v176 + 1))
  {
    v87 = __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
    v88 = *(v86 - 8);
    v89 = MEMORY[0x28223BE20](v87);
    v91 = &v148 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v88 + 16))(v91, v89);
    sub_24F92C1D8();
    sub_24F922228();
    (*(v88 + 8))(v91, v86);
  }

  LOBYTE(v168) = *(v7 + 299);
  sub_24E60169C(v7 + 456, &v168 + 8, &qword_27F229780);
  sub_24E60169C(v7 + 416, &v171, &unk_27F22B200);
  if (v168 > 1u)
  {
    if (v168 == 2)
    {
      if (v170)
      {
        sub_24E612C80((&v168 + 8), &v173);
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
        sub_24E8ED7D8();
        sub_24F9223A8();
        v110 = v109;
        (*(v157 + 8))(v16, v13);
        v111 = sub_24F922208();
        *(v112 + 8) = v110;
        v111(&v166, 0);
        __swift_destroy_boxed_opaque_existential_1(&v173);
        v98 = &unk_27F22B200;
        v99 = &v171;
        goto LABEL_124;
      }

LABEL_123:
      v98 = &unk_27F231B68;
      v99 = &v168;
      goto LABEL_124;
    }

    if (v168 == 3)
    {
      if (v170)
      {
        sub_24E612C80((&v168 + 8), &v173);
        __swift_project_boxed_opaque_existential_1((v7 + 496), *(v7 + 520));
        sub_24F922218();
        v92 = CGRectGetMinY(v193);
        __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
        sub_24F922218();
        v93 = v92 - CGRectGetMaxY(v194);
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        sub_24F922218();
        v94 = (v93 - CGRectGetHeight(v195)) * 0.5;
        __swift_project_boxed_opaque_existential_1(&v173, v174);
        __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
        sub_24F922218();
        v95 = v94 + CGRectGetMaxY(v196);
        v96 = sub_24F922208();
        *(v97 + 8) = v95;
        v96(&v166, 0);
        __swift_destroy_boxed_opaque_existential_1(&v173);
        v98 = &unk_27F22B200;
        v99 = &v171;
LABEL_124:
        sub_24E601704(v99, v98);
LABEL_125:
        sub_24F922128();
        sub_24E601704(&v175, &qword_27F229780);
        return sub_24E601704(&v178, &qword_27F229780);
      }

      goto LABEL_123;
    }

    if (!v170)
    {
      goto LABEL_123;
    }

    sub_24E60169C(&v168 + 8, &v173, &qword_27F229780);
    if (v172)
    {
      sub_24E612C80(&v173, &v166);
      sub_24E612C80(&v171, v164);
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      __swift_project_boxed_opaque_existential_1(v164, v165);
      sub_24F922218();
      MidY = CGRectGetMidY(v197);
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      sub_24F922218();
      v114 = MidY + CGRectGetHeight(v198) * -0.5;
      v115 = sub_24F922208();
      *(v116 + 8) = v114;
      v115(v163, 0);
      goto LABEL_99;
    }

LABEL_122:
    __swift_destroy_boxed_opaque_existential_1(&v173);
    goto LABEL_123;
  }

  if (!v168 || !v170)
  {
    goto LABEL_123;
  }

  sub_24E60169C(&v168 + 8, &v173, &qword_27F229780);
  if (!v172)
  {
    goto LABEL_122;
  }

  sub_24E612C80(&v173, &v166);
  sub_24E612C80(&v171, v164);
  __swift_project_boxed_opaque_existential_1(&v166, v167);
  __swift_project_boxed_opaque_existential_1(v164, v165);
  sub_24F922218();
  v101 = v100;
  v102 = sub_24F922208();
  *(v103 + 8) = v101;
  v102(v163, 0);
  sub_24E615E00(&v166, v163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730);
  sub_24EE557CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_99:
    __swift_destroy_boxed_opaque_existential_1(v164);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    v98 = &qword_27F229780;
    v99 = (&v168 + 8);
    goto LABEL_124;
  }

  v104 = v162;
  __swift_project_boxed_opaque_existential_1(v164, v165);
  result = sub_24F922498();
  if (result)
  {
    v106 = result;
    result = [v104 font];
    if (result)
    {
      v107 = result;
      v108 = v104;
      [v106 ascender];
      [v106 capHeight];
      [v107 ascender];
      [v107 capHeight];
      [v108 frame];
      [v108 setFrame_];

      goto LABEL_99;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double _s12GameStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 80), *(a1 + 104));
  sub_24F9223B8();
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((a1 + 40), *(a1 + 64));
  sub_24F9223B8();
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F9223B8();
  v6 = *(a1 + 297);
  v8 = v7;
  if (((1 << v6) & 0x77F0) != 0)
  {
    v9 = v6 - 4;
    if (v9 > 9)
    {
      v10 = 200;
    }

    else
    {
      v10 = qword_24F9CB6F8[v9];
    }

    sub_24E615E00(a1 + v10, v17);
    sub_24E612C80(v17, v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_24F9223B8();
    v12 = v11 + *(a1 + 256);
  }

  else
  {
    v13 = v6 - 3;
    if (v13 > 7u)
    {
      v14 = 200;
    }

    else
    {
      v14 = qword_24F9CB6B8[v13];
    }

    sub_24E615E00(a1 + v14, v17);
    sub_24E612C80(v17, v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_24F9223B8();
    v12 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v8 + v3 + v5 + v12;
}

uint64_t GenericPageMoreIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_24F928398();
  sub_24F928268();
  v15 = *(v8 + 8);
  v15(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_24E70E058(v6);
    v16 = sub_24F92AC38();
    sub_24F123CF4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v17 = 0x656B6F5465676170;
    v17[1] = 0xE90000000000006ELL;
    v17[2] = &type metadata for GenericPageMoreIntent;
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D22530], v16);
    swift_willThrow();
  }

  else
  {
    v20 = *(v12 + 32);
    v20(v14, v6, v11);
    v21 = v24;
    v24[3] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    v20(boxed_opaque_existential_1, v14, v11);
  }

  v18 = sub_24F9285B8();
  (*(*(v18 - 8) + 8))(v25, v18);
  return (v15)(v26, v7);
}

JSValue __swiftcall GenericPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnyGenericPageMoreIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a3;
  v27 = a2;
  v26[0] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_24F928398();
  sub_24F928268();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_24E70E058(v7);
    v17 = sub_24F92AC38();
    sub_24F123CF4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v19 = v18;
    v20 = type metadata accessor for AnyGenericPageMoreIntent();
    *v19 = 0x656B6F5465676170;
    v19[1] = 0xE90000000000006ELL;
    v19[2] = v20;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22530], v17);
    swift_willThrow();
  }

  else
  {
    v23 = *(v13 + 32);
    v23(v15, v7, v12);
    v24 = v26[0];
    *(v26[0] + 24) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    v23(boxed_opaque_existential_1, v15, v12);
  }

  v21 = sub_24F9285B8();
  (*(*(v21 - 8) + 8))(v27, v21);
  return (v16)(v28, v8);
}

JSValue __swiftcall AnyGenericPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F123C54()
{
  result = qword_27F239D40[0];
  if (!qword_27F239D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F239D40);
  }

  return result;
}

uint64_t sub_24F123CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F123DAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_24F123DF4()
{
  if (qword_27F210408 != -1)
  {
    swift_once();
  }

  v0 = qword_27F22BE88;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithHierarchicalColor_];

  qword_27F39D980 = v3;
}

void sub_24F123E8C()
{
  v0 = [objc_opt_self() systemGrayColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor_];

  qword_27F39D988 = v1;
}

void sub_24F123F00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9C29E0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemOrangeColor];
  *(v0 + 40) = [v1 systemGrayColor];
  sub_24E77ACC8();
  v2 = sub_24F92B588();

  v3 = [objc_opt_self() configurationWithPaletteColors_];

  qword_27F39D990 = v3;
}

uint64_t sub_24F124300(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_24F1243DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MediaView()
{
  result = qword_27F239DF0;
  if (!qword_27F239DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1244D8()
{
  sub_24F12461C();
  if (v0 <= 0x3F)
  {
    sub_24F1246B0(319, &qword_27F22E600, type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      sub_24F1246B0(319, &qword_27F232318, type metadata accessor for Video);
      if (v2 <= 0x3F)
      {
        sub_24F1246B0(319, &qword_27F218630, type metadata accessor for VideoConfiguration);
        if (v3 <= 0x3F)
        {
          sub_24F1246B0(319, &qword_27F21DF58, type metadata accessor for CGSize);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F12461C()
{
  if (!qword_27F239E00)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    sub_24F124A50(&qword_27F239098, type metadata accessor for VideoPlaybackCoordinator);
    v0 = sub_24F9243E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F239E00);
    }
  }
}

void sub_24F1246B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F124720@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SwiftUIArtworkView(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = (v1 + *(type metadata accessor for MediaView() + 32));
    v12 = v11[1];
    v21 = *v11;
    v13 = *(v11 + 16);
    v14 = v3[6];
    v15 = *MEMORY[0x277CE1010];
    v16 = sub_24F926E68();
    (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
    v17 = v21;
    *v6 = v10;
    *(v6 + 1) = v17;
    *(v6 + 2) = v12;
    v6[24] = v13;
    v18 = &v6[v3[7]];
    *v18 = 0;
    *(v18 + 1) = 0;
    v18[16] = 1;
    v6[v3[8]] = 2;
    v6[v3[9]] = 0;
    sub_24E9D0D28(v6, v9);
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
  }

  sub_24F124928(v9, a1);
}

uint64_t sub_24F124928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F12499C()
{
  result = qword_27F239E08;
  if (!qword_27F239E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2245A0);
    sub_24F124A50(&qword_27F226530, type metadata accessor for SwiftUIArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E08);
  }

  return result;
}

uint64_t sub_24F124A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F124A98()
{
  MEMORY[0x2530542D0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_24F124B24@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AsyncController.VisibilityAssertion();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  result = sub_24F124BB0();
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_24F124BB0()
{
  v1 = v0;
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___visibilityAssertions);
  swift_beginAccess();
  v11 = *v10;
  os_unfair_lock_lock(*(*v10 + 16));
  v12 = v10[1];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10[1] = v14;
  if (v14 != 1)
  {
    if (v14 > 1)
    {
      os_unfair_lock_unlock(*(v11 + 16));
      return swift_endAccess();
    }

LABEL_10:
    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  v19[0] = v3;
  os_unfair_lock_unlock(*(v11 + 16));
  swift_endAccess();
  sub_24E69A5C4(0, &qword_27F21BCB0);
  sub_24E69A5C4(0, &qword_27F222300);
  v15 = sub_24F92BEF8();
  v16 = sub_24F92C408();

  if ((v16 & 1) == 0 || (result = [objc_opt_self() isMainThread], (result & 1) == 0))
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_20_2;
    v18 = _Block_copy(aBlock);

    sub_24F927DA8();
    v19[1] = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v9, v5, v18);
    _Block_release(v18);
    (*(v19[0] + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_24F124F54()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___visibilityAssertions);
  swift_beginAccess();
  v10 = *v9;
  os_unfair_lock_lock(*(*v9 + 16));
  v11 = v9[1];
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
LABEL_10:
    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  v9[1] = v13;
  if (v13)
  {
    if (v13 > 0)
    {
      os_unfair_lock_unlock(*(v10 + 16));
      return swift_endAccess();
    }

    goto LABEL_10;
  }

  v21 = v2;
  os_unfair_lock_unlock(*(v10 + 16));
  swift_endAccess();
  sub_24E69A5C4(0, &qword_27F21BCB0);
  v15 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15AsyncController_queue);
  sub_24E69A5C4(0, &qword_27F222300);
  v17 = sub_24F92BEF8();
  v22 = v16;
  v18 = sub_24F92C408();

  if ((v18 & 1) == 0 || (result = [objc_opt_self() isMainThread], (result & 1) == 0))
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_118;
    v19 = _Block_copy(aBlock);

    sub_24F927DA8();
    v23 = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v8, v4, v19);
    _Block_release(v19);
    (*(v21 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t AsyncController.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15AsyncController_logger;
  v2 = sub_24F9220D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AsyncController.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15AsyncController_logger;
  v2 = sub_24F9220D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F125468@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncController();
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AsyncController()
{
  result = qword_27F239E10;
  if (!qword_27F239E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1254FC()
{
  result = sub_24F9220D8();
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

uint64_t sub_24F125644()
{
  if (swift_weakLoadStrong())
  {
    sub_24F124F54();
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F1256D4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  v4 = type metadata accessor for SocialMenuIntent();
  v5 = v4[5];
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(inited + 80) = sub_24E736C00();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E736938(v1 + v5, boxed_opaque_existential_1);
  *(inited + 88) = 0x6143657669746361;
  *(inited + 96) = 0xEB00000000736C6CLL;
  v7 = *(v1 + v4[6]);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E48);
  v8 = sub_24F125CF8();
  *(inited + 104) = v7;
  *(inited + 136) = v8;
  *(inited + 144) = 0xD000000000000018;
  *(inited + 152) = 0x800000024FA6CEA0;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D22598];
  *(inited + 160) = *(v1 + v4[7]);
  *(inited + 184) = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA46670;
  v11 = *(v1 + v4[8]);
  *(inited + 240) = v9;
  *(inited + 248) = v10;
  *(inited + 216) = v11;
  *(inited + 256) = 0x756F724772657375;
  *(inited + 264) = 0xEA00000000007370;
  v12 = *(v1 + v4[9]);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E68);
  *(inited + 304) = sub_24F125E30();
  *(inited + 272) = v12;

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F125930(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F125A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SocialMenuIntent()
{
  result = qword_27F239E20;
  if (!qword_27F239E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F125AFC()
{
  sub_24F125C7C(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24F125C18();
    if (v1 <= 0x3F)
    {
      sub_24F125C7C(319, &qword_27F239E40, type metadata accessor for SocialUserGroup, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F125C18()
{
  if (!qword_27F239E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E38);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F239E30);
    }
  }
}

void sub_24F125C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F125CF8()
{
  result = qword_27F239E50;
  if (!qword_27F239E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E48);
    sub_24F125D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E50);
  }

  return result;
}

unint64_t sub_24F125D7C()
{
  result = qword_27F239E58;
  if (!qword_27F239E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E38);
    sub_24F125EE4(&qword_27F239E60, type metadata accessor for ActiveCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E58);
  }

  return result;
}

unint64_t sub_24F125E30()
{
  result = qword_27F239E70;
  if (!qword_27F239E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E68);
    sub_24F125EE4(&qword_27F239E78, type metadata accessor for SocialUserGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E70);
  }

  return result;
}

uint64_t sub_24F125EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DebugMetricsEventRecorder.__allocating_init(historySize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E90);
  sub_24F923058();
  v5 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock;
  *(v2 + v5) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v2 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_historySize) = a1;
  return v2;
}

uint64_t DebugMetricsEventRecorder.init(historySize:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder__events;
  v12[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E90);
  sub_24F923058();
  (*(v4 + 32))(v1 + v9, v6, v3);
  v10 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_historySize) = a1;
  return v1;
}

uint64_t DebugMetricsEventRecorder.events.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F12623C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F1262C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t DebugMetricsEventRecorder.$events.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24F1263B4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8);
  sub_24F923068();
  return swift_endAccess();
}