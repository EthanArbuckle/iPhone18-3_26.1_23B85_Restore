uint64_t sub_1D7CC735C(uint64_t a1)
{
  v2 = type metadata accessor for EndOfArticleFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7CC73B8()
{
  if (!qword_1EC9E83E0)
  {
    type metadata accessor for EndOfArticleFeedGroup();
    sub_1D7CC7428();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E83E0);
    }
  }
}

void sub_1D7CC7428()
{
  if (!qword_1EE0BF9A0)
  {
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v0 = sub_1D7D2E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF9A0);
    }
  }
}

uint64_t sub_1D7CC74D0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CC7534(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_1D7AF3EC8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4D0;
  v3 = a1[3];
  *(v2 + 32) = a1[2];
  *(v2 + 40) = v3;

  v4 = sub_1D7D2F60C();

  return v4;
}

uint64_t sub_1D7CC75D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_1D7D3167C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D7CC7748();
    swift_allocError();
    return swift_willThrow();
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA70EF00](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = swift_unknownObjectRetain();
LABEL_6:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CC7690()
{
  sub_1D7A18F14(0);
  sub_1D7D294BC();
  v0 = sub_1D7D2934C();
  sub_1D799621C();
  v1 = sub_1D7D293AC();

  return v1;
}

unint64_t sub_1D7CC7748()
{
  result = qword_1EC9E83E8;
  if (!qword_1EC9E83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E83E8);
  }

  return result;
}

unint64_t sub_1D7CC77B0()
{
  result = qword_1EC9E83F8;
  if (!qword_1EC9E83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E83F8);
  }

  return result;
}

uint64_t InterstitialAdManagerErrors.DiscardReason.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D7CC7878()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CC78EC()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CC7940@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  *a1 = v2 != 0;
  return result;
}

unint64_t InterstitialAdManagerErrors.description.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    return 0xD00000000000003BLL;
  }

  if (v1 != 1)
  {
    return 0xD000000000000021;
  }

  sub_1D7D3145C();
  MEMORY[0x1DA70DE90](0x65206E776F6E6B55, 0xEE00203A726F7272);
  sub_1D79AC5C4();
  sub_1D7D315DC();
  return 0;
}

unint64_t sub_1D7CC7AA8()
{
  result = qword_1EC9E8400;
  if (!qword_1EC9E8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8400);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12NewsArticles27InterstitialAdManagerErrorsO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D7CC7B1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7CC7B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D7CC7BD8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

Swift::Void __swiftcall IssueViewerViewController.navigateToPage(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = *(v7 + 8);
    v9 = v4;
    v8(countAndFlagsBits, object, ObjectType, v7);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = countAndFlagsBits;
    *(v10 + 24) = object;
    v11 = (v1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_afterLoad);
    v12 = *(v1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_afterLoad);
    *v11 = sub_1D7CC91C4;
    v11[1] = v10;

    sub_1D79AD740(v12);
  }
}

void *IssueViewerViewController.childForStatusBarHidden.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController);
  v2 = v1;
  return v1;
}

id IssueViewerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id IssueViewerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall IssueViewerViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7D2C82C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2C83C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_viewDidLoad, v11);
  [v1 setDefinesPresentationContext_];
  v14 = [v1 traitCollection];
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;

    v17 = [objc_opt_self() whiteColor];
    [v16 setBackgroundColor_];

    v18 = sub_1D7CC8270(v1);
    sub_1D7D2A57C();
    v19 = sub_1D7D2B7FC();
    v20 = MEMORY[0x1E69D8270];
    v13[3] = v19;
    v13[4] = v20;
    *v13 = v18;
    (*(v9 + 104))(v13, *MEMORY[0x1E69D8818], v8);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D8850], v3);

    sub_1D7D2A56C();
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v8);
    sub_1D7C527EC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7CC8270(uint64_t a1)
{
  v1 = *(*(*(a1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_eventHandler) + 32) + 32);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 8))(&v5, v2, v3);
  if (v5 == 1)
  {
    sub_1D7D2B7FC();
    return sub_1D7D2B7EC();
  }

  else
  {
    sub_1D7D2B7FC();
    return sub_1D7D2B7DC();
  }
}

Swift::Void __swiftcall IssueViewerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setPrefersLargeTitles_];
  }

  sub_1D7D28E7C();
}

Swift::Void __swiftcall IssueViewerViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager], *&v1[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager + 24]);
  sub_1D7CCA100(&qword_1EC9E8440, v3, type metadata accessor for IssueViewerViewController);
  sub_1D7D291FC();
  __swift_destroy_boxed_opaque_existential_1(v4);
}

Swift::Void __swiftcall IssueViewerViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1);
  if ([v1 isMovingFromParentViewController])
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
      [v3 setToolbarHidden:1 animated:1];
    }
  }
}

Swift::Void __swiftcall IssueViewerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_viewDidDisappear_, a1);
  v4 = *(*&v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_eventHandler] + 32);
  v5 = v4[24];
  if (v5)
  {
    v6 = v4[20];
    v7 = v4[21];
    v9 = v4[22];
    v8 = v4[23];
    swift_beginAccess();
    if (v4[14])
    {
      sub_1D799CC84((v4 + 11), v19);
      v10 = v20;
      v11 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v15[0] = v6;
      v15[1] = v7;
      v16 = v9 & 1;
      v17 = v8;
      v18 = v5;
      (*(v11 + 56))(v15, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  if (*&v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController])
  {
    v12 = *&v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController + 8];
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(ObjectType, v12);
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager + 24]);
  sub_1D7CCA100(&qword_1EC9E8440, v14, type metadata accessor for IssueViewerViewController);
  sub_1D7D2920C();
}

Swift::Void __swiftcall IssueViewerViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;

    v6 = [objc_opt_self() whiteColor];
    [v5 setBackgroundColor_];

    sub_1D7D2A55C();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall IssueViewerViewController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController);
  if (v4)
  {
    v5 = [v4 contentScrollViewForEdge_];
  }
}

id sub_1D7CC8B6C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D7D2ACCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController];
  v12 = *&v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController];
  *v11 = a1;
  *(v11 + 1) = a2;

  v13 = &v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_afterLoad];
  v14 = *&v2[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_afterLoad];
  if (v14)
  {
    v15 = a1;
    sub_1D79C9398(v14);
    v14(v15, a2);
    sub_1D79AD740(v14);
    v16 = *v13;
  }

  else
  {
    v17 = a1;
    v16 = 0;
  }

  *v13 = 0;
  v13[1] = 0;
  sub_1D79AD740(v16);
  [v2 addChildViewController_];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = result;
  result = [v3 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = result;
  [result bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v19 setFrame_];
  result = [v3 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v30 = result;
  [v29 addSubview_];

  [a1 didMoveToParentViewController_];
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    v31 = [v3 navigationController];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 navigationBar];
    }

    v34 = [v3 navigationController];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 navigationBar];

      v37 = [v3 navigationItem];
      [v36 _pushNavigationItem_transition_];
    }
  }

  v38 = [v3 tabBarController];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1D7D30D8C();
    v41 = [v40 titleView];

    if (v41)
    {
      sub_1D7D2BDAC();
      if (swift_dynamicCastClass())
      {
        sub_1D7D2BD8C();
      }
    }

    else
    {
      v41 = v39;
    }
  }

  v42 = [v3 ts_transitionContainerViewController];
  if (v42)
  {
    v43 = v42;
    sub_1D7D2BDDC();
  }

  v47 = a1;
  v48 = a2;
  sub_1D7CC9C5C();
  sub_1D798F168(0, &unk_1EE0BFE88);
  v44 = a1;
  if (swift_dynamicCast())
  {
    sub_1D799D69C(v45, v49);
    __swift_project_boxed_opaque_existential_1(v49, v50);
    sub_1D7D2B1CC();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7D28EEC();

    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_project_boxed_opaque_existential_1(v49, v50);
    sub_1D7D2B1CC();
    sub_1D7D28EDC();

    sub_1D7CCA100(&unk_1EE0BFF30, 255, MEMORY[0x1E69D7C68]);
    sub_1D7D28F1C();
    (*(v7 + 8))(v10, v6);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    return sub_1D7AF4510(v45, &qword_1EC9E8480, &unk_1EE0BFE88);
  }
}

uint64_t sub_1D7CC9104()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1D7CCA100(&unk_1EE0BFF30, 255, MEMORY[0x1E69D7C68]);
    sub_1D7D28F1C();
  }

  return result;
}

uint64_t sub_1D7CC91C4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(a2 + 8) + 8))(v4, v5, ObjectType);
}

uint64_t sub_1D7CC927C(void *a1)
{
  v2 = sub_1D7D2F20C();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = a1;
  sub_1D7D2F1FC();
  sub_1D7CCA100(&qword_1EC9E3230, 255, MEMORY[0x1E69B6198]);
  return sub_1D7D2F18C();
}

id IssueViewerViewController.navigateToBookmark(_:)(void *a1)
{
  v2 = [a1 issueType];
  if (v2 == 1)
  {
    result = [a1 pageID];
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2)
  {
    result = sub_1D7D3160C();
    __break(1u);
    return result;
  }

  result = [a1 articleID];
  if (result)
  {
LABEL_3:
    v4 = result;
    v5 = sub_1D7D3034C();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    IssueViewerViewController.navigateToPage(with:)(v8);
  }

  return result;
}

Swift::Void __swiftcall IssueViewerViewController.sceneWillEnterForeground()()
{
  sub_1D7D28C6C();
  if (*(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(ObjectType, v1);
  }
}

Swift::Void __swiftcall IssueViewerViewController.sceneWillResignActive()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_eventHandler) + 32);
  v2 = v1[24];
  if (v2)
  {
    v3 = v1[20];
    v4 = v1[21];
    v6 = v1[22];
    v5 = v1[23];
    swift_beginAccess();
    if (v1[14])
    {
      sub_1D799CC84((v1 + 11), v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9[0] = v3;
      v9[1] = v4;
      v10 = v6 & 1;
      v11 = v5;
      v12 = v2;
      (*(v8 + 48))(v9, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }
}

Swift::Void __swiftcall IssueViewerViewController.sceneDidBecomeActive()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_eventHandler) + 32);
  v2 = v1[24];
  if (v2)
  {
    v3 = v1[20];
    v4 = v1[21];
    v6 = v1[22];
    v5 = v1[23];
    swift_beginAccess();
    if (v1[14])
    {
      sub_1D799CC84((v1 + 11), v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9[0] = v3;
      v9[1] = v4;
      v10 = v6 & 1;
      v11 = v5;
      v12 = v2;
      (*(v8 + 40))(v9, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }
}

Swift::Void __swiftcall IssueViewerViewController.sceneDidEnterBackground()()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_eventHandler) + 32);
  v3 = v2[24];
  if (v3)
  {
    v4 = v2[20];
    v5 = v2[21];
    v7 = v2[22];
    v6 = v2[23];
    swift_beginAccess();
    if (v2[14])
    {
      sub_1D799CC84((v2 + 11), v16);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v12[0] = v4;
      v12[1] = v5;
      v13 = v7 & 1;
      v14 = v6;
      v15 = v3;
      (*(v9 + 56))(v12, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  if (*(v1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController))
  {
    v10 = *(v1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(ObjectType, v10);
  }
}

id IssueViewerViewController.responder.getter()
{
  v1 = [v0 childViewControllers];
  sub_1D7992EFC(0, &qword_1EE0BF010);
  v2 = sub_1D7D3063C();

  if (v2 >> 62)
  {
    result = sub_1D7D3167C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return v6;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA70EF00](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall IssueViewerViewController.set(previewing:)(Swift::Bool previewing)
{
  v3 = [v1 navigationController];
  if (previewing)
  {
    if (v3)
    {
      v4 = v3;
      [v3 setNavigationBarHidden:1 animated:0];
    }

    v5 = [v1 navigationController];
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    [v5 setToolbarHidden:1 animated:0];
    goto LABEL_6;
  }

  if (v3)
  {
    v7 = v3;
    [v3 setNavigationBarHidden:0 animated:0];
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 toolbar];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = [v10 items];

    if (v11)
    {
      sub_1D7992EFC(0, &qword_1EE0BF050);
      v12 = sub_1D7D3063C();

      v13 = v12 >> 62 ? sub_1D7D3167C() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v13)
      {
        v14 = [v1 navigationController];
        if (v14)
        {
          v6 = v14;
          [v14 setToolbarHidden:0 animated:0];
LABEL_6:
        }
      }
    }
  }

LABEL_17:
  v15 = *&v1[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController];
  if (v15)
  {
    v16 = v15;
    sub_1D7D2A02C();
  }
}

uint64_t IssueViewerViewController.fullscreenCoverStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController);
  if (v3 && (sub_1D7CC9C5C(), sub_1D798F168(0, &qword_1EC9E8450), v4 = v3, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v9 + 1))
    {
      sub_1D799D69C(&v8, v11);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      sub_1D7D2B96C();
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_1D7AF4510(&v8, &qword_1EC9E8448, &qword_1EC9E8450);
  v6 = *MEMORY[0x1E69D8420];
  v7 = sub_1D7D2BABC();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

unint64_t sub_1D7CC9C5C()
{
  result = qword_1EC9E8458;
  if (!qword_1EC9E8458)
  {
    sub_1D7992EFC(255, &qword_1EE0BF010);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E8458);
  }

  return result;
}

uint64_t IssueViewerViewController.identifier.getter()
{
  if (*(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_viewerIdentifier + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_viewerIdentifier);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CC9D44()
{
  v1 = (*v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_viewerIdentifier);
  if (v1[1])
  {
    v2 = *v1;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7CC9DC8()
{
  v1 = sub_1D7D2ACCC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = (v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_viewerIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *(v0 + v4) = sub_1D7D2A58C();
  v5 = OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_navigationItemStyle;
  sub_1D7D2ACBC();
  sub_1D7A39688();
  swift_allocObject();
  *(v0 + v5) = sub_1D7D28ECC();
  v6 = (v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_afterLoad);
  *v7 = 0;
  v7[1] = 0;
  sub_1D7D3160C();
  __break(1u);
}

uint64_t sub_1D7CC9F04()
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

uint64_t sub_1D7CCA100(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for MoreFromEndOfArticleFeedGroup()
{
  result = qword_1EE0C46F0;
  if (!qword_1EE0C46F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MoreFromEndOfArticleFeedGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C();
  }
}

uint64_t MoreFromEndOfArticleFeedGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MoreFromEndOfArticleFeedGroup.formatGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoreFromEndOfArticleFeedGroup() + 20);
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MoreFromEndOfArticleFeedGroup.tag.getter()
{
  type metadata accessor for MoreFromEndOfArticleFeedGroup();

  return swift_unknownObjectRetain();
}

uint64_t MoreFromEndOfArticleFeedGroup.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoreFromEndOfArticleFeedGroup() + 28);
  v4 = sub_1D7D2EA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D7CCA3FC(uint64_t a1)
{
  v2 = sub_1D7CCA554(qword_1EC9E84A0);

  return MEMORY[0x1EEE21E00](a1, v2);
}

uint64_t sub_1D7CCA554(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoreFromEndOfArticleFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7CCA5C8(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1D7D2E8FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2F34C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79E3594(v1, v11);
  sub_1D79E35F8();

  v12 = (*(v4 + 32))(v7, v11, v3);
  v13 = a1(v12);
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_1D7CCA758(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1D7D2E8FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79E3594(v3, v13);
  sub_1D79E35F8();

  v14 = (*(v6 + 32))(v9, v13, v5);
  v15 = a3(v14);
  (*(v6 + 8))(v9, v5);
  return v15;
}

uint64_t sub_1D7CCA8B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBEE8);
  result = sub_1D7D28D2C();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CCC50);
    result = sub_1D7D28D2C();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x1EEE9AC00](v9, v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for ToolbarIssueCoverViewLayoutAttributesFactory();
      v33[3] = v15;
      v33[4] = &off_1F52AC378;
      v33[0] = v13;
      v16 = type metadata accessor for ToolbarIssueCoverViewRenderer();
      v31 = v16;
      v32 = &off_1F52AA2F0;
      v30[0] = v14;
      v17 = type metadata accessor for IssueCoverViewButtonFactory();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x1EEE9AC00](v19, v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x1EEE9AC00](v23, v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_1F52AC378;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_1F52AA2F0;
      v18[7] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_1F52B12E8;
      *a2 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CCACEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CCEA0);
  result = sub_1D7D28D2C();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BF570);
    result = sub_1D7D28D2C();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for ToolbarIssueCoverViewStyler();
      v19[3] = v10;
      v19[4] = &off_1F529D4C0;
      v19[0] = v9;
      v11 = type metadata accessor for ToolbarIssueCoverViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F529D4C0;
      v12[2] = v17;
      sub_1D799D69C(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F52AA2F0;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CCAF7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CCEA0);
  result = sub_1D7D28D2C();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0BF4E8);
    result = sub_1D7D28D2C();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for ToolbarIssueCoverViewStyler();
      v19[3] = v10;
      v19[4] = &off_1F529D4C0;
      v19[0] = v9;
      v11 = type metadata accessor for ToolbarIssueCoverViewLayoutAttributesFactory();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F529D4C0;
      v12[2] = v17;
      sub_1D799D69C(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F52AC378;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CCB20C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE570);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for ToolbarIssueCoverViewStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F529D4C0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CCB2C0(void *a1)
{
  sub_1D7CCD150();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D7D2EECC();
  sub_1D7D28D2C();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF618);
  result = sub_1D7D28D2C();
  if (!v25[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBEF8);
  result = sub_1D7D28D2C();
  if (v24)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (&v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v21 = type metadata accessor for SharedWithYouHeaderViewControllerRenderer();
    v22 = &off_1F52B3C70;
    v20[0] = v12;
    v13 = objc_allocWithZone(type metadata accessor for SharedWithYouHeaderViewController());
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x1EEE9AC00](v14, v14);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_1D7CCCF5C(v5, v25, *v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7CCB5E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC0F0);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SharedWithYouHeaderViewControllerStyler();
    v17[3] = v9;
    v17[4] = &off_1F52A5518;
    v17[0] = v8;
    v10 = type metadata accessor for SharedWithYouHeaderViewControllerRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F52A5518;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F52B3C70;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CCB838(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC238);
  result = sub_1D7D28D2C();
  if (v24)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x1EEE9AC00](v2, v2);
    v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for SponsoredHeaderViewControllerRenderer();
    v21 = v7;
    v22 = &off_1F529E360;
    v20[0] = v6;
    v8 = type metadata accessor for SponsoredHeaderViewController();
    v9 = objc_allocWithZone(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x1EEE9AC00](v10, v10);
    v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v19[3] = v7;
    v19[4] = &off_1F529E360;
    v19[0] = v14;
    v15 = OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_label;
    *&v9[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    *&v9[OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_headerDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_1D799CC84(v19, &v9[OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_renderer]);
    v18.receiver = v9;
    v18.super_class = v8;
    v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CCBAD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC2F0);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SponsoredHeaderViewControllerStyler();
    v17[3] = v9;
    v17[4] = &off_1F52A0940;
    v17[0] = v8;
    v10 = type metadata accessor for SponsoredHeaderViewControllerRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F52A0940;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F529E360;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7CCBCFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SponsoredHeaderViewControllerStyler();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.6 green:0.8 blue:0.996078431 alpha:1.0];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F52A0940;
  *a1 = v3;
  return result;
}

uint64_t sub_1D7CCBD8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CCC48);
  result = sub_1D7D28D2C();
  if (v17)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x1EEE9AC00](v2, v2);
    v4 = (v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v14 = type metadata accessor for AIHeaderViewControllerRenderer();
    v15 = &off_1F529C220;
    v13[0] = v6;
    v7 = objc_allocWithZone(type metadata accessor for AIHeaderViewController());
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_1D7CCCE6C(*v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CCBF98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CCE90);
  result = sub_1D7D28D2C();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0BEDE0);
    result = sub_1D7D28D1C();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v6, v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for AIHeaderViewControllerStyler();
      v19[3] = v11;
      v19[4] = &off_1F529C458;
      v19[0] = v10;
      v12 = type metadata accessor for AIHeaderViewControllerRenderer();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x1EEE9AC00](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_1F529C458;
      v13[2] = v18;
      v13[7] = v5;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_1F529C220;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D7CCC248@<X0>(uint64_t (*a1)(void)@<X1>, SEL *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = swift_allocObject();
  result = [objc_opt_self() *a2];
  *(v8 + 16) = result;
  a4[3] = v7;
  a4[4] = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_1D7CCC2C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC770);
  result = sub_1D7D28D2C();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0CBE70);
    result = sub_1D7D28CEC();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for TableOfContentsPDFCellViewStyler();
      v19[3] = v10;
      v19[4] = &off_1F52B2458;
      v19[0] = v9;
      v11 = type metadata accessor for TableOfContentsPDFCellViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F52B2458;
      v12[2] = v17;
      sub_1D799D69C(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F52A9498;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CCC574@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBE48);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2FB2C();
    swift_allocObject();
    sub_1D7D2FB1C();
    sub_1D7CCD0F8();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0CBE50);
    result = sub_1D7D28D2C();
    if (v7)
    {
      v5 = sub_1D7D29BAC();
      swift_allocObject();
      result = sub_1D7D29B9C();
      v6 = MEMORY[0x1E69D7580];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CCC6B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CC8C8);
  result = sub_1D7D28D2C();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BF570);
    result = sub_1D7D28D2C();
    if (v20)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for TableOfContentsHeaderViewStyler();
      v18[3] = v10;
      v18[4] = &off_1F52A9A70;
      v18[0] = v9;
      type metadata accessor for TableOfContentsHeaderViewRenderer();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      MEMORY[0x1EEE9AC00](v12, v12);
      v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v11[5] = v10;
      v11[6] = &off_1F52A9A70;
      v11[2] = v16;
      sub_1D799D69C(&v19, (v11 + 7));
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(v21);
      *a2 = v11;
      a2[1] = &off_1F52B2210;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CCC93C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CC758);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for RecipeArticleChromeButtonRenderer();
    v17[3] = v9;
    v17[4] = &off_1F52B1B80;
    v17[0] = v8;
    v10 = type metadata accessor for RecipeArticleViewButtonFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F52B1B80;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F52B2448;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CCCB68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC8D0);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for RecipeArticleChromeButtonStyler();
    v17[3] = v9;
    v17[4] = &off_1F52B1AF0;
    v17[0] = v8;
    v10 = type metadata accessor for RecipeArticleChromeButtonRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F52B1AF0;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F52B1B80;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CCCD94@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecipeArticleChromeButtonStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F52B1AF0;
  *a1 = result;
  return result;
}

uint64_t sub_1D7CCCDDC()
{
  sub_1D7D2A63C();
  swift_allocObject();
  return sub_1D7D2A62C();
}

uint64_t sub_1D7CCCE14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2A38C();
  swift_allocObject();
  result = sub_1D7D2A37C();
  v4 = MEMORY[0x1E69D78A8];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

id sub_1D7CCCE6C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for AIHeaderViewControllerRenderer();
  v10[4] = &off_1F529C220;
  v10[0] = a1;
  v5 = OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_label;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = &a2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_channelName];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_headerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1D799CC84(v10, &a2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_renderer]);
  v9.receiver = a2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

id sub_1D7CCCF5C(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v18[3] = type metadata accessor for SharedWithYouHeaderViewControllerRenderer();
  v18[4] = &off_1F52B3C70;
  v18[0] = a3;
  *&a4[OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_headerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItem;
  v10 = sub_1D7D2EECC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a4[v9], a1, v10);
  sub_1D799CC84(a2, &a4[OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItemManager]);
  sub_1D799CC84(v18, &a4[OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_renderer]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v12 = sub_1D7D2F83C();
  v13 = &a4[OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_attributionView];
  *v13 = v12;
  v13[1] = v14;
  v17.receiver = a4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  (*(v11 + 8))(a1, v10);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v15;
}

unint64_t sub_1D7CCD0F8()
{
  result = qword_1EC9E84B8;
  if (!qword_1EC9E84B8)
  {
    sub_1D7D2FB2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E84B8);
  }

  return result;
}

void sub_1D7CCD150()
{
  if (!qword_1EE0BF750)
  {
    sub_1D7D2EECC();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF750);
    }
  }
}

uint64_t sub_1D7CCD1E0()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return sub_1D7D2F63C();
}

void sub_1D7CCD234(uint64_t a1, __int128 *a2, char *a3)
{
  v4 = v3;
  v132 = a2;
  v133 = a1;
  v6 = sub_1D7D2F64C();
  v126 = *(v6 - 8);
  v127 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v125 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = *&a3[OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_coverViewButton];
  sub_1D7D2F6EC();
  v129 = *&a3[OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_subscribeButton];
  v9 = sub_1D7D2A86C();

  v131 = *&a3[OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_descriptionLabel];
  [v131 setText_];
  v130 = *&a3[OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_dateLabel];
  [v130 setText_];
  v10 = __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v11 = *(*v10 + 40);
  v12 = *(*v10 + 48);
  v13 = __swift_project_boxed_opaque_existential_1((*v10 + 16), v11);
  v14 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v13);
  v17 = &v118 - v16;
  (*(v14 + 16))(&v118 - v16, v15);
  (*(v12 + 32))(&v151, v11, v12);
  (*(v14 + 8))(v17, v11);
  v147[0] = v151;
  v147[1] = v152;
  v147[2] = v153;
  v147[3] = v154;
  v148 = v155;
  v18 = v151;
  sub_1D7AB37E8(v147);
  [a3 setBackgroundColor_];

  v135 = v4;
  v123 = __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v134 = type metadata accessor for TableOfContentsHeaderViewModel();
  v19 = sub_1D7D2F6CC();
  v20 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
  v128 = v20;
  v21 = v125;
  sub_1D7CCD1E0();
  v22 = v133;
  v23 = v132;
  sub_1D7D2FC1C();

  v126[1](v21, v127);
  sub_1D7D2FDFC();
  sub_1D7D2F6FC();
  [v130 setFrame_];
  v24 = __swift_project_boxed_opaque_existential_1(v135 + 2, v135[5]);
  v25 = (v22 + *(v134 + 28));
  v26 = *v25;
  v119 = v25[1];
  v120 = v26;
  v27 = *v24;
  sub_1D79F7B3C();
  v127 = v28;
  inited = swift_initStackObject();
  v118 = xmmword_1D7D3B4E0;
  *(inited + 16) = xmmword_1D7D3B4E0;
  v30 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v31 = v27[5];
  v32 = v27[6];
  v33 = __swift_project_boxed_opaque_existential_1(v27 + 2, v31);
  v34 = *(v31 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33, v33);
  v37 = &v118 - v36;
  (*(v34 + 16))(&v118 - v36, v35);
  v38 = *(v32 + 32);
  v126 = v30;
  v38(&v151, v31, v32);
  (*(v34 + 8))(v37, v31);
  v149[0] = v151;
  v149[1] = v152;
  v149[2] = v153;
  v149[3] = v154;
  v150 = v155;
  v39 = *(&v151 + 1);
  sub_1D7AB37E8(v149);
  v40 = sub_1D7992EFC(0, &qword_1EE0BECE8);
  v125 = v40;
  *(inited + 40) = v39;
  v41 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v40;
  *(inited + 72) = v41;
  v42 = sub_1D7992EFC(0, &qword_1EE0BED40);
  v121 = v41;
  v43 = sub_1D7D3105C();
  *(inited + 104) = v42;
  *(inited + 80) = v43;
  sub_1D7A5092C(inited);
  swift_setDeallocating();
  sub_1D79D69BC();
  v123 = v44;
  swift_arrayDestroy();
  v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v46 = sub_1D7D3031C();
  type metadata accessor for Key(0);
  v124 = v47;
  v122 = sub_1D79F7BE0();
  v48 = sub_1D7D3027C();

  v49 = [v45 initWithString:v46 attributes:v48];

  v50 = v130;
  [v130 setAttributedText_];

  v51 = sub_1D7D3031C();
  [v50 setAccessibilityLabel_];

  [v50 setAdjustsFontForContentSizeCategory_];
  [v131 setFrame_];
  v52 = __swift_project_boxed_opaque_existential_1(v135 + 2, v135[5]);
  v53 = v133 + *(v134 + 32);
  v55 = *v53;
  v54 = *(v53 + 8);
  v130 = v55;
  v120 = v54;
  v56 = *v52;
  v57 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v57 setLineBreakMode_];
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1D7D3C680;
  *(v58 + 32) = v126;
  v59 = v56[5];
  v60 = v56[6];
  v61 = __swift_project_boxed_opaque_existential_1(v56 + 2, v59);
  v62 = *(v59 - 8);
  v63 = MEMORY[0x1EEE9AC00](v61, v61);
  v65 = &v118 - v64;
  (*(v62 + 16))(&v118 - v64, v63);
  (*(v60 + 32))(&v142, v59, v60);
  (*(v62 + 8))(v65, v59);
  v153 = v144;
  v154 = v145;
  v155 = v146;
  v151 = v142;
  v152 = v143;
  v66 = v143;
  sub_1D7AB37E8(&v151);
  *(v58 + 40) = v66;
  v67 = v121;
  *(v58 + 64) = v125;
  *(v58 + 72) = v67;
  *(v58 + 80) = sub_1D7D3105C();
  v68 = *MEMORY[0x1E69DB688];
  v119 = v42;
  *(v58 + 104) = v42;
  *(v58 + 112) = v68;
  *(v58 + 144) = sub_1D7992EFC(0, &unk_1EE0BEEB0);
  *(v58 + 120) = v57;
  v69 = v68;
  v70 = v57;
  sub_1D7A5092C(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  v71 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v72 = sub_1D7D3031C();
  v73 = sub_1D7D3027C();

  v74 = [v71 initWithString:v72 attributes:v73];

  v75 = v131;
  [v131 setAttributedText_];

  v76 = sub_1D7D3031C();
  [v75 setAccessibilityLabel_];

  v77 = v133;
  [v75 setAdjustsFontForContentSizeCategory_];
  v78 = v75;
  v79 = v134;
  [v78 setNumberOfLines_];
  if (*(v77 + *(v79 + 40)) == 1)
  {
    [v129 setHidden_];
  }

  else
  {
    v80 = v129;
    [v129 setHidden_];
    [v80 setFrame_];
    v81 = __swift_project_boxed_opaque_existential_1(v135 + 2, v135[5]);
    v82 = (v77 + *(v79 + 44));
    v83 = *v82;
    v133 = v82[1];
    v134 = v83;
    v84 = *v81;
    v85 = swift_allocObject();
    *(v85 + 16) = v118;
    v86 = v126;
    *(v85 + 32) = v126;
    v87 = v84[5];
    v88 = v84[6];
    v89 = __swift_project_boxed_opaque_existential_1(v84 + 2, v87);
    v132 = &v118;
    v90 = *(v87 - 8);
    v91 = MEMORY[0x1EEE9AC00](v89, v89);
    v93 = &v118 - v92;
    (*(v90 + 16))(&v118 - v92, v91);
    v94 = *(v88 + 32);
    v95 = v86;
    v94(&v142, v87, v88);
    (*(v90 + 8))(v93, v87);
    v140[2] = v144;
    v140[3] = v145;
    v141 = v146;
    v140[0] = v142;
    v140[1] = v143;
    v96 = *(&v143 + 1);
    sub_1D7AB37E8(v140);
    *(v85 + 40) = v96;
    v97 = v121;
    *(v85 + 64) = v125;
    *(v85 + 72) = v97;
    v98 = v97;
    v99 = v119;
    v100 = sub_1D7D3105C();
    *(v85 + 104) = v99;
    *(v85 + 80) = v100;
    sub_1D7A5092C(v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v101 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v102 = sub_1D7D3031C();
    v103 = sub_1D7D3027C();

    v104 = [v101 initWithString:v102 attributes:v103];

    v105 = v129;
    [v129 setAttributedTitle:v104 forState:0];

    v106 = __swift_project_boxed_opaque_existential_1(v135 + 2, v135[5]);
    v107 = *(*v106 + 40);
    v108 = *(*v106 + 48);
    v109 = __swift_project_boxed_opaque_existential_1((*v106 + 16), v107);
    v110 = *(v107 - 8);
    v111 = MEMORY[0x1EEE9AC00](v109, v109);
    v113 = &v118 - v112;
    (*(v110 + 16))(&v118 - v112, v111);
    (*(v108 + 32))(v136, v107, v108);
    (*(v110 + 8))(v113, v107);
    v144 = v137;
    v145 = v138;
    v146 = v139;
    v142 = v136[0];
    v143 = v136[1];
    v114 = v137;
    sub_1D7AB37E8(&v142);
    [v105 setBackgroundColor_];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v116 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    v117 = sub_1D7D3031C();

    [v105 setAccessibilityLabel_];
  }
}

unint64_t sub_1D7CCE0E8()
{
  result = qword_1EC9E3110;
  if (!qword_1EC9E3110)
  {
    sub_1D7A73054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3110);
  }

  return result;
}

uint64_t type metadata accessor for RecipeRecirculationConfig()
{
  result = qword_1EC9E84C0;
  if (!qword_1EC9E84C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CCE1A0()
{
  sub_1D7A72FC0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D7CCE20C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D7A72FC0();
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CCE7D0(0, &qword_1EC9E84D0, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for RecipeRecirculationConfig();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CCE718();
  sub_1D7D31AFC();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D7A73054();
    sub_1D7CCE0E8();
    sub_1D7D317FC();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D7CCE76C(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7CCE4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7D3197C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7CCE530(uint64_t a1)
{
  v2 = sub_1D7CCE718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CCE56C(uint64_t a1)
{
  v2 = sub_1D7CCE718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7CCE5C0(void *a1)
{
  sub_1D7CCE7D0(0, &qword_1EC9E84E0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CCE718();
  sub_1D7D31B1C();
  sub_1D7A73054();
  sub_1D7CCE0E8();
  sub_1D7D318CC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D7CCE718()
{
  result = qword_1EC9E84D8;
  if (!qword_1EC9E84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E84D8);
  }

  return result;
}

uint64_t sub_1D7CCE76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeRecirculationConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7CCE7D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7CCE718();
    v7 = a3(a1, &type metadata for RecipeRecirculationConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7CCE848()
{
  result = qword_1EC9E84E8;
  if (!qword_1EC9E84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E84E8);
  }

  return result;
}

unint64_t sub_1D7CCE8A0()
{
  result = qword_1EC9E84F0;
  if (!qword_1EC9E84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E84F0);
  }

  return result;
}

unint64_t sub_1D7CCE8F8()
{
  result = qword_1EC9E84F8;
  if (!qword_1EC9E84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E84F8);
  }

  return result;
}

uint64_t type metadata accessor for LikeDislikeArticleFeatureContext()
{
  result = qword_1EE0C3240;
  if (!qword_1EE0C3240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CCE9C0()
{
  result = type metadata accessor for ArticleViewerArticlePage(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D7D28A3C();
    if (v2 <= 0x3F)
    {
      result = sub_1D7D2ACCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7CCEA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D7CCEC6C();
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_1D7D3C680;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x7365526863746566;
  *(inited + 88) = 0xEB00000000746C75;
  sub_1D7CCECC4();
  *(inited + 96) = a3;
  *(inited + 120) = v12;
  strcpy((inited + 128), "pluginModels");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  sub_1D7CCED58();
  *(inited + 168) = v13;
  *(inited + 144) = a4;

  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7A19AB4();
  swift_arrayDestroy();
  sub_1D7CCEDC0();
  a5[3] = v14;
  a5[4] = sub_1D7995458(&qword_1EC9E8518, sub_1D7CCEDC0);
  __swift_allocate_boxed_opaque_existential_1(a5);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7CCEC2C(uint64_t a1)
{
  v2 = sub_1D7CCEE10();

  return MEMORY[0x1EEE44678](a1, v2);
}

void sub_1D7CCEC6C()
{
  if (!qword_1EE0BE860)
  {
    sub_1D7A19AB4();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE860);
    }
  }
}

void sub_1D7CCECC4()
{
  if (!qword_1EC9E8500)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7995458(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2E69C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8500);
    }
  }
}

void sub_1D7CCED58()
{
  if (!qword_1EC9E8508)
  {
    sub_1D7D29D1C();
    v0 = sub_1D7D302AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8508);
    }
  }
}

void sub_1D7CCEDC0()
{
  if (!qword_1EC9E8510)
  {
    v0 = sub_1D7D28FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8510);
    }
  }
}

unint64_t sub_1D7CCEE10()
{
  result = qword_1EC9E8520;
  if (!qword_1EC9E8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8520);
  }

  return result;
}

uint64_t sub_1D7CCEEA4(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s12NewsArticles5IssueO2eeoiySbAC_ACtFZ_0(&v7, &v5) & 1;
}

id sub_1D7CCEF18(void *a1, SEL *a2, SEL *a3)
{
  v5 = [a1 userInterfaceStyle];
  v6 = objc_opt_self();
  if (v5 == 2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  v8 = [v6 *v7];

  return v8;
}

uint64_t sub_1D7CCEFA8(uint64_t a1)
{
  v53 = a1;
  sub_1D7CCF70C(0, &unk_1EC9E7DF0, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v52 = &v46 - v3;
  v4 = sub_1D7D2C9DC();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v46 - v9;
  sub_1D7CCF70C(0, &qword_1EC9E8298, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v46 - v13;
  v15 = sub_1D7D2813C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = sub_1D7D280EC();
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7D312AC();
  v47 = *(v21 - 8);
  v48 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D3129C();
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v26 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB958]];
  v27 = [v25 scaledFontForFont_];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  sub_1D7D2812C();
  sub_1D7D280FC();
  aBlock = v27;
  sub_1D7CB98B0();
  v30 = v27;
  sub_1D7D2810C();
  v31 = v54;
  v32 = *(v54 + 16);
  v49 = v20;
  v32(v14, v20, v17);
  v33 = *(v31 + 56);
  v50 = v17;
  v33(v14, 0, 1, v17);
  sub_1D7D3125C();
  sub_1D7D2C9CC();
  sub_1D7D2C9AC();
  v34 = *(v55 + 16);
  v51 = v10;
  v34(v46, v10, v56);
  sub_1D7D3120C();
  if (qword_1EE0C0640 != -1)
  {
    swift_once();
  }

  v35 = qword_1EE0C0648;
  v36 = [objc_opt_self() configurationWithFont:v30 scale:2];
  v37 = [v35 imageByApplyingSymbolConfiguration_];

  sub_1D7D3128C();
  sub_1D7D3123C();
  v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v61 = sub_1D7CCEEF0;
  v62 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D7B5C448;
  v60 = &block_descriptor_41;
  v39 = _Block_copy(&aBlock);
  [v38 initWithDynamicProvider_];
  _Block_release(v39);

  sub_1D7D3126C();
  v40 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v61 = sub_1D7CCEF04;
  v62 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D7B5C448;
  v60 = &block_descriptor_6_3;
  v41 = _Block_copy(&aBlock);
  [v40 initWithDynamicProvider_];
  _Block_release(v41);

  sub_1D7D3127C();
  v43 = v47;
  v42 = v48;
  v44 = v52;
  (*(v47 + 16))(v52, v24, v48);
  (*(v43 + 56))(v44, 0, 1, v42);
  sub_1D7D312BC();

  (*(v55 + 8))(v51, v56);
  (*(v54 + 8))(v49, v50);
  return (*(v43 + 8))(v24, v42);
}

void sub_1D7CCF70C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7CCF834(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D7CCF888()
{
  v0 = type metadata accessor for ReportConcernDetailLayoutSectionDescriptor();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B1DC();
  sub_1D7D2B04C();
  sub_1D7A27160();
  v4 = sub_1D7D30AEC();
  v5 = [v4 textLabel];
  if (v5)
  {
    v6 = v5;
    sub_1D7D303CC();

    v7 = sub_1D7D3031C();

    [v6 setText_];
  }

  else
  {
  }

  sub_1D7A271AC();
  v9 = *(v8 + 48);
  v10 = sub_1D7D2B15C();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);
  return v4;
}

void sub_1D7CCF9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ArticleViewerFeatureAction();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 < 0)
  {
    if (!a2)
    {
      return;
    }

    v17 = *(a5 + *(type metadata accessor for ToolbarFeatureContext() + 28));
    sub_1D7A1F1F8();
    v19 = *(v18 + 48);
    sub_1D79F93E8(a5, v12);
    *&v12[v19] = a2;
    swift_storeEnumTagMultiPayload();

    v17(v12);
  }

  else
  {
    v13 = *(a5 + *(type metadata accessor for ToolbarFeatureContext() + 28));
    sub_1D7A1F344();
    v15 = *(v14 + 48);
    v16 = &v12[*(v14 + 64)];
    sub_1D79F93E8(a5, v12);
    *&v12[v15] = a4;
    *v16 = a2;
    *(v16 + 1) = a3;
    swift_storeEnumTagMultiPayload();

    v13(v12);
  }

  sub_1D7BA9BD0(v12);
}

id sub_1D7CCFB88(void *a1)
{
  v2 = v1;
  v4 = v1[5];
  v5 = v1[6];
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v7 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  (*(v5 + 32))(&v31, v4, v5);
  (*(v7 + 8))(v10, v4);
  v29[2] = v33;
  v29[3] = v34;
  v30 = v35;
  v29[0] = v31;
  v29[1] = v32;
  v11 = *(&v34 + 1);
  sub_1D7AB37E8(v29);
  v12 = [v11 CGColor];

  [a1 setBackgroundColor_];
  v13 = v2[5];
  v14 = v2[6];
  v15 = __swift_project_boxed_opaque_existential_1(v2 + 2, v13);
  v16 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  (*(v14 + 32))(v27, v13, v14);
  (*(v16 + 8))(v19, v13);
  v33 = v27[2];
  v34 = v27[3];
  v35 = v28;
  v31 = v27[0];
  v32 = v27[1];
  v20 = v28;
  sub_1D7AB37E8(&v31);
  v21 = [v20 CGColor];

  [a1 setBorderColor_];
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  [a1 setBorderWidth_];
  return [a1 setMasksToBounds_];
}

uint64_t sub_1D7CCFEE0()
{
  v1 = type metadata accessor for TableOfContentsHeaderViewModel();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TableOfContentsModel();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79ECB58();
  sub_1D7D29EEC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = v8[5];
    v14[4] = v8[4];
    v14[5] = v9;
    v14[6] = v8[6];
    v10 = v8[1];
    v14[0] = *v8;
    v14[1] = v10;
    v11 = v8[3];
    v14[2] = v8[2];
    v14[3] = v11;
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    v12 = v14[0];

    sub_1D7C69954(v12, *(&v12 + 1));

    return sub_1D7A2B8A4(v14);
  }

  else
  {
    sub_1D7AF8524(v8, v4);
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    sub_1D7C69954(*(v4 + 2), *(v4 + 3));
    return sub_1D7CD0080(v4);
  }
}

uint64_t sub_1D7CD0080(uint64_t a1)
{
  v2 = type metadata accessor for TableOfContentsHeaderViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EndOfArticleExpandRequest()
{
  result = qword_1EE0C6328;
  if (!qword_1EE0C6328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CD0150()
{
  result = type metadata accessor for EndOfArticleFeedGapLocation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7CD01CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7CD0214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7CD0290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v5 = sub_1D7D2B54C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = type metadata accessor for RouteModel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1D7CD094C(a1, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RouteModel);
    (*(v6 + 16))(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v5);
    v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v17 = (v11 + *(v6 + 80) + v16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    sub_1D7B5A834(v13, v18 + v16);
    (*(v6 + 32))(v18 + v17, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
    aBlock[4] = sub_1D7CD0C50;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79FE25C;
    aBlock[3] = &block_descriptor_7;
    v19 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v19];
    _Block_release(v19);
  }

  else
  {
    v20 = v3[7];
    v21 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v20);
    (*(v21 + 16))(a1, v22, v23, v20, v21);
  }
}

void sub_1D7CD056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a3;
  v7 = sub_1D7D2B54C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RouteModel();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    sub_1D7CD094C(a1, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RouteModel);
    (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v7);
    sub_1D7CD094C(a4, v33, sub_1D7B5A8F8);
    v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v19 = (v14 + *(v8 + 80) + v18) & ~*(v8 + 80);
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    sub_1D7B5A834(v16, v21 + v18);
    (*(v8 + 32))(v21 + v19, v11, v7);
    *(v21 + v20) = v31;
    v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v22 + 32) = v34;
    v23 = v33[1];
    *v22 = v33[0];
    *(v22 + 16) = v23;
    aBlock[4] = sub_1D7CD0AF8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79FE25C;
    aBlock[3] = &block_descriptor_42;
    v24 = _Block_copy(aBlock);

    v25 = v29;
    [v29 dismissViewControllerAnimated:1 completion:v24];
    _Block_release(v24);
  }

  else
  {
    v26 = a4;
    v27 = v4[7];
    v28 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v27);
    (*(v28 + 32))(a1, v30, v31, v26, v27, v28);
  }
}

uint64_t sub_1D7CD0898()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CD094C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7CD09B4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE0BEF90)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D799621C();
    type metadata accessor for ArticleNavigationAction();
    sub_1D798C468(255, qword_1EE0C2690);
    sub_1D798C468(255, qword_1EE0C6408);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE0BEF90);
    }
  }
}

uint64_t sub_1D7CD0AF8()
{
  v1 = *(type metadata accessor for RouteModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D7D2B54C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v6);
  v10 = v8[7];
  v11 = v8[8];
  __swift_project_boxed_opaque_existential_1(v8 + 4, v10);
  return (*(v11 + 32))(v0 + v2, v0 + v5, v9, v0 + v7, v10, v11);
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7CD0C50()
{
  v1 = *(type metadata accessor for RouteModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D7D2B54C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = v6[7];
  v9 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v8);
  return (*(v9 + 16))(v0 + v2, v0 + v5, v7, v8, v9);
}

id sub_1D7CD0D98(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArticleModel();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A35E7C(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7994174();
    v10 = *(v9 + 48);
    v11 = *(v2 + 16);
    v12 = sub_1D7D3031C();

    v13 = [v11 articleWithID:v12 relativePriority:a2];
  }

  else
  {
    v14 = *(v8 + 2);
    sub_1D7996048();
    v10 = *(v15 + 48);
    v13 = [*(v2 + 16) articleWithHeadline_];

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  sub_1D7BB9D14(&v8[v10]);
  return v13;
}

uint64_t sub_1D7CD1030()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_1D7AF4510(v0 + 64, qword_1EE0BC8D0, &qword_1EE0C4F58);
  sub_1D7AF4510(v0 + 104, &qword_1EE0C6850, &qword_1EE0C6858);

  return swift_deallocClassInstance();
}

id sub_1D7CD10D8(void *a1)
{
  v2 = v1;
  if ([a1 respondsToSelector_])
  {
    v4 = [a1 dataSource];
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_13;
      }

      v5 = v1[2];
      v6 = [a1 articleID];
      if (!v6)
      {
        sub_1D7D3034C();
        v6 = sub_1D7D3031C();
      }

      [v5 addPrefetchInterestInArticleID:v6 headline:0];
      goto LABEL_12;
    }

    v7 = v1[2];
    v8 = [a1 articleID];
    if (!v8)
    {
      sub_1D7D3034C();
      v8 = sub_1D7D3031C();
    }

    [v7 addPrefetchInterestInArticleID:v8 headline:a1];

    v9 = v2[6];
    v10 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v9);
    ArticleAudioPrewarmerType.addInterest(in:upsellAsset:)(a1, 0, v9, v10);
    if ([a1 respondsToSelector_])
    {
      v25[0] = [a1 parentIssue];
      sub_1D7CD3200(0, &unk_1EE0BECF0, sub_1D79EB250);
      sub_1D7D312EC();

      v6 = v24;
      if (v24)
      {
        sub_1D7CD13DC(v24);
LABEL_12:
      }
    }
  }

LABEL_13:
  result = [a1 recipeIDs];
  if (result)
  {
    v12 = result;
    v13 = sub_1D7D3063C();

    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 40);
      v16 = &protocol descriptor for RecipeContentPrefetcherType;
      v23 = v2;
      do
      {
        v20 = *(v15 - 1);
        v21 = *v15;
        sub_1D7CD3428((v2 + 8), v25, qword_1EE0BC8D0, &qword_1EE0C4F58);
        v22 = v26;
        if (v26)
        {
          v17 = v27;
          __swift_project_boxed_opaque_existential_1(v25, v26);
          v18 = v16;
          v19 = *(v17 + 8);

          v19(v20, v21, 0, v22, v17);
          v16 = v18;
          v2 = v23;

          __swift_destroy_boxed_opaque_existential_1(v25);
        }

        else
        {
          sub_1D7AF4510(v25, qword_1EE0BC8D0, &qword_1EE0C4F58);
        }

        v15 += 2;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

void sub_1D7CD13DC(void *a1)
{
  v3 = [a1 coverArticleID];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(v1 + 16);
    v9 = [a1 coverArticleID];
    if (!v9)
    {
      sub_1D7D3034C();
      v10 = sub_1D7D3031C();

      v9 = v10;
    }

    v11 = v9;
    [v8 addPrefetchInterestInArticleID_headline_];
  }
}

id sub_1D7CD14D8(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  v5 = [a1 articleID];
  if (!v5)
  {
    sub_1D7D3034C();
    v5 = sub_1D7D3031C();
  }

  [v4 removePrefetchInterestInArticleID_];

  v6 = v2[6];
  v7 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v6);
  ArticleAudioPrewarmerType.removeInterest(in:upsellAsset:)(a1, 0, v6, v7);
  if ([a1 respondsToSelector_])
  {
    v22[0] = [a1 parentIssue];
    sub_1D7CD3200(0, &unk_1EE0BECF0, sub_1D79EB250);
    sub_1D7D312EC();

    if (v21)
    {
      sub_1D7CD174C(v21);
    }
  }

  result = [a1 recipeIDs];
  if (result)
  {
    v9 = result;
    v10 = sub_1D7D3063C();

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 40);
      v13 = &protocol descriptor for RecipeContentPrefetcherType;
      v20 = v2;
      do
      {
        v17 = *(v12 - 1);
        v18 = *v12;
        sub_1D7CD3428((v2 + 8), v22, qword_1EE0BC8D0, &qword_1EE0C4F58);
        v19 = v23;
        if (v23)
        {
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          v15 = v13;
          v16 = *(v14 + 16);

          v16(v17, v18, v19, v14);
          v13 = v15;
          v2 = v20;

          __swift_destroy_boxed_opaque_existential_1(v22);
        }

        else
        {
          sub_1D7AF4510(v22, qword_1EE0BC8D0, &qword_1EE0C4F58);
        }

        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

void sub_1D7CD174C(void *a1)
{
  v3 = [a1 coverArticleID];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(v1 + 16);
    v9 = [a1 coverArticleID];
    if (!v9)
    {
      sub_1D7D3034C();
      v10 = sub_1D7D3031C();

      v9 = v10;
    }

    v11 = v9;
    [v8 removePrefetchInterestInArticleID_];
  }
}

void sub_1D7CD1844(void *a1)
{
  v2 = v1;
  sub_1D7CD3428(v1 + 64, v17, qword_1EE0BC8D0, &qword_1EE0C4F58);
  v4 = v18;
  if (v18)
  {
    v5 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v6 = [a1 identifier];
    v7 = sub_1D7D3034C();
    v9 = v8;

    (*(v5 + 8))(v7, v9, a1, v4, v5);

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D7AF4510(v17, qword_1EE0BC8D0, &qword_1EE0C4F58);
  }

  v10 = [a1 articles];
  sub_1D799621C();
  v11 = sub_1D7D3063C();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_15:

    return;
  }

  v12 = sub_1D7D3167C();
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(v2 + 16);
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA70EF00](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v15 identifier];
      if (!v16)
      {
        sub_1D7D3034C();
        v16 = sub_1D7D3031C();
      }

      ++v13;
      [v14 addPrefetchInterestInArticleID:v16 headline:v15];
      swift_unknownObjectRelease();
    }

    while (v12 != v13);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1D7CD1A70(void *a1)
{
  v2 = v1;
  sub_1D7CD3428(v1 + 64, v17, qword_1EE0BC8D0, &qword_1EE0C4F58);
  v4 = v18;
  if (v18)
  {
    v5 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v6 = [a1 identifier];
    v7 = sub_1D7D3034C();
    v9 = v8;

    (*(v5 + 16))(v7, v9, v4, v5);

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D7AF4510(v17, qword_1EE0BC8D0, &qword_1EE0C4F58);
  }

  v10 = [a1 articles];
  sub_1D799621C();
  v11 = sub_1D7D3063C();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_15:

    return;
  }

  v12 = sub_1D7D3167C();
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(v2 + 16);
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA70EF00](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v15 identifier];
      if (!v16)
      {
        sub_1D7D3034C();
        v16 = sub_1D7D3031C();
      }

      ++v13;
      [v14 removePrefetchInterestInArticleID_];
      swift_unknownObjectRelease();
    }

    while (v12 != v13);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1D7CD1C94(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = v3;
  sub_1D7CD3200(0, &unk_1EE0BB170, MEMORY[0x1E69B6538]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v24 - v9;
  sub_1D7CD3200(0, &qword_1EE0BB1B0, MEMORY[0x1E69B5FD0]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v24 - v13;
  sub_1D7D2EDDC();
  v15 = sub_1D7D2ED3C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D7CD3254(v14, &qword_1EE0BB1B0, MEMORY[0x1E69B5FD0]);
  }

  else
  {
    v17 = sub_1D7D2ED1C();
    (*(v16 + 8))(v14, v15);
    a2(v17);
    swift_unknownObjectRelease();
  }

  sub_1D7D2EDCC();
  v18 = sub_1D7D2FA6C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    return sub_1D7CD3254(v10, &unk_1EE0BB170, MEMORY[0x1E69B6538]);
  }

  v21 = sub_1D7D2FA5C();
  result = (*(v19 + 8))(v10, v18);
  if (v21)
  {
    ObjectType = swift_getObjectType();
    v23 = swift_unknownObjectRetain();
    a3(v23, v6, ObjectType);
    return swift_unknownObjectRelease_n();
  }

  return result;
}

void sub_1D7CD1F74()
{
  v1 = *(*v0 + 16);
  v2 = sub_1D7D3031C();
  [v1 addPrefetchInterestInArticleID:v2 headline:0];
}

uint64_t sub_1D7CD208C(uint64_t a1)
{
  v3 = *v1;
  swift_getObjectType();

  return sub_1D7CD32B0(a1, v3);
}

uint64_t sub_1D7CD20D0(uint64_t a1)
{
  v3 = *v1;
  swift_getObjectType();

  return sub_1D7CD336C(a1, v3);
}

uint64_t sub_1D7CD21A8(uint64_t a1)
{
  v2 = sub_1D7D2EC5C();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2DEDC();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2EAEC();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2EB9C();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7D2EDEC();
  v56 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2ED3C();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D7D2EB6C();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28, a1, v23, v26);
  result = (*(v24 + 88))(v28, v23);
  if (result == *MEMORY[0x1E69B5E20] || result == *MEMORY[0x1E69B5DC8] || result == *MEMORY[0x1E69B5E60])
  {
    return (*(v24 + 8))(v28, v23);
  }

  v30 = v58;
  if (result == *MEMORY[0x1E69B5E70])
  {
    (*(v24 + 96))(v28, v23);
    v31 = v57;
    (*(v57 + 32))(v22, v28, v19);
    v32 = sub_1D7D2ED1C();
    sub_1D7CD10D8(v32);
    swift_unknownObjectRelease();
    return (*(v31 + 8))(v22, v19);
  }

  if (result == *MEMORY[0x1E69B5E78])
  {
    (*(v24 + 96))(v28, v23);
    v33 = v56;
    (*(v56 + 32))(v18, v28, v15);
    sub_1D7CD1C94(v18, sub_1D7CD10D8, sub_1D7CD32B0);
    return (*(v33 + 8))(v18, v15);
  }

  if (result == *MEMORY[0x1E69B5E38])
  {
    (*(v24 + 96))(v28, v23);
    v34 = v55;
    (*(v55 + 32))(v14, v28, v11);
    v35 = sub_1D7D2EB8C();
    sub_1D7CD13DC(v35);

    return (*(v34 + 8))(v14, v11);
  }

  if (result == *MEMORY[0x1E69B5DC0])
  {
    return (*(v24 + 8))(v28, v23);
  }

  if (result == *MEMORY[0x1E69B5E28])
  {
    (*(v24 + 96))(v28, v23);
    v36 = v52;
    v37 = v53;
    v38 = v54;
    (*(v53 + 32))(v52, v28, v54);
    v39 = sub_1D7D2EACC();
LABEL_14:
    v40 = v39;
    swift_getObjectType();
    sub_1D7CD32B0(v40, v30);
    swift_unknownObjectRelease();
    return (*(v37 + 8))(v36, v38);
  }

  if (result == *MEMORY[0x1E69B5DB8] || result == *MEMORY[0x1E69B5E68] || result == *MEMORY[0x1E69B5E18] || result == *MEMORY[0x1E69B5E40])
  {
    return (*(v24 + 8))(v28, v23);
  }

  if (result == *MEMORY[0x1E69B5E50])
  {
    (*(v24 + 96))(v28, v23);
    v42 = v49;
    v41 = v50;
    v43 = v51;
    (*(v50 + 32))(v49, v28, v51);
    v44 = sub_1D7D2EC3C();
    sub_1D7CD1844(v44);

    return (*(v41 + 8))(v42, v43);
  }

  if (result == *MEMORY[0x1E69B5DF0] || result == *MEMORY[0x1E69B5E48])
  {
    return (*(v24 + 8))(v28, v23);
  }

  if (result == *MEMORY[0x1E69B5DD0])
  {
    (*(v24 + 96))(v28, v23);
    v36 = v46;
    v37 = v47;
    v38 = v48;
    (*(v47 + 32))(v46, v28, v48);
    v39 = sub_1D7D2DECC();
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69B5E10] || result == *MEMORY[0x1E69B5E58] || result != *MEMORY[0x1E69B5E30])
  {
    return (*(v24 + 8))(v28, v23);
  }

  return result;
}

uint64_t sub_1D7CD29B0(uint64_t a1)
{
  v2 = sub_1D7D2EC5C();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2DEDC();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2EAEC();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2EB9C();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7D2EDEC();
  v56 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2ED3C();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D7D2EB6C();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28, a1, v23, v26);
  result = (*(v24 + 88))(v28, v23);
  if (result == *MEMORY[0x1E69B5E20] || result == *MEMORY[0x1E69B5DC8] || result == *MEMORY[0x1E69B5E60])
  {
    return (*(v24 + 8))(v28, v23);
  }

  v30 = v58;
  if (result == *MEMORY[0x1E69B5E70])
  {
    (*(v24 + 96))(v28, v23);
    v31 = v57;
    (*(v57 + 32))(v22, v28, v19);
    v32 = sub_1D7D2ED1C();
    sub_1D7CD14D8(v32);
    swift_unknownObjectRelease();
    return (*(v31 + 8))(v22, v19);
  }

  if (result == *MEMORY[0x1E69B5E78])
  {
    (*(v24 + 96))(v28, v23);
    v33 = v56;
    (*(v56 + 32))(v18, v28, v15);
    sub_1D7CD1C94(v18, sub_1D7CD14D8, sub_1D7CD336C);
    return (*(v33 + 8))(v18, v15);
  }

  if (result == *MEMORY[0x1E69B5E38])
  {
    (*(v24 + 96))(v28, v23);
    v34 = v55;
    (*(v55 + 32))(v14, v28, v11);
    v35 = sub_1D7D2EB8C();
    sub_1D7CD174C(v35);

    return (*(v34 + 8))(v14, v11);
  }

  if (result == *MEMORY[0x1E69B5DC0])
  {
    return (*(v24 + 8))(v28, v23);
  }

  if (result == *MEMORY[0x1E69B5E28])
  {
    (*(v24 + 96))(v28, v23);
    v36 = v52;
    v37 = v53;
    v38 = v54;
    (*(v53 + 32))(v52, v28, v54);
    v39 = sub_1D7D2EACC();
LABEL_14:
    v40 = v39;
    swift_getObjectType();
    sub_1D7CD336C(v40, v30);
    swift_unknownObjectRelease();
    return (*(v37 + 8))(v36, v38);
  }

  if (result == *MEMORY[0x1E69B5DB8] || result == *MEMORY[0x1E69B5E68] || result == *MEMORY[0x1E69B5E18] || result == *MEMORY[0x1E69B5E40])
  {
    return (*(v24 + 8))(v28, v23);
  }

  if (result == *MEMORY[0x1E69B5E50])
  {
    (*(v24 + 96))(v28, v23);
    v42 = v49;
    v41 = v50;
    v43 = v51;
    (*(v50 + 32))(v49, v28, v51);
    v44 = sub_1D7D2EC3C();
    sub_1D7CD1A70(v44);

    return (*(v41 + 8))(v42, v43);
  }

  if (result == *MEMORY[0x1E69B5DF0] || result == *MEMORY[0x1E69B5E48])
  {
    return (*(v24 + 8))(v28, v23);
  }

  if (result == *MEMORY[0x1E69B5DD0])
  {
    (*(v24 + 96))(v28, v23);
    v36 = v46;
    v37 = v47;
    v38 = v48;
    (*(v47 + 32))(v46, v28, v48);
    v39 = sub_1D7D2DECC();
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69B5E10] || result == *MEMORY[0x1E69B5E58] || result != *MEMORY[0x1E69B5E30])
  {
    return (*(v24 + 8))(v28, v23);
  }

  return result;
}

void sub_1D7CD3200(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7CD3254(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7CD3200(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7CD32B0(uint64_t a1, uint64_t a2)
{
  sub_1D7CD3428(a2 + 104, v6, &qword_1EE0C6850, &qword_1EE0C6858);
  v3 = v7;
  if (!v7)
  {
    return sub_1D7AF4510(v6, &qword_1EE0C6850, &qword_1EE0C6858);
  }

  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D7CD336C(uint64_t a1, uint64_t a2)
{
  sub_1D7CD3428(a2 + 104, v6, &qword_1EE0C6850, &qword_1EE0C6858);
  v3 = v7;
  if (!v7)
  {
    return sub_1D7AF4510(v6, &qword_1EE0C6850, &qword_1EE0C6858);
  }

  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 16))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D7CD3428(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1D7AF44B8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7CD3498()
{
  v0 = sub_1D7D2AF5C();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v39 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CD47DC(0, &qword_1EE0BB2E0, sub_1D7CD4830);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v35 - v5;
  sub_1D7CD4830();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CD4890();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D7D2AD2C();
  __swift_allocate_value_buffer(v12, qword_1EE0BB350);
  v35[1] = __swift_project_value_buffer(v12, qword_1EE0BB350);
  v35[0] = sub_1D7D2C46C();
  sub_1D7D301EC();
  v13 = sub_1D7D3015C();
  v14 = objc_opt_self();
  v15 = [v14 configurationWithWeight_];
  v16 = [v13 imageByApplyingSymbolConfiguration_];

  if (v16)
  {

    v13 = v16;
  }

  v44 = v13;
  v17 = sub_1D7D3019C();
  v18 = [v14 configurationWithWeight_];
  v19 = [v17 imageByApplyingSymbolConfiguration_];

  if (v19)
  {

    v17 = v19;
  }

  v42 = v17;
  sub_1D79FD4A0();
  sub_1D7D2A8CC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v23 = sub_1D7D2811C();
  v25 = v24;

  v44 = v23;
  v45 = v25;
  v26 = [v21 bundleForClass_];
  v27 = sub_1D7D2811C();
  v29 = v28;

  v42 = v27;
  v43 = v29;
  sub_1D7D2A8CC();
  v30 = [v21 bundleForClass_];
  v31 = sub_1D7D2811C();
  v33 = v32;

  v44 = v31;
  v45 = v33;
  sub_1D7D2A8DC();
  (*(v36 + 56))(v6, 0, 1, v37);
  (*(v40 + 104))(v39, *MEMORY[0x1E69D7DA0], v41);
  return sub_1D7D2AD1C();
}

uint64_t sub_1D7CD39E0()
{
  v0 = sub_1D7D2AF5C();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v39 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CD47DC(0, &qword_1EE0BB2E0, sub_1D7CD4830);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v35 - v5;
  sub_1D7CD4830();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CD4890();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D7D2AD2C();
  __swift_allocate_value_buffer(v12, qword_1EE0BB378);
  v35[1] = __swift_project_value_buffer(v12, qword_1EE0BB378);
  v35[0] = sub_1D7D2C45C();
  sub_1D7D301EC();
  v13 = sub_1D7D3016C();
  v14 = objc_opt_self();
  v15 = [v14 configurationWithWeight_];
  v16 = [v13 imageByApplyingSymbolConfiguration_];

  if (v16)
  {

    v13 = v16;
  }

  v44 = v13;
  v17 = sub_1D7D301AC();
  v18 = [v14 configurationWithWeight_];
  v19 = [v17 imageByApplyingSymbolConfiguration_];

  if (v19)
  {

    v17 = v19;
  }

  v42 = v17;
  sub_1D79FD4A0();
  sub_1D7D2A8CC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v23 = sub_1D7D2811C();
  v25 = v24;

  v44 = v23;
  v45 = v25;
  v26 = [v21 bundleForClass_];
  v27 = sub_1D7D2811C();
  v29 = v28;

  v42 = v27;
  v43 = v29;
  sub_1D7D2A8CC();
  v30 = [v21 bundleForClass_];
  v31 = sub_1D7D2811C();
  v33 = v32;

  v44 = v31;
  v45 = v33;
  sub_1D7D2A8DC();
  (*(v36 + 56))(v6, 0, 1, v37);
  (*(v40 + 104))(v39, *MEMORY[0x1E69D7DA0], v41);
  return sub_1D7D2AD1C();
}

uint64_t sub_1D7CD3F28()
{
  v0 = sub_1D7D2AF5C();
  v17 = *(v0 - 8);
  v18 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v16 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CD47DC(0, &qword_1EE0BB2F0, sub_1D7B86278);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v15 - v5;
  sub_1D7B86278();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  sub_1D7CD4770();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1D7D2AD2C();
  __swift_allocate_value_buffer(v13, qword_1EE0C0160);
  v15[1] = __swift_project_value_buffer(v13, qword_1EE0C0160);
  sub_1D7D2C48C();
  v21 = 1;
  sub_1D79FD4A0();
  sub_1D7B862DC();
  sub_1D7D2A8BC();
  v20 = 1;
  sub_1D7D2A8BC();
  v19 = 1;
  sub_1D7D2A8BC();
  (*(v9 + 56))(v6, 0, 1, v8);
  (*(v17 + 104))(v16, *MEMORY[0x1E69D7DA0], v18);
  sub_1D7B863E4();
  return sub_1D7D2AD1C();
}

void sub_1D7CD4260(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D7D301EC();
  if (v3)
  {
    v4 = sub_1D7D3014C();
  }

  else
  {
    v4 = sub_1D7D3018C();
  }

  v5 = [objc_opt_self() configurationWithWeight_];
  v6 = [v4 imageByApplyingSymbolConfiguration_];

  if (v6)
  {

    v4 = v6;
  }

  *a2 = v4;
}

void sub_1D7CD4350(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D7D2811C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_1D7CD4470(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D7D2811C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1D7CD459C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D7D2AD2C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D7CD4634()
{
  sub_1D7D2A61C();
  swift_allocObject();
  result = sub_1D7D2A60C();
  qword_1EE0C0148 = result;
  return result;
}

uint64_t sub_1D7CD46B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v1 = [v0 UUIDString];

  sub_1D7D3034C();
  sub_1D7D2AF4C();
  swift_allocObject();
  result = sub_1D7D2AF3C();
  qword_1EE0C0130 = result;
  return result;
}

void sub_1D7CD4770()
{
  if (!qword_1EE0BFF90)
  {
    sub_1D79FD4A0();
    sub_1D7B862DC();
    v0 = sub_1D7D2A8EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFF90);
    }
  }
}

void sub_1D7CD47DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D7CD4830()
{
  if (!qword_1EE0BB2E8)
  {
    v0 = sub_1D7D2A8EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB2E8);
    }
  }
}

void sub_1D7CD4890()
{
  if (!qword_1EE0BFF78)
  {
    sub_1D79FD4A0();
    v0 = sub_1D7D2A8EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFF78);
    }
  }
}

uint64_t sub_1D7CD48F8(uint64_t a1)
{
  type metadata accessor for EndOfArticleFeedPool();
  sub_1D7D294BC();
  v3 = sub_1D7D2934C();
  sub_1D7CD6F78(0, &unk_1EE0BF1D0, sub_1D799621C, MEMORY[0x1E69E62F8]);
  sub_1D7D293BC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;

  v5 = sub_1D7D2934C();
  sub_1D7D2F05C();
  sub_1D7D293BC();

  v6 = sub_1D7D2934C();
  sub_1D7A18F80(0);
  sub_1D7D293BC();

  v7 = sub_1D7D2934C();
  v8 = sub_1D7D2943C();

  return v8;
}

size_t sub_1D7CD4B40(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v90 = a4;
  v7 = MEMORY[0x1E69E6720];
  sub_1D7CD6F78(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v98 = v82 - v10;
  sub_1D7CD6F78(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v91 = v82 - v13;
  sub_1D7CD6F78(0, &qword_1EE0BF988, sub_1D7990AB0, v7);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v89 = v82 - v16;
  v17 = sub_1D7D2F6AC();
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v96 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RelatedEndOfArticleFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7CD6F78(0, &unk_1EE0BFB00, MEMORY[0x1E69B40B8], v7);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v87 = v82 - v26;
  v27 = sub_1D7D2F31C();
  v93 = *(v27 - 8);
  v94 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v92 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D7D2FC7C();
  v106 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v30);
  v85 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D7D2FD3C();
  v101 = *(v32 - 8);
  v102 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v100 = v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D7D2EC6C();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a1;
  v88 = a2;
  type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  v95 = a3;
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  (*(v36 + 8))(v39, v35);
  v41 = v107;
  v42 = v40 >> 62;
  if (v40 >> 62)
  {
    v43 = sub_1D7D3167C();
    if (v43 < v41)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43 < v107)
    {
LABEL_3:
      v44 = sub_1D7D2E4EC();
      sub_1D7CD7068(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
      swift_allocError();
      *v45 = v41;
      v45[1] = v43;
      (*(*(v44 - 8) + 104))(v45, *MEMORY[0x1E69B5AE0], v44);
      swift_willThrow();
      return v43;
    }
  }

  if (v41 < 0)
  {
    goto LABEL_51;
  }

  if (v42)
  {
    v49 = sub_1D7D3167C();
    result = sub_1D7D3167C();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    if (v49 >= v41)
    {
      v51 = v41;
    }

    else
    {
      v51 = v49;
    }

    if (v49 < 0)
    {
      v51 = v41;
    }

    if (v41)
    {
      v48 = v51;
    }

    else
    {
      v48 = 0;
    }

    v46 = sub_1D7D3167C();
  }

  else
  {
    v46 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46 >= v41)
    {
      v47 = v41;
    }

    else
    {
      v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v41)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }
  }

  if (v46 < v48)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((v40 & 0xC000000000000001) != 0 && v48)
  {
    sub_1D799621C();

    v52 = 0;
    do
    {
      v53 = v52 + 1;
      sub_1D7D3147C();
      v52 = v53;
    }

    while (v48 != v53);
  }

  else
  {
  }

  v84 = v17;
  if (v42)
  {

    v54 = sub_1D7D3168C();
    a3 = v55;
    v42 = v56;
    v48 = v57 >> 1;
  }

  else
  {
    v54 = v40 & 0xFFFFFFFFFFFFFF8;
    a3 = ((v40 & 0xFFFFFFFFFFFFFF8) + 32);
  }

  v17 = v48 - v42;
  if (__OFSUB__(v48, v42))
  {
    goto LABEL_53;
  }

  v83 = v23;
  v82[2] = v40;
  if (!v17)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v63 = MEMORY[0x1E69E7CC0];
    sub_1D7A1912C(MEMORY[0x1E69E7CC0]);
    sub_1D7A19144(v63);
    sub_1D7A1915C(v63);
    v64 = v100;
    sub_1D7D2FD2C();
    sub_1D7CD6F78(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
    v65 = v101;
    v66 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D7D3B4D0;
    (*(v65 + 16))(v67 + v66, v64, v102);
    v68 = sub_1D7D2CE6C();
    (*(*(v68 - 8) + 56))(v87, 1, 1, v68);

    v106 = sub_1D7A191A4(v63);
    sub_1D7A191A4(v63);
    sub_1D7A191BC(v63);
    sub_1D7A191D4(v63);
    sub_1D7A192E8(v63);
    sub_1D7A19300(v63);
    sub_1D7A19414(v63);
    a3 = v92;
    sub_1D7D2F30C();
    v17 = __swift_project_boxed_opaque_existential_1((v88 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_formatService), *(v88 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_formatService + 24));
    sub_1D798EC80();
    v40 = v83;
    sub_1D7D2DF2C();
    v69 = OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_knobs;
    sub_1D7990AB0(0);
    v71 = v70;
    v72 = *(v70 - 8);
    v73 = v89;
    (*(v72 + 16))(v89, v90 + v69, v70);
    (*(v72 + 56))(v73, 0, 1, v71);
    v74 = sub_1D7D2FAFC();
    (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
    LOBYTE(v107) = 1;
    sub_1D798FC0C(0, &unk_1EE0BF580, type metadata accessor for EndOfArticleFeedServiceConfig, sub_1D7990AF8, MEMORY[0x1E69B65B8]);
    swift_allocObject();

    sub_1D7D2FB8C();
    v75 = sub_1D7D2F59C();
    (*(*(v75 - 8) + 56))(v98, 1, 1, v75);
    v76 = qword_1EE0CA130;
    *MEMORY[0x1E69B5080];
    v77 = v76 == -1;
    v23 = v84;
    if (v77)
    {
LABEL_46:
      qword_1EE0CA138;
      v78 = v96;
      sub_1D7D2F69C();
      v43 = v17;
      v79 = v99;
      v80 = sub_1D7D2F36C();
      if (!v79)
      {
        v43 = v80;
      }

      (*(v97 + 8))(v78, v23);
      (*(v93 + 8))(a3, v94);
      (*(v101 + 8))(v100, v102);
      v81 = sub_1D7D2F06C();
      (*(*(v81 - 8) + 8))(v40, v81);
      return v43;
    }

LABEL_54:
    swift_once();
    goto LABEL_46;
  }

  v107 = MEMORY[0x1E69E7CC0];
  result = sub_1D7A5BFDC(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v82[1] = v54;
    v58 = v107;
    v105 = *MEMORY[0x1E69B6698];
    v103 = v106 + 32;
    v104 = (v106 + 104);
    if (v48 <= v42)
    {
      v59 = v42;
    }

    else
    {
      v59 = v48;
    }

    v40 = v59 - v42;
    v23 = &a3[v42];
    v60 = v86;
    a3 = v85;
    while (v40)
    {
      *a3 = *v23;
      (*v104)(a3, v105, v60);
      v107 = v58;
      v61 = *(v58 + 16);
      v62 = *(v58 + 24);
      swift_unknownObjectRetain();
      if (v61 >= v62 >> 1)
      {
        sub_1D7A5BFDC(v62 > 1, v61 + 1, 1);
        v58 = v107;
      }

      *(v58 + 16) = v61 + 1;
      (*(v106 + 32))(v58 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v61, a3, v60);
      --v40;
      ++v23;
      if (!--v17)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1D7CD5920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A18F80(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2F03C();
  if (v13 >> 62)
  {
    v16 = sub_1D7D3167C();

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = sub_1D7D2E4EC();
    sub_1D7CD7068(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69B5AD0], v15);
    swift_willThrow();
    return v15;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7CD5BB8(a1, a3, v12);
  sub_1D7CD70B0(v12, v8, type metadata accessor for RelatedEndOfArticleFeedGroup);
  type metadata accessor for EndOfArticleFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D7CD6F78(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v15 = sub_1D7D2940C();
  sub_1D7CD71A0(v12, type metadata accessor for RelatedEndOfArticleFeedGroup);
  return v15;
}

uint64_t sub_1D7CD5BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v93 = a2;
  v90 = a3;
  v78 = *v3;
  v6 = sub_1D7D2EC6C();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v79 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2EA6C();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v89 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2836C();
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v86 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D7D2855C();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v15);
  v74 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1D7CD6F78(0, &qword_1EE0BF828, MEMORY[0x1E69B5D58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v92 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v83 = v73 - v23;
  sub_1D7CD6F78(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], v17);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v73 - v26;
  v28 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = sub_1D7D2F05C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1D7D2DE2C();
  v85 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v37);
  v94 = v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v43 = v73 - v42;
  (*(v33 + 16))(v36, a1, v32, v41);
  sub_1D798EC80();
  sub_1D7D2DF0C();
  v82 = v44;
  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  v77 = v4;
  v45 = v4 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_knobs;
  sub_1D7990AB0(0);
  sub_1D7D2E35C();
  v73[1] = v45;
  sub_1D7D2E34C();
  v46 = sub_1D7D2E1CC();
  (*(*(v46 - 8) + 56))(v27, 1, 1, v46);
  v84 = v43;
  v47 = v83;
  sub_1D7D2DDDC();
  v48 = *(v95 + 56);
  v48(v47, 1, 1, v96);
  sub_1D7D2856C();
  LOBYTE(v4) = sub_1D7D2860C();

  if (v4)
  {
    sub_1D7D2856C();
    sub_1D7D2854C();

    sub_1D7CD7068(&unk_1EC9E8530, type metadata accessor for RelatedEndOfArticleFeedGroupEmitter);
    v49 = v74;
    sub_1D7D285AC();

    v50 = (*(v75 + 88))(v49, v76);
    if (v50 == *MEMORY[0x1E69B3DD0])
    {
      v51 = MEMORY[0x1E69B5D40];
    }

    else if (v50 == *MEMORY[0x1E69B3DD8])
    {
      v51 = MEMORY[0x1E69B5D48];
    }

    else
    {
      if (v50 != *MEMORY[0x1E69B3DE0])
      {
        result = sub_1D7D3196C();
        __break(1u);
        return result;
      }

      v51 = MEMORY[0x1E69B5D50];
    }

    sub_1D7CD6FDC(v47);
    v52 = *v51;
    v53 = v96;
    (*(v95 + 104))(v47, v52, v96);
    v48(v47, 0, 1, v53);
  }

  v97 = 0x3A646574616C6572;
  v98 = 0xE90000000000003ALL;
  v54 = v86;
  sub_1D7D2835C();
  v55 = sub_1D7D2834C();
  v57 = v56;
  (*(v87 + 8))(v54, v88);
  MEMORY[0x1DA70DE90](v55, v57);

  v58 = v97;
  v59 = v98;
  v60 = v84;
  v61 = v85;
  v62 = v91;
  (*(v85 + 16))(v94, v84, v91);
  v63 = v92;
  sub_1D7A77F9C(v47, v92);
  v64 = *(v95 + 48);
  if (v64(v63, 1, v96) == 1)
  {
    type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
    v65 = v47;
    v66 = v79;
    v88 = v59;
    sub_1D7D2E61C();
    v67 = v89;
    v68 = v92;
    sub_1D7D2E70C();
    (*(v80 + 8))(v66, v81);
    v69 = v65;
    v62 = v91;
    sub_1D7CD6FDC(v69);
    v59 = v88;
    (*(v61 + 8))(v60, v62);
    if (v64(v68, 1, v96) != 1)
    {
      sub_1D7CD6FDC(v68);
    }
  }

  else
  {
    sub_1D7CD6FDC(v47);
    (*(v61 + 8))(v60, v62);
    v67 = v89;
    (*(v95 + 32))(v89, v63, v96);
  }

  v70 = v90;
  *v90 = v58;
  v70[1] = v59;
  v71 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  (*(v61 + 32))(v70 + *(v71 + 20), v94, v62);
  return (*(v95 + 32))(v70 + *(v71 + 24), v67, v96);
}

uint64_t sub_1D7CD65B0(uint64_t a1)
{
  sub_1D7A18F80(0);
  v11 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  v8 = v12;
  v7 = v13;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  sub_1D7D29AAC();

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1D7D3145C();
  MEMORY[0x1DA70DE90](0xD000000000000027, 0x80000001D7D7FA40);
  v14 = a1;
  sub_1D7D315DC();
  v9 = v13;
  *v5 = v12;
  v5[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1D7CD6F78(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7CD6804()
{
  v1 = OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_config;
  sub_1D798EC80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D7CD71A0(v0 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RelatedEndOfArticleFeedGroupEmitter()
{
  result = qword_1EE0C1CB0;
  if (!qword_1EE0C1CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CD6928()
{
  sub_1D798EC80();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7CD69FC()
{
  sub_1D7CD6F78(0, &qword_1EE0C0250, sub_1D79F0070, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7CD6A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_config;
  sub_1D798EC80();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for EndOfArticleFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7CD6B30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  a1[4] = sub_1D7CD7068(&qword_1EE0C28B0, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  a1[5] = sub_1D7CD7068(&unk_1EC9E8540, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7CD70B0(v3 + v4, boxed_opaque_existential_1, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
}

uint64_t sub_1D7CD6BFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7CD6F78(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D798EC80();
  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7CD71A0(inited + 32, sub_1D7A19AB4);
  sub_1D7CD6F78(0, &qword_1EE0C03E8, type metadata accessor for RelatedEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
  a1[3] = v5;
  a1[4] = sub_1D7CD7118();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7CD6D7C(uint64_t a1)
{
  v2 = sub_1D7CD7068(&qword_1EE0C1CD0, type metadata accessor for RelatedEndOfArticleFeedGroupEmitter);

  return MEMORY[0x1EEE44678](a1, v2);
}

void sub_1D7CD6F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CD6FDC(uint64_t a1)
{
  sub_1D7CD6F78(0, &qword_1EE0BF828, MEMORY[0x1E69B5D58], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7CD7068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7CD70B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7CD7118()
{
  result = qword_1EE0C03F0;
  if (!qword_1EE0C03F0)
  {
    sub_1D7CD6F78(255, &qword_1EE0C03E8, type metadata accessor for RelatedEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C03F0);
  }

  return result;
}

uint64_t sub_1D7CD71A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *AudioButton.__allocating_init(listeningProgressManager:currentlyPlayingObservable:bundleSubscriptionManager:articleAudioPrewarmer:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1D7CDA814(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1D7CD7280(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EC9E8550;
  result = swift_beginAccess();
  v3[v4] = v2;
  if ((v2 & 1) == 0)
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1D7CDB31C;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1D7CDB318;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7C138DC;
    aBlock[3] = &block_descriptor_62_0;
    v9 = _Block_copy(aBlock);
    v10 = v3;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D7CD740C()
{
  v1 = qword_1EC9E8550;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D7CD7450(char a1)
{
  v3 = qword_1EC9E8550;
  result = swift_beginAccess();
  v1[v3] = a1;
  if ((a1 & 1) == 0)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1D7CDAB98;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1D7A7DE38;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7C138DC;
    aBlock[3] = &block_descriptor_43;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_1D7CD75D8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = qword_1EC9E8550;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1D7CD7660;
}

void sub_1D7CD7660(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], (v4[v3[7]]) || (v5 = objc_opt_self(), v6 = swift_allocObject(), *(v6 + 16) = v4, v7 = swift_allocObject(), *(v7 + 16) = sub_1D7CDB31C, *(v7 + 24) = v6, v3[4] = sub_1D7CDB318, v3[5] = v7, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_1D7C138DC, v3[3] = &block_descriptor_14_2, v8 = _Block_copy(v3), v9 = v4, , , [v5 performWithoutAnimation_], _Block_release(v8), LOBYTE(v5) = swift_isEscapingClosureAtFileLocation(), , , (v5 & 1) == 0))
  {

    free(v3);
  }

  else
  {
    __break(1u);
  }
}

char *sub_1D7CD77F0()
{
  v1 = [*(v0 + qword_1EC9E85B0) value];
  if (v1)
  {
    if (*(v0 + qword_1EC9E8558))
    {
      v2 = [swift_unknownObjectRetain() identifier];
      v3 = sub_1D7D3034C();
      v5 = v4;

      v6 = *&v1[OBJC_IVAR___NAPlayableArticleInfo_articleId + 8];
      if (v6)
      {
        if (v3 == *&v1[OBJC_IVAR___NAPlayableArticleInfo_articleId] && v6 == v5)
        {

          swift_unknownObjectRelease();
          return v1;
        }

        v8 = sub_1D7D3197C();

        swift_unknownObjectRelease();
        if (v8)
        {
          return v1;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  return v1;
}

id sub_1D7CD7908()
{
  v1 = sub_1D7CD77F0();
  if (!v1)
  {
    v4 = sub_1D7CD77F0();
    if (v4)
    {

      v5 = [objc_opt_self() systemGray5Color];
    }

    else
    {
      result = [v0 tintColor];
      v5 = result;
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    v6 = sub_1D7D3113C();

    return v6;
  }

  v2 = [objc_opt_self() systemGrayColor];

  return v2;
}

char *AudioButton.init(listeningProgressManager:currentlyPlayingObservable:bundleSubscriptionManager:articleAudioPrewarmer:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D7CDA814(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

void sub_1D7CD7A14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1D7CD77F0();
    if (!v2 || (v3 = v2[OBJC_IVAR___NAPlayableArticleInfo_paused], v2, (v3 & 1) != 0) || [*&v1[qword_1EC9E8590] playbackState] == 1)
    {
      v4 = sub_1D7CD77F0();
      if (!v4 || (v5 = v4[OBJC_IVAR___NAPlayableArticleInfo_paused], v4, v5 != 1) || [*&v1[qword_1EC9E8590] playbackState] == 2)
      {
        v6 = sub_1D7CD77F0();
        if (v6)
        {
          v7 = v6;

          v1 = v7;
LABEL_10:

          return;
        }

        if (![*&v1[qword_1EC9E8590] playbackState])
        {
          goto LABEL_10;
        }
      }
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1D7CDB31C;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1D7CDB318;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7C138DC;
    aBlock[3] = &block_descriptor_99;
    v11 = _Block_copy(aBlock);
    v12 = v1;

    [v8 performWithoutAnimation_];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7CD7C80(void *a1, double a2)
{
  v5 = [a1 identifier];
  v6 = sub_1D7D3034C();
  v8 = v7;

  v9 = qword_1EC9E8558;
  v10 = *&v2[qword_1EC9E8558];
  if (!v10)
  {

LABEL_9:
    if (*&v2[v9])
    {
      v18 = *&v2[qword_1EC9E8578 + 24];
      v19 = *&v2[qword_1EC9E8578 + 32];
      __swift_project_boxed_opaque_existential_1(&v2[qword_1EC9E8578], v18);
      v20 = swift_unknownObjectRetain();
      ArticleAudioPrewarmerType.removeInterest(in:upsellAsset:)(v20, 0, v18, v19);
      swift_unknownObjectRelease();
    }

    *&v2[v9] = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v21 = &v2[qword_1EC9E8560];
    *v21 = a2;
    *(v21 + 8) = 0;
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D7CDB31C;
    *(v24 + 24) = v23;
    v37 = sub_1D7CDB318;
    v38 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7C138DC;
    v36 = &block_descriptor_25_1;
    v25 = _Block_copy(aBlock);
    v26 = v2;

    [v22 performWithoutAnimation_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v28 = qword_1EC9E8568;
      swift_beginAccess();
      sub_1D7CDABB8(&v26[v28], aBlock);
      if (v36)
      {
        sub_1D799CC84(aBlock, v34);
        sub_1D7CDACB0(aBlock);
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        sub_1D7D28AFC();
        __swift_destroy_boxed_opaque_existential_1(v34);
      }

      else
      {
        sub_1D7CDACB0(aBlock);
      }

      v29 = *&v26[qword_1EC9E8570 + 24];
      v30 = *&v26[qword_1EC9E8570 + 32];
      __swift_project_boxed_opaque_existential_1(&v26[qword_1EC9E8570], v29);
      (*(v30 + 16))(a1, v29, v30);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D7D28EEC();

      swift_beginAccess();
      sub_1D7CDAD44(aBlock, &v26[v28]);
      swift_endAccess();
      v31 = &v26[qword_1EC9E8578];
      v32 = *&v26[qword_1EC9E8578 + 24];
      v33 = *&v26[qword_1EC9E8578 + 32];
      __swift_project_boxed_opaque_existential_1(v31, v32);
      return ArticleAudioPrewarmerType.addInterest(in:upsellAsset:)(a1, 0, v32, v33);
    }

    return result;
  }

  v11 = [v10 identifier];
  v12 = sub_1D7D3034C();
  v14 = v13;

  if (v6 != v12 || v8 != v14)
  {
    v16 = sub_1D7D3197C();

    if (v16)
    {
      return result;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D7CD80CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1D7CDB31C;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1D7CDB318;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7C138DC;
    aBlock[3] = &block_descriptor_84;
    v5 = _Block_copy(aBlock);
    v6 = v1;

    [v2 performWithoutAnimation_];
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1D7CD825C(void *a1, double a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1D7CD7C80(a4, a2);
  swift_unknownObjectRelease();
}

void sub_1D7CD82D4(void *a1, void *a2)
{
  v4 = *&v2[qword_1EC9E8580];
  *&v2[qword_1EC9E8580] = a1;
  v5 = a1;

  v6 = *&v2[qword_1EC9E8588];
  *&v2[qword_1EC9E8588] = a2;
  v7 = a2;

  v8 = [v2 imageView];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D7CD77F0();
    if (v10)
    {

      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    [v9 setAlpha_];
  }

  sub_1D7CD8FE0();
}

void sub_1D7CD8388(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7CD82D4(v6, v7);
}

void sub_1D7CD8404(void *a1)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for AudioButton();
  v1 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_tintColorDidChange);
  v2 = qword_1EC9E8550;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
  }

  else
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1D7CDB31C;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1D7CDB318;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7C138DC;
    aBlock[3] = &block_descriptor_51_0;
    v6 = _Block_copy(aBlock);
    v7 = v1;

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

void sub_1D7CD85C8()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for AudioButton();
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D7CD77F0();
    if (v3)
    {

      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    [v2 setAlpha_];
  }

  v5 = [v0 titleLabel];
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 ne_verticallyCenterCapInRect_];
  }

  v7 = [v0 imageView];
  if (v7)
  {
    v8 = v7;
    [v7 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [v0 titleLabel];
    if (v17)
    {
      v18 = v17;
      v19 = *&v0[qword_1EC9E8580];
      if (v19)
      {
        v20 = *&v0[qword_1EC9E8580];
      }

      else
      {
        v21 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB960]];
        v22 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
        v20 = [v22 scaledFontForFont:v21 maximumPointSize:19.0];

        v19 = 0;
      }

      v23 = v19;
      [v18 frame];
      MaxY = CGRectGetMaxY(v34);
      [v20 descender];
      v26 = MaxY + v25;
      [v20 pointSize];
      v28 = v26 - v27;
      [v20 pointSize];
      v30 = v29;
      v31 = *&v0[qword_1EC9E8590];
      v35.origin.x = v10;
      v35.origin.y = v12;
      v35.size.width = v14;
      v35.size.height = v16;
      MinX = CGRectGetMinX(v35);
      v36.origin.x = v10;
      v36.origin.y = v12;
      v36.size.width = v14;
      v36.size.height = v16;
      [v31 setFrame_];
    }
  }
}

void sub_1D7CD8874(void *a1)
{
  v1 = a1;
  sub_1D7CD85C8();
}

double sub_1D7CD88BC(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for AudioButton();
  objc_msgSendSuper2(&v16, sel_menuAttachmentPointForConfiguration_, a1);
  [v1 frame];
  v4 = v3;
  [v1 frame];
  v5 = *&v1[qword_1EC9E8558];
  if (!v5)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v6 = sub_1D7CD77F0();
  if (!v6)
  {
    v10 = &v1[qword_1EC9E8570];
    v11 = *&v1[qword_1EC9E8570 + 24];
    v12 = *(v10 + 4);
    __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1D7D0EEEC(v5, v11, v12);
    v14 = v13;
    swift_unknownObjectRelease();
    if (v14 > 0.0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = 1.2;
    return v4 * v9;
  }

  v7 = v6;
  swift_unknownObjectRelease();
  v8 = *&v7[OBJC_IVAR___NAPlayableArticleInfo_listeningProgress];

  if (v8 <= 0.0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = 1.1;
  return v4 * v9;
}

double sub_1D7CD89EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D7CD88BC(v4);

  return v6;
}

void sub_1D7CD8A4C()
{
  v1 = v0;
  *(v0 + qword_1EC9E8598) = 1;
  v2 = sub_1D7CD77F0();
  if (v2 && (v3 = v2[OBJC_IVAR___NAPlayableArticleInfo_paused], v2, (v3 & 1) == 0) || (v4 = sub_1D7CD77F0()) != 0 && (v5 = v4[OBJC_IVAR___NAPlayableArticleInfo_paused], v4, v5 == 1))
  {

    [v1 setMenu_];
  }

  else
  {
    v6 = sub_1D7CD77F0();
    if (!v6)
    {
      sub_1D7992EFC(0, &qword_1EE0BED30);
      v7 = sub_1D7D3106C();
      [v1 setMenu_];
      v6 = v7;
    }
  }
}

void sub_1D7CD8B5C(void *a1)
{
  sub_1D7CD8EB8();
  sub_1D7CD8CA0();
  sub_1D7CD8D5C();
  v2 = [a1 imageView];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D7CD77F0();
    if (v4)
    {

      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    [v3 setAlpha_];
  }

  sub_1D7CD8FE0();
  v6 = [a1 superview];
  if (v6)
  {
    v11 = v6;
    type metadata accessor for ArticleNavigationBarPaletteContent();
    v7 = v11;
    while (1)
    {
      v12 = v7;
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        break;
      }

      v9 = [v12 superview];

      v7 = v9;
      if (!v9)
      {
        return;
      }
    }

    v10 = v8;
    [v8 setNeedsLayout];
    [v10 layoutIfNeeded];
  }
}

id sub_1D7CD8CA0()
{
  v1 = sub_1D7CD77F0();
  if (v1 && (v2 = v1[OBJC_IVAR___NAPlayableArticleInfo_paused], v1, v2 != 1))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v3 = sub_1D7CD77F0();
    if (v3 && (v4 = v3[OBJC_IVAR___NAPlayableArticleInfo_paused], v3, (v4 & 1) != 0))
    {
      v5 = 0;
      v6 = 2;
    }

    else
    {
      v6 = 0;
      v5 = 1;
    }
  }

  v7 = *(v0 + qword_1EC9E8590);
  [v7 setPlaybackState_];

  return [v7 setHidden_];
}

void sub_1D7CD8D5C()
{
  [v0 setHighlighted_];
  v1 = sub_1D7CD77F0();
  if (v1)
  {

    v2 = [objc_opt_self() systemGray5Color];
  }

  else
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      __break(1u);
      return;
    }
  }

  [v0 setBackgroundColor_];

  v3 = [v0 imageView];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D7CD7908();
    [v4 setTintColor_];
  }

  v6 = [v0 titleLabel];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D7CD7908();
    [v7 setTextColor_];
  }
}

void sub_1D7CD8EB8()
{
  if (*(v0 + qword_1EC9E8598) == 1)
  {
    v1 = v0;
    v2 = sub_1D7CD77F0();
    if (v2 && (v3 = v2[OBJC_IVAR___NAPlayableArticleInfo_paused], v2, (v3 & 1) == 0) || (v4 = sub_1D7CD77F0()) != 0 && (v5 = v4[OBJC_IVAR___NAPlayableArticleInfo_paused], v4, v5 == 1))
    {

      [v1 setMenu_];
    }

    else
    {
      v6 = sub_1D7CD77F0();
      if (!v6)
      {
        sub_1D7992EFC(0, &qword_1EE0BED30);
        v7 = sub_1D7D3106C();
        [v1 setMenu_];
        v6 = v7;
      }
    }
  }
}

void sub_1D7CD8FE0()
{
  v1 = qword_1EC9E8558;
  v2 = *&v0[qword_1EC9E8558];
  if (v2)
  {
    v3 = v0;
    v4 = *&v0[qword_1EC9E85A8];
    swift_unknownObjectRetain();
    v5 = [v4 cachedSubscription];
    if (objc_getAssociatedObject(v5, v5 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = 0u;
      v135 = 0u;
    }

    v136 = v134;
    v137 = v135;
    if (*(&v135 + 1))
    {
      sub_1D7992EFC(0, &qword_1EE0BECA0);
      if (swift_dynamicCast())
      {
        v6 = v133;
        v7 = [v133 integerValue];
        if (v7 == -1)
        {

          goto LABEL_22;
        }

        v8 = v7;
LABEL_11:
        if (objc_getAssociatedObject(v5, ~v8))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v134 = 0u;
          v135 = 0u;
        }

        v136 = v134;
        v137 = v135;
        if (*(&v135 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v9 = v133;
            v10 = [v9 integerValue];

            if ((v10 ^ v8))
            {
              goto LABEL_22;
            }

LABEL_20:
            v11 = [v2 isFullTrackAvailableToAll];
            goto LABEL_23;
          }
        }

        else
        {
          sub_1D79F0014(&v136);
        }

        if ((v8 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        v11 = 1;
LABEL_23:
        v12 = sub_1D7CD77F0();
        if (v12)
        {

          v13 = sub_1D7CD77F0();
          if (v13 && (v14 = v13[OBJC_IVAR___NAPlayableArticleInfo_paused], v13, (v14 & 1) == 0))
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v25 = [objc_opt_self() bundleForClass_];
            v127 = 0x80000001D7D7FCD0;
            sub_1D7D2811C();

            sub_1D7CDB28C(0, &qword_1EE0BE830, sub_1D79D69BC, MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D7D3B4E0;
            v18 = *MEMORY[0x1E69DB648];
            *(inited + 32) = *MEMORY[0x1E69DB648];
            v19 = *&v3[qword_1EC9E8580];
            *(inited + 64) = sub_1D7992EFC(0, &qword_1EE0BED40);
            if (!v19)
            {
              goto LABEL_37;
            }
          }

          else
          {
            type metadata accessor for Localized();
            v15 = swift_getObjCClassFromMetadata();
            v16 = [objc_opt_self() bundleForClass_];
            v127 = 0x80000001D7D7FC90;
            sub_1D7D2811C();

            sub_1D7CDB28C(0, &qword_1EE0BE830, sub_1D79D69BC, MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D7D3B4E0;
            v18 = *MEMORY[0x1E69DB648];
            *(inited + 32) = *MEMORY[0x1E69DB648];
            v19 = *&v3[qword_1EC9E8580];
            *(inited + 64) = sub_1D7992EFC(0, &qword_1EE0BED40);
            if (!v19)
            {
LABEL_37:
              v30 = objc_opt_self();
              v31 = *MEMORY[0x1E69DB960];
              v32 = v18;
              v33 = [v30 systemFontOfSize:13.0 weight:{v31, v127}];
              v34 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
              v29 = [v34 scaledFontForFont:v33 maximumPointSize:19.0];

              v19 = 0;
              goto LABEL_38;
            }
          }
        }

        else
        {
          if (v11)
          {
            v20 = *&v3[v1];
            if (v20)
            {
              swift_unknownObjectRetain();
              v21 = sub_1D7CD77F0();
              if (v21)
              {
                v22 = v21;
                swift_unknownObjectRelease();
                v23 = *&v22[OBJC_IVAR___NAPlayableArticleInfo_listeningProgress];
              }

              else
              {
                v45 = *&v3[qword_1EC9E8570 + 24];
                v46 = *&v3[qword_1EC9E8570 + 32];
                __swift_project_boxed_opaque_existential_1(&v3[qword_1EC9E8570], v45);
                sub_1D7D0EEEC(v20, v45, v46);
                v23 = v47;
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v23 = 0.0;
            }

            v48 = &v3[qword_1EC9E8560];
            if ((v3[qword_1EC9E8560 + 8] & 1) == 0 && v23 > 0.0 && v23 < *v48)
            {
              type metadata accessor for Localized();
              v56 = swift_getObjCClassFromMetadata();
              v57 = [objc_opt_self() bundleForClass_];
              sub_1D7D2811C();

              sub_1D7CDB28C(0, &qword_1EE0BE830, sub_1D79D69BC, MEMORY[0x1E69E6F90]);
              v58 = swift_initStackObject();
              *(v58 + 16) = xmmword_1D7D3B4E0;
              v59 = *MEMORY[0x1E69DB648];
              *(v58 + 32) = *MEMORY[0x1E69DB648];
              v60 = *&v3[qword_1EC9E8580];
              v61 = sub_1D7992EFC(0, &qword_1EE0BED40);
              *(v58 + 64) = v61;
              if (v60)
              {
                v62 = v59;
                v63 = v60;
              }

              else
              {
                v98 = objc_opt_self();
                v99 = *MEMORY[0x1E69DB960];
                v100 = v59;
                v101 = [v98 systemFontOfSize:13.0 weight:{v99, 0x80000001D7D7FC20}];
                v102 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
                v63 = [v102 scaledFontForFont:v101 maximumPointSize:19.0];

                v60 = 0;
              }

              *(v58 + 40) = v63;
              v103 = *MEMORY[0x1E69DB650];
              *(v58 + 72) = *MEMORY[0x1E69DB650];
              v130 = v103;
              v104 = v60;
              v105 = sub_1D7CD7908();
              v131 = sub_1D7992EFC(0, &qword_1EE0BECE8);
              *(v58 + 104) = v131;
              *(v58 + 80) = v105;
              sub_1D7A5092C(v58);
              swift_setDeallocating();
              sub_1D79D69BC();
              swift_arrayDestroy();
              v106 = objc_allocWithZone(MEMORY[0x1E696AD40]);
              v107 = sub_1D7D3031C();

              type metadata accessor for Key(0);
              sub_1D79F7BE0();
              v108 = sub_1D7D3027C();

              v109 = [v106 initWithString:v107 attributes:v108];

              v110 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
              v111 = sub_1D7D3031C();
              v112 = [v110 initWithString_];

              [v109 appendAttributedString_];
              sub_1D7D2F8BC();
              sub_1D7D2F8AC();
              v113 = swift_initStackObject();
              *(v113 + 32) = v59;
              *(v113 + 16) = xmmword_1D7D3C680;
              v114 = *&v3[qword_1EC9E8588];
              *(v113 + 64) = v61;
              if (v114)
              {
                v115 = v114;
              }

              else
              {
                v116 = [objc_opt_self() systemFontOfSize_];
                v117 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
                v115 = [v117 scaledFontForFont:v116 maximumPointSize:19.0];

                v114 = 0;
              }

              *(v113 + 40) = v115;
              *(v113 + 72) = v130;
              v118 = v114;
              v119 = sub_1D7CD7908();
              v120 = [v119 colorWithAlphaComponent_];

              *(v113 + 80) = v120;
              v121 = *MEMORY[0x1E69DB660];
              *(v113 + 104) = v131;
              *(v113 + 112) = v121;
              *(v113 + 144) = MEMORY[0x1E69E63B0];
              *(v113 + 120) = 0xBFD3D70A3D70A3D7;
              v122 = v121;
              sub_1D7A5092C(v113);
              swift_setDeallocating();
              swift_arrayDestroy();
              v123 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
              v124 = sub_1D7D3031C();

              v125 = sub_1D7D3027C();

              v126 = [v123 initWithString:v124 attributes:v125];

              [v109 appendAttributedString_];
              v44 = v109;
              [v3 setAttributedTitle:v44 forState:0];

              goto LABEL_40;
            }

            type metadata accessor for Localized();
            v49 = swift_getObjCClassFromMetadata();
            v50 = [objc_opt_self() bundleForClass_];
            v127 = 0x80000001D7D7FC20;
            sub_1D7D2811C();

            sub_1D7CDB28C(0, &qword_1EE0BE830, sub_1D79D69BC, MEMORY[0x1E69E6F90]);
            v51 = swift_initStackObject();
            *(v51 + 16) = xmmword_1D7D3B4E0;
            v52 = *MEMORY[0x1E69DB648];
            *(v51 + 32) = *MEMORY[0x1E69DB648];
            v53 = *&v3[qword_1EC9E8580];
            v129 = sub_1D7992EFC(0, &qword_1EE0BED40);
            *(v51 + 64) = v129;
            v132 = v52;
            if (v53)
            {
              v54 = v52;
              v55 = v53;
            }

            else
            {
              v64 = objc_opt_self();
              v65 = *MEMORY[0x1E69DB960];
              v66 = v52;
              v67 = [v64 systemFontOfSize:13.0 weight:{v65, 0x80000001D7D7FC20}];
              v68 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
              v55 = [v68 scaledFontForFont:v67 maximumPointSize:19.0];

              v53 = 0;
            }

            *(v51 + 40) = v55;
            v69 = *MEMORY[0x1E69DB650];
            *(v51 + 72) = *MEMORY[0x1E69DB650];
            v128 = v69;
            v70 = v53;
            v71 = sub_1D7CD7908();
            v72 = sub_1D7992EFC(0, &qword_1EE0BECE8);
            *(v51 + 104) = v72;
            *(v51 + 80) = v71;
            sub_1D7A5092C(v51);
            swift_setDeallocating();
            sub_1D79D69BC();
            swift_arrayDestroy();
            v73 = objc_allocWithZone(MEMORY[0x1E696AD40]);
            v74 = sub_1D7D3031C();

            type metadata accessor for Key(0);
            sub_1D79F7BE0();
            v75 = sub_1D7D3027C();

            v76 = [v73 initWithString:v74 attributes:v75];

            if ((v48[1] & 1) == 0)
            {
              sub_1D7D2F8BC();
              sub_1D7D2F8AC();
              v77 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
              v78 = sub_1D7D3031C();
              v79 = [v77 initWithString_];

              [v76 appendAttributedString_];
              v80 = swift_initStackObject();
              *(v80 + 32) = v132;
              *(v80 + 16) = xmmword_1D7D3C680;
              v81 = *&v3[qword_1EC9E8588];
              *(v80 + 64) = v129;
              if (v81)
              {
                v82 = v132;
                v83 = v81;
              }

              else
              {
                v84 = objc_opt_self();
                v85 = v132;
                v86 = [v84 systemFontOfSize_];
                v87 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
                v83 = [v87 scaledFontForFont:v86 maximumPointSize:19.0];

                v81 = 0;
              }

              *(v80 + 40) = v83;
              *(v80 + 72) = v128;
              v88 = v128;
              v89 = v81;
              v90 = sub_1D7CD7908();
              v91 = [v90 colorWithAlphaComponent_];

              *(v80 + 80) = v91;
              v92 = *MEMORY[0x1E69DB660];
              *(v80 + 104) = v72;
              *(v80 + 112) = v92;
              *(v80 + 144) = MEMORY[0x1E69E63B0];
              *(v80 + 120) = 0xBFD3D70A3D70A3D7;
              v93 = v92;
              sub_1D7A5092C(v80);
              swift_setDeallocating();
              swift_arrayDestroy();
              v94 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
              v95 = sub_1D7D3031C();

              v96 = sub_1D7D3027C();

              v97 = [v94 initWithString:v95 attributes:v96];

              [v76 appendAttributedString_];
            }

            v43 = v76;
LABEL_39:
            v44 = v43;
            [v3 setAttributedTitle:v43 forState:{0, v127}];
LABEL_40:

            swift_unknownObjectRelease();
            return;
          }

          type metadata accessor for Localized();
          v26 = swift_getObjCClassFromMetadata();
          v27 = [objc_opt_self() bundleForClass_];
          v127 = 0x80000001D7D7FBB0;
          sub_1D7D2811C();

          sub_1D7CDB28C(0, &qword_1EE0BE830, sub_1D79D69BC, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7D3B4E0;
          v18 = *MEMORY[0x1E69DB648];
          *(inited + 32) = *MEMORY[0x1E69DB648];
          v19 = *&v3[qword_1EC9E8580];
          *(inited + 64) = sub_1D7992EFC(0, &qword_1EE0BED40);
          if (!v19)
          {
            goto LABEL_37;
          }
        }

        v28 = v18;
        v29 = v19;
LABEL_38:
        *(inited + 40) = v29;
        v35 = *MEMORY[0x1E69DB650];
        *(inited + 72) = *MEMORY[0x1E69DB650];
        v36 = v19;
        v37 = v35;
        v38 = sub_1D7CD7908();
        *(inited + 104) = sub_1D7992EFC(0, &qword_1EE0BECE8);
        *(inited + 80) = v38;
        sub_1D7A5092C(inited);
        swift_setDeallocating();
        sub_1D79D69BC();
        swift_arrayDestroy();
        v39 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v40 = sub_1D7D3031C();

        type metadata accessor for Key(0);
        sub_1D79F7BE0();
        v41 = sub_1D7D3027C();

        v42 = [v39 initWithString:v40 attributes:v41];

        v43 = v42;
        goto LABEL_39;
      }
    }

    else
    {
      sub_1D79F0014(&v136);
    }

    v6 = 0;
    v8 = 0;
    goto LABEL_11;
  }
}

id AudioButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1D7CDA4E8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EC9E8578);

  swift_unknownObjectRelease();
  sub_1D7CDACB0(v0 + qword_1EC9E8568);
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EC9E8570);
  v1 = *(v0 + qword_1EC9E85B0);
}

id AudioButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7CDA5D0(uint64_t a1)
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_1EC9E8578);

  swift_unknownObjectRelease();
  sub_1D7CDACB0(a1 + qword_1EC9E8568);
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_1EC9E8570);
  v2 = *(a1 + qword_1EC9E85B0);
}

uint64_t sub_1D7CDA68C(char a1)
{
  v3 = qword_1EC9E8550;
  result = swift_beginAccess();
  v1[v3] = a1;
  if ((a1 & 1) == 0)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1D7CDB31C;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1D7CDB318;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7C138DC;
    aBlock[3] = &block_descriptor_73;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_1D7CDA814(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[qword_1EC9E8550] = 0;
  v9 = qword_1EC9E8590;
  v10 = [objc_allocWithZone(NANowPlayingIndicatorView) init];
  [v10 setNumberOfLevels_];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemGrayColor];
  [v12 setTintColor_];

  *&v4[v9] = v12;
  *&v4[qword_1EC9E8580] = 0;
  *&v4[qword_1EC9E8588] = 0;
  *&v4[qword_1EC9E8558] = 0;
  v14 = &v4[qword_1EC9E8560];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v4[qword_1EC9E8568];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v4[qword_1EC9E8598] = 0;
  sub_1D799CC84(a1, &v4[qword_1EC9E8570]);
  *&v4[qword_1EC9E85B0] = a2;
  *&v4[qword_1EC9E85A8] = a3;
  sub_1D799CC84(a4, &v4[qword_1EC9E8578]);
  v30.receiver = v4;
  v30.super_class = type metadata accessor for AudioButton();
  v16 = a2;
  swift_unknownObjectRetain();
  v17 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = *&v17[qword_1EC9E8590];
  v19 = v17;
  [v19 addSubview_];
  v20 = [objc_opt_self() configurationWithPointSize:5 weight:13.0];
  sub_1D7D301EC();
  v21 = sub_1D7D3012C();
  v22 = [v21 imageByApplyingSymbolConfiguration_];

  [v19 setImage:v22 forState:0];
  [v19 setImage:v22 forState:1];
  v23 = *&v19[qword_1EC9E85B0];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29[4] = sub_1D7CDB2F0;
  v29[5] = v24;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1D7BD5E84;
  v29[3] = &block_descriptor_88;
  v25 = _Block_copy(v29);
  v26 = v23;

  v27 = [v26 observe_];
  _Block_release(v25);

  [v27 disposeOn_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7CDABB8(uint64_t a1, uint64_t a2)
{
  sub_1D7CDB28C(0, &qword_1EE0C0500, sub_1D7CDAC4C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7CDAC4C()
{
  result = qword_1EE0C0508;
  if (!qword_1EE0C0508)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C0508);
  }

  return result;
}

uint64_t sub_1D7CDACB0(uint64_t a1)
{
  sub_1D7CDB28C(0, &qword_1EE0C0500, sub_1D7CDAC4C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7CDAD44(uint64_t a1, uint64_t a2)
{
  sub_1D7CDB28C(0, &qword_1EE0C0500, sub_1D7CDAC4C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AudioButton()
{
  result = qword_1EC9E85B8;
  if (!qword_1EC9E85B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CDB134()
{
  *(v0 + qword_1EC9E8550) = 0;
  v1 = qword_1EC9E8590;
  v2 = [objc_allocWithZone(NANowPlayingIndicatorView) init];
  [v2 setNumberOfLevels_];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemGrayColor];
  [v4 setTintColor_];

  *(v0 + v1) = v4;
  *(v0 + qword_1EC9E8580) = 0;
  *(v0 + qword_1EC9E8588) = 0;
  *(v0 + qword_1EC9E8558) = 0;
  v6 = v0 + qword_1EC9E8560;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + qword_1EC9E8568;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v0 + qword_1EC9E8598) = 0;
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7CDB28C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t BaseStyler.init(locale:keyColor:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_opt_self();
  a3[5] = [v6 labelColor];
  a3[6] = [v6 systemBackgroundColor];
  sub_1D79F85FC();
  a3[7] = sub_1D7D3115C();
  result = sub_1D79E14FC(a1, a3);
  a3[8] = a2;
  return result;
}

id BaseStyler.paletteLightGray.getter()
{
  v0 = [objc_opt_self() lightGrayColor];

  return v0;
}

Swift::Void __swiftcall BaseStyler.style(toolbarItem:)(UIBarButtonItem *toolbarItem)
{
  v2 = [(UIBarButtonItem *)toolbarItem customView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() labelColor];
    [(UIView *)v3 setTintColor:v4];
  }

  v5 = [(UIBarButtonItem *)toolbarItem customView];
  if (v5)
  {
    v6 = v5;
    [(UIView *)v5 setShowsLargeContentViewer:1];
  }

  v7 = [(UIBarButtonItem *)toolbarItem customView];
  if (v7)
  {
    v8 = v7;
    v9 = [(UIBarButtonItem *)toolbarItem accessibilityLabel];
    [(UIView *)v8 setLargeContentTitle:v9];
  }
}

id sub_1D7CDB588()
{
  v0 = [objc_opt_self() lightGrayColor];

  return v0;
}

uint64_t sub_1D7CDB66C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7CDB68C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t AnalyticsANFComponentData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnalyticsANFComponentData.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnalyticsANFComponentData.role.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AnalyticsANFComponentData.metadata.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D7CDB7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1D7CDB800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7CDB874()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EE0BD7B8);
  __swift_project_value_buffer(v0, qword_1EE0BD7B8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7BE6D34();
  v5 = sub_1D7D2EF9C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7D3B4D0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E69B60F0], v5);
  return sub_1D7D2EF6C();
}

uint64_t sub_1D7CDBAEC()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EE0BD790);
  __swift_project_value_buffer(v0, qword_1EE0BD790);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7CDBCBC()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E85C8);
  __swift_project_value_buffer(v0, qword_1EC9E85C8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7BE6D34();
  v5 = sub_1D7D2EF9C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7D3B4D0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E69B60F0], v5);
  return sub_1D7D2EF6C();
}

uint64_t sub_1D7CDBF38()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E85E0);
  __swift_project_value_buffer(v0, qword_1EC9E85E0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7CDC104()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E85F8);
  __swift_project_value_buffer(v0, qword_1EC9E85F8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7CDC3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v130 = a2;
  v133 = a1;
  v134 = a4;
  sub_1D7CDDB90(0, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v126 = &v109 - v6;
  v129 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  v124 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v7);
  v117 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v125 = &v109 - v11;
  sub_1D7CDDB90(0, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v122 = &v109 - v14;
  v120 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  v131 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v15);
  v115 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v121 = &v109 - v19;
  sub_1D7995698();
  v127 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v116 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v114 = &v109 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v112 = &v109 - v29;
  sub_1D7CDDB90(0, &qword_1EC9E34E0, sub_1D7995698);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v118 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v123 = &v109 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v113 = &v109 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v119 = &v109 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v109 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v109 - v48;
  sub_1D7CDDB90(0, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v109 - v52;
  v54 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v56);
  v58 = &v109 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v109 - v61;
  sub_1D7CDDBE4(v133, v53, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
  v63 = *(v55 + 48);
  v64 = v63(v53, 1, v54);
  v132 = v21;
  if (v64 == 1)
  {
    v110 = v63;
    v109 = v62;
    v65 = v127;
    (*(v21 + 56))(v49, 1, 1, v127);
    v111 = v49;
    sub_1D7CDDBE4(v49, v45, &qword_1EC9E34E0, sub_1D7995698);
    v66 = *(v21 + 48);
    if (v66(v45, 1, v65) == 1)
    {
      type metadata accessor for EndOfRecipeFeedServiceConfig();
      sub_1D79954A0(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
      v67 = v132;
      v68 = v112;
      sub_1D7D2E33C();
      v69 = v127;
      if (v66(v45, 1, v127) != 1)
      {
        sub_1D7CDDC50(v45, &qword_1EC9E34E0, sub_1D7995698);
      }
    }

    else
    {
      v67 = v21;
      v68 = v112;
      v69 = v127;
      (*(v21 + 32))(v112, v45, v127);
    }

    (*(v67 + 32))(v58, v68, v69);
    v135 = 1;
    sub_1D7994BB0();
    swift_allocObject();
    *&v58[*(v54 + 20)] = sub_1D7D2E71C();
    v135 = 10;
    swift_allocObject();
    v72 = sub_1D7D2E71C();
    sub_1D7CDDC50(v111, &qword_1EC9E34E0, sub_1D7995698);
    *&v58[*(v54 + 24)] = v72;
    v62 = v109;
    sub_1D7CDDCAC(v58, v109, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
    v73 = v110(v53, 1, v54);
    v71 = v120;
    v70 = v130;
    if (v73 != 1)
    {
      sub_1D7CDDC50(v53, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
    }
  }

  else
  {
    sub_1D7CDDCAC(v53, v62, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
    v70 = v130;
    v69 = v127;
    v71 = v120;
  }

  sub_1D7CDDCAC(v62, v134, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
  v74 = v122;
  sub_1D7CDDBE4(v70, v122, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  v75 = v131 + 48;
  v76 = *(v131 + 48);
  v77 = v76(v74, 1, v71);
  v78 = v124;
  if (v77 == 1)
  {
    v131 = v75;
    v79 = v132;
    v80 = v119;
    (*(v132 + 56))(v119, 1, 1, v69);
    v81 = v113;
    sub_1D7CDDBE4(v80, v113, &qword_1EC9E34E0, sub_1D7995698);
    v82 = *(v79 + 48);
    if (v82(v81, 1, v69) == 1)
    {
      type metadata accessor for EndOfRecipeFeedServiceConfig();
      sub_1D79954A0(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
      v79 = v132;
      v83 = v114;
      sub_1D7D2E33C();
      v84 = v83;
      if (v82(v81, 1, v69) != 1)
      {
        sub_1D7CDDC50(v81, &qword_1EC9E34E0, sub_1D7995698);
      }
    }

    else
    {
      v84 = v114;
      (*(v79 + 32))(v114, v81, v69);
    }

    v88 = v115;
    (*(v79 + 32))(v115, v84, v69);
    v135 = 3;
    sub_1D7994BB0();
    swift_allocObject();
    *(v88 + *(v71 + 20)) = sub_1D7D2E71C();
    v135 = 10;
    swift_allocObject();
    v89 = sub_1D7D2E71C();
    sub_1D7CDDC50(v119, &qword_1EC9E34E0, sub_1D7995698);
    *(v88 + *(v71 + 24)) = v89;
    v85 = v121;
    sub_1D7CDDCAC(v88, v121, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
    v90 = v76(v74, 1, v71);
    v87 = v128;
    v70 = v130;
    v86 = v126;
    if (v90 != 1)
    {
      sub_1D7CDDC50(v74, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
    }
  }

  else
  {
    v85 = v121;
    sub_1D7CDDCAC(v74, v121, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
    v86 = v126;
    v87 = v128;
  }

  v91 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  sub_1D7CDDCAC(v85, v134 + *(v91 + 20), type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  sub_1D7CDDBE4(v87, v86, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  v92 = *(v78 + 48);
  if (v92(v86, 1, v129) == 1)
  {
    v93 = v132;
    v94 = v123;
    (*(v132 + 56))(v123, 1, 1, v69);
    v95 = v94;
    v96 = v118;
    sub_1D7CDDBE4(v95, v118, &qword_1EC9E34E0, sub_1D7995698);
    v97 = *(v93 + 48);
    if (v97(v96, 1, v69) == 1)
    {
      type metadata accessor for EndOfRecipeFeedServiceConfig();
      sub_1D79954A0(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
      v98 = v118;
      v99 = v116;
      sub_1D7D2E33C();
      v100 = v97(v98, 1, v69);
      v101 = v69;
      if (v100 != 1)
      {
        sub_1D7CDDC50(v98, &qword_1EC9E34E0, sub_1D7995698);
        v101 = v69;
      }
    }

    else
    {
      v103 = *(v93 + 32);
      v99 = v116;
      v103(v116, v96, v69);
      v101 = v69;
    }

    v104 = v117;
    (*(v132 + 32))(v117, v99, v101);
    v135 = 3;
    sub_1D7994BB0();
    swift_allocObject();
    v105 = sub_1D7D2E71C();
    v106 = v129;
    *(v104 + *(v129 + 20)) = v105;
    v135 = 10;
    swift_allocObject();
    v107 = sub_1D7D2E71C();
    sub_1D7CDDC50(v128, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
    sub_1D7CDDC50(v70, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
    sub_1D7CDDC50(v133, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
    sub_1D7CDDC50(v123, &qword_1EC9E34E0, sub_1D7995698);
    *(v104 + *(v106 + 24)) = v107;
    v102 = v125;
    sub_1D7CDDCAC(v104, v125, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
    if (v92(v86, 1, v106) != 1)
    {
      sub_1D7CDDC50(v86, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
    }
  }

  else
  {
    sub_1D7CDDC50(v87, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
    sub_1D7CDDC50(v70, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
    sub_1D7CDDC50(v133, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
    v102 = v125;
    sub_1D7CDDCAC(v86, v125, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  }

  return sub_1D7CDDCAC(v102, v134 + *(v91 + 24), type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
}

uint64_t sub_1D7CDD40C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1D7CDDB90(0, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v24 = &v22 - v6;
  sub_1D7CDDB90(0, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22 - v9;
  sub_1D7CDDB90(0, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  sub_1D7CDDD68(0, &qword_1EC9E8610, MEMORY[0x1E69E6F48]);
  v16 = v15;
  v23 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v22 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CDDD14();
  sub_1D7D31AFC();
  if (!v2)
  {
    type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
    v28 = 0;
    sub_1D79954A0(&qword_1EC9E7318, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
    sub_1D7D3173C();
    type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
    v27 = 1;
    sub_1D79954A0(&qword_1EC9E3CE8, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
    sub_1D7D3173C();
    type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
    v26 = 2;
    sub_1D79954A0(&qword_1EC9E34F8, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
    v20 = v24;
    sub_1D7D3173C();
    sub_1D7CDC3B0(v14, v10, v20, v25);
    (*(v23 + 8))(v19, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7CDD7BC(void *a1)
{
  sub_1D7CDDD68(0, &qword_1EC9E8620, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CDDD14();
  sub_1D7D31B1C();
  v10[15] = 0;
  type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
  sub_1D79954A0(&qword_1EC9E7320, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
  sub_1D7D318BC();
  if (!v1)
  {
    type metadata accessor for EndOfRecipeFeedGroupKnobs();
    v10[14] = 1;
    type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
    sub_1D79954A0(&qword_1EC9E3CF0, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
    sub_1D7D318BC();
    v10[13] = 2;
    type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
    sub_1D79954A0(&qword_1EC9E3500, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
    sub_1D7D318BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7CDDA44()
{
  v1 = 0x52646574616C6572;
  if (*v0 != 1)
  {
    v1 = 0x6F54657069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41646574616C6572;
  }
}

uint64_t sub_1D7CDDAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7CDDEE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7CDDAE8(uint64_t a1)
{
  v2 = sub_1D7CDDD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CDDB24(uint64_t a1)
{
  v2 = sub_1D7CDDD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7CDDB90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7CDDBE4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7CDDB90(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7CDDC50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7CDDB90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7CDDCAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7CDDD14()
{
  result = qword_1EC9E8618;
  if (!qword_1EC9E8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8618);
  }

  return result;
}

void sub_1D7CDDD68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7CDDD14();
    v7 = a3(a1, &type metadata for EndOfRecipeFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7CDDDE0()
{
  result = qword_1EC9E8628;
  if (!qword_1EC9E8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8628);
  }

  return result;
}

unint64_t sub_1D7CDDE38()
{
  result = qword_1EC9E8630;
  if (!qword_1EC9E8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8630);
  }

  return result;
}

unint64_t sub_1D7CDDE90()
{
  result = qword_1EC9E8638;
  if (!qword_1EC9E8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8638);
  }

  return result;
}

uint64_t sub_1D7CDDEE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x41646574616C6572 && a2 == 0xEF73656C63697472;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52646574616C6572 && a2 == 0xEE00736570696365 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54657069636572 && a2 == 0xEC00000073636970)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

uint64_t sub_1D7CDE010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a1;
  v8[4] = a2;

  sub_1D7D294EC();
}

uint64_t sub_1D7CDE0A0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1D7D2D35C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  [v10 dynamicBounds];
  [v10 dynamicBounds];
  [v10 bounds];
  [v10 documentSize];
  sub_1D7D2D34C();
  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1D7CDE270()
{
  sub_1D7CDE2CC();
  swift_allocObject();
  return sub_1D7D2946C();
}

void sub_1D7CDE2CC()
{
  if (!qword_1EE0C0290)
  {
    sub_1D7D2D35C();
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0290);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D7CDE370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D7CDE3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7CDE41C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v83 = a3;
  v84 = a2;
  sub_1D7A13800();
  v71 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CDEE64(0, &qword_1EC9E8650, MEMORY[0x1E69D7ED8]);
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v80 = &v63 - v11;
  sub_1D7CDEC44();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v76 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CDED70();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v75 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_1D7CDEE64(0, &qword_1EC9E8690, MEMORY[0x1E69D87F8]);
  v78 = *(v20 - 8);
  v79 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = &v63 - v22;
  v23 = *v3;
  v24 = v3[6];
  v66 = v3[5];
  v65 = v24;
  v25 = v3[7];
  sub_1D7CDEEE8();
  sub_1D7CDEE64(0, &qword_1EC9E32E0, MEMORY[0x1E69D7980]);
  v74 = v26;
  v27 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v72 = *(*(v26 - 8) + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7D3B4E0;
  v73 = v28;
  v29 = v28 + v27;
  sub_1D7A604A0();
  v90 = 0;
  v91 = 0;
  v30 = *(v5 + 72);
  v64 = v5;
  v31 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v85 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7D3B4D0;
  v87 = v23;
  v88 = 0u;
  memset(v89, 0, 25);
  sub_1D7A13440();
  swift_unknownObjectRetain();
  v33 = v25;

  sub_1D7D29EDC();
  v34 = sub_1D7CDEE20(&qword_1EC9E8680);
  v35 = sub_1D7CDEE20(&qword_1EC9E8688);
  v36 = v71;
  v68 = v34;
  v67 = v35;
  MEMORY[0x1DA706A80](v32);
  v37 = sub_1D7A133E8();
  v70 = v29;
  v69 = v37;
  sub_1D7D2A42C();
  v90 = v65;
  v91 = v33;
  v38 = v66;
  v39 = *(v66 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v86 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C988(0, v39, 0);
    v40 = v86;
    v41 = (v64 + 32);
    v42 = (v38 + 72);
    do
    {
      v43 = *(v42 - 4);
      v44 = *(v42 - 3);
      v45 = *(v42 - 2);
      v47 = *(v42 - 1);
      v46 = *v42;
      v87 = *(v42 - 5);
      *&v88 = v43;
      *(&v88 + 1) = v44;
      *&v89[0] = v45;
      *(&v89[0] + 1) = v47;
      *&v89[1] = v46;
      BYTE8(v89[1]) = 1;

      sub_1D7D29EDC();
      v86 = v40;
      v49 = *(v40 + 16);
      v48 = *(v40 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D7A5C988(v48 > 1, v49 + 1, 1);
        v40 = v86;
      }

      v42 += 6;
      *(v40 + 16) = v49 + 1;
      (*v41)(v40 + v31 + v49 * v85, v8, v36);
      --v39;
    }

    while (v39);
  }

  MEMORY[0x1DA706A80](v40, v36, v68, v67);
  sub_1D7D2A42C();
  v50 = sub_1D7CDED10(&qword_1EC9E8668);
  v51 = sub_1D7CDED10(&qword_1EC9E8670);
  MEMORY[0x1DA706A70](v73, v74, v50, v51);
  v52 = v77;
  sub_1D7D2C7FC();
  sub_1D7CDEF5C();
  v54 = *(v53 + 48);
  v56 = v78;
  v55 = v79;
  v57 = v80;
  (*(v78 + 16))(v80, v52, v79);
  v58 = *MEMORY[0x1E69D7A40];
  v59 = sub_1D7D2A68C();
  (*(*(v59 - 8) + 104))(&v57[v54], v58, v59);
  v61 = v81;
  v60 = v82;
  (*(v81 + 104))(v57, *MEMORY[0x1E69D7EC8], v82);
  v84(v57);
  (*(v61 + 8))(v57, v60);
  return (*(v56 + 8))(v52, v55);
}

uint64_t sub_1D7CDEBBC()
{
  v1 = *(v0 + 64);

  return v1;
}

unint64_t sub_1D7CDEBF0()
{
  result = qword_1EC9E8640;
  if (!qword_1EC9E8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8640);
  }

  return result;
}

void sub_1D7CDEC44()
{
  if (!qword_1EC9E8658)
  {
    sub_1D7CDEE64(255, &qword_1EC9E32E0, MEMORY[0x1E69D7980]);
    sub_1D7CDED10(&qword_1EC9E8668);
    sub_1D7CDED10(&qword_1EC9E8670);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8658);
    }
  }
}

uint64_t sub_1D7CDED10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7CDEE64(255, &qword_1EC9E32E0, MEMORY[0x1E69D7980]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7CDED70()
{
  if (!qword_1EC9E8678)
  {
    sub_1D7A13800();
    sub_1D7CDEE20(&qword_1EC9E8680);
    sub_1D7CDEE20(&qword_1EC9E8688);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8678);
    }
  }
}

uint64_t sub_1D7CDEE20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7A13800();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7CDEE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ReportConcernDetailSectionDescriptor;
    v8[1] = &type metadata for ReportConcernDetailModel;
    v8[2] = sub_1D7A133E8();
    v8[3] = sub_1D7A13440();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7CDEEE8()
{
  if (!qword_1EC9E8698)
  {
    sub_1D7CDEE64(255, &qword_1EC9E32E0, MEMORY[0x1E69D7980]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8698);
    }
  }
}

void sub_1D7CDEF5C()
{
  if (!qword_1EC9E86A8)
  {
    sub_1D7CDEE64(255, &qword_1EC9E8690, MEMORY[0x1E69D87F8]);
    sub_1D7D2A68C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E86A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles25EndOfArticleSectionResultVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1D7CDF050(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 249))
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

uint64_t sub_1D7CDF0AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 249) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 249) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D7CDF150@<X0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  sub_1D7CDF2BC(v2, v11);
  if (v11[0])
  {
    v5 = v12;
    sub_1D7ADA4FC(v11);
    if (v5 != 6)
    {
      if (v5 != v4)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_1D7ADA450(v11);
  }

  if (v4 != 6)
  {
LABEL_4:
    sub_1D7CDF2BC(v2 + 64, v11);
    if (v11[0])
    {
      v6 = v12;
      sub_1D7ADA4FC(v11);
      if (v6 != 6)
      {
        if (v6 != v4)
        {
          goto LABEL_7;
        }

LABEL_19:
        v10 = v2 + 64;
        return sub_1D7CDF2BC(v10, a2);
      }
    }

    else
    {
      sub_1D7ADA450(v11);
    }

    if (v4 != 6)
    {
LABEL_7:
      sub_1D7CDF2BC(v2 + 128, v11);
      if (v11[0])
      {
        v7 = v12;
        sub_1D7ADA4FC(v11);
        if (v7 != 6)
        {
          if (v7 != v4)
          {
            goto LABEL_10;
          }

LABEL_22:
          v10 = v2 + 128;
          return sub_1D7CDF2BC(v10, a2);
        }
      }

      else
      {
        sub_1D7ADA450(v11);
      }

      if (v4 != 6)
      {
LABEL_10:
        sub_1D7CDF2BC(v2 + 192, v11);
        if (v11[0])
        {
          v8 = v12;
          result = sub_1D7ADA4FC(v11);
          if (v8 != 6)
          {
            if (v8 != v4)
            {
LABEL_13:
              *(a2 + 41) = 0u;
              a2[1] = 0u;
              a2[2] = 0u;
              *a2 = 0u;
              return result;
            }

            goto LABEL_25;
          }
        }

        else
        {
          result = sub_1D7ADA450(v11);
        }

        if (v4 != 6)
        {
          goto LABEL_13;
        }

LABEL_25:
        v10 = v2 + 192;
        return sub_1D7CDF2BC(v10, a2);
      }

      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = v2;
  return sub_1D7CDF2BC(v10, a2);
}

uint64_t sub_1D7CDF2BC(uint64_t a1, uint64_t a2)
{
  sub_1D7ADA4AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7CDF320@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1D7CDF598();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CDF5F0(a1, v7);
  v8 = sub_1D7D27D9C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D7CDF654(v7);
LABEL_6:
    v14 = objc_opt_self();
    v12 = sub_1D7D3031C();
    v13 = [v14 nss:v12 NewsURLForRecipeID:0 articleID:?];
    goto LABEL_7;
  }

  if ((*(v9 + 88))(v7, v8) != *MEMORY[0x1E6997330])
  {
    (*(v9 + 8))(v7, v8);
    goto LABEL_6;
  }

  (*(v9 + 96))(v7, v8);
  v10 = objc_opt_self();
  v11 = sub_1D7D3031C();
  v12 = sub_1D7D3031C();

  v13 = [v10 nss:v11 NewsURLForRecipeID:v12 articleID:?];

LABEL_7:
  sub_1D7D281EC();

  v15 = sub_1D7D2824C();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

void sub_1D7CDF598()
{
  if (!qword_1EC9E5918)
  {
    sub_1D7D27D9C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5918);
    }
  }
}

uint64_t sub_1D7CDF5F0(uint64_t a1, uint64_t a2)
{
  sub_1D7CDF598();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7CDF654(uint64_t a1)
{
  sub_1D7CDF598();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnalyticsMediaType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7CDF73C()
{
  result = qword_1EC9E86B0;
  if (!qword_1EC9E86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E86B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDFReplicaViewerOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

unint64_t sub_1D7CDF858()
{
  result = qword_1EC9E86B8;
  if (!qword_1EC9E86B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E86B8);
  }

  return result;
}

id sub_1D7CDF8BC(double a1)
{
  v3 = *(v1 + 24);
  v4 = objc_opt_self();
  v5 = MEMORY[0x1E69DB960];
  if (v3)
  {
    v5 = MEMORY[0x1E69DB958];
  }

  v6 = [v4 systemFontOfSize:a1 weight:*v5];

  return v6;
}

uint64_t sub_1D7CDF94C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = [a1 isPaid];
  if ([a1 respondsToSelector_])
  {
    v5 = [a1 isBundlePaid];
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 sourceChannel];
  if (v6)
  {
    v7 = [v6 identifier];
    swift_unknownObjectRelease();
    v8 = sub_1D7D3034C();
    v10 = v9;

    if (v4)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = 0;
  v10 = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_6:
  v11 = [v3 purchaseProvider];
  if (v10)
  {
    v12 = [v11 purchasedTagIDs];
    v13 = sub_1D7D309AC();

    LOBYTE(v12) = sub_1D7D053C8(v8, v10, v13);

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_15:
  if (v10)
  {
    v15 = [objc_msgSend(v3 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v15, v15 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v16 = v27;
        v17 = [v27 integerValue];
        if (v17 == -1)
        {

          goto LABEL_36;
        }

        v18 = v17;
LABEL_25:
        if (objc_getAssociatedObject(v15, ~v18))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30 = v28;
        v31 = v29;
        if (*(&v29 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v19 = v27;
            v20 = [v19 integerValue];

            if ((v20 ^ v18))
            {
LABEL_36:
              v21 = [objc_msgSend(v3 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v22 = [v21 bundleChannelIDs];

              v23 = sub_1D7D3031C();
              LOBYTE(v21) = [v22 containsObject_];

              if ((v21 & 1) == 0)
              {
                goto LABEL_37;
              }

              return 1;
            }

LABEL_34:

            goto LABEL_37;
          }
        }

        else
        {
          sub_1D79F0014(&v30);
        }

        if (v18)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_1D79F0014(&v30);
    }

    v16 = 0;
    v18 = 0;
    goto LABEL_25;
  }

LABEL_37:
  v24 = *(v1 + 32);
  v25 = [a1 articleID];
  if (!v25)
  {
    sub_1D7D3034C();
    v25 = sub_1D7D3031C();
  }

  v26 = [v24 isArticleOnReadingList_];

  return v26;
}

id sub_1D7CDFD88(void *a1)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = sub_1D7D3034C();
    v7 = v6;

    if (v5 == 0x6C7070612E6D6F63 && v7 == 0xEE007377656E2E65)
    {

      return 0;
    }

    v9 = sub_1D7D3197C();

    if (v9)
    {
      return 0;
    }
  }

  result = [a1 isPaid];
  if (!result)
  {
    return result;
  }

  v11 = *(v1 + 24);
  v12 = [v11 purchaseProvider];
  v13 = [a1 sourceChannel];
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v14 = v13;
  if ([swift_unknownObjectRetain() tagType] != 3)
  {
    v16 = [v14 identifier];
    goto LABEL_16;
  }

  v15 = [v14 asSection];
  if (v15)
  {
    v16 = [v15 parentID];
    swift_unknownObjectRelease();
    if (v16)
    {
LABEL_16:
      v17 = sub_1D7D3034C();
      v19 = v18;

      v20 = [v12 purchasedTagIDs];
      v21 = sub_1D7D309AC();

      LOBYTE(v20) = sub_1D7D053C8(v17, v19, v21);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

      return 0;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
LABEL_18:
  v22 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v23 = [v22 bundleChannelIDs];

  v24 = [a1 sourceChannel];
  if (v24)
  {
    v25 = [v24 identifier];
    swift_unknownObjectRelease();
    sub_1D7D3034C();
  }

  v26 = sub_1D7D3031C();

  v27 = [v23 containsObject_];

  return (v27 ^ 1);
}

uint64_t sub_1D7CE00F8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CE0164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBDD0);
    result = sub_1D7D28D2C();
    if (v9)
    {
      v6 = type metadata accessor for IssueTableOfContentsModule();
      v7 = swift_allocObject();
      sub_1D799D69C(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_1D799D69C(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_1F52A22E8;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE0278@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TableOfContentsModule();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for TableOfContentsModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE0328()
{
  type metadata accessor for TableOfContentsViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E86C8);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E86D0);
  sub_1D7D291EC();
  type metadata accessor for TableOfContentsRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E86D8);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E86E0);
  sub_1D7D291EC();

  sub_1D7CE3EE8();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CE3F7C(0);
  sub_1D7D291DC();

  type metadata accessor for TableOfContentsBlueprintModifierFactory();
  sub_1D7D291DC();

  sub_1D7CE3F9C();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CE4800();
  sub_1D7D291DC();

  sub_1D7D2BD6C();
  sub_1D7D291DC();

  sub_1D7CE4088();
  sub_1D7D291DC();

  sub_1D7CE493C();
  sub_1D7D291DC();

  sub_1D7CE44DC();
  sub_1D7D291DC();

  type metadata accessor for TableOfContentsBlueprintLayoutBuilder();
  sub_1D7D291DC();

  sub_1D7CE49F4();
  sub_1D7D291DC();

  sub_1D7992EFC(0, &unk_1EE0BF020);
  sub_1D7D291DC();

  sub_1D7CE4190();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EE0BFCE0);
  sub_1D7D291EC();
  sub_1D7D2BA3C();
  sub_1D7D28ABC();

  sub_1D7CE4B30();
  sub_1D7D291DC();

  sub_1D7CE430C();
  sub_1D7D291DC();

  sub_1D7CE4594();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CE4714();
  sub_1D7D291DC();

  type metadata accessor for TableOfContentsBlueprintViewCellProvider();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  type metadata accessor for TableOfContentsBlueprintViewSupplementaryViewProvider();
  sub_1D7D291DC();

  sub_1D7CE4B90(0, &qword_1EC9E87D8, MEMORY[0x1E69D81A8]);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2A81C();
  sub_1D7D291DC();

  sub_1D7CE4C2C();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2B4CC();
  sub_1D7D291DC();
}

uint64_t sub_1D7CE0B6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E86C8);
  result = sub_1D7D28D2C();
  if (!v43)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E86D8);
  result = sub_1D7D28D2C();
  v3 = v40;
  if (!v40)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE49F4();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E8848);
  result = sub_1D7D28D2C();
  if (!v39)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v34[0])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    v36 = v5;
    v37 = sub_1D7CE4E00(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    v35[0] = v6;
    sub_1D7D2A50C();
    swift_allocObject();
    v7 = sub_1D7D2A4FC();
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v31[1] = v31;
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for TableOfContentsStyler();
    v36 = v14;
    v37 = &off_1F52A5C48;
    v35[0] = v13;
    v15 = type metadata accessor for TableOfContentsViewController();
    v16 = objc_allocWithZone(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v34[3] = v14;
    v34[4] = &off_1F52A5C48;
    v34[0] = v22;
    v23 = &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_pageIdentifierToDisplay];
    *v23 = 0;
    *(v23 + 1) = 0;
    sub_1D799CC84(v34, &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_styler]);
    v24 = &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler];
    v25 = v32;
    *v24 = v3;
    *(v24 + 1) = v25;
    *&v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_blueprintViewController] = v4;
    sub_1D799CC84(v38, &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_purchasePresenter]);
    *&v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_commandContainer] = v7;
    v33.receiver = v16;
    v33.super_class = v15;
    swift_unknownObjectRetain();
    v26 = v4;

    v27 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
    *(*&v27[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler] + 24) = &off_1F52A2958;
    swift_unknownObjectWeakAssign();
    v28 = *&v27[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_blueprintViewController];
    v29 = v27;
    v30 = v28;
    sub_1D7D2B34C();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return v29;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE10D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE570);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for TableOfContentsStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A5C48;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE1188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E3A38);
  result = sub_1D7D28D2C();
  if (v8)
  {
    v5 = type metadata accessor for TableOfContentsRouter();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D799D69C(v9, v6 + 24);
    result = sub_1D799D69C(&v7, v6 + 64);
    a2[3] = v5;
    a2[4] = &off_1F52AF130;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7CE1264(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TableOfContentsViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7CE12E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E86E0);
  result = sub_1D7D28D2C();
  v5 = v29;
  if (v29)
  {
    v6 = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E86D0);
    result = sub_1D7D28D2C();
    if (v28)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for TableOfContentsRouter();
      v26[3] = v13;
      v26[4] = &off_1F52AF130;
      v26[0] = v12;
      type metadata accessor for TableOfContentsEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v26, v13);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (&v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v25[3] = v13;
      v25[4] = &off_1F52AF130;
      v25[0] = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_1D799CC84(v25, (v14 + 6));
      ObjectType = swift_getObjectType();
      v22 = *(v6 + 16);
      swift_unknownObjectRetain();

      v22(v23, &off_1F52B2468, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      *a2 = v14;
      a2[1] = &off_1F52B2480;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE15DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3EE8();
  result = sub_1D7D28D1C();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_1F52AAA50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE1640(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A88);
  result = sub_1D7D28D2C();
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F9C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintModifierFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    sub_1D7CE3EE8();
    v7 = v6;
    v8 = objc_allocWithZone(v6);
    v9 = MEMORY[0x1E69E7D40];
    *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60) + 8) = 0;
    swift_unknownObjectWeakInit();
    v10 = v8 + *((*v9 & *v8) + 0x88);
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    sub_1D799CC84(v13, v8 + *((*v9 & *v8) + 0x68));
    *(v8 + *((*v9 & *v8) + 0x70)) = v3;
    *(v8 + *((*v9 & *v8) + 0x78)) = v4;
    *(v8 + *((*v9 & *v8) + 0x80)) = v5;
    v12.receiver = v8;
    v12.super_class = v7;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7CE189C(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (result)
  {
    [result addObserver_];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D798C468(0, &qword_1EC9E6828);
    result = sub_1D7D28D2C();
    if (v11)
    {
      sub_1D799D69C(&v10, v12);
      sub_1D799CC84(v12, &v10);
      v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88);
      swift_beginAccess();
      sub_1D7CE4E48(&v10, v3 + v5);
      swift_endAccess();
      v6 = v13;
      v7 = v14;
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      v8 = *(v7 + 16);
      v9 = v3;
      v8(v3, &off_1F52AAA48, v6, v7);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE1A68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E8838);
  result = sub_1D7D28D2C();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0BEDA0);
    result = sub_1D7D28D1C();
    if (result)
    {
      v3 = result;
      type metadata accessor for TableOfContentsBlueprintModifierFactory();
      v4 = swift_allocObject();
      sub_1D799D69C(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE1B58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7CE4088();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7CE3F9C();
      swift_allocObject();
      return sub_1D7D2A6DC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE1C40(uint64_t a1, void *a2)
{
  sub_1D7CE4D20(0);
  swift_allocObject();
  sub_1D7D2BB8C();
  sub_1D7CE4D40(0, &qword_1EC9E8820, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D7CE4E00(&qword_1EC9E8828, sub_1D7CE4D20);
  sub_1D7D2B6BC();
  sub_1D7D2A6FC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CE4800();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_allocObject();
    sub_1D7CE4E00(&qword_1EC9E8830, sub_1D7CE4800);
    sub_1D7D2B6BC();
    sub_1D7D2A6FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE1DD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE44DC();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintLayoutBuilder();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE493C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2BD6C();
  result = sub_1D7D28CDC();
  if (result)
  {
    sub_1D7CE4800();
    swift_allocObject();
    return sub_1D7D2C0BC();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE1FFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BFC70);
    result = sub_1D7D28D2C();
    if (v3)
    {
      sub_1D7CE4088();
      swift_allocObject();
      return sub_1D7D2A95C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE2154(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_1D7CE2198(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CC8C8);
  result = sub_1D7D28D2C();
  if (!v39)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC770);
  result = sub_1D7D28D2C();
  if (!v37)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D3007C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v31[2] = v31;
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v31[1] = v31;
    v10 = MEMORY[0x1EEE9AC00](v9, v9);
    v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v7;
    v15 = *v12;
    v16 = type metadata accessor for TableOfContentsHeaderViewStyler();
    v35[3] = v16;
    v35[4] = &off_1F52A9A70;
    v35[0] = v14;
    v17 = type metadata accessor for TableOfContentsPDFCellViewStyler();
    v33 = v17;
    v34 = &off_1F52B2458;
    v32[0] = v15;
    type metadata accessor for TableOfContentsBlueprintLayoutBuilder();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v35, v16);
    v20 = MEMORY[0x1EEE9AC00](v19, v19);
    v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v25 = MEMORY[0x1EEE9AC00](v24, v24);
    v27 = (v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v22;
    v30 = *v27;
    v18[5] = v16;
    v18[6] = &off_1F52A9A70;
    v18[7] = v30;
    v18[2] = v29;
    v18[10] = v17;
    v18[11] = &off_1F52B2458;
    v18[12] = v3;
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE25E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFC70);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4B90(0, &qword_1EC9E87D8, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A81C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4E00(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    sub_1D7CE49F4();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B35C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE2910(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4B30();
  result = sub_1D7D28CDC();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE29C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EE0BF020);
  result = sub_1D7D28CDC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE430C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4594();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4714();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4190();
    swift_allocObject();
    return sub_1D7D2AEFC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE2B34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2BA3C();
    swift_allocObject();
    result = sub_1D7D2BA2C();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE2BEC()
{
  v0 = sub_1D7D2B00C();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7DB0], v2);
  return sub_1D7D2BA1C();
}

uint64_t sub_1D7CE2CBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2BD6C();
  result = sub_1D7D28CDC();
  if (result)
  {
    sub_1D7CE4B30();
    v3 = objc_allocWithZone(v2);
    return sub_1D7D2B90C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE2D54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE44DC();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintViewCellProvider();
  sub_1D799CC84(a1, v8);
  v4 = swift_allocObject();
  sub_1D799D69C(v8, v4 + 16);
  v5 = sub_1D7D28CFC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintViewSupplementaryViewProvider();
  result = sub_1D7D28D1C();
  if (result)
  {
    *&v8[0] = v3;
    sub_1D7CE430C();
    v7 = objc_allocWithZone(v6);
    return sub_1D7D2BCFC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE2EF0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &unk_1EE0BF020);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = result;
    sub_1D7992EFC(0, &qword_1EE0BF110);
    sub_1D7D3040C();
    sub_1D7D28C0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE2FF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE44DC();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4B90(0, &qword_1EC9E87D8, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4E00(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    sub_1D7CE4594();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2BBEC();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE3200(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D2A81C();
  sub_1D7D28CDC();
  sub_1D7D2BBFC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CE4C2C();
  if (sub_1D7D28D1C())
  {
    sub_1D7CE4E00(&qword_1EC9E8810, sub_1D7CE4C2C);
  }

  return sub_1D7D2BC0C();
}

uint64_t sub_1D7CE330C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7CE44DC();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7CE4714();
      v4 = objc_allocWithZone(v3);
      return sub_1D7D2BE5C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE33CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC6B0);
  result = sub_1D7D28D2C();
  v3 = v22;
  if (v22)
  {
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0CC4C8);
    result = sub_1D7D28D2C();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for TableOfContentsPDFCellViewRenderer();
      v19[3] = v11;
      v19[4] = &off_1F52A9498;
      v19[0] = v10;
      type metadata accessor for TableOfContentsBlueprintViewCellProvider();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      v14 = MEMORY[0x1EEE9AC00](v13, v13);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16, v14);
      v18 = *v16;
      v12[9] = v11;
      v12[10] = &off_1F52A9498;
      v12[6] = v18;
      v12[3] = 0;
      swift_unknownObjectWeakInit();
      v12[4] = v3;
      v12[5] = v4;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}