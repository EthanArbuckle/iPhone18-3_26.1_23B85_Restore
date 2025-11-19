id ArticleViewerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7D3031C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall ArticleViewerViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7D2918C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2C82C();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D7D2C83C();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v10);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v14 = v13;
  v15 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v46 - v18;
  v58.receiver = v0;
  v58.super_class = ObjectType;
  v54 = ObjectType;
  objc_msgSendSuper2(&v58, sel_viewDidLoad, v17);
  v20 = *&v0[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageViewController];
  [v0 addChildViewController_];
  v21 = [v0 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v52 = v4;
  v53 = v3;
  v23 = [v20 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  [v22 addSubview_];

  [v20 didMoveToParentViewController_];
  if (sub_1D7D2DB0C())
  {
    v25 = [v1 view];
    if (!v25)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v26 = v25;
    [v25 addSubview_];
  }

  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  [v27 addSubview_];

  sub_1D7D2A57C();
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7C22EA4();
  sub_1D7D309EC();
  sub_1D7D30A5C();
  (*(v15 + 8))(v19, v14);
  if (v56[0] == v57)
  {
    v29 = sub_1D7D2B7FC();
    v30 = sub_1D7D2B7DC();
    v31 = MEMORY[0x1E69D8270];
    v12[3] = v29;
    v12[4] = v31;
    *v12 = v30;
    v32 = v47;
    v33 = v49;
    (*(v47 + 104))(v12, *MEMORY[0x1E69D8818], v49);
    v35 = v50;
    v34 = v51;
    v36 = v48;
    (*(v50 + 104))(v48, *MEMORY[0x1E69D8850], v51);
    sub_1D7D2A56C();
    (*(v35 + 8))(v36, v34);
    (*(v32 + 8))(v12, v33);
  }

  sub_1D7D2ADEC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v56);
  v37 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm];
  v39 = v52;
  v38 = v53;
  if (v37)
  {

    v37(v40);
    sub_1D79AD740(v37);
  }

  LOBYTE(v57) = 3;
  v56[0] = MEMORY[0x1E69E7CC0];
  sub_1D799C17C(&qword_1EE0C0380, 255, MEMORY[0x1E69D6810]);
  v41 = MEMORY[0x1E69D6810];
  sub_1D7C255A0(0, &unk_1EE0BF2C0, MEMORY[0x1E69D6810], MEMORY[0x1E69E62F8]);
  sub_1D7C22F48(&qword_1EE0BF2B0, &unk_1EE0BF2C0, v41);
  v42 = v55;
  sub_1D7D313AC();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  v45 = v54;
  *(v44 + 16) = v43;
  *(v44 + 24) = v45;

  sub_1D7D28C8C();

  (*(v39 + 8))(v42, v38);
}

void sub_1D7C1268C()
{
  sub_1D7C255A0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
    sub_1D7C22EA4();
    sub_1D7D309EC();
    sub_1D7D30A5C();
    if (v12 == v11[1])
    {
    }

    else
    {
      LOBYTE(v12) = 4;
      sub_1D7D28C6C();
      v6 = sub_1D7D3087C();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      sub_1D7D3084C();
      v7 = v5;
      v8 = sub_1D7D3083C();
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E85E0];
      v9[2] = v8;
      v9[3] = v10;
      v9[4] = v7;
      sub_1D7AF94C0(0, 0, v3, &unk_1D7D58710, v9);
    }
  }
}

uint64_t sub_1D7C128BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = MEMORY[0x1E69E6720];
  sub_1D7C255A0(0, &qword_1EE0BF750, MEMORY[0x1E69B6038], MEMORY[0x1E69E6720]);
  v4[11] = swift_task_alloc();
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, v5);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for ArticleViewerPage(0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_1D7D3084C();
  v4[17] = sub_1D7D3083C();
  v8 = sub_1D7D307DC();
  v4[18] = v8;
  v4[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D7C12A60, v8, v7);
}

uint64_t sub_1D7C12A60()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_sharedItemManager;
  v0[20] = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_sharedItemManager;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1D7C12B24;

  return MEMORY[0x1EEE22440](v3, v4);
}

uint64_t sub_1D7C12B24()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D7C12C58, v3, v2);
}

uint64_t sub_1D7C12C58()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_1D7D2AA2C();
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 96);
  if (v4 == 1)
  {

    v6 = qword_1EE0C98E0;
    v7 = type metadata accessor for ArticleViewerPage;
    v8 = v5;
LABEL_6:
    sub_1D7C22FB4(v8, v6, v7);
LABEL_8:

    v16 = *(v0 + 8);

    return v16();
  }

  sub_1D7C25538(*(v0 + 96), *(v0 + 120), type metadata accessor for ArticleViewerPage);
  ArticleViewerPage.article.getter((v0 + 16));
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  *(v0 + 176) = v10;
  if (!v9)
  {
    sub_1D7C23024(*(v0 + 120), type metadata accessor for ArticleViewerPage);

    goto LABEL_8;
  }

  v11 = *(v0 + 88);
  v12 = (*(v0 + 80) + *(v0 + 160));
  swift_unknownObjectRetain();
  sub_1D7C23094(v0 + 16, &qword_1EE0C0600, &type metadata for Article);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v13 = [v10 identifier];
  sub_1D7D3034C();

  sub_1D7D2F84C();

  v14 = sub_1D7D2EECC();
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
  {
    v15 = *(v0 + 88);
    sub_1D7C23024(*(v0 + 120), type metadata accessor for ArticleViewerPage);

    swift_unknownObjectRelease();
    v6 = &qword_1EE0BF750;
    v7 = MEMORY[0x1E69B6038];
    v8 = v15;
    goto LABEL_6;
  }

  sub_1D7C22FB4(*(v0 + 88), &qword_1EE0BF750, MEMORY[0x1E69B6038]);

  return MEMORY[0x1EEE6DFA0](sub_1D7C12F50, 0, 0);
}

uint64_t sub_1D7C12F50()
{
  *(v0 + 184) = sub_1D7D3083C();
  v2 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C12FDC, v2, v1);
}

uint64_t sub_1D7C12FDC()
{

  *(v0 + 192) = 3;
  sub_1D7D28C6C();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D7C13060, v1, v2);
}

uint64_t sub_1D7C13060()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();
  sub_1D7C23024(v1, type metadata accessor for ArticleViewerPage);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D7C13108()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1D7C255A0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29[-1] - v3;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, v0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29[-1] - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong view];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 window];

      if (v13)
      {

        v14 = type metadata accessor for ArticleViewerPage(0);
        (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
        sub_1D7C134C0(v8);
        sub_1D7C22FB4(v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        v15 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
        swift_beginAccess();
        sub_1D799CC84(v10 + v15, v29);
        v16 = v30;
        v17 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v17 + 80))(v16, v17);
        __swift_destroy_boxed_opaque_existential_1(v29);
        v18 = sub_1D7D3087C();
        (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
        sub_1D7D3084C();
        v19 = v10;
        v20 = sub_1D7D3083C();
        v21 = swift_allocObject();
        v22 = MEMORY[0x1E69E85E0];
        v21[2] = v20;
        v21[3] = v22;
        v21[4] = v19;
        sub_1D7AF94C0(0, 0, v4, &unk_1D7D58700, v21);

        sub_1D7C255A0(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1D7D3B4E0;
        v24 = sub_1D7D2C9FC();
        v25 = MEMORY[0x1E69DC130];
        *(v23 + 32) = v24;
        *(v23 + 40) = v25;
        v26 = sub_1D7D2C9EC();
        v27 = MEMORY[0x1E69DC0F8];
        *(v23 + 48) = v26;
        *(v23 + 56) = v27;
        sub_1D7D30DCC();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D7C134C0(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 navigationController];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v18 = [v4 topViewController];

  if (!v18)
  {
    return;
  }

  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    _s12NewsArticles27ArticleViewerViewControllerC31featureOptionsForFeatureManageryAA0cdj6UpdateH0VAA0cdjK4Type_pF_0(aBlock);
    v6 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_hasPresentedFirstPage;
    v7 = sub_1D7CAA780(a1, v18, aBlock, v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_hasPresentedFirstPage]);
    v9 = v8;
    sub_1D79DA8DC(aBlock);
    [v2 additionalSafeAreaInsets];
    [v2 setAdditionalSafeAreaInsets_];
    if (v2[v6] == 1)
    {
      v10 = [v2 navigationController];
      if (!v10)
      {
LABEL_15:

        return;
      }

      v11 = v10;
      if (v7)
      {
        v12 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
LABEL_14:
        sub_1D7A53D44(v12 & 1);

        goto LABEL_15;
      }
    }

    else
    {
      v11 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 16) = v2;
      *(v13 + 24) = v7 & 1;
      *(v13 + 32) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D7C24FB8;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1D7A66DA0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7C138DC;
      aBlock[3] = &block_descriptor_134;
      v15 = _Block_copy(aBlock);
      v16 = v2;

      [v11 performWithoutAnimation_];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    v12 = 1;
    goto LABEL_14;
  }
}

uint64_t sub_1D7C1378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_1D7D3084C();
  *(v4 + 56) = sub_1D7D3083C();
  v6 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C13824, v6, v5);
}

uint64_t sub_1D7C13824()
{

  swift_beginAccess();

  sub_1D7D28EDC();

  v1 = *(v0 + 40);
  if (v1)
  {
    [*(v0 + 48) nu:*(v0 + 40) adjustInsetsForScrollView:?];
  }

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall ArticleViewerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - v7;
  v35 = type metadata accessor for ArticleViewerPage(0);
  v9 = *(v35 - 8);
  v11 = MEMORY[0x1EEE9AC00](v35, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v2;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_viewWillAppear_, a1, v11);
  swift_getObjectType();
  sub_1D7D2AB3C();
  v14 = [v2 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationBar];

    [v16 setPrefersLargeTitles_];
  }

  v17 = [v2 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 navigationBar];

    [v19 setAccessibilityIgnoresInvertColors_];
  }

  v20 = [v2 view];
  if (v20)
  {
    v21 = v20;
    [v20 setAccessibilityIgnoresInvertColors_];

    LOBYTE(v37[0]) = 0;
    sub_1D7D28C6C();
    v22 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionNavigationItemStash;
    if (*&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionNavigationItemStash])
    {

      v23 = [v2 navigationController];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1D7D30D8C();
        sub_1D7BE9E78(v25);

        *&v2[v22] = 0;

        v26 = [v24 navigationBar];
        [v26 setNeedsLayout];

        v27 = [v24 navigationBar];
        [v27 layoutIfNeeded];
      }

      else
      {
      }
    }

    v28 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureTransitions;
    swift_beginAccess();
    v29 = *&v2[v28];
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v29 + 32;

      do
      {
        sub_1D799CC84(v31, v37);
        v32 = v38;
        v33 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v36 = 0;
        (*(v33 + 16))(&v36, v32, v33);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v31 += 40;
        --v30;
      }

      while (v30);
    }

    sub_1D7D2AA3C();
    if ((*(v9 + 48))(v8, 1, v35) == 1)
    {
      sub_1D7C22FB4(v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C25538(v8, v13, type metadata accessor for ArticleViewerPage);
      sub_1D7C13E20(v13);
      sub_1D7C23024(v13, type metadata accessor for ArticleViewerPage);
    }

    v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state] = 1;
    sub_1D7D28E7C();
    sub_1D799C17C(&qword_1EE0C5370, v34, type metadata accessor for ArticleViewerViewController);
    sub_1D7D2AE8C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7C13E20(uint64_t a1)
{
  sub_1D7C2505C();
  v320 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v318 = &v273 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v314 = &v273 - v7;
  v8 = MEMORY[0x1E69E6720];
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v299 = &v273 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v330 = &v273 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v315 = &v273 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v297 = &v273 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v322 = &v273 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v325 = &v273 - v26;
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v335 = v27;
  v321 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v273 - v29;
  v294 = sub_1D7D2F8FC();
  v292 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294, v31);
  v291 = &v273 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D7D2FBBC();
  v295 = *(v33 - 8);
  v296 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v293 = &v273 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C255A0(0, &unk_1EE0BF5E0, MEMORY[0x1E69B6528], v8);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v331 = &v273 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v313 = &v273 - v41;
  v319 = sub_1D7D2FA4C();
  v317 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319, v42);
  v327 = &v273 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v290 = &v273 - v46;
  sub_1D7C255A0(0, &unk_1EE0CB760, sub_1D7998DF0, v8);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v286 = &v273 - v49;
  sub_1D7998DF0();
  v284 = *(v50 - 8);
  v285 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v273 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v282 = &v273 - v56;
  v57 = sub_1D7D2A9DC();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v59);
  v283 = &v273 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_1D7D2824C();
  v279 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281, v61);
  v278 = &v273 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v280 = &v273 - v65;
  v312 = sub_1D7D2EF2C();
  v309 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312, v66);
  v308 = (&v273 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7C255A0(0, &unk_1EE0BF690, MEMORY[0x1E69B60C0], MEMORY[0x1E69B62D0]);
  v310 = *(v68 - 8);
  v311 = v68;
  MEMORY[0x1EEE9AC00](v68, v69);
  v307 = &v273 - v70;
  v71 = sub_1D7D2F75C();
  v301 = *(v71 - 8);
  v302 = v71;
  MEMORY[0x1EEE9AC00](v71, v72);
  v300 = &v273 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D7D2F4FC();
  v305 = *(v74 - 8);
  v306 = v74;
  MEMORY[0x1EEE9AC00](v74, v75);
  v303 = &v273 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = sub_1D7D2F73C();
  v304 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324, v77);
  v79 = &v273 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ArticleViewerPage(0);
  v328 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v81);
  v298 = &v273 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v273 - v85;
  v316 = type metadata accessor for ArticleViewerArticlePage(0);
  v287 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316, v87);
  v288 = v88;
  v289 = &v273 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89, v90);
  v333 = a1;
  v334 = &v273 - v91;
  sub_1D7C24688(a1, v86, type metadata accessor for ArticleViewerPage);
  v329 = v80;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v332 = v30;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

    v113 = *(v86 + 3);
    v343 = *(v86 + 2);
    v344 = v113;
    v114 = *(v86 + 5);
    v345 = *(v86 + 4);
    v346 = v114;
    v115 = *(v86 + 1);
    v341 = *v86;
    v342 = v115;
    v116 = v336;
    if ((~*(&v114 + 1) & 0xF000000000000007) != 0)
    {
      sub_1D7D2C49C();
      swift_unknownObjectRetain();
      v183 = v300;
      sub_1D7D2F74C();
      v184 = v345;
      *(&v338 + 1) = sub_1D7D28A3C();
      v339 = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
      *&v337 = v184;

      sub_1D7D2A4BC();

      sub_1D7A1EF80(&v341);
      (*(v301 + 8))(v183, v302);
      sub_1D7C23024(&v337, sub_1D7C250F0);
    }

    else
    {
      sub_1D7A1EF80(&v341);
    }

LABEL_37:
    v185 = v330;
    v186 = v325;
    goto LABEL_114;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D7C23024(v86, type metadata accessor for ArticleViewerPage);
    v116 = v336;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v93 = *(v86 + 9);
    v349 = *(v86 + 8);
    v350 = v93;
    v351 = *(v86 + 20);
    v94 = *(v86 + 5);
    v345 = *(v86 + 4);
    v346 = v94;
    v95 = *(v86 + 7);
    v347 = *(v86 + 6);
    v348 = v95;
    v96 = *(v86 + 1);
    v341 = *v86;
    v342 = v96;
    v97 = *(v86 + 3);
    v343 = *(v86 + 2);
    v344 = v97;
    sub_1D7D2C4FC();
    v98 = *(&v347 + 1);
    v99 = v351;
    v340[0] = *(&v347 + 1);
    v100 = sub_1D7D28A3C();
    *(&v338 + 1) = v100;
    v101 = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
    v339 = v101;
    *&v337 = v99;
    swift_unknownObjectRetain();

    sub_1D7D2A4BC();
    swift_unknownObjectRelease();

    sub_1D7C23024(&v337, sub_1D7C250F0);
    sub_1D7D2C43C();
    v340[4] = v101;
    v340[3] = v100;
    v340[0] = v99;
    v102 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v103 = swift_allocObject();
    v104 = v347;
    *(v103 + 136) = v348;
    v105 = v350;
    *(v103 + 152) = v349;
    *(v103 + 168) = v105;
    v106 = v343;
    *(v103 + 72) = v344;
    v107 = v346;
    *(v103 + 88) = v345;
    *(v103 + 104) = v107;
    *(v103 + 120) = v104;
    v108 = v342;
    *(v103 + 24) = v341;
    *(v103 + 40) = v108;
    *(v103 + 16) = v102;
    *(v103 + 184) = v351;
    *(v103 + 56) = v106;

    sub_1D7C25164(&v341, &v337);
    sub_1D7D2A4CC();

    sub_1D7C23024(v340, sub_1D7C250F0);
    v109 = [v98 sourceChannel];
    v110 = v331;
    sub_1D7D2FA1C();
    v111 = v317;
    v112 = v319;
    if ((*(v317 + 48))(v110, 1, v319) == 1)
    {
      sub_1D79F949C(&v341);
      sub_1D7C22FB4(v110, &unk_1EE0BF5E0, MEMORY[0x1E69B6528]);
    }

    else
    {
      v179 = *(v111 + 32);
      v180 = v100;
      v334 = v100;
      v181 = v101;
      v182 = v327;
      v179(v327, v110, v112);
      sub_1D7D2C59C();
      v339 = v181;
      *(&v338 + 1) = v180;
      *&v337 = v99;

      sub_1D7D2A4BC();

      sub_1D7C23024(&v337, sub_1D7C250F0);
      sub_1D7D2C58C();
      v340[0] = sub_1D7D2FA3C();
      v339 = v181;
      *(&v338 + 1) = v334;
      *&v337 = v99;

      sub_1D7D2A4BC();

      sub_1D79F949C(&v341);
      swift_unknownObjectRelease();
      (*(v111 + 8))(v182, v319);
      sub_1D7C23024(&v337, sub_1D7C250F0);
    }

    v116 = v336;
    v30 = v332;
    goto LABEL_37;
  }

  sub_1D799A6BC();
  sub_1D79DA510(*&v86[*(v117 + 48)], *&v86[*(v117 + 48) + 8], *&v86[*(v117 + 48) + 16]);
LABEL_11:
  v274 = v58;
  v275 = v57;
  v273 = v53;
  v118 = v334;
  sub_1D7C25538(v86, v334, type metadata accessor for ArticleViewerArticlePage);
  v119 = *(v336 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_commands);
  sub_1D7D2C4FC();
  *&v337 = *(v118 + 16);
  v120 = v337;
  v121 = *(v118 + 64);
  v122 = sub_1D7D28A3C();
  *(&v342 + 1) = v122;
  *&v343 = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
  v123 = v343;
  *&v341 = v121;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  sub_1D7D2A4BC();
  swift_unknownObjectRelease();

  v277 = sub_1D7C250F0;
  sub_1D7C23024(&v341, sub_1D7C250F0);
  v276 = sub_1D7D2C5BC();
  sub_1D7D2C34C();
  *&v337 = v120;
  v331 = v123;
  *(&v342 + 1) = v122;
  *&v343 = v123;
  v327 = v122;
  *&v341 = v121;

  swift_unknownObjectRetain();
  v326 = v119;
  sub_1D7D2A4BC();
  swift_unknownObjectRelease();

  sub_1D7C23024(&v341, sub_1D7C250F0);
  sub_1D7D2C45C();
  swift_unknownObjectRetain();
  sub_1D7D2F72C();
  *(&v342 + 1) = v122;
  *&v343 = v123;
  v323 = v121;
  *&v341 = v121;

  sub_1D7D2A4BC();

  v124 = v303;
  v304 = *(v304 + 8);
  v125 = v324;
  (v304)(v79, v324);
  v126 = v277;
  sub_1D7C23024(&v341, v277);
  sub_1D7D2C46C();
  swift_unknownObjectRetain();
  sub_1D7D2F72C();
  v127 = v327;
  *(&v342 + 1) = v327;
  *&v343 = v331;
  *&v341 = v323;
  sub_1D7D2A4BC();

  (v304)(v79, v125);
  v128 = v126;
  sub_1D7C23024(&v341, v126);
  sub_1D7D2C4BC();
  sub_1D7B28B9C(0, v129);
  v131 = *(v130 + 64);
  v132 = &v124[*(v130 + 80)];
  v324 = v120;
  *v124 = v120;
  v133 = *MEMORY[0x1E69B6368];
  v134 = sub_1D7D2F51C();
  (*(*(v134 - 8) + 104))(&v124[v131], v133, v134);
  *v132 = 0;
  *(v132 + 1) = 0;
  *(v124 + 1) = sub_1D79E7BEC;
  *(v124 + 2) = 0;
  v135 = v305;
  v136 = v306;
  (*(v305 + 104))(v124, *MEMORY[0x1E69B6328], v306);
  *(&v342 + 1) = v127;
  *&v343 = v331;
  v137 = v323;
  *&v341 = v323;
  sub_1D7D2A4BC();

  (*(v135 + 8))(v124, v136);
  sub_1D7C23024(&v341, v128);
  v138 = &v334[*(v316 + 40)];
  v139 = v138[2];
  if ((~v139 & 0xF000000000000007) != 0)
  {
    v141 = *v138;
    v140 = v138[1];
    sub_1D7A1EF40(*v138, v140, v138[2]);
    sub_1D7D2C49C();
    swift_unknownObjectRetain();
    v142 = v300;
    sub_1D7D2F74C();
    *(&v342 + 1) = v327;
    *&v343 = v331;
    *&v341 = v137;

    sub_1D7D2A4BC();

    sub_1D7A1ECE4(v141, v140, v139);
    (*(v301 + 8))(v142, v302);
    sub_1D7C23024(&v341, sub_1D7C250F0);
  }

  sub_1D7D2C48C();
  v144 = v308;
  v143 = v309;
  v145 = v324;
  *v308 = v324;
  (*(v143 + 104))(v144, *MEMORY[0x1E69B60B8], v312);
  swift_unknownObjectRetain();
  v146 = v307;
  sub_1D7D2F48C();
  v147 = v331;
  *(&v342 + 1) = v327;
  *&v343 = v331;
  *&v341 = v137;

  sub_1D7D2A4BC();

  (*(v310 + 8))(v146, v311);
  sub_1D7C23024(&v341, sub_1D7C250F0);
  v148 = v336;
  __swift_project_boxed_opaque_existential_1((v336 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability), *(v336 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability + 24));
  v149 = v145;
  if (sub_1D7D2F9AC())
  {
    sub_1D7D2C51C();
    v150 = v327;
    *(&v342 + 1) = v327;
    *&v343 = v147;
    *&v341 = v137;
    swift_retain_n();
    sub_1D7D2A4BC();

    sub_1D7C23024(&v341, sub_1D7C250F0);
    sub_1D7D2C52C();
    *(&v342 + 1) = v150;
    *&v343 = v147;
    *&v341 = v137;
    sub_1D7D2A4BC();

    sub_1D7C23024(&v341, sub_1D7C250F0);
  }

  v151 = *&v334[*(v316 + 32)];
  v152 = &selRef_addTarget_action_;
  v153 = &off_1E84EC000;
  if (v151 >= 2)
  {
    v154 = v151;
  }

  else
  {
    if (([v149 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_64;
    }

    v154 = [v149 parentIssue];
    if (!v154)
    {
      goto LABEL_64;
    }
  }

  v155 = *(v148 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_paidAccessChecker);
  v156 = [v154 isPaid];
  v157 = [v154 isBundlePaid];
  v158 = [objc_msgSend(v154 sourceChannel)];
  swift_unknownObjectRelease();
  v159 = sub_1D7D3034C();
  v161 = v160;

  v316 = v159;
  if ((v156 & 1) == 0)
  {
    if (v157)
    {
      goto LABEL_25;
    }

LABEL_27:

    v149 = v324;
    v148 = v336;
    goto LABEL_28;
  }

  v162 = [objc_msgSend(v155 purchaseProvider)];
  v163 = sub_1D7D309AC();

  LOBYTE(v162) = sub_1D7D053C8(v159, v161, v163);

  swift_unknownObjectRelease();
  if (v162)
  {
    goto LABEL_27;
  }

  if ((v157 & 1) == 0)
  {

    v149 = v324;
    v148 = v336;
LABEL_62:
    v152 = &selRef_addTarget_action_;
    goto LABEL_63;
  }

LABEL_25:
  v164 = [objc_msgSend(v155 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v164, v164 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v337 = 0u;
    v338 = 0u;
  }

  v341 = v337;
  v342 = v338;
  v187 = MEMORY[0x1E69E7CA0];
  if (!*(&v338 + 1))
  {
    sub_1D7C23094(&v341, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_46;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    v188 = 0;
    v190 = 0;
    goto LABEL_47;
  }

  v188 = v340[0];
  v189 = [v340[0] integerValue];
  if (v189 == -1)
  {

    v148 = v336;
    v149 = v324;
    goto LABEL_60;
  }

  v190 = v189;
LABEL_47:
  if (objc_getAssociatedObject(v164, ~v190))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v337 = 0u;
    v338 = 0u;
  }

  v341 = v337;
  v342 = v338;
  if (!*(&v338 + 1))
  {
    sub_1D7C23094(&v341, &qword_1EE0BE7A0, v187 + 8);
LABEL_55:

    v148 = v336;
    v149 = v324;
    if (v190)
    {
      goto LABEL_60;
    }

LABEL_56:

LABEL_61:

    goto LABEL_62;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v191 = v340[0];
  v192 = [v191 integerValue];

  v148 = v336;
  v149 = v324;
  if (((v192 ^ v190) & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_60:
  v193 = [objc_msgSend(v155 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v194 = [v193 bundleChannelIDs];

  v195 = sub_1D7D3031C();
  LOBYTE(v193) = [v194 containsObject_];

  if ((v193 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_28:
  sub_1D7D2C43C();
  *(&v342 + 1) = v327;
  *&v343 = v331;
  *&v341 = v323;
  v165 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v166 = swift_allocObject();
  *(v166 + 16) = v165;
  *(v166 + 24) = v154;

  v167 = v154;
  sub_1D7D2A4CC();

  sub_1D7C23024(&v341, sub_1D7C250F0);
  v152 = &selRef_addTarget_action_;
  if (([v149 respondsToSelector_] & 1) == 0)
  {

LABEL_63:
    v153 = &off_1E84EC000;
    goto LABEL_64;
  }

  v153 = &off_1E84EC000;
  if ([v149 role] == 2)
  {
    v168 = [v167 identifier];
    if (!v168)
    {
      sub_1D7D3034C();
      v168 = sub_1D7D3031C();
    }

    v169 = [objc_opt_self() nss:v168 NewsURLForIssueID:?];

    if (v169)
    {
      v170 = v278;
      sub_1D7D281EC();

      v171 = v279;
      v172 = v280;
      v173 = v170;
      v174 = v281;
      (*(v279 + 32))(v280, v173, v281);
      v175 = v282;
      (*(v171 + 16))(v282, v172, v174);
      (*(v171 + 56))(v175, 0, 1, v174);
      *&v341 = v167;
      sub_1D7992EFC(0, &qword_1EE0BED00);
      v176 = v167;
      v177 = v283;
      sub_1D7D2A9CC();
      sub_1D7D2C5AC();
      *(&v342 + 1) = v327;
      *&v343 = v331;
      *&v341 = v323;

      sub_1D7D2A4BC();

      v178 = v177;
      v153 = &off_1E84EC000;
      (*(v274 + 8))(v178, v275);
      (*(v171 + 8))(v280, v281);
      sub_1D7C23024(&v341, sub_1D7C250F0);
    }

    else
    {
    }

    v152 = &selRef_addTarget_action_;
  }

  else
  {
  }

LABEL_64:
  if (([v149 respondsToSelector_] & 1) != 0 && objc_msgSend(v149, sel_role) == 2)
  {
    goto LABEL_104;
  }

  v196 = *(v148 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_paidAccessChecker);
  v197 = [v149 v153[342]];
  if ([v149 respondsToSelector_])
  {
    v198 = [v149 isBundlePaid];
  }

  else
  {
    v198 = 0;
  }

  v199 = [v149 sourceChannel];
  if (v199)
  {
    v200 = [v199 identifier];
    swift_unknownObjectRelease();
    v316 = sub_1D7D3034C();
    v202 = v201;

    if (v197)
    {
      goto LABEL_71;
    }

LABEL_76:
    if (v198)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

  v316 = 0;
  v202 = 0;
  if (!v197)
  {
    goto LABEL_76;
  }

LABEL_71:
  v203 = [v196 purchaseProvider];
  if (v202)
  {
    v204 = [v203 purchasedTagIDs];
    v205 = sub_1D7D309AC();

    LOBYTE(v204) = sub_1D7D053C8(v316, v202, v205);

    swift_unknownObjectRelease();
    if ((v204 & 1) == 0)
    {
      if (!v198)
      {
        goto LABEL_101;
      }

      goto LABEL_82;
    }

LABEL_77:

    v149 = v324;
    goto LABEL_78;
  }

  swift_unknownObjectRelease();
  if (!v198)
  {
    goto LABEL_101;
  }

LABEL_82:
  v149 = v324;
  if (!v202)
  {
    goto LABEL_104;
  }

  v209 = [objc_msgSend(v196 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v209, v209 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v337 = 0u;
    v338 = 0u;
  }

  v341 = v337;
  v342 = v338;
  if (!*(&v338 + 1))
  {
    sub_1D7C23094(&v341, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_91;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_91:
    v210 = 0;
    v212 = 0;
    goto LABEL_92;
  }

  v210 = v340[0];
  v211 = [v340[0] integerValue];
  if (v211 == -1)
  {

    goto LABEL_103;
  }

  v212 = v211;
LABEL_92:
  if (objc_getAssociatedObject(v209, ~v212))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v337 = 0u;
    v338 = 0u;
  }

  v341 = v337;
  v342 = v338;
  if (!*(&v338 + 1))
  {
    sub_1D7C23094(&v341, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
LABEL_100:

    if (v212)
    {
      goto LABEL_103;
    }

LABEL_101:

    v149 = v324;
    goto LABEL_104;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_100;
  }

  v213 = v340[0];
  v214 = [v213 integerValue];

  if (((v214 ^ v212) & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_103:
  v215 = [objc_msgSend(v196 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v216 = [v215 bundleChannelIDs];

  v217 = sub_1D7D3031C();
  LOBYTE(v215) = [v216 containsObject_];

  v149 = v324;
  if (v215)
  {
LABEL_78:
    v206 = v286;
    sub_1D7C217D4(v334, v286);
    if ((*(v284 + 48))(v206, 1, v285) == 1)
    {
      sub_1D7C22FB4(v206, &unk_1EE0CB760, sub_1D7998DF0);
    }

    else
    {
      v207 = v273;
      sub_1D7C25538(v206, v273, sub_1D7998DF0);
      sub_1D7C24688(v207, v282, sub_1D7998DF0);
      *&v341 = v149;
      sub_1D798C3BC(0, &qword_1EE0CBA60);
      swift_unknownObjectRetain();
      v208 = v283;
      sub_1D7D2A9CC();
      sub_1D7D2C5AC();
      *(&v342 + 1) = v327;
      *&v343 = v331;
      *&v341 = v323;

      sub_1D7D2A4BC();

      (*(v274 + 8))(v208, v275);
      sub_1D7C23024(v207, sub_1D7998DF0);
      sub_1D7C23024(&v341, sub_1D7C250F0);
    }
  }

LABEL_104:
  v218 = [v149 sourceChannel];
  v219 = v313;
  sub_1D7D2FA1C();
  v220 = v317;
  v221 = v319;
  if ((*(v317 + 48))(v219, 1, v319) == 1)
  {
    sub_1D7C22FB4(v219, &unk_1EE0BF5E0, MEMORY[0x1E69B6528]);
    v222 = v331;
  }

  else
  {
    v223 = v290;
    (*(v220 + 32))(v290, v219, v221);
    sub_1D7D2C59C();
    v224 = v331;
    v225 = v327;
    *(&v342 + 1) = v327;
    *&v343 = v331;
    v226 = v323;
    *&v341 = v323;
    swift_retain_n();
    sub_1D7D2A4BC();

    sub_1D7C23024(&v341, sub_1D7C250F0);
    sub_1D7D2C58C();
    v227 = v223;
    *&v337 = sub_1D7D2FA3C();
    *(&v342 + 1) = v225;
    *&v343 = v224;
    v228 = v225;
    *&v341 = v226;
    sub_1D7D2A4BC();
    swift_unknownObjectRelease();

    sub_1D7C23024(&v341, sub_1D7C250F0);
    sub_1D7D2C32C();
    sub_1D7D2FA3C();
    (*(v292 + 104))(v291, *MEMORY[0x1E69B64C8], v294);
    swift_unknownObjectRetain();
    v229 = v293;
    sub_1D7D2FBAC();
    v222 = v331;
    *(&v342 + 1) = v228;
    *&v343 = v331;
    v149 = v324;
    *&v341 = v226;
    sub_1D7D2A4BC();

    (*(v295 + 8))(v229, v296);
    (*(v317 + 8))(v227, v319);
    sub_1D7C23024(&v341, sub_1D7C250F0);
  }

  v230 = [v149 isDraft];
  v231 = v327;
  if (v230)
  {
    sub_1D7D2C47C();
    *&v337 = v149;
    *(&v342 + 1) = v231;
    *&v343 = v222;
    *&v341 = v323;

    swift_unknownObjectRetain();
    sub_1D7D2A4BC();
    swift_unknownObjectRelease();

    sub_1D7C23024(&v341, sub_1D7C250F0);
  }

  v232 = sub_1D7C21A90(v334, v336);
  if ([v149 respondsToSelector_])
  {
    [v149 role];
    if ((v232 & sub_1D7D30BCC() & 1) == 0)
    {
LABEL_111:
      sub_1D7C23024(v334, type metadata accessor for ArticleViewerArticlePage);
      v30 = v332;
      v186 = v325;
      v185 = v330;
      v116 = v336;
      goto LABEL_114;
    }
  }

  else if ((v232 & 1) == 0)
  {
    goto LABEL_111;
  }

  sub_1D7D2C35C();
  *(&v342 + 1) = v231;
  *&v343 = v222;
  *&v341 = v323;
  v233 = swift_allocObject();
  v234 = v336;
  swift_unknownObjectWeakInit();
  v235 = v289;
  sub_1D7C25538(v334, v289, type metadata accessor for ArticleViewerArticlePage);
  v236 = (*(v287 + 80) + 24) & ~*(v287 + 80);
  v237 = swift_allocObject();
  *(v237 + 16) = v233;
  v238 = v237 + v236;
  v239 = v235;
  v116 = v234;
  sub_1D7C25538(v239, v238, type metadata accessor for ArticleViewerArticlePage);

  sub_1D7D2A4CC();

  sub_1D7C23024(&v341, sub_1D7C250F0);
  v30 = v332;
  v186 = v325;
  v185 = v330;
LABEL_114:
  v240 = v322;
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7C22EA4();
  sub_1D7D309EC();
  sub_1D7D30A5C();
  if (v337 == v340[0])
  {
LABEL_115:
    v241 = *(v116 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_commands);
    sub_1D7D2C55C();
    LOBYTE(v340[0]) = *(v116 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageKind);
    v242 = ArticleViewerPage.tracker.getter();
    *(&v338 + 1) = sub_1D7D28A3C();
    v339 = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
    *&v337 = v242;
    sub_1D7D2A4BC();
    goto LABEL_124;
  }

  sub_1D7D2AA3C();
  v243 = sub_1D7D29FCC();
  v244 = __OFSUB__(v243, 1);
  result = v243 - 1;
  if (!v244)
  {
    sub_1D7D29FEC();
    v246 = v328;
    v247 = v329;
    (*(v328 + 56))(v240, 0, 1, v329);
    v248 = v240;
    v249 = *(v320 + 48);
    v250 = v314;
    sub_1D7C251C0(v186, v314);
    sub_1D7C251C0(v248, v250 + v249);
    v251 = *(v246 + 48);
    if (v251(v250, 1, v247) == 1)
    {
      sub_1D7C22FB4(v248, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
      v250 = v314;
      sub_1D7C22FB4(v186, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
      v252 = v251(v250 + v249, 1, v247);
      v30 = v332;
      if (v252 == 1)
      {
        sub_1D7C22FB4(v250, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        v116 = v336;
        v185 = v330;
        goto LABEL_115;
      }
    }

    else
    {
      v253 = v297;
      sub_1D7C251C0(v250, v297);
      if (v251(v250 + v249, 1, v247) != 1)
      {
        v269 = v250 + v249;
        v270 = v298;
        sub_1D7C25538(v269, v298, type metadata accessor for ArticleViewerPage);
        v271 = v253;
        v272 = _s12NewsArticles17ArticleViewerPageO2eeoiySbAC_ACtFZ_0(v253, v270);
        sub_1D7C23024(v270, type metadata accessor for ArticleViewerPage);
        sub_1D7C22FB4(v248, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        sub_1D7C22FB4(v325, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        sub_1D7C23024(v271, type metadata accessor for ArticleViewerPage);
        sub_1D7C22FB4(v250, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        v30 = v332;
        v116 = v336;
        v185 = v330;
        if (v272)
        {
          goto LABEL_115;
        }

LABEL_123:
        v241 = *(v116 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_commands);
        sub_1D7D2C55C();
        LOBYTE(v340[0]) = *(v116 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageKind);
        v254 = ArticleViewerPage.tracker.getter();
        *(&v338 + 1) = sub_1D7D28A3C();
        v339 = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
        *&v337 = v254;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D7D2A4BC();
        v30 = v332;

LABEL_124:

        sub_1D7C23024(&v337, sub_1D7C250F0);
        sub_1D7D309EC();
        sub_1D7D30A5C();
        v256 = v328;
        v255 = v329;
        if (v337 == v340[0])
        {
LABEL_125:
          sub_1D7D2C56C();
          LOBYTE(v340[0]) = *(v336 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageKind);
          v257 = ArticleViewerPage.tracker.getter();
          *(&v338 + 1) = sub_1D7D28A3C();
          v339 = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
          *&v337 = v257;
          sub_1D7D2A4BC();
LABEL_133:

          (*(v321 + 8))(v30, v335);
          return sub_1D7C23024(&v337, sub_1D7C250F0);
        }

        v334 = v241;
        v258 = v315;
        sub_1D7D2AA3C();
        sub_1D7D29F7C();
        sub_1D7D29FEC();
        (*(v256 + 56))(v185, 0, 1, v255);
        v259 = *(v320 + 48);
        v260 = v318;
        sub_1D7C251C0(v258, v318);
        sub_1D7C251C0(v185, v260 + v259);
        v261 = *(v256 + 48);
        if (v261(v260, 1, v255) == 1)
        {
          sub_1D7C22FB4(v185, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
          v262 = v318;
          sub_1D7C22FB4(v258, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
          v263 = v261(v262 + v259, 1, v255);
          v30 = v332;
          if (v263 == 1)
          {
            sub_1D7C22FB4(v262, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
            goto LABEL_125;
          }
        }

        else
        {
          v264 = v299;
          sub_1D7C251C0(v260, v299);
          if (v261(v260 + v259, 1, v255) != 1)
          {
            v266 = v260 + v259;
            v267 = v298;
            sub_1D7C25538(v266, v298, type metadata accessor for ArticleViewerPage);
            v268 = _s12NewsArticles17ArticleViewerPageO2eeoiySbAC_ACtFZ_0(v264, v267);
            sub_1D7C23024(v267, type metadata accessor for ArticleViewerPage);
            sub_1D7C22FB4(v185, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
            sub_1D7C22FB4(v315, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
            sub_1D7C23024(v264, type metadata accessor for ArticleViewerPage);
            sub_1D7C22FB4(v260, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
            v30 = v332;
            if (v268)
            {
              goto LABEL_125;
            }

LABEL_132:
            sub_1D7D2C56C();
            LOBYTE(v340[0]) = *(v336 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageKind);
            v265 = ArticleViewerPage.tracker.getter();
            *(&v338 + 1) = sub_1D7D28A3C();
            v339 = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
            *&v337 = v265;
            swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1D7D2A4BC();

            goto LABEL_133;
          }

          sub_1D7C22FB4(v185, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
          v262 = v318;
          sub_1D7C22FB4(v315, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
          sub_1D7C23024(v264, type metadata accessor for ArticleViewerPage);
          v30 = v332;
        }

        sub_1D7C23024(v262, sub_1D7C2505C);
        goto LABEL_132;
      }

      sub_1D7C22FB4(v248, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
      sub_1D7C22FB4(v325, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
      sub_1D7C23024(v253, type metadata accessor for ArticleViewerPage);
    }

    sub_1D7C23024(v250, sub_1D7C2505C);
    v116 = v336;
    v185 = v330;
    goto LABEL_123;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ArticleViewerViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ArticleViewerPage(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v49 = &v44 - v12;
  v48 = sub_1D7D2C63C();
  v47 = *(v48 - 8);
  v14 = MEMORY[0x1EEE9AC00](v48, v13);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v2;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_viewDidAppear_, a1, v14);
  if (*&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageSheetPresentationObserver])
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D7D2B9BC();
  }

  if ((_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0() & 1) == 0)
  {
    LOBYTE(v51) = 1;
    sub_1D7D28C6C();
  }

  LOBYTE(v51) = 2;
  sub_1D7D28C6C();
  v16 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureTransitions;
  swift_beginAccess();
  v17 = *&v2[v16];
  v18 = *(v17 + 16);
  if (v18)
  {
    v44 = v6;
    v45 = v5;
    v19 = v17 + 32;

    do
    {
      sub_1D799CC84(v19, &v51);
      v20 = *(&v52 + 1);
      v21 = v53;
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      LOBYTE(v50[0]) = 1;
      (*(v21 + 16))(v50, v20, v21);
      __swift_destroy_boxed_opaque_existential_1(&v51);
      v19 += 40;
      --v18;
    }

    while (v18);

    v5 = v45;
    v6 = v44;
  }

  if (_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0())
  {
LABEL_17:
    v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state] = 2;
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_shareMenuItemManager], *&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_shareMenuItemManager + 24]);
    v27 = v46;
    sub_1D7D2C62C();
    sub_1D7D2B50C();
    (*(v47 + 8))(v27, v48);
    v28 = v49;
    sub_1D7D2AA3C();
    if ((*(v6 + 48))(v28, 1, v5))
    {
      sub_1D7C22FB4(v28, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C24688(v28, v9, type metadata accessor for ArticleViewerPage);
      sub_1D7C22FB4(v28, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
      ArticleViewerPage.article.getter(v50);
      sub_1D7C23024(v9, type metadata accessor for ArticleViewerPage);
      v51 = v50[0];
      v52 = v50[1];
      v53 = v50[2];
      v54 = v50[3];
      if (!*(&v50[0] + 1))
      {
        goto LABEL_19;
      }

      v34 = v52;
      swift_unknownObjectRetain();
      sub_1D7C23094(&v51, &qword_1EE0C0600, &type metadata for Article);
      v35 = [v34 sourceName];
      swift_unknownObjectRelease();
      if (!v35)
      {
        goto LABEL_19;
      }

      v36 = [v2 navigationController];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 navigationBar];

        v39 = [v38 topItem];
        if (v39)
        {
          v40 = [v39 titleView];

          if (v40)
          {
            type metadata accessor for TitleView();
            v41 = swift_dynamicCastClass();
            if (!v41)
            {

              goto LABEL_19;
            }

            v42 = v41;
            v43 = v40;
            [v42 setShowsLargeContentViewer_];
            [v42 setLargeContentTitle_];

            v35 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
            [v42 addInteraction_];
          }
        }
      }
    }

LABEL_19:

    sub_1D7D29BFC();

    sub_1D799C17C(&qword_1EE0C5378, v29, type metadata accessor for ArticleViewerViewController);
    sub_1D7D2AE5C();
    v30 = [v2 traitCollection];
    sub_1D7D2AE6C();

    sub_1D7C255A0(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7D3B4D0;
    v32 = sub_1D7D2C9FC();
    v33 = MEMORY[0x1E69DC130];
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    *(swift_allocObject() + 16) = ObjectType;
    sub_1D7D30DCC();
    swift_unknownObjectRelease();

    return;
  }

  v22 = [v2 view];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 window];

    if (v24)
    {
      v25 = [v24 windowScene];

      if (v25)
      {
        if (*&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_windowTitle + 8])
        {

          v26 = sub_1D7D3031C();
        }

        else
        {
          v26 = 0;
        }

        [v25 setTitle_];
      }
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_1D7C177A0(uint64_t a1)
{
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2B79C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*(v12 + 16))(v15, a1, v11);
    v18 = (*(v12 + 88))(v15, v11);
    if (v18 == *MEMORY[0x1E69D8248])
    {

      sub_1D7D2A4EC();
    }

    else if (v18 == *MEMORY[0x1E69D8240])
    {
      sub_1D7D2AA3C();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_1D7C22FB4(v5, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
      }

      else
      {
        sub_1D7C25538(v5, v10, type metadata accessor for ArticleViewerPage);
        sub_1D7C13E20(v10);

        sub_1D7C23024(v10, type metadata accessor for ArticleViewerPage);
      }
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }
  }
}

void sub_1D7C17ACC(void *a1, uint64_t a2)
{
  sub_1D799C17C(&qword_1EE0C5378, a2, type metadata accessor for ArticleViewerViewController);
  sub_1D7D2AE5C();
  v3 = [a1 traitCollection];
  sub_1D7D2AE6C();
}

Swift::Void __swiftcall ArticleViewerViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D7D2AB5C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2AB8C();
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2B89C();
  v48 = *(v13 - 8);
  v49 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56.receiver = v2;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, sel_viewWillDisappear_, a1, v15);
  v17 = [v2 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 presentedViewController];

    if (v19)
    {
      type metadata accessor for TextSizeControlViewController();
      v20 = swift_dynamicCastClass();

      if (v20)
      {
        v21 = [v2 navigationController];
        if (v21)
        {
          v22 = a1;
          v23 = v21;
          [v21 dismissViewControllerAnimated:v22 completion:0];
        }
      }
    }
  }

  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    if ([v2 isMovingFromParentViewController])
    {
      v24 = [v2 navigationController];
      if (v24)
      {
        v25 = v24;
        sub_1D7A53D44(1);
      }
    }
  }

  sub_1D7D2A4EC();
  v26 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureTransitions;
  swift_beginAccess();
  v27 = *&v2[v26];
  v28 = *(v27 + 16);
  if (v28)
  {
    v45 = v10;
    v46 = v9;
    v29 = v27 + 32;

    do
    {
      sub_1D799CC84(v29, v53);
      v31 = v54;
      v30 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v52 = 2;
      (*(v30 + 16))(&v52, v31, v30);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v29 += 40;
      --v28;
    }

    while (v28);

    v10 = v45;
    v9 = v46;
  }

  swift_getObjectType();
  sub_1D7D2AB2C();
  v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state] = 3;
  if (qword_1EE0CB680 != -1)
  {
    swift_once();
  }

  if (sub_1D7D2860C())
  {
    sub_1D7D2864C();
    sub_1D7D2863C();
    if (qword_1EE0CB6E0 != -1)
    {
      swift_once();
    }

    v32 = v47;
    sub_1D7D2862C();

    v33 = sub_1D7D2B87C();
    (*(v48 + 8))(v32, v49);
    v34 = v50;
    sub_1D7D2AE7C();
    sub_1D7D2AB4C();
    (*(v51 + 8))(v34, v10);
    v35 = (*(v6 + 88))(v9, v5);
    v36 = *MEMORY[0x1E69D7BB8];
    (*(v6 + 8))(v9, v5);
    if (v35 == v36)
    {
      v37 = [v2 navigationController];
      if (v37)
      {
        if (v33)
        {
          v38 = v37;
          v39 = sub_1D7D30D8C();
          type metadata accessor for ArticleViewerViewNavigationItemStash();
          swift_allocObject();
          v40 = sub_1D7BE9FB0(v39);

          *&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionNavigationItemStash] = v40;

          v41 = [v38 navigationBar];
          [v41 setNeedsLayout];

          v42 = [v38 navigationBar];
          [v42 layoutIfNeeded];

          v37 = v42;
        }
      }
    }
  }

  v43 = [v2 traitCollection];
  sub_1D7D2AEAC();

  sub_1D799C17C(&qword_1EE0C5370, v44, type metadata accessor for ArticleViewerViewController);
  sub_1D7D2AE9C();

  sub_1D7D29BDC();
}

Swift::Void __swiftcall ArticleViewerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidDisappear_, a1);
  LOBYTE(v12[0]) = 8;
  sub_1D7D28C6C();
  if (*&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageSheetPresentationObserver])
  {

    sub_1D7D2B9BC();
  }

  v4 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureTransitions;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_1D799CC84(v7, v12);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v11 = 3;
      (*(v9 + 16))(&v11, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state] = 0;
  v10 = *&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleViewController];
  if (v10)
  {
    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall ArticleViewerViewController.viewWillLayoutSubviews()()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_viewWillLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = [v0 navigationController];
  if (!v13)
  {
    v17 = 0.0;
LABEL_7:
    v18 = *&v0[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pocketStatusBarView];
    v19 = [v0 view];
    if (v19)
    {
      v20 = v19;
      [v19 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v31.origin.x = v22;
      v31.origin.y = v24;
      v31.size.width = v26;
      v31.size.height = v28;
      [v18 setFrame_];
      v29 = [objc_opt_self() currentTraitCollection];
      sub_1D7C23104();

      return;
    }

    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 view];

  if (v15)
  {
    [v15 safeAreaInsets];
    v17 = v16;

    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
}

Swift::Void __swiftcall ArticleViewerViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_1D7D28C6C();
  sub_1D7D2A55C();
}

Swift::Void __swiftcall ArticleViewerViewController.viewSafeAreaInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewSafeAreaInsetsDidChange);
  sub_1D7D2AEAC();
}

void ArticleViewerViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  sub_1D7D2AEAC();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1D7C233DC;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7A2D6E0;
  v9[3] = &block_descriptor_32;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1D7C18974()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
    v2 = result;
    swift_beginAccess();
    sub_1D799CC84(v2 + v1, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 80))(v3, v4);

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

void _s12NewsArticles27ArticleViewerViewControllerC31featureOptionsForFeatureManageryAA0cdj6UpdateH0VAA0cdjK4Type_pF_0(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();

  sub_1D7D28EDC();

  if (v42)
  {
    [v42 contentOffset];
    v5 = v4;
    v7 = v6;
    [v42 bounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v5 = 0;
    v7 = 0;
  }

  type metadata accessor for ModalArticleViewerViewController();
  v12 = sub_1D7D30D9C();
  v13 = v12;
  if (v12)
  {
  }

  v14 = [v1 traitCollection];
  v15 = [v1 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 toolbar];

    if (!v17)
    {
      goto LABEL_13;
    }

    [v17 frame];
    v40 = v19;
    v41 = v18;
    v38 = v21;
    v39 = v20;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init];
  v22 = *MEMORY[0x1E69DDC90];
  v23 = sub_1D7C10660();
  v24 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
  v25 = [v2 view];
  if (v25)
  {
    v26 = v25;
    [v25 &selRef_addObserver_selector_name_object_];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v43.origin.x = v28;
    v43.origin.y = v30;
    v43.size.width = v32;
    v43.size.height = v34;
    Width = CGRectGetWidth(v43);
    v36 = [*&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_currentlyPlayingObservable] value];
    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = v42 == 0;
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    *(a1 + 40) = v42 == 0;
    *(a1 + 48) = v14;
    *(a1 + 56) = v41;
    *(a1 + 64) = v40;
    *(a1 + 72) = v39;
    *(a1 + 80) = v38;
    *(a1 + 88) = v37;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0;
    *(a1 + 136) = v22;
    swift_unknownObjectWeakInit();
    *(a1 + 152) = v23 & 1;
    *(a1 + 153) = v24 & 1;
    *(a1 + 160) = Width;
    *(a1 + 168) = v13 != 0;
    *(a1 + 176) = v36;
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1D7C18D9C(void *a1, char a2)
{
  v3 = [a1 navigationController];
  if (v3)
  {
    v5 = v3;
    if (a2)
    {
      v4 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
    }

    else
    {
      v4 = 1;
    }

    [v5 setToolbarHidden:v4 & 1 animated:0];
  }
}

void sub_1D7C18E30(uint64_t a1)
{
  v3 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v62 - v9;
  v11 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArticleViewerFeatureAction();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C24688(a1, v18, type metadata accessor for ArticleViewerFeatureAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = *v18;
      v45 = *(v18 + 1);
      swift_storeEnumTagMultiPayload();
      sub_1D7C110D0(v44, v45, v14);

      v46 = type metadata accessor for ArticleNavigationAction;
      v47 = v14;
      goto LABEL_22;
    case 2u:
      v29 = *v18;
      v30 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
      v31 = v30[9];
      v32 = v30[10];
      __swift_project_boxed_opaque_existential_1(v30 + 6, v31);
      (*(v32 + 72))(v29, v31, v32);
      swift_unknownObjectRelease();
      return;
    case 3u:
      v33 = *(v18 + 1);
      v63 = *v18;
      v64 = v33;
      v34 = *(v18 + 3);
      v65 = *(v18 + 2);
      v66 = v34;
      v35 = *(v18 + 8);
      v36 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
      v37 = v36[9];
      v38 = v36[10];
      __swift_project_boxed_opaque_existential_1(v36 + 6, v37);
      v62[0] = v63;
      v62[1] = v64;
      v62[2] = v65;
      v62[3] = v66;
      (*(v38 + 16))(v62, v35, 1, v37, v38);
      swift_unknownObjectRelease();
      sub_1D7A0AD5C(&v63);
      return;
    case 4u:
      v23 = *v18;
      v24 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
      v25 = v24[9];
      v26 = v24[10];
      __swift_project_boxed_opaque_existential_1(v24 + 6, v25);
      (*(v26 + 24))(v23, 1, v25, v26);

      return;
    case 5u:
      sub_1D7C25538(v18, v10, type metadata accessor for ArticleViewerPage);
      v48 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
      swift_beginAccess();
      sub_1D799CC84(&v1[v48], &v63);
      v49 = *(&v64 + 1);
      v50 = v65;
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      v51 = v1;
      (*(v50 + 48))(v10, v49, v50);
      __swift_destroy_boxed_opaque_existential_1(&v63);
      swift_beginAccess();

      sub_1D7D28EDC();

      v52 = v67;
      if (v67)
      {
        [v51 nu:v67 adjustInsetsForScrollView:?];
      }

      v46 = type metadata accessor for ArticleViewerPage;
      v47 = v10;
      goto LABEL_22;
    case 6u:
      v53 = *(v18 + 1);
      sub_1D7A69850();
      swift_unknownObjectRelease();

      return;
    case 7u:
      sub_1D7A1F1F8();
      v40 = *&v18[*(v39 + 48)];
      sub_1D7C25538(v18, v6, type metadata accessor for ArticleViewerPage);
      v41 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
      v42 = v41[9];
      v43 = v41[10];
      __swift_project_boxed_opaque_existential_1(v41 + 6, v42);
      (*(v43 + 88))(v40, v6, v42, v43);
      goto LABEL_21;
    case 8u:
      sub_1D7A1F344();
      v55 = *&v18[*(v54 + 48)];
      v56 = &v18[*(v54 + 64)];
      v57 = *v56;
      v58 = *(v56 + 1);
      sub_1D7C25538(v18, v6, type metadata accessor for ArticleViewerPage);
      v59 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
      v60 = v59[9];
      v61 = v59[10];
      __swift_project_boxed_opaque_existential_1(v59 + 6, v60);
      (*(v61 + 96))(v57, v58, v55, v6, v60, v61);

LABEL_21:

      v46 = type metadata accessor for ArticleViewerPage;
      v47 = v6;
LABEL_22:
      sub_1D7C23024(v47, v46);
      return;
    case 9u:
      swift_beginAccess();

      sub_1D7D28EDC();

      v27 = *&v62[0];
      if (!*&v62[0])
      {
        return;
      }

      v28 = 4;
      break;
    case 0xAu:
      swift_beginAccess();

      sub_1D7D28EDC();

      v27 = *&v62[0];
      if (!*&v62[0])
      {
        return;
      }

      v28 = 3;
      break;
    case 0xBu:
      sub_1D7D2AADC();
      return;
    case 0xCu:
      sub_1D7D2AAAC();
      return;
    case 0xDu:
      sub_1D7D2AEAC();
      return;
    default:
      v19 = *v18;
      v20 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
      v21 = v20[9];
      v22 = v20[10];
      __swift_project_boxed_opaque_existential_1(v20 + 6, v21);
      (*(v22 + 80))(v19, v21, v22);

      return;
  }

  sub_1D7BE5EEC(v28, v27);
}

uint64_t sub_1D7C194B0()
{
  v1 = v0;
  v2 = sub_1D7D2AB5C();
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v37 - v7;
  v9 = sub_1D7D2AB8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2ACCC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28EDC();
  v19 = sub_1D7D2AC9C();
  v20 = v14;
  v21 = v1;
  result = (*(v15 + 8))(v18, v20);
  if (v19)
  {
    sub_1D7D2AE7C();
    sub_1D7D2AB4C();
    (*(v10 + 8))(v13, v9);
    v24 = v38;
    v23 = v39;
    (*(v39 + 104))(v38, *MEMORY[0x1E69D7BC0], v2);
    sub_1D799C17C(&unk_1EE0BFF50, 255, MEMORY[0x1E69D7BC8]);
    v25 = sub_1D7D3030C();
    v26 = *(v23 + 8);
    v26(v24, v2);
    result = (v26)(v8, v2);
    if ((v25 & 1) == 0)
    {
      v27 = [v21 navigationController];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 navigationBar];

        v30 = [v29 ts_fetchTitleView];
        if (v30)
        {
          v40[0] = 0x3FF0000000000000;
          v40[1] = 0;
          v40[2] = 0;
          v41 = 0x3FF0000000000000;
          v42 = 0;
          v43 = 0;
          [v30 setTransform_];
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
      swift_beginAccess();
      sub_1D799CC84(v21 + v31, v40);
      v32 = v41;
      v33 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      sub_1D7C255A0(0, &qword_1EE0C8840, type metadata accessor for TitleViewContext, type metadata accessor for ArticleViewerFeature);
      inited = swift_initStaticObject();
      v35 = *(v33 + 112);
      v36 = type metadata accessor for TitleViewContext();
      v35(inited, v36, v32, v33);

      return __swift_destroy_boxed_opaque_existential_1(v40);
    }
  }

  return result;
}

void sub_1D7C198F4(__int128 *a1)
{
  v3 = a1[1];
  v37 = *a1;
  v38 = v3;
  v4 = a1[3];
  v39 = a1[2];
  v40 = v4;
  if (sub_1D7D2DB0C())
  {
    v5 = *&v1[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
    v6 = sub_1D7D30D8C();
    v7 = [v6 overflowPresentationSource];

    v8 = v5[9];
    v9 = v5[10];
    __swift_project_boxed_opaque_existential_1(v5 + 6, v8);
    v10 = a1[1];
    v30 = *a1;
    v31 = v10;
    v11 = a1[3];
    v32 = a1[2];
    v33 = v11;
    (*(v9 + 16))(&v30, v7, 1, v8, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = [v1 navigationController];
    if (v12)
    {
      v29 = v1;
      v13 = v12;
      v14 = [v12 navigationBar];

      v15 = sub_1D7D30CAC();
      if (v15 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
      {
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA70EF00](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v36 = v18;
          sub_1D7992EFC(0, &qword_1EE0BF050);
          sub_1D798F168(0, &qword_1EC9E6FA0);
          v21 = v19;
          if (swift_dynamicCast())
          {
            sub_1D799D69C(v34, &v30);
            __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
            if (sub_1D7D2B51C() == qword_1EE0C7F60 && v22 == off_1EE0C7F68)
            {

              __swift_destroy_boxed_opaque_existential_1(&v30);
LABEL_20:

              goto LABEL_25;
            }

            v23 = sub_1D7D3197C();

            __swift_destroy_boxed_opaque_existential_1(&v30);
            if (v23)
            {
              goto LABEL_20;
            }
          }

          else
          {

            v35 = 0;
            memset(v34, 0, sizeof(v34));
            sub_1D7C23024(v34, sub_1D7C252E8);
          }

          ++v17;
          if (v20 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:

      v21 = 0;
LABEL_25:
      v24 = *&v29[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
      v25 = v24[9];
      v26 = v24[10];
      __swift_project_boxed_opaque_existential_1(v24 + 6, v25);
      v30 = v37;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      v27 = *(v26 + 16);
      v28 = v21;
      v27(&v30, v21, 1, v25, v26);
    }
  }
}

uint64_t ArticleViewerViewController.articleViewerFeatureManager(_:performFeatureTransitions:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  v5 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_hasPresentedFirstPage;
  if (*(v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_hasPresentedFirstPage) == 1)
  {

    sub_1D7C19E68(v2, a2);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1D7C233FC;
    *(v8 + 24) = v4;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D79C932C;
    *(v9 + 24) = v8;
    v13[4] = sub_1D79C932C;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D7C138DC;
    v13[3] = &block_descriptor_21_1;
    v10 = _Block_copy(v13);

    v11 = v2;

    [v7 performWithoutAnimation_];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      *(v2 + v5) = 1;
    }
  }

  return result;
}

uint64_t sub_1D7C19E68(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureTransitions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state;
    v8 = v5 + 32;

    do
    {
      sub_1D799CC84(v8, &v32);
      v9 = *(a1 + v7);
      if (v9 == 2)
      {
        v10 = v33;
        v11 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, v33);
        LOBYTE(v29[0]) = 2;
        (*(v11 + 16))(v29, v10, v11);
        v9 = *(a1 + v7);
      }

      if (v9)
      {
        v12 = v33;
        v13 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, v33);
        LOBYTE(v29[0]) = 3;
        (*(v13 + 16))(v29, v12, v13);
      }

      __swift_destroy_boxed_opaque_existential_1(&v32);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  *(a1 + v4) = MEMORY[0x1E69E7CC0];

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state;
    v16 = a2 + 32;
    do
    {
      sub_1D7B990D4(v16, &v32);
      if (v35)
      {
        sub_1D799D69C(&v32, v29);
        if (*(a1 + v15))
        {
          v19 = v30;
          v20 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          LOBYTE(v28[0]) = 0;
          (*(v20 + 16))(v28, v19, v20);
          if (*(a1 + v15) == 2)
          {
            v21 = v30;
            v22 = v31;
            __swift_project_boxed_opaque_existential_1(v29, v30);
            LOBYTE(v28[0]) = 1;
            (*(v22 + 16))(v28, v21, v22);
          }
        }

        sub_1D799CC84(v29, v28);
        swift_beginAccess();
        v23 = *(a1 + v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + v4) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_1D79E4EA4(0, v23[2] + 1, 1, v23);
          *(a1 + v4) = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_1D79E4EA4((v25 > 1), v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        sub_1D799D69C(v28, &v23[5 * v26 + 4]);
        *(a1 + v4) = v23;
        swift_endAccess();
      }

      else
      {
        sub_1D799D69C(&v32, v29);
        v17 = v30;
        v18 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v18 + 8))(a1, v17, v18);
      }

      __swift_destroy_boxed_opaque_existential_1(v29);
      v16 += 48;
      --v14;
    }

    while (v14);
  }

  return sub_1D79DBBB8(0);
}

uint64_t ArticleViewerViewController.articleViewerFeatureManager(_:navigationItemStyleFor:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v3 = sub_1D7D2AD0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v22 - v10;
  v23 = sub_1D7D2AB8C();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799CC84(v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler, v30);
  v17 = v31;
  v16 = v32;
  v22[1] = __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1D7D2AE7C();
  sub_1D7C10260();
  sub_1D7D28EDC();

  v26 = v28;
  v27 = v29;
  v18 = [v2 splitViewController];
  if (v18)
  {
    v19 = v18;
    sub_1D7D30F4C();

    (*(v4 + 32))(v11, v7, v3);
  }

  else
  {
    (*(v4 + 104))(v11, *MEMORY[0x1E69D7C90], v3);
  }

  (*(v16 + 16))(v25, v15, &v26, v11, v17, v16);
  (*(v4 + 8))(v11, v3);
  v20 = v27;

  (*(v12 + 8))(v15, v23);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t ArticleViewerViewController.articleViewerFeatureManager(_:selectedTextProviderFor:)()
{
  type metadata accessor for WeakSelectedTextProvider();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = &protocol witness table for <> ModernPageViewController<A, B, C, D>;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_1D7C1A4D0()
{
  type metadata accessor for WeakSelectedTextProvider();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = &protocol witness table for <> ModernPageViewController<A, B, C, D>;
  swift_unknownObjectWeakAssign();
  return v0;
}

void ArticleViewerViewController.pageBlueprint(_:didShow:newViewController:previousViewController:scrollDirection:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v135 = a5;
  v121 = a4;
  v128 = a3;
  v145 = a2;
  v127 = a1;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v130 = &v119 - v9;
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v126 = v10;
  v124 = *(v10 - 8);
  v123 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v125 = &v119 - v12;
  v129 = type metadata accessor for ArticleViewerPage(0);
  v136 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v13);
  v120 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v134 = &v119 - v17;
  v144 = sub_1D7D2918C();
  v18 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v19);
  v147 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7D2C82C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D7D2C83C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0())
  {
    (*(v27 + 104))(v30, *MEMORY[0x1E69D8828], v26);
    (*(v22 + 104))(v25, *MEMORY[0x1E69D8848], v21);
    sub_1D7D2A56C();
    (*(v22 + 8))(v25, v21);
    (*(v27 + 8))(v30, v26);
  }

  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v31 = qword_1EE0CAF10;
  v32 = sub_1D7D30C6C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1D7987000, v31, v32, "Setting up ArticleViewerVCEventManager trigger.  Awaiting paywallDidLoad event.", v33, 2u);
    MEMORY[0x1DA7102E0](v33, -1, -1);
  }

  v34 = *&v6[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventManager];
  sub_1D7B236B0(&unk_1F529B0A0);
  v35 = MEMORY[0x1E69D6810];
  sub_1D7C255A0(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v36 = *(v18 + 80);
  v133 = *(v18 + 72);
  v140 = v36;
  v132 = v37;
  v38 = swift_allocObject();
  v131 = xmmword_1D7D3B4D0;
  *(v38 + 16) = xmmword_1D7D3B4D0;
  sub_1D7D2916C();
  v153 = v38;
  v39 = sub_1D799C17C(&qword_1EE0C0380, 255, MEMORY[0x1E69D6810]);
  sub_1D7C255A0(0, &unk_1EE0BF2C0, v35, MEMORY[0x1E69E62F8]);
  v41 = v40;
  v42 = sub_1D7C22F48(&qword_1EE0BF2B0, &unk_1EE0BF2C0, v35);
  v43 = v147;
  v138 = v41;
  v137 = v42;
  v44 = v144;
  v139 = v39;
  sub_1D7D313AC();
  swift_allocObject();
  v146 = v6;
  swift_unknownObjectWeakInit();

  v143 = v34;
  sub_1D7D28C7C();

  v45 = *(v18 + 8);
  v142 = v18 + 8;
  v141 = v45;
  v45(v43, v44);

  v46 = sub_1D7D30C6C();
  if (os_log_type_enabled(v31, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D7987000, v31, v46, "Setting up ArticleViewerVCEventManager trigger.  Awaiting articleDidLoad event.", v47, 2u);
    MEMORY[0x1DA7102E0](v47, -1, -1);
  }

  sub_1D7B236B0(&unk_1F529B0C8);
  v48 = swift_allocObject();
  *(v48 + 16) = v131;
  sub_1D7D2916C();
  v153 = v48;
  v49 = v147;
  v50 = v144;
  sub_1D7D313AC();
  swift_allocObject();
  v51 = v146;
  swift_unknownObjectWeakInit();

  sub_1D7D28C7C();

  v141(v49, v50);

  v52 = sub_1D7C3CCDC();
  v53 = &v51[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_windowTitle];
  *v53 = v52;
  v53[1] = v54;

  if ((_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0() & 1) == 0)
  {
    v55 = [v146 view];
    if (!v55)
    {
      goto LABEL_59;
    }

    v56 = v55;
    v57 = [v55 window];

    if (v57)
    {
      v58 = [v57 windowScene];

      if (v58)
      {
        if (v53[1])
        {

          v59 = sub_1D7D3031C();
        }

        else
        {
          v59 = 0;
        }

        [v58 setTitle_];
      }
    }
  }

  v60 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
  v61 = v145;
  sub_1D7B62054(v145, v60 & 1);
  *&v131 = sub_1D7B236B0(&unk_1F529B0F0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D2916C();
  sub_1D7D2917C();
  v153 = v62;
  v63 = v144;
  sub_1D7D313AC();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = v61;
  v66 = v134;
  sub_1D7C24688(v65, v134, type metadata accessor for ArticleViewerPage);
  v67 = v124;
  v68 = v125;
  v69 = v126;
  (*(v124 + 16))(v125, v127, v126);
  v70 = *(v136 + 80);
  v71 = (v70 + 24) & ~v70;
  v72 = v70 | 7;
  v73 = *(v67 + 80);
  v139 = v71 + v122;
  v74 = (v71 + v122 + v73) & ~v73;
  v75 = (v123 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = v72;
  v76 = swift_allocObject();
  *(v76 + 16) = v64;
  v140 = v71;
  sub_1D7C25538(v66, v76 + v71, type metadata accessor for ArticleViewerPage);
  (*(v67 + 32))(v76 + v74, v68, v69);
  *(v76 + v75) = v135;

  v77 = v147;
  sub_1D7D28C7C();

  v78 = v146;

  v141(v77, v63);

  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = v128;
  v148 = v128;
  sub_1D7992EFC(0, &qword_1EE0BF010);
  sub_1D798F168(0, qword_1EE0C53B8);
  v81 = v80;
  if (swift_dynamicCast())
  {
    sub_1D799D69C(&v150, &v153);
    v82 = v154;
    v83 = v155;
    __swift_project_boxed_opaque_existential_1(&v153, v154);
    (*(v83 + 8))(v82, v83);
    sub_1D7D28EDC();

    if (v150 == 1)
    {
      v84 = v145;
      sub_1D7C1BFE0(v145);
    }

    else
    {
      v87 = v154;
      v88 = v155;
      __swift_project_boxed_opaque_existential_1(&v153, v154);
      (*(v88 + 8))(v87, v88);
      v84 = v145;
      v89 = v134;
      sub_1D7C24688(v145, v134, type metadata accessor for ArticleViewerPage);
      v90 = swift_allocObject();
      *(v90 + 16) = v79;
      sub_1D7C25538(v89, v90 + v140, type metadata accessor for ArticleViewerPage);

      sub_1D7D28EEC();

      __swift_destroy_boxed_opaque_existential_1(&v150);
    }

    v85 = v130;
    v86 = v129;
    __swift_destroy_boxed_opaque_existential_1(&v153);
  }

  else
  {
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    sub_1D7C23024(&v150, sub_1D7C23A34);
    v84 = v145;
    sub_1D7C1BFE0(v145);
    v85 = v130;
    v86 = v129;
  }

  sub_1D7D2AA3C();
  if ((*(v136 + 48))(v85, 1, v86) == 1)
  {
    sub_1D7C22FB4(v85, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    v91 = v85;
    v92 = v120;
    sub_1D7C25538(v91, v120, type metadata accessor for ArticleViewerPage);
    sub_1D7C116B8(v92);
    sub_1D7C23024(v92, type metadata accessor for ArticleViewerPage);
  }

  v148 = v81;
  sub_1D798F168(0, &unk_1EE0BFEF0);
  v93 = v81;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    sub_1D7C23024(&v150, sub_1D7C23A9C);
    v104 = v121;
    if (!v121)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v147 = v79;
  sub_1D799D69C(&v150, &v153);
  __swift_project_boxed_opaque_existential_1(&v153, v154);
  v94 = sub_1D7D2AE0C();
  v95 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_observableScrollView;
  swift_beginAccess();
  *&v78[v95] = v94;

  sub_1D7D28EDC();

  v97 = v150;
  if (!v150)
  {
    __swift_project_boxed_opaque_existential_1(&v153, v154);
    sub_1D7D2AE0C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7D28EEC();

    __swift_destroy_boxed_opaque_existential_1(&v150);
    goto LABEL_41;
  }

  sub_1D799C17C(&qword_1EE0C5370, v96, type metadata accessor for ArticleViewerViewController);
  sub_1D7D2AE8C();
  sub_1D7C194B0();
  [v78 setContentScrollView:v97 forEdge:15];
  v98 = *&v78[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pocketStatusBarView];
  v99 = [v98 interactions];
  sub_1D798C3BC(0, &qword_1EE0BF0A8);
  v100 = sub_1D7D3063C();

  if (v100 >> 62)
  {
    v101 = sub_1D7D3167C();
    if (v101)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
LABEL_30:
      if (v101 >= 1)
      {
        for (i = 0; i != v101; ++i)
        {
          if ((v100 & 0xC000000000000001) != 0)
          {
            v103 = MEMORY[0x1DA70EF00](i, v100);
          }

          else
          {
            v103 = *(v100 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v98 removeInteraction_];
          swift_unknownObjectRelease();
        }

        goto LABEL_40;
      }

      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }
  }

LABEL_40:

  v105 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:v97 edge:1 style:0];
  [v98 addInteraction_];

  v84 = v145;
  v78 = v146;
LABEL_41:
  __swift_destroy_boxed_opaque_existential_1(&v153);
  v104 = v121;
  if (!v121)
  {
LABEL_45:
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    goto LABEL_46;
  }

LABEL_42:
  v153 = v104;
  sub_1D798F168(0, &unk_1EE0C8280);
  v106 = v104;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (*(&v151 + 1))
  {
    sub_1D799D69C(&v150, &v153);
    v107 = v154;
    v108 = v155;
    __swift_mutable_project_boxed_opaque_existential_1(&v153, v154);
    (*(v108 + 16))(0, 0, v107, v108);
    __swift_destroy_boxed_opaque_existential_1(&v153);
    goto LABEL_47;
  }

LABEL_46:
  sub_1D7C23024(&v150, sub_1D7C23B04);
LABEL_47:
  v149 = v93;
  sub_1D798F168(0, &unk_1EE0C8280);
  v109 = v93;
  if (!swift_dynamicCast())
  {
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    sub_1D7C23024(&v150, sub_1D7C23B04);
    LOBYTE(v153) = 5;
    sub_1D7D28C6C();
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_55;
    }

LABEL_51:
    v114 = *MEMORY[0x1E69DD888];
    sub_1D7C3CCDC();
    if (v115)
    {
      v116 = sub_1D7D3031C();
    }

    else
    {
      v116 = 0;
    }

    UIAccessibilityPostNotification(v114, v116);
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  sub_1D799D69C(&v150, &v153);
  v110 = v154;
  v111 = v155;
  __swift_mutable_project_boxed_opaque_existential_1(&v153, v154);
  v112 = *(v111 + 16);
  v113 = swift_unknownObjectRetain();
  v112(v113, &protocol witness table for ArticleViewerViewController, v110, v111);
  __swift_destroy_boxed_opaque_existential_1(&v153);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_51;
  }

LABEL_55:
  sub_1D7C10260();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(&v153);

  v117 = &v78[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented];
  swift_beginAccess();
  v118 = *v117;
  if (*v117)
  {

    v118(v84, v135);
    sub_1D79AD740(v118);
  }
}

uint64_t sub_1D7C1BA38(uint64_t a1, const char *a2)
{
  v3 = sub_1D7D2C82C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2C83C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE0CAF10;
  v14 = sub_1D7D30C6C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a2;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_1D7987000, v13, v14, v16, v15, 2u);
    MEMORY[0x1DA7102E0](v17, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;

    (*(v9 + 104))(v12, *MEMORY[0x1E69D8828], v8);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D8848], v3);
    sub_1D7D2A56C();

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

void sub_1D7C1BCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v34 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 safeAreaLayoutGuide];

      [v14 layoutFrame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v35.origin.x = v16;
      v35.origin.y = v18;
      v35.size.width = v20;
      v35.size.height = v22;
      CGRectGetWidth(v35);
      v23 = [v11 view];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 safeAreaLayoutGuide];

        [v25 layoutFrame];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v36.origin.x = v27;
        v36.origin.y = v29;
        v36.size.width = v31;
        v36.size.height = v33;
        CGRectGetHeight(v36);
        [v11 additionalSafeAreaInsets];

        sub_1D7D30B5C();
        __swift_project_boxed_opaque_existential_1(&v11[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_interstitialAdManager], *&v11[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_interstitialAdManager + 24]);
        ArticleViewerPage.identifier.getter();
        sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
        sub_1D7D29FAC();

        sub_1D7CECBD0(a2, v9, a4);
        sub_1D7C22FB4(v9, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1D7C1BFE0(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_1D7D2918C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = *(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventManager);
    v21 = Strong;
    v22 = sub_1D7B236B0(&unk_1F529B078);
    v12 = MEMORY[0x1E69D6810];
    sub_1D7C255A0(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
    v19 = a1;
    v20 = v3;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7D3C680;
    sub_1D7D2916C();
    sub_1D7D2915C();
    sub_1D7D2917C();
    v24 = v13;
    sub_1D799C17C(&qword_1EE0C0380, 255, MEMORY[0x1E69D6810]);
    sub_1D7C255A0(0, &unk_1EE0BF2C0, v12, MEMORY[0x1E69E62F8]);
    sub_1D7C22F48(&qword_1EE0BF2B0, &unk_1EE0BF2C0, v12);
    sub_1D7D313AC();
    v14 = swift_allocObject();
    v15 = v21;
    swift_unknownObjectWeakInit();
    sub_1D7C24688(v19, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArticleViewerPage);
    v16 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    sub_1D7C25538(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ArticleViewerPage);

    sub_1D7D28C7C();

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1D7C1C388(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_articleViewerImpressionManager + 24);
    v9 = *(result + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_articleViewerImpressionManager + 32);
    v10 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_articleViewerImpressionManager), v8);
    v11 = *&v10[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_blueprintProvider + 24];
    v12 = *&v10[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_blueprintProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_blueprintProvider], v11);
    (*(v12 + 8))(v11, v12);
    sub_1D7D28EDC();

    (*(v9 + 24))(a2, v6, v8, v9);

    return sub_1D7C23024(v6, type metadata accessor for ArticleViewerBlueprint);
  }

  return result;
}

void sub_1D7C1C4F0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (!v1)
    {
LABEL_13:

      return;
    }

    v5 = *(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionManager);
    sub_1D799C17C(&qword_1EE0C5370, v3, type metadata accessor for ArticleViewerViewController);
    v6 = v1;
    v7 = v5;
    v8 = v4;
    sub_1D7D2AE8C();

    v9 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
    swift_beginAccess();
    sub_1D799CC84(&v8[v9], v21);
    v10 = v22;
    v11 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v11 + 80))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v21);
    [v8 setContentScrollView:v6 forEdge:15];
    v12 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pocketStatusBarView;
    v13 = [*&v8[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pocketStatusBarView] interactions];
    sub_1D798C3BC(0, &qword_1EE0BF0A8);
    v14 = sub_1D7D3063C();

    if (v14 >> 62)
    {
      v15 = sub_1D7D3167C();
      if (v15)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_5:
        if (v15 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1DA70EF00](i, v14);
          }

          else
          {
            v17 = *(v14 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [*&v8[v12] removeInteraction_];
          swift_unknownObjectRelease();
        }
      }
    }

    v18 = *&v8[v12];
    v19 = objc_allocWithZone(MEMORY[0x1E69DD6C8]);
    v20 = v18;
    v4 = [v19 initWithScrollView:v6 edge:1 style:0];
    [v20 addInteraction_];

    goto LABEL_13;
  }
}

void sub_1D7C1C798()
{
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ArticleViewerPage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1D7D2AA3C();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1D7C22FB4(v3, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C25538(v3, v8, type metadata accessor for ArticleViewerPage);
      sub_1D7C116B8(v8);
      sub_1D7C23024(v8, type metadata accessor for ArticleViewerPage);
    }

    sub_1D7C194B0();
  }
}

uint64_t ArticleViewerViewController.pageBlueprint(_:primaryVisiblePageDidChange:)(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v54 = &v38 - v5;
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v47 = &v38 - v12;
  v13 = sub_1D7D2918C();
  v58 = *(v13 - 8);
  v14 = v58;
  v15 = v58;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventManager);
  v43 = v2;
  v60 = 0;
  v19 = MEMORY[0x1E69D6810];
  sub_1D7C255A0(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v52 = v20;
  v21 = *(v15 + 80);
  v50 = *(v14 + 72);
  v51 = ((v21 + 32) & ~v21) + 2 * v50;
  v49 = (v21 + 32) & ~v21;
  v22 = swift_allocObject();
  v48 = xmmword_1D7D3B4E0;
  *(v22 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D2916C();
  sub_1D7D2917C();
  v59 = v22;
  v46 = sub_1D799C17C(&qword_1EE0C0380, 255, MEMORY[0x1E69D6810]);
  sub_1D7C255A0(0, &unk_1EE0BF2C0, v19, MEMORY[0x1E69E62F8]);
  v45 = v23;
  v44 = sub_1D7C22F48(&qword_1EE0BF2B0, &unk_1EE0BF2C0, v19);
  sub_1D7D313AC();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = type metadata accessor for ArticleViewerPage;
  v25 = v53;
  v26 = v47;
  sub_1D7C24688(v53, v47, type metadata accessor for ArticleViewerPage);
  v27 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  v40 = type metadata accessor for ArticleViewerPage;
  sub_1D7C25538(v26, v28 + v27, type metadata accessor for ArticleViewerPage);

  sub_1D7D28C8C();

  v29 = *(v58 + 8);
  v58 += 8;
  v39 = v29;
  v29(v18, v13);
  v30 = v25;

  v60 = 7;
  v31 = swift_allocObject();
  *(v31 + 16) = v48;
  sub_1D7D2916C();
  sub_1D7D2917C();
  v59 = v31;
  sub_1D7D313AC();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7C24688(v30, v26, v42);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  sub_1D7C25538(v26, v33 + v27, v40);

  sub_1D7D28C8C();

  v39(v18, v13);

  v34 = v54;
  sub_1D7D2AA3C();
  if ((*(v56 + 48))(v34, 1, v55) == 1)
  {
    sub_1D7C22FB4(v34, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    v35 = v34;
    v36 = v38;
    sub_1D7C25538(v35, v38, type metadata accessor for ArticleViewerPage);
    sub_1D7C116B8(v36);
    sub_1D7C23024(v36, type metadata accessor for ArticleViewerPage);
  }

  sub_1D7D2A4EC();
  return sub_1D7C13E20(v30);
}

uint64_t sub_1D7C1CFEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArticleViewerPage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22[-v9];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1D7C24688(a2, v10, type metadata accessor for ArticleViewerPage);
    (*(v4 + 56))(v10, 0, 1, v3);
    sub_1D7C134C0(v10);
    sub_1D7C22FB4(v10, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    if (sub_1D7C1D3AC(a2, v12))
    {
      v13 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
      swift_beginAccess();
      sub_1D799CC84(v12 + v13, aBlock);
      v14 = v24;
      v15 = v25;
      __swift_project_boxed_opaque_existential_1(aBlock, v24);
      (*(v15 + 6))(a2, v14, v15);

      return __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    else
    {
      v16 = objc_opt_self();
      sub_1D7C24688(a2, &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ArticleViewerPage);
      v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v12;
      sub_1D7C25538(&v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for ArticleViewerPage);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1D7C24F8C;
      *(v19 + 24) = v18;
      v25 = sub_1D7A66DA0;
      v26 = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7C138DC;
      v24 = &block_descriptor_124;
      v20 = _Block_copy(aBlock);
      v21 = v12;

      [v16 performWithoutAnimation_];

      _Block_release(v20);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1D7C1D3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C255A0(0, qword_1EE0CB350, type metadata accessor for ArticleViewerArticlePage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for ArticleViewerArticlePage(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v49 - v19;
  sub_1D7C24688(a1, v7, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v7[*(v22 + 48)], *&v7[*(v22 + 48) + 8], *&v7[*(v22 + 48) + 16]);
LABEL_5:
    sub_1D7C25538(v7, v16, type metadata accessor for ArticleViewerArticlePage);
    sub_1D7C25538(v16, v11, type metadata accessor for ArticleViewerArticlePage);
    v23 = 0;
    goto LABEL_7;
  }

  sub_1D7C23024(v7, type metadata accessor for ArticleViewerPage);
  v23 = 1;
LABEL_7:
  (*(v13 + 56))(v11, v23, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D7C22FB4(v11, qword_1EE0CB350, type metadata accessor for ArticleViewerArticlePage);
    return 1;
  }

  sub_1D7C25538(v11, v20, type metadata accessor for ArticleViewerArticlePage);
  v25 = *(v20 + 2);
  v26 = [v25 sourceChannel];
  if (!v26)
  {
    sub_1D7C23024(v20, type metadata accessor for ArticleViewerArticlePage);
    return 0;
  }

  v27 = v26;
  v28 = *(a2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_paidAccessChecker);
  v29 = [v28 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v30 = [v27 asSection];
    if (!v30 || (v31 = [v30 parentID], swift_unknownObjectRelease(), !v31))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_17;
    }
  }

  else
  {
    v31 = [v27 identifier];
  }

  v32 = sub_1D7D3034C();
  v34 = v33;

  v35 = [v29 purchasedTagIDs];
  v36 = sub_1D7D309AC();

  LOBYTE(v35) = sub_1D7D053C8(v32, v34, v36);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v35)
  {
    goto LABEL_40;
  }

LABEL_17:
  v37 = [objc_msgSend(v28 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v37, v37 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  v38 = MEMORY[0x1E69E7CA0];
  if (!*(&v52 + 1))
  {
    sub_1D7C23094(&v53, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_25;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v39 = 0;
    v41 = 0;
    goto LABEL_26;
  }

  v39 = v50;
  v40 = [v50 integerValue];
  if (v40 == -1)
  {

    goto LABEL_37;
  }

  v41 = v40;
LABEL_26:
  if (objc_getAssociatedObject(v37, ~v41))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (*(&v52 + 1))
  {
    sub_1D7992EFC(0, &qword_1EE0BECA0);
    if (swift_dynamicCast())
    {
      v42 = v50;
      v43 = [v42 integerValue];

      if (((v43 ^ v41) & 1) == 0)
      {
LABEL_41:
        v48 = [v25 isPaid];
        swift_unknownObjectRelease();
        v47 = v48 ^ 1;
        goto LABEL_42;
      }

      goto LABEL_37;
    }
  }

  else
  {
    sub_1D7C23094(&v53, &qword_1EE0BE7A0, v38 + 8);
  }

  if ((v41 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  v44 = [objc_msgSend(v28 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v45 = [v27 identifier];
  if (!v45)
  {
    sub_1D7D3034C();
    v45 = sub_1D7D3031C();
  }

  v46 = [v44 containsTagID_];

  if ((v46 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_40:
  swift_unknownObjectRelease();
  v47 = 1;
LABEL_42:
  sub_1D7C23024(v20, type metadata accessor for ArticleViewerArticlePage);
  return v47;
}

uint64_t sub_1D7C1DAE4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
  swift_beginAccess();
  sub_1D799CC84(a1 + v4, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 48))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1D7C1DB7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D2DB3C();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2DB7C();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArticleViewerPage(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for ModalArticleViewerViewController();
    v17 = sub_1D7D30D9C();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      sub_1D7992EFC(0, &qword_1EE0BEFF0);
      v25 = sub_1D7D30E1C();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D7C24688(a2, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArticleViewerPage);
      v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      sub_1D7C25538(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ArticleViewerPage);
      aBlock[4] = sub_1D7C24F60;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D79FE25C;
      aBlock[3] = &block_descriptor_114;
      v22 = _Block_copy(aBlock);

      sub_1D7D2DB5C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D799C17C(&qword_1EE0BFA20, 255, MEMORY[0x1E69E7F60]);
      v23 = MEMORY[0x1E69E7F60];
      sub_1D7C255A0(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D7C22F48(&qword_1EE0BF270, &qword_1EE0BF280, v23);
      sub_1D7D313AC();
      v24 = v25;
      MEMORY[0x1DA70E890](0, v10, v6, v22);
      _Block_release(v22);

      (*(v27 + 8))(v6, v3);
      (*(v26 + 8))(v10, v7);
    }
  }
}

void sub_1D7C1DFB4()
{
  v0 = sub_1D7D2B49C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C255A0(0, qword_1EE0CB350, type metadata accessor for ArticleViewerArticlePage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for ArticleViewerArticlePage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1D7C3C32C(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1D7C22FB4(v8, qword_1EE0CB350, type metadata accessor for ArticleViewerArticlePage);
    }

    else
    {
      sub_1D7C25538(v8, v13, type metadata accessor for ArticleViewerArticlePage);
      if ((~*&v13[*(v9 + 40) + 16] & 0xF000000000000007) != 0)
      {
        (*(v1 + 104))(v4, *MEMORY[0x1E69D7FB8], v0);
        v16 = ArticleViewerPage.tracker.getter();
        v21[3] = sub_1D7D28A3C();
        v21[4] = sub_1D799C17C(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
        v21[0] = v16;
        v22 = 0u;
        v23 = 0u;
        v24 = 1;
        sub_1D7D2B10C();
        swift_allocObject();
        v17 = sub_1D7D2B0EC();
        v18 = *&v15[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
        v19 = v18[9];
        v20 = v18[10];
        __swift_project_boxed_opaque_existential_1(v18 + 6, v19);
        (*(v20 + 40))(v17, v19, v20);

        sub_1D7C23024(v13, type metadata accessor for ArticleViewerArticlePage);
      }

      else
      {

        sub_1D7C23024(v13, type metadata accessor for ArticleViewerArticlePage);
      }
    }
  }
}

uint64_t ArticleViewerViewController.pageBlueprint(_:page:changedVisibilityFactor:scrollDirection:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38[0] = a4;
  v41 = a3;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v38 - v13;
  v15 = type metadata accessor for ArticleViewerPage(0);
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v40 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v38 - v20;
  v22 = sub_1D7D29EAC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2AEAC();
  v44 = *(v4 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageViewController);
  v27 = sub_1D7D2AA6C();
  if (v27)
  {
    v28 = v27;
    v42 = v21;
    v38[1] = *(v4 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_tipManager);
    v29 = MEMORY[0x1E69D7660];
    sub_1D7C255A0(0, &unk_1EC9E24A0, MEMORY[0x1E69D7660], MEMORY[0x1E69E6F90]);
    v39 = v10;
    v30 = swift_allocObject();
    v43 = v5;
    v31 = v30;
    *(v30 + 16) = xmmword_1D7D3B4D0;

    sub_1D7D29E8C();
    v46[0] = v31;
    sub_1D799C17C(&unk_1EC9E6E40, 255, MEMORY[0x1E69D7660]);
    sub_1D7C255A0(0, &unk_1EC9E24B0, v29, MEMORY[0x1E69E62F8]);
    v10 = v39;
    sub_1D7C22F48(&qword_1EC9E6E50, &unk_1EC9E24B0, v29);
    v5 = v43;
    sub_1D7D313AC();
    sub_1D7D29BEC();

    v21 = v42;

    (*(v23 + 8))(v26, v22);
  }

  sub_1D7D2AA2C();
  v32 = *(v45 + 48);
  if (v32(v14, 1, v15) == 1)
  {
    return sub_1D7C22FB4(v14, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  sub_1D7C25538(v14, v21, type metadata accessor for ArticleViewerPage);
  sub_1D7D2AA5C();
  if (v32(v10, 1, v15) == 1)
  {
    sub_1D7C23024(v21, type metadata accessor for ArticleViewerPage);
    return sub_1D7C22FB4(v10, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    v34 = v40;
    sub_1D7C25538(v10, v40, type metadata accessor for ArticleViewerPage);
    if (_s12NewsArticles17ArticleViewerPageO2eeoiySbAC_ACtFZ_0(v41, v21))
    {
      v35 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
      swift_beginAccess();
      sub_1D799CC84(v5 + v35, v46);
      v36 = v47;
      v37 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      (*(v37 + 72))(v21, v34, v38[0], v36, v37, a1);
      sub_1D7C23024(v34, type metadata accessor for ArticleViewerPage);
      sub_1D7C23024(v21, type metadata accessor for ArticleViewerPage);
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      sub_1D7C23024(v34, type metadata accessor for ArticleViewerPage);
      return sub_1D7C23024(v21, type metadata accessor for ArticleViewerPage);
    }
  }
}

uint64_t ArticleViewerViewController.pageBlueprint(_:didHide:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for ArticleViewerPage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2AA3C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D7C22FB4(v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  sub_1D7C25538(v8, v13, type metadata accessor for ArticleViewerPage);
  v15 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
  swift_beginAccess();
  sub_1D799CC84(v3 + v15, v18);
  v16 = v19;
  v17 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v17 + 64))(a2, v13, v16, v17);
  sub_1D7C23024(v13, type metadata accessor for ArticleViewerPage);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t ArticleViewerViewController.pageBlueprint(_:didUpdateFrom:)(uint64_t a1)
{
  v41 = a1;
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v3 = v2;
  v40 = *(v2 - 8);
  v37 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v38 = v35 - v5;
  v6 = sub_1D7D2918C();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v35 - v15;
  v17 = type metadata accessor for ArticleViewerPage(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C22EA4();
  sub_1D7D309EC();
  result = sub_1D7D30A5C();
  if (v45 != v44)
  {
    v36 = v1;
    sub_1D7D2AA3C();
    v23 = *(v18 + 48);
    if (v23(v16, 1, v17) == 1)
    {
      v24 = v16;
    }

    else
    {
      sub_1D7C25538(v16, v21, type metadata accessor for ArticleViewerPage);
      ArticleViewerPage.identifier.getter();
      sub_1D7D29FAC();

      if (v23(v12, 1, v17) == 1)
      {
        sub_1D7C22FB4(v12, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        v35[1] = *(v36 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventManager);
        sub_1D7B236B0(&unk_1F529B118);
        v25 = MEMORY[0x1E69D6810];
        sub_1D7C255A0(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
        v26 = v42;
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D7D3B4E0;
        sub_1D7D2916C();
        sub_1D7D2917C();
        v45 = v27;
        sub_1D799C17C(&qword_1EE0C0380, 255, MEMORY[0x1E69D6810]);
        sub_1D7C255A0(0, &unk_1EE0BF2C0, v25, MEMORY[0x1E69E62F8]);
        sub_1D7C22F48(&qword_1EE0BF2B0, &unk_1EE0BF2C0, v25);
        v35[0] = v21;
        v28 = v39;
        v29 = v43;
        sub_1D7D313AC();
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = v40;
        v32 = v38;
        (*(v40 + 16))(v38, v41, v3);
        v33 = (*(v31 + 80) + 24) & ~*(v31 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v30;
        (*(v31 + 32))(v34 + v33, v32, v3);

        sub_1D7D28C7C();

        (*(v26 + 8))(v28, v29);
        sub_1D7C23024(v35[0], type metadata accessor for ArticleViewerPage);
      }

      sub_1D7C23024(v21, type metadata accessor for ArticleViewerPage);
      v24 = v12;
    }

    return sub_1D7C22FB4(v24, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  return result;
}

id sub_1D7C1F1A0()
{
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for ArticleViewerPage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1D7D2AA3C();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_1D7C22FB4(v7, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C25538(v7, v12, type metadata accessor for ArticleViewerPage);
      sub_1D799CC84(v14 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_interstitialAdManager, v17);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      ArticleViewerPage.identifier.getter();
      sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
      sub_1D7D29FAC();

      result = [v14 view];
      if (result)
      {
        v15 = result;
        v16 = [result safeAreaLayoutGuide];

        [v16 layoutFrame];
        sub_1D7CECBD0(v12, v3, 2);

        sub_1D7C22FB4(v3, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        sub_1D7C23024(v12, type metadata accessor for ArticleViewerPage);
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t _s12NewsArticles27ArticleViewerViewControllerC09cardSplitE21WillChangeDisplayMode2toySo07UISplitefkL0V_tF_0(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v47 = sub_1D7D2AB8C();
  v45 = *(v47 - 1);
  MEMORY[0x1EEE9AC00](v47, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D2ACCC();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v43 - v11;
  v51 = sub_1D7D2AD0C();
  v12 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for ArticleViewerPage(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2AA3C();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1D7C22FB4(v19, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  sub_1D7C25538(v19, v24, type metadata accessor for ArticleViewerPage);
  v26 = [v1 splitViewController];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 isCollapsed];

    v29 = sub_1D7D2DB0C();
    v43 = v12;
    if (v29)
    {
      (*(v12 + 104))(v15, *MEMORY[0x1E69D7C90], v51);
    }

    else
    {
      if ((v44 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v30 = v28;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        v31 = MEMORY[0x1E69D7C90];
      }

      else
      {
        v31 = MEMORY[0x1E69D7C88];
      }

      (*(v12 + 104))(v15, *v31, v51);
    }

    sub_1D799CC84(v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler, aBlock);
    v32 = v53;
    v33 = v54;
    __swift_project_boxed_opaque_existential_1(aBlock, v53);
    sub_1D7D2AE7C();
    sub_1D7C10260();
    sub_1D7D28EDC();

    v56 = v58;
    v57 = v59;
    v34 = v48;
    (*(v33 + 2))(v24, v5, &v56, v15, v32, v33);
    v35 = v57;

    (*(v45 + 8))(v5, v47);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v47 = objc_opt_self();
    v37 = v49;
    v36 = v50;
    v38 = v46;
    (*(v49 + 16))(v46, v34, v50);
    v39 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v2;
    (*(v37 + 32))(v40 + v39, v38, v36);
    v54 = sub_1D7C24F34;
    v55 = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79FE25C;
    v53 = &block_descriptor_107;
    v41 = _Block_copy(aBlock);
    v42 = v2;

    [v47 animateWithDuration:v41 animations:0.2];
    _Block_release(v41);
    (*(v37 + 8))(v34, v36);
    (*(v43 + 8))(v15, v51);
  }

  return sub_1D7C23024(v24, type metadata accessor for ArticleViewerPage);
}

void sub_1D7C1FB40(void *a1)
{
  sub_1D799C17C(&unk_1EE0BFF30, 255, MEMORY[0x1E69D7C68]);
  sub_1D7D28F1C();
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    [v4 layoutIfNeeded];
  }
}

Swift::Void __swiftcall ArticleViewerViewController.navigateToPage(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v3 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v3, v3);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  ArticleViewerViewController.navigateToPage(with:articleNavigationAction:)(countAndFlagsBits, object, v5);
  sub_1D7C23024(v5, type metadata accessor for ArticleNavigationAction);
}

uint64_t ArticleViewerViewController.navigateToPage(with:articleNavigationAction:)(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v5 = type metadata accessor for ArticleNavigationAction();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = sub_1D7D2918C();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v24 - v16;
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7C22EA4();
  sub_1D7D309EC();
  sub_1D7D30A5C();
  (*(v14 + 8))(v17, v13);
  if (v31 != v30)
  {
    return sub_1D7C110D0(v29, a2, v28);
  }

  v18 = (v3 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pendingPageIdentifier);
  v19 = v29;
  *v18 = v29;
  v18[1] = a2;

  LOBYTE(v31) = 4;

  sub_1D7D2917C();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7C24688(v28, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArticleNavigationAction);
  v21 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v19;
  v22[4] = a2;
  sub_1D7C25538(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ArticleNavigationAction);

  sub_1D7D28C8C();

  (*(v26 + 8))(v11, v27);
}

uint64_t sub_1D7C20094(uint64_t a1, void (*a2)(char *, uint64_t), void (*a3)(char *, uint64_t), uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1D7C110D0(a2, a3, a4);
    v9 = &v8[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pendingPageIdentifier];
    *v9 = 0;
    *(v9 + 1) = 0;
  }

  return result;
}

uint64_t sub_1D7C20128(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t))
{
  v4 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v4, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  ArticleViewerViewController.navigateToPage(with:articleNavigationAction:)(a1, a2, v6);
  return sub_1D7C23024(v6, type metadata accessor for ArticleNavigationAction);
}

uint64_t ArticleViewerViewController.cardSplitViewPresentation(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D80A0];
  v3 = sub_1D7D2B57C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x1E69D80A8];
  v5 = sub_1D7D2B59C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_1D7C202A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D80A0];
  v3 = sub_1D7D2B57C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x1E69D80A8];
  v5 = sub_1D7D2B59C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id ArticleViewerViewController.responder.getter()
{
  result = sub_1D7D2AA6C();
  if (!result)
  {

    return v1;
  }

  return result;
}

id sub_1D7C203C0()
{
  result = sub_1D7D2AA6C();
  if (!result)
  {

    return v1;
  }

  return result;
}

uint64_t ArticleViewerViewController.fullscreenCoverStyle.getter()
{
  sub_1D799CC84(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 40))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D7C204D0()
{
  sub_1D799CC84(*v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 40))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t ArticleViewerViewController.identifier.getter()
{
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v20 - v5;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ArticleViewerPage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v21 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pendingPageIdentifier + 8))
  {
    v15 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pendingPageIdentifier);
  }

  else
  {
    v15 = sub_1D7D2AA7C();
  }

  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7D29F9C();
  (*(v3 + 8))(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D7C22FB4(v10, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    v16 = v21;
    sub_1D7C25538(v10, v21, type metadata accessor for ArticleViewerPage);
    ArticleViewerPage.article.getter(&v22);
    if (*(&v22 + 1))
    {
      v17 = v23;
      swift_unknownObjectRetain();
      sub_1D7C23094(&v22, &qword_1EE0C0600, &type metadata for Article);
      v18 = [v17 identifier];
      swift_unknownObjectRelease();
      v15 = sub_1D7D3034C();

      sub_1D7C23024(v16, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C23024(v16, type metadata accessor for ArticleViewerPage);
    }
  }

  return v15;
}

uint64_t ArticleViewerViewController.navigationBarCompressionAnimation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory), v1);
  return (*(v2 + 8))(v0, v1, v2);
}

uint64_t ArticleViewerViewController.tabBarCompressionAnimation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory), v1);
  return (*(v2 + 24))(v0, v1, v2);
}

uint64_t ArticleViewerViewController.toolbarCompressionAnimation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory), v1);
  return (*(v2 + 16))(v0, v1, v2);
}

uint64_t sub_1D7C20AC0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE46570](ObjectType, a2);
}

uint64_t sub_1D7C20AFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory), v1);
  return (*(v2 + 8))(v0, v1, v2);
}

uint64_t sub_1D7C20B60()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory), v1);
  return (*(v2 + 24))(v0, v1, v2);
}

uint64_t sub_1D7C20BC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory), v1);
  return (*(v2 + 16))(v0, v1, v2);
}

Swift::Void __swiftcall ArticleViewerViewController.set(previewing:)(Swift::Bool previewing)
{
  v2 = previewing;
  v3 = sub_1D7D2C82C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  isEscapingClosureAtFileLocation = sub_1D7D2C83C();
  v9 = *(isEscapingClosureAtFileLocation - 8);
  MEMORY[0x1EEE9AC00](isEscapingClosureAtFileLocation, v10);
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1D7D2DB0C())
  {
    if (v2)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    v13 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v12 = swift_allocObject();
    v7 = sub_1D7C25688;
    v12[2] = sub_1D7C25688;
    v12[3] = v3;
    v40 = sub_1D7A66DA0;
    v41 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1D7C138DC;
    v39 = &block_descriptor_72;
    v14 = _Block_copy(&aBlock);
    v15 = v1;

    [v13 performWithoutAnimation_];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_9:
      v18 = 0;
LABEL_20:
      sub_1D7D2A02C();
      sub_1D79AD740(v7);
      sub_1D79AD740(v18);
      return;
    }

    __break(1u);
  }

  if (v2)
  {
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 setToolbarHidden:1 animated:0];
    }

    goto LABEL_8;
  }

  v35[3] = v2;
  v19 = sub_1D7D2B7FC();
  v20 = sub_1D7D2B7DC();
  v21 = MEMORY[0x1E69D8270];
  v12[3] = v19;
  v12[4] = v21;
  *v12 = v20;
  (*(v9 + 104))(v12, *MEMORY[0x1E69D8818], isEscapingClosureAtFileLocation);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D8850], v3);
  sub_1D7D2A56C();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, isEscapingClosureAtFileLocation);
  v22 = &off_1E84EC000;
  v23 = [v1 navigationController];
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v23;
  v25 = [v23 toolbar];

  if (v25)
  {
    v26 = [v25 items];

    if (!v26)
    {
      goto LABEL_18;
    }

    sub_1D7992EFC(0, &qword_1EE0BF050);
    v27 = sub_1D7D3063C();

    if (v27 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7D3167C())
    {

      if (i)
      {
        v29 = [v1 v22[377]];
        if (v29)
        {
          v30 = v29;
          [v29 setToolbarHidden:0 animated:0];
        }
      }

LABEL_18:
      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 16) = v1;
      v22 = swift_allocObject();
      v18 = sub_1D7C25688;
      v22[2] = sub_1D7C25688;
      v22[3] = v32;
      v40 = sub_1D7A66DA0;
      v41 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1D7C138DC;
      v39 = &block_descriptor_62;
      v33 = _Block_copy(&aBlock);
      v34 = v1;

      [v31 performWithoutAnimation_];
      _Block_release(v33);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if ((v31 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_22:
      ;
    }

    v7 = 0;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1D7C21298(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
  swift_beginAccess();
  sub_1D799CC84(a1 + v2, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 80))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall ArticleViewerViewController.enableNavigation(_:)(Swift::Bool a1)
{
  if (a1)
  {
    sub_1D7C10660();
  }

  sub_1D7D2AA9C();
}

uint64_t sub_1D7C21460(const char *a1)
{
  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0CAF10;
  v3 = sub_1D7D30C6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D7987000, v2, v3, a1, v4, 2u);
    MEMORY[0x1DA7102E0](v4, -1, -1);
  }

  return sub_1D7D28C6C();
}

uint64_t ArticleViewerViewController.articleRequestingRouteToSourceChannel(channel:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler);
  v4 = v3[9];
  v5 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v4);
  return (*(v5 + 72))(a1, v4, v5);
}

uint64_t sub_1D7C215FC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler);
  v4 = v3[9];
  v5 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v4);
  return (*(v5 + 72))(a1, v4, v5);
}

uint64_t sub_1D7C21668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler);
    v5 = result;
    swift_unknownObjectRetain();

    v6 = *(a2 + 152);
    v7 = v4[9];
    v8 = v4[10];
    __swift_project_boxed_opaque_existential_1(v4 + 6, v7);
    (*(v8 + 80))(v6, v7, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7C21720(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler);
    v5 = result;
    swift_unknownObjectRetain();

    v6 = v4[9];
    v7 = v4[10];
    __swift_project_boxed_opaque_existential_1(v4 + 6, v6);
    (*(v7 + 80))(a2, v6, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7C217D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7998DF0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v25 - v13;
  v15 = *(a1 + 16);
  if ([v15 contentType] == 1)
  {
    v16 = [v15 contentURL];
    if (v16)
    {
      v17 = v16;
      sub_1D7D281EC();

      v18 = sub_1D7D2824C();
      (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    }

    else
    {
      v22 = sub_1D7D2824C();
      (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    }
  }

  else
  {
    v19 = [v15 articleID];
    if (!v19)
    {
      sub_1D7D3034C();
      v19 = sub_1D7D3031C();
    }

    v20 = [objc_opt_self() nss:v19 NewsURLForArticleID:?];

    if (v20)
    {
      sub_1D7D281EC();

      v21 = sub_1D7D2824C();
      (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    }

    else
    {
      v23 = sub_1D7D2824C();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    }

    v14 = v9;
  }

  sub_1D7C25538(v14, a2, sub_1D7998DF0);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

uint64_t sub_1D7C21A90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = [v3 sourceChannel];
  if (result)
  {
    v5 = result;
    v6 = *(a2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_paidAccessChecker);
    v7 = [v6 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v8 = [v5 asSection];
      if (!v8 || (v9 = [v8 parentID], swift_unknownObjectRelease(), !v9))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {
      v9 = [v5 identifier];
    }

    v10 = sub_1D7D3034C();
    v12 = v11;

    v13 = [v7 purchasedTagIDs];
    v14 = sub_1D7D309AC();

    LOBYTE(v13) = sub_1D7D053C8(v10, v12, v14);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v13)
    {
      goto LABEL_31;
    }

LABEL_8:
    v15 = [objc_msgSend(v6 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v15, v15 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    v16 = MEMORY[0x1E69E7CA0];
    if (*(&v28 + 1))
    {
      sub_1D7992EFC(0, &qword_1EE0BECA0);
      if (swift_dynamicCast())
      {
        v17 = v26;
        v18 = [v26 integerValue];
        if (v18 == -1)
        {

          goto LABEL_28;
        }

        v19 = v18;
LABEL_17:
        if (objc_getAssociatedObject(v15, ~v19))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0u;
          v28 = 0u;
        }

        v29 = v27;
        v30 = v28;
        if (*(&v28 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v20 = v26;
            v21 = [v20 integerValue];

            if (((v21 ^ v19) & 1) == 0)
            {
LABEL_32:
              v25 = [v3 isPaid];
              swift_unknownObjectRelease();
              return v25 ^ 1;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_1D7C23094(&v29, &qword_1EE0BE7A0, v16 + 8);
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_28:
        v22 = [objc_msgSend(v6 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v23 = [v5 identifier];
        if (!v23)
        {
          sub_1D7D3034C();
          v23 = sub_1D7D3031C();
        }

        v24 = [v22 containsTagID_];

        if ((v24 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {
      sub_1D7C23094(&v29, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    }

    v17 = 0;
    v19 = 0;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1D7C21ED8(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2[1];
    v14[0] = *a2;
    v14[1] = v5;
    v6 = a2[3];
    v8 = *a2;
    v7 = a2[1];
    v14[2] = a2[2];
    v14[3] = v6;
    v10 = v8;
    v11 = v7;
    v9 = a2[3];
    v12 = a2[2];
    v13 = v9;
    sub_1D79F5B54(v14, v15);
    sub_1D7C198F4(&v10);

    v15[0] = v10;
    v15[1] = v11;
    v15[2] = v12;
    v15[3] = v13;
    return sub_1D7A0AD5C(v15);
  }

  return result;
}

void sub_1D7C21F80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageViewController);

    a3();
  }
}

uint64_t ModernPageViewController<>.selectedText.getter()
{
  v0 = sub_1D7D2AA6C();
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {

LABEL_5:
    type metadata accessor for NoSelectedTextProvider();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v3 = &off_1F529D870;
    goto LABEL_6;
  }

  v3 = v2;
LABEL_6:
  ObjectType = swift_getObjectType();
  v6 = (v3[1])(ObjectType, v3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1D7C220B4()
{
  v0 = sub_1D7D2AA6C();
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {

LABEL_5:
    type metadata accessor for NoSelectedTextProvider();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v3 = &off_1F529D870;
    goto LABEL_6;
  }

  v3 = v2;
LABEL_6:
  ObjectType = swift_getObjectType();
  v6 = (v3[1])(ObjectType, v3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t ArticleViewerViewController.canHandle(commandCenter:command:with:source:)()
{
  v1 = v0;
  sub_1D7D2C5BC();
  sub_1D7D2C51C();
  v2 = sub_1D7D2C28C();

  if ((v2 & 1) == 0)
  {
    sub_1D7D2C52C();
    v3 = sub_1D7D2C28C();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability), *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability + 24));
  return sub_1D7D2F9AC() & 1;
}

void sub_1D7C22294()
{
  v1 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleViewController;
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleViewController);
  if (v2)
  {
    v3 = v0;
    v4 = v2;
    sub_1D7D2A4DC();
    swift_getObjectType();
    if (qword_1EC9DFE88 != -1)
    {
      swift_once();
    }

    sub_1D7D2A7FC();
    swift_unknownObjectRelease();
    [v4 willMoveToParentViewController_];
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 removeFromSuperview];

      [v4 removeFromParentViewController];
      v7 = *(v3 + v1);
      *(v3 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7C22418()
{
  v1 = *v0;
  sub_1D7D2C5BC();
  sub_1D7D2C51C();
  v2 = sub_1D7D2C28C();

  if ((v2 & 1) == 0)
  {
    sub_1D7D2C52C();
    v3 = sub_1D7D2C28C();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability), *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability + 24));
  return sub_1D7D2F9AC() & 1;
}

void ArticleViewerViewController.show(_:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D7D2B39C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_tabBarAccessoryManager];
  if (v11 && a1 <= 4)
  {
    v57 = v8;
    v58 = v11;
    v12 = [v2 tabBarController];
    if (v12 && (v13 = v12, v14 = [v12 bottomAccessory], v13, v14))
    {
      v15 = [v14 contentView];

      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v66.origin.x = v17;
      v66.origin.y = v19;
      v66.size.width = v21;
      v66.size.height = v23;
      v24 = CGRectGetWidth(v66) < 375.0;
    }

    else
    {
      v24 = 1;
    }

    v25 = [objc_opt_self() labelColor];
    sub_1D7BB88B4(a1, v25);
    v27 = v26;
    v29 = v28;

    if (v27)
    {
      if (v24)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      sub_1D7C24CB0(v27, v29);
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = type metadata accessor for ArticleMessageLabel();
    v33 = objc_allocWithZone(v32);
    v34 = sub_1D7CA6914(v31);
    if (v34)
    {
      v35 = v34;
      v56 = v6;
      v36 = [v34 text];
      v55 = v29;
      if (v36)
      {
        v37 = v36;
        sub_1D7D3034C();
      }

      v39 = sub_1D7D3041C();

      if (v39 >= 30)
      {
        v40 = 2.5;
      }

      else
      {
        v40 = 2.0;
      }

      v63 = v32;
      v64 = sub_1D799C17C(&qword_1EC9E6E80, 255, type metadata accessor for ArticleMessageLabel);
      v61 = 0xE000000000000000;
      v62 = v35;
      v60 = 0;
      v54 = v35;
      sub_1D7D3145C();

      v60 = 0xD000000000000010;
      v61 = 0x80000001D7D795B0;
      v59 = a1;
      v41 = sub_1D7D3190C();
      MEMORY[0x1DA70DE90](v41);

      v53[0] = v61;
      v53[1] = v60;
      sub_1D7C255A0(0, &unk_1EC9E6E88, MEMORY[0x1E69D83C0], MEMORY[0x1E69E6F90]);
      v42 = sub_1D7D2B95C();
      v43 = *(v42 - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1D7D3B4E0;
      v47 = v46 + v45;
      *(v46 + v45) = v40;
      v48 = *(v43 + 104);
      v48(v46 + v45, *MEMORY[0x1E69D83B0], v42);
      v49 = *MEMORY[0x1E69D83B8];
      v50 = sub_1D7D2B94C();
      (*(*(v50 - 8) + 104))(v47 + v44, v49, v50);
      v48(v47 + v44, *MEMORY[0x1E69D83A8], v42);
      sub_1D7B236D8(v46);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1D7D2B38C();
      sub_1D7D2BA9C();
      v51 = v57;
      *(a2 + 24) = v57;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v56 + 32))(boxed_opaque_existential_1, v10, v51);
      sub_1D7C24C70(v27, v55);
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      sub_1D7C24C70(v27, v29);
      v38 = v58;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

void _s12NewsArticles27ArticleViewerViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1D7D2ACCC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_navigationItemStyle;
  sub_1D7D2ACBC();
  v5 = MEMORY[0x1E69D6538];
  sub_1D7C255A0(0, &qword_1EE0C0470, MEMORY[0x1E69D7C68], MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v4) = sub_1D7D28ECC();
  v6 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_observableScrollView;
  sub_1D7C255A0(0, &qword_1EE0C0420, sub_1D7A469D4, v5);
  swift_allocObject();
  *(v0 + v6) = sub_1D7D28ECC();
  v7 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *(v0 + v7) = sub_1D7D2A58C();
  v8 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventManager;
  sub_1D7C25604();
  swift_allocObject();
  *(v0 + v8) = sub_1D7D28C9C();
  v9 = (v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionNavigationItemStash) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureTransitions) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_hasPresentedFirstPage) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageSheetPresentationObserver) = 0;
  v10 = (v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled) = 1;
  v11 = (v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pendingPageIdentifier);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_narrativeAudioState) = 2;
  v12 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_issueCoverContainerView;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v13 = (v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_windowTitle);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController) = 0;
  *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin) = 0;
  v14 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pocketStatusBarView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D7D3160C();
  __break(1u);
}

unint64_t sub_1D7C22EA4()
{
  result = qword_1EE0C00C0;
  if (!qword_1EE0C00C0)
  {
    sub_1D7C237DC(255, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C00C0);
  }

  return result;
}

uint64_t sub_1D7C22F48(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7C255A0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7C22FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7C255A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C23024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C23094(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7999608(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1D7C23104()
{
  v1 = v0;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22[-1] - v4;
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler;
  sub_1D799CC84(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler, v22);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  result = [v0 view];
  if (result)
  {
    v15 = result;
    (*(v13 + 24))(result, v12, v13);

    __swift_destroy_boxed_opaque_existential_1(v22);
    v16 = [v0 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 toolbar];

      if (v18)
      {
        sub_1D799CC84(v1 + v11, v22);
        v19 = v23;
        v20 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v20 + 32))(v18, v19, v20);

        __swift_destroy_boxed_opaque_existential_1(v22);
      }
    }

    sub_1D7D2AA3C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_1D7C22FB4(v5, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C25538(v5, v10, type metadata accessor for ArticleViewerPage);
      sub_1D7C116B8(v10);
      return sub_1D7C23024(v10, type metadata accessor for ArticleViewerPage);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7C23404(void *a1)
{
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = aBlock - v5;
  v7 = [a1 traitCollection];
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  sub_1D7999608(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  if (IsInvertColorsEnabled)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7D41F60;
    *(v9 + 32) = v7;
    v10 = objc_opt_self();
    v11 = v7;
    *(v9 + 40) = [v10 traitCollectionWithUserInterfaceStyle_];
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7D3C670;
    *(v12 + 32) = v7;
    v13 = v7;
  }

  sub_1D7992EFC(0, &unk_1EE0BEFE0);
  v14 = sub_1D7D3062C();

  v15 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  sub_1D7C23104();
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D7C25404;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1D7A66DA0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7C138DC;
  aBlock[3] = &block_descriptor_167;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  [v16 performWithoutAnimation_];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v22 = type metadata accessor for ArticleViewerPage(0);
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_1D7C134C0(v6);

    sub_1D7C22FB4(v6, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  return result;
}

void sub_1D7C237DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D7C2385C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1D7D2D12C();
    a4();
    v6 = sub_1D7D2D2DC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7C238F4()
{
  v1 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D7C1BCE0(v7, v0 + v2, v0 + v6, v8);
}

void sub_1D7C23A34()
{
  if (!qword_1EC9E6DB0)
  {
    sub_1D798F168(255, qword_1EE0C53B8);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6DB0);
    }
  }
}

void sub_1D7C23A9C()
{
  if (!qword_1EC9E6DC0)
  {
    sub_1D798F168(255, &unk_1EE0BFEF0);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6DC0);
    }
  }
}

void sub_1D7C23B04()
{
  if (!qword_1EE0C8278)
  {
    sub_1D798F168(255, &unk_1EE0C8280);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C8278);
    }
  }
}

void sub_1D7C23B7C(_BYTE *a1)
{
  v3 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  if (*a1 == 1)
  {
    v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

    sub_1D7C1BFE0(v4);
  }
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v5 + 72);
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
        v10 = (v5 + v7[8]);
        if (*v10 >= 2)
        {
        }

        v11 = (v5 + v7[9]);
        type metadata accessor for ArticleNavigationAction();
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D79961C4();
            (*(*(v32 - 8) + 8))(v11, v32);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v33 = (v5 + v7[10]);
        v34 = v33[2];
        if ((~v34 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v33, v33[1], v34);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v5 + *(v35 + 48)), *(v5 + *(v35 + 48) + 8), *(v5 + *(v35 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v28 = sub_1D7D2CADC();
      (*(*(v28 - 8) + 8))(v0 + v3, v28);
      goto LABEL_31;
    }

    if (v14 == 1)
    {

      sub_1D7C237DC(0, &qword_1EE0C8C80, MEMORY[0x1E69B4358], sub_1D7A3A76C, type metadata accessor for InterstitialAdModel.InterstitialAd);
      v16 = *(v26 + 36);
      v17 = &qword_1EC9E4420;
      v18 = MEMORY[0x1E69B4358];
      v19 = sub_1D7A3A76C;
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7C237DC(0, qword_1EE0C8C90, MEMORY[0x1E69B4328], sub_1D79FD01C, type metadata accessor for InterstitialAdModel.InterstitialAd);
      v16 = *(v15 + 36);
      v17 = &qword_1EE0BB1E0;
      v18 = MEMORY[0x1E69B4328];
      v19 = sub_1D79FD01C;
    }

    sub_1D7C2385C(0, v17, v18, v19);
    (*(*(v27 - 8) + 8))(v5 + v16, v27);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 88);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 72), *(v5 + 80), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    v20 = type metadata accessor for ArticleViewerArticlePage(0);
    v21 = v20[7];
    v22 = sub_1D7D295CC();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
    v23 = (v5 + v20[8]);
    if (*v23 >= 2)
    {
    }

    v24 = (v5 + v20[9]);
    type metadata accessor for ArticleNavigationAction();
    v25 = swift_getEnumCaseMultiPayload();
    switch(v25)
    {
      case 2:
        sub_1D79961C4();
        (*(*(v29 - 8) + 8))(v24, v29);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v30 = (v5 + v20[10]);
    v31 = v30[2];
    if ((~v31 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v30, v30[1], v31);
    }
  }

LABEL_39:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7C24254(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

id _s12NewsArticles27ArticleViewerViewControllerC13pageBlueprint_8willShow10fromScroll03neweF008previouseF0y5TeaUI04PageH0VyAA0cdQ0OG_AMSbSo06UIViewF0CAPSgtF_0(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = v4;
  v26 = a4;
  v27 = a3;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ArticleViewerPage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
  swift_beginAccess();
  sub_1D799CC84(v4 + v16, v28);
  v17 = v29;
  v18 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v19 = (*(v18 + 96))(a2, v17, v18);
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (v19)
  {
    sub_1D799CC84(v5 + v16, v28);
    v21 = v29;
    v22 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v23 = (*(v22 + 104))(a2, v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = [v26 setAdditionalSafeAreaInsets_];
  }

  if (v27)
  {
    sub_1D7D2AA3C();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      return sub_1D7C22FB4(v10, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C25538(v10, v15, type metadata accessor for ArticleViewerPage);
      sub_1D799CC84(v5 + v16, v28);
      v24 = v29;
      v25 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v25 + 56))(a2, v15, v24, v25);
      sub_1D7C23024(v15, type metadata accessor for ArticleViewerPage);
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return result;
}

id sub_1D7C245E0()
{
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);

  return sub_1D7C1F1A0();
}

uint64_t sub_1D7C24688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C246F0()
{
  v1 = *(type metadata accessor for ArticleNavigationAction() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1D7C20094(v2, v3, v4, v5);
}

uint64_t sub_1D7C24758()
{
  v0 = sub_1D7D2B8BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CB680 != -1)
  {
    swift_once();
  }

  if (sub_1D7D2860C())
  {
    sub_1D7D2864C();
    sub_1D7D2863C();
    if (qword_1EE0CB6C8 != -1)
    {
      swift_once();
    }

    sub_1D7D2862C();

    v5 = (*(v1 + 88))(v4, v0);
    if (v5 == *MEMORY[0x1E69D8318])
    {
      return 1;
    }

    if (v5 != *MEMORY[0x1E69D8300])
    {
      if (v5 == *MEMORY[0x1E69D8310] || v5 == *MEMORY[0x1E69D8308])
      {
        return 0;
      }

      (*(v1 + 8))(v4, v0);
    }
  }

  return 2;
}

void sub_1D7C24934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7D2C5BC();
  sub_1D7D2C51C();
  v5 = sub_1D7D2C28C();

  if (v5)
  {
    sub_1D7C22294();
    sub_1D799CC84(&v2[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleModule], v39);
    v6 = v40;
    v7 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    if (a2)
    {
      sub_1D7D2B0DC();
      sub_1D798F168(0, &qword_1EE0C00A0);
      sub_1D7D28A3C();
      if (swift_dynamicCast())
      {
        a2 = v38;
      }

      else
      {
        a2 = 0;
      }
    }

    v8 = (*(v7 + 8))(a2, v6, v7);

    __swift_destroy_boxed_opaque_existential_1(v39);
    [v3 addChildViewController_];
    v9 = [v3 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v43.origin.x = v12;
      v43.origin.y = v14;
      v43.size.width = v16;
      v43.size.height = v18;
      Height = CGRectGetHeight(v43);
      v20 = [v8 view];
      if (v20)
      {
        v21 = v20;
        v22 = [v3 view];
        if (v22)
        {
          v23 = v22;
          [v22 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v44.origin.x = v25;
          v44.origin.y = v27;
          v44.size.width = v29;
          v44.size.height = v31;
          [v21 setFrame_];

          v32 = [v3 view];
          if (v32)
          {
            v33 = v32;
            v34 = [v8 view];
            if (v34)
            {
              v35 = v34;
              [v33 addSubview_];

              [v8 didMoveToParentViewController_];
              v36 = *&v3[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleViewController];
              *&v3[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleViewController] = v8;

              return;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_1D7D2C52C();
  v37 = sub_1D7D2C28C();

  if (v37)
  {

    sub_1D7C22294();
  }
}

void sub_1D7C24C70(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_1D7C24CB0(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_1D7C24DCC()
{
  result = qword_1EE0C5398;
  if (!qword_1EE0C5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5398);
  }

  return result;
}

unint64_t sub_1D7C24E24()
{
  result = qword_1EC9E6F80;
  if (!qword_1EC9E6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6F80);
  }

  return result;
}

unint64_t sub_1D7C24E7C()
{
  result = qword_1EC9E6F88;
  if (!qword_1EC9E6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6F88);
  }

  return result;
}

uint64_t sub_1D7C24ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

void sub_1D7C24FF4()
{
  if (!qword_1EE0C3300)
  {
    sub_1D798F168(255, qword_1EE0C3308);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C3300);
    }
  }
}

void sub_1D7C2505C()
{
  if (!qword_1EE0C98D0)
  {
    sub_1D7C255A0(255, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C98D0);
    }
  }
}

void sub_1D7C250F0()
{
  if (!qword_1EE0C0090)
  {
    sub_1D798F168(255, &qword_1EE0C00A0);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0090);
    }
  }
}

uint64_t sub_1D7C251C0(uint64_t a1, uint64_t a2)
{
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7C252E8()
{
  if (!qword_1EC9E6FA8)
  {
    sub_1D798F168(255, &qword_1EC9E6FA0);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6FA8);
    }
  }
}

uint64_t sub_1D7C25350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E814;

  return sub_1D7C1378C(a1, v4, v5, v6);
}

uint64_t objectdestroy_155Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7C25460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E2D8;

  return sub_1D7C128BC(a1, v4, v5, v6);
}

uint64_t sub_1D7C25538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7C255A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7C25604()
{
  if (!qword_1EE0C04B8)
  {
    sub_1D7B23AFC();
    v0 = sub_1D7D28CAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C04B8);
    }
  }
}

uint64_t sub_1D7C256A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 160))
  {
    v4 = *(v2 + 136);
    MEMORY[0x1EEE9AC00](a1, a2);
    v5 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v6, v7);

    os_unfair_lock_lock(v5 + 6);
    sub_1D7AC649C(&v10);
    os_unfair_lock_unlock(v5 + 6);

    v8 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v3 + 16);
  __swift_destroy_boxed_opaque_existential_1(v3 + 56);
  __swift_destroy_boxed_opaque_existential_1(v3 + 96);

  return v3;
}

uint64_t sub_1D7C257D4(uint64_t a1, uint64_t a2)
{
  sub_1D7C256A4(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C2583C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D7C25860, 0, 0);
}

uint64_t sub_1D7C25860()
{
  v1 = sub_1D7D304BC();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  if (v1)
  {
    v5 = v2[10];
    v6 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
    sub_1D7AF3EC8();
    v7 = swift_allocObject();
    v0[11] = v7;
    *(v7 + 16) = xmmword_1D7D3B4D0;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;

    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1D7C25A4C;

    return MEMORY[0x1EEE224A0](v7, v5, v6);
  }

  else
  {
    v9 = v2[5];
    v10 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
    sub_1D7AF3EC8();
    v11 = swift_allocObject();
    v0[14] = v11;
    *(v11 + 16) = xmmword_1D7D3B4D0;
    *(v11 + 32) = v4;
    *(v11 + 40) = v3;

    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_1D7C25D4C;

    return MEMORY[0x1EEE22170](v11, v9, v10);
  }
}

uint64_t sub_1D7C25A4C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[13] = v1;

  if (v1)
  {
    v4 = sub_1D7C2604C;
  }

  else
  {

    v4 = sub_1D7C25B70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D7C25B70()
{
  v1 = v0[13];
  v2 = v0[3];
  if (v2 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = v0[8];
    v11 = v0[9];

    sub_1D7C26354();
    swift_allocError();
    *v13 = v12;
    v13[1] = v11;
    swift_willThrow();
    v14 = v0[1];

    v14();
    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA70EF00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;
  v5 = v0[10];

  v6 = *(v5 + 136);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  v8 = *(v6 + 16);
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_1D7C263A8;
  *(v9 + 24) = v7;
  os_unfair_lock_lock(v8 + 6);
  sub_1D7C263B0();
  os_unfair_lock_unlock(v8 + 6);
  if (!v1)
  {

    v10 = v0[1];

    v10(v4);
  }
}

uint64_t sub_1D7C25D4C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[16] = v1;

  if (v1)
  {
    v4 = sub_1D7C260B0;
  }

  else
  {

    v4 = sub_1D7C25E70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D7C25E70()
{
  v1 = v0[16];
  v2 = v0[6];
  if (v2 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = v0[8];
    v11 = v0[9];

    sub_1D7C26354();
    swift_allocError();
    *v13 = v12;
    v13[1] = v11;
    swift_willThrow();
    v14 = v0[1];

    v14();
    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA70EF00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;
  v5 = v0[10];

  v6 = *(v5 + 136);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  v8 = *(v6 + 16);
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_1D7C263A8;
  *(v9 + 24) = v7;
  os_unfair_lock_lock(v8 + 6);
  sub_1D7C263B0();
  os_unfair_lock_unlock(v8 + 6);
  if (!v1)
  {

    v10 = v0[1];

    v10(v4);
  }
}

uint64_t sub_1D7C2604C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7C260B0()
{

  v1 = sub_1D7D2814C();
  v2 = [v1 fc_isUnknownItemError];

  v3 = v0[16];
  if (v2)
  {
    v4 = v0[8];
    v5 = v0[9];
    sub_1D7C26354();
    swift_allocError();
    *v6 = v4;
    v6[1] = v5;
    swift_willThrow();
  }

  else
  {
    sub_1D7C26354();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D7C261C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D7C261E4, 0, 0);
}

uint64_t sub_1D7C261E4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 96), *(*(v0 + 16) + 120));
  sub_1D7D2DC6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7C26278(void *a1)
{
  v2 = v1;
  v4 = *(*(v1 + 136) + 16);
  os_unfair_lock_lock(v4 + 6);
  sub_1D7C263EC();
  os_unfair_lock_unlock(v4 + 6);
  v5 = [a1 identifier];
  v6 = sub_1D7D3034C();
  v8 = v7;

  *(v2 + 152) = v6;
  *(v2 + 160) = v8;
}

unint64_t sub_1D7C26354()
{
  result = qword_1EC9E7010;
  if (!qword_1EC9E7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7010);
  }

  return result;
}

void sub_1D7C26404()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor__recipeWasLoaded);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_recipeLoader), *(v0 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_recipeLoader + 24));
    RecipeRouteModel.identifier.getter();
    sub_1D7D27DBC();
  }

  else
  {
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D7D29AFC();
    __swift_project_value_buffer(v3, qword_1EE0DE460);
    oslog = sub_1D7D29ADC();
    v4 = sub_1D7D30C4C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D7987000, oslog, v4, "Unable unload recipe since it's not currently loaded", v5, 2u);
      MEMORY[0x1DA7102E0](v5, -1, -1);
    }
  }
}

uint64_t sub_1D7C26594()
{
  sub_1D7C26404();
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  sub_1D7C2A718(v0 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_routeModel, type metadata accessor for RecipeRouteModel);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_paywallFactory);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_recipeLoader);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_externalRecipeFactory);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeInteractor()
{
  result = qword_1EC9E7048;
  if (!qword_1EC9E7048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7C266C4()
{
  result = type metadata accessor for RecipeRouteModel();
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

uint64_t sub_1D7C26790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  sub_1D7C29044(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  v4[23] = swift_task_alloc();
  sub_1D7C29044(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
  v4[24] = swift_task_alloc();
  v5 = sub_1D7D27D2C();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for RecipeRouteModel();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7C26928, 0, 0);
}

uint64_t sub_1D7C26928()
{
  v71 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  v3 = type metadata accessor for DebugRecipe(0);
  v4 = swift_allocBox();
  v6 = v5;
  *(v0 + 256) = v4;
  *(v0 + 264) = v5;
  v7 = OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_routeModel;
  *(v0 + 272) = OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_routeModel;
  v8 = RecipeRouteModel.identifier.getter();
  v10 = v9;
  v6[2] = 0;
  v11 = *(v3 + 24);
  *(v0 + 392) = v11;
  v12 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  *(v0 + 280) = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  *(v0 + 288) = v14;
  *(v0 + 296) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v6 + v11, 1, 1, v12);
  *v6 = v8;
  v6[1] = v10;
  sub_1D7C2AAF8(v2 + v7, v1, type metadata accessor for RecipeRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *(v0 + 248);

      v23 = *(v22 + 16);
      *(v0 + 336) = v23;
      sub_1D79AC548();
      *(v0 + 400) = *(v24 + 64);
      v25 = swift_task_alloc();
      *(v0 + 344) = v25;
      v26 = sub_1D7992EFC(0, &qword_1EE0BECC0);
      v27 = sub_1D798F168(0, &qword_1EE0BE7E0);
      *v25 = v0;
      v25[1] = sub_1D7C276F0;
      v28 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA10](v0 + 160, v23, v26, v27, v28);
    }

    else
    {
      v39 = *(v0 + 240);
      sub_1D7AD8D2C();
      v41 = v40;
      v42 = swift_projectBox();
      sub_1D7C2AAF8(v42 + *(v41 + 48), v39, type metadata accessor for RecipeRouteModel);
      v43 = RecipeRouteModel.identifier.getter();
      v45 = v44;
      sub_1D7C26354();
      v46 = swift_allocError();
      *v47 = v43;
      v47[1] = v45;
      swift_willThrow();
      sub_1D7C2A718(v39, type metadata accessor for RecipeRouteModel);

      v48 = RecipeRouteModel.identifier.getter();
      v50 = v49;
      if (qword_1EE0BB3B8 != -1)
      {
        swift_once();
      }

      v51 = sub_1D7D29AFC();
      __swift_project_value_buffer(v51, qword_1EE0DE460);

      v52 = v46;
      v53 = sub_1D7D29ADC();
      v54 = sub_1D7D30C4C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v70 = v57;
        *v55 = 136446466;
        v58 = sub_1D7B06D4C(v48, v50, &v70);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2114;
        v59 = v46;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 14) = v60;
        *v56 = v60;
        _os_log_impl(&dword_1D7987000, v53, v54, "Failed to load recipe: %{public}s - %{public}@", v55, 0x16u);
        sub_1D7C2A718(v56, sub_1D7A66A10);
        MEMORY[0x1DA7102E0](v56, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x1DA7102E0](v57, -1, -1);
        MEMORY[0x1DA7102E0](v55, -1, -1);
      }

      else
      {
      }

      v61 = *(v0 + 256);
      v63 = *(v0 + 176);
      v62 = *(v0 + 184);
      v64 = sub_1D7D3087C();
      (*(*(v64 - 8) + 56))(v62, 1, 1, v64);
      sub_1D7D3084C();

      v65 = v46;
      v66 = sub_1D7D3083C();
      v67 = swift_allocObject();
      v68 = MEMORY[0x1E69E85E0];
      v67[2] = v66;
      v67[3] = v68;
      v67[4] = v63;
      v67[5] = v46;
      v67[6] = v61;
      sub_1D7AF9808(0, 0, v62, &unk_1D7D588E0, v67);

      v69 = *(v0 + 8);

      return v69();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v29 = *(v0 + 248);
    v30 = *v29;
    sub_1D79AC454();
    sub_1D7C2A718(v29 + *(v31 + 48), type metadata accessor for RecipeRouteContext);
    *(v0 + 360) = v30;
    v32 = *(v0 + 264);
    v33 = *(v0 + 176);
    v34 = *(v32 + 16);
    *(v32 + 16) = v30;
    v35 = v30;

    sub_1D7C26278(v35);
    v36 = *(v33 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_accessChecker);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1D7C27988;
    v37 = swift_continuation_init();
    sub_1D7C2A778();
    *(v0 + 136) = v38;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D7C29098;
    *(v0 + 104) = &block_descriptor_33;
    *(v0 + 112) = v37;
    [v36 checkAccessToItem:v35 withQualityOfService:33 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v16 = *(v0 + 248);
    v18 = *v16;
    v17 = v16[1];
    *(v0 + 304) = v17;
    sub_1D79AC1E8();
    *(v0 + 396) = *(v19 + 48);
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_1D7C270C8;

    return sub_1D7C2583C(v18, v17);
  }
}

uint64_t sub_1D7C270C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = sub_1D7C27388;
  }

  else
  {
    *(v4 + 328) = a1;
    v5 = sub_1D7C2720C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7C2720C()
{
  sub_1D7C2A718(*(v0 + 248) + *(v0 + 396), type metadata accessor for RecipeRouteContext);
  v1 = *(v0 + 328);
  *(v0 + 360) = v1;
  v2 = *(v0 + 264);
  v3 = *(v0 + 176);
  v4 = *(v2 + 16);
  *(v2 + 16) = v1;
  v5 = v1;

  sub_1D7C26278(v5);
  v6 = *(v3 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_accessChecker);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D7C27988;
  v7 = swift_continuation_init();
  sub_1D7C2A778();
  *(v0 + 136) = v8;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D7C29098;
  *(v0 + 104) = &block_descriptor_33;
  *(v0 + 112) = v7;
  [v6 checkAccessToItem:v5 withQualityOfService:33 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D7C27388()
{
  v26 = v0;
  sub_1D7C2A718(*(v0 + 248) + *(v0 + 396), type metadata accessor for RecipeRouteContext);
  v1 = *(v0 + 320);
  v2 = RecipeRouteModel.identifier.getter();
  v4 = v3;
  if (qword_1EE0BB3B8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D7D29AFC();
  __swift_project_value_buffer(v5, qword_1EE0DE460);

  v6 = v1;
  v7 = sub_1D7D29ADC();
  v8 = sub_1D7D30C4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136446466;
    v12 = sub_1D7B06D4C(v2, v4, &v25);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_1D7987000, v7, v8, "Failed to load recipe: %{public}s - %{public}@", v9, 0x16u);
    sub_1D7C2A718(v10, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA7102E0](v11, -1, -1);
    MEMORY[0x1DA7102E0](v9, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 256);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = sub_1D7D3087C();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1D7D3084C();

  v19 = v1;
  v20 = sub_1D7D3083C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v17;
  v21[5] = v1;
  v21[6] = v15;
  sub_1D7AF9808(0, 0, v16, &unk_1D7D588E0, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D7C276F0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D7C28638;
  }

  else
  {
    v2 = sub_1D7C27804;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7C27804()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 248);

  sub_1D7C2A718(v2 + v1, type metadata accessor for RecipeRouteContext);
  v3 = *(v0 + 160);
  *(v0 + 360) = v3;
  v4 = *(v0 + 264);
  v5 = *(v0 + 176);
  v6 = *(v4 + 16);
  *(v4 + 16) = v3;
  v7 = v3;

  sub_1D7C26278(v7);
  v8 = *(v5 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_accessChecker);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D7C27988;
  v9 = swift_continuation_init();
  sub_1D7C2A778();
  *(v0 + 136) = v10;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D7C29098;
  *(v0 + 104) = &block_descriptor_33;
  *(v0 + 112) = v9;
  [v8 checkAccessToItem:v7 withQualityOfService:33 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D7C27988()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_1D7C289A8;
  }

  else
  {
    v2 = sub_1D7C27A98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7C27A98()
{
  v46 = v0;
  if (*(v0 + 144) == 1)
  {
    v1 = (*(v0 + 176) + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_externalRecipeFactory);
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = swift_task_alloc();
    *(v0 + 376) = v4;
    *v4 = v0;
    v4[1] = sub_1D7C2800C;
    v5 = *(v0 + 360);
    v6 = *(v0 + 224);

    return MEMORY[0x1EEE22618](v6, v5, v2, v3);
  }

  else
  {
    v7 = *(v0 + 152);
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v8 = sub_1D7D29AFC();
    __swift_project_value_buffer(v8, qword_1EE0DE460);
    v9 = sub_1D7D29ADC();
    v10 = sub_1D7D30C4C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v45[0] = v12;
      *v11 = 136315138;
      *(v0 + 168) = v7;
      type metadata accessor for FCContentAccessBlockedReason(0);
      v13 = sub_1D7D303AC();
      v15 = sub_1D7B06D4C(v13, v14, v45);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D7987000, v9, v10, "Unable to access recipe, reason=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1DA7102E0](v12, -1, -1);
      MEMORY[0x1DA7102E0](v11, -1, -1);
    }

    v16 = *(v0 + 360);
    v17 = [v16 identifier];
    v18 = sub_1D7D3034C();
    v20 = v19;

    sub_1D7C26354();
    v21 = swift_allocError();
    *v22 = v18;
    v22[1] = v20;
    swift_willThrow();

    v23 = RecipeRouteModel.identifier.getter();
    v25 = v24;
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1EE0DE460);

    v26 = v21;
    v27 = sub_1D7D29ADC();
    v28 = sub_1D7D30C4C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45[0] = v31;
      *v29 = 136446466;
      v32 = sub_1D7B06D4C(v23, v25, v45);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2114;
      v33 = v21;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v34;
      *v30 = v34;
      _os_log_impl(&dword_1D7987000, v27, v28, "Failed to load recipe: %{public}s - %{public}@", v29, 0x16u);
      sub_1D7C2A718(v30, sub_1D7A66A10);
      MEMORY[0x1DA7102E0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1DA7102E0](v31, -1, -1);
      MEMORY[0x1DA7102E0](v29, -1, -1);
    }

    else
    {
    }

    v35 = *(v0 + 256);
    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = sub_1D7D3087C();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    sub_1D7D3084C();

    v39 = v21;
    v40 = sub_1D7D3083C();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v37;
    v41[5] = v21;
    v41[6] = v35;
    sub_1D7AF9808(0, 0, v36, &unk_1D7D588E0, v41);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_1D7C2800C()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1D7C28CF8;
  }

  else
  {
    v2 = sub_1D7C28120;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7C28120()
{
  v46 = v0;
  v44 = *(v0 + 384);
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = *(v0 + 392);
  v4 = *(v0 + 264);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  (*(*(v0 + 208) + 16))(v5, *(v0 + 224), *(v0 + 200));
  sub_1D7C6A81C(v5, v6);
  v1(v6, 0, 1, v2);
  sub_1D7C2A88C(v6, v4 + v3);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_recipeLoader), *(v7 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_recipeLoader + 24));
  sub_1D7D27DAC();
  v8 = *(v0 + 360);
  if (v44)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));

    v9 = RecipeRouteModel.identifier.getter();
    v11 = v10;
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D7D29AFC();
    __swift_project_value_buffer(v12, qword_1EE0DE460);

    v13 = v44;
    v14 = sub_1D7D29ADC();
    v15 = sub_1D7D30C4C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v45 = v18;
      *v16 = 136446466;
      v19 = sub_1D7B06D4C(v9, v11, &v45);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2114;
      v20 = v44;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v21;
      *v17 = v21;
      _os_log_impl(&dword_1D7987000, v14, v15, "Failed to load recipe: %{public}s - %{public}@", v16, 0x16u);
      sub_1D7C2A718(v17, sub_1D7A66A10);
      MEMORY[0x1DA7102E0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1DA7102E0](v18, -1, -1);
      MEMORY[0x1DA7102E0](v16, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 256);
    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    v37 = sub_1D7D3087C();
    (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
    sub_1D7D3084C();

    v38 = v44;
    v39 = sub_1D7D3083C();
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E85E0];
    v40[2] = v39;
    v40[3] = v41;
    v40[4] = v36;
    v40[5] = v44;
    v40[6] = v34;
    sub_1D7AF9808(0, 0, v35, &unk_1D7D588E0, v40);
  }

  else
  {
    v22 = *(v0 + 256);
    v23 = *(v0 + 224);
    v24 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v27 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor__recipeWasLoaded);
    os_unfair_lock_lock((v28 + 20));
    *(v28 + 16) = 1;
    os_unfair_lock_unlock((v28 + 20));
    v29 = sub_1D7D3087C();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
    sub_1D7D3084C();
    v30 = v8;

    v31 = sub_1D7D3083C();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v27;
    v32[5] = v30;
    v32[6] = v22;
    sub_1D7AF94C0(0, 0, v26, &unk_1D7D588F0, v32);

    (*(v25 + 8))(v23, v24);
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1D7C28638()
{
  v28 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 248);

  sub_1D7C2A718(v2 + v1, type metadata accessor for RecipeRouteContext);
  v3 = *(v0 + 352);
  v4 = RecipeRouteModel.identifier.getter();
  v6 = v5;
  if (qword_1EE0BB3B8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D7D29AFC();
  __swift_project_value_buffer(v7, qword_1EE0DE460);

  v8 = v3;
  v9 = sub_1D7D29ADC();
  v10 = sub_1D7D30C4C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136446466;
    v14 = sub_1D7B06D4C(v4, v6, &v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2114;
    v15 = v3;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_1D7987000, v9, v10, "Failed to load recipe: %{public}s - %{public}@", v11, 0x16u);
    sub_1D7C2A718(v12, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA7102E0](v13, -1, -1);
    MEMORY[0x1DA7102E0](v11, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 256);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = sub_1D7D3087C();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1D7D3084C();

  v21 = v3;
  v22 = sub_1D7D3083C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v19;
  v23[5] = v3;
  v23[6] = v17;
  sub_1D7AF9808(0, 0, v18, &unk_1D7D588E0, v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D7C289A8()
{
  v27 = v0;
  v1 = v0[45];
  swift_willThrow();

  v2 = v0[46];
  v3 = RecipeRouteModel.identifier.getter();
  v5 = v4;
  if (qword_1EE0BB3B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D7D29AFC();
  __swift_project_value_buffer(v6, qword_1EE0DE460);

  v7 = v2;
  v8 = sub_1D7D29ADC();
  v9 = sub_1D7D30C4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136446466;
    v13 = sub_1D7B06D4C(v3, v5, &v26);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2114;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_1D7987000, v8, v9, "Failed to load recipe: %{public}s - %{public}@", v10, 0x16u);
    sub_1D7C2A718(v11, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA7102E0](v12, -1, -1);
    MEMORY[0x1DA7102E0](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[32];
  v18 = v0[22];
  v17 = v0[23];
  v19 = sub_1D7D3087C();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_1D7D3084C();

  v20 = v2;
  v21 = sub_1D7D3083C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v18;
  v22[5] = v2;
  v22[6] = v16;
  sub_1D7AF9808(0, 0, v17, &unk_1D7D588E0, v22);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D7C28CF8()
{
  v26 = v0;

  v1 = *(v0 + 384);
  v2 = RecipeRouteModel.identifier.getter();
  v4 = v3;
  if (qword_1EE0BB3B8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D7D29AFC();
  __swift_project_value_buffer(v5, qword_1EE0DE460);

  v6 = v1;
  v7 = sub_1D7D29ADC();
  v8 = sub_1D7D30C4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136446466;
    v12 = sub_1D7B06D4C(v2, v4, &v25);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_1D7987000, v7, v8, "Failed to load recipe: %{public}s - %{public}@", v9, 0x16u);
    sub_1D7C2A718(v10, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA7102E0](v11, -1, -1);
    MEMORY[0x1DA7102E0](v9, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 256);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = sub_1D7D3087C();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1D7D3084C();

  v19 = v1;
  v20 = sub_1D7D3083C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v17;
  v21[5] = v1;
  v21[6] = v15;
  sub_1D7AF9808(0, 0, v16, &unk_1D7D588E0, v21);

  v23 = *(v0 + 8);

  return v23();
}

void sub_1D7C29044(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C29098(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1D798F168(0, &qword_1EE0BE7E0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x1EEE6DEE8](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = a3;

    return MEMORY[0x1EEE6DEE0](v7);
  }
}

uint64_t sub_1D7C29170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1D7C29044(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  v5[10] = swift_task_alloc();
  v6 = sub_1D7D2C82C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1D7D2C83C();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for RecipeViewModel(0);
  v5[20] = swift_task_alloc();
  type metadata accessor for RecipeRouteContext();
  v5[21] = swift_task_alloc();
  type metadata accessor for DebugRecipe(0);
  v5[22] = swift_task_alloc();
  v8 = sub_1D7D29A8C();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_projectBox();
  v5[27] = sub_1D7D3084C();
  v5[28] = sub_1D7D3083C();
  v10 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C29430, v10, v9);
}

char *sub_1D7C29430()
{
  v1 = v0[8];

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_paywallFactory), *(v1 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_paywallFactory + 24));
  sub_1D7D2972C();
  if (qword_1EC9DFD40 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  sub_1D79F3AB0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3B4D0;
  v4 = [v2 identifier];
  v5 = sub_1D7D3034C();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D79D6AE0();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    goto LABEL_12;
  }

  v8 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  swift_beginAccess();
  sub_1D7C2AAF8(v8, v9, type metadata accessor for DebugRecipe);
  RecipeRouteModel.context.getter(v10);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v35 = v0[24];
    v34 = v0[25];
    v37 = v0[22];
    v36 = v0[23];
    v38 = v0[21];
    swift_unknownObjectRelease();
    sub_1D7C2A718(v38, type metadata accessor for RecipeRouteContext);
    sub_1D7C2A718(v37, type metadata accessor for DebugRecipe);
    (*(v35 + 8))(v34, v36);
    goto LABEL_12;
  }

  v12 = result;
  v13 = *&result[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier + 8];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];
  v17 = v0[19];
  v18 = v0[20];
  v52 = v0[18];
  v19 = v0[9];
  v20 = *&result[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier];
  sub_1D7C2AAF8(v0[22], v18 + *(v17 + 24), type metadata accessor for DebugRecipe);
  (*(v15 + 16))(v18 + *(v17 + 28), v14, v16);
  *v18 = v20;
  *(v18 + 8) = v13;
  *(v18 + 16) = v19;

  v21 = v19;
  sub_1D7C364B8(v18);
  sub_1D7C2C878(v21, v14);
  sub_1D7D2A54C();
  _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
  sub_1D7C2AAF8(v18, v52, type metadata accessor for RecipeViewModel);
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContext;
  swift_beginAccess();
  sub_1D7C2A9D4(v52, &v12[v22]);
  swift_endAccess();
  sub_1D7C2AED8();
  sub_1D7C2A718(v52, type metadata accessor for RecipeViewController.RecipeLoadContext);
  v23 = *&v12[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController];
  if (!v23)
  {
    v54 = v0[23];
    v56 = v0[25];
    v49 = v0[22];
    v51 = v0[24];
    v46 = v0[20];
    v47 = v0[21];
    v39 = v0[15];
    v40 = v0[16];
    v42 = v0[13];
    v41 = v0[14];
    v43 = v0[11];
    v44 = v0[12];
    (*(v39 + 104))(v40, *MEMORY[0x1E69D8828], v41);
    (*(v44 + 104))(v42, *MEMORY[0x1E69D8848], v43);
    sub_1D7D2A56C();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v42, v43);
    (*(v39 + 8))(v40, v41);
    sub_1D7C2A718(v46, type metadata accessor for RecipeViewModel);
    sub_1D7C2A718(v47, type metadata accessor for RecipeRouteContext);
    sub_1D7C2A718(v49, type metadata accessor for DebugRecipe);
    (*(v51 + 8))(v56, v54);
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v24 = v23;
  result = [v24 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = v0[24];
  v53 = v0[23];
  v55 = v0[25];
  v27 = v0[20];
  v48 = v0[21];
  v50 = v0[22];
  v28 = v0[10];
  [result setHidden_];

  v29 = sub_1D7D3087C();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  v30 = v24;
  swift_unknownObjectRetain();
  v31 = sub_1D7D3083C();
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E85E0];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v30;
  v32[5] = v12;
  sub_1D7AF94C0(0, 0, v28, &unk_1D7D588F8, v32);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D7C2A718(v27, type metadata accessor for RecipeViewModel);
  sub_1D7C2A718(v48, type metadata accessor for RecipeRouteContext);
  sub_1D7C2A718(v50, type metadata accessor for DebugRecipe);
  (*(v26 + 8))(v55, v53);
LABEL_12:

  v45 = v0[1];

  return v45();
}

uint64_t sub_1D7C29B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_1D7D2C82C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_1D7D2C83C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_1D7D2EFAC();
  v5[14] = v8;
  v9 = *(v8 - 8);
  v5[15] = v9;
  v5[16] = *(v9 + 64);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_1D7B73A80();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = *(type metadata accessor for DebugRecipe(0) - 8);
  v5[21] = v10;
  v5[22] = *(v10 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_projectBox();
  sub_1D7D3084C();
  v5[26] = sub_1D7D3083C();
  v12 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C29DC0, v12, v11);
}

uint64_t sub_1D7C29DC0()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    swift_beginAccess();
    sub_1D7C2AAF8(v2, v3, type metadata accessor for DebugRecipe);
    v8 = off_1F52ACD08;
    type metadata accessor for RecipeDataManager();
    v8();
    sub_1D7C2AAF8(v4, v5, sub_1D7B73A80);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      if (qword_1EC9DFE48 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 160);
      v10 = *(v0 + 144);
      v11 = *(v0 + 112);
      v12 = *(v0 + 120);
      v13 = __swift_project_value_buffer(v11, qword_1EC9E6718);
      (*(v12 + 16))(v10, v13, v11);
      sub_1D7C2A718(v9, sub_1D7B73A80);
    }

    else
    {
      v14 = *(v0 + 152);
      v15 = *(v0 + 144);
      v16 = *(v0 + 112);
      v17 = *(v0 + 120);
      sub_1D7C2A718(*(v0 + 160), sub_1D7B73A80);
      (*(v17 + 32))(v15, v14, v16);
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = *(v0 + 192);
      v52 = v20;
      v40 = *(v0 + 184);
      v43 = *(v0 + 168);
      v21 = *(v0 + 136);
      v22 = *(v0 + 144);
      v23 = *(v0 + 120);
      v42 = *(v0 + 128);
      v24 = *(v0 + 112);
      v46 = *(v0 + 96);
      v47 = *(v0 + 88);
      v48 = *(v0 + 104);
      v50 = *(v0 + 80);
      v51 = v22;
      v49 = *(v0 + 72);
      v25 = *(v0 + 56);
      v44 = *(v0 + 64);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = v19;
      v27 = v24;
      v45 = v24;
      (*(v23 + 16))(v21, v22, v24);
      sub_1D7C2AAF8(v20, v40, type metadata accessor for DebugRecipe);
      v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v29 = (v42 + *(v43 + 80) + v28) & ~*(v43 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v26;
      *(v30 + 24) = v25;
      (*(v23 + 32))(v30 + v28, v21, v27);
      sub_1D7AE4558(v40, v30 + v29);
      v31 = (v41 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onFailedToLoadRecipeBlock);
      v32 = *(v41 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onFailedToLoadRecipeBlock);
      *v31 = sub_1D7C2AB60;
      v31[1] = v30;

      v33 = v25;
      sub_1D79AD740(v32);

      (*(v46 + 104))(v48, *MEMORY[0x1E69D8828], v47);
      (*(v49 + 104))(v50, *MEMORY[0x1E69D8848], v44);
      sub_1D7D2A56C();
      swift_unknownObjectRelease();
      (*(v49 + 8))(v50, v44);
      (*(v46 + 8))(v48, v47);
      (*(v23 + 8))(v51, v45);
      sub_1D7C2A718(v52, type metadata accessor for DebugRecipe);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = *(v0 + 192);
      v35 = *(v0 + 144);
      v36 = *(v0 + 112);
      v37 = *(v0 + 120);
      swift_unknownObjectRelease();
      (*(v37 + 8))(v35, v36);
      sub_1D7C2A718(v34, type metadata accessor for DebugRecipe);
    }
  }

  **(v0 + 40) = Strong == 0;

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D7C2A310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E2D8;

  return sub_1D7C29B48(a1, v4, v5, v6, v7);
}

uint64_t sub_1D7C2A3D8(void *a1)
{
  sub_1D7C29044(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v26 - v5;
  v6 = sub_1D7D29A8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_paywallFactory), *(v1 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_paywallFactory + 24));
  sub_1D7D2972C();
  if (qword_1EC9DFD40 != -1)
  {
    swift_once();
  }

  sub_1D79F3AB0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7D3B4D0;
  v12 = [a1 identifier];
  v13 = sub_1D7D3034C();
  v15 = v14;

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D79D6AE0();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v16 = (*(v7 + 88))(v10, v6);
  LODWORD(v11) = *MEMORY[0x1E69B6C58];
  result = (*(v7 + 8))(v10, v6);
  if (v16 == v11)
  {
    v18 = *(v26 + 32);
    v19 = [a1 identifier];
    v20 = sub_1D7D3034C();
    v22 = v21;

    v23 = sub_1D7D3087C();
    v24 = v27;
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v18;
    v25[5] = v20;
    v25[6] = v22;
    swift_unknownObjectRetain();
    sub_1D7AF94C0(0, 0, v24, &unk_1D7D58900, v25);
  }

  return result;
}

uint64_t sub_1D7C2A718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7C2A778()
{
  if (!qword_1EC9E7058)
  {
    sub_1D7C2A7F8();
    sub_1D798F168(255, &qword_1EE0BE7E0);
    v0 = sub_1D7D308FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7058);
    }
  }
}

void sub_1D7C2A7F8()
{
  if (!qword_1EC9E7060)
  {
    type metadata accessor for FCContentAccessBlockedReason(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E7060);
    }
  }
}

uint64_t sub_1D7C2A88C(uint64_t a1, uint64_t a2)
{
  sub_1D7C29044(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C2A90C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E814;

  return sub_1D7C29170(a1, v4, v5, v6, v7);
}

uint64_t sub_1D7C2A9D4(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  (*(*(Context - 8) + 24))(a2, a1, Context);
  return a2;
}

uint64_t sub_1D7C2AA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E814;

  return sub_1D7C2D8E4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D7C2AAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7C2AB60(uint64_t a1)
{
  v3 = *(sub_1D7D2EFAC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for DebugRecipe(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1D7C2DD58(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_1D7C2AC38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D7A4E814;

  return sub_1D7C261C0(a1, v4, v5, v6, v7, v8);
}

id sub_1D7C2AD00()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1D7D2951C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 view];
  if (result)
  {
    v9 = result;
    sub_1D7D3109C();

    sub_1D7C32358(&qword_1EC9E7178, type metadata accessor for RecipeViewController);
    sub_1D7D2B9DC();
    sub_1D7D2950C();
    v10 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_contentViewController;
    swift_beginAccess();
    v11 = *&v1[v10];
    if (v11)
    {
      swift_endAccess();
      v12 = v11;
      sub_1D7D2953C();

      return (*(v3 + 8))(v7, v2);
    }

    else
    {
      (*(v3 + 8))(v7, v2);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7C2AED8()
{
  Context = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  MEMORY[0x1EEE9AC00](Context, v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RecipeViewModel(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25[-v12];
  v14 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContext;
  swift_beginAccess();
  sub_1D7C323A0(&v0[v14], v4, type metadata accessor for RecipeViewController.RecipeLoadContext);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = type metadata accessor for RecipeViewController.RecipeLoadContext;
    v24 = v4;
    return sub_1D7C32408(v24, v23);
  }

  sub_1D7C32800(v4, v13, type metadata accessor for RecipeViewModel);
  v15 = *&v0[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController];
  if (!v15)
  {
LABEL_5:
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7C323A0(v13, v9, type metadata accessor for RecipeViewModel);
    v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_1D7C32800(v9, v20 + v19, type metadata accessor for RecipeViewModel);
    v21 = &v0[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onPresentedRecipeBlock];
    v22 = *&v0[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onPresentedRecipeBlock];
    *v21 = sub_1D7C32468;
    v21[1] = v20;

    sub_1D79AD740(v22);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7A494D4(v0);
      swift_unknownObjectRelease();
    }

    v25[7] = 0;
    sub_1D7D28C6C();
    v23 = type metadata accessor for RecipeViewModel;
    v24 = v13;
    return sub_1D7C32408(v24, v23);
  }

  result = [v15 view];
  if (result)
  {
    v17 = result;
    [result setHidden_];

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1D7C2B1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong view];

    if (v6)
    {
      v7 = [v6 window];

      if (v7)
      {
        v8 = [v7 windowScene];

        if (v8)
        {
          v9 = [*(a3 + 16) title];
          if (!v9)
          {
            sub_1D7D3034C();
            v9 = sub_1D7D3031C();
          }

          [v8 setTitle_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1D7C2B334()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D7C26404();
  swift_unknownObjectRelease();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D7C2B7DC()
{
  type metadata accessor for RecipeSession();
  if (v0 <= 0x3F)
  {
    sub_1D7D3024C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RecipeViewController.RecipeLoadContext(319);
      if (v2 <= 0x3F)
      {
        sub_1D7C32570(319, &qword_1EC9E7128, MEMORY[0x1E69E6370], MEMORY[0x1E69E8698]);
        if (v3 <= 0x3F)
        {
          sub_1D7C32570(319, &unk_1EC9E7130, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
          if (v4 <= 0x3F)
          {
            sub_1D7C32570(319, &qword_1EC9E7210, MEMORY[0x1E69E6158], MEMORY[0x1E69E8698]);
            if (v5 <= 0x3F)
            {
              sub_1D7C32570(319, &qword_1EC9E7140, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

id sub_1D7C2BB18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7D2918C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v43 = &v38 - v8;
  v42 = sub_1D7D2C82C();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2C83C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1D7D2C98C();
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v44.receiver = v1;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  objc_msgSendSuper2(&v44, sel_viewDidLoad, v20);
  result = [v1 view];
  if (result)
  {
    v22 = result;
    sub_1D7D310BC();
    sub_1D7D2C95C();
    sub_1D7D310CC();

    sub_1D7D2A57C();
    v23 = sub_1D7D2B7FC();
    v24 = sub_1D7D2B7DC();
    v25 = MEMORY[0x1E69D8270];
    v17[3] = v23;
    v17[4] = v25;
    *v17 = v24;
    (*(v14 + 104))(v17, *MEMORY[0x1E69D8818], v13);
    v26 = v42;
    (*(v9 + 104))(v12, *MEMORY[0x1E69D8850], v42);
    sub_1D7D2A56C();
    (*(v9 + 8))(v12, v26);
    (*(v14 + 8))(v17, v13);
    v27 = *(*&v1[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler] + 32);
    v28 = v43;
    sub_1D7D3085C();
    v29 = sub_1D7D3087C();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v27;
    swift_unknownObjectRetain();
    sub_1D7AF94C0(0, 0, v28, &unk_1D7D58BD8, v30);

    v31 = [v1 traitCollection];
    result = [v1 view];
    if (result)
    {
      v32 = result;

      v33 = [objc_opt_self() systemBackgroundColor];
      [v32 setBackgroundColor_];

      sub_1D7B239EC(&unk_1F529B140);
      v34 = v38;
      sub_1D7D2917C();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1D7D28C7C();

      (*(v39 + 8))(v34, v40);

      sub_1D798EB5C(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1D7D3B4D0;
      v36 = sub_1D7D2C9FC();
      v37 = MEMORY[0x1E69DC130];
      *(v35 + 32) = v36;
      *(v35 + 40) = v37;
      sub_1D7D30DCC();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C2C150()
{
  Context = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  MEMORY[0x1EEE9AC00](Context, v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for RecipeViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContext;
    swift_beginAccess();
    sub_1D7C323A0(v9 + v10, v3, type metadata accessor for RecipeViewController.RecipeLoadContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7C32800(v3, v7, type metadata accessor for RecipeViewModel);
      sub_1D7C2A3D8(v7[2]);

      v11 = type metadata accessor for RecipeViewModel;
      v12 = v7;
    }

    else
    {

      v11 = type metadata accessor for RecipeViewController.RecipeLoadContext;
      v12 = v3;
    }

    return sub_1D7C32408(v12, v11);
  }

  return result;
}

uint64_t sub_1D7C2C34C(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D7A494E0(v2);
    swift_unknownObjectRelease();
  }

  return sub_1D7D28C6C();
}

uint64_t sub_1D7C2C528()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewSafeAreaInsetsDidChange);
  sub_1D7C32358(&qword_1EC9E7178, type metadata accessor for RecipeViewController);
  result = sub_1D7D2B9DC();
  v6 = &v0[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets];
  if ((v0[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets + 32] & 1) == 0 && (v6[1] != v3 || v6[3] != v5))
  {
    v8 = &v0[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_parallaxX];
    *v8 = 0;
    v8[8] = 1;
    v9 = v2;
    v10 = v4;
    v11 = v3;
    v12 = v5;
    result = sub_1D7C2AD00();
    v5 = v12;
    v3 = v11;
    v4 = v10;
    v2 = v9;
  }

  *v6 = v2;
  v6[1] = v3;
  *(v6 + 2) = v4;
  v6[3] = v5;
  *(v6 + 32) = 0;
  return result;
}

uint64_t sub_1D7C2C714()
{
  result = type metadata accessor for RecipeViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7C2C7BC()
{
  result = sub_1D7992EFC(319, &qword_1EE0BECC0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebugRecipe(319);
    if (v2 <= 0x3F)
    {
      result = sub_1D7D29A8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D7C2C878(void *a1, uint64_t a2)
{
  v3 = v2;
  v143 = a2;
  v141 = a1;
  ObjectType = swift_getObjectType();
  v119 = sub_1D7D29A8C();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v4);
  v117 = (&v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_1D7D2951C();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v6);
  v113 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D7D27E5C();
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v8);
  v131 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1D7D27E7C();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v10);
  v140 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1D7D27E6C();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v12);
  v144 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1D7D27E9C();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v14);
  v129 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D3024C();
  v17 = *(v16 - 8);
  v146 = v16;
  v147 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v135 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E8698];
  sub_1D7C32570(0, &qword_1EC9E7128, MEMORY[0x1E69E6370], MEMORY[0x1E69E8698]);
  v22 = v21;
  v145 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v110 - v24;
  sub_1D7C32570(0, &qword_1EC9E7210, MEMORY[0x1E69E6158], v20);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v110 - v30;
  v32 = sub_1D7D27E3C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D7D29A4C();
  v111 = v33;
  v38 = *(v33 + 104);
  v39 = MEMORY[0x1E69973A8];
  if ((v37 & 1) == 0)
  {
    v39 = MEMORY[0x1E69973A0];
  }

  v40 = *v39;
  v142 = v36;
  v112 = v32;
  v38(v36, v40, v32);
  v41 = [v141 identifier];
  v128 = sub_1D7D3034C();
  v141 = v42;
  v43 = *&v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier + 8];
  if (!v43)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v121 = *&v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier];
  v124 = v28;
  v44 = *(v28 + 16);
  v123 = v31;
  v125 = v27;
  v44(v31, &v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeViewSessionIDStream], v27);
  v122 = v43;

  v120 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
  v45 = *(v145 + 16);
  v126 = v25;
  v127 = v22;
  v45(v25, &v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_isPrimaryStream], v22);
  v46 = v135;
  (*(v147 + 16))(v135, &v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_scope], v146);
  (*(v136 + 104))(v144, *MEMORY[0x1E69973C0], v137);
  (*(v138 + 104))(v140, *MEMORY[0x1E69973C8], v139);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_featureAvailability], *&v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_featureAvailability + 24]);
  if (sub_1D7D2FA0C())
  {
    v47 = *&v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_appConfigManager];
    v48 = [v47 appConfiguration];
    if (([v48 respondsToSelector_] & 1) == 0)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v49 = [v48 exportToGroceryListTipTitle];
    if (v49)
    {
      v50 = v49;
      v139 = sub_1D7D3034C();
    }

    else
    {
      v139 = 0;
    }

    v57 = [v47 appConfiguration];
    if (([v57 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_34;
    }

    swift_unknownObjectRelease();
    v58 = [v57 exportToGroceryListTipMessage];
    swift_unknownObjectRelease();
    v51 = v46;
    if (v58)
    {
      sub_1D7D3034C();
    }

    v53 = v133;
    v54 = v132;
    v56 = v130;
    v55 = v131;
    sub_1D7D27E4C();
    v52 = MEMORY[0x1E69973B0];
  }

  else
  {
    v51 = v46;

    v52 = MEMORY[0x1E69973B8];
    v53 = v133;
    v54 = v132;
    v55 = v131;
    v56 = v130;
  }

  (*(v56 + 104))(v55, *v52, v54);
  sub_1D7D2954C();
  v59 = v129;
  sub_1D7D27E8C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v60 = v51;
  v61 = v123;
  v62 = v126;
  v63 = sub_1D7D2952C();

  (*(v53 + 8))(v59, v134);
  (*(v147 + 8))(v60, v146);
  (*(v145 + 8))(v62, v127);
  (*(v124 + 8))(v61, v125);

  v64 = v63;
  [v3 addChildViewController_];
  v65 = [v3 view];
  if (!v65)
  {
    goto LABEL_28;
  }

  v66 = v65;
  v67 = [v64 view];
  if (!v67)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v68 = v67;
  [v66 addSubview_];

  v69 = [v64 view];
  if (!v69)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v70 = [v3 view];
  if (!v70)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v71 = v70;
  [v70 bounds];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;

  [v69 setFrame_];
  v80 = [v64 view];

  if (!v80)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v80 setAutoresizingMask_];

  [v64 didMoveToParentViewController_];
  sub_1D7C32358(&qword_1EC9E7178, type metadata accessor for RecipeViewController);
  sub_1D7D2B9DC();
  v81 = v113;
  sub_1D7D2950C();
  sub_1D7D2953C();
  (*(v114 + 8))(v81, v115);
  v82 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_contentViewController;
  swift_beginAccess();
  v83 = *&v3[v82];
  *&v3[v82] = v64;
  v84 = v64;

  v85 = v118;
  v86 = v117;
  v87 = v119;
  (*(v118 + 16))(v117, v143, v119);
  if ((*(v85 + 88))(v86, v87) != *MEMORY[0x1E69B6C50])
  {

    (*(v111 + 8))(v142, v112);
    (*(v85 + 8))(v86, v87);
    return;
  }

  (*(v85 + 96))(v86, v87);
  sub_1D79E14FC(v86, v149);
  sub_1D7C32358(&qword_1EC9E7190, type metadata accessor for RecipeViewController);
  v88 = sub_1D7D298EC();
  swift_allocObject();
  v89 = v3;
  v90 = sub_1D7D298DC();
  __swift_project_boxed_opaque_existential_1(v149, v149[3]);
  v148[3] = v88;
  v148[4] = MEMORY[0x1E69B6BF0];
  v148[0] = v90;

  v91 = sub_1D7D296DC();
  __swift_destroy_boxed_opaque_existential_1(v148);
  sub_1D7C32358(&qword_1EC9E7198, type metadata accessor for RecipeViewController);
  swift_unknownObjectRetain();
  sub_1D7D297AC();
  v92 = v91;
  [v89 addChildViewController_];
  v93 = [v89 view];
  if (!v93)
  {
    goto LABEL_35;
  }

  v94 = v93;
  v95 = [v92 view];
  if (!v95)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v96 = v95;
  [v94 addSubview_];

  [v92 didMoveToParentViewController_];
  v97 = [v92 view];

  if (!v97)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v98 = [v89 view];
  if (v98)
  {
    v99 = v98;
    [v98 bounds];
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;

    [v97 setFrame_];
    v108 = [v92 view];

    if (v108)
    {
      [v108 setAccessibilityViewIsModal_];

      (*(v111 + 8))(v142, v112);
      v109 = *&v89[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController];
      *&v89[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController] = v92;

      __swift_destroy_boxed_opaque_existential_1(v149);
      return;
    }

    goto LABEL_39;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1D7C2D8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1D7D2C82C();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_1D7D2C83C();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  sub_1D7D3084C();
  v5[12] = sub_1D7D3083C();
  v9 = sub_1D7D307DC();
  v5[13] = v9;
  v5[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D7C2DA34, v9, v8);
}

uint64_t sub_1D7C2DA34()
{
  *(v0 + 120) = sub_1D7D2979C();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1D7C2DAE0;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1D7C2DAE0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1D7C32F94;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1D7C2DC24;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D7C2DC24()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v3 + 104))(v1, *MEMORY[0x1E69D8828], v2);
  (*(v5 + 104))(v4, *MEMORY[0x1E69D8848], v6);
  sub_1D7D2A56C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

void sub_1D7C2DD58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v8 = type metadata accessor for DebugRecipe(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = sub_1D7D2EFAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = a1;
    v18 = Strong;
    v19 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();

    if (v19)
    {
    }

    else
    {
      (*(v13 + 16))(v16, a4, v12);
      v28[3] = type metadata accessor for AlertRecipeUnavailable();
      v28[4] = sub_1D7C32358(&unk_1EC9E71A0, type metadata accessor for AlertRecipeUnavailable);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      v21 = a3;
      AlertRecipeUnavailable.init(error:offlineModel:)(a3, v16, boxed_opaque_existential_1);
      sub_1D7D2C18C();
      swift_allocObject();
      sub_1D7D2C13C();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = v18;

      sub_1D7D2C15C();

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1D7C323A0(v27, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugRecipe);
      v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      sub_1D7C32800(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for DebugRecipe);

      sub_1D7D2C17C();

      sub_1D7D2C14C();
    }
  }
}

void sub_1D7C2E0D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1D7D30D5C();

    if (v2)
    {
      v3 = [v2 popViewControllerAnimated_];
    }
  }
}

uint64_t sub_1D7C2E15C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DebugRecipe(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20 - v10;
  v12 = sub_1D7D3087C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1D7C323A0(a2, v7, type metadata accessor for DebugRecipe);
  sub_1D7D3084C();

  v15 = sub_1D7D3083C();
  v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v15;
  v17[3] = v18;
  v17[4] = v13;
  sub_1D7C32800(v7, v17 + v16, type metadata accessor for DebugRecipe);

  sub_1D7AF94C0(0, 0, v11, &unk_1D7D58BD0, v17);
}

uint64_t sub_1D7C2E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1D7D3084C();
  v5[7] = sub_1D7D3083C();
  v7 = sub_1D7D307DC();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D7C2E464, v7, v6);
}

uint64_t sub_1D7C2E464()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_radarReporter);
    v0[11] = v2;
    v2;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1D7C2E578;
    v4 = v0[6];

    return sub_1D7C036B0(v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D7C2E578()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D7C2E6B8, v4, v3);
}

uint64_t sub_1D7C2E6B8()
{
  v1 = *(v0 + 80);

  v2 = v1;
  v3 = sub_1D7D30D5C();

  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = [v3 popViewControllerAnimated_];

    v4 = v5;
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1D7C2E774(char a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for RecipeViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Context = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  MEMORY[0x1EEE9AC00](Context, v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24[-v13];
  if ((a1 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContext;
    swift_beginAccess();
    sub_1D7C323A0(v1 + v15, v14, type metadata accessor for RecipeViewController.RecipeLoadContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      v17 = type metadata accessor for RecipeViewController.RecipeLoadContext;
      v18 = v14;
    }

    else
    {
      sub_1D7C32800(v14, v6, type metadata accessor for RecipeViewModel);
      v19 = v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets;
      if (*(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets + 32) == 1)
      {
        sub_1D7C32358(&qword_1EC9E7178, type metadata accessor for RecipeViewController);
        sub_1D7D2B9DC();
        *v19 = v20;
        *(v19 + 8) = v21;
        *(v19 + 16) = v22;
        *(v19 + 24) = v23;
        *(v19 + 32) = 0;
      }

      sub_1D7C323A0(v6, v10, type metadata accessor for RecipeViewModel);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1D7C32508(v10, v1 + v15, type metadata accessor for RecipeViewController.RecipeLoadContext);
      swift_endAccess();
      sub_1D7C2AED8();
      sub_1D7C32408(v10, type metadata accessor for RecipeViewController.RecipeLoadContext);
      v17 = type metadata accessor for RecipeViewModel;
      v18 = v6;
    }

    sub_1D7C32408(v18, v17);
  }
}