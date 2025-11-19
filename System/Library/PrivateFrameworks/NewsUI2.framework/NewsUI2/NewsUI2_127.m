uint64_t sub_2194DB9A8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDDC34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D2FC98] || v10 == *MEMORY[0x277D2FCA0])
  {
    v12 = MEMORY[0x277D6CE70];
  }

  else
  {
    if (v10 != *MEMORY[0x277D2FC88] && v10 != *MEMORY[0x277D2FC90])
    {
      v16 = *MEMORY[0x277D6CE70];
      v17 = sub_219BE2C74();
      (*(*(v17 - 8) + 104))(a3, v16, v17);
      return (*(v7 + 8))(v9, v6);
    }

    a2();
    v12 = MEMORY[0x277D6CE68];
  }

  v14 = *v12;
  v15 = sub_219BE2C74();
  return (*(*(v15 - 8) + 104))(a3, v14, v15);
}

uint64_t sub_2194DBBB0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BDD944();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F1AC8();
  sub_2194DBEE4(a3, v10);
  sub_2187B2DA0();

  v11 = MEMORY[0x277D2FB40];
  sub_218B1B3A4(v10, v7, MEMORY[0x277D2FB40]);
  sub_219BDD8C4();
  sub_218BF9888(v7, v11);
  sub_219BE1B74();
}

uint64_t sub_2194DBD2C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    result = swift_beginAccess();
    if ((*(a1 + 16) & 1) == 0)
    {
      a2(result);
      result = swift_beginAccess();
      *(a1 + 16) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_2194DBEAC(_BYTE *result)
{
  if (*result == 2)
  {
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t sub_2194DBEE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsActivity2.Article(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2194DBF48()
{
  result = qword_280E8DCE8;
  if (!qword_280E8DCE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DCE8);
  }

  return result;
}

uint64_t sub_2194DBFB8(void *a1)
{
  v3 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2194DBBB0(a1, v4, v5);
}

id sub_2194DC084(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsUI220InterludeContentView_image);
    objc_allocWithZone(sub_219BE7134());
    v6 = v5;
    v7 = v1;
    v8 = sub_219BE7124();
    v9 = *(v1 + v2);
    *(v7 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

char *sub_2194DC208()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_image;
  v3 = objc_opt_self();
  v4 = sub_219BF53D4();
  v5 = [v3 ts:v4 internalSystemImageNamed:?];

  *&v0[v2] = v5;
  *&v0[OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView] = 0;
  v6 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v7 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_titleLabel;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_subtitleLabel;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *&v0[OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___maskImageView] = 0;
  v38.receiver = v0;
  v38.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer;
  v11 = *&v9[OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer];
  v12 = v9;
  v13 = v11;
  v14 = sub_2194DC084(&OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView);
  [v13 addSubview_];

  sub_218725F94();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C189E0;
  v16 = *&v9[v10];
  *(inited + 32) = v16;
  v17 = *&v12[OBJC_IVAR____TtC7NewsUI220InterludeContentView_titleLabel];
  *(inited + 40) = v17;
  v18 = *&v12[OBJC_IVAR____TtC7NewsUI220InterludeContentView_subtitleLabel];
  *(inited + 48) = v18;
  v19 = inited & 0xC000000000000001;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  for (i = v20; ; i = MEMORY[0x21CECE0F0](0, inited))
  {
    v24 = i;
    [v12 addSubview_];

    if (v19)
    {
      v25 = MEMORY[0x21CECE0F0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_13;
      }

      v25 = *(inited + 40);
    }

    v26 = v25;
    [v12 addSubview_];

    if (v19)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v27 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v27 = MEMORY[0x21CECE0F0](2, inited);
LABEL_10:
  v28 = v27;
  [v12 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v30 = v12;
  v31 = [v29 init];
  [v30 setMaskView_];

  v32 = [v30 maskView];
  if (v32)
  {
    v33 = sub_2194DC084(&OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___maskImageView);
    [v32 addSubview_];
  }

  v34 = sub_2194DC084(&OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___maskImageView);
  v35 = [v34 layer];

  v36 = sub_219BF53D4();
  [v35 setCompositingFilter_];

  return v30;
}

void sub_2194DC5E4()
{
  v1 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_image;
  v2 = objc_opt_self();
  v3 = sub_219BF53D4();
  v4 = [v2 ts:v3 internalSystemImageNamed:?];

  *(v0 + v1) = v4;
  *(v0 + OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView) = 0;
  v5 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v6 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_titleLabel;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC7NewsUI220InterludeContentView_subtitleLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___maskImageView) = 0;
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_2194DC744()
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WebViewerState();
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  v8 = *(v7 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    *v6 = v8;
    swift_storeEnumTagMultiPayload();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_retain_n();
    if (Strong)
    {
      sub_219B73890(v6);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_2194DD504(v6);
  }

  else
  {
  }

  sub_219BDBCB4();
  v10 = sub_219BDBD34();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  v11 = OBJC_IVAR____TtC7NewsUI220WebViewerDataManager_startDate;
  swift_beginAccess();
  sub_218B9E4D4(v3, v7 + v11);
  swift_endAccess();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v8;

  v14 = sub_219BF1AF4();
}

uint64_t sub_2194DC988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WebViewerState();
  MEMORY[0x28223BE20](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1584();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194DD454();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(a3 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorIfOffline) == 1 && (v16 = result, sub_2194DD568(a1, v14), (*(v9 + 48))(v14, 1, v8) != 1))
    {
      (*(v9 + 32))(v11, v14, v8);
      v17 = *(*(*(v16 + 32) + 16) + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorTitle + 8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (v17)
        {

          v18 = sub_219BF1524();
          v22[3] = v19;
          v22[4] = v18;
          v20 = sub_219BF1534();
          v22[1] = v21;
          v22[2] = v20;
          sub_219BF1574();
          sub_219BF1514();
        }

        else
        {
          (*(v9 + 16))(v7, v11, v8);
        }

        swift_storeEnumTagMultiPayload();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_219B73890(v7);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
        sub_2194DD504(v7);
      }

      else
      {
      }

      return (*(v9 + 8))(v11, v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2194DCC88(void *a1)
{
  v2 = v1;
  sub_2194DD454();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for WebViewerState();
  MEMORY[0x28223BE20](v57);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v52 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v52 - v12;
  v13 = sub_219BF1584();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v54 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v52 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  if (qword_27CC08600 != -1)
  {
    swift_once();
  }

  v55 = v6;
  v21 = sub_219BE5434();
  __swift_project_value_buffer(v21, qword_27CCD8B58);
  v22 = a1;
  v23 = sub_219BE5414();
  v24 = sub_219BF6214();

  v25 = os_log_type_enabled(v23, v24);
  v52 = v8;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = v2;
    v28 = v14;
    v29 = v13;
    v30 = swift_slowAlloc();
    v59 = v30;
    *v26 = 136315138;
    swift_getErrorValue();
    v31 = sub_219BF7A04();
    v33 = sub_2186D1058(v31, v32, &v59);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_2186C1000, v23, v24, "WebViewerInteractor: page failed to load error: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v34 = v30;
    v13 = v29;
    v14 = v28;
    v2 = v27;
    MEMORY[0x21CECF960](v34, -1, -1);
    MEMORY[0x21CECF960](v26, -1, -1);
  }

  v35 = *(*(v2 + 32) + 16);
  v36 = *(v35 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorTitle + 8);
  if (*(v35 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorDescription + 8))
  {
    v58 = v20;
    v37 = qword_27CC08290;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v13, qword_27CC15E08);
    if (v36)
    {
      sub_219BF1524();
      sub_219BF1574();
      sub_219BF1514();
    }

    else
    {

      (*(v14 + 16))(v58, v38, v13);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v42 = Strong;
      v43 = v56;
      v44 = v58;
      (*(v14 + 16))(v56, v58, v13);
      swift_storeEnumTagMultiPayload();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_219B736EC(v42, v43);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_2194DD504(v43);
      return (*(v14 + 8))(v44, v13);
    }

LABEL_28:
    v44 = v58;
    return (*(v14 + 8))(v44, v13);
  }

  v39 = v55;
  sub_219BF1B74();
  if ((*(v14 + 48))(v39, 1, v13) == 1)
  {
    if (qword_27CC08290 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v13, qword_27CC15E08);
    if (v36)
    {
      sub_219BF1524();
      sub_219BF1534();
      sub_219BF1574();
      sub_219BF1514();
    }

    else
    {
      (*(v14 + 16))(v58, v40, v13);
    }

    v48 = swift_unknownObjectWeakLoadStrong();
    if (!v48)
    {
      goto LABEL_28;
    }

    v49 = v48;
    v50 = v53;
    (*(v14 + 16))(v53, v58, v13);
    swift_storeEnumTagMultiPayload();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219B736EC(v49, v50);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_2194DD504(v50);
    v44 = v58;
  }

  else
  {
    v44 = v54;
    (*(v14 + 32))(v54, v39, v13);
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      if (v36)
      {
        sub_219BF1524();
        sub_219BF1534();
        sub_219BF1574();
        v47 = v52;
        sub_219BF1514();
      }

      else
      {
        v47 = v52;
        (*(v14 + 16))(v52, v44, v13);
      }

      swift_storeEnumTagMultiPayload();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_219B736EC(v46, v47);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_2194DD504(v47);
      v44 = v54;
    }

    else
    {
    }
  }

  return (*(v14 + 8))(v44, v13);
}

uint64_t sub_2194DD3E8()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2194DD454()
{
  if (!qword_27CC1B2A0)
  {
    sub_2194DD4B0();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1B2A0);
    }
  }
}

unint64_t sub_2194DD4B0()
{
  result = qword_27CC1B2A8;
  if (!qword_27CC1B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B2A8);
  }

  return result;
}

uint64_t sub_2194DD504(uint64_t a1)
{
  v2 = type metadata accessor for WebViewerState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2194DD568(uint64_t a1, uint64_t a2)
{
  sub_2194DD454();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2194DD5E8(uint64_t (*a1)(void))
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return a1(0);
}

void sub_2194DD73C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v24 = 0;
  v25 = 0xE000000000000000;

  v5 = sub_219BF53D4();

  v6 = [a1 objectForKey_];

  if (v6)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v22, v23);
    type metadata accessor for TodayViewController();
    swift_dynamicCast();
    v7 = [v21 description];
    v8 = sub_219BF5414();
    v10 = v9;

    MEMORY[0x21CECC330](v8, v10);

    v11 = v24;
    v12 = v25;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v11;
    *(v4 + 40) = v12;
    sub_219BE5314();

    v13 = sub_219BF53D4();

    v14 = [a1 objectForKey_];

    if (v14)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v22, v23);
      swift_dynamicCast();
      v15 = v24;
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;
      v17 = swift_allocObject();
      v17[2] = v15;
      v17[3] = sub_2194DDA5C;
      v17[4] = v16;

      v18 = v15;

      sub_219BE3494();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2194DDA94(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = sub_219BDBD34();
  v45 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v39 - v6;
  v7 = sub_219BDEEF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE13E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDF0B4();
  v46 = *(v15 - 8);
  v47 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BDF7C4();
  v44 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEC3C4();
  v50 = v19;
  sub_219BDF7B4();
  v20 = sub_219BEC3B4();
  v21 = MEMORY[0x277D2F238];
  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x277D2F230];
  }

  (*(v12 + 104))(v14, *v21, v11);
  v51 = v17;
  sub_219BDF0A4();
  sub_219BEC3E4();
  Width = CGRectGetWidth(v53);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (Width <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (Width >= 2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_219BEC3E4();
  Height = CGRectGetHeight(v54);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (Height <= -2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (Height < 2147483650.0)
  {
    sub_219BDEEE4();
    sub_2194DE394(&qword_280EE8928, MEMORY[0x277D2D760]);
    sub_219BDCCC4();
    (*(v8 + 8))(v10, v7);
    sub_2187F3258();
    v40 = v24;
    v25 = sub_219BDCD44();
    v41 = a2;
    v26 = v25;
    v27 = *(v25 - 8);
    v42 = v3;
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    v39 = xmmword_219C09BA0;
    *(v29 + 16) = xmmword_219C09BA0;
    v30 = *MEMORY[0x277CEAD18];
    v31 = *(v27 + 104);
    v31(v29 + v28, v30, v26);
    sub_2194DE394(&qword_280EE8680, MEMORY[0x277D2DD68]);
    sub_219BDCCC4();

    v32 = swift_allocObject();
    *(v32 + 16) = v39;
    v31(v32 + v28, v30, v26);
    sub_2194DE394(&qword_280EE88B8, MEMORY[0x277D2D898]);
    v33 = v47;
    sub_219BDCCC4();

    sub_219BE0E64();
    v34 = v48;
    sub_219BEC3D4();
    sub_219BEC3F4();
    v35 = v49;
    sub_219BDBC44();
    v36 = *(v45 + 8);
    v37 = v34;
    v38 = v42;
    v36(v37, v42);
    sub_2194DE394(&qword_27CC1B2C8, MEMORY[0x277D2ED80]);
    sub_219BDCC64();
    v36(v35, v38);
    sub_219BEC3D4();
    sub_219BDCC74();
    v36(v35, v38);
    (*(v46 + 8))(v51, v33);
    (*(v44 + 8))(v50, v52);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_2194DE1E4(uint64_t a1)
{
  v2 = sub_219BEC404();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_219BDD154();
}

void sub_2194DE324(uint64_t a1)
{
  v3 = *(sub_219BEC404() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2194DDA94(a1, v4);
}

uint64_t sub_2194DE394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2194DE404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_2194DE900(0, &qword_280E919D8, sub_2186F6D38);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - v5;
  v36 = type metadata accessor for ArticleListHistoryFeedGroupKnobs();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194DE900(0, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v29 - v12;
  sub_2194DE954();
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194DE9B0();
  sub_219BF7B34();
  if (v2)
  {
    v17 = a1;
  }

  else
  {
    v31 = v11;
    v18 = v34;
    v33 = a1;
    v39 = 0x4C656C6369747261;
    v40 = 0xEB00000000747369;
    v41 = 0;
    v42 = 1;
    sub_218780D28(&qword_280EA71F0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
    v19 = v36;
    v32 = v14;
    sub_219BF76E4();
    v30 = v16;
    v20 = v7;
    v21 = v38;
    v22 = v31;
    v23 = v43;
    sub_2194DEA04(v43, v31);
    v24 = *(v18 + 48);
    v25 = v24(v22, 1, v19);
    v26 = v33;
    if (v25 == 1)
    {
      sub_2186F6D38(0);
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      sub_219AF8758(v21, 0, v20);
      sub_2194DEA84(v23);
      if (v24(v22, 1, v19) != 1)
      {
        sub_2194DEA84(v22);
      }
    }

    else
    {
      sub_2194DEA84(v23);
      sub_2194DEAFC(v22, v20);
    }

    sub_2194DEAFC(v20, v35);
    (*(v37 + 8))(v30, v32);
    v17 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_2194DE870(uint64_t a1)
{
  v2 = sub_2194DE9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194DE8AC(uint64_t a1)
{
  v2 = sub_2194DE9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2194DE900(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2194DE954()
{
  if (!qword_280E8CE88)
  {
    sub_2194DE9B0();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CE88);
    }
  }
}

unint64_t sub_2194DE9B0()
{
  result = qword_280ECACF8[0];
  if (!qword_280ECACF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECACF8);
  }

  return result;
}

uint64_t sub_2194DEA04(uint64_t a1, uint64_t a2)
{
  sub_2194DE900(0, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2194DEA84(uint64_t a1)
{
  sub_2194DE900(0, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2194DEAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2194DEB74()
{
  result = qword_27CC1B2D0;
  if (!qword_27CC1B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B2D0);
  }

  return result;
}

unint64_t sub_2194DEBCC()
{
  result = qword_280ECACE8;
  if (!qword_280ECACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECACE8);
  }

  return result;
}

unint64_t sub_2194DEC24()
{
  result = qword_280ECACF0;
  if (!qword_280ECACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECACF0);
  }

  return result;
}

id sub_2194DEC78(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      result = [a1 sourceChannelID];
      if (result)
      {
LABEL_8:
        v5 = result;
        v6 = sub_219BF5414();

        return v6;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a3 < 2u)
    {
      sub_21882F704(a1, a2, a3);
      return a1;
    }

    result = [a1 sourceChannelID];
    if (result)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2194DED48()
{
  result = qword_27CC1B2D8;
  if (!qword_27CC1B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B2D8);
  }

  return result;
}

uint64_t sub_2194DED9C(uint64_t a1)
{
  v2 = sub_2194DEDDC();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2194DEDDC()
{
  result = qword_27CC1B2E0;
  if (!qword_27CC1B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B2E0);
  }

  return result;
}

void sub_2194DEEF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v8 = sub_219BF53D4();

  v9 = [a1 objectForKey_];

  if (v9)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v40, &v41);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    sub_218962DB8(0, &qword_280EE69A0, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D6CF30]);
    sub_2186C6148(0, &qword_280E8E3B0);
    v10 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v39;
    type metadata accessor for TodayViewController();
    v11 = v39;
    sub_219BE2FB4();

    *(swift_allocObject() + 16) = v11;
    v12 = v11;
    v13 = sub_219BE2E54();
    sub_219BE3054();

    v14 = sub_219BE1C44();
    sub_219BE2F64();

    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v4;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_2194E183C;
    *(v16 + 24) = v15;
    v17 = a1;
    v18 = v4;
    v19 = sub_219BE2E54();
    sub_219BE2F64();

    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_2194E1844;
    *(v21 + 24) = v20;
    v22 = v17;
    v23 = sub_219BE2E54();
    sub_219BDDE34();
    sub_219BE2F64();

    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v18;
    v25 = v22;
    v26 = v18;
    v27 = sub_219BE2E54();
    sub_219BE2F64();

    v28 = sub_219BE2E54();
    sub_219BE2F64();

    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2194E1868;
    *(v30 + 24) = v29;
    v31 = v25;
    v32 = sub_219BE2E54();
    sub_2186C6148(0, &qword_27CC12690);
    sub_219BE2F64();

    v33 = swift_allocObject();
    v33[2] = v26;
    v33[3] = v31;
    v33[4] = a2;
    v33[5] = a3;
    v34 = v31;
    v35 = v26;

    v36 = sub_219BE2E54();
    sub_219BE2F74();

    v37 = swift_allocObject();
    *(v37 + 16) = a2;
    *(v37 + 24) = a3;

    v38 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2194DF53C(void **a1)
{
  v1 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2194E1890(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  v3 = [v1 description];
  v4 = sub_219BF5414();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_219BE5314();

  sub_2187B2F64(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2194DF6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED174();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0);

  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_218A2DB54;
  *(v20 + 24) = v17;
  aBlock[4] = sub_218807D28;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_81;
  v21 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2186F7DB0(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_2186E5A28(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v19)(v16, v23);
}

void sub_2194DFADC(void *a1, uint64_t a2)
{
  sub_2186E5A28(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v11 = sub_219BF53D4();

  v12 = [a1 objectForKey_];

  if (v12)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v36, v38);
    sub_2186CF94C();
    swift_dynamicCast();
    v13 = *&v33[0];
    v14 = *(a2 + OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_activity);
    v15 = sub_219BDFA44();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v30[1] = v13;
    v35 = v13;
    sub_2187B1A04(v36, &v31, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v32 + 1))
    {
      v16 = v5;
      sub_21875F93C(&v31, v33);
      *&v31 = v14;
      v17 = sub_2194DA78C(v33);
      v19 = v18;
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      v16 = v5;
      sub_2187B1E10(&v31, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v21 = qword_280ED32E8;

      sub_2188202A8(v19);
    }

    v30[3] = v14;
    v32 = 0u;
    v31 = 0u;
    sub_2189B4E2C(v10, v8);
    sub_2187B1A04(v38, v33, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v22 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v23 = (v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
    v30[0] = v10;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    sub_2189B4EAC(v8, v25 + v22);
    v26 = v25 + v23;
    v27 = v33[1];
    *v26 = v33[0];
    *(v26 + 16) = v27;
    *(v26 + 32) = v34;
    v28 = (v25 + v24);
    v29 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v28 = 0;
    v28[1] = 0;
    *v29 = v17;
    v29[1] = v19;
    v29[2] = v21;

    sub_2188202A8(v19);
    sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v19);
    sub_2187B1E10(v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1E10(v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_21874594C(v30[0], &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A28);

    sub_21874594C(&v31, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2F64);
    sub_2187B2F64(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  else
  {
    __break(1u);
  }
}

void sub_2194E0220(void *a1)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v9, &v10);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    sub_218962DB8(0, &qword_280EE69A0, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D6CF30]);
    sub_2186C6148(0, &qword_280E8E3B0);
    v4 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v8;
    sub_219BDDE34();
    v5 = v8;
    sub_219BE2FB4();

    *(swift_allocObject() + 16) = v5;
    v6 = v5;
    v7 = sub_219BE2E54();
    sub_219BE3054();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2194E04A8(void **a1, void *a2)
{
  v3 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2194E1890(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [v3 description];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_219BE5314();

  v9 = sub_219BF53D4();

  [a2 setObject:v3 forKey:v9];

  sub_219BDDE04();
  sub_219BE20E4();

  if (v12)
  {

    sub_219BF6214();
    sub_219BE5314();
    sub_2187B2F64(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_219BF6214();
    v11 = sub_219BE5314();
    MEMORY[0x28223BE20](v11);
    sub_2187B2F64(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE30B4();
  }
}

uint64_t sub_2194E07A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_219BDDE04();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = sub_2187A913C;
  v10[3] = v8;
  v10[4] = v9;
  sub_219BE20F4();

  v11 = OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewObserver;
  swift_beginAccess();
  sub_2194E192C(v13, a5 + v11);
  return swift_endAccess();
}

void sub_2194E08CC(void **a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2194E1890(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  *&v13[0] = v3;
  sub_218962DB8(0, &unk_27CC1B310, &qword_280E8E790, 0x277D759D8, MEMORY[0x277D83D88]);
  v5 = v3;
  v6 = sub_219BF5484();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_219BE5314();

  if (v3)
  {
    a2(v9);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewObserver;
      v12 = Strong;
      swift_beginAccess();
      sub_2194E192C(v13, v12 + v11);
      swift_endAccess();
    }
  }
}

uint64_t sub_2194E0ABC()
{
  v0 = sub_219BED214();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BED1F4();
  sub_219BED244();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = sub_219BE2E14();
  v7(v6, v0);
  return v8;
}

void sub_2194E0C48(void *a1)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v9, &v10);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    sub_218962DB8(0, &qword_280EE69A0, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D6CF30]);
    sub_2186C6148(0, &qword_280E8E3B0);
    v4 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v8;
    sub_2186C6148(0, &qword_27CC12690);
    v5 = v8;
    sub_219BE2FB4();

    *(swift_allocObject() + 16) = v5;
    v6 = v5;
    v7 = sub_219BE2E54();
    sub_219BE3054();
  }

  else
  {
    __break(1u);
  }
}

id sub_2194E0EE0(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2194E1890(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  v9 = [v7 description];
  v10 = sub_219BF5414();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  sub_219BE5314();

  v21 = [v7 scrollView];
  swift_getKeyPath();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v13;
  v15 = a3;

  v16 = sub_219BDB784();

  v17 = *(a2 + OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewContentOffsetObserver);
  *(a2 + OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewContentOffsetObserver) = v16;

  sub_219BF6214();
  sub_219BE5314();
  return [v7 keyboardOrActionSwitchToNextViewController];
}

void sub_2194E115C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2194E1890(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_2186E5A28(0, &unk_27CC1B300, type metadata accessor for CGPoint, MEMORY[0x277CC9170]);
  sub_219BF7484();
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_219BE5314();

  v9 = [a3 application];
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v14[4] = sub_2194E1910;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218793E0C;
  v14[3] = &block_descriptor_133;
  v11 = _Block_copy(v14);

  [v9 ts:v11 installCACommitCompletionBlock:?];
  _Block_release(v11);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *&Strong[OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewContentOffsetObserver];
    *&Strong[OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewContentOffsetObserver] = 0;
  }
}

uint64_t sub_2194E13F4(uint64_t (*a1)(void))
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return a1(0);
}

uint64_t sub_2194E15DC@<X0>(uint64_t *a1@<X8>)
{
  v5[4] = sub_2194DEE7C;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2196801E4;
  v5[3] = &block_descriptor_52_2;
  v2 = _Block_copy(v5);

  v3 = NUFirstViewControllerPassing();
  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      result = 0;
    }

    *a1 = result;
  }

  return result;
}

uint64_t sub_2194E16F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  v9[4] = a1;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2196801E4;
  v9[3] = a2;
  v6 = _Block_copy(v9);

  v7 = NUFirstViewControllerPassing();
  _Block_release(v6);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    result = swift_dynamicCastClass();
    if (!result)
    {

      result = 0;
    }

    *a4 = result;
  }

  return result;
}

void sub_2194E1890(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2194E192C(uint64_t a1, uint64_t a2)
{
  sub_2194E1890(0, &unk_280EE7F10, &unk_280EE7F20, MEMORY[0x277D6C9C0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2194E1A24(void *a1)
{
  sub_2186E5A28(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2194E1B4C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194E1BD0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194E1C5C(uint64_t a1)
{
  if ([*(a1 + 56) puzzlesEnabled])
  {
    swift_getObjectType();
    return sub_219BF6A64();
  }

  else
  {
    sub_2194E26F8();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }
}

void *sub_2194E1CE0(id *a1, void *a2)
{
  v3 = [*a1 puzzlesConfig];
  v4 = [v3 puzzleHubTagID];

  if (v4)
  {
    v5 = sub_219BF5414();
    v7 = v6;

    v8 = a2[12];
    v9 = a2[13];
    __swift_project_boxed_opaque_existential_1(a2 + 9, v8);
    memset(v12, 0, sizeof(v12));
    v13 = -1;
    a2 = (*(v9 + 8))(v5, v7, 9, v12, v8, v9);
  }

  else
  {
    sub_2194E26F8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  return a2;
}

void sub_2194E1E04(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = sub_219BEE544();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for FeedAvailability();
  MEMORY[0x28223BE20](v12);
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C8CC10(a1, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2194E2698(v14, type metadata accessor for FeedAvailability);
    sub_2194E26F8();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  else
  {
    v26[0] = a3;
    v16 = *v14;
    sub_218BFB73C();
    sub_2194E2698(v14 + *(v17 + 48), sub_2186FE720);
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_219BEE534();
    v18 = a2[6];
    v27 = a2[5];
    v28 = v18;
    v26[2] = __swift_project_boxed_opaque_existential_1(a2 + 2, v27);
    sub_2186DB6BC();
    v26[1] = v19;
    v20 = v29;
    (*(v6 + 16))(v8, v11, v29);
    v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    (*(v6 + 32))(v23 + v21, v8, v20);
    *(v23 + v22) = a2;
    v24 = v16;

    v25 = sub_219BE1E04();

    if (v25)
    {
      (*(v6 + 8))(v11, v29);

      *v26[0] = v25;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2194E2114(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E560);
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE544();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034();
  return sub_219BE1B94();
}

void sub_2194E2208()
{
  if (qword_280EE6028 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62718);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Will erase offline feed", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  sub_219BF0E04();
  oslog = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Did erase offline feed", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_2194E24A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_2194E24F8()
{
  sub_2186C61E4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  type metadata accessor for FeedAvailability();
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0);
  v1 = sub_219BF66A4();
  sub_2186DB6BC();
  sub_219BE2F94();

  v2 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(0);
  v3 = sub_219BE2F64();

  return v3;
}

uint64_t sub_2194E2698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2194E26F8()
{
  result = qword_27CC1B320;
  if (!qword_27CC1B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B320);
  }

  return result;
}

uint64_t sub_2194E2758(void *a1)
{
  sub_219BEE544();

  return sub_2194E2114(a1);
}

unint64_t sub_2194E280C()
{
  result = qword_27CC1B330;
  if (!qword_27CC1B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B330);
  }

  return result;
}

uint64_t sub_2194E2860(uint64_t a1, uint64_t a2)
{
  sub_21896FA3C();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v62 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = *a2;
  v16 = *(a2 + 8);
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  LODWORD(v66) = *(a2 + 32);
  v19 = objc_opt_self();
  v20 = *(a1 + 16);
  if ([v19 isTagAllowedInContentStoreFront_])
  {
    v64 = *(v2 + 64);
    v21 = v10;
    v22 = objc_allocWithZone(type metadata accessor for FeedViewContext());
    swift_unknownObjectRetain();
    v23 = [v22 init];
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v23;
    *(v24 + 32) = MEMORY[0x277D84F90];
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = v15;
    *(v24 + 72) = v16;
    *(v24 + 80) = v18;
    *(v24 + 88) = v17;
    *(v24 + 96) = v66;
    v63 = v24 | 0x2000000000000006;
    v25 = *(v2 + 72);
    v26 = sub_219BDFA44();
    v27 = v21;
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = v64;
    sub_2187B14CC(&v75, &v69, &unk_280EE7DB0, &qword_280EE7DC0);
    if (*(&v70 + 1))
    {
      sub_21875F93C(&v69, &v71);
      sub_21897010C(v15, v16, v18, v17, v66);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v29 = qword_280ED32D8;
      v28 = qword_280ED32E0;
      v30 = qword_280ED32E8;

      v64 = v28;
      sub_2188202A8(v28);
      __swift_destroy_boxed_opaque_existential_1(&v71);
    }

    else
    {
      sub_21897010C(v15, v16, v18, v17, v66);
      sub_2187448D0(&v69, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v29 = qword_280ED32D8;
      v39 = qword_280ED32E0;
      v30 = qword_280ED32E8;

      v64 = v39;
      sub_2188202A8(v39);
    }

    v68 = v63;
    *(&v70 + 1) = sub_219BDD274();
    *&v69 = v25;
    v66 = v27;
    v40 = v65;
    sub_2189B4E2C(v27, v65);
    sub_2187B14CC(&v78, &v71, &qword_280EE33A0, &qword_280EE33B0);
    v41 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v42 = (v6 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 47) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = v25;
    sub_2189B4EAC(v40, v44 + v41);
    v45 = v44 + v42;
    v46 = v72;
    *v45 = v71;
    *(v45 + 16) = v46;
    *(v45 + 32) = v73;
    v47 = (v44 + v43);
    v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v47 = 0;
    v47[1] = 0;
    v49 = v64;
    *v48 = v29;
    v48[1] = v49;
    v48[2] = v30;
    swift_retain_n();

    sub_2188202A8(v49);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v49);
    sub_2187448D0(&v75, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(&v78, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218A42D80(v66);
    sub_2187448D0(&v69, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    v31 = *(v2 + 64);
    v32 = swift_allocObject();
    v33 = [v20 tagType];
    *(v32 + 40) = &type metadata for AlertFeedAccessDenied;
    *(v32 + 48) = sub_218BF7A98();
    *(v32 + 16) = v33;
    *(v32 + 56) = 1;
    v34 = sub_219BDFA44();
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = v31;
    sub_2187B14CC(&v75, &v69, &unk_280EE7DB0, &qword_280EE7DC0);
    v35 = v14;
    if (*(&v70 + 1))
    {
      sub_21875F93C(&v69, &v71);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v36 = qword_280ED32D8;
      v37 = qword_280ED32E0;
      v38 = qword_280ED32E8;

      sub_2188202A8(v37);
      __swift_destroy_boxed_opaque_existential_1(&v71);
    }

    else
    {
      sub_2187448D0(&v69, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v36 = qword_280ED32D8;
      v37 = qword_280ED32E0;
      v38 = qword_280ED32E8;

      sub_2188202A8(v37);
    }

    v68 = v32;
    v70 = 0u;
    v69 = 0u;
    v50 = v14;
    v51 = v64;
    sub_2189B4E2C(v50, v64);
    sub_2187B14CC(&v78, &v71, &qword_280EE33A0, &qword_280EE33B0);
    v52 = *(v67 + 80);
    v67 = v35;
    v53 = (v52 + 24) & ~v52;
    v54 = (v6 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 47) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    sub_2189B4EAC(v51, v56 + v53);
    v57 = v56 + v54;
    v58 = v72;
    *v57 = v71;
    *(v57 + 16) = v58;
    *(v57 + 32) = v73;
    v59 = (v56 + v55);
    v60 = (v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v59 = 0;
    v59[1] = 0;
    *v60 = v36;
    v60[1] = v37;
    v60[2] = v38;

    sub_2188202A8(v37);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v37);
    sub_2187448D0(&v75, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(&v78, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218A42D80(v67);
    sub_2187448D0(&v69, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }
}

uint64_t sub_2194E3470(uint64_t a1)
{
  sub_21896FA3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = objc_opt_self();
  v11 = *(a1 + 16);
  v12 = [v10 isTagAllowedInContentStoreFront_];
  result = 0;
  if (v12)
  {
    v14 = *(v1 + 64);
    v15 = objc_allocWithZone(type metadata accessor for FeedViewContext());
    swift_unknownObjectRetain();
    v16 = [v15 init];
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v16;
    *(v17 + 32) = MEMORY[0x277D84F90];
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0;
    *(v17 + 96) = -1;
    v18 = v17 | 0x2000000000000006;
    v19 = *(v1 + 72);
    v20 = sub_219BDFA44();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v32[5] = v14;
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9210 != -1)
    {
      swift_once();
    }

    sub_219BDC8C4();

    v32[4] = v18;
    v32[3] = sub_219BDD274();
    v32[0] = v19;
    sub_2189B4E2C(v9, v7);
    v21 = MEMORY[0x277D2D578];
    sub_2187B14CC(v33, v30, &qword_280EE33A0, &qword_280EE33B0);
    v22 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    sub_2189B4EAC(v7, v24 + v22);
    v25 = v24 + v23;
    v26 = v30[1];
    *v25 = v30[0];
    *(v25 + 16) = v26;
    *(v25 + 32) = v31;
    v27 = (v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v27 = 0;
    v27[1] = 0;
    sub_2186CF94C();
    sub_2189B4DD4();
    swift_retain_n();
    v28 = sub_219BEB454();

    sub_2187448D0(v33, &qword_280EE33A0, &qword_280EE33B0, v21, sub_2186C6F70);
    sub_218A42D80(v9);
    sub_2187448D0(v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

    return v28;
  }

  return result;
}

uint64_t sub_2194E3884()
{
  v0 = sub_219BEBC84();
  __swift_allocate_value_buffer(v0, qword_280F62380);
  __swift_project_value_buffer(v0, qword_280F62380);
  return sub_219BEBC44();
}

uint64_t sub_2194E39A0()
{
  v0 = sub_219BEBC84();
  __swift_allocate_value_buffer(v0, qword_27CCD8C78);
  __swift_project_value_buffer(v0, qword_27CCD8C78);
  return sub_219BEBC44();
}

uint64_t sub_2194E3A94(uint64_t a1, uint64_t *a2)
{
  v3 = sub_219BEBC84();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_219BEBC44();
}

uint64_t sub_2194E3B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v120 = a8;
  v114 = a7;
  v121 = a4;
  v118 = a3;
  v14 = MEMORY[0x277D83D88];
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v110 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v112 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v17;
  MEMORY[0x28223BE20](v16);
  v122 = &v108 - v18;
  v124 = sub_219BDE924();
  v116 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v117 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5A8C(0, &unk_280EE8E70, MEMORY[0x277D2F9F0], v14);
  MEMORY[0x28223BE20](v20 - 8);
  v129 = &v108 - v21;
  sub_2186E5A8C(0, &qword_280EE6350, MEMORY[0x277D35078], v14);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v119 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v128 = &v108 - v25;
  v113 = sub_219BE4644();
  v26 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v28 = (&v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E5A8C(0, &qword_280EE8AE0, MEMORY[0x277D30210], v14);
  MEMORY[0x28223BE20](v29 - 8);
  v123 = (&v108 - v30);
  v127 = type metadata accessor for CampaignRouteModel();
  v31 = MEMORY[0x28223BE20](v127);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v126 = &v108 - v34;
  v125 = a6;
  if (a6)
  {
    sub_2186E5A8C(0, &qword_280E8C038, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
    v35 = a1;
    v36 = a2;
    v37 = *(sub_219BE3D94() - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09BA0;
    v115 = v39;
    v40 = v39 + v38;
    v41 = v125;
    *v40 = a5;
    *(v40 + 8) = v41;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 0u;
    *(v40 + 16) = 0u;
    (*(v37 + 104))();
    a2 = v36;
    a1 = v35;
  }

  else
  {
    v115 = MEMORY[0x277D84F90];
  }

  v42 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v42 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0;
  }

  v43 = v116;
  v44 = v113;
  (*(v26 + 16))(v28, v114, v113);
  v45 = (*(v26 + 88))(v28, v44);
  if (v45 == *MEMORY[0x277D352D8])
  {
    (*(v26 + 96))(v28, v44);
    v46 = *v28;
    v47 = v123;
    *v123 = v46;
    v48 = *MEMORY[0x277D301F0];
    v49 = sub_219BDE914();
    (*(*(v49 - 8) + 104))(v47, v48, v49);
  }

  else
  {
    v50 = v45;
    v51 = a1;
    v52 = a2;
    v53 = *MEMORY[0x277D352E0];
    v54 = *MEMORY[0x277D301F8];
    v55 = sub_219BDE914();
    (*(*(v55 - 8) + 104))(v123, v54, v55);
    if (v50 == v53)
    {
    }

    else
    {
      v56 = *(v26 + 8);

      v56(v28, v44);
    }

    a2 = v52;
    a1 = v51;
    v47 = v123;
  }

  v114 = a9;
  v57 = v43[13];
  LODWORD(v113) = *MEMORY[0x277D30200];
  v58 = v124;
  v109 = v57;
  v57(v47);
  (v43[7])(v47, 0, 1, v58);
  v59 = sub_219BE4394();
  v60 = *(v59 - 8);
  v61 = *(v60 + 56);
  v125 = v59;
  v123 = (v60 + 56);
  v116 = v61;
  (v61)(v128, 1, 1);
  v62 = sub_219BDD4D4();
  (*(*(v62 - 8) + 56))(v129, 1, 1, v62);
  v63 = &v33[*(v127 + 56)];
  *(v63 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v33 = a1;
  *(v33 + 1) = a2;
  v64 = v43[6];
  if (v64(v47, 1, v58) == 1)
  {
    v65 = *MEMORY[0x277D301F8];
    v66 = sub_219BDE914();
    v67 = v117;
    v68 = v65;
    v58 = v124;
    (*(*(v66 - 8) + 104))(v117, v68, v66);
    v109(v67, v113, v58);
    v69 = v64(v47, 1, v58);
    v70 = v119;
    if (v69 != 1)
    {
      sub_2187459AC(v47, &qword_280EE8AE0, MEMORY[0x277D30210], MEMORY[0x277D83D88], sub_2186E5A8C);
    }
  }

  else
  {
    v67 = v117;
    (v43[4])(v117, v47, v58);
    v70 = v119;
  }

  v71 = v127;
  (v43[4])(&v33[*(v127 + 20)], v67, v58);
  v72 = &v33[v71[6]];
  v73 = v121;
  *v72 = v118;
  *(v72 + 1) = v73;
  v74 = &v33[v71[7]];
  *v74 = 0;
  *(v74 + 1) = 0;
  *&v33[v71[8]] = v115;
  *&v33[v71[9]] = 0;
  v33[v71[11]] = 0;
  *(v63 + 1) = v114;
  swift_unknownObjectWeakAssign();
  v75 = *(v60 + 48);
  v76 = v128;
  v77 = v125;
  if (v75(v128, 1, v125) == 1)
  {
    v78 = *MEMORY[0x277D34D80];
    v79 = sub_219BE3D74();
    (*(*(v79 - 8) + 104))(v70, v78, v79);
    (*(v60 + 104))(v70, *MEMORY[0x277D35068], v77);
    LODWORD(v78) = v75(v76, 1, v77);

    if (v78 != 1)
    {
      sub_2187459AC(v76, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_2186E5A8C);
    }
  }

  else
  {
    (*(v60 + 32))(v70, v76, v77);
  }

  (v116)(v70, 0, 1, v77);
  sub_2194EBF3C(v70, &v33[v71[10]], &qword_280EE6350, MEMORY[0x277D35078]);
  v33[v71[13]] = 0;
  sub_2194EBF3C(v129, &v33[v71[12]], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
  v80 = v33;
  v81 = v126;
  sub_21899068C(v80, v126);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_2194EC2B4(v81, type metadata accessor for CampaignRouteModel);
  }

  v83 = Strong;
  v84 = swift_allocBox();
  sub_2194EBFBC(v81, v85, type metadata accessor for CampaignRouteModel);
  v129 = v84;
  v86 = v84 | 0x1000000000000006;
  v87 = sub_219BDFA44();
  v88 = v122;
  (*(*(v87 - 8) + 56))(v122, 1, 1, v87);
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  v138 = 0;
  memset(v137, 0, sizeof(v137));
  v136 = v83;
  sub_2194EBD4C(v137, &v131, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v133)
  {
    sub_21875F93C(&v131, v134);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v90 = qword_280ED32D8;
    v89 = qword_280ED32E0;
    v91 = qword_280ED32E8;

    v127 = v89;
    v125 = v91;
    sub_2188202A8(v89);
    __swift_destroy_boxed_opaque_existential_1(v134);
  }

  else
  {
    sub_2194EBDD4(&v131, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v90 = qword_280ED32D8;
    v92 = qword_280ED32E0;
    v93 = qword_280ED32E8;

    v127 = v92;
    v125 = v93;
    sub_2188202A8(v92);
  }

  v130 = v86;
  v128 = v83;
  if (a10)
  {
    v94 = sub_219BDD274();
    v95 = a10;
  }

  else
  {
    v95 = 0;
    v94 = 0;
    v132 = 0;
    *(&v131 + 1) = 0;
  }

  *&v131 = v95;
  v133 = v94;
  v96 = MEMORY[0x277D2DED0];
  v97 = v112;
  sub_2194EBEBC(v88, v112, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2194EBD4C(v139, v134, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v98 = (*(v110 + 80) + 24) & ~*(v110 + 80);
  v99 = (v111 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v99 + 47) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  *(v101 + 16) = a10;
  sub_2194EBF3C(v97, v101 + v98, &qword_280EE8610, v96);
  v102 = v101 + v99;
  v103 = v134[1];
  *v102 = v134[0];
  *(v102 + 16) = v103;
  *(v102 + 32) = v135;
  v104 = (v101 + v100);
  v105 = (v101 + ((v100 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v104 = 0;
  v104[1] = 0;
  v106 = v127;
  *v105 = v90;
  v105[1] = v106;
  v105[2] = v125;
  swift_retain_n();

  sub_2188202A8(v106);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v106);
  sub_2194EBDD4(v137, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2194EBDD4(v139, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_2187459AC(v122, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);
  sub_2194EC2B4(v126, type metadata accessor for CampaignRouteModel);

  sub_2187459AC(&v131, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
}

uint64_t sub_2194E4DB0(uint64_t a1, uint64_t a2)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v32 = v13;
    v14 = v13 | 0x7000000000000002;
    v15 = sub_219BDFA44();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v41 = v12;
    sub_2194EBD4C(v42, &v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v35 = a2;
    v34 = a1;
    v33 = v12;
    v31 = v5;
    if (*(&v38 + 1))
    {
      sub_21875F93C(&v37, v39);
      sub_2188202A8(a1);
      sub_2188202A8(a1);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v16 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      sub_2188202A8(v16);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      sub_2188202A8(a1);
      sub_2188202A8(a1);
      sub_2194EBDD4(&v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v16 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      sub_2188202A8(v16);
    }

    v36 = v14;
    v38 = 0u;
    v37 = 0u;
    v19 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v10, v8, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v44, v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v20 = (v31[80] + 24) & ~v31[80];
    v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = v10;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v24 = v8;
    v25 = v23;
    *(v23 + 16) = 0;
    sub_2194EBF3C(v24, v23 + v20, &qword_280EE8610, v19);
    v26 = v25 + v21;
    v27 = v39[1];
    *v26 = v39[0];
    *(v26 + 16) = v27;
    *(v26 + 32) = v40;
    v28 = (v25 + v22);
    v29 = (v25 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v28 = 0;
    v28[1] = 0;
    *v29 = v17;
    v29[1] = v16;
    v29[2] = v18;

    sub_2188202A8(v16);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v16);
    sub_2187FABEC(v34);
    sub_2194EBDD4(v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v31, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v37, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

uint64_t sub_2194E549C(uint64_t a1)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_219BDB954();
    v12 = swift_allocBox();
    (*(*(v11 - 8) + 16))(v13, a1, v11);
    v31 = v12;
    v14 = sub_219BDFA44();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v38 = v10;
    sub_2194EBD4C(v39, &v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v32 = v10;
    if (*(&v35 + 1))
    {
      sub_21875F93C(&v34, v36);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v15 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v15;
      sub_2188202A8(v15);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      sub_2194EBDD4(&v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v18 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v18;
      sub_2188202A8(v18);
    }

    v33 = v12 | 0xB000000000000006;
    v35 = 0u;
    v34 = 0u;
    v19 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v8, v6, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v41, v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = v8;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_2194EBF3C(v6, v23 + v20, &qword_280EE8610, v19);
    v24 = v23 + v21;
    v25 = v36[1];
    *v24 = v36[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v37;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    v28 = v30;
    *v27 = v16;
    v27[1] = v28;
    v27[2] = v17;

    sub_2188202A8(v28);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v28);
    sub_2194EBDD4(v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v34, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

uint64_t sub_2194E5B50(uint64_t a1)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_219BDB954();
    v12 = swift_allocBox();
    (*(*(v11 - 8) + 16))(v13, a1, v11);
    v31 = v12;
    v14 = sub_219BDFA44();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v38 = v10;
    sub_2194EBD4C(v39, &v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v32 = v10;
    if (*(&v35 + 1))
    {
      sub_21875F93C(&v34, v36);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v15 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v15;
      sub_2188202A8(v15);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      sub_2194EBDD4(&v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v18 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v18;
      sub_2188202A8(v18);
    }

    v33 = v12 | 0xB000000000000004;
    v35 = 0u;
    v34 = 0u;
    v19 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v8, v6, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v41, v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = v8;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_2194EBF3C(v6, v23 + v20, &qword_280EE8610, v19);
    v24 = v23 + v21;
    v25 = v36[1];
    *v24 = v36[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v37;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    v28 = v30;
    *v27 = v16;
    v27[1] = v28;
    v27[2] = v17;

    sub_2188202A8(v28);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v28);
    sub_2194EBDD4(v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v34, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

void sub_2194E6204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v51 = a2;
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = v50 - v9;
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  type metadata accessor for PaidBundleViaOfferUIHandler();
  v14 = sub_219BE1E24();
  if (v14)
  {
    v15 = v14;

    sub_219BE2E84();

    sub_219BDBC64();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    if (v17 > -30.0)
    {
      if (qword_27CC085F0 != -1)
      {
        swift_once();
      }

      v18 = sub_219BE5434();
      __swift_project_value_buffer(v18, qword_27CCD8B40);
      v19 = sub_219BE5414();
      v20 = sub_219BF6214();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2186C1000, v19, v20, "Routing to dynamic link blocked to prevent stacking", v21, 2u);
        MEMORY[0x21CECF960](v21, -1, -1);
      }

      goto LABEL_13;
    }

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_13:

      return;
    }

    v23 = Strong;
    sub_218C24040();
    v25 = v24;
    v26 = swift_allocBox();
    v28 = v27;
    v29 = *(v25 + 48);
    v30 = *(v25 + 64);
    v31 = sub_219BDB954();
    (*(*(v31 - 8) + 16))(v28, a1, v31);
    sub_2194EBEBC(v51, v28 + v29, &qword_280EE64A0, MEMORY[0x277D34D78]);
    sub_2194EBEBC(v52, v28 + v30, &unk_280EE6490, MEMORY[0x277D34E88]);
    v52 = v26;
    v32 = v26 | 0xB000000000000002;
    v33 = sub_219BDFA44();
    v34 = v54;
    (*(*(v33 - 8) + 56))(v54, 1, 1, v33);
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    v60 = v23;
    sub_2194EBD4C(v61, &v56, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v50[1] = v23;
    if (*(&v57 + 1))
    {
      sub_21875F93C(&v56, v58);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v36 = qword_280ED32D8;
      v35 = qword_280ED32E0;
      v37 = qword_280ED32E8;

      v51 = v35;
      v50[0] = v37;
      sub_2188202A8(v35);
      __swift_destroy_boxed_opaque_existential_1(v58);
    }

    else
    {
      sub_2194EBDD4(&v56, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v36 = qword_280ED32D8;
      v38 = qword_280ED32E0;
      v39 = qword_280ED32E8;

      v51 = v38;
      v50[0] = v39;
      sub_2188202A8(v38);
    }

    v55 = v32;
    v57 = 0u;
    v56 = 0u;
    v40 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v34, v8, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v63, v58, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v41 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v42 = (v6 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 47) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    sub_2194EBF3C(v8, v44 + v41, &qword_280EE8610, v40);
    v45 = v44 + v42;
    v46 = v58[1];
    *v45 = v58[0];
    *(v45 + 16) = v46;
    *(v45 + 32) = v59;
    v47 = (v44 + v43);
    v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v47 = 0;
    v47[1] = 0;
    v49 = v51;
    *v48 = v36;
    v48[1] = v49;
    v48[2] = v50[0];

    sub_2188202A8(v49);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v49);
    sub_2194EBDD4(v61, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v63, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v54, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v56, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2194E6B40(uint64_t a1)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    type metadata accessor for WebLinkViewControllerType(0);
    v11 = swift_allocBox();
    v13 = v12;
    v14 = sub_219BDB954();
    (*(*(v14 - 8) + 16))(v13, a1, v14);
    swift_storeEnumTagMultiPayload();
    v32 = v11;
    v15 = sub_219BDFA44();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    v39 = v10;
    sub_2194EBD4C(v40, &v35, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v33 = v10;
    if (*(&v36 + 1))
    {
      sub_21875F93C(&v35, v37);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v16 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      v31 = v16;
      sub_2188202A8(v16);
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      sub_2194EBDD4(&v35, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      v31 = v19;
      sub_2188202A8(v19);
    }

    v34 = v11 | 0xB000000000000000;
    v36 = 0u;
    v35 = 0u;
    v20 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v8, v6, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v42, v37, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v21 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = v8;
    v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    sub_2194EBF3C(v6, v24 + v21, &qword_280EE8610, v20);
    v25 = v24 + v22;
    v26 = v37[1];
    *v25 = v37[0];
    *(v25 + 16) = v26;
    *(v25 + 32) = v38;
    v27 = (v24 + v23);
    v28 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v27 = 0;
    v27[1] = 0;
    v29 = v31;
    *v28 = v17;
    v28[1] = v29;
    v28[2] = v18;

    sub_2188202A8(v29);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v29);
    sub_2194EBDD4(v40, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v42, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v30, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v35, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

uint64_t sub_2194E7210(uint64_t a1)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 56) = 0;
    v12 = sub_219BDFA44();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v38 = v10;
    sub_2194EBD4C(v39, &v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v32 = v10;
    if (*(&v35 + 1))
    {
      sub_21875F93C(&v34, v36);
      v13 = qword_280ED32D0;

      if (v13 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v14 = qword_280ED32E0;
      v16 = qword_280ED32E8;

      v31 = v14;
      sub_2188202A8(v14);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {

      sub_2194EBDD4(&v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v17 = qword_280ED32E0;
      v16 = qword_280ED32E8;

      v31 = v17;
      sub_2188202A8(v17);
    }

    v33 = v11;
    v35 = 0u;
    v34 = 0u;
    v18 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v8, v6, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v41, v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v19 = *(v3 + 80);
    v29 = v11;
    v20 = (v19 + 24) & ~v19;
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = v8;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_2194EBF3C(v6, v23 + v20, &qword_280EE8610, v18);
    v24 = v23 + v21;
    v25 = v36[1];
    *v24 = v36[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v37;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    v28 = v31;
    *v27 = v15;
    v27[1] = v28;
    v27[2] = v16;

    sub_2188202A8(v28);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v28);
    sub_2194EBDD4(v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v30, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v34, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

uint64_t sub_2194E78A0(uint64_t a1)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_219BE3CA4();
    v12 = swift_allocBox();
    (*(*(v11 - 8) + 16))(v13, a1, v11);
    v31 = v12;
    v14 = sub_219BDFA44();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v38 = v10;
    sub_2194EBD4C(v39, &v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v32 = v10;
    if (*(&v35 + 1))
    {
      sub_21875F93C(&v34, v36);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v15 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v15;
      sub_2188202A8(v15);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      sub_2194EBDD4(&v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v18 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v18;
      sub_2188202A8(v18);
    }

    v33 = v12 | 0xC000000000000004;
    v35 = 0u;
    v34 = 0u;
    v19 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v8, v6, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v41, v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = v8;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_2194EBF3C(v6, v23 + v20, &qword_280EE8610, v19);
    v24 = v23 + v21;
    v25 = v36[1];
    *v24 = v36[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v37;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    v28 = v30;
    *v27 = v16;
    v27[1] = v28;
    v27[2] = v17;

    sub_2188202A8(v28);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v28);
    sub_2194EBDD4(v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v34, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

void sub_2194E7F54(uint64_t a1, uint64_t a2, char a3)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v44 = *(v6 - 8);
  v7 = *(v44 + 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v12 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  v11[v12] = a3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D84F90];
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = v11;
    *(v15 + 40) = v16;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0;
    *(v15 + 96) = -1;
    v17 = v15 | 0x2000000000000004;
    v18 = sub_219BDFA44();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v50 = v14;
    sub_2194EBD4C(v51, &v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v43 = v14;
    v42 = v11;
    if (*(&v47 + 1))
    {
      sub_21875F93C(&v46, v48);
      v19 = qword_280ED32D0;

      v20 = v11;
      if (v19 != -1)
      {
        swift_once();
      }

      v22 = qword_280ED32D8;
      v21 = qword_280ED32E0;
      v23 = qword_280ED32E8;

      v41 = v21;
      v40 = v23;
      sub_2188202A8(v21);
      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    else
    {

      v24 = v11;
      sub_2194EBDD4(&v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v22 = qword_280ED32D8;
      v25 = qword_280ED32E0;
      v26 = qword_280ED32E8;

      v41 = v25;
      v40 = v26;
      sub_2188202A8(v25);
    }

    v45 = v17;
    v47 = 0u;
    v46 = 0u;
    v27 = MEMORY[0x277D2DED0];
    v28 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2194EBEBC(v10, v28, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v53, v48, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v29 = v44[80];
    v44 = v10;
    v30 = (v29 + 24) & ~v29;
    v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    sub_2194EBF3C(v28, v33 + v30, &qword_280EE8610, v27);
    v34 = v33 + v31;
    v35 = v48[1];
    *v34 = v48[0];
    *(v34 + 16) = v35;
    *(v34 + 32) = v49;
    v36 = (v33 + v32);
    v37 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v36 = 0;
    v36[1] = 0;
    v38 = v41;
    *v37 = v22;
    v37[1] = v38;
    v37[2] = v40;

    sub_2188202A8(v38);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v38);

    sub_2194EBDD4(v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v44, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v46, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  else
  {
  }
}

uint64_t sub_2194E86B4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v52 = *(v8 - 8);
  v9 = *(v52 + 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for PreBuyFlowRouteModel();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v18 = sub_219BE3D64();
  (*(*(v18 - 8) + 16))(&v16[v17], a2, v18);
  v19 = *(v13 + 24);
  v20 = sub_219BE3EE4();
  (*(*(v20 - 8) + 16))(&v16[v19], a3, v20);
  *v16 = a1;
  v16[*(v13 + 28)] = a4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = swift_allocBox();
    sub_2194EBFBC(v16, v24, type metadata accessor for PreBuyFlowRouteModel);
    v51 = v23;
    v25 = v23 | 0xC000000000000000;
    v26 = sub_219BDFA44();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    v59 = v22;
    sub_2194EBD4C(v60, &v55, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v50 = v22;
    if (*(&v56 + 1))
    {
      sub_21875F93C(&v55, v57);
      v27 = qword_280ED32D0;
      v28 = a1;
      if (v27 != -1)
      {
        swift_once();
      }

      v30 = qword_280ED32D8;
      v29 = qword_280ED32E0;
      v31 = qword_280ED32E8;

      v49 = v29;
      v48 = v31;
      sub_2188202A8(v29);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    else
    {
      v33 = a1;
      sub_2194EBDD4(&v55, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v30 = qword_280ED32D8;
      v34 = qword_280ED32E0;
      v35 = qword_280ED32E8;

      v49 = v34;
      v48 = v35;
      sub_2188202A8(v34);
    }

    v54 = v25;
    v56 = 0u;
    v55 = 0u;
    v36 = MEMORY[0x277D2DED0];
    v37 = v53;
    sub_2194EBEBC(v12, v53, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v62, v57, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v38 = (v52[80] + 24) & ~v52[80];
    v39 = (v9 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = v12;
    v40 = (v39 + 47) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    sub_2194EBF3C(v37, v41 + v38, &qword_280EE8610, v36);
    v42 = v41 + v39;
    v43 = v57[1];
    *v42 = v57[0];
    *(v42 + 16) = v43;
    *(v42 + 32) = v58;
    v44 = (v41 + v40);
    v45 = (v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v44 = 0;
    v44[1] = 0;
    v46 = v49;
    *v45 = v30;
    v45[1] = v46;
    v45[2] = v48;

    sub_2188202A8(v46);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v46);
    sub_2194EBDD4(v60, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v62, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v52, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);
    sub_2194EC2B4(v16, type metadata accessor for PreBuyFlowRouteModel);

    sub_2187459AC(&v55, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  else
  {
    v32 = a1;
    return sub_2194EC2B4(v16, type metadata accessor for PreBuyFlowRouteModel);
  }
}

uint64_t sub_2194E8EA0(uint64_t a1)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_219BE4524();
    v12 = swift_allocBox();
    (*(*(v11 - 8) + 16))(v13, a1, v11);
    v31 = v12;
    v14 = sub_219BDFA44();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v38 = v10;
    sub_2194EBD4C(v39, &v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v32 = v10;
    if (*(&v35 + 1))
    {
      sub_21875F93C(&v34, v36);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v15 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v15;
      sub_2188202A8(v15);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      sub_2194EBDD4(&v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v16 = qword_280ED32D8;
      v18 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      v30 = v18;
      sub_2188202A8(v18);
    }

    v33 = v12 | 0x4000000000000004;
    v35 = 0u;
    v34 = 0u;
    v19 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v8, v6, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v41, v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = v8;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_2194EBF3C(v6, v23 + v20, &qword_280EE8610, v19);
    v24 = v23 + v21;
    v25 = v36[1];
    *v24 = v36[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v37;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    v28 = v30;
    *v27 = v16;
    v27[1] = v28;
    v27[2] = v17;

    sub_2188202A8(v28);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v28);
    sub_2194EBDD4(v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v34, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

uint64_t sub_2194E9554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v69 = a2;
  v3 = sub_219BED214();
  v76 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v66 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v70 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v66 - v11;
  v12 = sub_219BDE294();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5A8C(0, &unk_280EE9D00, MEMORY[0x277CC9260], v7);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v66 - v17;
  v19 = sub_219BDEE04();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v68 = v3;
    v78 = Strong;
    sub_2187B2C48();
    v25 = v24;
    v77 = swift_allocBox();
    v27 = v26;
    v67 = *(v25 + 48);
    sub_2187B2DA0();
    v29 = *(v28 + 48);
    swift_unknownObjectRetain();
    sub_219BDEDE4();
    v30 = sub_219BDB954();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    (*(v13 + 104))(v15, *MEMORY[0x277D2FF08], v12);
    sub_219BDD904();
    (*(v13 + 8))(v15, v12);
    sub_2187459AC(v18, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186E5A8C);
    (*(v20 + 8))(v22, v19);
    v31 = MEMORY[0x277D84F90];
    *(v27 + v29) = MEMORY[0x277D84F90];
    *(v27 + v67) = v31;
    v32 = v77 | 2;
    v33 = sub_219BDFA44();
    v34 = v80;
    (*(*(v33 - 8) + 56))(v80, 1, 1, v33);
    v90 = 0;
    memset(v89, 0, sizeof(v89));
    v88 = 0;
    memset(v87, 0, sizeof(v87));
    v91 = v78;
    sub_2194EBD4C(v87, &v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v84)
    {
      sub_21875F93C(&v82, v85);
      *&v82 = v32;
      v35 = sub_2194DA78C(v85);
      v69 = v36;
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(v85);
    }

    else
    {
      sub_2194EBDD4(&v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v35 = qword_280ED32D8;
      v40 = qword_280ED32E0;
      v38 = qword_280ED32E8;

      v69 = v40;
      sub_2188202A8(v40);
    }

    v41 = v73;
    v81 = v32;
    v73 = v35;
    v67 = v38;
    if (v41)
    {
      v42 = sub_219BDD274();
      v43 = v41;
    }

    else
    {
      v43 = 0;
      v42 = 0;
      *(&v82 + 1) = 0;
      v83 = 0;
    }

    *&v82 = v43;
    v84 = v42;
    v44 = MEMORY[0x277D2DED0];
    v45 = v34;
    v46 = v72;
    sub_2194EBEBC(v45, v72, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v89, v85, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v47 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v48 = (v71 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 16) = v41;
    sub_2194EBF3C(v46, v50 + v47, &qword_280EE8610, v44);
    v51 = v50 + v48;
    v52 = v85[1];
    *v51 = v85[0];
    *(v51 + 16) = v52;
    *(v51 + 32) = v86;
    v53 = (v50 + v49);
    v54 = (v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v53 = 0;
    v53[1] = 0;
    v55 = v73;
    v56 = v69;
    *v54 = v73;
    v54[1] = v56;
    v54[2] = v67;
    swift_retain_n();

    sub_2188202A8(v56);
    sub_2186CF94C();
    sub_2189B4DD4();
    v57 = v79;
    sub_219BEB464();

    if (v57)
    {
      sub_2187459AC(&v82, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
      sub_2187B2FB4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v58 = sub_219BE2FF4();

      sub_2187FABEC(v56);
      sub_2194EBDD4(v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2194EBDD4(v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2187459AC(v80, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);
      v55 = v58;
    }

    else
    {
      sub_2194EBDD4(v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2194EBDD4(v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2187459AC(v80, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

      sub_2187459AC(&v82, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);

      sub_2187FABEC(v56);
    }

    v59 = v68;
    v60 = v74;
    sub_219BED1F4();
    v61 = v75;
    sub_219BED244();
    v62 = *(v76 + 8);
    v62(v60, v59);
    sub_219BE2E14();
    v63 = swift_allocObject();
    *(v63 + 16) = sub_2194EBEB4;
    *(v63 + 24) = v55;

    v64 = sub_219BE2E54();
    v65 = sub_219BE2F64();

    v62(v61, v59);
    return v65;
  }

  else
  {
    LOBYTE(v89[0]) = 0;
    sub_2187B2FB4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2194EA0C4(uint64_t a1, uint64_t a2)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v35 = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = xmmword_219C83F50;
    v39 = v14;
    v15 = v14 | 0xD000000000000000;
    v16 = sub_219BDFA44();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_218718690(v2 + 64, v49);
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v46 = v13;
    sub_2194EBD4C(v47, &v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v43)
    {
      sub_21875F93C(&v41, v44);
      v17 = qword_280ED32D0;

      if (v17 != -1)
      {
        swift_once();
      }

      v19 = qword_280ED32D8;
      v18 = qword_280ED32E0;
      v20 = qword_280ED32E8;

      v37 = v18;
      v36 = v20;
      sub_2188202A8(v18);
      __swift_destroy_boxed_opaque_existential_1(v44);
    }

    else
    {

      sub_2194EBDD4(&v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v19 = qword_280ED32D8;
      v21 = qword_280ED32E0;
      v22 = qword_280ED32E8;

      v37 = v21;
      v36 = v22;
      sub_2188202A8(v21);
    }

    v40 = v15;
    v38 = v13;
    if (a2)
    {
      v23 = sub_219BDD274();
      v24 = a2;
    }

    else
    {
      v24 = 0;
      v23 = 0;
      *(&v41 + 1) = 0;
      v42 = 0;
    }

    *&v41 = v24;
    v43 = v23;
    v25 = MEMORY[0x277D2DED0];
    sub_2194EBEBC(v11, v9, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2194EBD4C(v49, v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v26 = (v35[80] + 24) & ~v35[80];
    v35 = v11;
    v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 47) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = a2;
    sub_2194EBF3C(v9, v29 + v26, &qword_280EE8610, v25);
    v30 = v29 + v27;
    v31 = v44[1];
    *v30 = v44[0];
    *(v30 + 16) = v31;
    *(v30 + 32) = v45;
    v32 = (v29 + v28);
    v33 = (v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v32 = 0;
    v32[1] = 0;
    v34 = v37;
    *v33 = v19;
    v33[1] = v34;
    v33[2] = v36;
    swift_retain_n();

    sub_2188202A8(v34);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v34);
    sub_2194EBDD4(v47, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2194EBDD4(v49, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187459AC(v35, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E5A8C);

    sub_2187459AC(&v41, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2FB4);
  }

  return result;
}

uint64_t sub_2194EA7B8(uint64_t a1, int a2)
{
  v3 = v2;
  v35 = a2;
  v34 = a1;
  v36 = *v2;
  v4 = sub_219BDE294();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5A8C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_219BDEE04();
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194EBD4C((v2 + 13), v37, &qword_280E97538, &unk_280E97540, &protocol descriptor for ContinueReadingEligibilityProcessorType);
  v13 = v38;
  result = sub_2194EBDD4(v37, &qword_280E97538, &unk_280E97540, &protocol descriptor for ContinueReadingEligibilityProcessorType);
  if (v13)
  {
    sub_2194EBD4C((v2 + 18), v37, &unk_280EA0BF0, qword_280EA0C00, &protocol descriptor for ContinueReadingPromptPresenterType);
    v15 = v38;
    result = sub_2194EBDD4(v37, &unk_280EA0BF0, qword_280EA0C00, &protocol descriptor for ContinueReadingPromptPresenterType);
    if (v15)
    {
      sub_2187B2C48();
      v17 = v16;
      v18 = swift_allocBox();
      v20 = v19;
      v31 = *(v17 + 48);
      sub_2187B2DA0();
      v30 = *(v21 + 48);
      v22 = v34;
      swift_unknownObjectRetain();
      sub_219BDEDE4();
      v23 = sub_219BDB954();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      v24 = v33;
      (*(v33 + 104))(v6, *MEMORY[0x277D2FF08], v4);
      sub_219BDD904();
      (*(v24 + 8))(v6, v4);
      sub_2187459AC(v9, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186E5A8C);
      v25 = (*(v32 + 8))(v12, v10);
      v26 = MEMORY[0x277D84F90];
      v27 = v31;
      *(v20 + v30) = MEMORY[0x277D84F90];
      *(v20 + v27) = v26;
      MEMORY[0x28223BE20](v25);
      *(&v30 - 4) = v3;
      *(&v30 - 3) = v18 | 2;
      *(&v30 - 2) = v22;
      type metadata accessor for ContinueReadingEligibility(0);
      sub_219BE3204();
      sub_2186C6148(0, &qword_280E8E3B0);
      v28 = sub_219BF66A4();
      v29 = swift_allocObject();
      *(v29 + 16) = v18 | 2;
      *(v29 + 24) = v35 & 1;
      *(v29 + 32) = v3;

      sub_219BE2F94();
    }
  }

  return result;
}

uint64_t sub_2194EACA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_219BDEE04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-1] - v9;
  result = sub_2194EBD4C(a1 + 104, v24, &qword_280E97538, &unk_280E97540, &protocol descriptor for ContinueReadingEligibilityProcessorType);
  if (v25)
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v24, v25);
    sub_2189EB264(a2);
    swift_unknownObjectRetain();
    v13 = sub_219BDEDE4();
    MEMORY[0x28223BE20](v13);
    *(&v23 - 2) = v12;
    *(&v23 - 1) = v10;
    sub_2189EB4C0();
    v23 = sub_219BE3204();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(v8, v10, v4);
    v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v16 = v4;
    v17 = a2;
    v18 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    (*(v5 + 32))(v19 + v15, v8, v16);
    v20 = v19 + v18;
    *v20 = v17;
    *(v20 + 8) = 1;
    sub_2189EB264(v17);
    v21 = sub_219BE2E54();
    type metadata accessor for ContinueReadingEligibility(0);
    v22 = sub_219BE2F64();

    (*(v5 + 8))(v10, v16);
    sub_218932F9C(v17);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2194EAF78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v47 = a5;
  v46 = a4;
  v50 = a1;
  v6 = sub_219BDBD64();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v49);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  v48 = qword_280F617A8;
  sub_2194EBBBC(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  *&v66[0] = 0;
  *(&v66[0] + 1) = 0xE000000000000000;
  *&v55 = a3;
  sub_219BF7484();
  v11 = v66[0];
  v12 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v13 = sub_2186FC3BC();
  *(v10 + 64) = v13;
  *(v10 + 32) = v11;
  *&v66[0] = 0;
  *(&v66[0] + 1) = 0xE000000000000000;
  v14 = v50;
  sub_219BF7484();
  v15 = v66[0];
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 72) = v15;
  sub_219BF6214();
  sub_219BE5314();

  sub_2194EBFBC(v14, v9, type metadata accessor for ContinueReadingEligibility);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2194EC2B4(v9, type metadata accessor for ContinueReadingEligibility);
  }

  v17 = *(v9 + 6);
  v66[5] = *(v9 + 5);
  v67 = v17;
  v18 = *(v9 + 4);
  v68 = v9[112];
  v19 = *(v9 + 1);
  v66[0] = *v9;
  v66[1] = v19;
  v20 = *(v9 + 3);
  v66[2] = *(v9 + 2);
  v66[3] = v20;
  v66[4] = v18;
  v21 = v19;
  v22 = BYTE8(v19);
  v23 = v18;
  v49 = v18;
  v50 = v67;
  v24 = BYTE8(v18);
  v25 = *(&v67 + 1);
  v26 = v67;
  sub_2189EB258(v23, v24);
  v27 = off_278242E40[v22];
  sub_2194EBC68(v21, v22);
  v28 = [v21 *v27];
  v48 = sub_219BF5414();
  v42 = v29;

  v30 = sub_2189DC604();
  v40 = v31;
  v41 = v30;
  v32 = sub_2189DC6FC(v21, v22);
  v34 = v33;
  v35 = v43;
  sub_219BDBD54();
  v36 = sub_219BDBD44();
  v38 = v37;
  (*(v44 + 8))(v35, v45);
  v64 = v24;
  *&v55 = v48;
  *(&v55 + 1) = v42;
  *&v56 = v21;
  BYTE8(v56) = v22;
  *(&v56 + 9) = *v65;
  HIDWORD(v56) = *&v65[3];
  *&v57 = v41;
  *(&v57 + 1) = v40;
  *&v58 = v32;
  *(&v58 + 1) = v34;
  *&v59 = v49;
  BYTE8(v59) = v24;
  *(&v59 + 9) = *v63;
  HIDWORD(v59) = *&v63[3];
  *&v60 = v36;
  *(&v60 + 1) = v38;
  *&v61 = v50;
  *(&v61 + 1) = v25;
  v62 = v46 & 1;
  result = sub_2194EBD4C(v47 + 144, v53, &unk_280EA0BF0, qword_280EA0C00, &protocol descriptor for ContinueReadingPromptPresenterType);
  if (v54)
  {
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v51[4] = v59;
    v51[5] = v60;
    v51[6] = v61;
    v52 = v62;
    v51[0] = v55;
    v51[1] = v56;
    v51[2] = v57;
    v51[3] = v58;
    v39 = off_282A4ABF0[0];
    type metadata accessor for ContinueReadingPromptPresenter();
    v39(v51);
    sub_2189EB304(v66);
    sub_2189EB304(&v55);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2194EB444()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_weakDestroy();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  sub_2194EBDD4(v0 + 104, &qword_280E97538, &unk_280E97540, &protocol descriptor for ContinueReadingEligibilityProcessorType);
  sub_2194EBDD4(v0 + 144, &unk_280EA0BF0, qword_280EA0C00, &protocol descriptor for ContinueReadingPromptPresenterType);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2194EB4D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_219BE4644();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x277D352E0], v12);
  sub_2194E3B2C(a1, a2, a3, a4, a5, a6, v15, 0, 0, 0);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2194EB614(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a7;
  v14 = sub_219BE4644();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, *MEMORY[0x277D352E0], v14);
  sub_2194E3B2C(a1, a2, a3, a4, a5, v19, v17, v20, a8, 0);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2194EB758(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v22 = a7;
  v20 = a5;
  v14 = sub_219BE4644();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, *MEMORY[0x277D352E0], v14);
  sub_2194E3B2C(a1, a2, a3, a4, v20, v21, v17, v22, a8, a9);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2194EBA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_219BE3204();
  v6 = sub_219BE1C44();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  sub_2188202A8(a3);
  sub_2187B2FB4(0, &qword_280E8B4E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  sub_219BE2F74();
}

void sub_2194EBBBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_2194EBC68(id result, char a2)
{
  if (a2 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    return swift_unknownObjectRetain();
  }

  return result;
}

id sub_2194EBCA8(void **a1)
{
  v3 = *(sub_219BDEE04() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_219748DC4(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8));
}

uint64_t sub_2194EBD4C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2194EBBBC(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2194EBDD4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2194EBBBC(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2194EBE64@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    result = v3();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_2194EBEBC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E5A8C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2194EBF3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E5A8C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2194EBFBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm_0()
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2194EC1C0(void *a1)
{
  sub_2186E5A8C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2194EC2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData()
{
  result = qword_280E96CA8;
  if (!qword_280E96CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2194EC38C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194EC8BC(0, &qword_27CC1B340, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194EC868();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 39;
    v13 = type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2194EC5F4(void *a1)
{
  v3 = v1;
  sub_2194EC8BC(0, &qword_27CC1B350, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194EC868();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2194EC7C0(uint64_t a1)
{
  v2 = sub_2194EC868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194EC7FC(uint64_t a1)
{
  v2 = sub_2194EC868();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2194EC868()
{
  result = qword_27CC1B348;
  if (!qword_27CC1B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B348);
  }

  return result;
}

void sub_2194EC8BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2194EC868();
    v7 = a3(a1, &type metadata for PuzzleFullArchiveTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2194EC934()
{
  result = qword_27CC1B358;
  if (!qword_27CC1B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B358);
  }

  return result;
}

unint64_t sub_2194EC98C()
{
  result = qword_27CC1B360;
  if (!qword_27CC1B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B360);
  }

  return result;
}

unint64_t sub_2194EC9E4()
{
  result = qword_27CC1B368;
  if (!qword_27CC1B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B368);
  }

  return result;
}

id sub_2194ECA5C(uint64_t a1)
{
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:a1];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];
  if (v2)
  {
    v3 = v2;

    v1 = v3;
  }

  sub_2194ECD5C(0, &qword_280E8B5D8, sub_2194ECCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v5 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  sub_2194ECD5C(0, &unk_280E8B5E0, sub_2194ECDB0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_219C09BA0;
  v7 = *MEMORY[0x277D74430];
  *(v6 + 32) = *MEMORY[0x277D74430];
  *(v6 + 40) = *MEMORY[0x277D74420];
  v8 = v1;
  v9 = v5;
  v10 = v7;
  v11 = sub_2194AE5BC(v6);
  swift_setDeallocating();
  sub_2194ECECC(v6 + 32, sub_2194ECDB0);
  sub_2194ECE20();
  *(inited + 64) = v12;
  *(inited + 40) = v11;
  sub_2194AE6A0(inited);
  swift_setDeallocating();
  sub_2194ECECC(inited + 32, sub_2194ECCF0);
  type metadata accessor for AttributeName(0);
  sub_2194ECF2C(&qword_280E8DC98, type metadata accessor for AttributeName);
  v13 = sub_219BF5204();

  v14 = [v8 fontDescriptorByAddingAttributes_];

  v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
  return v15;
}

void sub_2194ECCF0()
{
  if (!qword_280E8DC70)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8DC70);
    }
  }
}

void sub_2194ECD5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2194ECDB0()
{
  if (!qword_280E8DDF8)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8DDF8);
    }
  }
}

void sub_2194ECE20()
{
  if (!qword_280E8FA38)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_2194ECF2C(&unk_280E8DE00, type metadata accessor for TraitKey);
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FA38);
    }
  }
}

uint64_t sub_2194ECECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2194ECF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2194ECF9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_219BEF554();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = type metadata accessor for NewIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v38);
  v37 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BF1934();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218D15B24();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2194ED9D0(0, &qword_280E8C8B0, MEMORY[0x277D844C8]);
  v42 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31[-v14];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194ED918();
  v16 = v43;
  sub_219BF7B34();
  if (!v16)
  {
    v43 = v13;
    v33 = v8;
    v34 = v6;
    v18 = v38;
    v17 = v39;
    v20 = v40;
    v19 = v41;
    v48 = 1;
    v44 = sub_219BF76A4();
    v47 = 2;
    v32 = sub_219BF76A4();
    v46 = 3;
    sub_218D15CF4(&unk_280E91390, MEMORY[0x277D32648]);
    sub_219BF76E4();
    v45 = 4;
    sub_218D15CF4(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    (*(v43 + 8))(v15, v42);
    v22 = v37;
    *v37 = 6;
    v22[1] = v44 & 1;
    v22[2] = (v32 == 2) | v32 & 1;
    v23 = v17;
    v24 = v11;
    v25 = v17[6];
    v43 = v24;
    if (v25() == 1)
    {
      v26 = v17[13];
      v27 = v36;
      v26(v36, *MEMORY[0x277D32628], v20);
      v28 = v19;
      if ((v25)(v43, 1, v20) != 1)
      {
        sub_218D15BD0(v43);
      }
    }

    else
    {
      v29 = v17[4];
      v27 = v36;
      v29(v36, v43, v20);
      v28 = v19;
    }

    v30 = v37;
    (v23[4])(&v37[*(v18 + 28)], v27, v20);
    (*(v35 + 32))(v30 + *(v18 + 32), v33, v34);
    sub_2194ED96C(v30, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2194ED50C(void *a1)
{
  v3 = v1;
  sub_2194ED9D0(0, &qword_27CC1B370, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194ED918();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7804();
    v11[12] = 2;
    sub_219BF7804();
    type metadata accessor for NewIssueMagazineFeedGroupConfigData();
    v11[11] = 3;
    sub_219BEF554();
    sub_218D15CF4(&qword_280E913A0, MEMORY[0x277D32648]);
    sub_219BF7834();
    v11[10] = 4;
    sub_219BF1934();
    sub_218D15CF4(&qword_280E90810, MEMORY[0x277D33478]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2194ED7A8()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0x746E65746E6F63;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2194ED848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2194EDB4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2194ED870(uint64_t a1)
{
  v2 = sub_2194ED918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194ED8AC(uint64_t a1)
{
  v2 = sub_2194ED918();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2194ED918()
{
  result = qword_280E9CF08[0];
  if (!qword_280E9CF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9CF08);
  }

  return result;
}

uint64_t sub_2194ED96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewIssueMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2194ED9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2194ED918();
    v7 = a3(a1, &type metadata for NewIssueMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2194EDA48()
{
  result = qword_27CC1B378;
  if (!qword_27CC1B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B378);
  }

  return result;
}

unint64_t sub_2194EDAA0()
{
  result = qword_280E9CEF8;
  if (!qword_280E9CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CEF8);
  }

  return result;
}

unint64_t sub_2194EDAF8()
{
  result = qword_280E9CF00;
  if (!qword_280E9CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CF00);
  }

  return result;
}

uint64_t sub_2194EDB4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

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

id *sub_2194EDD58()
{
  sub_218774F78((v0 + 2));

  return v0;
}

uint64_t sub_2194EDDB0()
{
  sub_2194EDD58();

  return swift_deallocClassInstance();
}

uint64_t sub_2194EDDE4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EDE70(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EDEFC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 24))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8;
  }

  return result;
}

uint64_t sub_2194EDF74(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 32))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8;
  }

  return result;
}

uint64_t sub_2194EDFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 40))(a1, a2, a3, ObjectType, v8);
    swift_unknownObjectRelease();
    return v10;
  }

  return result;
}

uint64_t sub_2194EE074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 48))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EE114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EE1B4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EE240(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 72))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EE2CC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 80))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EE358(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 88))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2194EE3E4(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 96))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7 & 1;
}

uint64_t sub_2194EE464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 104))(a1, a2, a3, a4, ObjectType, v9);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_2194EE528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218952834();
  sub_219BE6934();
  v12[2] = v10;
  v13[0] = v11[0];
  *(v13 + 9) = *(v11 + 9);
  v12[0] = v8;
  v12[1] = v9;
  v5 = sub_2194EE624(v12, a3);
  sub_218D3182C(v12);
  v7[3] = a3;
  *&v8 = v5;
  v7[2] = a2;
  sub_21894B868(sub_2194EF3E0, v7);
  sub_2189529D4();
  sub_218952A28();
  return sub_219BE8174();
}

uint64_t sub_2194EE624(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53[0] = v5;
  *(v53 + 9) = *(a1 + 57);
  v6 = *(a1 + 16);
  v50 = *a1;
  v51 = v6;
  v7 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TitleViewLayoutOptions(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  v20 = *(a1 + 64);
  if (*(a1 + 72))
  {
    *&v45 = *a1;
    *(&v45 + 1) = v13;
    *&v46 = v15;
    *(&v46 + 1) = v14;
    *&v47 = v17;
    *(&v47 + 1) = v16;
    *&v48 = v19;
    *(&v48 + 1) = v18;
    v49 = v20;
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    v21 = sub_219BE8164();
    (*(*(v21 - 8) + 16))(v12, a2, v21);
    *&v12[v10[5]] = 0x4010000000000000;
    *&v12[v10[6]] = 0x4010000000000000;
    v12[v10[7]] = 1;
    sub_2194EF454(a1, v43);
    sub_219459814(&v45, *&v12, v9);
    sub_2194EF508(v12, type metadata accessor for TitleViewLayoutOptions);
    sub_2194EF4B0();
    v22 = *(type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header() - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    v25 = v24 + v23;
    sub_218CB6278();
    v27 = *(v26 + 48);
    v28 = v48;
    *(v25 + 32) = v47;
    *(v25 + 48) = v28;
    *(v25 + 64) = v49;
    v29 = v46;
    *v25 = v45;
    *(v25 + 16) = v29;
    sub_2194EF568(v9, v25 + v27, type metadata accessor for TitleViewLayoutAttributes);
    v30 = type metadata accessor for TitleViewLayoutAttributes;
    v31 = v9;
  }

  else
  {
    *&v45 = *a1;
    *(&v45 + 1) = v13;
    *&v46 = v15;
    *(&v46 + 1) = v14;
    *&v47 = v17;
    *(&v47 + 1) = v16;
    *&v48 = v19;
    *(&v48 + 1) = v18;
    v49 = v20;
    v32 = sub_219BE8164();
    (*(*(v32 - 8) + 16))(v12, a2, v32);
    *&v12[v10[5]] = 0x4010000000000000;
    *&v12[v10[6]] = 0x4010000000000000;
    v12[v10[7]] = 1;
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_219459814(&v45, *&v12, v9);
    sub_2194EF4B0();
    v33 = *(type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header() - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    v35 = v24 + v34;
    sub_218CB6278();
    v37 = *(v36 + 48);
    v38 = v48;
    *(v35 + 32) = v47;
    *(v35 + 48) = v38;
    *(v35 + 64) = v49;
    v39 = v46;
    *v35 = v45;
    *(v35 + 16) = v39;
    sub_2194EF568(v9, v35 + v37, type metadata accessor for TitleViewLayoutAttributes);
    v43[2] = v52;
    v44[0] = v53[0];
    *(v44 + 9) = *(v53 + 9);
    v43[0] = v50;
    v43[1] = v51;
    sub_2194EF568(v43, &v42, sub_218799404);
    sub_2194EF508(v9, type metadata accessor for TitleViewLayoutAttributes);
    v30 = type metadata accessor for TitleViewLayoutOptions;
    v31 = v12;
  }

  sub_2194EF508(v31, v30);
  return v24;
}

uint64_t sub_2194EEAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218C72018();
  sub_219BE5FC4();
  sub_2194EEB68(v5[0], a3, __src);
  sub_21892DE98();
  memcpy(v5, __src, 0x1F2uLL);
  sub_218952A28();
  return sub_219BE75D4();
}

void *sub_2194EEB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = a3;
  v65 = sub_219BE9F64();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE8164();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v62 - v13;
  v64 = v10;
  if (a1 < 0)
  {
    v62[0] = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v62[1] = a1;
    v40 = *(v9 + 16);
    v40(v62 - v13, a2, v11);
    type metadata accessor for TagViewLayoutOptions();
    v41 = swift_allocObject();

    v42 = sub_219BE8034();
    v43 = [v42 preferredContentSizeCategory];

    LOBYTE(v42) = sub_219BF6924();
    type metadata accessor for TagViewLayoutOptions.AccessoryOptions();
    v44 = swift_allocObject();
    __asm
    {
      FMOV            V0.2D, #22.0
      FMOV            V1.2D, #30.0
    }

    *(v44 + 32) = _Q0;
    *(v44 + 48) = _Q1;
    *(v44 + 64) = 0x4041800000000000;
    *(v44 + 16) = MEMORY[0x277D84F90];
    *(v44 + 24) = v42 & 1;
    *(v41 + 72) = v44;
    v47 = v64;
    v40((v41 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v14, v64);
    sub_219BE8154();
    v49 = v48;
    sub_219BE7FB4();
    sub_219BE9F54();
    v51 = v50;
    v52 = *(v5 + 8);
    v53 = v65;
    v52(v7, v65);
    v54 = v49 - v51;
    sub_219BE7FB4();
    sub_219BE9F54();
    v56 = v55;
    v52(v7, v53);
    v57 = *(v9 + 8);
    v57(v14, v47);
    *(v41 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width) = v54 - v56;
    v58 = *(MEMORY[0x277D768C8] + 16);
    *(v41 + 16) = *MEMORY[0x277D768C8];
    *(v41 + 32) = v58;
    *(v41 + 48) = xmmword_219C45190;
    *(v41 + 64) = 0x4028000000000000;
    *(v41 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) = 0;
    *(v41 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context) = 0;
    v59 = *__swift_project_boxed_opaque_existential_1((v66 + 56), *(v66 + 80));

    sub_2189CCB7C(v60, v41, v59, v69);
    sub_21892DE98();
    swift_setDeallocating();

    v57((v41 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v47);
    swift_deallocClassInstance();
    v70[0] = v60;
    memcpy(&v70[1], v69, 0x1EAuLL);
    sub_2194EF400(v70);
  }

  else
  {
    v63 = v9;
    v15 = *(v9 + 16);
    v15(v62 - v13, a2, v11);
    type metadata accessor for TagViewLayoutOptions();
    v16 = swift_allocObject();

    v17 = sub_219BE8034();
    v18 = [v17 preferredContentSizeCategory];

    LOBYTE(v17) = sub_219BF6924();
    type metadata accessor for TagViewLayoutOptions.AccessoryOptions();
    v19 = swift_allocObject();
    __asm
    {
      FMOV            V0.2D, #22.0
      FMOV            V1.2D, #30.0
    }

    *(v19 + 32) = _Q0;
    *(v19 + 48) = _Q1;
    *(v19 + 64) = 0x4041800000000000;
    *(v19 + 16) = MEMORY[0x277D84F90];
    *(v19 + 24) = v17 & 1;
    *(v16 + 72) = v19;
    v26 = v64;
    v15((v16 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v14, v64);
    sub_219BE8154();
    v28 = v27;
    sub_219BE7FB4();
    sub_219BE9F54();
    v30 = v29;
    v31 = *(v5 + 8);
    v32 = v65;
    v31(v7, v65);
    v33 = v28 - v30;
    sub_219BE7FB4();
    sub_219BE9F54();
    v35 = v34;
    v31(v7, v32);
    v36 = *(v63 + 8);
    v36(v14, v26);
    *(v16 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width) = v33 - v35;
    v37 = *(MEMORY[0x277D768C8] + 16);
    *(v16 + 16) = *MEMORY[0x277D768C8];
    *(v16 + 32) = v37;
    *(v16 + 48) = xmmword_219C45190;
    *(v16 + 64) = 0x4028000000000000;
    *(v16 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) = 0;
    *(v16 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context) = 0;
    v38 = *__swift_project_boxed_opaque_existential_1((v66 + 56), *(v66 + 80));

    sub_2189CCB7C(v39, v16, v38, v68);
    sub_21892DE98();
    swift_setDeallocating();

    v36((v16 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v26);
    swift_deallocClassInstance();
    v70[0] = a1;
    memcpy(&v70[1], v68, 0x1EAuLL);
    sub_2194EF42C(v70);
  }

  memcpy(v71, v70, sizeof(v71));
  return memcpy(v67, v71, 0x1F2uLL);
}

uint64_t sub_2194EF1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_2194EF2AC, 0, 0);
}

uint64_t sub_2194EF2AC()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_21894B4D0(sub_2194EF3C0, v3);

  sub_2189529D4();
  sub_218952A28();
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2194EF400(uint64_t result)
{
  v1 = *(result + 480) & 0xFFFFFFFFFFFFFF8;
  v2 = *(result + 496) & 0x101 | 0x8000;
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 480) = v1;
  *(result + 496) = v2;
  return result;
}

uint64_t sub_2194EF42C(uint64_t result)
{
  v1 = *(result + 480) & 0xFFFFFFFFFFFFFF8;
  v2 = *(result + 496) & 0x101;
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 480) = v1;
  *(result + 496) = v2;
  return result;
}

void sub_2194EF4B0()
{
  if (!qword_27CC1B380)
  {
    type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1B380);
    }
  }
}

uint64_t sub_2194EF508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2194EF568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2194EF5D0()
{
  sub_218774F78(v0 + 16);
  sub_2187FABEC(*(v0 + 24));

  return swift_deallocClassInstance();
}

char *sub_2194EF634()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for FloatingTabBarSearchContentView());

  v4 = sub_2194EF6CC(v3);
  v5 = v4;
  v6 = *(v1 + 24);
  if (v6)
  {
    v6(v4);
  }

  sub_2194F0078(&qword_27CC1B3A0, type metadata accessor for FloatingTabBarSearchContentView);
  return v5;
}

char *sub_2194EF6CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchBar;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D759E8]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchContentConfiguration] = a1;
  v41.receiver = v1;
  v41.super_class = ObjectType;

  v5 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchBar;
  v7 = *&v5[OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchBar];
  v8 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v5[v6] setDelegate_];
  swift_unknownObjectRelease();
  v9 = *&v5[v6];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 bundleForClass_];
  sub_219BDB5E4();

  v14 = sub_219BF53D4();

  [v12 setPlaceholder_];

  [*&v5[v6] setAutocorrectionType_];
  [*&v5[v6] setAutocapitalizationType_];
  [*&v5[v6] setLookToDictateEnabled_];
  v15 = *&v5[v6];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor_];

  v19 = *&v5[v6];
  v20 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v21 = v19;
  v22 = [v20 init];
  [v21 setBackgroundImage_];

  v23 = *&v5[v6];
  v24 = v8;
  [v24 addSubview_];
  v25 = objc_opt_self();
  sub_218725F94();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C24300;
  v27 = [*&v5[v6] topAnchor];
  v28 = [v24 topAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v26 + 32) = v29;
  v30 = [*&v5[v6] leadingAnchor];
  v31 = [v24 leadingAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v26 + 40) = v32;
  v33 = [*&v5[v6] trailingAnchor];
  v34 = [v24 trailingAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v26 + 48) = v35;
  v36 = [*&v5[v6] bottomAnchor];
  v37 = [v24 bottomAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v26 + 56) = v38;
  sub_218C264F8();
  v39 = sub_219BF5904();

  [v25 activateConstraints_];

  sub_219BED0C4();

  return v24;
}

uint64_t sub_2194EFCF0(uint64_t a1)
{
  sub_218718690(a1, v5);
  sub_218C26494();
  type metadata accessor for FloatingTabBarSearchContentConfiguration();
  if (swift_dynamicCast())
  {
    *(v1 + OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchContentConfiguration) = v4;

    [*(v1 + OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchBar) setDelegate_];

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_2194EFDBC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchContentConfiguration;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = *(v1 + v5);
  v7 = type metadata accessor for FloatingTabBarSearchContentConfiguration();
  v4[13] = v7;
  v4[3] = v7;
  v4[4] = sub_2194F0078(&qword_27CC1B3A8, type metadata accessor for FloatingTabBarSearchContentConfiguration);
  *v4 = v6;

  return sub_2194EFE8C;
}

void sub_2194EFE8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_218718690(*a1, (v2 + 5));
    sub_2194EFCF0((v2 + 5));
  }

  else
  {
    sub_218718690(*a1, (v2 + 5));
    sub_218C26494();
    if (swift_dynamicCast())
    {
      v3 = v2[11];
      *(v3 + v2[12]) = v2[10];

      [*(v3 + OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchBar) setDelegate_];
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

uint64_t sub_2194EFF80@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI231FloatingTabBarSearchContentView_searchContentConfiguration);
  a1[3] = type metadata accessor for FloatingTabBarSearchContentConfiguration();
  a1[4] = sub_2194F0078(&qword_27CC1B3A8, type metadata accessor for FloatingTabBarSearchContentConfiguration);
  *a1 = v3;
}

void (*sub_2194F0008(uint64_t **a1))(void *a1)
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
  v2[4] = sub_2194EFDBC(v2);
  return sub_218C263FC;
}

uint64_t sub_2194F0078(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2194F00BC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2194F1824(v6);
  return sub_219BF73E4();
}

uint64_t sub_2194F0138(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsHighlights(0);
  v129 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v124 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v128 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v127 = &v116 - v11;
  MEMORY[0x28223BE20](v12);
  v121 = &v116 - v13;
  MEMORY[0x28223BE20](v14);
  v134 = (&v116 - v15);
  MEMORY[0x28223BE20](v16);
  v119 = &v116 - v17;
  MEMORY[0x28223BE20](v18);
  v126 = &v116 - v19;
  MEMORY[0x28223BE20](v20);
  v118 = &v116 - v21;
  MEMORY[0x28223BE20](v22);
  v132 = &v116 - v23;
  MEMORY[0x28223BE20](v24);
  v123 = &v116 - v25;
  MEMORY[0x28223BE20](v26);
  v120 = &v116 - v27;
  *&v29 = MEMORY[0x28223BE20](v28).n128_u64[0];
  v125 = &v116 - v30;
  v31 = *a2;
  v117 = *(a2 + 8);
  v131 = v31;
  v32 = [v31 sportsEventIDs];
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = v32;
    v35 = sub_219BF5924();
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v122 = v8;
  v133 = a1;
  v130 = v6;
  v135 = v33;
  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_15;
  }

  v37 = 0;
  v116 = v36 - 1;
  do
  {
    v38 = (v35 + 40 + 16 * v37);
    v39 = v37;
    while (1)
    {
      if (v39 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(a3 + 16))
      {
        break;
      }

LABEL_7:
      ++v39;
      v38 += 2;
      if (v36 == v39)
      {
        goto LABEL_15;
      }
    }

    v40 = *(v38 - 1);
    v41 = *v38;

    sub_21870F700(v40, v41);
    if ((v42 & 1) == 0)
    {

      goto LABEL_7;
    }

    swift_unknownObjectRetain();

    MEMORY[0x21CECC690](v43);
    if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    v37 = v39 + 1;
    sub_219BF5A54();
    v33 = v135;
  }

  while (v116 != v39);
LABEL_15:

  if (v33 >> 62)
  {
LABEL_42:
    v85 = sub_219BF7214();
    v44 = v131;
    if (!v85)
    {
      goto LABEL_43;
    }

LABEL_17:
    if ((v33 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x21CECE0F0](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_56;
      }

      v45 = *(v33 + 32);
      swift_unknownObjectRetain();
    }

    v46 = [v45 eventLeagueTag];
    v47 = [v44 sportsEventIDs];
    if (v47)
    {
      v48 = v47;
      v49 = sub_219BF5924();

      v50 = *(v49 + 16);

      if (v50 >= 2)
      {
        v51 = v125;
        sub_2191B4058(v46, v125);
        sub_2194F442C(v51, v120, type metadata accessor for SportsHighlights.SubsectionDescriptor);
        v52 = v133;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = *v52;
        v54 = v135;
        v56 = sub_21931F404(v51);
        v57 = v54[2];
        v58 = (v55 & 1) == 0;
        v59 = v57 + v58;
        v60 = v130;
        if (__OFADD__(v57, v58))
        {
          __break(1u);
        }

        else
        {
          v61 = v55;
          if (v54[3] >= v59)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_219495F88();
              v54 = v135;
            }
          }

          else
          {
            sub_219487248(v59, isUniquelyReferenced_nonNull_native);
            v54 = v135;
            v62 = sub_21931F404(v125);
            if ((v61 & 1) != (v63 & 1))
            {
              v115 = v120;
              goto LABEL_70;
            }

            v56 = v62;
          }

          *v133 = v54;
          if (v61)
          {
            sub_2194F4494(v120, type metadata accessor for SportsHighlights.SubsectionDescriptor);
          }

          else
          {
            v78 = v120;
            v79 = v124;
            sub_2194F442C(v120, v124, type metadata accessor for SportsHighlights.SubsectionDescriptor);
            *(v79 + *(v60 + 20)) = MEMORY[0x277D84F90];
            sub_2194F4494(v78, type metadata accessor for SportsHighlights.SubsectionDescriptor);
            v80 = v123;
            sub_2194F442C(v125, v123, type metadata accessor for SportsHighlights.SubsectionDescriptor);
            sub_21948FAC4(v56, v80, v79, v54);
          }

          v81 = v54[7] + *(v129 + 72) * v56;
          v82 = *(v60 + 20);
          v83 = swift_unknownObjectRetain();
          MEMORY[0x21CECC690](v83);
          if (*((*(v81 + v82) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v81 + v82) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_40;
          }
        }

        sub_219BF5A14();
LABEL_40:
        sub_219BF5A54();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v84 = v125;
        return sub_2194F4494(v84, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      }
    }

    swift_unknownObjectRelease();
    v64 = v134;
    *v134 = v45;
    v33 = v122;
    swift_storeEnumTagMultiPayload();
    v65 = v121;
    sub_2194F442C(v64, v121, type metadata accessor for SportsHighlights.SubsectionDescriptor);
    sub_2194F442C(v65, v127, type metadata accessor for SportsHighlights.SubsectionDescriptor);
    sub_2194F44F4(v65, v128, type metadata accessor for SportsHighlights.SubsectionDescriptor);
    swift_unknownObjectRetain_n();
    v66 = v133;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v135 = *v66;
    v68 = v135;
    v70 = sub_21931F404(v64);
    v71 = v68[2];
    v72 = (v69 & 1) == 0;
    v73 = v71 + v72;
    v74 = v130;
    if (!__OFADD__(v71, v72))
    {
      v75 = v69;
      if (v68[3] < v73)
      {
        sub_219487248(v73, v67);
        v68 = v135;
        v76 = sub_21931F404(v134);
        if ((v75 & 1) != (v77 & 1))
        {
          sub_2194F4494(v128, type metadata accessor for SportsHighlights.SubsectionDescriptor);
          sub_2194F4494(v127, type metadata accessor for SportsHighlights.SubsectionDescriptor);
          sub_219BF79A4();
          __break(1u);
          goto LABEL_68;
        }

        v70 = v76;
        *v66 = v68;
        if ((v75 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_33:
        sub_2194F4494(v127, type metadata accessor for SportsHighlights.SubsectionDescriptor);
LABEL_61:
        v111 = v68[7] + *(v129 + 72) * v70;
        v112 = *(v74 + 20);
        v113 = swift_unknownObjectRetain();
        MEMORY[0x21CECC690](v113);
        if (*((*(v111 + v112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v111 + v112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        swift_unknownObjectRelease_n();
        sub_2194F4494(v134, type metadata accessor for SportsHighlights.SubsectionDescriptor);
        v84 = v128;
        return sub_2194F4494(v84, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      }

      if (v67)
      {
        *v66 = v68;
        if (v69)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_219495F88();
        v68 = v135;
        *v66 = v135;
        if (v75)
        {
          goto LABEL_33;
        }
      }

LABEL_60:
      v108 = v127;
      v109 = v124;
      sub_2194F442C(v127, v124, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      *(v109 + *(v74 + 20)) = MEMORY[0x277D84F90];
      sub_2194F4494(v108, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v110 = v123;
      sub_2194F442C(v134, v123, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      sub_21948FAC4(v70, v110, v109, v68);
      goto LABEL_61;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_219BF5A14();
LABEL_53:
    sub_219BF5A54();
    sub_2194F4494(v132, type metadata accessor for SportsHighlights.SubsectionDescriptor);
    v84 = v33;
    return sub_2194F4494(v84, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  }

  v44 = v131;
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_43:

  sub_218725F94();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C146A0;
  *(inited + 32) = v44;
  swift_unknownObjectRetain();
  v87 = v132;
  sub_2191B3D64(inited, v117, v132);
  swift_setDeallocating();
  swift_arrayDestroy();
  v88 = v118;
  sub_2194F442C(v87, v118, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  sub_2194F442C(v88, v126, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  v33 = v119;
  sub_2194F44F4(v88, v119, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  v89 = v133;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v89;
  v91 = v135;
  v93 = sub_21931F404(v87);
  v94 = v91[2];
  v95 = (v92 & 1) == 0;
  v96 = v94 + v95;
  if (__OFADD__(v94, v95))
  {
    goto LABEL_57;
  }

  v97 = v92;
  if (v91[3] >= v96)
  {
    v100 = v130;
    if ((v90 & 1) == 0)
    {
      sub_219495F88();
      v91 = v135;
    }

LABEL_49:
    v101 = v129;
    *v89 = v91;
    if (v97)
    {
      sub_2194F4494(v126, type metadata accessor for SportsHighlights.SubsectionDescriptor);
    }

    else
    {
      v102 = v126;
      v103 = v124;
      sub_2194F442C(v126, v124, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      *(v103 + *(v100 + 20)) = MEMORY[0x277D84F90];
      sub_2194F4494(v102, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v104 = v123;
      sub_2194F442C(v132, v123, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      sub_21948FAC4(v93, v104, v103, v91);
    }

    v105 = v91[7] + *(v101 + 72) * v93;
    v106 = *(v100 + 20);
    v107 = swift_unknownObjectRetain();
    MEMORY[0x21CECC690](v107);
    if (*((*(v105 + v106) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v105 + v106) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_53;
    }

    goto LABEL_58;
  }

  sub_219487248(v96, v90);
  v91 = v135;
  v98 = sub_21931F404(v132);
  v100 = v130;
  if ((v97 & 1) == (v99 & 1))
  {
    v93 = v98;
    goto LABEL_49;
  }

LABEL_68:
  sub_2194F4494(v33, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  v115 = v126;
LABEL_70:
  sub_2194F4494(v115, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2194F0D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v87 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v87);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = &v73 - v7;
  MEMORY[0x28223BE20](v8);
  v79 = &v73 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v73 - v11;
  MEMORY[0x28223BE20](v12);
  v81 = &v73 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v73 - v15;
  MEMORY[0x28223BE20](v16);
  v86 = &v73 - v17;
  MEMORY[0x28223BE20](v18);
  v83 = &v73 - v19;
  MEMORY[0x28223BE20](v20);
  v88 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  v25 = sub_219BDBD34();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - v30;
  sub_2191B4878(&v73 - v30);
  v32 = a2;
  sub_2191B4878(v28);
  v33 = sub_219BDBC94();
  v34 = *(v26 + 8);
  v34(v28, v25);
  v34(v31, v25);
  if ((v33 & 1) == 0)
  {
    sub_2191B4878(v31);
    sub_2191B4878(v28);
    LOBYTE(v38) = sub_219BDBC14();
    v34(v28, v25);
    v34(v31, v25);
    return v38 & 1;
  }

  v74 = v34;
  v75 = v28;
  v76 = v25;
  v85 = v32;
  v35 = a1;
  sub_2194F442C(a1, v24, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = type metadata accessor for SportsHighlights.SubsectionDescriptor;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2191B6C98();
      v39 = 1;
    }

    else
    {
      sub_2191B6B18();
      v39 = 0;
    }

    swift_unknownObjectRelease();
    v37 = sub_2186DCF58;
  }

  else
  {
    v39 = 1;
  }

  v40 = v88;
  sub_2194F4494(v24, v37);
  sub_2194F442C(v85, v40, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  v41 = swift_getEnumCaseMultiPayload();
  v42 = type metadata accessor for SportsHighlights.SubsectionDescriptor;
  if (v41)
  {
    v43 = v35;
    if (v41 != 1)
    {
      sub_2191B6B18();
      swift_unknownObjectRelease();
      sub_2194F4494(v40, sub_2186DCF58);
      if (v39)
      {
        goto LABEL_20;
      }

LABEL_15:
      v44 = v83;
      sub_2194F442C(v43, v83, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v45 = swift_getEnumCaseMultiPayload();
      if (v45)
      {
        v46 = v85;
        if (v45 == 1)
        {
          sub_2191B6C98();
        }

        else
        {
          sub_2191B6B18();
        }

        swift_unknownObjectRelease();
        sub_2194F4494(v44, sub_2186DCF58);
        v38 = 0;
      }

      else
      {
        swift_getObjectType();
        v38 = FCSportsEventProviding.isSubscribedByTeam(subscribedTagIDs:)(v82);
        swift_unknownObjectRelease();
        v46 = v85;
      }

      v50 = v86;
      sub_2194F442C(v46, v86, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v51 = swift_getEnumCaseMultiPayload();
      if (v51)
      {
        if (v51 == 1)
        {
          sub_2191B6C98();
        }

        else
        {
          sub_2191B6B18();
        }

        swift_unknownObjectRelease();
        sub_2194F4494(v50, sub_2186DCF58);
        if (v38)
        {
          goto LABEL_36;
        }
      }

      else
      {
        swift_getObjectType();
        v52 = FCSportsEventProviding.isSubscribedByTeam(subscribedTagIDs:)(v82);
        swift_unknownObjectRelease();
        if ((v38 ^ v52))
        {
          return v38 & 1;
        }
      }

      v54 = v80;
      sub_2194F442C(v43, v80, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v55 = swift_getEnumCaseMultiPayload();
      v56 = type metadata accessor for SportsHighlights.SubsectionDescriptor;
      if (v55)
      {
        v57 = v81;
        if (v55 == 1)
        {
          sub_2191B6C98();
          v58 = 1;
        }

        else
        {
          sub_2191B6B18();
          v58 = 0;
        }

        swift_unknownObjectRelease();
        v56 = sub_2186DCF58;
      }

      else
      {
        v58 = 0;
        v57 = v81;
      }

      sub_2194F4494(v54, v56);
      sub_2194F442C(v46, v57, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v59 = swift_getEnumCaseMultiPayload();
      v60 = type metadata accessor for SportsHighlights.SubsectionDescriptor;
      if (v59)
      {
        if (v59 == 1)
        {
          sub_2191B6C98();
          swift_unknownObjectRelease();
          sub_2194F4494(v57, sub_2186DCF58);
          if ((v58 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_51;
        }

        sub_2191B6B18();
        swift_unknownObjectRelease();
        v60 = sub_2186DCF58;
      }

      sub_2194F4494(v57, v60);
      if (v58)
      {
LABEL_46:
        v61 = v78;
        sub_2194F442C(v43, v78, type metadata accessor for SportsHighlights.SubsectionDescriptor);
        v62 = swift_getEnumCaseMultiPayload();
        if (v62)
        {
          if (v62 == 1)
          {
            sub_2191B6C98();
            swift_unknownObjectRelease();
            sub_2194F4494(v61, sub_2186DCF58);
            LOBYTE(v38) = 1;
            return v38 & 1;
          }

          sub_2191B6B18();
          swift_unknownObjectRelease();
          v65 = sub_2186DCF58;
        }

        else
        {
          v65 = type metadata accessor for SportsHighlights.SubsectionDescriptor;
        }

        sub_2194F4494(v61, v65);
        LOBYTE(v38) = 0;
        return v38 & 1;
      }

LABEL_51:
      v63 = v77;
      sub_2194F442C(v43, v77, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v64 = swift_getEnumCaseMultiPayload();
      if (v64)
      {
        if (v64 == 1)
        {
          sub_2191B6C98();
        }

        else
        {
          sub_2191B6B18();
        }

        swift_unknownObjectRelease();
        sub_2194F4494(v63, sub_2186DCF58);
        LOBYTE(v38) = 0;
      }

      else
      {
        swift_getObjectType();
        LOBYTE(v38) = FCSportsEventProviding.isSubscribedByLeague(subscribedTagIDs:)(v82);
        swift_unknownObjectRelease();
      }

      v66 = v79;
      sub_2194F442C(v46, v79, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      v67 = swift_getEnumCaseMultiPayload();
      if (v67)
      {
        if (v67 == 1)
        {
          sub_2191B6C98();
        }

        else
        {
          sub_2191B6B18();
        }

        v70 = v76;
        swift_unknownObjectRelease();
        sub_2194F4494(v66, sub_2186DCF58);
        if (v38)
        {
LABEL_36:
          LOBYTE(v38) = 1;
          return v38 & 1;
        }
      }

      else
      {
        swift_getObjectType();
        v68 = FCSportsEventProviding.isSubscribedByLeague(subscribedTagIDs:)(v82);
        swift_unknownObjectRelease();
        v69 = v38 ^ v68;
        v70 = v76;
        if (v69)
        {
          return v38 & 1;
        }
      }

      sub_2191B4D54(v31);
      v71 = v75;
      sub_2191B4D54(v75);
      LOBYTE(v38) = sub_219BDBC14();
      v72 = v74;
      v74(v71, v70);
      v72(v31, v70);
      return v38 & 1;
    }

    sub_2191B6C98();
    swift_unknownObjectRelease();
    v42 = sub_2186DCF58;
  }

  else
  {
    v43 = v35;
  }

  sub_2194F4494(v40, v42);
  if (v39)
  {
    goto LABEL_15;
  }

LABEL_20:
  v47 = v84;
  sub_2194F442C(v43, v84, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  v48 = swift_getEnumCaseMultiPayload();
  if (v48)
  {
    if (v48 != 1)
    {
      sub_2191B6B18();
      swift_unknownObjectRelease();
      sub_2194F4494(v47, sub_2186DCF58);
      LOBYTE(v38) = 0;
      return v38 & 1;
    }

    sub_2191B6C98();
    swift_unknownObjectRelease();
    v49 = sub_2186DCF58;
  }

  else
  {
    v49 = type metadata accessor for SportsHighlights.SubsectionDescriptor;
  }

  sub_2194F4494(v47, v49);
  LOBYTE(v38) = 1;
  return v38 & 1;
}

uint64_t sub_2194F1824(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2186D6710(0, &qword_280E8E260);
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2194F1A28(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2194F1938(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2194F1938(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = sub_2191B42A4(&v17, &v16);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v12;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2194F1A28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v88;
    if (*v88)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_90;
    }

    goto LABEL_127;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v89 = v6;
      v10 = *a3;
      v11 = *(*a3 + 8 * v7);
      v92 = *(*a3 + 8 * v9);
      v93 = v11;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = sub_2191B42A4(&v93, &v92);
      if (v4)
      {
LABEL_99:

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v13 = v9;
      v14 = v12;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v15 = v13 + 2;
      v86 = v13;
      v16 = 8 * v13;
      v5 = v10 + v16 + 16;
      while (1)
      {
        v7 = v89;
        if (v89 == v15)
        {
          break;
        }

        v17 = *v5;
        v92 = *(v5 - 8);
        v93 = v17;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = sub_2191B42A4(&v93, &v92);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v15;
        v5 += 8;
        if ((v14 ^ v18))
        {
          v7 = v15 - 1;
          break;
        }
      }

      if (v14)
      {
        v9 = v86;
        if (v7 < v86)
        {
          goto LABEL_121;
        }

        if (v86 < v7)
        {
          v19 = 8 * v7 - 8;
          v20 = v7;
          v21 = v86;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v23 = *(v22 + v16);
              *(v22 + v16) = *(v22 + v19);
              *(v22 + v19) = v23;
            }

            ++v21;
            v19 -= 8;
            v16 += 8;
          }

          while (v21 < v20);
        }
      }

      else
      {
        v9 = v86;
      }
    }

    v24 = a3[1];
    if (v7 >= v24)
    {
      goto LABEL_130;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_117;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_130;
    }

    v25 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v25 >= v24)
    {
      v25 = a3[1];
    }

    if (v25 < v9)
    {
      goto LABEL_120;
    }

    if (v7 == v25)
    {
LABEL_130:
      if (v7 < v9)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v72 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v87 = v9;
      v73 = v9 - v7;
      v83 = v25;
      do
      {
        v74 = *(v72 + 8 * v7);
        v84 = v73;
        v90 = v5;
        do
        {
          v92 = *v5;
          v93 = v74;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v75 = sub_2191B42A4(&v93, &v92);
          if (v4)
          {
            goto LABEL_99;
          }

          v76 = v75;
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if ((v76 & 1) == 0)
          {
            break;
          }

          if (!v72)
          {
            goto LABEL_123;
          }

          v77 = *v5;
          v74 = *(v5 + 8);
          *v5 = v74;
          *(v5 + 8) = v77;
          v5 -= 8;
        }

        while (!__CFADD__(v73++, 1));
        ++v7;
        v5 = v90 + 8;
        v73 = v84 - 1;
      }

      while (v7 != v83);
      v7 = v83;
      v9 = v87;
      if (v83 < v87)
      {
        goto LABEL_116;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_2191F6B60((v26 > 1), v27 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v28;
    v29 = &v8[16 * v27];
    *(v29 + 4) = v9;
    *(v29 + 5) = v7;
    v30 = *v88;
    if (!*v88)
    {
      goto LABEL_126;
    }

    if (v27)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  while (1)
  {
    v31 = v28 - 1;
    if (v28 >= 4)
    {
      v36 = &v8[16 * v28 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_103;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_104;
      }

      v43 = &v8[16 * v28];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_106;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_109;
      }

      if (v47 >= v39)
      {
        v65 = &v8[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_115;
        }

        if (v34 < v68)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

    if (v28 == 3)
    {
      v32 = *(v8 + 4);
      v33 = *(v8 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_47:
      if (v35)
      {
        goto LABEL_105;
      }

      v48 = &v8[16 * v28];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_108;
      }

      v54 = &v8[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_111;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_112;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_61;
    }

    v58 = &v8[16 * v28];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_61:
    if (v53)
    {
      goto LABEL_107;
    }

    v61 = &v8[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_110;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_68:
    v69 = v31 - 1;
    if (v31 - 1 >= v28)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_122;
    }

    v5 = *&v8[16 * v69 + 32];
    v70 = *&v8[16 * v31 + 40];
    sub_2194F209C((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v31 + 32]), (*a3 + 8 * v70), v30);
    if (v4)
    {
    }

    if (v70 < v5)
    {
      goto LABEL_101;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_218C81048(v8);
    }

    if (v69 >= *(v8 + 2))
    {
      goto LABEL_102;
    }

    v71 = &v8[16 * v69];
    *(v71 + 4) = v5;
    *(v71 + 5) = v70;
    v94 = v8;
    result = sub_218C80FBC(v31);
    v8 = v94;
    v28 = *(v94 + 2);
    if (v28 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  result = sub_218C81048(v8);
  v8 = result;
LABEL_90:
  v94 = v8;
  v79 = *(v8 + 2);
  if (v79 < 2)
  {
  }

  while (*a3)
  {
    v80 = *&v8[16 * v79];
    v81 = *&v8[16 * v79 + 24];
    sub_2194F209C((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v79 + 16]), (*a3 + 8 * v81), v5);
    if (v4)
    {
    }

    if (v81 < v80)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_218C81048(v8);
    }

    if (v79 - 2 >= *(v8 + 2))
    {
      goto LABEL_114;
    }

    v82 = &v8[16 * v79];
    *v82 = v80;
    *(v82 + 1) = v81;
    v94 = v8;
    result = sub_218C80FBC(v79 - 1);
    v8 = v94;
    v79 = *(v94 + 2);
    if (v79 <= 1)
    {
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_2194F209C(void **__dst, void **__src, void **a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = sub_2191B42A4(&v45, &v44);
      if (v4)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = sub_2191B42A4(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

void sub_2194F2434(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a5;
  v60 = type metadata accessor for SportsHighlights(0);
  MEMORY[0x28223BE20](v60);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_64;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_65;
  }

  v24 = (a2 - a1) / v22;
  v65 = a1;
  v64 = a4;
  v59 = v22;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    v58 = v18;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v26;
    if (v26 >= 1)
    {
      v37 = -v59;
      v38 = a4 + v26;
      v39 = v13;
      v55 = a4;
      v56 = a1;
      v54 = -v59;
      do
      {
        v40 = a1;
        v52 = v36;
        v41 = a2 + v37;
        v57 = a2;
        while (1)
        {
          if (a2 <= v40)
          {
            v65 = a2;
            v63 = v52;
            goto LABEL_62;
          }

          v43 = a3;
          v53 = v36;
          v59 = v38;
          v44 = v38 + v37;
          sub_2194F442C(v38 + v37, v39, type metadata accessor for SportsHighlights);
          v45 = v6;
          v46 = v39;
          v47 = v58;
          sub_2194F442C(v41, v58, type metadata accessor for SportsHighlights);
          v48 = sub_2194F0D88(v46, v47, v61);
          if (v45)
          {
            sub_2194F4494(v47, type metadata accessor for SportsHighlights);
            sub_2194F4494(v46, type metadata accessor for SportsHighlights);
            v65 = v57;
            v63 = v53;
            goto LABEL_62;
          }

          v49 = v48;
          v62 = 0;
          v50 = v43 + v37;
          sub_2194F4494(v47, type metadata accessor for SportsHighlights);
          sub_2194F4494(v46, type metadata accessor for SportsHighlights);
          v39 = v46;
          if (v49)
          {
            break;
          }

          v36 = v44;
          a3 = v43 + v37;
          if (v43 < v59 || v50 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v44;
            v6 = v62;
          }

          else
          {
            v6 = v62;
            if (v43 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
              v36 = v44;
            }
          }

          v38 = v36;
          v40 = v56;
          v42 = v44 > v55;
          v37 = v54;
          a2 = v57;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v43 + v37;
        if (v43 < v57 || v50 >= v57)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v62;
          v37 = v54;
        }

        else
        {
          a2 = v41;
          v6 = v62;
          v37 = v54;
          if (v43 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v56;
        v38 = v59;
        v36 = v53;
      }

      while (v59 > v55);
    }

LABEL_58:
    v65 = a2;
    v63 = v36;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v25;
    v63 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v28 = v59;
      v57 = v20;
      while (1)
      {
        v29 = a3;
        sub_2194F442C(a2, v20, type metadata accessor for SportsHighlights);
        sub_2194F442C(a4, v16, type metadata accessor for SportsHighlights);
        v30 = sub_2194F0D88(v20, v16, v61);
        if (v6)
        {
          break;
        }

        v31 = v30;
        v62 = 0;
        v32 = v16;
        v33 = a4;
        v34 = v32;
        sub_2194F4494(v32, type metadata accessor for SportsHighlights);
        sub_2194F4494(v20, type metadata accessor for SportsHighlights);
        if (v31)
        {
          v35 = a2 + v28;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v28;
          if (a1 < v33 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v33 + v28;
        }

        v16 = v34;
        v28 = v59;
        a1 += v59;
        v65 = a1;
        v20 = v57;
        v6 = v62;
        if (a4 >= v58 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_2194F4494(v16, type metadata accessor for SportsHighlights);
      sub_2194F4494(v20, type metadata accessor for SportsHighlights);
    }
  }

LABEL_62:
  sub_2189F1ADC(&v65, &v64, &v63);
}

uint64_t sub_2194F2A78(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4, uint64_t a5)
{
  v6 = v5;
  v138 = a1;
  v144 = type metadata accessor for SportsHighlights(0);
  v150 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v140 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v143 = &v130 - v12;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v130 - v17;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](&v130 - v20);
  v151 = a3;
  v152 = a5;
  v26 = a3[1];
  if (v26 < 1)
  {
    swift_bridgeObjectRetain_n();
    v28 = MEMORY[0x277D84F90];
LABEL_96:
    v149 = *v138;
    if (v149)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_98;
    }

    goto LABEL_137;
  }

  v134 = &v130 - v22;
  v135 = v21;
  v146 = v18;
  v147 = v25;
  v141 = v24;
  v142 = v23;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v137 = a4;
  while (1)
  {
    if (v27 + 1 >= v26)
    {
      v39 = v27 + 1;
    }

    else
    {
      v149 = v26;
      v29 = v6;
      v30 = *v151;
      v31 = *(v150 + 72);
      v32 = *v151 + v31 * (v27 + 1);
      v33 = v27;
      v34 = v134;
      sub_2194F442C(v32, v134, type metadata accessor for SportsHighlights);
      v35 = v30 + v31 * v27;
      v36 = v135;
      sub_2194F442C(v35, v135, type metadata accessor for SportsHighlights);
      LODWORD(v148) = sub_2194F0D88(v34, v36, v152);
      if (v29)
      {
        sub_2194F4494(v36, type metadata accessor for SportsHighlights);
        sub_2194F4494(v34, type metadata accessor for SportsHighlights);
        swift_bridgeObjectRelease_n();
      }

      sub_2194F4494(v36, type metadata accessor for SportsHighlights);
      sub_2194F4494(v34, type metadata accessor for SportsHighlights);
      v136 = v33;
      v37 = v33 + 2;
      v38 = v30 + v31 * (v33 + 2);
      v6 = 0;
      v145 = v31;
      while (1)
      {
        v39 = v149;
        if (v149 == v37)
        {
          break;
        }

        v40 = v146;
        sub_2194F442C(v38, v146, type metadata accessor for SportsHighlights);
        v41 = v147;
        sub_2194F442C(v32, v147, type metadata accessor for SportsHighlights);
        v42 = sub_2194F0D88(v40, v41, v152);
        sub_2194F4494(v41, type metadata accessor for SportsHighlights);
        sub_2194F4494(v40, type metadata accessor for SportsHighlights);
        ++v37;
        v38 += v145;
        v32 += v145;
        if ((v148 ^ v42))
        {
          v39 = v37 - 1;
          break;
        }
      }

      v27 = v136;
      a4 = v137;
      if (v148)
      {
        if (v39 < v136)
        {
          goto LABEL_131;
        }

        if (v136 < v39)
        {
          v43 = v145 * (v39 - 1);
          v44 = v39 * v145;
          v149 = v39;
          v45 = v136;
          v46 = v136 * v145;
          v47 = v145;
          do
          {
            if (v45 != --v39)
            {
              v148 = v6;
              v48 = *v151;
              if (!*v151)
              {
                goto LABEL_135;
              }

              sub_2194F44F4(v48 + v46, v140, type metadata accessor for SportsHighlights);
              if (v46 < v43 || v48 + v46 >= v48 + v44)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_2194F44F4(v140, v48 + v43, type metadata accessor for SportsHighlights);
              v6 = v148;
            }

            ++v45;
            v43 -= v47;
            v44 -= v47;
            v46 += v47;
          }

          while (v45 < v39);
          v27 = v136;
          a4 = v137;
          v39 = v149;
        }
      }
    }

    v49 = v151[1];
    if (v39 >= v49)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v39, v27))
    {
      goto LABEL_127;
    }

    if (v39 - v27 >= a4)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v27, a4))
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_133:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_134;
    }

    if (v27 + a4 >= v49)
    {
      v50 = v151[1];
    }

    else
    {
      v50 = v27 + a4;
    }

    if (v50 < v27)
    {
      goto LABEL_130;
    }

    if (v39 == v50)
    {
LABEL_33:
      v51 = v39;
      if (v39 < v27)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v107 = *v151;
      v108 = *(v150 + 72);
      v109 = *v151 + v108 * (v39 - 1);
      v145 = -v108;
      v136 = v27;
      v110 = v27 - v39;
      v148 = v107;
      v130 = v108;
      v111 = v107 + v39 * v108;
      v139 = v50;
      do
      {
        v149 = v39;
        v131 = v111;
        v112 = v111;
        v132 = v110;
        v133 = v109;
        do
        {
          v113 = v141;
          sub_2194F442C(v112, v141, type metadata accessor for SportsHighlights);
          v114 = v142;
          sub_2194F442C(v109, v142, type metadata accessor for SportsHighlights);
          v115 = sub_2194F0D88(v113, v114, v152);
          if (v6)
          {
            sub_2194F4494(v114, type metadata accessor for SportsHighlights);
            sub_2194F4494(v113, type metadata accessor for SportsHighlights);
LABEL_108:
            swift_bridgeObjectRelease_n();
          }

          v116 = v115;
          sub_2194F4494(v114, type metadata accessor for SportsHighlights);
          sub_2194F4494(v113, type metadata accessor for SportsHighlights);
          if ((v116 & 1) == 0)
          {
            break;
          }

          if (!v148)
          {
            goto LABEL_133;
          }

          v117 = v143;
          sub_2194F44F4(v112, v143, type metadata accessor for SportsHighlights);
          swift_arrayInitWithTakeFrontToBack();
          sub_2194F44F4(v117, v109, type metadata accessor for SportsHighlights);
          v109 += v145;
          v112 += v145;
        }

        while (!__CFADD__(v110++, 1));
        v39 = v149 + 1;
        v109 = v133 + v130;
        v110 = v132 - 1;
        v111 = v131 + v130;
        v51 = v139;
      }

      while (v149 + 1 != v139);
      v27 = v136;
      if (v139 < v136)
      {
        goto LABEL_126;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = v51;
    v53 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_2191F6B60(0, *(v28 + 2) + 1, 1, v28);
    }

    v6 = *(v28 + 2);
    v54 = *(v28 + 3);
    v55 = v6 + 1;
    if (v6 >= v54 >> 1)
    {
      v28 = sub_2191F6B60((v54 > 1), v6 + 1, 1, v28);
    }

    *(v28 + 2) = v55;
    v56 = &v28[16 * v6];
    v57 = v139;
    *(v56 + 4) = v27;
    *(v56 + 5) = v57;
    v149 = *v138;
    if (!v149)
    {
      goto LABEL_136;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v26 = v151[1];
    v27 = v139;
    v6 = v53;
    a4 = v137;
    if (v139 >= v26)
    {
      goto LABEL_96;
    }
  }

  while (1)
  {
    v58 = v55 - 1;
    if (v55 >= 4)
    {
      v63 = &v28[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_113;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_114;
      }

      v70 = &v28[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_116;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_119;
      }

      if (v74 >= v66)
      {
        v93 = &v28[16 * v58 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v69 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v69)
        {
          goto LABEL_125;
        }

        v75 = v53;
        if (v61 < v96)
        {
          v58 = v55 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v55 == 3)
    {
      v59 = *(v28 + 4);
      v60 = *(v28 + 5);
      v69 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      v62 = v69;
LABEL_53:
      v75 = v53;
      if (v62)
      {
        goto LABEL_115;
      }

      v76 = &v28[16 * v55];
      v78 = *v76;
      v77 = *(v76 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_118;
      }

      v82 = &v28[16 * v58 + 32];
      v84 = *v82;
      v83 = *(v82 + 1);
      v69 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v69)
      {
        goto LABEL_121;
      }

      if (__OFADD__(v80, v85))
      {
        goto LABEL_122;
      }

      if (v80 + v85 >= v61)
      {
        if (v61 < v85)
        {
          v58 = v55 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    v86 = &v28[16 * v55];
    v88 = *v86;
    v87 = *(v86 + 1);
    v69 = __OFSUB__(v87, v88);
    v80 = v87 - v88;
    v81 = v69;
    v75 = v53;
LABEL_68:
    if (v81)
    {
      goto LABEL_117;
    }

    v89 = &v28[16 * v58];
    v91 = *(v89 + 4);
    v90 = *(v89 + 5);
    v69 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v69)
    {
      goto LABEL_120;
    }

    if (v92 < v80)
    {
      goto LABEL_3;
    }

LABEL_75:
    v97 = v58 - 1;
    if (v58 - 1 >= v55)
    {
      break;
    }

    v98 = *v151;
    if (!*v151)
    {
      goto LABEL_132;
    }

    v99 = *&v28[16 * v97 + 32];
    v100 = *&v28[16 * v58 + 40];
    v101 = *(v150 + 72);
    v102 = v98 + v101 * v99;
    v103 = v98 + v101 * *&v28[16 * v58 + 32];
    v104 = v98 + v101 * v100;
    v105 = v152;

    sub_2194F2434(v102, v103, v104, v149, v105);
    v6 = v75;
    if (v75)
    {
      goto LABEL_108;
    }

    if (v100 < v99)
    {
      goto LABEL_111;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_218C81048(v28);
    }

    if (v97 >= *(v28 + 2))
    {
      goto LABEL_112;
    }

    v53 = 0;
    v106 = &v28[16 * v97];
    *(v106 + 4) = v99;
    *(v106 + 5) = v100;
    v153 = v28;
    sub_218C80FBC(v58);
    v28 = v153;
    v55 = *(v153 + 2);
    if (v55 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
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
  v28 = sub_218C81048(v28);
LABEL_98:
  v153 = v28;
  v119 = *(v28 + 2);
  if (v119 < 2)
  {
LABEL_106:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v120 = *v151;
      if (!*v151)
      {
        break;
      }

      v121 = *&v28[16 * v119];
      v122 = *&v28[16 * v119 + 24];
      v123 = *(v150 + 72);
      v124 = v120 + v123 * v121;
      v125 = v120 + v123 * *&v28[16 * v119 + 16];
      v126 = v120 + v123 * v122;
      v127 = v152;

      sub_2194F2434(v124, v125, v126, v149, v127);
      if (v6)
      {
        goto LABEL_106;
      }

      if (v122 < v121)
      {
        goto LABEL_123;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_218C81048(v28);
      }

      if (v119 - 2 >= *(v28 + 2))
      {
        goto LABEL_124;
      }

      v128 = &v28[16 * v119];
      *v128 = v121;
      *(v128 + 1) = v122;
      v153 = v28;
      sub_218C80FBC(v119 - 1);
      v28 = v153;
      v119 = *(v153 + 2);
      if (v119 <= 1)
      {
        goto LABEL_106;
      }
    }

LABEL_134:

    __break(1u);
LABEL_135:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_136:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_137:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

void sub_2194F35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v37 = a5;
  v36 = type metadata accessor for SportsHighlights(0);
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *a4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_4:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v19;
    while (1)
    {
      sub_2194F442C(v22, v17, type metadata accessor for SportsHighlights);
      sub_2194F442C(v23, v13, type metadata accessor for SportsHighlights);
      v24 = sub_2194F0D88(v17, v13, v37);
      sub_2194F4494(v13, type metadata accessor for SportsHighlights);
      sub_2194F4494(v17, type metadata accessor for SportsHighlights);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = v35;
        sub_2194F44F4(v22, v35, type metadata accessor for SportsHighlights);
        swift_arrayInitWithTakeFrontToBack();
        sub_2194F44F4(v25, v23, type metadata accessor for SportsHighlights);
        v23 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_2194F384C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_219BF7884();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SportsHighlights(0);
        v8 = sub_219BF5A34();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for SportsHighlights(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_2194F2A78(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_2194F35E0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2194F39D0(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SportsHighlights(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_218C812C4(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_2194F384C(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2194F3AB8(unint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v77 = a4;
  v76 = sub_219BDBD34();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsHighlights(0);
  v85 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v86 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v71 - v11);
  MEMORY[0x28223BE20](v13);
  v72 = &v71 - v14;
  MEMORY[0x28223BE20](v15);
  v78 = (&v71 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v79 = &v71 - v19;
  if (a2 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v84 = v12;
    v73 = a3;
    v12 = MEMORY[0x277D84F98];
    if (i)
    {
      a3 = 0;
      *&v87 = a2 & 0xC000000000000001;
      v82 = a2;
      j = a2 & 0xFFFFFFFFFFFFFF8;
      v80 = a1;
      v81 = v8;
      do
      {
        if (v87)
        {
          v21 = MEMORY[0x21CECE0F0](a3, a2, v18);
          v22 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (a3 >= *(j + 16))
          {
            goto LABEL_66;
          }

          v21 = *(a2 + 8 * a3 + 32);
          swift_unknownObjectRetain();
          v22 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }
        }

        a2 = [v21 identifier];
        v23 = sub_219BF5414();
        v8 = v24;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v88 = v12;
        a1 = sub_21870F700(v23, v8);
        v27 = *(v12 + 2);
        v28 = (v26 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          goto LABEL_67;
        }

        a2 = v26;
        if (*(v12 + 3) >= v29)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v26)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_219495DE8();
            if (a2)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_219486F70(v29, isUniquelyReferenced_nonNull_native);
          v30 = sub_21870F700(v23, v8);
          if ((a2 & 1) != (v31 & 1))
          {
LABEL_71:
            sub_219BF79A4();
            __break(1u);

            __break(1u);
            return result;
          }

          a1 = v30;
          if (a2)
          {
LABEL_5:

            v12 = v88;
            *(*(v88 + 56) + 8 * a1) = v21;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_6;
          }
        }

        v12 = v88;
        *(v88 + 8 * (a1 >> 6) + 64) |= 1 << a1;
        v32 = (*(v12 + 6) + 16 * a1);
        *v32 = v23;
        v32[1] = v8;
        *(*(v12 + 7) + 8 * a1) = v21;
        swift_unknownObjectRelease();
        v33 = *(v12 + 2);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_69;
        }

        *(v12 + 2) = v35;
LABEL_6:
        ++a3;
        a1 = v80;
        v8 = v81;
        a2 = v82;
      }

      while (v22 != i);
    }

    a3 = MEMORY[0x277D84F98];
    v89[0] = MEMORY[0x277D84F98];
    v36 = *(a1 + 16);
    if (v36)
    {
      a2 = 0;
      v37 = (a1 + 32);
      do
      {
        v87 = *v37;
        v88 = v87;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_2194F0138(v89, &v88, v12);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v37;
        --v36;
      }

      while (v36);
      v38 = v8;
      a3 = v89[0];
    }

    else
    {
      v38 = v8;
      a2 = 0;
    }

    v39 = 0;
    a1 = a3 + 64;
    v40 = 1 << *(a3 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(a3 + 64);
    v8 = (v40 + 63) >> 6;
    v82 = (v74 + 8);
    *&v87 = MEMORY[0x277D84F90];
    for (j = a3; v42; a3 = j)
    {
LABEL_38:
      while (1)
      {
        v44 = *(v85 + 72);
        v12 = v78;
        sub_2194F442C(*(a3 + 56) + v44 * (__clz(__rbit64(v42)) | (v39 << 6)), v78, type metadata accessor for SportsHighlights);
        v45 = v79;
        sub_2194F44F4(v12, v79, type metadata accessor for SportsHighlights);
        v46 = *(v45 + *(v38 + 20));
        v47 = v46 >> 62 ? sub_219BF7214() : *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v42 &= v42 - 1;
        if (v47)
        {
          v48 = v75;
          sub_2191B4D54(v75);
          v49 = sub_219BDBC04();
          (*v82)(v48, v76);
          v12 = [v77 containsDate_];

          v45 = v79;
          if (v12)
          {
            break;
          }
        }

        sub_2194F4494(v45, type metadata accessor for SportsHighlights);
        a3 = j;
        if (!v42)
        {
          goto LABEL_34;
        }
      }

      sub_2194F44F4(v79, v72, type metadata accessor for SportsHighlights);
      v12 = v87;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v88 = v12;
      if ((v50 & 1) == 0)
      {
        sub_218C377E0(0, *(v12 + 2) + 1, 1);
        v12 = v88;
      }

      v52 = *(v12 + 2);
      v51 = *(v12 + 3);
      if (v52 >= v51 >> 1)
      {
        sub_218C377E0(v51 > 1, v52 + 1, 1);
        v12 = v88;
      }

      *(v12 + 2) = v52 + 1;
      v53 = *(v85 + 80);
      *&v87 = v12;
      sub_2194F44F4(v72, v12 + ((v53 + 32) & ~v53) + v52 * v44, type metadata accessor for SportsHighlights);
    }

    while (1)
    {
LABEL_34:
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v43 >= v8)
      {
        break;
      }

      v42 = *(a1 + 8 * v43);
      ++v39;
      if (v42)
      {
        v39 = v43;
        goto LABEL_38;
      }
    }

    a1 = v87;
    v54 = *(v87 + 16);
    if (!v54)
    {
      break;
    }

    *&v88 = MEMORY[0x277D84F90];
    v12 = &v88;
    sub_218C377E0(0, v54, 0);
    v55 = 0;
    a3 = v88;
    v82 = ((*(v85 + 80) + 32) & ~*(v85 + 80));
    j = v82 + a1;
    v8 = v38;
    while (v55 < *(a1 + 16))
    {
      v56 = v86;
      v57 = *(v85 + 72);
      sub_2194F442C(j + v57 * v55, v86, type metadata accessor for SportsHighlights);
      v58 = *(v56 + *(v8 + 20));
      if (v58 >> 62)
      {
        v64 = *(v56 + *(v8 + 20));
        v65 = sub_219BF7214();
        if (v65)
        {
          v66 = v65;
          v59 = sub_2194B7E58(v65, 0);

          sub_218A32C24(v59 + 32, v66, v64);
          v68 = v67;

          if (v68 != v66)
          {
            __break(1u);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            __break(1u);

            __break(1u);
            goto LABEL_71;
          }
        }

        else
        {
          v59 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v59 = v58 & 0xFFFFFFFFFFFFFF8;
      }

      v89[0] = v59;
      sub_2194F00BC(v89);
      v12 = v89[0];
      v60 = v86;
      v61 = v84;
      sub_2194F442C(v86, v84, type metadata accessor for SportsHighlights.SubsectionDescriptor);
      sub_2194F4494(v60, type metadata accessor for SportsHighlights);
      *(v61 + *(v8 + 20)) = v12;
      *&v88 = a3;
      v63 = *(a3 + 16);
      v62 = *(a3 + 24);
      if (v63 >= v62 >> 1)
      {
        v12 = &v88;
        sub_218C377E0(v62 > 1, v63 + 1, 1);
        v61 = v84;
        a3 = v88;
      }

      ++v55;
      *(a3 + 16) = v63 + 1;
      sub_2194F44F4(v61, v82 + a3 + v63 * v57, type metadata accessor for SportsHighlights);
      a1 = v87;
      if (v54 == v55)
      {

        goto LABEL_63;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  a3 = MEMORY[0x277D84F90];
LABEL_63:
  *&v88 = a3;
  v69 = v73;

  sub_2194F39D0(&v88, v69);

  return v88;
}

uint64_t sub_2194F442C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2194F4494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2194F44F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2194F455C()
{
  v1 = 0x746E696F50646E65;
  if (*v0 != 1)
  {
    v1 = 0x6F7453726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696F507472617473;
  }
}

uint64_t sub_2194F45BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2194F5B14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2194F45E4(uint64_t a1)
{
  v2 = sub_2194F5228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194F4620(uint64_t a1)
{
  v2 = sub_2194F5228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2194F465C()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_2194F4694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

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

uint64_t sub_2194F476C(uint64_t a1)
{
  v2 = sub_2194F60A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194F47A8(uint64_t a1)
{
  v2 = sub_2194F60A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2194F47E4(void *a1)
{
  sub_2194F60F4(0, &qword_27CC1B3F8, sub_2194F60A0, &_s9ColorStopV10CodingKeysON, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F60A0();
  sub_219BF7B44();
  sub_219BF6D64();
  v9[15] = 0;
  sub_219BF77F4();
  if (v1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v9[14] = 1;
    sub_219BF7814();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2194F49BC(void *a1)
{
  sub_2194F60F4(0, &qword_27CC1B3F0, sub_2194F604C, &_s5PointV10CodingKeysON, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F604C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF7814();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF7814();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2194F4B50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2194F5C3C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_2194F4BA0()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_2194F4BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

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

uint64_t sub_2194F4C80(uint64_t a1)
{
  v2 = sub_2194F604C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194F4CBC(uint64_t a1)
{
  v2 = sub_2194F604C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2194F4CF8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2194F5E6C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t GradientDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_219BE7404();
  v46 = *(v44 - 8);
  v3 = MEMORY[0x28223BE20](v44);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v38 - v6);
  sub_2194F60F4(0, &qword_280E8D000, sub_2194F5228, &_s10CodingKeysON, MEMORY[0x277D844C8]);
  v9 = v8;
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F5228();
  v12 = v47;
  sub_219BF7B34();
  if (v12)
  {
    v23 = a1;
  }

  else
  {
    v13 = v46;
    v42 = v5;
    v47 = a1;
    v49 = 0;
    sub_2194F527C();
    v14 = v11;
    sub_219BF7734();
    v15 = v9;
    v16 = v48;
    v49 = 1;
    sub_219BF7734();
    v17 = v45;
    v18 = v48;
    v19 = v7;
    *v7 = v16;
    v7[1] = v18;
    v20 = v7;
    v21 = v44;
    (*(v13 + 104))(v20, *MEMORY[0x277D6D9D8], v44);
    LOBYTE(v48) = 2;
    sub_2194F52D0();
    v22 = sub_219BF7654();
    v41 = v14;
    v25 = *(v22 + 16);
    if (v25)
    {
      v40 = v15;
      *&v48 = MEMORY[0x277D84F90];
      v26 = v22;
      sub_219BF73F4();
      v27 = 32;
      v28 = v25;
      do
      {
        v29 = *(v26 + v27);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v27 += 16;
        --v28;
      }

      while (v28);
      *&v48 = MEMORY[0x277D84F90];
      sub_218C37830(0, v25, 0);
      v30 = v48;
      v31 = *(v48 + 16);
      v32 = 40;
      v33 = v43;
      do
      {
        v34 = *(v26 + v32);
        *&v48 = v30;
        v35 = *(v30 + 24);
        if (v31 >= v35 >> 1)
        {
          v39 = v26;
          v36 = v33;
          sub_218C37830((v35 > 1), v31 + 1, 1);
          v33 = v36;
          v26 = v39;
          v30 = v48;
        }

        *(v30 + 16) = v31 + 1;
        *(v30 + 8 * v31 + 32) = v34;
        v32 += 16;
        ++v31;
        --v25;
      }

      while (v25);

      v21 = v44;
      v17 = v45;
      v15 = v40;
    }

    else
    {
    }

    v37 = v46;
    (*(v46 + 16))(v42, v19, v21);
    sub_219BE73B4();
    (*(v37 + 8))(v19, v21);
    (*(v17 + 8))(v41, v15);
    v23 = v47;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_2194F5228()
{
  result = qword_280EE51F0;
  if (!qword_280EE51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51F0);
  }

  return result;
}

unint64_t sub_2194F527C()
{
  result = qword_280EE51C0;
  if (!qword_280EE51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51C0);
  }

  return result;
}

unint64_t sub_2194F52D0()
{
  result = qword_280EE51A0;
  if (!qword_280EE51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51A0);
  }

  return result;
}

char *GradientDescriptor.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_219BE7404();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194F60F4(0, &qword_27CC1B3C0, sub_2194F5228, &_s10CodingKeysON, MEMORY[0x277D84538]);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F5228();
  sub_219BF7B44();
  sub_219BE7414();
  sub_219BE73E4();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v46 = v2;
  sub_219BE7414();
  sub_219BE73E4();
  v15 = v14;
  v16 = v44;
  v13(v7, v4);
  v47 = v12;
  v48 = v15;
  v49 = 0;
  sub_2194F586C();
  v17 = v45;
  sub_219BF7834();
  if (v17)
  {
    return (*(v43 + 8))(v10, v16);
  }

  v41 = 0;
  sub_219BE7414();
  sub_219BE73F4();
  v19 = v18;
  v13(v7, v4);
  sub_219BE7414();
  sub_219BE73F4();
  v21 = v20;
  v13(v7, v4);
  v47 = v19;
  v48 = v21;
  v49 = 1;
  v22 = v41;
  sub_219BF7834();
  if (v22)
  {
    return (*(v43 + 8))(v10, v16);
  }

  v41 = 0;
  v24 = sub_219BE73C4();
  v25 = v24 >> 62;
  if (v24 >> 62)
  {
    goto LABEL_27;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
    while (1)
    {
      v27 = v24;
      v47 = MEMORY[0x277D84F90];
      result = sub_218C37850(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        break;
      }

      v28 = v47;
      v29 = v27;
      v40 = v10;
      v42 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v25)
      {
        v24 = sub_219BF7214();
        v29 = v27;
      }

      else
      {
        v24 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v29 & 0xC000000000000001;
      v30 = v24 & ~(v24 >> 63);
      v10 = 4;
      v16 = v29;
      while (v30)
      {
        v25 = v10 - 4;
        if (v45)
        {
          v31 = MEMORY[0x21CECE0F0](v10 - 4);
        }

        else
        {
          if (v25 >= *(v42 + 16))
          {
            goto LABEL_26;
          }

          v31 = *(v29 + 8 * v10);
        }

        v32 = v31;
        v24 = sub_219BE7424();
        if (v24)
        {
          if (v25 >= *(v24 + 16))
          {
            goto LABEL_25;
          }

          v33 = *(v24 + 8 * v10);
        }

        else
        {
          v33 = 0;
        }

        v47 = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        v25 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v24 = sub_218C37850((v34 > 1), v35 + 1, 1);
          v28 = v47;
        }

        *(v28 + 16) = v25;
        v36 = v28 + 16 * v35;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        --v30;
        ++v10;
        --v26;
        v29 = v16;
        if (!v26)
        {

          v37 = v43;
          v16 = v44;
          v10 = v40;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v38 = v24;
      v26 = sub_219BF7214();
      v24 = v38;
      if (!v26)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:

    v28 = MEMORY[0x277D84F90];
    v37 = v43;
LABEL_29:
    v47 = v28;
    v49 = 2;
    sub_2194F58C0();
    sub_2194F5910();
    sub_219BF7834();
    (*(v37 + 8))(v10, v16);
  }

  return result;
}

unint64_t sub_2194F586C()
{
  result = qword_27CC1B3C8;
  if (!qword_27CC1B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B3C8);
  }

  return result;
}

void sub_2194F58C0()
{
  if (!qword_27CC1B3D0)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1B3D0);
    }
  }
}

unint64_t sub_2194F5910()
{
  result = qword_27CC1B3D8;
  if (!qword_27CC1B3D8)
  {
    sub_2194F58C0();
    sub_2194F5988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B3D8);
  }

  return result;
}

unint64_t sub_2194F5988()
{
  result = qword_27CC1B3E0;
  if (!qword_27CC1B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B3E0);
  }

  return result;
}