uint64_t sub_1D7AAB7B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7AAB69C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7AAB828(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_1D7D3034C();
    v4 = sub_1D7D3031C();
  }

  v5 = [v3 hasArticleBeenRead_];

  v6 = [a1 identifier];
  if (!v6)
  {
    sub_1D7D3034C();
    v6 = sub_1D7D3031C();
  }

  v7 = [v3 hasArticleBeenSeen_];

  v8 = [a1 identifier];
  if (!v8)
  {
    sub_1D7D3034C();
    v8 = sub_1D7D3031C();
  }

  v9 = [v3 hasArticleBeenVisited_];

  v10 = [a1 identifier];
  if (!v10)
  {
    sub_1D7D3034C();
    v10 = sub_1D7D3031C();
  }

  v11 = 2;
  if (!v5)
  {
    v11 = 0;
  }

  if (v7)
  {
    v11 |= 4uLL;
  }

  if (v9)
  {
    v12 = v11 | 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v3 hasArticleBeenConsumed_];

  if (v13)
  {
    return v12 | 0x10;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_1D7AAB9FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1D7D2EA6C();
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v67 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7990AB0(0);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A9AE64();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v70 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v62 = v55 - v20;
  sub_1D7AAC480(0, &qword_1EE0BAED8, MEMORY[0x1E69E6F48]);
  v69 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v55 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AAC3C8();
  v26 = v71;
  sub_1D7D31AFC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v58 = v10;
  v59 = 0;
  v60 = v22;
  v61 = a1;
  v71 = v14;
  v57 = v11;
  LOBYTE(v74) = 0;
  sub_1D798ED94(&qword_1EE0BF998, sub_1D7990AB0);
  v28 = v62;
  v29 = v64;
  sub_1D7D3173C();
  sub_1D7994BB0();
  v31 = v30;
  LOBYTE(v73) = 1;
  sub_1D798ED94(&qword_1EE0BF8C8, sub_1D7994BB0);
  v55[1] = v31;
  sub_1D7D3173C();
  v32 = v74;
  sub_1D7994C2C();
  v34 = v33;
  LOBYTE(v72) = 2;
  sub_1D798ED94(&qword_1EE0BF8D0, sub_1D7994C2C);
  v55[2] = v34;
  v35 = v25;
  sub_1D7D3173C();
  v56 = v73;
  v36 = v28;
  v37 = v70;
  sub_1D7A9AF10(v28, v70);
  v38 = v63;
  v39 = *(v63 + 48);
  v40 = v39(v37, 1, v29);
  v41 = v29;
  if (v40 == 1)
  {
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D798ED94(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v42 = v58;
    sub_1D7D2E33C();
    v43 = v39(v70, 1, v41);
    v44 = v68;
    v45 = v60;
    if (v43 != 1)
    {
      sub_1D7A9AF74(v70);
    }
  }

  else
  {
    v42 = v58;
    (*(v38 + 32))(v58, v70, v41);
    v44 = v68;
    v45 = v60;
  }

  v46 = v71;
  (*(v38 + 32))(v71, v42, v41);
  v47 = v36;
  if (v32)
  {
    v48 = v35;
    v49 = v32;
  }

  else
  {
    v72 = 5;
    swift_allocObject();
    v49 = sub_1D7D2E71C();
    v48 = v35;
  }

  v50 = v56;
  v51 = v57;
  v52 = v66;
  v53 = v67;
  *(v46 + *(v57 + 20)) = v49;
  if (!v50)
  {
    (*(v52 + 104))(v53, *MEMORY[0x1E69B5D40], v65);
    swift_allocObject();
    v50 = sub_1D7D2E71C();
  }

  sub_1D7A9AF74(v47);
  (*(v45 + 8))(v48, v69);
  v54 = v61;
  *(v46 + *(v51 + 24)) = v50;
  sub_1D7AAC41C(v46, v44);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1D7AAC088(void *a1)
{
  v3 = v1;
  sub_1D7AAC480(0, &qword_1EC9E3A40, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AAC3C8();
  sub_1D7D31B1C();
  LOBYTE(v14) = 0;
  sub_1D7990AB0(0);
  sub_1D798ED94(&qword_1EC9E37D8, sub_1D7990AB0);
  sub_1D7D318BC();
  if (!v2)
  {
    v11 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    sub_1D7994BB0();
    sub_1D798ED94(&qword_1EC9E3548, sub_1D7994BB0);
    sub_1D7D318BC();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    sub_1D7994C2C();
    sub_1D798ED94(&qword_1EC9E37E0, sub_1D7994C2C);
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7AAC320(uint64_t a1)
{
  v2 = sub_1D7AAC3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AAC35C(uint64_t a1)
{
  v2 = sub_1D7AAC3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7AAC3C8()
{
  result = qword_1EE0BBAA8;
  if (!qword_1EE0BBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BBAA8);
  }

  return result;
}

uint64_t sub_1D7AAC41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7AAC480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7AAC3C8();
    v7 = a3(a1, &type metadata for MoreFromIssueEndOfArticleFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7AAC4F8()
{
  result = qword_1EC9E3A48;
  if (!qword_1EC9E3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3A48);
  }

  return result;
}

unint64_t sub_1D7AAC550()
{
  result = qword_1EE0BBA98;
  if (!qword_1EE0BBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BBA98);
  }

  return result;
}

unint64_t sub_1D7AAC5A8()
{
  result = qword_1EE0BBAA0;
  if (!qword_1EE0BBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BBAA0);
  }

  return result;
}

void *AudioMiniPlayerPresentationStartupTask.__allocating_init<A>(bootstrapper:commandCenter:playbackState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = sub_1D79AC0BC;
  result[6] = a4;
  return result;
}

void *AudioMiniPlayerPresentationStartupTask.init<A>(bootstrapper:commandCenter:playbackState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = sub_1D79AC0BC;
  v4[6] = a4;
  return v4;
}

uint64_t AudioMiniPlayerPresentationStartupTask.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t AudioMiniPlayerPresentationStartupTask.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AudioMiniPlayerPresentationStartupTask.run()()
{

  v0 = sub_1D7D28C3C();
  sub_1D7D29DBC();

  sub_1D79A6608();
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7AAC7AC(uint64_t a1)
{
  sub_1D79ABF68();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RecipeArticleBarButtonItem.barButtonItemIdentifier.getter()
{
  v0 = qword_1EE0C7EA0;

  return v0;
}

id RecipeArticleBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecipeArticleBarButtonItem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RecipeArticleBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RecipeArticleBarButtonItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id RecipeArticleBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7AACA44()
{
  v0 = qword_1EE0C7EA0;

  return v0;
}

void sub_1D7AACAA0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D7D2B49C();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  (*(v8 + 104))(&v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7FD8], v6);
  swift_unknownObjectRetain();
  v9 = ArticleViewerPage.tracker.getter();
  v24 = sub_1D7D28A3C();
  v25 = sub_1D7A108E4();
  *&v22 = v9;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  sub_1D7D2B0EC();
  sub_1D7D2C47C();
  ArticleViewerPage.article.getter(&v22);
  if (*(&v22 + 1))
  {
    v10 = v23;
    swift_unknownObjectRetain();
    sub_1D7AACF1C(&v22);
  }

  else
  {
    v10 = 0;
  }

  sub_1D7AACEC4();
  v18 = v10;
  if (qword_1EC9DFF68 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC9E9200;
  v12 = sub_1D7D2AD7C();
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v14 = *(v13 + 40);
  v15 = v12;
  v14();
  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3C670;
  *(inited + 32) = v15;
  ToolbarFeatureState.init(items:contentInset:)(inited, a1, 0.0);
}

uint64_t sub_1D7AACD38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D7AACD84(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79F93E8(a1, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D7AACF9C(v5, type metadata accessor for ArticleViewerPage);
    return 0;
  }

  else
  {
    sub_1D7A74E98(v5, v9);
    v11 = [v9[2] isDraft];
    sub_1D7AACF9C(v9, type metadata accessor for ArticleViewerArticlePage);
    return v11;
  }
}

void sub_1D7AACEC4()
{
  if (!qword_1EC9E3A58)
  {
    sub_1D799621C();
    v0 = sub_1D7D2AD8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3A58);
    }
  }
}

uint64_t sub_1D7AACF1C(uint64_t a1)
{
  sub_1D7A782C0(0, &qword_1EE0C0600, &type metadata for Article, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7AACF9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7AAD108()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_blueprintViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v7 setFrame_];
    v18 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v19 = v0;
    v20 = [v18 initWithBarButtonSystemItem:1 target:v19 action:sel_dismissVC];
    v21 = sub_1D7D30D8C();
    [v21 setLeftBarButtonItem_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:0 style:0 target:v19 action:sel_doNothing];
    v23 = sub_1D7D30D8C();
    [v23 setBackBarButtonItem_];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    v26 = sub_1D7D3031C();

    [v19 setTitle_];

    v27 = [v19 traitCollection];
    sub_1D7AADD58();

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1D7AAD468()
{
  v64.receiver = v0;
  v64.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v64, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_blueprintViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 window];

  if (v16)
  {
    v17 = [v16 windowScene];

    if (v17)
    {
      v18 = [v17 sizeRestrictions];
      if (!v18)
      {
        goto LABEL_10;
      }

      v19 = v18;
      v20 = [v0 view];
      if (v20)
      {
        v21 = v20;
        [v20 bounds];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v65.origin.x = v23;
        v65.origin.y = v25;
        v65.size.width = v27;
        v65.size.height = v29;
        Width = CGRectGetWidth(v65);
        v31 = [v0 view];
        if (v31)
        {
          v32 = v31;
          [v31 bounds];
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;

          v66.origin.x = v34;
          v66.origin.y = v36;
          v66.size.width = v38;
          v66.size.height = v40;
          [v19 setMinimumSize_];

LABEL_10:
          v41 = [v17 sizeRestrictions];
          if (!v41)
          {
LABEL_14:

            return;
          }

          v42 = v41;
          v43 = [v0 view];
          if (v43)
          {
            v44 = v43;
            [v43 bounds];
            v46 = v45;
            v48 = v47;
            v50 = v49;
            v52 = v51;

            v67.origin.x = v46;
            v67.origin.y = v48;
            v67.size.width = v50;
            v67.size.height = v52;
            v53 = CGRectGetWidth(v67);
            v54 = [v0 view];
            if (v54)
            {
              v55 = v54;
              [v54 bounds];
              v57 = v56;
              v59 = v58;
              v61 = v60;
              v63 = v62;

              v68.origin.x = v57;
              v68.origin.y = v59;
              v68.size.width = v61;
              v68.size.height = v63;
              [v42 setMaximumSize_];

              goto LABEL_14;
            }

LABEL_22:
            __break(1u);
            return;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }
}

void sub_1D7AAD868()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler) + 48), *(*(v0 + OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler) + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1D7AAD930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7D2BE7C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  result = (*(v6 + 88))(v10, v5);
  if (result == *MEMORY[0x1E69D8630])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v12 + 40))(ObjectType, v12);
  }

  if (result == *MEMORY[0x1E69D8608])
  {
    v14 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    return (*(v14 + 32))(v15, v14);
  }

  else
  {
    if (result == *MEMORY[0x1E69D8628] || result == *MEMORY[0x1E69D8610])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x1E69D8638] && result != *MEMORY[0x1E69D8650])
    {
      result = sub_1D7D3160C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D7AADB5C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a2, ObjectType, v4);
}

uint64_t sub_1D7AADBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E18](a1, a2, a3, a4, ObjectType, a6);
}

uint64_t sub_1D7AADC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA0](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D7AADC94(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_1D7AADCF4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

void sub_1D7AADD58()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 whiteColor];
    [v3 setBackgroundColor_];

    sub_1D7D2B2CC();
    v6 = sub_1D7D2AF0C();

    v7 = [v4 systemGroupedBackgroundColor];
    [v6 setBackgroundColor_];

    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_styler], *&v1[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_styler + 24]);
    v8 = [v1 navigationItem];
    sub_1D7BECC24(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7AADEB0(uint64_t a1, uint64_t a2)
{
  sub_1D7A2B598();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v15 = a1;
  sub_1D7AAF8CC(0, &qword_1EC9E3A88, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
  sub_1D7D294BC();
  (*(v6 + 16))(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v6 + 32))(v10 + v9, &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);

  v11 = sub_1D7D2934C();
  v12 = sub_1D7D293AC();

  return v12;
}

uint64_t sub_1D7AAE090(uint64_t a1, void (*a2)(char *))
{
  sub_1D7994678(0, &qword_1EC9E2008, MEMORY[0x1E69D7ED8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  sub_1D7AAE7EC();
  v11 = *(v10 + 48);
  sub_1D7A2B598();
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x1E69D7A38];
  v14 = sub_1D7D2A68C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7EB8], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7AAE248(void *a1, void (*a2)(char *))
{
  sub_1D7994678(0, &qword_1EC9E2008, MEMORY[0x1E69D7ED8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x1E69D7EC0], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1D7AAE36C()
{
  sub_1D7AAF8CC(0, &qword_1EE0BE938, MEMORY[0x1E69D7E00], MEMORY[0x1E69E6F90]);
  v0 = sub_1D7D2B08C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D481C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69D7DE0], v0);
  v6(v5 + v2, *MEMORY[0x1E69D7DE8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69D7DF0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69D7DD8], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E69D7DF8], v0);
  v7 = sub_1D7B22FA4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

void sub_1D7AAE548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A2B598();
  sub_1D7D294BC();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_1D7D2934C();
  sub_1D7D293AC();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_1D7D2934C();
  sub_1D7D293DC();
}

uint64_t sub_1D7AAE688(uint64_t a1)
{
  v2 = sub_1D7AAF930();

  return MEMORY[0x1EEE46F70](a1, v2);
}

unint64_t sub_1D7AAE6C8()
{
  result = qword_1EC9E3A78;
  if (!qword_1EC9E3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3A78);
  }

  return result;
}

void sub_1D7AAE7EC()
{
  if (!qword_1EC9E3A80)
  {
    sub_1D7A2B598();
    sub_1D7D2A68C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E3A80);
    }
  }
}

uint64_t sub_1D7AAE860()
{
  sub_1D7AAF8CC(0, &qword_1EC9E3AC0, MEMORY[0x1E69D7608], MEMORY[0x1E69D6B18]);

  v0 = sub_1D7D2934C();
  sub_1D7AAF834();
  sub_1D7996F14(&qword_1EC9E3AD0, sub_1D7AAF834);
  v1 = sub_1D7D2937C();

  return v1;
}

uint64_t sub_1D7AAE96C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1D7AAF8CC(0, &qword_1EC9E3A88, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
  sub_1D7AAEBAC();
  sub_1D7996F14(&qword_1EC9E3A98, MEMORY[0x1E69D7608]);
  v4 = sub_1D7D3051C();
  sub_1D7AAEC34(a1, v4, a2);

  v5 = sub_1D7B57390();
  sub_1D7D2E5EC();
  sub_1D7D2E5DC();
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  sub_1D7996F14(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v6 = sub_1D7D2E5BC();

  if (v6)
  {
    sub_1D7D2DEEC();
  }

  sub_1D7A2B598();
  sub_1D7D2C7EC();
  return sub_1D7AAF6F4(v5);
}

unint64_t sub_1D7AAEBAC()
{
  result = qword_1EC9E3A90;
  if (!qword_1EC9E3A90)
  {
    sub_1D7AAF8CC(255, &qword_1EC9E3A88, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3A90);
  }

  return result;
}

uint64_t sub_1D7AAEC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v70[3] = a3;
  v4 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v85 = (v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v70 - v9;
  sub_1D7A060E8();
  v12 = v11;
  v87 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v94 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v93 = v70 - v17;
  sub_1D7A06270();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v75 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v79, v21);
  v82 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B3A0();
  v24 = v23;
  v78 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v70 - v30;
  sub_1D7AAF70C();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v70[2] = v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B598();
  v36 = v35;
  v70[1] = sub_1D7D2C74C();
  v70[0] = v37;
  v38 = sub_1D7996F14(&qword_1EC9E2718, sub_1D7A2B598);
  v39 = sub_1D7D30A2C();
  if (v39)
  {
    v97 = MEMORY[0x1E69E7CC0];
    v77 = v39;
    sub_1D7A5C37C(0, v39 & ~(v39 >> 63), 0);
    v83 = v97;
    v81 = a1;
    v76 = v38;
    result = sub_1D7D309EC();
    if ((v77 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v74 = (v78 + 16);
      v89 = (v87 + 16);
      v84 = (v87 + 8);
      v92 = (v87 + 32);
      v71 = (v78 + 8);
      v70[4] = v78 + 32;
      v90 = v27;
      v91 = v12;
      v86 = v10;
      v73 = v31;
      v72 = v36;
      while (1)
      {
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          __break(1u);
          goto LABEL_29;
        }

        v80 = v43;
        v44 = sub_1D7D30AAC();
        (*v74)(v27);
        v44(v96, 0);
        sub_1D7D2A43C();
        sub_1D7996F14(&qword_1EC9E3AB8, sub_1D7A2B3A0);
        v45 = sub_1D7D30A2C();
        if (v45)
        {
          break;
        }

        v47 = MEMORY[0x1E69E7CC0];
LABEL_22:
        v60 = sub_1D7996F14(&qword_1EC9E2018, sub_1D7A060E8);
        v61 = sub_1D7996F14(&qword_1EC9E2020, sub_1D7A060E8);
        MEMORY[0x1DA706A80](v47, v12, v60, v61);
        sub_1D7996F14(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
        sub_1D7996F14(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
        v62 = v73;
        sub_1D7D2A42C();
        v27 = v90;
        (*v71)(v90, v24);
        v63 = v83;
        v97 = v83;
        v65 = *(v83 + 16);
        v64 = *(v83 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1D7A5C37C(v64 > 1, v65 + 1, 1);
          v63 = v97;
        }

        *(v63 + 16) = v65 + 1;
        v66 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v83 = v63;
        (*(v78 + 32))(v63 + v66 + *(v78 + 72) * v65, v62, v24);
        result = sub_1D7D30A6C();
        v41 = v80;
        if (v80 == v77)
        {
          v67 = v83;
          goto LABEL_27;
        }
      }

      v46 = v45;
      v95 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BEFC(0, v45 & ~(v45 >> 63), 0);
      v47 = v95;
      result = sub_1D7D309EC();
      if ((v46 & 0x8000000000000000) == 0)
      {
        v48 = v87;
        while (1)
        {
          v49 = sub_1D7D30AAC();
          (*v89)(v94);
          v49(v96, 0);
          sub_1D7D29EEC();
          if (swift_getEnumCaseMultiPayload())
          {
            break;
          }

          v50 = sub_1D7D29CEC();
          v52 = v88;
          if (!*(v88 + 16))
          {

            goto LABEL_15;
          }

          v53 = v4;
          v54 = sub_1D7A18FFC(v50, v51);
          v56 = v55;

          if ((v56 & 1) == 0)
          {

            v4 = v53;
            v10 = v86;
            v48 = v87;
LABEL_15:
            v12 = v91;
LABEL_16:
            (*v92)(v93, v94, v12);
            goto LABEL_17;
          }

          *v85 = *(*(v52 + 56) + 8 * v54);
          v4 = v53;
          swift_storeEnumTagMultiPayload();
          sub_1D7996F14(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
          swift_retain_n();
          sub_1D7D29EDC();

          (*v84)(v94, v91);
          v10 = v86;
          v48 = v87;
LABEL_17:
          v95 = v47;
          v58 = *(v47 + 16);
          v57 = *(v47 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1D7A5BEFC(v57 > 1, v58 + 1, 1);
            v47 = v95;
          }

          *(v47 + 16) = v58 + 1;
          v59 = v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v58;
          v12 = v91;
          (*(v48 + 32))(v59, v93, v91);
          sub_1D7D30A6C();
          if (!--v46)
          {
            goto LABEL_22;
          }
        }

        sub_1D7AAF7D8(v10);
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v68 = sub_1D7996F14(&qword_1EC9E3AA8, sub_1D7A2B3A0);
    v69 = sub_1D7996F14(&qword_1EC9E3AB0, sub_1D7A2B3A0);
    MEMORY[0x1DA706A80](v67, v24, v68, v69);
    sub_1D7996F14(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D7996F14(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    return sub_1D7D2C73C();
  }

  return result;
}

uint64_t sub_1D7AAF6F4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1D7AAF70C()
{
  if (!qword_1EC9E3AA0)
  {
    sub_1D7A2B3A0();
    sub_1D7996F14(&qword_1EC9E3AA8, sub_1D7A2B3A0);
    sub_1D7996F14(&qword_1EC9E3AB0, sub_1D7A2B3A0);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3AA0);
    }
  }
}

uint64_t sub_1D7AAF7D8(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7AAF834()
{
  if (!qword_1EC9E3AC8)
  {
    sub_1D7AAF8CC(255, &qword_1EC9E3AC0, MEMORY[0x1E69D7608], MEMORY[0x1E69D6B18]);
    v0 = sub_1D7D3029C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3AC8);
    }
  }
}

void sub_1D7AAF8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7AAF930()
{
  result = qword_1EC9E3AD8;
  if (!qword_1EC9E3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3AD8);
  }

  return result;
}

id sub_1D7AAF99C(uint64_t a1, void *a2)
{
  sub_1D7D2C5BC();
  sub_1D7D2C2EC();
  v3 = sub_1D7D2C28C();

  if (v3)
  {
    v4 = &selRef_canIncreaseTextSize;
    return [a2 *v4];
  }

  sub_1D7D2C2FC();
  v5 = sub_1D7D2C28C();

  if (v5)
  {
    v4 = &selRef_canDecreaseTextSize;
    return [a2 *v4];
  }

  sub_1D7D2C4CC();
  v6 = sub_1D7D2C28C();

  if (v6)
  {
    v4 = &selRef_canZoomIn;
    return [a2 *v4];
  }

  sub_1D7D2C4DC();
  v7 = sub_1D7D2C28C();

  if (v7)
  {
    v4 = &selRef_canZoomOut;
    return [a2 *v4];
  }

  sub_1D7D2C4EC();
  v8 = sub_1D7D2C28C();

  if (v8)
  {
    v4 = &selRef_canResetZoom;
    return [a2 *v4];
  }

  return 0;
}

id sub_1D7AAFAC8(uint64_t a1, void *a2)
{
  sub_1D7D2C5BC();
  sub_1D7D2C2EC();
  v3 = sub_1D7D2C28C();

  if (v3)
  {
    v4 = &selRef_increaseTextSize;
  }

  else
  {
    sub_1D7D2C2FC();
    v5 = sub_1D7D2C28C();

    if (v5)
    {
      v4 = &selRef_decreaseTextSize;
    }

    else
    {
      sub_1D7D2C4CC();
      v6 = sub_1D7D2C28C();

      if (v6)
      {
        v4 = &selRef_zoomIn;
      }

      else
      {
        sub_1D7D2C4DC();
        v7 = sub_1D7D2C28C();

        if (v7)
        {
          v4 = &selRef_zoomOut;
        }

        else
        {
          sub_1D7D2C4EC();
          v8 = sub_1D7D2C28C();

          if ((v8 & 1) == 0)
          {
            return result;
          }

          v4 = &selRef_resetZoom;
        }
      }
    }
  }

  v10 = *v4;

  return [a2 v10];
}

id sub_1D7AAFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v65 = a3;
  v61 = a1;
  sub_1D79ECB58();
  v7 = v6;
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v60 = v9;
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TableOfContentsHeaderViewModel();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v17 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v58 - v20;
  v22 = type metadata accessor for TableOfContentsLayoutModel();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79E6DFC(0);
  sub_1D7D2ABBC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v25[5];
    v71 = v25[4];
    v72 = v26;
    v27 = v25[7];
    v73 = v25[6];
    v28 = v25[1];
    v67 = *v25;
    v68 = v28;
    v29 = v25[3];
    v69 = v25[2];
    v70 = v29;
    v30 = v25[8];
    v31 = v25[9];
    v74[0] = v27;
    v74[1] = v30;
    v32 = v25[10];
    v33 = v25[12];
    v74[4] = v25[11];
    v74[5] = v33;
    v74[2] = v31;
    v74[3] = v32;
    sub_1D7AB0444();
    v34 = sub_1D7D30CDC();
    __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
    v66[4] = v71;
    v66[5] = v72;
    v66[6] = v73;
    v66[0] = v67;
    v66[1] = v68;
    v66[2] = v69;
    v66[3] = v70;
    v35 = sub_1D7D2A98C();
    sub_1D7BADA0C(v66, v74, v35);

    sub_1D7A2B8A4(&v67);
    return v34;
  }

  else
  {
    sub_1D79FC3CC();
    v38 = *(v37 + 48);
    sub_1D7AB04D8(v25, v21, type metadata accessor for TableOfContentsHeaderViewModel);
    sub_1D7AB04D8(v25 + v38, v13, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
    sub_1D7AB0540();
    v39 = sub_1D7D30CDC();
    v65 = v7;
    v40 = sub_1D7D2A98C();
    v41 = v13;
    v58 = v13;
    v42 = v40;
    sub_1D7CCD234(v21, v41, v40);

    v43 = sub_1D7D2A98C();
    v44 = *&v43[OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_subscribeButton];

    v45 = sub_1D7D2A86C();
    swift_unownedRetainStrong();
    swift_unownedRetain();

    sub_1D7AB061C(v21, v17);
    v46 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v5;
    *(v47 + 24) = v39;
    sub_1D7AB04D8(v17, v47 + v46, type metadata accessor for TableOfContentsHeaderViewModel);
    v48 = v39;

    v49 = sub_1D7D2A98C();
    v50 = *&v49[OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_coverViewButton];

    v51 = sub_1D7D2F70C();
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v53 = v62;
    v52 = v63;
    v54 = v65;
    (*(v63 + 16))(v62, v61, v65);
    v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v5;
    *(v56 + 24) = v48;
    (*(v52 + 32))(v56 + v55, v53, v54);
    v57 = v48;

    sub_1D79FC7C8(v58, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
    sub_1D79FC7C8(v21, type metadata accessor for TableOfContentsHeaderViewModel);
    return v57;
  }
}

uint64_t sub_1D7AB0194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unownedRetainStrong();

    v6 = (a3 + *(type metadata accessor for TableOfContentsHeaderViewModel() + 36));
    v7 = *v6;
    v8 = v6[1];
    v9 = *(*(Strong + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 56))(v7, v8, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7AB0278()
{
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unownedRetainStrong();

    sub_1D7CCFEE0();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7AB03C4()
{
  sub_1D7AB0540();
  sub_1D7D30CEC();
  sub_1D7AB0444();
  return sub_1D7D30CEC();
}

id sub_1D7AB0414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1D7AAFC30(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_1D7AB0444()
{
  if (!qword_1EC9E3AE0)
  {
    type metadata accessor for TableOfContentsPDFCellView();
    sub_1D7AB05D4(&qword_1EC9E1CB8, type metadata accessor for TableOfContentsPDFCellView);
    v0 = sub_1D7D2A99C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3AE0);
    }
  }
}

uint64_t sub_1D7AB04D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7AB0540()
{
  if (!qword_1EC9E3AE8)
  {
    type metadata accessor for TableOfContentsHeaderView();
    sub_1D7AB05D4(&qword_1EC9E3AF0, type metadata accessor for TableOfContentsHeaderView);
    v0 = sub_1D7D2A99C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3AE8);
    }
  }
}

uint64_t sub_1D7AB05D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7AB061C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableOfContentsHeaderViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AB06D8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return a2(v4, v5, v6);
}

uint64_t sub_1D7AB0778(void *a1, uint64_t a2)
{
  sub_1D7AB223C(0, &qword_1EC9E3B20, sub_1D7AB1350, &type metadata for UserConcernConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB1350();
  sub_1D7D31B1C();
  v11[1] = a2;
  sub_1D79AADEC(0, &qword_1EC9E3B08);
  sub_1D7AB13F8(&qword_1EC9E3B28, sub_1D7AB1474);
  sub_1D7D318BC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7AB0950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E7265636E6F63 && a2 == 0xE800000000000000)
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

uint64_t sub_1D7AB09D8(uint64_t a1)
{
  v2 = sub_1D7AB1350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AB0A14(uint64_t a1)
{
  v2 = sub_1D7AB1350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D7AB0A50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D7AB114C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D7AB0A98(void *a1)
{
  sub_1D7AB223C(0, &qword_1EC9E3BB8, sub_1D7AB21E8, &type metadata for UserConcern.SubConcern.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB21E8();
  sub_1D7D31B1C();
  v13 = 0;
  sub_1D7D3188C();
  if (!v1)
  {
    v12 = 1;
    sub_1D7D3188C();
    v11 = 2;
    sub_1D7D3182C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7AB0C44()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0x6572726566657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D7AB0C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7AB185C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7AB0CC0(uint64_t a1)
{
  v2 = sub_1D7AB21E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AB0CFC(uint64_t a1)
{
  v2 = sub_1D7AB21E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7AB0D38@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D7AB15F0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D7AB0D94(void *a1)
{
  v3 = v1;
  sub_1D7AB223C(0, &qword_1EC9E3B78, sub_1D7AB1D38, &type metadata for UserConcern.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB1D38();
  sub_1D7D31B1C();
  v16 = 0;
  sub_1D7D3188C();
  if (!v2)
  {
    v15 = 1;
    sub_1D7D3188C();
    v14 = 2;
    sub_1D7D3188C();
    v12[1] = *(v3 + 48);
    v13 = 3;
    sub_1D79AADEC(0, &qword_1EC9E3B60);
    sub_1D7AB1DE0(&qword_1EC9E3B80, sub_1D7AB1E5C);
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D7AB0FD0()
{
  v1 = 25705;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0x65636E6F43627573;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t sub_1D7AB1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7AB2080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7AB106C(uint64_t a1)
{
  v2 = sub_1D7AB1D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AB10A8(uint64_t a1)
{
  v2 = sub_1D7AB1D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7AB10E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7AB1974(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

void *sub_1D7AB114C(void *a1)
{
  sub_1D7AB223C(0, &qword_1EC9E3AF8, sub_1D7AB1350, &type metadata for UserConcernConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB1350();
  v10 = v9;
  sub_1D7D31AFC();
  if (!v1)
  {
    sub_1D79AADEC(0, &qword_1EC9E3B08);
    sub_1D7AB13F8(&qword_1EC9E3B10, sub_1D7AB13A4);
    sub_1D7D317DC();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D7AB1350()
{
  result = qword_1EC9E3B00;
  if (!qword_1EC9E3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B00);
  }

  return result;
}

unint64_t sub_1D7AB13A4()
{
  result = qword_1EC9E3B18;
  if (!qword_1EC9E3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B18);
  }

  return result;
}

uint64_t sub_1D7AB13F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, &qword_1EC9E3B08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7AB1474()
{
  result = qword_1EC9E3B30;
  if (!qword_1EC9E3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B30);
  }

  return result;
}

unint64_t sub_1D7AB14EC()
{
  result = qword_1EC9E3B38;
  if (!qword_1EC9E3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B38);
  }

  return result;
}

unint64_t sub_1D7AB1544()
{
  result = qword_1EC9E3B40;
  if (!qword_1EC9E3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B40);
  }

  return result;
}

unint64_t sub_1D7AB159C()
{
  result = qword_1EC9E3B48;
  if (!qword_1EC9E3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B48);
  }

  return result;
}

uint64_t sub_1D7AB15F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_1D7AB223C(0, &qword_1EC9E3BA8, sub_1D7AB21E8, &type metadata for UserConcern.SubConcern.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB21E8();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v27;
  v30 = 0;
  v12 = sub_1D7D317AC();
  v14 = v13;
  v26 = v12;
  v29 = 1;
  v15 = sub_1D7D317AC();
  v17 = v16;
  v25 = v15;
  v28 = 2;
  v18 = sub_1D7D3174C();
  v19 = v9;
  v21 = v20;
  (*(v10 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v25;
  *v11 = v26;
  v11[1] = v14;
  v11[2] = v23;
  v11[3] = v17;
  v11[4] = v18;
  v11[5] = v21;
  return result;
}

uint64_t sub_1D7AB185C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xED00007478655464)
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

uint64_t sub_1D7AB1974@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  sub_1D7AB223C(0, &qword_1EC9E3B50, sub_1D7AB1D38, &type metadata for UserConcern.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB1D38();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v33;
  v38 = 0;
  v12 = sub_1D7D317AC();
  v14 = v13;
  v32 = v12;
  v37 = 1;
  v15 = sub_1D7D317AC();
  v17 = v16;
  v31 = v15;
  v36 = 2;
  v30 = sub_1D7D3174C();
  if (v18)
  {
    v29 = v18;
  }

  else
  {
    v28 = v5;
    v29 = "er";
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v5 = v28;
    v21 = sub_1D7D2811C();
    v29 = v22;
    v30 = v21;
  }

  sub_1D79AADEC(0, &qword_1EC9E3B60);
  v35 = 3;
  sub_1D7AB1DE0(&qword_1EC9E3B68, sub_1D7AB1D8C);
  sub_1D7D317DC();
  (*(v10 + 8))(v9, v5);
  v23 = v34;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v31;
  *v11 = v32;
  v11[1] = v14;
  v11[2] = v25;
  v11[3] = v17;
  v26 = v29;
  v11[4] = v30;
  v11[5] = v26;
  v11[6] = v23;
  return result;
}

unint64_t sub_1D7AB1D38()
{
  result = qword_1EC9E3B58;
  if (!qword_1EC9E3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B58);
  }

  return result;
}

unint64_t sub_1D7AB1D8C()
{
  result = qword_1EC9E3B70;
  if (!qword_1EC9E3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B70);
  }

  return result;
}

uint64_t sub_1D7AB1DE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, &qword_1EC9E3B60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7AB1E5C()
{
  result = qword_1EC9E3B88;
  if (!qword_1EC9E3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B88);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D7AB1ED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D7AB1F1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7AB1F7C()
{
  result = qword_1EC9E3B90;
  if (!qword_1EC9E3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B90);
  }

  return result;
}

unint64_t sub_1D7AB1FD4()
{
  result = qword_1EC9E3B98;
  if (!qword_1EC9E3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3B98);
  }

  return result;
}

unint64_t sub_1D7AB202C()
{
  result = qword_1EC9E3BA0;
  if (!qword_1EC9E3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3BA0);
  }

  return result;
}

uint64_t sub_1D7AB2080(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7D6F210 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6F43627573 && a2 == 0xEB00000000736E72)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

unint64_t sub_1D7AB21E8()
{
  result = qword_1EC9E3BB0;
  if (!qword_1EC9E3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3BB0);
  }

  return result;
}

void sub_1D7AB223C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D7AB22B8()
{
  result = qword_1EC9E3BC0;
  if (!qword_1EC9E3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3BC0);
  }

  return result;
}

unint64_t sub_1D7AB2310()
{
  result = qword_1EC9E3BC8;
  if (!qword_1EC9E3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3BC8);
  }

  return result;
}

unint64_t sub_1D7AB2368()
{
  result = qword_1EC9E3BD0;
  if (!qword_1EC9E3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3BD0);
  }

  return result;
}

void sub_1D7AB2540()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_blueprintViewController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v8 setFrame_];
    sub_1D7D2B2CC();
    v19 = sub_1D7D2AF0C();

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    v22 = sub_1D7D3031C();

    [v19 setAccessibilityLabel_];

    v23 = [v1 traitCollection];
    sub_1D7AB34BC();

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1D7AB2810()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  result = [*&v0[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_blueprintViewController] view];
  if (result)
  {
    v2 = result;
    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      [v2 setFrame_];
      return [v0 setAdditionalSafeAreaInsets_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7AB2B70(void *a1)
{
  v2 = sub_1D7D2F20C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A78CA4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1;
  sub_1D7D2F1FC();
  sub_1D7AB3418(&qword_1EC9E3230, MEMORY[0x1E69B6198]);
  *v11 = sub_1D7D2A03C();
  v11[1] = v13;
  (*(v3 + 32))(v11 + *(v8 + 36), v6, v2);
  sub_1D7AB3418(&qword_1EC9E3238, sub_1D7A78CA4);
  return sub_1D7D2F18C();
}

void sub_1D7AB2D2C()
{
  v1 = sub_1D7D295BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_purchasePresenter), *(v0 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_purchasePresenter + 24));
  (*(v2 + 104))(v5, *MEMORY[0x1E69B6A60], v1);
  sub_1D7D297EC();
  (*(v2 + 8))(v5, v1);
  v6 = sub_1D7D2934C();
  sub_1D7D293AC();
}

void sub_1D7AB2E9C()
{
  v1 = [v0 view];
  if (v1)
  {
    v3 = v1;
    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1D7A78C10();
    sub_1D7AB3418(&unk_1EC9E3240, sub_1D7A78C10);
    sub_1D7D310AC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7AB2F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7D2BE7C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  result = (*(v6 + 88))(v10, v5);
  if (result == *MEMORY[0x1E69D8630])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v12 + 40))(ObjectType, v12);
  }

  if (result == *MEMORY[0x1E69D8608])
  {
    v14 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    return (*(v14 + 32))(v15, v14);
  }

  else
  {
    if (result == *MEMORY[0x1E69D8628] || result == *MEMORY[0x1E69D8610])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x1E69D8638] && result != *MEMORY[0x1E69D8650])
    {
      result = sub_1D7D3160C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D7AB31B4()
{
  v0 = type metadata accessor for TableOfContentsModel();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79ECB58();
  sub_1D7D29EEC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1D7AB3460(v3);
  if (EnumCaseMultiPayload == 1)
  {
    return sub_1D7CCFEE0();
  }

  return result;
}

uint64_t sub_1D7AB3280(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 80))(a2, ObjectType, v4);
}

uint64_t sub_1D7AB32E0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(a2, ObjectType, v4);
}

uint64_t sub_1D7AB3340(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a2, ObjectType, v4);
}

uint64_t sub_1D7AB33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E08](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D7AB3418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7AB3460(uint64_t a1)
{
  v2 = type metadata accessor for TableOfContentsModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D7AB34BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_styler;
  sub_1D799CC84(v0 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_styler, v35);
  v3 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = *(*v3 + 40);
    v7 = *(*v3 + 48);
    v8 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v6);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8, v8);
    v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    (*(v7 + 32))(&v30, v6, v7);
    (*(v9 + 8))(v12, v6);
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    v29 = v34;
    v13 = v30;
    sub_1D7AB37E8(v28);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_1D799CC84(v1 + v2, v27);
    v14 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    sub_1D7D2B2CC();
    v15 = sub_1D7D2AF0C();

    v16 = *v14;
    v17 = *(*v14 + 40);
    v18 = *(v16 + 48);
    v19 = __swift_project_boxed_opaque_existential_1((v16 + 16), v17);
    v20 = *(v17 - 8);
    v21 = MEMORY[0x1EEE9AC00](v19, v19);
    v23 = v25 - v22;
    (*(v20 + 16))(v25 - v22, v21);
    (*(v18 + 32))(v25, v17, v18);
    (*(v20 + 8))(v23, v17);
    v30 = v25[0];
    v31 = v25[1];
    v32 = v25[2];
    v33 = v25[3];
    v34 = v26;
    v24 = *&v25[0];
    sub_1D7AB37E8(&v30);
    [v15 setBackgroundColor_];

    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for EndOfArticleFeedGroup()
{
  result = qword_1EE0C7CC0;
  if (!qword_1EE0C7CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D7AB38F4()
{
  result = qword_1EE0BCED0;
  if (!qword_1EE0BCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCED0);
  }

  return result;
}

unint64_t sub_1D7AB3950()
{
  result = qword_1EE0C62A0[0];
  if (!qword_1EE0C62A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C62A0);
  }

  return result;
}

unint64_t sub_1D7AB39A8()
{
  result = qword_1EE0C6290;
  if (!qword_1EE0C6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6290);
  }

  return result;
}

uint64_t sub_1D7AB39FC(uint64_t (*a1)(uint64_t))
{
  v36 = a1;
  v34 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v34, v1);
  v3 = &EndOfArticleFeedGroup - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v4);
  v6 = &EndOfArticleFeedGroup - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &EndOfArticleFeedGroup - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &EndOfArticleFeedGroup - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &EndOfArticleFeedGroup - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &EndOfArticleFeedGroup - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB4F08(v35, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v31 = sub_1D7AB4F6C(v22, v14, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v25 = v36(v31);
      v26 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      v27 = v14;
    }

    else
    {
      v28 = sub_1D7AB4F6C(v22, v18, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v25 = v36(v28);
      v26 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      v27 = v18;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v29 = sub_1D7AB4F6C(v22, v10, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    v25 = v36(v29);
    v26 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    v27 = v10;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v24 = sub_1D7AB4F6C(v22, v6, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v25 = v36(v24);
    v26 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    v27 = v6;
  }

  else
  {
    v30 = sub_1D7AB4F6C(v22, v3, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v25 = v36(v30);
    v26 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    v27 = v3;
  }

  sub_1D7AB4FD4(v27, v26);
  return v25;
}

double sub_1D7AB3DF0()
{
  v34 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v34, v0);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB4F08(v35, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D7AB4F6C(v21, v13, type metadata accessor for RelatedEndOfArticleFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
      v24 = v30;
      v25 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      v26 = v13;
    }

    else
    {
      sub_1D7AB4F6C(v21, v17, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
      v24 = v27;
      v25 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      v26 = v17;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1D7AB4F6C(v21, v9, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
    v24 = v28;
    v25 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    v26 = v9;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1D7AB4F6C(v21, v5, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
    v24 = v23;
    v25 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    v26 = v5;
  }

  else
  {
    sub_1D7AB4F6C(v21, v2, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
    v24 = v29;
    v25 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    v26 = v2;
  }

  sub_1D7AB4FD4(v26, v25);
  return v24;
}

uint64_t sub_1D7AB41C4()
{
  v1 = type metadata accessor for EndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB4F08(v0, v4);
  v5 = *&aMorefromrelate[8 * swift_getEnumCaseMultiPayload()];
  sub_1D7AB4FD4(v4, type metadata accessor for EndOfArticleFeedGroup);
  return v5;
}

uint64_t sub_1D7AB428C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v28 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v28, v1);
  v3 = &EndOfArticleFeedGroup - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v4);
  v6 = &EndOfArticleFeedGroup - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &EndOfArticleFeedGroup - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &EndOfArticleFeedGroup - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &EndOfArticleFeedGroup - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &EndOfArticleFeedGroup - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB4F08(v29, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D7AB4F6C(v22, v14, type metadata accessor for RelatedEndOfArticleFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
      v24 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      v25 = v14;
    }

    else
    {
      sub_1D7AB4F6C(v22, v18, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
      v24 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      v25 = v18;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1D7AB4F6C(v22, v10, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
    v24 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    v25 = v10;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1D7AB4F6C(v22, v6, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
    v24 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    v25 = v6;
  }

  else
  {
    sub_1D7AB4F6C(v22, v3, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
    v24 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    v25 = v3;
  }

  return sub_1D7AB4FD4(v25, v24);
}

uint64_t sub_1D7AB4654()
{
  v1 = v0;
  v2 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup - 8, v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for EndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB4F08(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D7AB4F6C(v25, v17, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v27 = *v17;

      v28 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      v29 = v17;
    }

    else
    {
      sub_1D7AB4F6C(v25, v21, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v27 = *v21;

      v28 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      v29 = v21;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1D7AB4F6C(v25, v13, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    v27 = *v13;

    v28 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    v29 = v13;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1D7AB4F6C(v25, v9, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v27 = *v9;

    v28 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    v29 = v9;
  }

  else
  {
    sub_1D7AB4F6C(v25, v5, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v27 = *v5;

    v28 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    v29 = v5;
  }

  sub_1D7AB4FD4(v29, v28);
  return v27;
}

uint64_t sub_1D7AB49D4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](v3, a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB4F08(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1D7AB4FD4(v6, type metadata accessor for EndOfArticleFeedGroup);
  *a2 = EnumCaseMultiPayload;
  return result;
}

uint64_t sub_1D7AB4A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69B5A20];
  v3 = sub_1D7D2E25C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7AB4B98(uint64_t a1)
{
  v2 = sub_1D7AB5034(&qword_1EE0C7CF0);

  return MEMORY[0x1EEE21DE0](a1, v2);
}

uint64_t sub_1D7AB4C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7AB5034(&unk_1EE0C7D00);

  return MEMORY[0x1EEE21E10](a1, a2, a3, v6);
}

uint64_t sub_1D7AB4C74(uint64_t a1)
{
  v2 = sub_1D7AB5034(&unk_1EE0C7D00);

  return MEMORY[0x1EEE21E00](a1, v2);
}

uint64_t sub_1D7AB4CCC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2, a2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB4F08(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 0x6E656D6D6F636552;
  v8 = 0x65526F5465726F4DLL;
  if (EnumCaseMultiPayload != 3)
  {
    v8 = 0x6D6F724665726F4DLL;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v7 = v8;
  }

  v9 = 0x646574616C6552;
  if (!EnumCaseMultiPayload)
  {
    v9 = 0x6D6F724665726F4DLL;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  sub_1D7AB4FD4(v4, type metadata accessor for EndOfArticleFeedGroup);
  return v10;
}

uint64_t sub_1D7AB4E14(uint64_t a1)
{
  v2 = sub_1D7AB5034(&qword_1EE0C7CE0);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t sub_1D7AB4F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AB4F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7AB4FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7AB5034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndOfArticleFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7AB5078()
{
  result = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RelatedEndOfArticleFeedGroup();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RecommendedEndOfArticleFeedGroup();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D7AB5150@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = a2;
  v4 = sub_1D7D2F06C();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v20 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB5680(0, &qword_1EC9E3C08, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB562C();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v18;
    v13 = v19;
    v21 = 1;
    sub_1D79EB9CC(&qword_1EE0BF738);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *v13 = 2;
    v15 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData();
    (*(v14 + 32))(&v13[*(v15 + 20)], v20, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7AB53B8(void *a1)
{
  v3 = v1;
  sub_1D7AB5680(0, &qword_1EC9E3C18, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB562C();
  sub_1D7D31B1C();
  v12[15] = *v3;
  v12[14] = 0;
  sub_1D7A8ECDC();
  sub_1D7D318BC();
  if (!v2)
  {
    type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData();
    v12[13] = 1;
    sub_1D7D2F06C();
    sub_1D79EB9CC(&qword_1EC9E1BE8);
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7AB5584(uint64_t a1)
{
  v2 = sub_1D7AB562C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AB55C0(uint64_t a1)
{
  v2 = sub_1D7AB562C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7AB562C()
{
  result = qword_1EC9E3C10;
  if (!qword_1EC9E3C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C10);
  }

  return result;
}

void sub_1D7AB5680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7AB562C();
    v7 = a3(a1, &type metadata for RelatedRecipesEndOfRecipeFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7AB56F8()
{
  result = qword_1EC9E3C20;
  if (!qword_1EC9E3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C20);
  }

  return result;
}

unint64_t sub_1D7AB5750()
{
  result = qword_1EC9E3C28;
  if (!qword_1EC9E3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C28);
  }

  return result;
}

unint64_t sub_1D7AB57A8()
{
  result = qword_1EC9E3C30;
  if (!qword_1EC9E3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C30);
  }

  return result;
}

uint64_t sub_1D7AB57FC(uint64_t a1)
{
  v2 = sub_1D7AB59FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AB5838(uint64_t a1)
{
  v2 = sub_1D7AB59FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RelatedRecipesEndOfRecipeFeedGroup.encode(to:)(void *a1)
{
  sub_1D7AB5CFC(0, &qword_1EC9E3C38, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB59FC();
  sub_1D7D31B1C();
  sub_1D7D2DE2C();
  sub_1D7AB6264(&qword_1EC9E3578, MEMORY[0x1E69B5888]);
  sub_1D7D318BC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D7AB59FC()
{
  result = qword_1EC9E3C40;
  if (!qword_1EC9E3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C40);
  }

  return result;
}

uint64_t RelatedRecipesEndOfRecipeFeedGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1D7D2DE2C();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AB5CFC(0, &qword_1EC9E3C48, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB59FC();
  sub_1D7D31AFC();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    sub_1D7AB6264(&qword_1EC9E3588, MEMORY[0x1E69B5888]);
    sub_1D7D317DC();
    (*(v16 + 8))(v11, v8);
    (*(v17 + 32))(v15, v23, v4);
    sub_1D7AB5D60(v15, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7AB5CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7AB59FC();
    v7 = a3(a1, &type metadata for RelatedRecipesEndOfRecipeFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7AB5D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AB5DF0(void *a1)
{
  sub_1D7AB5CFC(0, &qword_1EC9E3C38, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB59FC();
  sub_1D7D31B1C();
  sub_1D7D2DE2C();
  sub_1D7AB6264(&qword_1EC9E3578, MEMORY[0x1E69B5888]);
  sub_1D7D318BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D7AB5F80(uint64_t a1)
{
  v2 = sub_1D7AB6264(&qword_1EC9E3C80, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);

  return MEMORY[0x1EEE21E00](a1, v2);
}

unint64_t sub_1D7AB6160()
{
  result = qword_1EC9E3C68;
  if (!qword_1EC9E3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C68);
  }

  return result;
}

unint64_t sub_1D7AB61B8()
{
  result = qword_1EC9E3C70;
  if (!qword_1EC9E3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C70);
  }

  return result;
}

unint64_t sub_1D7AB6210()
{
  result = qword_1EC9E3C78;
  if (!qword_1EC9E3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C78);
  }

  return result;
}

uint64_t sub_1D7AB6264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7AB62D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1D7995698();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A8D62C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v55 = &v44 - v15;
  sub_1D7AB6C30(0, &qword_1EC9E3C88, MEMORY[0x1E69E6F48]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB6B78();
  v22 = v57;
  sub_1D7D31AFC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v18;
  v49 = a1;
  v57 = v9;
  LOBYTE(v60) = 0;
  sub_1D7995380(&qword_1EC9E3530, sub_1D7995698);
  v24 = v55;
  v25 = v52;
  sub_1D7D3173C();
  sub_1D7994BB0();
  LOBYTE(v59) = 1;
  sub_1D7995380(&qword_1EE0BF8C8, sub_1D7994BB0);
  sub_1D7D3173C();
  v45 = v60;
  LOBYTE(v58) = 2;
  v26 = v17;
  v50 = v21;
  sub_1D7D3173C();
  v46 = v59;
  v27 = v24;
  v28 = v56;
  sub_1D7A8D6D8(v27, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  v31 = v30(v28, 1, v25);
  v32 = v25;
  if (v31 == 1)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7995380(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v33 = v53;
    sub_1D7D2E33C();
    v34 = v30(v56, 1, v25);
    v35 = v33;
    v36 = v48;
    v37 = v49;
    if (v34 != 1)
    {
      sub_1D7A8D73C(v56);
    }
  }

  else
  {
    v35 = v53;
    (*(v29 + 32))(v53, v56, v25);
    v36 = v48;
    v37 = v49;
  }

  v38 = v57;
  (*(v29 + 32))(v57, v35, v32);
  v39 = v45;
  if (!v45)
  {
    v58 = 3;
    swift_allocObject();
    v39 = sub_1D7D2E71C();
  }

  v40 = v50;
  *(v38 + *(v6 + 20)) = v39;
  v41 = v54;
  v42 = v46;
  if (v46)
  {
    sub_1D7A8D73C(v55);
    (*(v36 + 8))(v40, v26);
  }

  else
  {
    v58 = 10;
    v43 = v55;
    swift_allocObject();
    v42 = sub_1D7D2E71C();
    sub_1D7A8D73C(v43);
    (*(v36 + 8))(v50, v26);
  }

  *(v38 + *(v6 + 24)) = v42;
  sub_1D7AB6BCC(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D7AB686C(void *a1)
{
  v3 = v1;
  sub_1D7AB6C30(0, &qword_1EC9E3C98, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AB6B78();
  sub_1D7D31B1C();
  LOBYTE(v15) = 0;
  sub_1D7995698();
  sub_1D7995380(&qword_1EC9E3540, sub_1D7995698);
  sub_1D7D318BC();
  if (!v2)
  {
    v11 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
    v15 = *(v3 + *(v11 + 20));
    v14 = 1;
    sub_1D7994BB0();
    sub_1D7995380(&qword_1EC9E3548, sub_1D7994BB0);
    sub_1D7D318BC();
    v15 = *(v3 + *(v11 + 24));
    v14 = 2;
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7AB6AD0(uint64_t a1)
{
  v2 = sub_1D7AB6B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AB6B0C(uint64_t a1)
{
  v2 = sub_1D7AB6B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7AB6B78()
{
  result = qword_1EC9E3C90;
  if (!qword_1EC9E3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3C90);
  }

  return result;
}

uint64_t sub_1D7AB6BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7AB6C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7AB6B78();
    v7 = a3(a1, &type metadata for RelatedRecipesEndOfRecipeFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7AB6CA8()
{
  result = qword_1EC9E3CA0;
  if (!qword_1EC9E3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3CA0);
  }

  return result;
}

unint64_t sub_1D7AB6D00()
{
  result = qword_1EC9E3CA8;
  if (!qword_1EC9E3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3CA8);
  }

  return result;
}

unint64_t sub_1D7AB6D58()
{
  result = qword_1EC9E3CB0;
  if (!qword_1EC9E3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3CB0);
  }

  return result;
}

uint64_t type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter()
{
  result = qword_1EC9E3CB8;
  if (!qword_1EC9E3CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7AB6E20()
{
  sub_1D7991488();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_1D7A8A0A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D7AB6EC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_1D7D2F31C();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[7] = v6;
  v7 = swift_task_alloc();
  v3[8] = v7;
  *v7 = v3;
  v7[1] = sub_1D7AB6FD0;

  return sub_1D7AB79E8(v6, a2);
}

uint64_t sub_1D7AB6FD0()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7A8A518, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_1D7AB7144;
    v4 = v2[7];
    v5 = v2[3];

    return sub_1D7AB8694(v5, v4);
  }
}

uint64_t sub_1D7AB7144(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1D7A8A624;
  }

  else
  {
    v4[12] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1D7AB72CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D7AB72CC()
{
  sub_1D7AB8E94(v0[12], v0[2]);

  sub_1D7A8C830();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D7AB7374@<X0>(uint64_t a1@<X8>)
{
  sub_1D7991488();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for EndOfRecipeFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7AB73F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  a2[4] = sub_1D79915A0(&qword_1EC9E3CE8, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  a2[5] = sub_1D79915A0(&qword_1EC9E3CF0, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_1D7AB91FC(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_1D7AB74B4()
{
  type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter();
  sub_1D7995698();
  v0 = sub_1D7D2E32C();
  sub_1D7AB9198(0, qword_1EC9E1AE0, sub_1D79E7118, MEMORY[0x1E69E6F90]);
  sub_1D79E7118(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  sub_1D7A8CAE8();
  swift_allocObject();
  *(v5 + v4) = sub_1D7D2E92C();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69B5AA0], v2);
  sub_1D79E2DC8(v5);
  return v0;
}

uint64_t sub_1D7AB7664()
{
  sub_1D7991488();

  return sub_1D7D2DEFC();
}

uint64_t sub_1D7AB7690@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7AB9198(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D7991488();

  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7AB9260(inited + 32, sub_1D7A19AB4);
  sub_1D7AB92C0(0);
  a1[3] = v5;
  a1[4] = sub_1D79915A0(&qword_1EC9E3D00, sub_1D7AB92C0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7AB7814(uint64_t a1)
{
  v2 = sub_1D79915A0(&qword_1EC9E3CD8, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t sub_1D7AB79E8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_1D7AB9198(0, &unk_1EE0BFB00, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v3[8] = swift_task_alloc();
  v4 = sub_1D7D2FC7C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_1D7D2EC6C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7AB7B90, 0, 0);
}

uint64_t sub_1D7AB7B90()
{
  sub_1D7D2E62C();
  v0[16] = v0[2];
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1D7AB7CAC;

  return sub_1D79FFB10();
}

uint64_t sub_1D7AB7CAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1D7AB8600;
  }

  else
  {
    v4 = sub_1D7AB7DC0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7AB7DC0()
{
  v57 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[7];

  sub_1D7D2E5FC();
  v53 = *v2;
  sub_1D7AB9260(v2, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v7 = v6 + *(type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter() + 20);
  v8 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v9 = *(v4 + 8);
  v9(v3, v5);
  v10 = v0[3];
  v11 = v1 >> 62;
  v54 = v0;
  if (v1 >> 62)
  {
    v12 = sub_1D7D3167C();
    if (v12 < v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 < v10)
    {
LABEL_3:

      v13 = sub_1D7D2E4EC();
      sub_1D79915A0(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
      swift_allocError();
      *v14 = v10;
      v14[1] = v12;
      (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E69B5AE0], v13);
      swift_willThrow();

      v15 = v0[1];
      goto LABEL_59;
    }
  }

  v16 = v0[14];
  v17 = v0[12];
  v18 = *(v7 + *(v8 + 24));
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v9(v16, v17);
  v19 = v0[4];
  if (v19 < 0)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v11)
  {
    if (v1 < 0)
    {
      v22 = v54[18];
    }

    else
    {
      v22 = (v1 & 0xFFFFFFFFFFFFFF8);
    }

    v18 = sub_1D7D3167C();
    if (sub_1D7D3167C() < 0)
    {
      goto LABEL_66;
    }

    if (v18 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    if (v18 < 0)
    {
      v23 = v19;
    }

    if (v19)
    {
      v18 = v23;
    }

    else
    {
      v18 = 0;
    }

    v20 = sub_1D7D3167C();
  }

  else
  {
    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19)
    {
      v18 = v21;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v20 < v18)
  {
    goto LABEL_63;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    if (v18)
    {
      sub_1D79A9404();
      v24 = 0;
      do
      {
        v25 = v24 + 1;
        sub_1D7D3147C();
        v24 = v25;
      }

      while (v18 != v25);
    }

    if (!v11)
    {
LABEL_32:
      v16 = 0;
      v22 = (v1 & 0xFFFFFFFFFFFFFF8);
      v17 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
      v18 = (2 * v18) | 1;
      if ((v18 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  v22 = sub_1D7D3168C();
  v17 = v26;
  v16 = v27;
  v18 = v28;

  if ((v18 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_1D7D319DC();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v18 >> 1, v16))
  {
    goto LABEL_67;
  }

  if (v31 != (v18 >> 1) - v16)
  {
    goto LABEL_68;
  }

  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  i = v32;
  if (v32)
  {
    goto LABEL_44;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v29)
  {
    swift_unknownObjectRelease();
LABEL_44:
    sub_1D79EB1FC();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D7D3C670;
    *(v33 + 32) = [v53 sourceChannel];
    sub_1D7AB9198(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
    v34 = *(sub_1D7D2FD3C() - 8);
    v17 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7D3B4D0;
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_64:
      v35 = sub_1D7D3167C();
    }

    else
    {
      v35 = *(i + 16);
    }

    v16 = MEMORY[0x1E69E7CC0];
    if (!v35)
    {
      v37 = v54;
      goto LABEL_58;
    }

    v56 = MEMORY[0x1E69E7CC0];
    v22 = &v56;
    sub_1D7A5BFDC(0, v35 & ~(v35 >> 63), 0);
    if ((v35 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_unknownObjectRelease_n();
LABEL_36:
    sub_1D7B0FDC8(v22, v17, v16, v18);
  }

  v36 = 0;
  v37 = v54;
  v38 = v54[10];
  v39 = v56;
  v40 = i;
  v55 = *MEMORY[0x1E69B6690];
  do
  {
    if ((i & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1DA70EF00](v36);
    }

    else
    {
      v41 = *(v40 + 8 * v36 + 32);
    }

    v42 = v37[11];
    v43 = v37[9];
    *v42 = v41;
    (*(v38 + 104))(v42, v55, v43);
    v56 = v39;
    v45 = *(v39 + 16);
    v44 = *(v39 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1D7A5BFDC(v44 > 1, v45 + 1, 1);
      v37 = v54;
      v39 = v56;
    }

    v46 = v37[11];
    v47 = v37[9];
    ++v36;
    *(v39 + 16) = v45 + 1;
    (*(v38 + 32))(v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v45, v46, v47);
    v40 = i;
  }

  while (v35 != v36);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v48 = v37;
  v49 = v37[8];
  sub_1D7A1912C(v16);
  sub_1D7A19144(v16);
  sub_1D7A1915C(v16);
  sub_1D7D2FD2C();
  v50 = sub_1D7D2CE6C();
  (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
  sub_1D7A191A4(v16);
  sub_1D7A191A4(v16);
  sub_1D7A191BC(v16);
  sub_1D7A191D4(v16);
  sub_1D7A192E8(v16);
  sub_1D7A19300(v16);
  sub_1D7A19414(v16);
  sub_1D7D2F30C();

  v15 = v48[1];
LABEL_59:

  return v15();
}

uint64_t sub_1D7AB8600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7AB8694(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D7AB9198(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  v3[5] = swift_task_alloc();
  sub_1D7AB9198(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v4);
  v3[6] = swift_task_alloc();
  sub_1D7AB9198(0, &qword_1EC9E34E0, sub_1D7995698, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_1D7D2F6AC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7AB8880, 0, 0);
}

uint64_t sub_1D7AB8880()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v1 + 88);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter();
  v9 = (v6 + *(v8 + 24));
  v22 = v9[4];
  v23 = v9[3];
  __swift_project_boxed_opaque_existential_1(v9, v23);
  sub_1D7991488();
  v24 = v2;
  sub_1D7D2DF2C();
  v10 = *(v3 + 20);
  *(v1 + 120) = v10;
  v11 = *(v8 + 20);
  sub_1D7995698();
  v13 = v12;
  v14 = *(v12 - 8);
  (*(v14 + 16))(v5, v6 + v11, v12);
  (*(v14 + 56))(v5, 0, 1, v13);
  v15 = sub_1D7D2FAFC();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  *(v1 + 124) = 2;
  sub_1D7A8C9F0();
  swift_allocObject();

  sub_1D7D2FB8C();
  v16 = sub_1D7D2F59C();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = qword_1EC9DFD38;
  *MEMORY[0x1E69B5088];
  if (v17 != -1)
  {
    swift_once();
  }

  qword_1EC9E3328;
  sub_1D7D2F69C();
  v18 = swift_task_alloc();
  *(v1 + 104) = v18;
  *v18 = v1;
  v18[1] = sub_1D7AB8B7C;
  v19 = *(v1 + 80);
  v20 = *(v1 + 24);

  return MEMORY[0x1EEE22148](v24 + v10, v20, v19, v23, v22);
}

uint64_t sub_1D7AB8B7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 112) = v1;

  v6 = *(v4 + 120);
  v7 = *(v4 + 96);
  v8 = *(v4 + 72);
  if (v1)
  {
    (*(v8 + 8))(*(v4 + 80), *(v4 + 64));
    v9 = sub_1D7D2F06C();
    (*(*(v9 - 8) + 8))(v7 + v6, v9);

    return MEMORY[0x1EEE6DFA0](sub_1D7AB8DFC, 0, 0);
  }

  else
  {
    (*(v8 + 8))();
    v10 = sub_1D7D2F06C();
    (*(*(v10 - 8) + 8))(v7 + v6, v10);

    v11 = *(v5 + 8);

    return v11(a1);
  }
}

uint64_t sub_1D7AB8DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7AB8E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v18 = a2;
  sub_1D7AB9198(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v16 = &v15 - v4;
  v5 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v17 = sub_1D7D2DE2C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7991488();

  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter();
  sub_1D7995698();
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  sub_1D7D2E36C();
  v13 = sub_1D7D2E1CC();
  (*(*(v13 - 8) + 56))(v16, 1, 1, v13);
  sub_1D7D2DDCC();
  (*(v9 + 32))(v18, v12, v17);
  type metadata accessor for EndOfRecipeFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

void sub_1D7AB9198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7AB91FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AB9260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AlertOpenBlockedStoryFactory.createAlert(headline:selectionReason:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7998FAC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v37 - v14;
  v16 = *a2;
  v17 = [*(v3 + 16) possiblyUnfetchedAppConfiguration];
  if ([v17 respondsToSelector_])
  {
    v18 = [v17 blockedArticleLearnMoreURL];
    swift_unknownObjectRelease();
    v19 = sub_1D7D3034C();
    v21 = v20;
  }

  else
  {
    swift_unknownObjectRelease();
    v19 = 0;
    v21 = 0;
  }

  sub_1D7D2823C();

  v22 = sub_1D7D2824C();
  if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
  {
    if (qword_1EC9DFD60 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7998FAC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7D3B4D0;
    v37 = 0;
    v38 = 0xE000000000000000;
    if (v21)
    {
      v24 = v19;
    }

    else
    {
      v24 = 7104878;
    }

    if (v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    MEMORY[0x1DA70DE90](v24, v25);

    v26 = v37;
    v27 = v38;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D79D6AE0();
    *(v23 + 32) = v26;
    *(v23 + 40) = v27;
    sub_1D7D29AAC();
  }

  sub_1D79A8A20(v15, v10);
  v28 = [a1 sourceName];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1D7D3034C();
    v32 = v31;

    if (v16 == 3)
    {
      v33 = 2;
    }

    else
    {
      v33 = v16;
    }

    *a3 = v30;
    *(a3 + 8) = v32;
    *(a3 + 16) = v33;
    v34 = type metadata accessor for AlertOpenBlockedStory();
    sub_1D79A8B40(v10, a3 + *(v34 + 24));
    *(a3 + *(v34 + 28)) = 0;
    (*(*(v34 - 8) + 56))(a3, 0, 1, v34);
  }

  else
  {
    if (qword_1EC9DFD60 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7D29AAC();
    sub_1D79A8AB4(v10);
    v35 = type metadata accessor for AlertOpenBlockedStory();
    (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
  }

  return sub_1D79A8AB4(v15);
}

uint64_t AlertOpenBlockedStoryFactory.createAlert(issue:selectionReason:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7998FAC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v35 - v14;
  v16 = *a2;
  v17 = [*(v3 + 16) possiblyUnfetchedAppConfiguration];
  if ([v17 respondsToSelector_])
  {
    v18 = [v17 blockedArticleLearnMoreURL];
    swift_unknownObjectRelease();
    v19 = sub_1D7D3034C();
    v21 = v20;
  }

  else
  {
    swift_unknownObjectRelease();
    v19 = 0;
    v21 = 0;
  }

  sub_1D7D2823C();

  v22 = sub_1D7D2824C();
  if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
  {
    if (qword_1EC9DFD60 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7998FAC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7D3B4D0;
    v35 = 0;
    v36 = 0xE000000000000000;
    if (v21)
    {
      v24 = v19;
    }

    else
    {
      v24 = 7104878;
    }

    if (v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    MEMORY[0x1DA70DE90](v24, v25);

    v26 = v35;
    v27 = v36;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D79D6AE0();
    *(v23 + 32) = v26;
    *(v23 + 40) = v27;
    sub_1D7D29AAC();
  }

  sub_1D79A8A20(v15, v10);
  v28 = [objc_msgSend(a1 sourceChannel)];
  swift_unknownObjectRelease();
  v29 = sub_1D7D3034C();
  v31 = v30;

  if (v16 == 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = v16;
  }

  *a3 = v29;
  *(a3 + 8) = v31;
  *(a3 + 16) = v32;
  v33 = type metadata accessor for AlertOpenBlockedStory();
  sub_1D79A8B40(v10, a3 + *(v33 + 24));
  *(a3 + *(v33 + 28)) = 1;
  (*(*(v33 - 8) + 56))(a3, 0, 1, v33);
  return sub_1D79A8AB4(v15);
}

uint64_t AlertOpenBlockedStoryFactory.createAlert(recipe:selectionReason:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7998FAC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - v8;
  v10 = *a2;
  v11 = sub_1D7D2824C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = [objc_msgSend(a1 sourceChannel)];
  swift_unknownObjectRelease();
  v13 = sub_1D7D3034C();
  v15 = v14;

  if (v10 == 3)
  {
    v16 = 2;
  }

  else
  {
    v16 = v10;
  }

  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  v17 = type metadata accessor for AlertOpenBlockedStory();
  sub_1D79A8B40(v9, a3 + *(v17 + 24));
  *(a3 + *(v17 + 28)) = 2;
  return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
}

uint64_t AlertOpenBlockedStoryFactory.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BottomPaletteArticleViewerFeatureViewModel()
{
  result = qword_1EE0C0E08;
  if (!qword_1EE0C0E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7AB9E4C()
{
  sub_1D7D2ACCC();
  if (v0 <= 0x3F)
  {
    sub_1D7AB9EE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7AB9EE0()
{
  if (!qword_1EE0BF328)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF328);
    }
  }
}

uint64_t sub_1D7AB9F30()
{
  v1 = sub_1D7D29D7C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  (*(v2 + 104))(v6, *MEMORY[0x1E69D7638], v1, v4);
  v8 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_toggleState;
  swift_beginAccess();
  (*(v2 + 40))(v7 + v8, v6, v1);
  return swift_endAccess();
}

void sub_1D7ABA048()
{
  sub_1D7ABAABC(&qword_1EC9E3D28);

  JUMPOUT(0x1DA70A0C0);
}

char *sub_1D7ABA0A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1D7D29D7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_linkedToggle + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = *MEMORY[0x1E69D7638];
  v26 = *(v11 + 104);
  v26(&v4[OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_toggleState], v15, v10);
  v16 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_iconImageView;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v17 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_offImage;
  if (qword_1EC9DFFC8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EC9E9250;
  *&v4[v17] = qword_1EC9E9250;
  *&v4[OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_onImage] = v18;
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v19 = v18;
  v20 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_iconImageView;
  v22 = *&v20[OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_iconImageView];
  v23 = v20;
  [v22 setContentMode_];
  [v23 addSubview_];
  v26(v14, v15, v10);
  sub_1D7ABAABC(&qword_1EC9E3D30);
  sub_1D7D2C94C();

  (*(v11 + 8))(v14, v10);
  return v23;
}

uint64_t type metadata accessor for CheckmarkAccessory()
{
  result = qword_1EC9E3D10;
  if (!qword_1EC9E3D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7ABA480()
{
  result = sub_1D7D29D7C();
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

uint64_t sub_1D7ABA52C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_toggleState;
  swift_beginAccess();
  v4 = sub_1D7D29D7C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D7ABA5B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_toggleState;
  swift_beginAccess();
  v4 = sub_1D7D29D7C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1D7ABA6F4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_linkedToggle;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7ABA760(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_linkedToggle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D79D82E8;
}

void sub_1D7ABA838()
{
  *(v0 + OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_linkedToggle + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_toggleState;
  v2 = *MEMORY[0x1E69D7638];
  v3 = sub_1D7D29D7C();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_iconImageView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v5 = OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_offImage;
  if (qword_1EC9DFFC8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC9E9250;
  *(v0 + v5) = qword_1EC9E9250;
  *(v0 + OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_onImage) = v6;
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7ABA978()
{
  v1 = sub_1D7D29D7C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_iconImageView);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D7630], v1, v4);
  v8 = v7;
  v9 = sub_1D7D29D6C();
  (*(v2 + 8))(v6, v1);
  v10 = &OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_onImage;
  if ((v9 & 1) == 0)
  {
    v10 = &OBJC_IVAR____TtC12NewsArticles18CheckmarkAccessory_offImage;
  }

  [v8 setImage_];
}

uint64_t sub_1D7ABAABC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CheckmarkAccessory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InterstitialAdPreviewModule.createViewController(for:)(uint64_t a1)
{
  v3 = sub_1D7D2D5EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for InterstitialAdPreviewViewController();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = sub_1D7D28CFC();

  if (v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7ABACA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2D5EC();
  return sub_1D7D28BFC();
}

uint64_t InterstitialAdPreviewModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t InterstitialAdPreviewModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7ABAD68(uint64_t a1)
{
  v3 = sub_1D7D2D5EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  type metadata accessor for InterstitialAdPreviewViewController();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = sub_1D7D28CFC();

  if (v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_1D7D2D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7ABAFC4(void *a1)
{
  sub_1D7D2D5EC();

  return sub_1D7ABACA4(a1);
}

uint64_t RecipeBlueprintRouteModelRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeBlueprintRouteModelRequest.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeBlueprintRouteModelRequest() + 24);

  return sub_1D7A82778(v3, a1);
}

uint64_t type metadata accessor for RecipeBlueprintRouteModelRequest()
{
  result = qword_1EE0BBFF0;
  if (!qword_1EE0BBFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecipeBlueprintRouteModelRequest.blockingBehavior.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RecipeBlueprintRouteModelRequest();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t RecipeBlueprintRouteModelRequest.feedKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeBlueprintRouteModelRequest() + 32);
  v4 = sub_1D7D2EB7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeBlueprintRouteModelRequest.init(identifier:recipe:context:blockingBehavior:feedKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v10 = *a5;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for RecipeBlueprintRouteModelRequest();
  sub_1D7ABB264(a4, &a7[v11[6]]);
  *&a7[v11[7]] = v10;
  v12 = v11[8];
  v13 = sub_1D7D2EB7C();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a7[v12], a6, v13);
}

uint64_t sub_1D7ABB264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeRouteContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7ABB2F0()
{
  sub_1D79A9404();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecipeRouteContext();
    if (v1 <= 0x3F)
    {
      sub_1D7ABB3B4();
      if (v2 <= 0x3F)
      {
        sub_1D7D2EB7C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D7ABB3B4()
{
  if (!qword_1EE0BD030[0])
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0BD030);
    }
  }
}

void sub_1D7ABB404(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  [a1 setSourceView_];
  if ((v7 & 1) == 0)
  {
    [a1 setSourceRect_];
  }

  if (v8)
  {
    [a1 setSourceItem_];
  }

  [a1 setPermittedArrowDirections_];
  if (v10)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (v10 >> 62)
    {
LABEL_27:
      v11 = sub_1D7D3167C();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (v11 != v12)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA70EF00](v12, v10);
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      v14 = sub_1D7D292CC();

      ++v12;
      if (v14)
      {
        MEMORY[0x1DA70E080](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D7D306DC();
        }

        sub_1D7D3072C();
        v12 = v13;
      }
    }

    sub_1D7992EFC(0, &unk_1EE0BED20);
    v16 = sub_1D7D3062C();
  }

  else
  {
    v16 = 0;
  }

  [a1 setPassthroughViews_];
}

uint64_t sub_1D7ABB648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewModel.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TipViewModel.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TipViewModel(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_1D7A2F174(v10, v9);
}

uint64_t TipViewModel.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for TipViewModel(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t TipViewModel.Content.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TipViewModel.Content.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D7ABB8B0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7ABB91C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D7ABB91C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t TipViewModel.Content.init(title:message:imageProvider:footerAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for TipViewModel.Content(0);
  sub_1D7ABBB48(a5, a7 + *(v10 + 24), qword_1EE0C9EB0, type metadata accessor for TipImageProvider);
  return sub_1D7ABBB48(a6, a7 + *(v10 + 28), qword_1EE0CA7D0, type metadata accessor for TipViewModel.Action);
}

id TipViewModel.Placement.sourceView.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

__n128 TipViewModel.Placement.sourceRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TipViewModel.Placement.init(sourceView:sourceRect:sourceItem:permittedArrowDirections:passthroughViews:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a2;
  v7 = *(a2 + 16);
  *(a6 + 8) = *a2;
  *a6 = a1;
  *(a6 + 24) = v7;
  *(a6 + 40) = *(a2 + 32);
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  return result;
}

__n128 TipViewModel.Placement.init(permittedArrowDirections:passthroughViews:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  result = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 16);
  *(a3 + 8) = *MEMORY[0x1E695F050];
  *(a3 + 24) = v4;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = a1;
  *(a3 + 64) = a2;
  return result;
}

uint64_t TipViewModel.Action.init(title:deepLink:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for TipViewModel.Action(0);
  return sub_1D7ABBB48(a3, a4 + *(v6 + 20), &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1D7ABBB48(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7ABB91C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

__n128 TipViewModel.init(content:placement:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  sub_1D7ABBC1C(a1, a4);
  v7 = type metadata accessor for TipViewModel(0);
  v8 = a4 + *(v7 + 20);
  v9 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = result;
  *(a4 + *(v7 + 24)) = v6;
  return result;
}

uint64_t sub_1D7ABBC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewModel.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7ABBC84()
{
  result = qword_1EC9E3D38;
  if (!qword_1EC9E3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3D38);
  }

  return result;
}

unint64_t sub_1D7ABBCDC()
{
  result = qword_1EC9E3D40;
  if (!qword_1EC9E3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3D40);
  }

  return result;
}

unint64_t sub_1D7ABBD34()
{
  result = qword_1EE0CA6D8[0];
  if (!qword_1EE0CA6D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0CA6D8);
  }

  return result;
}

unint64_t sub_1D7ABBD8C()
{
  result = qword_1EE0CA6D0;
  if (!qword_1EE0CA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CA6D0);
  }

  return result;
}

void sub_1D7ABBDE0()
{
  sub_1D79F856C();
  if (v0 <= 0x3F)
  {
    sub_1D7ABBEBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7ABBE54()
{
  if (!qword_1EE0BECE0)
  {
    sub_1D7992EFC(255, &qword_1EE0BECE8);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BECE0);
    }
  }
}

void sub_1D7ABBEBC()
{
  if (!qword_1EE0BECD0)
  {
    sub_1D7992EFC(255, &qword_1EE0BECD8);
    sub_1D7ABBE54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BECD0);
    }
  }
}

uint64_t sub_1D7ABBF68()
{
  result = type metadata accessor for TipViewModel.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7ABC014()
{
  sub_1D7ABB91C(319, qword_1EE0C9EB0, type metadata accessor for TipImageProvider);
  if (v0 <= 0x3F)
  {
    sub_1D7ABB91C(319, qword_1EE0CA7D0, type metadata accessor for TipViewModel.Action);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7ABC0E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_1D7ABC13C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1D7ABC1E8()
{
  sub_1D7ABB91C(319, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t IssueViewSession.issue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D79ECEAC(v2);
}

uint64_t IssueViewSession.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D7ABC2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7ABC30C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1D7ABC364()
{
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    return;
  }

  v1 = *(v0 + 16);
  if (!*(v0 + 24))
  {
    v6 = v1;
    v7 = sub_1D7D30D8C();
    [v7 setAdditionalOverflowItems_];

    v4 = v1;
    v5 = 0;
    goto LABEL_6;
  }

  if (*(v0 + 24) == 1)
  {
    v2 = v1;
    v3 = sub_1D7D30D8C();
    [v3 setAdditionalOverflowItems_];

    v4 = v1;
    v5 = 1;
LABEL_6:

    sub_1D7ABC530(v4, v5);
    return;
  }

  if (!v1)
  {
    v8 = sub_1D7D30D8C();
    [v8 setAdditionalOverflowItems_];
  }
}

uint64_t sub_1D7ABC480()
{
  sub_1D7ABC530(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles46OverflowMenuArticleViewerFeatureTransitionKindO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1D7ABC530(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

double ArticleViewerFeatureProviderType.pageVisibilityDidChange(for:secondaryPage:changedVisibilityFactor:scrollDirection:featureUpdateOptions:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ArticleRouteModel.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v26 - v16);
  sub_1D7ABC9D4(v1, v26 - v16, type metadata accessor for ArticleRouteModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v19 = v18;
    v20 = swift_projectBox();
    v21 = sub_1D7ABC9D4(v20 + *(v19 + 48), v13, type metadata accessor for ArticleRouteModel);
    v26[0] = 0x3A64656B636F6C42;
    v26[1] = 0xE800000000000000;
    v22 = ArticleRouteModel.identifier.getter(v21);
    MEMORY[0x1DA70DE90](v22);

    v23 = v26[0];
    sub_1D7ABCA3C(v13, type metadata accessor for ArticleRouteModel);
  }

  else
  {
    sub_1D7ABC9D4(*v17 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, v9, type metadata accessor for ArticleViewerBlueprintRouteArticle);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7ABDBE8(v9, v5, type metadata accessor for AsyncArticle);
      v23 = *v5;

      sub_1D7ABCA3C(v5, type metadata accessor for AsyncArticle);
    }

    else
    {
      v23 = *v9;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    sub_1D7ABCA3C(v17 + *(v24 + 48), type metadata accessor for ArticleNavigationAction);
  }

  return v23;
}

unint64_t sub_1D7ABC970()
{
  result = qword_1EC9E77A0;
  if (!qword_1EC9E77A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E77A0);
  }

  return result;
}

uint64_t sub_1D7ABC9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7ABCA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArticleRouteModel.transitionIdentifier.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v24 - v10);
  sub_1D7ABC9D4(v2, &v24 - v10, type metadata accessor for ArticleRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v15 = v14;
    v16 = swift_projectBox();
    v17 = sub_1D7ABC9D4(v16 + *(v15 + 48), v7, type metadata accessor for ArticleRouteModel);
    ArticleRouteModel.transitionIdentifier.getter(v17);
    sub_1D7ABCA3C(v7, type metadata accessor for ArticleRouteModel);
  }

  else
  {
    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    v20 = *(v19 + 48);
    *a1 = sub_1D7ABD3AC;
    a1[1] = v13;
    v21 = *MEMORY[0x1E69D83E8];
    v22 = sub_1D7D2BA0C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(a1, v21, v22);
    (*(v23 + 56))(a1, 0, 1, v22);
    return sub_1D7ABCA3C(v11 + v20, type metadata accessor for ArticleNavigationAction);
  }
}

uint64_t sub_1D7ABCD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v72 = (&v68 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v71 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v70 = (&v68 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v69 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v68 - v29);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v68 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v68 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v68 - v41;
  v43 = OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle;
  swift_beginAccess();
  sub_1D7ABC9D4(a1 + v43, v42, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7ABDBE8(v42, v38, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7ABDBE8(v38, v6, type metadata accessor for AsyncArticle);
    v44 = *v6;
    v45 = v6[1];

    sub_1D7ABCA3C(v6, type metadata accessor for AsyncArticle);
  }

  else
  {
    v46 = v38[1];
    v74 = *v38;
    v75 = v46;
    v47 = v38[3];
    v76 = v38[2];
    v77 = v47;
    v45 = *(&v74 + 1);
    v44 = v74;

    sub_1D7A0AD5C(&v74);
  }

  sub_1D7ABC9D4(a1 + v43, v34, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7ABDBE8(v34, v30, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7ABDBE8(v30, v6, type metadata accessor for AsyncArticle);
    v49 = v6[4];
    v48 = v6[5];

    sub_1D7ABCA3C(v6, type metadata accessor for AsyncArticle);
    if (v44 != v49)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v50 = v30[1];
    v74 = *v30;
    v75 = v50;
    v51 = v30[3];
    v76 = v30[2];
    v77 = v51;
    v48 = *(&v51 + 1);
    v52 = v51;

    sub_1D7A0AD5C(&v74);
    if (v44 != v52)
    {
      goto LABEL_10;
    }
  }

  if (v45 == v48)
  {

    goto LABEL_11;
  }

LABEL_10:
  v53 = sub_1D7D3197C();

  if (v53)
  {
LABEL_11:
    sub_1D7ABC9D4(a1 + v43, v14, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    sub_1D7ABDBE8(v14, v10, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7ABDBE8(v10, v6, type metadata accessor for AsyncArticle);

      sub_1D7ABCA3C(v6, type metadata accessor for AsyncArticle);
    }

    else
    {
      v54 = v10[1];
      v74 = *v10;
      v75 = v54;
      v55 = v10[3];
      v76 = v10[2];
      v77 = v55;

      sub_1D7A0AD5C(&v74);
    }

    return sub_1D7D2B9FC();
  }

  v56 = v69;
  sub_1D7ABC9D4(a1 + v43, v69, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  v57 = v56;
  v58 = v70;
  sub_1D7ABDBE8(v57, v70, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7ABDBE8(v58, v6, type metadata accessor for AsyncArticle);

    sub_1D7ABCA3C(v6, type metadata accessor for AsyncArticle);
  }

  else
  {
    v59 = v58[1];
    v74 = *v58;
    v75 = v59;
    v60 = v58[3];
    v76 = v58[2];
    v77 = v60;

    sub_1D7A0AD5C(&v74);
  }

  v61 = a1 + v43;
  v62 = v71;
  sub_1D7ABC9D4(v61, v71, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  v63 = v62;
  v64 = v72;
  sub_1D7ABDBE8(v63, v72, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7ABDBE8(v64, v6, type metadata accessor for AsyncArticle);

    sub_1D7ABCA3C(v6, type metadata accessor for AsyncArticle);
  }

  else
  {
    v65 = v64[1];
    v74 = *v64;
    v75 = v65;
    v66 = v64[3];
    v76 = v64[2];
    v77 = v66;

    sub_1D7A0AD5C(&v74);
  }

  return sub_1D7D2B9FC();
}

uint64_t ArticleRouteModel.articleIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v26 - v16);
  sub_1D7ABC9D4(v1, &v26 - v16, type metadata accessor for ArticleRouteModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v19 = v18;
    v20 = swift_projectBox();
    v21 = sub_1D7ABC9D4(v20 + *(v19 + 48), v13, type metadata accessor for ArticleRouteModel);
    v22 = ArticleRouteModel.articleIdentifier.getter(v21);
    sub_1D7ABCA3C(v13, type metadata accessor for ArticleRouteModel);
  }

  else
  {
    sub_1D7ABC9D4(*v17 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, v9, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D7ABDBE8(v9, v5, type metadata accessor for AsyncArticle);
      v22 = *(v5 + 2);

      sub_1D7ABCA3C(v5, type metadata accessor for AsyncArticle);
    }

    else
    {
      v23 = [v9[2] articleID];
      v22 = sub_1D7D3034C();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    sub_1D7ABCA3C(v17 + *(v24 + 48), type metadata accessor for ArticleNavigationAction);
  }

  return v22;
}

uint64_t ArticleRouteModel.headline.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v21 - v12);
  sub_1D7ABC9D4(v1, &v21 - v12, type metadata accessor for ArticleRouteModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v15 = v14;
    v16 = swift_projectBox();
    v17 = sub_1D7ABC9D4(v16 + *(v15 + 48), v9, type metadata accessor for ArticleRouteModel);
    v18 = ArticleRouteModel.headline.getter(v17);
    sub_1D7ABCA3C(v9, type metadata accessor for ArticleRouteModel);
  }

  else
  {
    sub_1D7ABC9D4(*v13 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, v5, type metadata accessor for ArticleViewerBlueprintRouteArticle);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7ABCA3C(v5, type metadata accessor for ArticleViewerBlueprintRouteArticle);
      v18 = 0;
    }

    else
    {
      v18 = *(v5 + 2);

      swift_unknownObjectRelease();
    }

    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    sub_1D7ABCA3C(v13 + *(v19 + 48), type metadata accessor for ArticleNavigationAction);
  }

  return v18;
}

uint64_t ArticleRouteModel.articleNavigationAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  sub_1D7ABC9D4(v2, &v18 - v10, type metadata accessor for ArticleRouteModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v13 = v12;
    v14 = swift_projectBox();
    v15 = sub_1D7ABC9D4(v14 + *(v13 + 48), v7, type metadata accessor for ArticleRouteModel);
    ArticleRouteModel.articleNavigationAction.getter(v15);
    sub_1D7ABCA3C(v7, type metadata accessor for ArticleRouteModel);
  }

  else
  {

    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    return sub_1D7ABDBE8(&v11[*(v17 + 48)], a1, type metadata accessor for ArticleNavigationAction);
  }
}

uint64_t sub_1D7ABDBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ArticleRouteModel.referringURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v21 - v10);
  sub_1D7ABC9D4(v2, &v21 - v10, type metadata accessor for ArticleRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v15 = v14;
    v16 = swift_projectBox();
    v17 = sub_1D7ABC9D4(v16 + *(v15 + 48), v7, type metadata accessor for ArticleRouteModel);
    ArticleRouteModel.referringURL.getter(v17);
    sub_1D7ABCA3C(v7, type metadata accessor for ArticleRouteModel);
  }

  else
  {
    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    v20 = *(v19 + 48);
    sub_1D79A8A20(v13 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL, a1);

    return sub_1D7ABCA3C(v11 + v20, type metadata accessor for ArticleNavigationAction);
  }
}

uint64_t ArticleRouteModel.observer.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v19 - v8);
  sub_1D7ABC9D4(v1, &v19 - v8, type metadata accessor for ArticleRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v13 = v12;
    v14 = swift_projectBox();
    v15 = sub_1D7ABC9D4(v14 + *(v13 + 48), v5, type metadata accessor for ArticleRouteModel);
    v16 = ArticleRouteModel.observer.getter(v15);
    sub_1D7ABCA3C(v5, type metadata accessor for ArticleRouteModel);

    return v16;
  }

  else
  {
    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    sub_1D7ABCA3C(v9 + *(v17 + 48), type metadata accessor for ArticleNavigationAction);
  }

  return v11;
}

uint64_t ArticleRouteModel.redirect.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v67 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v62 - v13;
  v14 = sub_1D7D2824C();
  v71 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v70 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v66 = &v62 - v19;
  v20 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  v28 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = (&v62 - v34);
  sub_1D7ABC9D4(v2, &v62 - v34, type metadata accessor for ArticleRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *v35;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v39 = v38;
    v40 = swift_projectBox();
    v41 = sub_1D7ABC9D4(v40 + *(v39 + 48), v31, type metadata accessor for ArticleRouteModel);
    ArticleRouteModel.redirect.getter(v41);
    sub_1D7ABCA3C(v31, type metadata accessor for ArticleRouteModel);
  }

  sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v44 = *(v43 + 48);
  v45 = OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article;
  v68 = v37;
  sub_1D7ABC9D4(v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, v27, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7ABCA3C(v27, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    v46 = v71;
  }

  else
  {
    v63 = v44;
    v64 = v45;
    v47 = *(v27 + 2);
    v65 = v7;

    v48 = v64;

    swift_unknownObjectRelease();
    v7 = v65;

    v49 = [v47 contentType];
    v44 = v63;
    swift_unknownObjectRelease();
    v46 = v71;
    if (v49 == 1)
    {
      sub_1D7ABC9D4(v68 + v48, v23, type metadata accessor for ArticleViewerBlueprintRouteArticle);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D7ABCA3C(v23, type metadata accessor for ArticleViewerBlueprintRouteArticle);
        v50 = v69;
        (*(v46 + 56))(v69, 1, 1, v14);
      }

      else
      {
        v51 = *(v23 + 2);

        swift_unknownObjectRelease();

        v52 = [v51 contentURL];
        swift_unknownObjectRelease();
        if (v52)
        {
          v53 = v67;
          sub_1D7D281EC();

          v54 = 0;
          v50 = v69;
        }

        else
        {
          v54 = 1;
          v50 = v69;
          v53 = v67;
        }

        (*(v46 + 56))(v53, v54, 1, v14);
        sub_1D79A8B40(v53, v50);
        v55 = (*(v46 + 48))(v50, 1, v14);
        v7 = v65;
        if (v55 != 1)
        {

          v60 = *(v46 + 32);
          v61 = v66;
          v60(v66, v50, v14);
          v60(a1, v61, v14);
          v59 = type metadata accessor for ArticleRouteModelRedirect();
          goto LABEL_16;
        }
      }

      sub_1D79A8AB4(v50);
    }
  }

  ArticleViewerBlueprintRouteArticle.routeURL.getter(v7);

  if ((*(v46 + 48))(v7, 1, v14) != 1)
  {
    v57 = *(v46 + 32);
    v58 = v70;
    v57(v70, v7, v14);
    v57(a1, v58, v14);
    v59 = type metadata accessor for ArticleRouteModelRedirect();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    (*(*(v59 - 8) + 56))(a1, 0, 1, v59);
    return sub_1D7ABCA3C(v35 + v44, type metadata accessor for ArticleNavigationAction);
  }

  sub_1D79A8AB4(v7);
  v56 = type metadata accessor for ArticleRouteModelRedirect();
  (*(*(v56 - 8) + 56))(a1, 1, 1, v56);
  return sub_1D7ABCA3C(v35 + v44, type metadata accessor for ArticleNavigationAction);
}

uint64_t ArticleRouteModel.canCreateViewControllerSynchronously(headlineAccessChecker:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v26 - v14);
  sub_1D7ABC9D4(v2, &v26 - v14, type metadata accessor for ArticleRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v15;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7998994(0, &qword_1EC9E5360, sub_1D7ABC970, type metadata accessor for ArticleRouteModel);
    v19 = v18;
    v20 = swift_projectBox();
    sub_1D7ABC9D4(v20 + *(v19 + 48), v11, type metadata accessor for ArticleRouteModel);
    v21 = ArticleRouteModel.canCreateViewControllerSynchronously(headlineAccessChecker:)(a1);
    sub_1D7ABCA3C(v11, type metadata accessor for ArticleRouteModel);
  }

  else
  {
    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    v23 = *(v22 + 48);
    sub_1D7ABC9D4(v17 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, v7, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D7ABCA3C(v7, type metadata accessor for ArticleViewerBlueprintRouteArticle);
      sub_1D7ABCA3C(v15 + v23, type metadata accessor for ArticleNavigationAction);
      v21 = 0;
    }

    else
    {
      v24 = *(v7 + 2);

      swift_unknownObjectRelease();

      v21 = [a1 canSynchronouslyCheckAccessToItem_];

      swift_unknownObjectRelease();
      sub_1D7ABCA3C(v15 + v23, type metadata accessor for ArticleNavigationAction);
    }
  }

  return v21 & 1;
}

uint64_t static ArticleRouteModel.article(_:articleNavigationAction:referringURL:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v39 = a4;
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = (&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[1];
  v46 = *a1;
  v47 = v26;
  v28 = a1[3];
  v48 = a1[2];
  v27 = v48;
  v49 = v28;
  *v25 = v46;
  v25[1] = v26;
  v25[2] = v27;
  v25[3] = v28;
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  swift_storeEnumTagMultiPayload();
  *(v25 + *(v22 + 28)) = MEMORY[0x1E69E7CC0];
  sub_1D7ABC9D4(v25, v20, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for ArticleViewerBlueprintProvider();
  v30 = swift_allocObject();
  sub_1D7ABC9D4(v20, v16, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7999010(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  sub_1D79F5B54(&v46, v45);
  v31 = sub_1D7D28ECC();
  sub_1D7ABCA3C(v20, type metadata accessor for ArticleViewerBlueprint);
  *(v30 + 16) = v31;
  v32 = v47;
  *v12 = v46;
  v12[1] = v32;
  v33 = v49;
  v12[2] = v48;
  v12[3] = v33;
  swift_storeEnumTagMultiPayload();
  sub_1D79A8A20(v40, v8);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v34 = swift_allocObject();
  v43 = v29;
  v44 = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v42 = v30;
  sub_1D79F5B54(&v46, v45);
  sub_1D7ABCA3C(v25, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  *(v34 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7ABC9D4(v12, v34 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79E14FC(&v42, v34 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v8, v34 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v34 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7ABDBE8(v12, v34 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v36 = *(v35 + 48);
  v37 = v39;
  *v39 = v34;
  sub_1D7ABC9D4(v41, v37 + v36, type metadata accessor for ArticleNavigationAction);
  type metadata accessor for ArticleRouteModel();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ArticleRouteModel.asyncArticle(_:articleNavigationAction:referringURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v21 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7ABC9D4(a1, v25, type metadata accessor for AsyncArticle);
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  swift_storeEnumTagMultiPayload();
  *&v25[*(v22 + 28)] = MEMORY[0x1E69E7CC0];
  sub_1D7ABC9D4(v25, v20, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for ArticleViewerBlueprintProvider();
  v27 = swift_allocObject();
  sub_1D7ABC9D4(v20, v16, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7999010(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  v28 = sub_1D7D28ECC();
  sub_1D7ABCA3C(v20, type metadata accessor for ArticleViewerBlueprint);
  *(v27 + 16) = v28;
  sub_1D7ABC9D4(a1, v12, type metadata accessor for AsyncArticle);
  swift_storeEnumTagMultiPayload();
  sub_1D79A8A20(v35, v8);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v29 = swift_allocObject();
  v39 = v26;
  v40 = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v38 = v27;
  sub_1D7ABCA3C(v25, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  *(v29 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7ABC9D4(v12, v29 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79E14FC(&v38, v29 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v8, v29 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v29 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7ABDBE8(v12, v29 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v31 = *(v30 + 48);
  v33 = v36;
  v32 = v37;
  *v36 = v29;
  sub_1D7ABC9D4(v32, v33 + v31, type metadata accessor for ArticleNavigationAction);
  type metadata accessor for ArticleRouteModel();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ArticleRouteModel.blueprint(_:articleNavigationAction:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  swift_allocObject();

  v5 = sub_1D7CA81CC(v4);

  sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_1D7ABC9D4(a1, a2 + v7, type metadata accessor for ArticleNavigationAction);
  type metadata accessor for ArticleRouteModel();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ArticleRouteModel.headline(_:articleNavigationAction:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  v55 = a2;
  v53 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v53, v4);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v50, v7);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v49 = &v49 - v24;
  v25 = [a1 identifier];
  v26 = sub_1D7D3034C();
  v28 = v27;

  v29 = [swift_unknownObjectRetain() identifier];
  v30 = sub_1D7D3034C();
  v32 = v31;

  *&v59 = v26;
  *(&v59 + 1) = v28;
  v60 = a1;
  v61 = 0uLL;
  *&v62 = v30;
  *(&v62 + 1) = v32;
  v33 = sub_1D7D2824C();
  v34 = v49;
  (*(*(v33 - 8) + 56))(v49, 1, 1, v33);
  v35 = v60;
  *v17 = v59;
  v17[1] = v35;
  v36 = v62;
  v17[2] = v61;
  v17[3] = v36;
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  swift_storeEnumTagMultiPayload();
  *(v17 + *(v14 + 28)) = MEMORY[0x1E69E7CC0];
  sub_1D7ABC9D4(v17, v12, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for ArticleViewerBlueprintProvider();
  v38 = swift_allocObject();
  sub_1D7ABC9D4(v12, v51, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7999010(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  sub_1D79F5B54(&v59, &v56);
  v39 = sub_1D7D28ECC();
  sub_1D7ABCA3C(v12, type metadata accessor for ArticleViewerBlueprint);
  *(v38 + 16) = v39;
  v40 = v60;
  *v6 = v59;
  v6[1] = v40;
  v41 = v62;
  v6[2] = v61;
  v6[3] = v41;
  swift_storeEnumTagMultiPayload();
  v42 = v52;
  sub_1D79A8A20(v34, v52);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v43 = swift_allocObject();
  v57 = v37;
  v58 = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v56 = v38;
  sub_1D7ABCA3C(v17, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  sub_1D79A8AB4(v34);
  *(v43 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7ABC9D4(v6, v43 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79E14FC(&v56, v43 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v42, v43 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v43 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7ABDBE8(v6, v43 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v45 = *(v44 + 48);
  v47 = v54;
  v46 = v55;
  *v54 = v43;
  sub_1D7ABC9D4(v46, v47 + v45, type metadata accessor for ArticleNavigationAction);
  type metadata accessor for ArticleRouteModel();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ArticleRouteModel.identifier(_:articleNavigationAction:referringURL:routeURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v45 = a4;
  v46 = a6;
  v47 = a3;
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v44 = &v43 - v11;
  v43 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v43, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79A8A20(a5, v31 + *(v32 + 36));
  *v31 = a1;
  v31[1] = a2;
  v31[2] = a1;
  v31[3] = a2;
  v31[4] = a1;
  v31[5] = a2;
  sub_1D7ABC9D4(v31, v27, type metadata accessor for AsyncArticle);
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  swift_storeEnumTagMultiPayload();
  *&v27[*(v24 + 28)] = MEMORY[0x1E69E7CC0];
  sub_1D7ABC9D4(v27, v22, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for ArticleViewerBlueprintProvider();
  v34 = swift_allocObject();
  sub_1D7ABC9D4(v22, v18, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7999010(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v35 = sub_1D7D28ECC();
  sub_1D7ABCA3C(v22, type metadata accessor for ArticleViewerBlueprint);
  *(v34 + 16) = v35;
  sub_1D7ABC9D4(v31, v14, type metadata accessor for AsyncArticle);
  swift_storeEnumTagMultiPayload();
  v36 = v44;
  sub_1D79A8A20(v45, v44);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v37 = swift_allocObject();
  v49 = v33;
  v50 = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v48 = v34;
  sub_1D7ABCA3C(v27, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  sub_1D7ABCA3C(v31, type metadata accessor for AsyncArticle);
  *(v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7ABC9D4(v14, v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79E14FC(&v48, v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v36, v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7ABDBE8(v14, v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v39 = *(v38 + 48);
  v41 = v46;
  v40 = v47;
  *v46 = v37;
  sub_1D7ABC9D4(v40, v41 + v39, type metadata accessor for ArticleNavigationAction);
  type metadata accessor for ArticleRouteModel();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ArticleRouteModel.identifiers(articleID:articleIDs:articleNavigationAction:referringURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v66 = a5;
  v11 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v67 = &v57 - v17;
  v65 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v65, v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v61, v21);
  v62 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v63 = (&v57 - v25);
  v26 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v30;
  v31 = *(v30 + 28);
  v32 = sub_1D7D2824C();
  v33 = *(v32 - 8);
  v69 = *(v33 + 56);
  v70 = v32;
  v68 = v33 + 56;
  v69(&v29[v31], 1, 1);
  *v29 = a1;
  *(v29 + 1) = a2;
  *(v29 + 2) = a1;
  *(v29 + 3) = a2;
  *(v29 + 4) = a1;
  *(v29 + 5) = a2;
  v64 = v29;
  sub_1D79A78D0(0, &qword_1EE0BE890, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v35 = *(a3 + 16);
  swift_bridgeObjectRetain_n();
  v36 = MEMORY[0x1E69E7CC0];
  *&v74 = sub_1D79A8020(0, v35 + 1, 0, MEMORY[0x1E69E7CC0]);

  sub_1D79A8198(v37);
  sub_1D79A8490(inited);
  sub_1D79A78D0(0, qword_1EE0BF240, MEMORY[0x1E69E62F8]);
  sub_1D79A8584();
  v38 = sub_1D7D3052C();

  v39 = *(v38 + 16);
  if (v39)
  {
    v58 = v20;
    v59 = a4;
    v60 = a6;
    *&v74 = v36;
    result = sub_1D79A8814(0, v39, 0);
    v41 = *(v38 + 16);
    v36 = v74;
    v42 = v41 - 1;
    v43 = (v38 + 16 * v41 + 24);
    while (v42 != -1)
    {
      if (v42 >= *(v38 + 16))
      {
        goto LABEL_12;
      }

      v44 = *(v43 - 1);
      v45 = *v43;
      (v69)(v14 + *(v71 + 28), 1, 1, v70);
      *v14 = v44;
      v14[1] = v45;
      v14[2] = v44;
      v14[3] = v45;
      v14[4] = v44;
      v14[5] = v45;
      type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
      swift_storeEnumTagMultiPayload();
      *(v14 + *(v73 + 20)) = MEMORY[0x1E69E7CC0];
      *&v74 = v36;
      v47 = *(v36 + 16);
      v46 = *(v36 + 24);
      swift_bridgeObjectRetain_n();
      if (v47 >= v46 >> 1)
      {
        sub_1D79A8814(v46 > 1, v47 + 1, 1);
        v36 = v74;
      }

      *(v36 + 16) = v47 + 1;
      result = sub_1D7ABDBE8(v14, v36 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v47, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      --v42;
      v43 -= 2;
      if (!--v39)
      {

        a6 = v60;
        a4 = v59;
        v20 = v58;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

LABEL_10:
    v48 = v63;
    *v63 = v36;
    swift_storeEnumTagMultiPayload();
    v49 = type metadata accessor for ArticleViewerBlueprintProvider();
    v50 = swift_allocObject();
    sub_1D7ABC9D4(v48, v62, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7999010(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
    swift_allocObject();
    v51 = sub_1D7D28ECC();
    sub_1D7ABCA3C(v48, type metadata accessor for ArticleViewerBlueprint);
    *(v50 + 16) = v51;
    v52 = v64;
    sub_1D7ABC9D4(v64, v20, type metadata accessor for AsyncArticle);
    swift_storeEnumTagMultiPayload();
    v53 = v67;
    sub_1D79A8A20(v66, v67);
    type metadata accessor for ArticleViewerBlueprintRouteModel();
    v54 = swift_allocObject();
    v75 = v49;
    v76 = &protocol witness table for ArticleViewerBlueprintProvider;
    *&v74 = v50;
    sub_1D7ABCA3C(v52, type metadata accessor for AsyncArticle);
    *(v54 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
    swift_unknownObjectWeakInit();
    sub_1D7ABC9D4(v20, v54 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    sub_1D79E14FC(&v74, v54 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
    sub_1D79A8B40(v53, v54 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
    *(v54 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
    swift_unknownObjectWeakAssign();
    sub_1D7ABDBE8(v20, v54 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
    v56 = *(v55 + 48);
    *a6 = v54;
    sub_1D7ABC9D4(a4, a6 + v56, type metadata accessor for ArticleNavigationAction);
    type metadata accessor for ArticleRouteModel();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t static ArticleRouteModel.identifiersAndHeadlines(articleID:articleIDs:headlines:articleNavigationAction:referringURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v71 = a5;
  v73 = a4;
  v74 = a6;
  v9 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v72 = v65 - v15;
  v67 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v67, v16);
  v68 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (v65 - v20);
  v22 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v70 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v69 = v65 - v27;
  sub_1D79A7A24(a3, a1, a2, (v65 - v27));
  sub_1D79A78D0(0, &qword_1EE0BE890, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7D3B4D0;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  *&v79 = v28;

  sub_1D79A8490(v29);
  sub_1D79A78D0(0, qword_1EE0BF240, MEMORY[0x1E69E62F8]);
  sub_1D79A8584();
  v30 = sub_1D7D3052C();

  v31 = *(v30 + 16);
  if (v31)
  {
    v66 = v21;
    *&v79 = MEMORY[0x1E69E7CC0];
    sub_1D79A8814(0, v31, 0);
    v32 = v79;
    v65[1] = v30;
    v33 = (v30 + 40);
    v75 = v9;
    do
    {
      v35 = *(v33 - 1);
      v34 = *v33;
      v36 = *(a3 + 16);

      if (v36 && (v37 = sub_1D7A18FFC(v35, v34), (v38 & 1) != 0))
      {
        v39 = *(*(a3 + 56) + 8 * v37);
        v40 = [swift_unknownObjectRetain_n() identifier];
        v41 = sub_1D7D3034C();
        v76 = v42;
        v77 = v41;

        v43 = [swift_unknownObjectRetain() identifier];
        v44 = a3;
        v45 = sub_1D7D3034C();
        v47 = v46;
        swift_unknownObjectRelease();

        v48 = v76;
        *v12 = v77;
        v12[1] = v48;
        v12[2] = v39;
        v12[3] = 0;
        v12[4] = 0;
        v12[5] = 0;
        v12[6] = v45;
        v12[7] = v47;
        a3 = v44;
        v9 = v75;
        type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
        swift_storeEnumTagMultiPayload();

        swift_unknownObjectRelease();
        *(v12 + *(v9 + 20)) = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v49 = *(type metadata accessor for AsyncArticle() + 28);
        v50 = sub_1D7D2824C();
        (*(*(v50 - 8) + 56))(v12 + v49, 1, 1, v50);
        *v12 = v35;
        v12[1] = v34;
        v12[2] = v35;
        v12[3] = v34;
        v12[4] = v35;
        v12[5] = v34;
        type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
        swift_storeEnumTagMultiPayload();
        *(v12 + *(v9 + 20)) = MEMORY[0x1E69E7CC0];
        swift_bridgeObjectRetain_n();
      }

      *&v79 = v32;
      v52 = *(v32 + 16);
      v51 = *(v32 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D79A8814(v51 > 1, v52 + 1, 1);
        v32 = v79;
      }

      *(v32 + 16) = v52 + 1;
      sub_1D7ABDBE8(v12, v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v52, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      v33 += 2;
      --v31;
    }

    while (v31);

    v21 = v66;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  *v21 = v32;
  swift_storeEnumTagMultiPayload();
  v53 = type metadata accessor for ArticleViewerBlueprintProvider();
  v54 = swift_allocObject();
  sub_1D7ABC9D4(v21, v68, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7999010(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  v55 = sub_1D7D28ECC();
  sub_1D7ABCA3C(v21, type metadata accessor for ArticleViewerBlueprint);
  *(v54 + 16) = v55;
  v57 = v69;
  v56 = v70;
  sub_1D7ABC9D4(v69, v70, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  v58 = v72;
  sub_1D79A8A20(v71, v72);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v59 = swift_allocObject();
  v80 = v53;
  v81 = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v79 = v54;
  sub_1D7ABCA3C(v57, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  *(v59 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7ABC9D4(v56, v59 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79E14FC(&v79, v59 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v58, v59 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v59 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7ABDBE8(v56, v59 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7998994(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v61 = *(v60 + 48);
  v62 = v73;
  v63 = v74;
  *v74 = v59;
  sub_1D7ABC9D4(v62, v63 + v61, type metadata accessor for ArticleNavigationAction);
  type metadata accessor for ArticleRouteModel();
  return swift_storeEnumTagMultiPayload();
}

uint64_t EndOfArticleBlueprintViewCellProvider.cell(for:with:in:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v31 = a1;
  sub_1D7A2AFB8();
  v30 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = sub_1D7D2E65C();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2E8FC();
  v29 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndOfArticleLayoutModel();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A5FC40();
  sub_1D7D2ABBC();
  (*(v14 + 32))(v17, v21, v13);
  v28[2] = *(v4 + 40);
  v28[1] = swift_getObjectType();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = v30;
  (*(v6 + 16))(v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v30);
  v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v6 + 32))(v25 + v24, v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23);

  sub_1D7D2E4AC();

  v26 = sub_1D7D2E64C();
  (*(v32 + 8))(v12, v33);
  (*(v14 + 8))(v17, v29);
  return v26;
}

uint64_t sub_1D7AC12E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7AC1328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D7D2B54C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2EC1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2DFCC();
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69B5F88])
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v10 + 96))(v13, v9);
  v14 = sub_1D7D2EF1C();
  v15 = *(v14 - 8);
  if ((*(v15 + 88))(v13, v14) != *MEMORY[0x1E69B60A8])
  {
    return (*(v15 + 8))(v13, v14);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = *(Strong + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler);
      sub_1D7D2B53C();
      v19 = *(v18 + 40);
      ObjectType = swift_getObjectType();
      (*(v19 + 104))(a3, 1, v8, ObjectType, v19);

      (*(v5 + 8))(v8, v4);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7AC1604(uint64_t a1)
{
  sub_1D7A2AFB8();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_1D7AC1328(a1, v4, v5);
}

uint64_t EndOfArticleBlueprintViewCellProvider.deinit()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EndOfArticleBlueprintViewCellProvider.__deallocating_deinit()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AC17B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = EndOfArticleBlueprintViewCellProvider.cell(for:with:in:at:)(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1D7AC1824@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_1D7AC18B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7D2928C();
    sub_1D7AC1938(v2);
  }
}

void sub_1D7AC1938(void *a1)
{
  v2 = [a1 playCommand];
  sub_1D7D28EDC();
  sub_1D7D28EDC();
  [v2 setEnabled_];

  v3 = [a1 pauseCommand];
  sub_1D7D28EDC();
  sub_1D7D28EDC();
  [v3 setEnabled_];

  v4 = [a1 stopCommand];
  sub_1D7D28EDC();
  [v4 setEnabled_];

  v5 = [a1 togglePlayPauseCommand];
  sub_1D7D28EDC();
  [v5 setEnabled_];

  v6 = [a1 previousTrackCommand];
  sub_1D7D28EDC();
  [v6 setEnabled_];

  v7 = [a1 changeRepeatModeCommand];
  sub_1D7D28EDC();
  [v7 setEnabled_];

  v8 = [a1 changeShuffleModeCommand];
  sub_1D7D28EDC();
  [v8 setEnabled_];

  v9 = [a1 changePlaybackRateCommand];
  sub_1D7D28EDC();
  [v9 setEnabled_];

  v10 = [a1 seekBackwardCommand];
  sub_1D7D28EDC();
  [v10 setEnabled_];

  v11 = [a1 seekForwardCommand];
  sub_1D7D28EDC();
  [v11 setEnabled_];

  v12 = [a1 skipBackwardCommand];
  sub_1D7D28EDC();
  [v12 setEnabled_];

  v13 = [a1 changePlaybackPositionCommand];
  sub_1D7D28EDC();
  [v13 setEnabled_];

  v14 = [a1 ratingCommand];
  sub_1D7D28EDC();
  [v14 setEnabled_];

  v15 = [a1 likeCommand];
  sub_1D7D28EDC();
  [v15 setEnabled_];

  v16 = [a1 dislikeCommand];
  sub_1D7D28EDC();
  [v16 setEnabled_];

  v17 = [a1 bookmarkCommand];
  sub_1D7D28EDC();
  [v17 setEnabled_];

  v18 = [a1 enableLanguageOptionCommand];
  sub_1D7D28EDC();
  [v18 setEnabled_];

  v19 = [a1 disableLanguageOptionCommand];
  sub_1D7D28EDC();
  [v19 setEnabled_];

  sub_1D7D28EDC();
  if ((v27 & 1) == 0)
  {
    v20 = [a1 changePlaybackRateCommand];
    LODWORD(v21) = v26;
    [v20 setPreferredRate_];
  }
}

void sub_1D7AC1DF0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D7AC1E54(v1);
  }
}

uint64_t sub_1D7AC1E54(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E63B0];
  sub_1D7AC4F4C(0, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v109 = &v95 - v7;
  v8 = MEMORY[0x1E69B62F0];
  sub_1D7AC508C(0, &qword_1EE0BF670, v4, MEMORY[0x1E69B62F0]);
  v119 = v9;
  v108 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v118 = &v95 - v11;
  v12 = MEMORY[0x1E69E7CA8];
  sub_1D7AC4F4C(0, &qword_1EE0BF658, &qword_1EE0BF660, MEMORY[0x1E69E7CA8] + 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v107 = &v95 - v15;
  v116 = sub_1D7D2EEEC();
  v16 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v17);
  v112 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1D7D2F1AC();
  v120 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v19);
  v111 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D7D2F68C();
  v121 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v21);
  v110 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AC508C(0, &qword_1EE0BF660, v12 + 8, v8);
  v24 = *(v23 - 8);
  v113 = v23;
  v114 = v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v115 = &v95 - v27;
  v28 = [a1 playCommand];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC4FB8;
  v126 = v29;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_11;
  v30 = _Block_copy(&aBlock);

  v31 = [v28 addTargetWithHandler_];
  _Block_release(v30);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v32 = [a1 pauseCommand];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC5000;
  v126 = v33;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_21;
  v34 = _Block_copy(&aBlock);

  v35 = [v32 addTargetWithHandler_];
  _Block_release(v34);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *&v95 = a1;
  v36 = [a1 togglePlayPauseCommand];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC5030;
  v126 = v37;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_25;
  v38 = _Block_copy(&aBlock);

  v39 = [v36 addTargetWithHandler_];
  _Block_release(v38);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v40 = [a1 nextTrackCommand];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC5038;
  v126 = v41;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_29;
  v42 = _Block_copy(&aBlock);

  v43 = [v40 addTargetWithHandler_];
  _Block_release(v42);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v104 = *MEMORY[0x1E69B63A8];
  v44 = *(v121 + 104);
  v121 += 104;
  v106 = v44;
  v44(v110);
  v102 = *MEMORY[0x1E69B6178];
  v45 = *(v120 + 104);
  v120 += 104;
  v103 = v45;
  v45(v111);
  aBlock = 0u;
  v124 = 0u;
  v101 = *MEMORY[0x1E69B6058];
  v46 = *(v16 + 104);
  v99 = v16 + 104;
  v100 = v46;
  v46(v112);
  v47 = MEMORY[0x1E69E7CA8];
  v48 = v115;
  sub_1D7D2F4AC();
  v49 = *(v2 + OBJC_IVAR____TtC12NewsArticles31AudioRemoteCommandCenterManager_commandCenter);
  v98 = *(v2 + OBJC_IVAR____TtC12NewsArticles31AudioRemoteCommandCenterManager_commandCenter + 8);
  v97 = v49;
  ObjectType = swift_getObjectType();
  sub_1D7D2C42C();
  v50 = v114;
  v51 = v107;
  v52 = v48;
  v53 = v113;
  (*(v114 + 16))(v107, v52, v113);
  (*(v50 + 56))(v51, 0, 1, v53);
  v54 = swift_allocObject();
  v55 = v95;
  *(v54 + 16) = v95;
  v56 = v55;
  sub_1D7D2A7BC();

  sub_1D7AC5160(v51, &qword_1EE0BF658, &qword_1EE0BF660, v47 + 8);
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v124 + 1));
  sub_1D7D28AEC();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v57 = [v56 skipBackwardCommand];
  sub_1D7AC508C(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v107 = v58;
  v59 = swift_allocObject();
  v95 = xmmword_1D7D3C670;
  *(v59 + 16) = xmmword_1D7D3C670;
  sub_1D7992EFC(0, &qword_1EE0BECA0);
  *(v59 + 32) = sub_1D7D311BC();
  v60 = sub_1D7D3062C();

  [v57 setPreferredIntervals_];

  v61 = v56;
  v62 = [v56 skipBackwardCommand];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC50DC;
  v126 = v63;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_36;
  v64 = _Block_copy(&aBlock);

  v65 = [v62 addTargetWithHandler_];
  _Block_release(v64);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v66 = [v56 skipForwardCommand];
  v67 = swift_allocObject();
  *(v67 + 16) = v95;
  *(v67 + 32) = sub_1D7D311BC();
  v68 = sub_1D7D3062C();

  [v66 setPreferredIntervals_];

  v69 = [v56 skipForwardCommand];
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC510C;
  v126 = v70;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_40;
  v71 = _Block_copy(&aBlock);

  v72 = [v69 addTargetWithHandler_];
  _Block_release(v71);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v122 = 0x402E000000000000;
  v106(v110, v104, v105);
  v103(v111, v102, v117);
  aBlock = 0u;
  v124 = 0u;
  v100(v112, v101, v116);
  v73 = v118;
  v74 = MEMORY[0x1E69E63B0];
  sub_1D7D2F4AC();
  sub_1D7D2C38C();
  v75 = v108;
  v76 = v109;
  v77 = v73;
  v78 = v119;
  (*(v108 + 16))(v109, v77, v119);
  v79 = v75;
  (*(v75 + 56))(v76, 0, 1, v78);
  *(swift_allocObject() + 16) = v61;
  v80 = v61;
  sub_1D7D2A7BC();

  sub_1D7AC5160(v76, &qword_1EE0BF668, &qword_1EE0BF670, v74);
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v124 + 1));
  sub_1D7D28AEC();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v81 = [v80 changePlaybackPositionCommand];
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC51BC;
  v126 = v82;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_47;
  v83 = _Block_copy(&aBlock);

  v84 = [v81 addTargetWithHandler_];
  _Block_release(v83);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v85 = [v80 changePlaybackRateCommand];
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1D7D49E90;
  *(v86 + 32) = sub_1D7D311BC();
  *(v86 + 40) = sub_1D7D311BC();
  *(v86 + 48) = sub_1D7D311BC();
  *(v86 + 56) = sub_1D7D311BC();
  *(v86 + 64) = sub_1D7D311BC();
  *(v86 + 72) = sub_1D7D311BC();
  v87 = sub_1D7D3062C();

  [v85 setSupportedPlaybackRates_];

  v88 = [v80 changePlaybackRateCommand];
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = sub_1D7AC51C4;
  v126 = v89;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1D7AC3000;
  *(&v124 + 1) = &block_descriptor_51;
  v90 = _Block_copy(&aBlock);

  v91 = [v88 addTargetWithHandler_];
  _Block_release(v90);

  sub_1D7D3138C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v92 = [v80 changePlaybackRateCommand];
  LODWORD(v93) = 1.0;
  [v92 setPreferredRate_];

  (*(v79 + 8))(v118, v119);
  return (*(v114 + 8))(v115, v113);
}

uint64_t sub_1D7AC3000(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1D7AC3058(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v34 = a3;
  v37 = a2;
  v3 = MEMORY[0x1E69E7CA8];
  sub_1D7AC4F4C(0, &qword_1EE0BF658, &qword_1EE0BF660, MEMORY[0x1E69E7CA8] + 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v35 = &v34 - v6;
  v36 = sub_1D7D2EEEC();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2F1AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2F68C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AC508C(0, &qword_1EE0BF660, v3 + 8, MEMORY[0x1E69B62F0]);
  v38 = v21;
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v34 - v25;
  (*(v17 + 104))(v20, *MEMORY[0x1E69B63A8], v16, v24);
  v27 = v11;
  v28 = MEMORY[0x1E69E7CA8];
  (*(v12 + 104))(v15, *MEMORY[0x1E69B6178], v27);
  v39 = 0u;
  v40 = 0u;
  (*(v7 + 104))(v10, *MEMORY[0x1E69B6058], v36);
  sub_1D7D2F4AC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    swift_unknownObjectRetain();

    swift_getObjectType();
    v34();
    v31 = v35;
    v32 = v38;
    (*(v22 + 16))(v35, v26, v38);
    (*(v22 + 56))(v31, 0, 1, v32);
    sub_1D7D2A7EC();
    swift_unknownObjectRelease();

    sub_1D7AC5160(v31, &qword_1EE0BF658, &qword_1EE0BF660, v28 + 8);
    (*(v22 + 8))(v26, v32);
  }

  else
  {
    (*(v22 + 8))(v26, v38);
  }

  return 0;
}

uint64_t sub_1D7AC350C()
{
  v0 = MEMORY[0x1E69E7CA8];
  sub_1D7AC4F4C(0, &qword_1EE0BF658, &qword_1EE0BF660, MEMORY[0x1E69E7CA8] + 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v32 = v27 - v3;
  v31 = sub_1D7D2EEEC();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v4);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D7D2F1AC();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2F68C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AC508C(0, &qword_1EE0BF660, v0 + 8, MEMORY[0x1E69B62F0]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v27 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v22 = Strong;
  sub_1D7D28EDC();
  if (v33 == 1)
  {
    v23 = sub_1D7D2C3DC();
  }

  else
  {
    v23 = sub_1D7D2C3CC();
  }

  v27[1] = v23;
  (*(v11 + 104))(v14, *MEMORY[0x1E69B63A8], v10);
  (*(v6 + 104))(v9, *MEMORY[0x1E69B6178], v28);
  v33 = 0u;
  v34 = 0u;
  (*(v29 + 104))(v30, *MEMORY[0x1E69B6058], v31);
  v25 = MEMORY[0x1E69E7CA8];
  sub_1D7D2F4AC();
  swift_getObjectType();
  v26 = v32;
  (*(v17 + 16))(v32, v20, v16);
  (*(v17 + 56))(v26, 0, 1, v16);
  sub_1D7D2A7EC();

  sub_1D7AC5160(v26, &qword_1EE0BF658, &qword_1EE0BF660, v25 + 8);
  (*(v17 + 8))(v20, v16);

  return 0;
}

uint64_t sub_1D7AC39C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v32 = a3;
  v35 = a2;
  v3 = MEMORY[0x1E69E63B0];
  sub_1D7AC4F4C(0, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v33 = &v32 - v6;
  v34 = sub_1D7D2EEEC();
  v7 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2F1AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2F68C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AC508C(0, &qword_1EE0BF670, v3, MEMORY[0x1E69B62F0]);
  v36 = v21;
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v32 - v25;
  v39 = 0x402E000000000000;
  (*(v17 + 104))(v20, *MEMORY[0x1E69B63A8], v16, v24);
  (*(v12 + 104))(v15, *MEMORY[0x1E69B6178], v11);
  v37 = 0u;
  v38 = 0u;
  (*(v7 + 104))(v10, *MEMORY[0x1E69B6058], v34);
  sub_1D7D2F4AC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    swift_unknownObjectRetain();

    swift_getObjectType();
    v32();
    v29 = v33;
    v30 = v36;
    (*(v22 + 16))(v33, v26, v36);
    (*(v22 + 56))(v29, 0, 1, v30);
    sub_1D7D2A7EC();
    swift_unknownObjectRelease();

    sub_1D7AC5160(v29, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0]);
    (*(v22 + 8))(v26, v30);
  }

  else
  {
    (*(v22 + 8))(v26, v36);
  }

  return 0;
}

void sub_1D7AC3E80(char a1, id a2, SEL *a3)
{
  v4 = [a2 *a3];
  [v4 setEnabled_];
}

uint64_t sub_1D7AC3EE8(void *a1, uint64_t a2)
{
  v54 = a2;
  v3 = MEMORY[0x1E69E63B0];
  sub_1D7AC4F4C(0, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - v6;
  v53 = sub_1D7D2EEEC();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2F1AC();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D7D2F68C();
  v14 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AC508C(0, &qword_1EE0BF670, v3, MEMORY[0x1E69B62F0]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v42 - v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  v25 = qword_1EE0C05E0;
  if (v24)
  {
    v26 = v24;
    v45 = v23;
    v46 = v20;
    v47 = v19;
    v43 = v7;
    v44 = a1;
    if (v25 != -1)
    {
      swift_once();
    }

    sub_1D7D30C6C();
    sub_1D79A4064(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7D3B4D0;
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    [v26 positionTime];
    sub_1D7D3093C();
    v28 = v55;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D79D6AE0();
    *(v27 + 32) = v28;
    sub_1D7D29AAC();

    [v26 positionTime];
    v57 = v29;
    (*(v14 + 104))(v17, *MEMORY[0x1E69B63A8], v48);
    (*(v49 + 104))(v13, *MEMORY[0x1E69B6178], v50);
    v55 = 0u;
    v56 = 0u;
    (*(v51 + 104))(v52, *MEMORY[0x1E69B6058], v53);
    v30 = v45;
    sub_1D7D2F4AC();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_1D7D2C3BC();
      v34 = v46;
      v33 = v47;
      v35 = v43;
      (*(v46 + 16))(v43, v30, v47);
      (*(v34 + 56))(v35, 0, 1, v33);
      sub_1D7D2A7EC();
      swift_unknownObjectRelease();

      sub_1D7AC5160(v35, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0]);
      (*(v34 + 8))(v30, v33);
    }

    else
    {

      (*(v46 + 8))(v30, v47);
    }

    return 0;
  }

  else
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79A4064(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D7D3B4D0;
    v37 = [a1 description];
    v38 = sub_1D7D3034C();
    v40 = v39;

    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1D79D6AE0();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_1D7D29AAC();

    return 200;
  }
}

uint64_t sub_1D7AC4618(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = MEMORY[0x1E69E7CA8];
  sub_1D7AC4F4C(0, &qword_1EE0BF658, &qword_1EE0BF660, MEMORY[0x1E69E7CA8] + 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - v6;
  v46 = sub_1D7D2EEEC();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D7D2F1AC();
  v10 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2F68C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AC508C(0, &qword_1EE0BF660, v3 + 8, MEMORY[0x1E69B62F0]);
  v49 = *(v19 - 8);
  v50 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v48 = &v40 - v21;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v23 = qword_1EE0C05E0;
  if (v22)
  {
    v24 = v22;
    v41 = v7;
    v42 = a1;
    if (v23 != -1)
    {
      swift_once();
    }

    sub_1D7D30C6C();
    sub_1D79A4064(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7D3B4D0;
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    [v24 playbackRate];
    sub_1D7D3098C();
    v26 = v51;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1D79D6AE0();
    *(v25 + 32) = v26;
    sub_1D7D29AAC();

    (*(v15 + 104))(v18, *MEMORY[0x1E69B63A8], v14);
    (*(v10 + 104))(v13, *MEMORY[0x1E69B6178], v43);
    v51 = 0u;
    v52 = 0u;
    (*(v44 + 104))(v45, *MEMORY[0x1E69B6058], v46);
    v27 = MEMORY[0x1E69E7CA8];
    v28 = v48;
    sub_1D7D2F4AC();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_1D7D2C3AC();
      v32 = v49;
      v31 = v50;
      v33 = v41;
      (*(v49 + 16))(v41, v28, v50);
      (*(v32 + 56))(v33, 0, 1, v31);
      sub_1D7D2A7EC();
      swift_unknownObjectRelease();

      sub_1D7AC5160(v33, &qword_1EE0BF658, &qword_1EE0BF660, v27 + 8);
      (*(v32 + 8))(v28, v31);
    }

    else
    {

      (*(v49 + 8))(v28, v50);
    }

    return 0;
  }

  else
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79A4064(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7D3B4D0;
    v35 = [a1 description];
    v36 = sub_1D7D3034C();
    v38 = v37;

    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = sub_1D79D6AE0();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    sub_1D7D29AAC();

    return 200;
  }
}

id AudioRemoteCommandCenterManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioRemoteCommandCenterManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for AudioRemoteCommandCenterManager.PlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioRemoteCommandCenterManager.PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1D7AC4F4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D7AC508C(255, a3, a4, MEMORY[0x1E69B62F0]);
    v5 = sub_1D7D3130C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7AC508C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7AC5160(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7AC4F4C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7AC5204@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998DF0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v27 - v16;
  if ([a1 contentType] == 1)
  {
    v18 = [a1 contentURL];
    if (v18)
    {
      v19 = v18;
      sub_1D7D281EC();

      (*(v5 + 56))(v17, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v17, 1, 1, v4);
    }

    v12 = v17;
  }

  else
  {
    v20 = [a1 articleID];
    if (!v20)
    {
      sub_1D7D3034C();
      v20 = sub_1D7D3031C();
    }

    v21 = [a1 routeURL];
    if (v21)
    {
      v22 = v21;
      sub_1D7D281EC();

      v23 = sub_1D7D281BC();
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v23 = 0;
    }

    v24 = [objc_opt_self() nss:v20 NewsURLForArticleID:v23 routeURL:?];

    if (v24)
    {
      sub_1D7D281EC();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v5 + 56))(v12, v25, 1, v4);
  }

  return sub_1D79A8B40(v12, a2);
}

uint64_t sub_1D7AC54DC(void *a1)
{
  sub_1D7998DF0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15 - v8;
  sub_1D7AC5204(a1, &v15 - v8);
  v10 = [objc_opt_self() generalPasteboard];
  sub_1D79A8A20(v9, v5);
  v11 = sub_1D7D2824C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1D7AC5AD4(v5, sub_1D7998DF0);
    v13 = 0;
  }

  else
  {
    sub_1D7D2818C();
    (*(v12 + 8))(v5, v11);
    v13 = sub_1D7D3031C();
  }

  [v10 setString_];

  return sub_1D7AC5AD4(v9, sub_1D7998DF0);
}

uint64_t sub_1D7AC56AC(void *a1)
{
  result = [a1 sourceChannel];
  if (result)
  {
    v4 = result;
    v5 = *(v1 + 24);
    v6 = [v5 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v7 = [v4 asSection];
      if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {
      v8 = [v4 identifier];
    }

    v9 = sub_1D7D3034C();
    v11 = v10;

    v12 = [v6 purchasedTagIDs];
    v13 = sub_1D7D309AC();

    LOBYTE(v9) = sub_1D7D053C8(v9, v11, v13);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_31;
    }

LABEL_8:
    v14 = [objc_msgSend(v5 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v14, v14 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v15 = v24;
        v16 = [v24 integerValue];
        if (v16 == -1)
        {

          goto LABEL_28;
        }

        v17 = v16;
LABEL_17:
        if (objc_getAssociatedObject(v14, ~v17))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27 = v25;
        v28 = v26;
        if (*(&v26 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v18 = v24;
            v19 = [v18 integerValue];

            if (((v19 ^ v17) & 1) == 0)
            {
LABEL_32:
              v23 = [a1 isPaid];
              swift_unknownObjectRelease();
              return v23 ^ 1;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_1D7AC5AD4(&v27, sub_1D79F0070);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_28:
        v20 = [objc_msgSend(v5 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v21 = [v4 identifier];
        if (!v21)
        {
          sub_1D7D3034C();
          v21 = sub_1D7D3031C();
        }

        v22 = [v20 containsTagID_];

        if ((v22 & 1) == 0)
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
      sub_1D7AC5AD4(&v27, sub_1D79F0070);
    }

    v15 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1D7AC5AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7AC5B4C(void *a1)
{
  v1 = [a1 userInfo];
  v2 = sub_1D7D3028C();

  if (*(v2 + 16) && (v3 = sub_1D7A18FFC(0xD00000000000001DLL, 0x80000001D7D6F8A0), (v4 & 1) != 0))
  {
    sub_1D79FBED0(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D7AC5C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v9, a1, v6);
  v10 = sub_1D7D3192C();
  if (v10)
  {
    v11 = v10;
    (*(v5 + 8))(v8, a1);
  }

  else
  {
    v11 = swift_allocError();
    (*(v5 + 32))(v12, v8, a1);
  }

  v13 = sub_1D7D2814C();

  v14 = a3(v13);
  return v14 & 1;
}

uint64_t sub_1D7AC5DA4(void *a1)
{
  v1 = [a1 userInfo];
  v2 = sub_1D7D3028C();

  if (*(v2 + 16) && (v3 = sub_1D7A18FFC(0xD000000000000026, 0x80000001D7D6F8C0), (v4 & 1) != 0))
  {
    sub_1D79FBED0(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D7AC5E84(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AC5F00();
  result = sub_1D7D28D2C();
  if (v4)
  {
    sub_1D798F2FC();
    v3 = objc_allocWithZone(v2);
    return sub_1D7D2F0FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7AC5F00()
{
  result = qword_1EE0BF6E0;
  if (!qword_1EE0BF6E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF6E0);
  }

  return result;
}

void sub_1D7AC5F68(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1D7D2B49C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AC643C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[4];
  v45 = sub_1D7D27D3C();
  v46 = v15;
  v16 = *(v14 + 16);
  v42 = sub_1D7AC6494;
  v43 = &v44;
  os_unfair_lock_lock(v16 + 6);
  sub_1D7AC649C(v47);
  os_unfair_lock_unlock(v16 + 6);

  v17 = v47[0];
  if (v47[0])
  {
    v18 = v2[3];
    v40 = v2[2];
    v41 = v18;
    ObjectType = swift_getObjectType();
    v38 = sub_1D7D2C4BC();
    sub_1D7A4AC40();
    v20 = *(v19 + 48);
    *v13 = v17;
    v21 = *MEMORY[0x1E69B6358];
    v22 = sub_1D7D2F51C();
    (*(*(v22 - 8) + 104))(&v13[v20], v21, v22);
    v23 = *MEMORY[0x1E69B6320];
    v24 = sub_1D7D2F4FC();
    v25 = *(v24 - 8);
    v37 = 0;
    v26 = a2;
    v27 = v25;
    (*(v25 + 104))(v13, v23, v24);
    (*(v27 + 56))(v13, 0, 1, v24);
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7FB8], v5);
    v28 = v3[5];
    v47[3] = sub_1D7D28A3C();
    v47[4] = sub_1D7A108E4();
    v47[0] = v28;
    v48 = 0u;
    v49 = 0u;
    v50 = 1;
    sub_1D7D2B10C();
    swift_allocObject();
    v29 = v17;

    v30 = v26;
    sub_1D7D2B0EC();
    v31 = v37;
    sub_1D7D2A78C();
    if (v31)
    {

      sub_1D7AC64B8(v13);
    }

    else
    {
      sub_1D7AC64B8(v13);
    }
  }

  else
  {
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D7D29AFC();
    __swift_project_value_buffer(v32, qword_1EE0DE460);
    v33 = sub_1D7D29ADC();
    v34 = sub_1D7D30C4C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D7987000, v33, v34, "Failed to lookup recipe when sharing from recipe card", v35, 2u);
      MEMORY[0x1DA7102E0](v35, -1, -1);
    }
  }
}

uint64_t sub_1D7AC63AC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7AC643C()
{
  if (!qword_1EE0BF650)
  {
    sub_1D7D2F4FC();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF650);
    }
  }
}

uint64_t sub_1D7AC64B8(uint64_t a1)
{
  sub_1D7AC643C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7AC6514()
{
  sub_1D7D301EC();
  sub_1D7D301BC();
  sub_1D7D2A5BC();
  swift_allocObject();
  result = sub_1D7D2A5AC();
  qword_1EC9E3D60 = result;
  return result;
}

uint64_t sub_1D7AC658C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x60);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7AC6604(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t NowPlayingViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_1D7ACFC90(a1, a2);

  return swift_unknownObjectRelease();
}

void (*NowPlayingViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D79D82E8;
}

uint64_t NowPlayingViewController.dockPresentationMode.getter()
{
  sub_1D7ACFD10();
}

uint64_t NowPlayingViewController.dockPresentationMode.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D7AC6900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v16 - v10;
  v12 = *(v8 + 48);
  if (v12(v9) != 1)
  {
    sub_1D7D2A4EC();
    v5 = *v4 & *v3;
  }

  v13 = *(v5 + 176);
  swift_beginAccess();
  result = (v12)(&v3[v13], 1, v7);
  if (!result)
  {
    (*(v8 + 16))(v11, &v3[v13], v7);
    v15 = (*(*(v6 + 88) + 16))(v7);
    (*(v8 + 8))(v11, v7);
    sub_1D7AC6AF0(v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7AC6AF0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v21 = *MEMORY[0x1E69E7D40] & *v1;
  v18 = sub_1D7D2F73C();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2C45C();
  swift_unknownObjectRetain();
  sub_1D7D2F72C();
  v8 = *(v1 + *((*v3 & *v1) + 0x88));
  v9 = sub_1D7D28A3C();
  v23 = v9;
  v10 = sub_1D7AD3358(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v24 = v10;
  v22[0] = v8;
  swift_retain_n();
  sub_1D7D2A4BC();

  v11 = *(v4 + 8);
  v17 = v4 + 8;
  v12 = v18;
  v11(v7, v18);
  sub_1D7AD35D8(v22, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
  sub_1D7D2C46C();
  swift_unknownObjectRetain();
  v19 = a1;
  sub_1D7D2F72C();
  v23 = v9;
  v24 = v10;
  v20 = v9;
  v22[0] = v8;
  sub_1D7D2A4BC();

  v11(v7, v12);
  sub_1D7AD35D8(v22, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
  if (qword_1EE0BB218 != -1)
  {
    swift_once();
  }

  v23 = v20;
  v24 = v10;
  v22[0] = v8;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v15 = v21;
  v14[2] = *(v21 + 80);
  v14[3] = *(v15 + 88);
  v14[4] = v13;
  v14[5] = v19;
  swift_unknownObjectRetain();

  sub_1D7D2A4CC();

  return sub_1D7AD35D8(v22, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
}

id sub_1D7AC6E88()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    Width = CGRectGetWidth(v14);

    return [v1 artworkSizeForViewWidth_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7AC6F50()
{
  v0 = sub_1D7D2EEEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2F1AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2F68C();
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v17 = 0x402E000000000000;
  (*(v14 + 104))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69B63A0], v12);
  (*(v6 + 104))(v9, *MEMORY[0x1E69B6178], v5);
  memset(v16, 0, sizeof(v16));
  (*(v1 + 104))(v4, *MEMORY[0x1E69B6058], v0);
  return sub_1D7D2F4AC();
}

void *NowPlayingViewController.__allocating_init(tracker:playbackState:publisherImageCache:nowPlayingImageCache:miniPlayerBackground:largePlayerBackground:menuFactory:commandContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, _UNKNOWN **a8, uint64_t a9, uint64_t a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = sub_1D7ACFEEC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);

  return v19;
}

void *NowPlayingViewController.init(tracker:playbackState:publisherImageCache:nowPlayingImageCache:miniPlayerBackground:largePlayerBackground:menuFactory:commandContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, _UNKNOWN **a8, uint64_t a9, uint64_t a10)
{
  v12 = sub_1D7ACFEEC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);

  return v12;
}

void sub_1D7AC7290(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8));
  [v7 setContextMenuInteractionEnabled_];
  [v7 setShowsMenuAsPrimaryAction_];
  sub_1D7992EFC(0, &qword_1EE0BED30);
  v8 = sub_1D7D3106C();
  [v7 setMenu_];

  sub_1D7992EFC(0, &qword_1EE0BAF70);
  v9 = *(v2 + *((*v5 & *v2) + 0x90));
  sub_1D799CC84(a1, v24);
  v10 = swift_allocObject();
  v11 = *((v6 & v4) + 0x58);
  v10[2] = v11;
  v10[3] = v9;
  v10[4] = v7;
  sub_1D799D69C(v24, (v10 + 5));

  v12 = v7;
  v22 = v10;
  v13 = sub_1D7D311EC();
  [v12 addAction:v13 forControlEvents:{0x4000, 0, 0, 0, sub_1D7AD3878, v22}];

  v14 = *(v2 + *((*v5 & *v2) + 0x78));
  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  [v12 setChangesDisplayWhenHighlighted_];
  v17 = [*(v2 + *((*v5 & *v2) + 0x70)) ellipsisButton];
  [v17 setShowsMenuAsPrimaryAction_];
  [v17 setContextMenuInteractionEnabled_];

  v18 = sub_1D7D3106C();
  [v17 setMenu_];

  sub_1D799CC84(a1, v24);
  v19 = swift_allocObject();
  v19[2] = v11;
  v19[3] = v9;
  v19[4] = v17;
  sub_1D799D69C(v24, (v19 + 5));

  v20 = v17;
  v23 = v19;
  v21 = sub_1D7D311EC();
  [v20 addAction:v21 forControlEvents:{0x4000, 0, 0, 0, sub_1D7AD383C, v23}];
}

void sub_1D7AC7620(char a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x70));

    [v9 *a5];
  }
}

uint64_t sub_1D7AC76C4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & v4) + 0x50);
  v7 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v111 = v101 - v9;
  v119 = v7;
  v118 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v114 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v106 = v101 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v121 = v101 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v115 = v101 - v21;
  v122 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v105 = v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v117 = v101 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v109 = v101 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v110 = v101 - v33;
  v108 = *((v5 & v4) + 0x58);
  v34 = *(v108 + 8);
  v120 = v6;
  v113 = v34;
  v35 = type metadata accessor for AudioPlaybackState();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = v101 - v38;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C3C();
  sub_1D7AD2BD0(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D7D3B4D0;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1D7D3193C();
  v41 = v123;
  v42 = v124;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1D79D6AE0();
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  sub_1D7D29AAC();

  (*(v36 + 16))(v39, a1, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v116 = v2;
  if (EnumCaseMultiPayload)
  {
    v45 = v122;
    v46 = v120;
    if (EnumCaseMultiPayload == 1)
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v48 = *&v39[*(TupleTypeMetadata3 + 48)];
      v49 = v39[*(TupleTypeMetadata3 + 64)];
      v50 = v109;
      (*(v45 + 32))(v109, v39, v46);
      v51 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70));
      [v51 setCurrentTime:0 duration:1 rate:v48 isWaiting:(*(v113 + 32))(v46) animated:0.0];
      sub_1D7AC8858(0, 0);
      [v51 setRate_];
      (*(v45 + 8))(v50, v46);
    }

    else
    {
      v51 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70));
      [v51 setCurrentTime:0 duration:0 rate:0.0 isWaiting:0.0 animated:0.0];
      sub_1D7AC8858(0, 0);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v44);
    strcpy(&v101[-6], "item time playbackRate waiting ");
    v46 = v120;
    v123 = v120;
    v124 = MEMORY[0x1E69E63B0];
    v125 = &type metadata for AudioPlaybackRate;
    v126 = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v53 = *&v39[TupleTypeMetadata[12]];
    v54 = v39[TupleTypeMetadata[16]];
    v55 = v39[TupleTypeMetadata[20]];
    v45 = v122;
    v56 = *(v122 + 32);
    v109 = v35;
    v57 = v110;
    v56(v110, v39, v46);
    v51 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70));
    v58 = (*(v113 + 32))(v46);
    v59 = dbl_1D7D4A198[v54];
    [v51 setCurrentTime:v55 duration:1 rate:v53 isWaiting:v58 animated:v59];
    sub_1D7AC8858(1, v55);
    [v51 setRate_];
    v35 = v109;
    (*(v45 + 8))(v57, v46);
  }

  v60 = v121;
  v61 = v115;
  AudioPlaybackState.nowPlaying.getter(v35, v115);
  v62 = *(v45 + 48);
  v63 = v62(v61, 1, v46);
  v64 = v118;
  if (v63 == 1)
  {
    v65 = *(v118 + 8);
    v66 = v119;
    v65(v61, v119);
    v67 = v114;
    (*(v45 + 56))(v114, 1, 1, v46);
    sub_1D7ACFD70(v67);
    return (v65)(v67, v66);
  }

  v110 = v51;
  v69 = *(v45 + 32);
  v70 = v117;
  v101[1] = v45 + 32;
  v101[0] = v69;
  v69(v117, v61, v46);
  v71 = *(v45 + 16);
  v109 = (v45 + 16);
  v103 = v71;
  v71(v60, v70, v46);
  v72 = *(v45 + 56);
  v104 = v45 + 56;
  v102 = v72;
  v72(v60, 0, 1, v46);
  v73 = v116;
  v74 = *((*MEMORY[0x1E69E7D40] & *v116) + 0xB0);
  swift_beginAccess();
  v75 = v62;
  v76 = *(TupleTypeMetadata2 + 48);
  v77 = *(v64 + 16);
  v78 = v60;
  v79 = v111;
  v80 = v119;
  v77(v111, v78, v119);
  v115 = v76;
  v81 = v73 + v74;
  v82 = v120;
  v77(&v79[v76], v81, v80);
  if (v75(v79, 1, v82) == 1)
  {
    v83 = *(v64 + 8);
    v83(v121, v80);
    if (v75(&v79[v115], 1, v82) == 1)
    {
      v83(v79, v80);
      return (*(v122 + 8))(v117, v82);
    }

    v87 = v110;
    goto LABEL_16;
  }

  v84 = v106;
  v77(v106, v79, v80);
  v85 = v115;
  v86 = v75(&v79[v115], 1, v82);
  v87 = v110;
  if (v86 == 1)
  {
    v83 = *(v118 + 8);
    v83(v121, v80);
    (*(v122 + 8))(v84, v82);
LABEL_16:
    (*(v107 + 8))(v79, TupleTypeMetadata2);
    goto LABEL_17;
  }

  v96 = &v79[v85];
  v97 = v105;
  (v101[0])(v105, v96, v82);
  v98 = sub_1D7D3030C();
  v99 = *(v122 + 8);
  v99(v97, v82);
  v83 = *(v118 + 8);
  v83(v121, v119);
  v99(v84, v82);
  v83(v79, v119);
  v80 = v119;
  if (v98)
  {
    return (v99)(v117, v82);
  }

LABEL_17:
  v88 = v114;
  v103(v114, v117, v82);
  v102(v88, 0, 1, v82);
  v89 = v116;
  sub_1D7ACFD70(v88);
  v83(v88, v80);
  v90 = v108;
  (*(v108 + 24))(v82, v108);
  v91 = sub_1D7D3031C();
  [v87 setTitle_];

  v92 = *(v89 + *((*MEMORY[0x1E69E7D40] & *v89) + 0xB8));
  v93 = sub_1D7D3031C();

  [v92 setTitle_];

  (*(v90 + 40))(v82, v90);
  if (v94)
  {
    v95 = sub_1D7D3031C();
  }

  else
  {
    v95 = 0;
  }

  v100 = v122;
  [v92 setPublisher_];

  sub_1D7AC94CC();
  sub_1D7ACA2B0();
  return (*(v100 + 8))(v117, v82);
}

void sub_1D7AC83F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D7AC76C4(a1);
  }
}

id NowPlayingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall NowPlayingViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = type metadata accessor for AudioPlaybackState();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v15 - v8;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewDidLoad, v7);
  v10 = *(v1 + *((*v3 & *v1) + 0x70));
  [v1 addChildViewController_];
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v10 view];
    if (v13)
    {
      v14 = v13;
      [v12 addSubview_];

      [v10 didMoveToParentViewController_];
      sub_1D7D28EDC();
      sub_1D7AC76C4(v9);
      (*(v5 + 8))(v9, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7AC86C4(void *a1)
{
  v1 = a1;
  NowPlayingViewController.viewDidLoad()();
}

Swift::Void __swiftcall NowPlayingViewController.viewWillLayoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)) view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7AC8810(void *a1)
{
  v1 = a1;
  NowPlayingViewController.viewWillLayoutSubviews()();
}

id sub_1D7AC8858(char a1, char a2)
{
  v5 = MEMORY[0x1E69E7D40];
  [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70)) setIsPlaying:a1 & 1 waiting:a2 & 1];
  v6 = *(v2 + *((*v5 & *v2) + 0xB8));

  return [v6 setIsPlaying:a1 & 1 waiting:a2 & 1];
}

uint64_t sub_1D7AC8904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v36 = a3;
  v38 = a2;
  v4 = sub_1D7D2B4AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2B49C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v41 = 0;
    aBlock = 0u;
    v40 = 0u;
    goto LABEL_5;
  }

  v18 = Strong;
  sub_1D7AD3694(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8), &aBlock, &qword_1EE0BCE18, &qword_1EE0BCE20, &protocol descriptor for NowPlayingMenuFactoryType);

  if (!*(&v40 + 1))
  {
LABEL_5:
    sub_1D7AD35D8(&aBlock, &qword_1EE0BCE18, &qword_1EE0BCE20, &protocol descriptor for NowPlayingMenuFactoryType);
    v19 = MEMORY[0x1E69D7FC8];
    goto LABEL_6;
  }

  sub_1D7AD35D8(&aBlock, &qword_1EE0BCE18, &qword_1EE0BCE20, &protocol descriptor for NowPlayingMenuFactoryType);
  v19 = MEMORY[0x1E69D7F98];
LABEL_6:
  (*(v10 + 104))(v16, *v19, v9);
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20 && (v21 = v20, swift_beginAccess(), , v21, sub_1D7D28EDC(), , v22 = (*(v5 + 88))(v8, v4), LODWORD(v21) = *MEMORY[0x1E69D8020], (*(v5 + 8))(v8, v4), v22 == v21))
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = swift_allocObject();
      swift_beginAccess();
      v26 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = v35;
      (*(v10 + 16))(v35, v16, v9);
      v28 = (*(v10 + 80) + 48) & ~*(v10 + 80);
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 2) = v36;
      *(v29 + 3) = v30;
      v31 = v38;
      *(v29 + 4) = v25;
      *(v29 + 5) = v31;
      (*(v10 + 32))(&v29[v28], v27, v9);
      v41 = sub_1D7AD3718;
      v42 = v29;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v40 = sub_1D79FE25C;
      *(&v40 + 1) = &block_descriptor_59;
      v32 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v24 dismissViewControllerAnimated:1 completion:v32];
      _Block_release(v32);
LABEL_12:
    }
  }

  else
  {
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v24 = v33;
      sub_1D7AC8F58(v38, v16);
      goto LABEL_12;
    }
  }

  return (*(v10 + 8))(v16, v9);
}

void sub_1D7AC8E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v8[3] = type metadata accessor for NowPlayingViewController();
      v8[4] = swift_getWitnessTable();
      v8[0] = v6;
      v7 = v6;
      sub_1D7D2C08C();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    sub_1D7AC8F58(a2, a3);
  }
}

uint64_t sub_1D7AC8F58(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D7D2B49C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v10 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88));
  v14 = sub_1D7D28A3C();
  v15 = sub_1D7AD3358(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v13 = v10;
  v16 = 0u;
  v17 = 0u;
  v18 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  sub_1D7D2B0EC();
  sub_1D7D2A4DC();
  swift_getObjectType();
  sub_1D7D2C57C();
  v13 = a1;
  sub_1D799621C();
  swift_unknownObjectRetain();

  sub_1D7D2A78C();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7AC91CC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v29 = a3;
  v5 = *(*a2 + *MEMORY[0x1E69D6540]);
  v6 = *(v5 + 16);
  v7 = sub_1D7D3130C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - v15;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v26 - v20;
  sub_1D7D28EDC();
  AudioPlaybackState.nowPlaying.getter(v5, v11);
  (*(v12 + 8))(v16, v5);
  if ((*(v17 + 48))(v11, 1, v6) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v17 + 32))(v21, v11, v6);
  v23 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  (*(v28 + 16))(v6);
  v24 = v29;
  v25 = (*(v23 + 8))();
  swift_unknownObjectRelease();
  [v24 setMenu_];

  return (*(v17 + 8))(v21, v6);
}

id sub_1D7AC94CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v52 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1D7AD2C74(0, &qword_1EE0BF528, MEMORY[0x1E69B6728], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v50 = &v44 - v6;
  v48 = sub_1D7D2F47C();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v7);
  v49 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *((v3 & v2) + 0x50);
  v10 = sub_1D7D3130C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v44 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v44 - v21;
  v23 = *((v3 & v2) + 0xB0);
  swift_beginAccess();
  (*(v11 + 16))(v14, &v1[v23], v10);
  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);
    return [*&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)] setPublisherImage:0 fallbackName:0];
  }

  else
  {
    v25 = MEMORY[0x1E69E7D40];
    v26 = *(v15 + 32);
    v26(v22, v14, v9);
    v27 = *(v52 + 88);
    v28 = (*(v27 + 16))(v9, v27);
    HeadlinePublisherLogo.init(headline:)(v28, v53);
    sub_1D7AD3694(&v54, &v55, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    sub_1D7AD3304(v53);
    if (v56)
    {
      v45 = v26;
      v46 = v15 + 32;
      v52 = v27;
      sub_1D799D69C(&v55, v57);
      sub_1D799CC84(v57, v53);
      result = [v1 view];
      if (result)
      {
        v29 = result;
        [result bounds];

        [*&v1[*((*v25 & *v1) + 0x70)] publisherLogoHeight];
        v30 = [objc_opt_self() mainScreen];
        [v30 scale];

        (*(v47 + 104))(v49, *MEMORY[0x1E69B62C0], v48);
        v31 = sub_1D7D2FD9C();
        (*(*(v31 - 8) + 56))(v50, 1, 1, v31);
        v32 = sub_1D7D2FDBC();
        swift_allocObject();
        v33 = sub_1D7D2FDAC();
        v34 = &v1[*((*v25 & *v1) + 0x98)];
        v35 = *(v34 + 3);
        v50 = *(v34 + 4);
        v49 = __swift_project_boxed_opaque_existential_1(v34, v35);
        v53[3] = v32;
        v53[4] = sub_1D7AD3358(&qword_1EE0BF520, MEMORY[0x1E69B6738]);
        v53[0] = v33;
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = v51;
        (*(v15 + 16))(v51, v22, v9);
        v38 = (*(v15 + 80) + 40) & ~*(v15 + 80);
        v39 = swift_allocObject();
        v40 = v52;
        *(v39 + 2) = v9;
        *(v39 + 3) = v40;
        *(v39 + 4) = v36;
        v45(&v39[v38], v37, v9);

        sub_1D7D2A05C();

        __swift_destroy_boxed_opaque_existential_1(v57);
        (*(v15 + 8))(v22, v9);

        return __swift_destroy_boxed_opaque_existential_1(v53);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_1D7AD35D8(&v55, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
      v41 = *&v1[*((*v25 & *v1) + 0x70)];
      (*(v27 + 40))(v9, v27);
      if (v42)
      {
        v43 = sub_1D7D3031C();
      }

      else
      {
        v43 = 0;
      }

      [v41 setPublisherImage:0 fallbackName:v43];

      return (*(v15 + 8))(v22, v9);
    }
  }

  return result;
}

void sub_1D7AC9CD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v65 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v59 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v12);
  v14 = v55 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v63 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v55 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v55[1] = a2;
  v56 = a3;
  (*(v8 + 16))(v22, a2, a4);
  (*(v8 + 56))(v22, 0, 1, a4);
  v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0xB0);
  swift_beginAccess();
  v26 = v8;
  v57 = TupleTypeMetadata2;
  v27 = v22;
  v28 = v10;
  v29 = *(TupleTypeMetadata2 + 48);
  v62 = v15;
  v30 = *(v15 + 16);
  v30(v14, v27, v28);
  v60 = v29;
  v61 = v24;
  v31 = &v14[v29];
  v32 = v28;
  v33 = v24 + v25;
  v34 = a4;
  v30(v31, v33, v28);
  v58 = v26;
  v35 = *(v26 + 48);
  if (v35(v14, 1, a4) != 1)
  {
    v40 = v27;
    v41 = v63;
    v30(v63, v14, v32);
    v42 = v60;
    if (v35(&v14[v60], 1, v34) != 1)
    {
      v44 = v58;
      v43 = v59;
      (*(v58 + 32))(v59, &v14[v42], v34);
      v64 = v14;
      v38 = v65;
      v45 = sub_1D7D3030C();
      v46 = *(v44 + 8);
      v46(v43, v34);
      v47 = *(v62 + 8);
      v47(v40, v32);
      v37 = v34;
      v46(v41, v34);
      v47(v64, v32);
      v39 = v61;
      if ((v45 & 1) == 0)
      {

        return;
      }

      goto LABEL_10;
    }

    (*(v62 + 8))(v27, v32);
    (*(v58 + 8))(v41, v34);
LABEL_8:
    (*(v64 + 1))(v14, v57);
    return;
  }

  v36 = *(v62 + 8);
  v36(v27, v28);
  v37 = a4;
  if (v35(&v14[v60], 1, a4) != 1)
  {

    goto LABEL_8;
  }

  v36(v14, v32);
  v38 = v65;
  v39 = v61;
LABEL_10:
  v48 = v56;
  if (v56)
  {
    (*(v38 + 40))(v37, v38);
    if (v49)
    {
      v50 = sub_1D7D3031C();
    }

    else
    {
      v50 = 0;
    }

    [v48 setAccessibilityLabel_];
  }

  v51 = *(v38 + 40);
  v52 = *(v39 + *((*MEMORY[0x1E69E7D40] & *v39) + 0x70));
  v51(v37, v38);
  if (v53)
  {
    v54 = sub_1D7D3031C();
  }

  else
  {
    v54 = 0;
  }

  [v52 setPublisherImage:v48 fallbackName:v54];
}

uint64_t sub_1D7ACA2B0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = *(v3 + 0x50);
  v5 = sub_1D7D3130C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  sub_1D7ACA574();
  v15 = *((*v2 & *v0) + 0xB0);
  swift_beginAccess();
  (*(v6 + 16))(v9, &v1[v15], v5);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v14, v9, v4);
  (*(*(v3 + 88) + 48))(&v18, v4);
  if (v19)
  {
    sub_1D799D69C(&v18, v20);
    sub_1D7ACA6F0(v20, v14);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1D7AD35D8(&v18, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    sub_1D7ACACC4(v14);
  }

  return (*(v10 + 8))(v14, v4);
}