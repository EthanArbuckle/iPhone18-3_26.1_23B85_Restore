uint64_t sub_24EBDA498()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 24) = 0;
  }

  return result;
}

unint64_t sub_24EBDA510(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(*v3 + 176);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *v7 >> 62;
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      sub_24E5FCA4C(v9);
LABEL_20:
      sub_24EB931F0(a1, a2);
      sub_24EB93188(v8, v9);
      sub_24EB93188(a1, a2);
      v16 = *v7;
      v17 = *(v7 + 8);
      sub_24EB931F0(*v7, v17);
      sub_24F92AD88();
      v12 = v16;
      v13 = v17;
      return sub_24EB93188(v12, v13);
    }

    if (v8 == 0x8000000000000000 && *(v7 + 8) == 0)
    {
      if (a1 >> 62 != 2 || a1 != 0x8000000000000000 || a3 | a2)
      {
        goto LABEL_20;
      }

      sub_24EB93188(0x8000000000000000, 0);
      v12 = 0x8000000000000000;
    }

    else
    {
      if (a1 >> 62 != 2 || a1 != 0x8000000000000008 || a3 | a2)
      {
        goto LABEL_20;
      }

      sub_24EB93188(0x8000000000000008, 0);
      v12 = 0x8000000000000008;
    }

    v13 = 0;
  }

  else
  {
    if (a1 >> 62)
    {

      goto LABEL_20;
    }

    sub_24EB931F0(*v7, *(v7 + 8));
    sub_24EB931F0(a1, a2);
    sub_24EB93188(v8, v9);
    v12 = a1;
    v13 = a2;
  }

  return sub_24EB93188(v12, v13);
}

uint64_t sub_24EBDA710()
{

  sub_24E601704(v0 + 40, &qword_27F224F98);
  v1 = qword_27F39B498;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_24EB93188(*(v0 + *(*v0 + 176)), *(v0 + *(*v0 + 176) + 8));

  sub_24E601704(v0 + *(*v0 + 192), &qword_27F224FA0);
  sub_24E601704(v0 + *(*v0 + 200), qword_27F224FA8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_24EBDA8E0()
{

  sub_24E601704(v0 + 40, &qword_27F224F98);
  v1 = qword_27F39B498;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_24EBDED8C(*(v0 + *(*v0 + 176)), *(v0 + *(*v0 + 176) + 8), *(v0 + *(*v0 + 176) + 16), *(v0 + *(*v0 + 176) + 24));

  sub_24E601704(v0 + *(*v0 + 192), &qword_27F224FA0);
  sub_24E601704(v0 + *(*v0 + 200), qword_27F224FA8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

BOOL static TopChartsDiffablePagePresenter.SegmentPresentersState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_24EBDAB10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TopChartsDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_24EBDE3C4(a1, a2, a3);

  return v6;
}

uint64_t TopChartsDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24EBDE3C4(a1, a2, a3);

  return v3;
}

uint64_t sub_24EBDAC08(uint64_t a1)
{
  v2 = v1;
  v17[1] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B010);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = qword_27F22AFE8;
  swift_beginAccess();
  sub_24E60169C(v2 + v14, v9, &qword_27F22AFF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F22AFF0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (a1)
    {
      sub_24F92AD78();
    }

    (*(v11 + 8))(v13, v10);
  }

  if (*(v2 + qword_27F22AFA8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018);
    sub_24E602068(&qword_27F22B020, &qword_27F22B018);

    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v6, v15, 1, v10);
  swift_beginAccess();
  sub_24E61DA68(v6, v2 + v14, &qword_27F22AFF0);
  return swift_endAccess();
}

uint64_t TopChartsDiffablePagePresenter.pageUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39BE58;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F228530);
}

uint64_t TopChartsDiffablePagePresenter.initialSegmentIndex.getter()
{
  v1 = qword_27F39BE68;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TopChartsDiffablePagePresenter.segmentPresentersState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27F39BE78;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24EBDB0D0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_24EBDB124(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39BE80);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_24F92AD88();
}

uint64_t TopChartsDiffablePagePresenter.selectedCategoryIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39BE88;
  swift_beginAccess();
  v4 = sub_24F91FA78();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

Swift::Void __swiftcall TopChartsDiffablePagePresenter.viewDidAppear()()
{
  swift_beginAccess();
  if (*(v0 + 32))
  {

    sub_24F92A0A8();
  }
}

uint64_t TopChartsDiffablePagePresenter.viewWillDisappear(forReason:)()
{
  result = swift_beginAccess();
  if (*(v0 + 32))
  {

    sub_24F92A0B8();
  }

  return result;
}

Swift::Void __swiftcall TopChartsDiffablePagePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = (v1 + *(*v1 + 176));
  swift_beginAccess();
  v7 = v6 + 1;
  v8 = *v6;
  if ((*v6 >> 62) >= 2 && (v8 == 0x8000000000000000 ? (v9 = *(v6 + 1) == 0) : (v9 = 0), v9))
  {
    *v6 = 0x8000000000000008;
    *v7 = 0;
    v6[2] = 0;
    sub_24EB931F0(0x8000000000000000, 0);
    sub_24EB93188(0x8000000000000000, 0);
    sub_24EBDA510(0x8000000000000000, 0, 0);
    sub_24EB93188(0x8000000000000000, 0);
    if (*(v1 + qword_27F22AFA8))
    {

      TopChartsDiffablePageContentPresenter.fetchPage()();
    }
  }

  else if (ignoringCache)
  {
    v10 = v6[1];
    v11 = v6[2];
    *v6 = 0x8000000000000000;
    *v7 = 0;
    v6[2] = 0;
    sub_24EB931F0(v8, v10);
    sub_24EB93188(v8, v10);
    sub_24EBDA510(v8, v10, v11);
    sub_24EB93188(v8, v10);
    sub_24EBD8DD4(0, &unk_2861E7A78, sub_24EBDED54, sub_24EBDED70);
    v12 = qword_27F39BE58;
    swift_beginAccess();
    sub_24E60169C(v1 + v12, v5, &qword_27F228530);
    v13 = sub_24EBDB5A0(v5);
    sub_24E601704(v5, &qword_27F228530);
    v14 = *(v1 + qword_27F22AFA8);
    *(v1 + qword_27F22AFA8) = v13;

    sub_24EBDAC08(v14);

    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }
}

uint64_t sub_24EBDB5A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-v4];
  v6 = qword_27F39BE58;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v6, &qword_27F228530);
  swift_endAccess();
  v7 = v1[2];
  sub_24E60169C(a1, v5, &qword_27F228530);
  swift_beginAccess();
  v8 = v1[3];
  swift_beginAccess();
  v9 = v1[4];
  type metadata accessor for TopChartsDiffablePageContentPresenter();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018);
  swift_allocObject();

  *(v10 + v12) = sub_24F92ADA8();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = v7;
  sub_24F929158();
  sub_24F928FD8();

  sub_24F92A758();
  sub_24E911D90(v5, v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v10 + v11) = 0;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v8;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v9;
  return v10;
}

unint64_t sub_24EBDB7C8(uint64_t a1)
{
  v3 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v3);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12 < 0)
  {
    v14 = qword_27F39BE58;
    swift_beginAccess();
    sub_24E60169C(v1 + v14, v5 + *(v3 + 20), &qword_27F228530);
    *v5 = v11;
    swift_beginAccess();
    v15 = v1[3];
    if (v15)
    {
      sub_24EBDED0C(&qword_27F22B028, type metadata accessor for PresenterError);
      v16 = swift_allocError();
      sub_24EBDEC38(v5, v17);
      v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v19 = *(v15 + v18);
      sub_24EBDED00(v11, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + v18) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_24E617130(0, v19[2] + 1, 1, v19);
        *(v15 + v18) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_24E617130((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      v19[v22 + 4] = v16;
      *(v15 + v18) = v19;
      swift_endAccess();
    }

    else
    {
      v34 = v11;
    }

    sub_24EBDED0C(&qword_27F22B028, type metadata accessor for PresenterError);
    v35 = swift_allocError();
    sub_24EBDEC38(v5, v36);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v35 | 0x4000000000000000;
    v39 = (v1 + *(*v1 + 176));
    swift_beginAccess();
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    *v39 = v38;
    v39[1] = sub_24EBDEC9C;
    v39[2] = v37;

    sub_24EB931F0(v40, v41);
    sub_24EB93188(v40, v41);
    sub_24EBDA510(v40, v41, v42);
    sub_24EB93188(v40, v41);
    sub_24EBDECA4(v5);
  }

  else
  {
    if (v12)
    {
      sub_24EBDBD6C(v11, 1);
      v13 = (v1 + *(*v1 + 176));
    }

    else
    {
      v23 = v8;
      v24 = v1;
      sub_24EBDBD6C(v11, 0);
      swift_beginAccess();
      v25 = v1[3];
      if (v25)
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v27 = v26;
        (*(v7 + 8))(v10, v23);
        v28 = v25 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v28 = v27;
        *(v28 + 8) = 0;
        v29 = *(v25 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
        swift_beginAccess();
        *(v29 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }

        v1 = v24;
      }

      v13 = (v1 + *(*v1 + 176));
    }

    swift_beginAccess();
    v30 = *v13;
    v31 = v13[1];
    v32 = v13[2];
    v13[1] = 0;
    v13[2] = 0;
    *v13 = v11;
    sub_24EBDED00(v11, v12);
    sub_24EB931F0(v30, v31);
    sub_24EB93188(v30, v31);
    sub_24EBDA510(v30, v31, v32);
    return sub_24EB93188(v30, v31);
  }
}

uint64_t sub_24EBDBD6C(uint64_t a1, int a2)
{
  v3 = v2;
  v96 = a2;
  v5 = sub_24F91F648();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_24F928188();
  v116 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92BEE8();
  v9 = *(v8 - 8);
  v114 = v8;
  v115 = v9;
  MEMORY[0x28223BE20](v8);
  v113 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F92BE88();
  MEMORY[0x28223BE20](v112);
  v111 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  MEMORY[0x28223BE20](v12 - 8);
  v110 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v90 - v15;
  v16 = sub_24F91FA78();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TopChartsPage();
  *(&v122 + 1) = v94;
  v123 = &protocol witness table for BasePage;
  v93 = sub_24EBDED0C(&qword_27F22B030, type metadata accessor for TopChartsPage);
  v124 = v93;
  *&v121 = a1;
  swift_beginAccess();

  sub_24E9CBF30(&v121, (v2 + 40), &qword_27F224F98);
  swift_endAccess();
  sub_24F2F0038();
  sub_24E601704(&v121, &qword_27F224F98);
  v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v20 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title + 8);
  v22 = &v3[qword_27F39BE60];
  swift_beginAccess();
  *v22 = v21;
  *(v22 + 1) = v20;

  v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex);
  v24 = qword_27F39BE68;
  swift_beginAccess();
  *&v3[v24] = v23;
  v25 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  v26 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle + 8);
  v27 = &v3[qword_27F39BE80];
  swift_beginAccess();
  *v27 = v25;
  *(v27 + 1) = v26;

  *&v121 = v25;
  *(&v121 + 1) = v26;

  sub_24F92AD88();

  v28 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId + 8);
  v29 = &v3[qword_27F22AFD8];
  *v29 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  *(v29 + 1) = v28;

  v30 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId + 8);
  v31 = &v3[qword_27F22AFE0];
  *v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  *(v31 + 1) = v30;

  v32 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories);
  v33 = qword_27F22AFC0;
  swift_beginAccess();
  *&v3[v33] = v32;

  *&v121 = *&v3[v33];

  sub_24F92AD88();

  v35 = sub_24EBDCECC(v34);

  MEMORY[0x2530453D0](v35);
  v36 = qword_27F39BE88;
  swift_beginAccess();
  (*(v17 + 40))(&v3[v36], v19, v16);
  swift_endAccess();
  v95 = a1;
  v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments);
  if (v37 >> 62)
  {
    v38 = sub_24F92C738();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v119 = MEMORY[0x277D84F90];
    result = sub_24F92C978();
    if (v38 < 0)
    {
      __break(1u);
      return result;
    }

    v106 = sub_24E74EC40();
    v41 = &v3[qword_27F39B490];
    v42 = *(v3 + 2);
    v103 = v37 & 0xC000000000000001;
    v104 = v42;
    v102 = "commonOnboardingStatus";
    swift_beginAccess();
    swift_beginAccess();
    v105 = v41;
    swift_beginAccess();
    v43 = v37;
    v44 = 0;
    v101 = (v115 + 104);
    v97 = (v116 + 8);
    v100 = *MEMORY[0x277D85260];
    v107 = v38;
    v108 = v37;
    v109 = v3;
    do
    {
      v116 = v44;
      if (v103)
      {
        v52 = MEMORY[0x253052270](v44, v43);
      }

      else
      {
        v52 = *(v43 + 8 * v44 + 32);
      }

      v54 = *(v3 + 3);
      v53 = *(v3 + 4);
      type metadata accessor for TopChartDiffableSegmentPresenter();
      v55 = swift_allocObject();
      v56 = (v55 + qword_27F39C068);
      *v56 = 0;
      v56[1] = 0;
      v57 = (v55 + qword_27F39C070);
      *v57 = 0;
      v57[1] = 0;
      *(v55 + qword_27F22BCD8) = v52;
      v59 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
      v58 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8);
      swift_beginAccess();
      *v56 = v59;
      v56[1] = v58;
      v61 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
      v60 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8);
      swift_beginAccess();
      *v57 = v61;
      v57[1] = v60;
      *(v55 + qword_27F22BCC8) = v54;
      *(v55 + qword_27F22BCD0) = v53;
      v62 = sub_24F91F4A8();
      v63 = *(*(v62 - 8) + 56);

      v63(v117, 1, 1, v62);
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      *(v55 + qword_27F39CC00) = 0;
      *(v55 + qword_27F39CC10) = MEMORY[0x277D84F90];
      *(v55 + qword_27F2326C8) = 0;
      v64 = *(*v55 + 640);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC0);
      v66 = *(*(v65 - 8) + 56);
      v66(v55 + v64, 1, 1, v65);
      v67 = *(*v55 + 648);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
      (*(*(v68 - 8) + 56))(v55 + v67, 1, 1, v68);
      v69 = *(*v55 + 656);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACB0);
      (*(*(v70 - 8) + 56))(v55 + v69, 1, 1, v70);
      v66(v55 + *(*v55 + 664), 1, 1, v65);
      v71 = *(*v55 + 672);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
      (*(*(v72 - 8) + 56))(v55 + v71, 1, 1, v72);
      v73 = *(*v55 + 680);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
      (*(*(v74 - 8) + 56))(v55 + v73, 1, 1, v74);
      v75 = *(*v55 + 688);

      v115 = v54;

      sub_24F927DA8();
      v118 = MEMORY[0x277D84F90];
      sub_24EBDED0C(&qword_27F2394E0, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
      sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
      sub_24F92C6A8();
      (*v101)(v113, v100, v114);
      *(v55 + v75) = sub_24F92BF38();
      sub_24EBD3128(v55 + *(*v55 + 696));
      v76 = (v55 + *(*v55 + 704));
      *v76 = 0u;
      v76[1] = 0u;
      *(v76 + 25) = 0u;
      v77 = *(*v55 + 712);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
      swift_allocObject();
      *(v55 + v77) = sub_24F92ADA8();
      v78 = *(*v55 + 720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
      swift_allocObject();
      *(v55 + v78) = sub_24F92ADA8();
      v79 = *(*v55 + 728);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
      swift_allocObject();
      *(v55 + v79) = sub_24F92ADA8();
      *(v55 + *(*v55 + 736)) = 0;
      v80 = (v55 + *(*v55 + 752));
      *v80 = 0;
      v80[1] = 0;
      sub_24E60169C(v117, v55 + qword_27F39CBF8, &qword_27F228530);
      sub_24E60169C(&v121, v55 + *(*v55 + 744), &qword_27F229490);
      v81 = type metadata accessor for InlineUnifiedMessagePresenter();
      v120.receiver = objc_allocWithZone(v81);
      v120.super_class = v81;
      *(v55 + qword_27F39CC08) = objc_msgSendSuper2(&v120, sel_init);
      if (v53)
      {
        sub_24F92A0F8();
        v118 = v53;

        v82 = v98;
        sub_24F928168();
        v45 = sub_24F928F88();
        (*v97)(v82, v99);
      }

      else
      {
        v45 = v104;
      }

      v46 = v116;
      v47 = sub_24EBBA0E0(v45, 0, 0, 0);
      v44 = v46 + 1;
      v48 = *(*v47 + 1112);

      *(v47 + qword_27F39CC00) = v48(v52);

      sub_24EBC6C24(0);

      sub_24E601704(&v121, &qword_27F229490);
      sub_24E601704(v117, &qword_27F228530);
      v50 = *v105;
      v49 = *(v105 + 1);
      v51 = (v47 + qword_27F39B490);
      swift_beginAccess();
      *v51 = v50;
      v51[1] = v49;

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v43 = v108;
      v3 = v109;
    }

    while (v107 != v44);
    v39 = v119;
  }

  v83 = qword_27F39BE70;
  swift_beginAccess();
  *&v3[v83] = v39;

  v84 = v96;
  v85 = v96 & 1;
  v86 = qword_27F39BE78;
  swift_beginAccess();
  v3[v86] = v85;
  *&v121 = *&v3[v83];

  sub_24F92AD88();

  if (v84)
  {
    swift_beginAccess();
    if (*(v3 + 3))
    {

      v87 = v90;
      sub_24F91F638();
      sub_24F91F5E8();
      v89 = v88;
      (*(v91 + 8))(v87, v92);
      PendingPageRender.initialRequestEndTime.setter(v89, 0);
    }
  }

  result = swift_beginAccess();
  if (*(v3 + 3))
  {
    v123 = &protocol witness table for BasePage;
    v124 = v93;
    *(&v122 + 1) = v94;
    *&v121 = v95;

    PendingPageRender.use(pageRenderEventFrom:)(&v121);

    return sub_24E601704(&v121, &qword_27F224F98);
  }

  return result;
}

uint64_t sub_24EBDCE70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }

  return result;
}

uint64_t sub_24EBDCECC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_24F92C738();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v1 + qword_27F22AFE0);
      v19 = (v1 + qword_27F22AFD8);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v5, a1);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_24F93DE60;
            *(v16 + 32) = v5;
            v20 = v16;
            sub_24EA0B3B4(v2);

            return v20;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        v2 = sub_24EBDCECC(v9);

        if (*(v2 + 16))
        {
          goto LABEL_31;
        }

        v10 = v4;

        v11 = 0;
        v2 = v6[1];
        v12 = v7[5];
        v13 = (v2 | v12) == 0;
        if (v2 && v12)
        {
          if (*v6 == v7[4] && v2 == v12)
          {
            v11 = 1;
            v13 = 1;
          }

          else
          {
            v11 = sub_24F92CE08();
            v13 = v11;
          }
        }

        v14 = v19[1];
        v15 = v7[3];
        if (v14)
        {
          if (v15)
          {
            if (*v19 == v7[2] && v14 == v15)
            {
              if ((v11 | v13))
              {
                goto LABEL_32;
              }
            }

            else if ((v11 | sub_24F92CE08() & v13))
            {
              goto LABEL_32;
            }

            goto LABEL_5;
          }
        }

        else if (!v15)
        {
          if (v13)
          {
            goto LABEL_32;
          }

          goto LABEL_5;
        }

        if (v2 && v13)
        {
LABEL_32:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_24F93DE60;
          *(v18 + 32) = v5;

          return v18;
        }

LABEL_5:

        ++v5;
        v4 = v10;
      }

      while (v8 != v10);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t TopChartsDiffablePagePresenter.update(toCategoryAt:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  result = sub_24EBDD2F0(a1);
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
    v9 = sub_24F91F4A8();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v11 = qword_27F39BE58;
    swift_beginAccess();
    sub_24E61DA68(v5, v1 + v11, &qword_27F228530);
    swift_endAccess();
    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }

  return result;
}

uint64_t sub_24EBDD2F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = qword_27F22AFC0;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = *(v5 + 16);
  v31 = a1;
  v17(v10, a1, v4);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x277CC9AF8];
  sub_24EBDED0C(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v30 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EBDED0C(&qword_27F22AFD0, v18);
  sub_24F92BC08();
  if (*&v14[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:
    *&v14[v30] = v20;
    sub_24E601704(v14, &qword_27F22AFB8);

    return 0;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v32, 0);
      sub_24F92BC18();
      ++v20;
      result = sub_24F91FA28();
      if (v20 >= result)
      {
        break;
      }

      swift_beginAccess();
      v25 = *(v2 + v15);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x253052270](v24);
        swift_endAccess();
        v16 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v28 = MEMORY[0x253052270](v24, v16);
LABEL_17:

          sub_24E601704(v14, &qword_27F22AFB8);
          return v28;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v26 = *(v25 + 8 * v24 + 32);
        swift_endAccess();
        v16 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v14[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v14[v30] = v20;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v16 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.categoryCount(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28[-1] - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  MEMORY[0x28223BE20](v27);
  v12 = &v28[-1] - v11;
  v13 = qword_27F22AFC0;
  swift_beginAccess();
  v14 = *(v2 + v13);
  (*(v5 + 16))(v10, a1, v4);
  (*(v5 + 32))(v7, v10, v4);
  v15 = MEMORY[0x277CC9AF8];
  sub_24EBDED0C(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EBDED0C(&qword_27F22AFD0, v15);
  sub_24F92BC08();
  if (*&v12[v16] != v28[0])
  {
    v20 = 0;
    while (1)
    {

      v21 = sub_24F92BC88();
      v23 = *v22;
      v21(v28, 0);
      sub_24F92BC18();
      v17 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      swift_beginAccess();
      v24 = *(v2 + v13);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x253052270](v23);
        swift_endAccess();
        v14 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v25 = *(v24 + 8 * v23 + 32);
        swift_endAccess();
        v14 = *(v25 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      ++v20;
      if (*&v12[v16] == v28[0])
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0;
LABEL_3:
  *&v12[*(v27 + 36)] = v17;
  sub_24E601704(v12, &qword_27F22AFB8);
  if (v14 >> 62)
  {
LABEL_18:
    v18 = sub_24F92C738();
    goto LABEL_5;
  }

  v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  return v18;
}

uint64_t TopChartsDiffablePagePresenter.categoryTitle(at:)(uint64_t a1)
{
  v1 = sub_24EBDD2F0(a1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
  }

  return v2;
}

uint64_t TopChartsDiffablePagePresenter.categoryArtwork(at:)(uint64_t a1)
{
  v1 = sub_24EBDD2F0(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

  return v2;
}

uint64_t TopChartsDiffablePagePresenter.hasChildren(at:)(uint64_t a1)
{
  result = sub_24EBDD2F0(a1);
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
    if (v2 >> 62)
    {
      v3 = sub_24F92C738();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v3 > 0;
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.isCategorySelected(at:)(uint64_t a1)
{
  v1 = sub_24EBDD2F0(a1);
  v2 = sub_24EBDDCC8(v1);

  return v2 & 1;
}

uint64_t sub_24EBDDCC8(void *a1)
{
  v2 = *(v1 + qword_27F22AFE0 + 8);
  if (!a1)
  {
    v7 = v2 == 0;
    LOBYTE(v9) = v2 == 0;
    v10 = v2 == 0;
    if (*(v1 + qword_27F22AFD8 + 8))
    {
      goto LABEL_26;
    }

    if (!v2)
    {
      return v10 & 1;
    }

LABEL_35:
    if ((v10 & 1) == 0)
    {
      return v10 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + qword_27F22AFE0);
  v6 = a1[4];
  v5 = a1[5];
  v7 = v2 == 0;

  if (v2)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4 == v6 && v2 == v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_24F92CE08();
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  v11 = *(v1 + qword_27F22AFD8);
  v12 = *(v1 + qword_27F22AFD8 + 8);
  v14 = a1[2];
  v13 = a1[3];

  if (!v12)
  {
    if (v13)
    {

      goto LABEL_26;
    }

    v10 = v9;
    if (!v2)
    {
      return v10 & 1;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    if (v11 == v14 && v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_24F92CE08();
    }

    if (!v2 || ((v9 ^ 1) & 1) != 0)
    {
      v10 = v16 & v9;
      return v10 & 1;
    }

LABEL_36:
    v10 = 1;
    return v10 & 1;
  }

LABEL_26:
  v10 = 0;
  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v10 & 1;
}

uint64_t sub_24EBDDE84()
{
  sub_24E601704(v0 + qword_27F39BE58, &qword_27F228530);

  v1 = qword_27F39BE88;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return sub_24E601704(v0 + qword_27F22AFE8, &qword_27F22AFF0);
}

uint64_t TopChartsDiffablePagePresenter.deinit()
{
  v0 = sub_24EBDA710();
  sub_24E601704(v0 + qword_27F39BE58, &qword_27F228530);

  v1 = qword_27F39BE88;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + qword_27F22AFE8, &qword_27F22AFF0);
  return v0;
}

uint64_t TopChartsDiffablePagePresenter.__deallocating_deinit()
{
  TopChartsDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EBDE17C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_27F39BE88;
  swift_beginAccess();
  v5 = sub_24F91FA78();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24EBDE22C(uint64_t a1)
{
  v1 = sub_24EBDD2F0(a1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
  }

  return v2;
}

uint64_t sub_24EBDE2B8(uint64_t a1)
{
  v1 = sub_24EBDD2F0(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

  return v2;
}

uint64_t sub_24EBDE310(uint64_t a1)
{
  result = sub_24EBDD2F0(a1);
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
    if (v2 >> 62)
    {
      v3 = sub_24F92C738();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v3 > 0;
  }

  return result;
}

uint64_t sub_24EBDE388(uint64_t a1)
{
  v1 = sub_24EBDD2F0(a1);
  v2 = sub_24EBDDCC8(v1);

  return v2 & 1;
}

uint64_t sub_24EBDE3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v6 = sub_24F929158();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v35 - v9;
  v10 = qword_27F39BE58;
  v11 = sub_24F91F4A8();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + qword_27F22AFA8) = 0;
  v12 = (v3 + qword_27F39BE60);
  v12->_countAndFlagsBits = 0;
  v12->_object = 0;
  *(v3 + qword_27F39BE68) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v3 + qword_27F39BE70) = MEMORY[0x277D84F90];
  *(v3 + qword_27F39BE78) = 2;
  v14 = (v3 + qword_27F39BE80);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v3 + qword_27F22AFD8);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v3 + qword_27F22AFE0);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + qword_27F22AFC0) = v13;
  sub_24F91FA68();
  v17 = qword_27F39BE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B038);
  swift_allocObject();
  *(v3 + v17) = sub_24F92ADA8();
  v18 = qword_27F39BE98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B040);
  swift_allocObject();
  *(v3 + v18) = sub_24F92ADA8();
  v19 = qword_27F39BEA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B048);
  swift_allocObject();
  *(v3 + v19) = sub_24F92ADA8();
  v20 = qword_27F22AFE8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B010);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  swift_beginAccess();
  v35 = a2;
  sub_24E9CBF30(a2, v3 + v10, &qword_27F228530);
  swift_endAccess();
  v22._object = 0x800000024FA56020;
  v22._countAndFlagsBits = 0xD000000000000015;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = localizedString(_:comment:)(v22, v23);
  swift_beginAccess();
  *v12 = v24;

  v26 = sub_24EBB9A2C(v25, 0, 0, 0);
  sub_24E60169C(a2, v39, &qword_27F228530);
  swift_beginAccess();
  v27 = *(v26 + 24);
  swift_beginAccess();
  v28 = *(v26 + 32);
  type metadata accessor for TopChartsDiffablePageContentPresenter();
  v29 = swift_allocObject();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v30 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v31 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018);
  swift_allocObject();

  v32 = v37;

  *(v29 + v31) = sub_24F92ADA8();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_24F928FD8();

  v33 = v36;
  sub_24F92A758();

  (*(v38 + 32))(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline, v33, v6);
  sub_24E911D90(v39, v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v29 + v30) = v32;

  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v27;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v28;
  *(v26 + qword_27F22AFA8) = v29;

  sub_24EBDAC08(0);

  sub_24E601704(v35, &qword_27F228530);
  return v26;
}

uint64_t sub_24EBDE930@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39BE80);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t type metadata accessor for TopChartsDiffablePagePresenter()
{
  result = qword_27F22AFF8;
  if (!qword_27F22AFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBDE9D8()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    sub_24F91FA78();
    if (v1 <= 0x3F)
    {
      sub_24EBDEB58();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_24EBDEB58()
{
  if (!qword_27F22B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B010);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22B008);
    }
  }
}

uint64_t sub_24EBDEBCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24EBDEC04(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_24EBDB7C8(&v3);
}

uint64_t sub_24EBDEC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresenterError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBDECA4(uint64_t a1)
{
  v2 = type metadata accessor for PresenterError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24EBDED00(void *a1, char a2)
{
  if (a2 < 0)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_24EBDED0C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_24EBDED8C(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    return sub_24E824448(a2);
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t PrivacyDefinitionLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PrivacyDefinitionLayout.Metrics.definitionTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PrivacyDefinitionLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t PrivacyDefinitionLayout.Metrics.init(titleTopSpace:definitionTopSpace:bottomMargin:maxTextWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 152) = 0;
  *(a5 + 136) = 0u;
  *(a5 + 120) = 0u;
  v9 = a5 + 120;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24E612C80(a3, a5 + 80);

  return sub_24EA63A70(a4, v9);
}

uint64_t PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1[7];
  a4[6] = a1[6];
  a4[7] = v6;
  v7 = a1[9];
  a4[8] = a1[8];
  a4[9] = v7;
  v8 = a1[3];
  a4[2] = a1[2];
  a4[3] = v8;
  v9 = a1[5];
  a4[4] = a1[4];
  a4[5] = v9;
  v10 = a1[1];
  *a4 = *a1;
  a4[1] = v10;
  sub_24E612C80(a2, (a4 + 10));

  return sub_24E612C80(a3, a4 + 200);
}

double static PrivacyDefinitionLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_24F9225E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922618();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v22 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E930DFC(a1 + 120, v25);
  if (v26)
  {
    v20 = a1;
    v21 = v7;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_24E8ED7D8();
    a1 = v20;
    v7 = v21;
    sub_24F9223A8();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_24E930E6C(v25);
  }

  (*(v4 + 104))(v23, *MEMORY[0x277D22788], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, v25);
  v14 = sub_24F9229A8();
  v15 = MEMORY[0x277D228E0];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v25);
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  __swift_allocate_boxed_opaque_existential_1((v13 + 72));
  sub_24F9229B8();
  v16 = v22;
  sub_24F9225F8();
  sub_24F9225D8();
  v18 = v17;
  (*(v7 + 8))(v16, v6);
  return v18;
}

uint64_t PrivacyDefinitionLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBDF6A8(&v13);
  v7 = v13;
  v8 = v14;
  sub_24E930DFC(v1 + 120, &v13);
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    if (v10 <= a1)
    {
      a1 = v10;
    }
  }

  else
  {
    sub_24E930E6C(&v13);
  }

  LOBYTE(v13) = v7;
  v14 = v8;
  _VerticalFlowLayout.measurements(fitting:in:)(a1);
}

double sub_24EBDF6A8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 8) = MEMORY[0x277D84F90];
  v4 = v1[23];
  v5 = v1[24];
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 20, v4);
  *(&v33 + 1) = v4;
  *&v34 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  sub_24E615E00(&v32, v41);
  sub_24E615E00(v1, v43);
  v42 = 1;
  v46 = 8;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  sub_24E9D682C(v41, &v32);
  v8 = sub_24E617A24(0, 1, 1, v3);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_24E617A24((v9 > 1), v10 + 1, 1, v8);
  }

  sub_24E9D6888(v41);
  *(v8 + 2) = v10 + 1;
  v11 = &v8[136 * v10];
  v12 = v36;
  v14 = v33;
  v13 = v34;
  *(v11 + 5) = v35;
  *(v11 + 6) = v12;
  *(v11 + 3) = v14;
  *(v11 + 4) = v13;
  v16 = v38;
  v15 = v39;
  v17 = v37;
  *(v11 + 20) = v40;
  *(v11 + 8) = v16;
  *(v11 + 9) = v15;
  *(v11 + 7) = v17;
  *(v11 + 2) = v32;
  *(a1 + 8) = v8;
  v18 = v1[28];
  v19 = v1[29];
  v20 = __swift_project_boxed_opaque_existential_1(v1 + 25, v18);
  *(&v33 + 1) = v18;
  *&v34 = *(v19 + 8);
  v21 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v18 - 8) + 16))(v21, v20, v18);
  sub_24E615E00((v1 + 10), v44);
  sub_24E615E00(&v32, v41);
  sub_24E615E00((v1 + 5), v43);
  v42 = 1;
  v46 = 8;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  sub_24E9D682C(v41, &v32);
  v23 = *(v8 + 2);
  v22 = *(v8 + 3);
  if (v23 >= v22 >> 1)
  {
    v8 = sub_24E617A24((v22 > 1), v23 + 1, 1, v8);
  }

  sub_24E9D6888(v41);
  *(v8 + 2) = v23 + 1;
  v24 = &v8[136 * v23];
  v25 = v36;
  v27 = v33;
  v26 = v34;
  *(v24 + 5) = v35;
  *(v24 + 6) = v25;
  *(v24 + 3) = v27;
  *(v24 + 4) = v26;
  v29 = v38;
  v28 = v39;
  v30 = v37;
  *(v24 + 20) = v40;
  *(v24 + 8) = v29;
  *(v24 + 9) = v28;
  *(v24 + 7) = v30;
  result = *&v32;
  *(v24 + 2) = v32;
  *(a1 + 8) = v8;
  return result;
}

uint64_t PrivacyDefinitionLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBDF6A8(&v22);
  v15 = v22;
  v16 = v23;
  sub_24E930DFC(v5 + 120, &v22);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v18 = v17;
    (*(v12 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    Width = CGRectGetWidth(v25);
    if (Width >= v18)
    {
      a4 = v18;
    }

    else
    {
      a4 = Width;
    }
  }

  else
  {
    sub_24E930E6C(&v22);
  }

  LOBYTE(v22) = v15;
  v23 = v16;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_24EBDFB8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_24EBDFBD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EBDFC60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_24EBDFCA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PersonalizationData.msoContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24EBDFD34(v2, v3);
}

uint64_t sub_24EBDFD34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 PersonalizationData.msoContext.setter(uint64_t a1)
{
  sub_24EBDFDB8(*v1, *(v1 + 8));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_24EBDFDB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double static PersonalizationData.empty.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t PersonalizationDataProvider.__allocating_init(dataSources:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_24EBE147C(a1);

  return v2;
}

uint64_t PersonalizationDataProvider.init(dataSources:)(uint64_t a1)
{
  v1 = sub_24EBE147C(a1);

  return v1;
}

unint64_t sub_24EBDFEBC(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = v1;
  v3 = sub_24F45DB90(inited);
  swift_setDeallocating();
  v4 = sub_24EBDFF44(v3);

  return v4;
}

unint64_t sub_24EBDFF44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);

  v5 = sub_24EBE05BC(v4, a1, sub_24EBE0FE8, sub_24EBE0FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B050);
  v24 = 0u;
  v25 = 0u;
  result = sub_24F92A988();
  v7 = result;
  if (*(v5 + 2))
  {
    v8 = 0;
    v9 = 1 << v5[32];
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 7);
    v12 = (v9 + 63) >> 6;
    v13 = &unk_2861E7BB0;
    while (v11)
    {
      v14 = v11;
LABEL_11:
      v11 = (v14 - 1) & v14;
      v16 = *(v2 + 16);
      if (*(v16 + 16))
      {
        result = sub_24E76E444(*(*(v5 + 6) + (__clz(__rbit64(v14)) | (v8 << 6))));
        if (v17)
        {
          v21 = *(v16 + 56);
          v18 = v13;
          v19 = result;
          v23 = swift_allocObject();
          v22 = *(v21 + 16 * v19);
          v13 = v18;
          *(v23 + 16) = v22;
          *(&v25 + 1) = sub_24F929638();
          v26 = MEMORY[0x277D21FB0];
          __swift_allocate_boxed_opaque_existential_1(&v24);
          swift_unknownObjectRetain_n();
          sub_24F929628();
          sub_24EBE17D4();
          v20 = sub_24F92A9B8();

          swift_unknownObjectRelease();

          result = __swift_destroy_boxed_opaque_existential_1(&v24);
          v7 = v20;
        }
      }
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_14;
      }

      v14 = *&v5[8 * v15 + 56];
      ++v8;
      if (v14)
      {
        v8 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v7;
  }

  return result;
}

uint64_t sub_24EBE0184(char *a1)
{
  v2 = v1;
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *a1;
  v18[3] = type metadata accessor for PersonalizationDataProvider();
  v18[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0xD00000000000003ALL;
  *(inited + 40) = 0x800000024FA560B0;
  *(inited + 48) = v8;

  v10 = sub_24E60E3D8(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F22B068);
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v11 = qword_27F23ABD8;
  sub_24E94E17C(v18, v17);
  v12 = v11;
  sub_24E954AC4(v10);

  sub_24F91EB18();
  sub_24E601704(v18, &qword_27F2129B0);
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_24F91EAF8();
  [v13 postNotification_];

  LOBYTE(v18[0]) = v8;
  sub_24F9280C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EBE03D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(&v6, ObjectType, a2);
  v5 = v6;
  return sub_24EBE0184(&v5);
}

uint64_t PersonalizationDataProvider.deinit()
{

  return v0;
}

uint64_t PersonalizationDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EBE04BC(uint64_t a1, uint64_t a2)
{

  return sub_24EBE05BC(a1, a2, sub_24EBE0830, sub_24EBE0830);
}

void *sub_24EBE053C(uint64_t a1, uint64_t a2)
{

  return sub_24EBE05BC(a1, a2, sub_24EBE0C0C, sub_24EBE0C0C);
}

void *sub_24EBE05BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_24EBE0798(v15, v10, a2, a1, a4);

    MEMORY[0x2530542D0](v15, -1, -1);
  }

  return v13;
}

void *sub_24EBE0798(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_24EBE0830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_24F92D068();

      sub_24F92B218();
      v26 = sub_24F92D0B8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24F7A8670(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_24F92D068();

      sub_24F92B218();
      v39 = sub_24F92D0B8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_24F92CE08() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBE0C0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_24F92D068();

      sub_24F92B218();
      v26 = sub_24F92D0B8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24F7A8894(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_24F92D068();

      sub_24F92B218();
      v39 = sub_24F92D0B8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_24F92CE08() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBE0FE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_38:
    v28 = 0;
    v29 = v4 + 56;
    v30 = 1 << *(v4 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v56 = 0;
    v58 = v31 & *(v4 + 56);
    v50 = (v30 + 63) >> 6;
    v32 = a4 + 56;
LABEL_42:
    while (v58)
    {
      v33 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
LABEL_49:
      v54 = v33 | (v28 << 6);
      v36 = *(*(v4 + 48) + v54);
      sub_24F92D068();
      if (v36)
      {
        v37 = 7304045;
      }

      else
      {
        v37 = 1701736302;
      }

      if (v36)
      {
        v38 = 0xE300000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      sub_24F92B218();

      result = sub_24F92D0B8();
      v39 = a4;
      v40 = -1 << *(a4 + 32);
      v41 = result & ~v40;
      if ((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = *(*(v39 + 48) + v41) ? 7304045 : 1701736302;
          v44 = *(*(v39 + 48) + v41) ? 0xE300000000000000 : 0xE400000000000000;
          if (v43 == v37 && v44 == v38)
          {
            break;
          }

          v46 = sub_24F92CE08();

          if (v46)
          {
            goto LABEL_71;
          }

          v41 = (v41 + 1) & v42;
          v39 = a4;
          if (((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            v4 = a3;
            goto LABEL_42;
          }
        }

LABEL_71:
        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        v47 = __OFADD__(v56++, 1);
        v4 = a3;
        if (v47)
        {
          __break(1u);
LABEL_74:
          v5 = v56;
          goto LABEL_75;
        }
      }
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v28 >= v50)
      {
        goto LABEL_74;
      }

      v35 = *(v29 + 8 * v28);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v58 = (v35 - 1) & v35;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v9 = *(a4 + 56);
    v7 = a4 + 56;
    v8 = v9;
    v10 = 1 << *(v7 - 24);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v53 = v11 & v8;
    v48 = (v10 + 63) >> 6;
    v49 = v7;
    v57 = a3 + 56;
LABEL_6:
    while (v53)
    {
      v12 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v13 = v12 | (v6 << 6);
      v4 = a3;
      v14 = a4;
LABEL_13:
      v17 = *(*(v14 + 48) + v13);
      sub_24F92D068();
      if (v17)
      {
        v18 = 7304045;
      }

      else
      {
        v18 = 1701736302;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      sub_24F92B218();

      result = sub_24F92D0B8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v4 = 1 << v21;
      if (((1 << v21) & *(v57 + 8 * (v21 >> 6))) != 0)
      {
        v55 = v5;
        v23 = ~v20;
        while (1)
        {
          v24 = *(*(a3 + 48) + v21) ? 7304045 : 1701736302;
          v25 = *(*(a3 + 48) + v21) ? 0xE300000000000000 : 0xE400000000000000;
          if (v24 == v18 && v25 == v19)
          {
            break;
          }

          v27 = sub_24F92CE08();

          if (v27)
          {
            goto LABEL_35;
          }

          v21 = (v21 + 1) & v23;
          v22 = v21 >> 6;
          v4 = 1 << v21;
          if ((*(v57 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            v5 = v55;
            goto LABEL_6;
          }
        }

LABEL_35:
        v52[v22] |= v4;
        v5 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }
    }

    v15 = v6;
    v4 = a3;
    v14 = a4;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v48)
      {
LABEL_75:

        return sub_24F7A8AB8(v52, a2, v5, v4);
      }

      v16 = *(v49 + 8 * v6);
      ++v15;
      if (v16)
      {
        v53 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) | (v6 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBE147C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABC8);
  swift_allocObject();
  v1[4] = sub_24F9280D8();
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = a1;
    v5 = (a1 + 32);
    v6 = MEMORY[0x277D84F98];
    v7 = *(a1 + 16);
    while (1)
    {
      v32 = *v5;
      ObjectType = swift_getObjectType();
      v9 = *(*(&v32 + 1) + 32);
      swift_unknownObjectRetain();
      v9(&v34, ObjectType, *(&v32 + 1));
      v10 = v34;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v6;
      v12 = sub_24E76E444(v10);
      v14 = v6[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      v18 = v13;
      if (v6[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v22 = v12;
      sub_24E8B3000();
      v12 = v22;
      v6 = v33;
      if ((v18 & 1) == 0)
      {
LABEL_11:
        v6[(v12 >> 6) + 8] |= 1 << v12;
        *(v6[6] + v12) = v10;
        *(v6[7] + 16 * v12) = v32;
        swift_unknownObjectRelease();
        v20 = v6[2];
        v16 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v16)
        {
          goto LABEL_21;
        }

        v6[2] = v21;
        goto LABEL_4;
      }

LABEL_3:
      *(v6[7] + 16 * v12) = v32;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_4:
      ++v5;
      if (!--v7)
      {
        v2 = v1;
        v1[2] = v6;

        v1[3] = sub_24F4434C0(v23);
        v24 = (v31 + 40);
        do
        {
          v25 = *v24;
          v26 = swift_getObjectType();
          v27 = *(v25 + 16);
          swift_unknownObjectRetain();

          v27(v28, &protocol witness table for PersonalizationDataProvider, v26, v25);
          swift_unknownObjectRelease();
          v24 += 2;
          --v4;
        }

        while (v4);
        return v2;
      }
    }

    sub_24E8A27F8(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_24E76E444(v10);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v1[2] = MEMORY[0x277D84F98];

  v1[3] = sub_24F4434C0(v29);
  return v2;
}

uint64_t sub_24EBE1734()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EBE176C(_OWORD *a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(v3 + 40))(v7, ObjectType, v3);
}

unint64_t sub_24EBE17D4()
{
  result = qword_27F22B058;
  if (!qword_27F22B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B058);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit10MSOContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24EBE1994()
{
  result = sub_24F92B098();
  qword_27F22B070 = result;
  return result;
}

id static ArcadePageScrollToShelfNotification.notificationName.getter()
{
  if (qword_27F2103B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22B070;

  return v1;
}

double static TextMeasurable.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v22[3] = a1;
  v14 = sub_24F922588();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0.0;
  }

  v22[2] = a6;
  sub_24E6C065C();
  v22[0] = a4;
  v22[1] = a7;

  v18 = [a9 traitCollection];
  MEMORY[0x253051BF0](a3, v18);

  sub_24F922578();
  sub_24F922568();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  return v20;
}

double static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v33 = a7;
  v34 = a6;
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_24F922378();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F922588();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  sub_24E934D5C(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v22 = a1;
    sub_24E934E3C(v13);
    v23 = v22;
    sub_24F922548();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_24E6C065C();
    v25 = a1;
    v26 = [a8 traitCollection];
    MEMORY[0x253051BF0](v17, v26);

    sub_24F922558();
    (*(v15 + 8))(v17, v14);
  }

  sub_24F922568();
  v24 = v27;

  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_24EBE1F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction();
  v10 = *(refreshed - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  sub_24E862F68(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EBE28F0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F98A828;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EBE2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_24EBE2234;

  return MEMORY[0x28217F228](v4 + 2, v5, v5);
}

uint64_t sub_24EBE2234()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EBE275C;
  }

  else
  {
    v2 = sub_24EBE2348;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBE2348()
{
  v22 = v0;
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v0[11] = v3;
  v4 = *v1;
  v5 = v1[1];
  v6 = sub_24F92B098();
  v7 = [objc_opt_self() applicationProxyForSystemPlaceholder_];

  if (v7)
  {

LABEL_7:
    swift_unknownObjectRelease();
    v16 = v0[6];
    v17 = *MEMORY[0x277D21CA8];
    v18 = sub_24F928AE8();
    (*(*(v18 - 8) + 104))(v16, v17, v18);
    v19 = v0[1];

    return v19();
  }

  v8 = v0[7];
  v21[0] = v4;
  v21[1] = v5;
  v9 = *(v8 + 32);
  if (!sub_24EBE2A90(v3, v2, v21, v9))
  {
    goto LABEL_7;
  }

  v10 = v0[7];
  ObjectType = swift_getObjectType();
  v0[4] = v4;
  v0[5] = v5;
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  v20 = (*(v2 + 80) + **(v2 + 80));
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_24EBE25B0;

  return v20(v0 + 4, v9, v12, v13, ObjectType, v2);
}

uint64_t sub_24EBE25B0()
{

  return MEMORY[0x2822009F8](sub_24EBE26AC, 0, 0);
}

uint64_t sub_24EBE26AC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_24EBE2790()
{
  result = qword_27F216318;
  if (!qword_27F216318)
  {
    type metadata accessor for RefreshAppStateUpdateRegistryAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216318);
  }

  return result;
}

uint64_t sub_24EBE27F0()
{
  v1 = (type metadata accessor for RefreshAppStateUpdateRegistryAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EBE28F0(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction();
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24EBE2954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for RefreshAppStateUpdateRegistryAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EBE2170(a1, v7, v1 + v6, v4);
}

uint64_t sub_24EBE2A48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

BOOL sub_24EBE2A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  ObjectType = swift_getObjectType();
  v14 = v6;
  v15 = v7;
  (*(a2 + 56))(&v14, ObjectType, a2);
  v10 = v9;
  v11 = swift_getObjectType();
  (*(v10 + 16))(&v14, v11, v10);
  if (v16 >> 60 == 7)
  {
    v12 = [v15 integerValue];
    sub_24E88D2AC(&v14);
    swift_unknownObjectRelease();
    return v12 < a4;
  }

  else
  {
    sub_24E88D2AC(&v14);
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_24EBE2B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F924B38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EBE2C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F924B38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_24EBE2D4C()
{
  sub_24F924B38();
  if (v0 <= 0x3F)
  {
    sub_24EBE2DF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EBE2DF0()
{
  if (!qword_27F22B108)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22B108);
    }
  }
}

uint64_t sub_24EBE2E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v56 = a3;
  v4 = sub_24F924E88();
  v40 = v4;
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v47 = *(a2 + 24);
  v44 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v49 = &v36 - v8;
  v9 = sub_24F924368();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v12 = sub_24F925108();
  v45 = AssociatedTypeWitness;
  v46 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_24F9254C8();
  v41 = v12;
  v13 = sub_24F924038();
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v61 = WitnessTable;
  v62 = v17;
  v37 = v13;
  v18 = swift_getWitnessTable();
  v39 = v18;
  v38 = sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0]);
  v57 = v13;
  v58 = v4;
  v59 = v18;
  v60 = v38;
  v42 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v36 = &v36 - v23;
  sub_24F924348();
  v24 = v49;
  sub_24F923F58();
  v25 = v15;
  v26 = v45;
  sub_24F926278();
  (*(v52 + 8))(v24, v26);
  (*(v50 + 8))(v11, v51);
  v27 = v53;
  sub_24F9243A8();
  v28 = v37;
  v29 = v40;
  v30 = v39;
  v31 = v38;
  sub_24F9261D8();
  (*(v55 + 8))(v27, v29);
  (*(v48 + 8))(v25, v28);
  v57 = v28;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v36;
  sub_24E7896B8(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v43 + 8);
  v34(v21, OpaqueTypeMetadata2);
  sub_24E7896B8(v33, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v34)(v33, OpaqueTypeMetadata2);
}

uint64_t sub_24EBE3450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v28 = a3;
  v27 = sub_24F924E88();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B110);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v12 = &v24 + *(v11 + 36) - v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B118);
  sub_24F924348();
  v14 = *(v3 + 4);
  v15 = *(a2 + 24);
  v16 = *(type metadata accessor for RoundedRectWithOutsets(0) + 24);
  v17 = sub_24F924B38();
  v18 = *(*(v17 - 8) + 16);
  v19 = *v3;
  v24 = v3[1];
  v25 = v19;
  v18(&v12[v16], v3 + v15, v17);
  v20 = v24;
  *v12 = v25;
  *(v12 + 1) = v20;
  *(v12 + 4) = v14;
  v12[*(v13 + 36)] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B120);
  (*(*(v21 - 8) + 16))(v10, v26, v21);
  sub_24F9243A8();
  sub_24EBE3704();
  sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0]);
  v22 = v27;
  sub_24F9261D8();
  (*(v5 + 8))(v7, v22);
  return sub_24EBE37E8(v10);
}

unint64_t sub_24EBE3704()
{
  result = qword_27F22B128;
  if (!qword_27F22B128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B110);
    sub_24E602068(&qword_27F22B130, &qword_27F22B120);
    sub_24E602068(&qword_27F22B138, &qword_27F22B118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B128);
  }

  return result;
}

uint64_t sub_24EBE37E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EBE3864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24F924B38();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EBE38F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24F924B38();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24EBE396C()
{
  result = sub_24F924B38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EBE39F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B110);
  sub_24F924E88();
  sub_24EBE3704();
  sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0]);
  return swift_getOpaqueTypeConformance2();
}

double sub_24EBE3AE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924B38();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(a1 + 24));
  sub_24F925AD8();
  result = *&v11;
  v9 = v12;
  *a2 = v11;
  *(a2 + 16) = v9;
  *(a2 + 32) = v13;
  return result;
}

void (*sub_24EBE3C34(uint64_t *a1))(void *a1)
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

uint64_t sub_24EBE3CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBE3EA8(qword_27F22B178, type metadata accessor for RoundedRectWithOutsets);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EBE3D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBE3EA8(qword_27F22B178, type metadata accessor for RoundedRectWithOutsets);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EBE3DE4(uint64_t a1)
{
  v2 = sub_24EBE3EA8(qword_27F22B178, type metadata accessor for RoundedRectWithOutsets);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24EBE3EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EBE3F38()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EBE3FC0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_24EBE4118(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_24EBE4348()
{
  type metadata accessor for ShapeHoverEffectModifier();
  swift_getWitnessTable();
  sub_24F925108();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24F9254C8();
  sub_24F924038();
  sub_24F924E88();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t MediumLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  sub_24EBE4664(a1, a9 + 280);
  sub_24E615E00(a2, a9);
  sub_24E60169C(a3, a9 + 40, &unk_27F22B200);
  sub_24E615E00(a4, a9 + 80);
  sub_24E615E00(a5, a9 + 120);
  sub_24E60169C(a6, a9 + 160, &unk_27F22B200);
  sub_24E615E00(a7, a9 + 200);
  __swift_project_boxed_opaque_existential_1(a8, a8[3]);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_24E601704(a6, &unk_27F22B200);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_24E601704(a3, &unk_27F22B200);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_24EBE469C(a1);
  return __swift_destroy_boxed_opaque_existential_1(a8);
}

uint64_t MediumLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleSpace:titleWithHeadingRegularSpace:titleWithHeadingShortSpace:subtitleRegularSpace:subtitleShortSpace:tertiaryTitleRegularSpace:tertiaryTitleShortSpace:offerTextRegularSpace:offerTextShortSpace:offerButtonTopMargin:offerButtonBottomMargin:offerButtonSize:layoutMargins:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21)
{
  v33 = *a2;
  *a9 = *a1;
  *(a9 + 8) = v33;
  sub_24E612C80(a3, a9 + 16);
  sub_24E612C80(a4, a9 + 56);
  sub_24E612C80(a5, a9 + 96);
  sub_24E612C80(a6, a9 + 136);
  sub_24E612C80(a7, a9 + 176);
  sub_24E612C80(a8, a9 + 216);
  sub_24E612C80(a16, a9 + 256);
  sub_24E612C80(a17, a9 + 296);
  sub_24E612C80(a18, a9 + 336);
  sub_24E612C80(a19, a9 + 376);
  sub_24E612C80(a20, a9 + 416);
  result = sub_24E612C80(a21, a9 + 456);
  *(a9 + 496) = a10;
  *(a9 + 504) = a11;
  *(a9 + 512) = a12;
  *(a9 + 520) = a13;
  *(a9 + 528) = a14;
  *(a9 + 536) = a15;
  return result;
}

uint64_t MediumLockupLayout.Metrics.artworkSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t MediumLockupLayout.Metrics.artworkMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t MediumLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t MediumLockupLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t MediumLockupLayout.Metrics.titleWithHeadingRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return sub_24E612C80(a1, v1 + 96);
}

uint64_t MediumLockupLayout.Metrics.titleWithHeadingShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 136);

  return sub_24E612C80(a1, v1 + 136);
}

uint64_t MediumLockupLayout.Metrics.subtitleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 176);

  return sub_24E612C80(a1, v1 + 176);
}

uint64_t MediumLockupLayout.Metrics.subtitleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 216);

  return sub_24E612C80(a1, v1 + 216);
}

uint64_t MediumLockupLayout.Metrics.tertiaryTitleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 256);

  return sub_24E612C80(a1, v1 + 256);
}

uint64_t MediumLockupLayout.Metrics.tertiaryTitleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 296);

  return sub_24E612C80(a1, v1 + 296);
}

uint64_t MediumLockupLayout.Metrics.offerTextRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 336);

  return sub_24E612C80(a1, v1 + 336);
}

uint64_t MediumLockupLayout.Metrics.offerTextShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 376);

  return sub_24E612C80(a1, v1 + 376);
}

uint64_t MediumLockupLayout.Metrics.offerButtonTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 416);

  return sub_24E612C80(a1, v1 + 416);
}

uint64_t MediumLockupLayout.Metrics.offerButtonBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 456);

  return sub_24E612C80(a1, v1 + 456);
}

void MediumLockupLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[64] = a1;
  v4[65] = a2;
  v4[66] = a3;
  v4[67] = a4;
}

uint64_t sub_24EBE5058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v139 = sub_24F922868();
  v6 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_24F9227F8();
  v144 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_24F922838();
  v151 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_24F922848();
  v11 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v143 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v127 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v127 - v16;
  MEMORY[0x28223BE20](v18);
  v142 = &v127 - v19;
  MEMORY[0x28223BE20](v20);
  v135 = &v127 - v21;
  sub_24E60169C((v2 + 5), &v169, &unk_27F22B200);
  if (!*(&v170 + 1))
  {
LABEL_5:
    sub_24E601704(&v169, &unk_27F22B200);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
  v22 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v169);
  if ((v22 & 1) == 0)
  {
    sub_24E60169C((v3 + 5), &v169, &unk_27F22B200);
    if (*(&v170 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
      v153 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v169);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v153 = 0;
LABEL_7:
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  if (sub_24F922238())
  {
    v155 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
    v155 = sub_24F9221E8();
  }

  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  if (sub_24F922238())
  {
    v141 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
    v141 = sub_24F9221E8();
  }

  sub_24E60169C((v3 + 20), &v169, &unk_27F22B200);
  if (!*(&v170 + 1))
  {
LABEL_17:
    sub_24E601704(&v169, &unk_27F22B200);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
  v23 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v169);
  if ((v23 & 1) == 0)
  {
    sub_24E60169C((v3 + 20), &v169, &unk_27F22B200);
    if (*(&v170 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
      v154 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v169);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_18:
  v154 = 0;
LABEL_19:
  v24 = sub_24F92BF78();
  v140 = v8;
  v137 = v17;
  v138 = v6;
  v150 = a1;
  if (v24)
  {
    v152 = 1;
  }

  else
  {
    v152 = sub_24F92BF98();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B258);
  v25 = swift_allocObject();
  v26 = v153;
  v25[32] = v153 & 1;
  v27 = v154;
  v28 = v155 & 1;
  v25[33] = v155 & 1;
  v29 = v27 & 1;
  v25[34] = v27 & 1;
  v30 = MEMORY[0x277D84F90];
  if (v26)
  {
    *&v169 = MEMORY[0x277D84F90];
    sub_24F4581EC(0, 1, 1);
    v30 = v169;
    v32 = *(v169 + 16);
    v31 = *(v169 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_24F4581EC((v31 > 1), v32 + 1, 1);
      v30 = v169;
    }

    *(v30 + 16) = v32 + 1;
    *(v30 + v32 + 32) = 1;
  }

  if (v155)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v169 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24F4581EC(0, *(v30 + 16) + 1, 1);
      v30 = v169;
    }

    v35 = *(v30 + 16);
    v34 = *(v30 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_24F4581EC((v34 > 1), v35 + 1, 1);
      v30 = v169;
    }

    *(v30 + 16) = v35 + 1;
    *(v30 + v35 + 32) = v28;
  }

  if (v154)
  {
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v169 = v30;
    if ((v36 & 1) == 0)
    {
      sub_24F4581EC(0, *(v30 + 16) + 1, 1);
      v30 = v169;
    }

    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_24F4581EC((v37 > 1), v38 + 1, 1);
      v30 = v169;
    }

    *(v30 + 16) = v38 + 1;
    *(v30 + v38 + 32) = v29;
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v39 = *(v30 + 16);

  if ((sub_24F92BF98() & 1) != 0 && v39 < 2)
  {
    if (v153)
    {
      sub_24E60169C((v3 + 5), &v169, &unk_27F22B200);
    }

    else
    {
      v171 = 0;
      v169 = 0u;
      v170 = 0u;
    }

    sub_24E615E00((v3 + 10), &v166);
    sub_24E615E00((v3 + 15), &v163);
    if (v154)
    {
      sub_24E60169C((v3 + 20), &v160, &unk_27F22B200);
    }

    else
    {
      v162 = 0;
      v160 = 0u;
      v161 = 0u;
    }

    v43 = 4 - v39;
    if (v155)
    {
      sub_24E615E00((v3 + 25), &v157);
    }

    else
    {
      v159 = 0;
      v157 = 0u;
      v158 = 0u;
    }

    a2[3] = &type metadata for MultilineTextLayout;
    a2[4] = sub_24EBE83DC();
    a2[5] = sub_24EBE8430();
    v44 = swift_allocObject();
    *a2 = v44;
    sub_24E615E00((v3 + 37), v44 + 216);
    sub_24E615E00((v3 + 42), v44 + 256);
    sub_24E615E00((v3 + 57), v44 + 296);
    sub_24E615E00((v3 + 67), v156);
    *(v44 + 336) = 0u;
    *(v44 + 352) = 0u;
    *(v44 + 368) = 0u;
    *(v44 + 384) = 0u;
    *(v44 + 400) = 0u;
    sub_24EA63A70(v156, v44 + 336);
    *(v44 + 416) = 2;
    *(v44 + 424) = v43;
    v45 = v170;
    *(v44 + 16) = v169;
    *(v44 + 32) = v45;
    *(v44 + 48) = v171;
    sub_24E612C80(&v166, v44 + 56);
    result = sub_24E612C80(&v163, v44 + 96);
    v46 = v161;
    *(v44 + 136) = v160;
    *(v44 + 152) = v46;
    *(v44 + 168) = v162;
    v47 = v158;
    *(v44 + 176) = v157;
    *(v44 + 192) = v47;
    *(v44 + 208) = v159;
    return result;
  }

  if (((v39 == 0) & v152) != 0)
  {
    sub_24E615E00((v3 + 10), &v169);
    sub_24E615E00((v3 + 15), &v166);
    sub_24E615E00((v3 + 42), &v163);
    sub_24E615E00((v3 + 57), &v160);
    sub_24E615E00((v3 + 57), &v157);
    v40 = sub_24F922B38();
    v41 = MEMORY[0x277D229C8];
    a2[3] = v40;
    a2[4] = v41;
    a2[5] = MEMORY[0x277D229D0];
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_24F922B28();
  }

  sub_24E60169C((v3 + 5), &v169, &unk_27F22B200);
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_24E601704(&v169, &unk_27F22B200);
  }

  sub_24E60169C((v3 + 5), &v169, &unk_27F22B200);
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
    sub_24F922458();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_24E601704(&v169, &unk_27F22B200);
  }

  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_24F922458();
  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  sub_24F922458();
  sub_24E60169C((v3 + 20), &v169, &unk_27F22B200);
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_24E601704(&v169, &unk_27F22B200);
  }

  sub_24E60169C((v3 + 20), &v169, &unk_27F22B200);
  v129 = v11;
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
    sub_24F922458();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_24E601704(&v169, &unk_27F22B200);
  }

  sub_24E60169C((v3 + 5), &v166, &unk_27F22B200);
  v48 = MEMORY[0x277D22848];
  if (v167)
  {
    sub_24E612C80(&v166, &v169);
    if (v153)
    {
      v49 = *(&v170 + 1);
      v50 = v171;
      v51 = __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
      v167 = v49;
      v168 = *(v50 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v166);
      (*(*(v49 - 8) + 16))(boxed_opaque_existential_1, v51, v49);
      v53 = *v48;
      v54 = v151;
      v56 = v145;
      v55 = v146;
      (*(v151 + 104))(v145, v53, v146);
      v57 = MEMORY[0x277D84F90];
      *&v163 = MEMORY[0x277D84F90];
      sub_24EBE8394(&qword_27F22B210, MEMORY[0x277D22838]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
      sub_24E8EF568();
      v58 = v147;
      v59 = v149;
      sub_24F92C6A8();
      sub_24F922818();
      (*(v144 + 8))(v58, v59);
      (*(v54 + 8))(v56, v55);
      __swift_destroy_boxed_opaque_existential_1(&v166);
      v60 = sub_24E6179D8(0, 1, 1, v57);
      v62 = v60[2];
      v61 = v60[3];
      if (v62 >= v61 >> 1)
      {
        v60 = sub_24E6179D8(v61 > 1, v62 + 1, 1, v60);
      }

      v60[2] = v62 + 1;
      (*(v129 + 32))(v60 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v62, v135, v148);
      __swift_destroy_boxed_opaque_existential_1(&v169);
      v48 = MEMORY[0x277D22848];
      goto LABEL_70;
    }

    __swift_destroy_boxed_opaque_existential_1(&v169);
    v60 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_24E601704(&v166, &unk_27F22B200);
    v60 = MEMORY[0x277D84F90];
    if (v153)
    {
LABEL_70:
      v63 = 52;
      if (v152 & 1 | ((v155 & 1) == 0))
      {
        v63 = 47;
      }

      goto LABEL_75;
    }
  }

  v63 = 42;
LABEL_75:
  sub_24E615E00(&v3[v63], &v169);
  v64 = v3[13];
  v65 = v3[14];
  v66 = __swift_project_boxed_opaque_existential_1(v3 + 10, v64);
  v167 = v64;
  v168 = *(v65 + 8);
  v67 = __swift_allocate_boxed_opaque_existential_1(&v166);
  (*(*(v64 - 8) + 16))(v67, v66, v64);
  v68 = *v48;
  v69 = v151;
  v70 = *(v151 + 104);
  v72 = v145;
  v71 = v146;
  LODWORD(v135) = v68;
  v150 = v151 + 104;
  v134 = v70;
  v70(v145);
  *&v163 = MEMORY[0x277D84F90];
  v73 = sub_24EBE8394(&qword_27F22B210, MEMORY[0x277D22838]);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
  v75 = sub_24E8EF568();
  v76 = v147;
  v131 = v75;
  v132 = v74;
  v77 = v149;
  v133 = v73;
  sub_24F92C6A8();
  sub_24F922818();
  v127 = *(v144 + 8);
  v127(v76, v77);
  v78 = *(v69 + 8);
  v151 = v69 + 8;
  v130 = v78;
  v78(v72, v71);
  __swift_destroy_boxed_opaque_existential_1(&v166);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_24E6179D8(0, v60[2] + 1, 1, v60);
  }

  v80 = v60[2];
  v79 = v60[3];
  if (v80 >= v79 >> 1)
  {
    v60 = sub_24E6179D8(v79 > 1, v80 + 1, 1, v60);
  }

  v60[2] = v80 + 1;
  v81 = v129 + 32;
  v82 = *(v129 + 32);
  v129 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v128 = *(v81 + 40);
  v83 = v142;
  v142 = v82;
  (v82)(v60 + v129 + v128 * v80, v83, v148);
  if (v141)
  {
    v84 = 62;
    if (v152 & 1 | (((v155 | v154) & 1) == 0))
    {
      v84 = 57;
    }

    sub_24E615E00(&v3[v84], &v166);
    v85 = v3[18];
    v86 = v3[19];
    v87 = __swift_project_boxed_opaque_existential_1(v3 + 15, v85);
    v164 = v85;
    v165 = *(v86 + 8);
    v88 = __swift_allocate_boxed_opaque_existential_1(&v163);
    (*(*(v85 - 8) + 16))(v88, v87, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_24F93DE60;
    sub_24F9227E8();
    *&v160 = v89;
    v90 = v147;
    v91 = v149;
    sub_24F92C6A8();
    v93 = v145;
    v92 = v146;
    v134(v145, v135, v146);
    sub_24F922818();
    v130(v93, v92);
    v94 = v127;
    v127(v90, v91);
    __swift_destroy_boxed_opaque_existential_1(&v163);
    v96 = v60[2];
    v95 = v60[3];
    if (v96 >= v95 >> 1)
    {
      v60 = sub_24E6179D8(v95 > 1, v96 + 1, 1, v60);
    }

    __swift_destroy_boxed_opaque_existential_1(&v166);
    v60[2] = v96 + 1;
    (v142)(v60 + v129 + v96 * v128, v137, v148);
  }

  else
  {
    v94 = v127;
  }

  sub_24E60169C((v3 + 20), &v163, &unk_27F22B200);
  if (v164)
  {
    sub_24E612C80(&v163, &v166);
    if (v154)
    {
      v97 = 72;
      if (v152 & 1 | ((((v141 | v155) | v153) & 1) == 0))
      {
        v97 = 67;
      }

      sub_24E615E00(&v3[v97], &v163);
      v98 = v167;
      v99 = v168;
      v100 = __swift_project_boxed_opaque_existential_1(&v166, v167);
      *(&v161 + 1) = v98;
      v162 = *(v99 + 8);
      v101 = __swift_allocate_boxed_opaque_existential_1(&v160);
      (*(*(v98 - 8) + 16))(v101, v100, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_24F93DE60;
      sub_24F9227E8();
      *&v157 = v102;
      v103 = v147;
      v104 = v149;
      sub_24F92C6A8();
      v106 = v145;
      v105 = v146;
      v134(v145, v135, v146);
      sub_24F922818();
      v107 = v106;
      v94 = v127;
      v130(v107, v105);
      v94(v103, v104);
      __swift_destroy_boxed_opaque_existential_1(&v160);
      v109 = v60[2];
      v108 = v60[3];
      if (v109 >= v108 >> 1)
      {
        v60 = sub_24E6179D8(v108 > 1, v109 + 1, 1, v60);
      }

      __swift_destroy_boxed_opaque_existential_1(&v163);
      v60[2] = v109 + 1;
      (v142)(v60 + v129 + v109 * v128, v136, v148);
    }

    __swift_destroy_boxed_opaque_existential_1(&v166);
  }

  else
  {
    sub_24E601704(&v163, &unk_27F22B200);
  }

  v110 = 82;
  if (v152 & 1 | ((v153 & 1) == 0))
  {
    v110 = 77;
  }

  sub_24E615E00(&v3[v110], &v166);
  v111 = v3[28];
  v112 = v3[29];
  v113 = __swift_project_boxed_opaque_existential_1(v3 + 25, v111);
  v164 = v111;
  v165 = *(v112 + 8);
  v114 = __swift_allocate_boxed_opaque_existential_1(&v163);
  (*(*(v111 - 8) + 16))(v114, v113, v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_24F93DE60;
  sub_24F9227E8();
  *&v160 = v115;
  v116 = v147;
  v117 = v149;
  sub_24F92C6A8();
  v119 = v145;
  v118 = v146;
  v134(v145, v135, v146);
  sub_24F922818();
  v130(v119, v118);
  v94(v116, v117);
  __swift_destroy_boxed_opaque_existential_1(&v163);
  v121 = v60[2];
  v120 = v60[3];
  if (v121 >= v120 >> 1)
  {
    v60 = sub_24E6179D8(v120 > 1, v121 + 1, 1, v60);
  }

  v123 = v139;
  v122 = v140;
  v124 = v138;
  v60[2] = v121 + 1;
  (v142)(v60 + v129 + v121 * v128, v143, v148);
  (*(v124 + 104))(v122, *MEMORY[0x277D22868], v123);
  v164 = sub_24F922418();
  v165 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v163);
  sub_24F922408();
  v125 = sub_24F922888();
  v126 = MEMORY[0x277D22878];
  a2[3] = v125;
  a2[4] = v126;
  a2[5] = MEMORY[0x277D22880];
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_24F922878();
  __swift_destroy_boxed_opaque_existential_1(&v166);
  return __swift_destroy_boxed_opaque_existential_1(&v169);
}

uint64_t MediumLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v121 = a2;
  v115 = sub_24F922938();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v111 = &v84 - v7;
  v116 = sub_24F922998();
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v110 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_24F9227B8();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9227C8();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v107 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F9227F8();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v100 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_24F922838();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F922868();
  v90 = *(v15 - 8);
  v91 = v15;
  MEMORY[0x28223BE20](v15);
  v117 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F922888();
  v119 = *(v17 - 8);
  v120 = v17;
  MEMORY[0x28223BE20](v17);
  v118 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F92CDB8();
  v86 = *(v19 - 8);
  v87 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F922A98();
  v92 = *(v22 - 8);
  v93 = v22;
  MEMORY[0x28223BE20](v22);
  v94 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F922AA8();
  v96 = *(v24 - 8);
  v97 = v24;
  MEMORY[0x28223BE20](v24);
  v95 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F9223F8();
  v27 = *(v26 - 8);
  v88 = v26;
  v89 = v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v84 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v84 - v34;
  sub_24F92C1C8();
  v37 = v36;
  v39 = v38;
  v40 = [a1 traitCollection];
  sub_24EBE5058(v40, v136);

  v41 = *(v2 + 35);
  v130[0] = a1;
  (*(*v41 + 104))(v131, v130);
  v42 = *v131;
  v43 = *&v131[1];
  v44 = *(v3 + 36);
  v130[0] = a1;
  (*(*v44 + 104))(v131, v130);
  v45 = v131[0];
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
  sub_24F922268();
  v122 = a1;
  v46 = [a1 traitCollection];
  LOBYTE(v40) = sub_24F92BF98();

  if (v40)
  {
    sub_24F9223D8();
    __swift_project_boxed_opaque_existential_1(v135, v135[3]);
    sub_24F9222B8();
    v120 = sub_24F922AE8();
    v132 = v120;
    v133 = MEMORY[0x277D22998];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v131);
    Resize.init(_:size:)(v130, boxed_opaque_existential_1, v42, v43);
    sub_24F9223E8();
    v48 = v88;
    v49 = v89;
    v85 = v35;
    v50 = *(v89 + 8);
    v50(v29, v88);
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_1(v131);
    __swift_project_boxed_opaque_existential_1(v136, v136[3]);
    sub_24F9222B8();
    sub_24F9223E8();
    __swift_destroy_boxed_opaque_existential_1(v131);
    v50(v32, v48);
    __swift_project_boxed_opaque_existential_1(v3 + 30, *(v3 + 33));
    sub_24F9222B8();
    v52 = v3[97];
    v53 = v3[98];
    v54 = v120;
    v132 = v120;
    v55 = MEMORY[0x277D22998];
    v133 = MEMORY[0x277D22998];
    v56 = __swift_allocate_boxed_opaque_existential_1(v131);
    Resize.init(_:size:)(v130, v56, v52, v53);
    (*(v92 + 104))(v94, *MEMORY[0x277D22948], v93);
    v128 = v48;
    v129 = MEMORY[0x277D226E0];
    v57 = __swift_allocate_boxed_opaque_existential_1(v127);
    v58 = v85;
    (*(v49 + 16))(v57, v85, v48);
    v130[3] = v54;
    v130[4] = v55;
    v59 = __swift_allocate_boxed_opaque_existential_1(v130);
    Resize.init(_:size:)(v127, v59, v37, v39);
    v60 = v95;
    sub_24F922AB8();
    v61 = [v122 traitCollection];
    sub_24EBE7594(v61);

    sub_24F922128();
    (*(v96 + 8))(v60, v97);
    v51(v58, v48);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 92, *(v3 + 95));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v63 = v62;
    (*(v86 + 8))(v21, v87);
    (*(v90 + 104))(v117, *MEMORY[0x277D22870], v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740);
    sub_24F922848();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v64 = v63 + v3[98];
    v132 = MEMORY[0x277D85048];
    v133 = MEMORY[0x277D225F8];
    *v131 = v64;
    v66 = v98;
    v65 = v99;
    v67 = v101;
    (*(v99 + 104))(v98, *MEMORY[0x277D22848], v101);
    v130[0] = MEMORY[0x277D84F90];
    sub_24EBE8394(&qword_27F22B210, MEMORY[0x277D22838]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
    sub_24E8EF568();
    v68 = v100;
    v69 = v103;
    sub_24F92C6A8();
    sub_24F922818();
    (*(v102 + 8))(v68, v69);
    (*(v65 + 8))(v66, v67);
    __swift_destroy_boxed_opaque_existential_1(v131);
    v70 = sub_24F922418();
    v71 = MEMORY[0x277D226F0];
    v132 = v70;
    v133 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v131);
    sub_24F922408();
    v72 = v118;
    sub_24F922878();
    v73 = v120;
    v132 = v120;
    v133 = MEMORY[0x277D22878];
    v134 = MEMORY[0x277D22880];
    v74 = __swift_allocate_boxed_opaque_existential_1(v131);
    (*(v119 + 16))(v74, v72, v73);
    sub_24E8F997C(v136, v130);
    (*(v104 + 104))(v105, *MEMORY[0x277D22828], v106);
    sub_24E615E00((v3 + 87), v127);
    v75 = v107;
    sub_24F9227A8();
    v76 = v109;
    v132 = v109;
    v133 = MEMORY[0x277D22830];
    v77 = __swift_allocate_boxed_opaque_existential_1(v131);
    v78 = v108;
    (*(v108 + 16))(v77, v75, v76);
    sub_24E615E00(v135, v130);
    v128 = MEMORY[0x277D85048];
    v129 = MEMORY[0x277D225F8];
    v127[0] = v45;
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v123[3] = v70;
    v123[4] = v71;
    __swift_allocate_boxed_opaque_existential_1(v123);
    sub_24F922408();
    v79 = *MEMORY[0x277D228C8];
    v80 = *(v112 + 104);
    v81 = v115;
    v80(v111, v79, v115);
    v80(v114, v79, v81);
    v82 = v110;
    sub_24F922978();
    sub_24F922958();
    (*(v113 + 8))(v82, v116);
    (*(v78 + 8))(v75, v76);
    (*(v119 + 8))(v118, v120);
  }

  __swift_destroy_boxed_opaque_existential_1(v135);
  return __swift_destroy_boxed_opaque_existential_1(v136);
}

uint64_t sub_24EBE7594(void *a1)
{
  v2 = sub_24F922C78();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B238);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_24F922A88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_24F922AA8();
  sub_24EBE8394(&qword_27F22B240, MEMORY[0x277D22968]);
  v31 = a1;
  sub_24F9225C8();
  v25 = v17;
  v26 = v9;
  (*(v9 + 16))(v11, v17, v8);
  v18 = MEMORY[0x277D22930];
  sub_24EBE8394(&qword_27F22B248, MEMORY[0x277D22930]);
  sub_24F92B3F8();
  sub_24EBE8394(&qword_27F22B250, v18);
  sub_24F92C4D8();
  v19 = v32;
  v20 = v32 + 48;
  v21 = *(v32 + 48);
  if (v21(v7, 1, v2) != 1)
  {
    v22 = *(v19 + 32);
    v32 = v19 + 32;
    v27 = (v19 + 8);
    v28 = v22;
    v29 = v7;
    v30 = v20;
    do
    {
      v28(v4, v7, v2);
      sub_24F922C58();
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_24F922C68();
      [v31 layoutDirection];
      sub_24F92C1E8();
      v7 = v29;
      sub_24F922C38();
      (*v27)(v4, v2);
      __swift_destroy_boxed_opaque_existential_1(v33);
      sub_24F92C4D8();
    }

    while (v21(v7, 1, v2) != 1);
  }

  v23 = *(v26 + 8);
  v23(v14, v8);
  return (v23)(v25, v8);
}

uint64_t sub_24EBE7A40(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EBE8340();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit18MediumLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *a1, void *a2)
{
  v20 = sub_24F92CDB8();
  v4 = *(v20 - 8);
  *&v5 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = sub_24F92BF98();
  v19 = v4;
  if (v9)
  {
    sub_24E615E00((a1 + 2), v23);
    sub_24E615E00((a1 + 7), v24);
    sub_24E615E00((a1 + 22), v25);
    sub_24E615E00((a1 + 32), v21);
    memset(v26, 0, sizeof(v26));
    sub_24EA63A70(v21, v26);
    v27 = xmmword_24F93A400;
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_24F9223B8();
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_24F9223B8();
    sub_24E60169C(&v26[40], v21, &qword_27F22F780);
    if (v22)
    {
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_24F9223B8();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_24E601704(v21, &qword_27F22F780);
    }

    sub_24EBE8534(v23);
  }

  else
  {
    v18 = v8;
    v10 = sub_24F92BF78();
    __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
    v11 = v20;
    sub_24E8ED7D8();
    sub_24F9223A8();
    v12 = *(v4 + 8);
    v12(v7, v11);
    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(a1 + 22, a1[25]);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1 + 27, a1[30]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v12(v7, v11);
      __swift_project_boxed_opaque_existential_1(a1 + 42, a1[45]);
    }

    sub_24E8ED7D8();
    sub_24F9223A8();
    v12(v7, v11);
    v8 = v18;
  }

  __swift_project_boxed_opaque_existential_1(a1 + 52, a1[55]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v13 = *(v19 + 8);
  v13(v7, v20);
  v14 = *a1;
  v21[0] = a2;
  (*(*v14 + 104))(v23, v21);
  if (sub_24F92BF98())
  {
    v23[0] = a1[1];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a2, v7);
    v13(v7, v20);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1 + 57, a1[60]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v13(v7, v20);
  }

  sub_24F92C248();
  v16 = v15;

  return v16;
}

unint64_t sub_24EBE8044()
{
  result = qword_27F22B228;
  if (!qword_27F22B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B228);
  }

  return result;
}

uint64_t sub_24EBE80A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 824))
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

uint64_t sub_24EBE80E8(uint64_t result, int a2, int a3)
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
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
      *(result + 824) = 1;
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

    *(result + 824) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EBE8218(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 544))
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

uint64_t sub_24EBE8260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
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
      *(result + 544) = 1;
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

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EBE8340()
{
  result = qword_27F22B230;
  if (!qword_27F22B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B230);
  }

  return result;
}

uint64_t sub_24EBE8394(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EBE83DC()
{
  result = qword_27F22B268;
  if (!qword_27F22B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B268);
  }

  return result;
}

unint64_t sub_24EBE8430()
{
  result = qword_27F22B270;
  if (!qword_27F22B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B270);
  }

  return result;
}

uint64_t sub_24EBE8484()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 37));
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 42));
  }

  if (v0[50])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 47));
  }

  return swift_deallocObject();
}

uint64_t sub_24EBE85A8(uint64_t a1)
{
  v2 = sub_24EBE8734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBE85E4(uint64_t a1)
{
  v2 = sub_24EBE8734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayActiveCallPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B278);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBE8734();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EBE8734()
{
  result = qword_27F22B280;
  if (!qword_27F22B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B280);
  }

  return result;
}

uint64_t sub_24EBE87D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B278);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBE8734();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EBE8908()
{
  result = qword_27F22B288;
  if (!qword_27F22B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B288);
  }

  return result;
}

unint64_t sub_24EBE8960()
{
  result = qword_27F22B290;
  if (!qword_27F22B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B290);
  }

  return result;
}

uint64_t ArcadeFooter.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeFooter.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ArcadeFooter.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v69 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = v68 - v6;
  v82 = sub_24F9285B8();
  v7 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = v68 - v12;
  v13 = sub_24F91F6B8();
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = v68 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v68 - v22;
  sub_24F928398();
  v24 = sub_24F928348();
  v88 = v16;
  if (v25)
  {
    v83 = v24;
    v84 = v25;
    sub_24F92C7F8();
    v26 = *(v17 + 8);
    v81 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27 = v23;
    v28 = v16;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v30 = v13;
    v32 = v31;
    (*(v81 + 8))(v15, v30);
    v83 = v29;
    v84 = v32;
    sub_24F92C7F8();
    v26 = *(v17 + 8);
    v81 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27 = v23;
    v28 = v88;
  }

  v78 = v26;
  v26(v27, v28);
  v76 = a1;
  v33 = v86;
  *(v3 + 3) = v85;
  *(v3 + 4) = v33;
  v3[10] = v87;
  v72 = sub_24F929608();
  v34 = v75;
  sub_24F928398();
  v71 = v7;
  v35 = *(v7 + 16);
  v36 = v79;
  v37 = v82;
  v35(v77, v79, v82);
  v38 = v70;
  sub_24F929548();
  v72 = OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics;
  sub_24E65E0D4(v38, v3 + OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics);
  v39 = v80;
  v35(v80, v36, v37);
  type metadata accessor for Action();
  v40 = v76;
  sub_24F928398();
  v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v34, v39);
  v42 = v78;
  v78(v34, v88);
  v43 = v42;
  v3[2] = v41;
  type metadata accessor for Footnote();
  sub_24F928398();
  v35(v77, v36, v82);
  sub_24EBE99C8(&qword_27F22B298, type metadata accessor for Footnote);
  sub_24F929548();
  v3[3] = v85;
  v44 = v73;
  sub_24F928398();
  v45 = v74;
  sub_24F9282B8();
  v43(v44, v88);
  v46 = sub_24F92AC28();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v45, 1, v46);
  if (v48 == 1)
  {
    sub_24E601704(v45, &qword_27F2213B0);
    v3[4] = 0;
    v49 = sub_24F92AC38();
    sub_24EBE99C8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v50 = MEMORY[0x277D84F90];
    *v51 = v69;
    v51[1] = v50;
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D22538], v49);
    swift_willThrow();
    v52 = *(v71 + 8);
    v53 = v82;
    v52(v79, v82);
    v78(v40, v88);
    v52(v80, v53);

    sub_24E6585F8((v3 + 6));
    sub_24E601704(v3 + v72, &qword_27F213E68);
    type metadata accessor for ArcadeFooter();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v55 = v71;
  v54 = v72;
  MEMORY[0x28223BE20](v48);
  v68[-2] = v80;
  type metadata accessor for ImpressionableArtwork();
  v56 = v68[1];
  v57 = sub_24F92ABB8();
  v77 = v56;
  if (!v56)
  {
    v58 = v57;
    (*(v47 + 8))(v45, v46);
    v3[4] = v58;
    v60 = v75;
    v59 = v76;
    sub_24F928398();
    v61 = JSONObject.appStoreColor.getter();
    v62 = *(v55 + 8);
    v63 = v82;
    v62(v79, v82);
    v64 = v59;
    v65 = v88;
    v66 = v78;
    v78(v64, v88);
    v66(v60, v65);
    v3[5] = v61;
    v62(v80, v63);
    return v3;
  }

  sub_24E6585F8((v3 + 6));
  sub_24E601704(v3 + v54, &qword_27F213E68);
  type metadata accessor for ArcadeFooter();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ArcadeFooter()
{
  result = qword_27F22B2B0;
  if (!qword_27F22B2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBE93E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EBE99C8(&qword_27F225B18, type metadata accessor for ImpressionableArtwork);
  return sub_24F929548();
}

void *ArcadeFooter.backgroundColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *sub_24EBE961C()
{
  result = *(v0 + 32);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t ArcadeFooter.deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t ArcadeFooter.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EBE97B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArcadeFooter();
  v7 = swift_allocObject();
  result = ArcadeFooter.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *sub_24EBE981C()
{
  result = *(*v0 + 32);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t sub_24EBE9840(uint64_t a1)
{
  result = sub_24EBE99C8(&qword_27F22B2A8, type metadata accessor for ArcadeFooter);
  *(a1 + 8) = result;
  return result;
}

void sub_24EBE98B8()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EBE99C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppEventSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v78 = sub_24F91F6B8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v92 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v89 = sub_24F928388();
  v91 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v79 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v73 - v12;
  MEMORY[0x28223BE20](v13);
  v82 = &v73 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  sub_24F929608();
  sub_24F928398();
  v87 = v5;
  v25 = *(v5 + 16);
  v26 = v9;
  v27 = v9;
  v28 = v4;
  v25(v27, a2, v4);
  v88 = v24;
  sub_24F929548();
  v29 = v92;
  v90 = a2;
  v25(v92, a2, v28);
  type metadata accessor for MixedMediaLockup();
  sub_24F928398();
  v93 = v28;
  v25(v26, v29, v28);
  sub_24EBEB938(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup);
  v30 = v17;
  sub_24F929548();
  if (!v102[0])
  {
    v43 = sub_24F92AC38();
    sub_24EBEB938(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v44 = 0x70756B636F6CLL;
    v45 = v86;
    v44[1] = 0xE600000000000000;
    v44[2] = v45;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    v40 = v87 + 8;
    v46 = *(v87 + 8);
    v47 = v93;
    v46(v90, v93);
    (*(v91 + 8))(v94, v89);
    v46(v29, v47);
LABEL_7:
    sub_24E601704(v88, &qword_27F213E68);
    return v40;
  }

  v31 = v86;
  v80 = v102[0];
  type metadata accessor for AppEvent();
  sub_24F928398();
  v74 = v25;
  v25(v26, v29, v93);
  sub_24EBEB938(&qword_27F225728, type metadata accessor for AppEvent);
  sub_24F929548();
  if (!v102[0])
  {
    v48 = sub_24F92AC38();
    sub_24EBEB938(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v49 = 0x746E657645707061;
    v49[1] = 0xE800000000000000;
    v49[2] = v31;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();

    v50 = *(v87 + 8);
    v40 = v93;
    v50(v90, v93);
    (*(v91 + 8))(v94, v89);
    v50(v29, v40);
    goto LABEL_7;
  }

  v73 = v26;
  v75 = v102[0];
  v32 = v82;
  v33 = v94;
  sub_24F928398();
  v34 = sub_24F928278();
  v35 = v91 + 8;
  v36 = *(v91 + 8);
  v37 = v89;
  v36(v32, v89);
  v38 = v83;
  sub_24F928398();
  sub_24EABA874();
  v39 = v84;
  sub_24F928218();
  v86 = v39;
  if (v39)
  {

    v40 = v38;
    v41 = *(v87 + 8);
    v42 = v93;
    v41(v90, v93);
    v36(v33, v37);
    v36(v40, v37);
    v41(v92, v42);
    sub_24E601704(v88, &qword_27F213E68);
  }

  else
  {
    LODWORD(v82) = v34;
    v36(v38, v37);
    LODWORD(v84) = LOBYTE(v102[0]);
    v51 = v79;
    sub_24F928398();
    v52 = sub_24F928348();
    v54 = v37;
    v55 = v92;
    if (v53)
    {
      v100 = v52;
      v101 = v53;
    }

    else
    {
      v56 = v76;
      sub_24F91F6A8();
      v91 = sub_24F91F668();
      v58 = v57;
      (*(v77 + 8))(v56, v78);
      v100 = v91;
      v101 = v58;
      v55 = v92;
    }

    sub_24F92C7F8();
    v36(v51, v54);
    v59 = type metadata accessor for Action();
    sub_24F928398();
    v60 = static Action.tryToMakeInstance(byDeserializing:using:)(v30, v55);
    v91 = v35;
    v36(v30, v54);
    sub_24E60169C(v88, v85, &qword_27F213E68);
    type metadata accessor for SearchAdOpportunity();
    sub_24F928398();
    v74(v73, v90, v93);
    sub_24EBEB938(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
    sub_24F929548();
    v83 = v102[7];
    type metadata accessor for AppEventSearchResult();
    v40 = swift_allocObject();
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup) = v80;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) = v75;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) = v82 & 1;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_clickAction) = v60;
    sub_24E60169C(v102, &v100, &qword_27F235830);
    if (v60)
    {
      v82 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action);
    }

    else
    {
      v59 = 0;
      v82 = 0;
    }

    v61 = v87;
    v87 = v59;
    sub_24E60169C(v85, v81, &qword_27F213E68);
    *(v40 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v100, &v97, &qword_27F235830);
    v62 = v90;
    if (*(&v98 + 1))
    {
      v63 = v98;
      *(v40 + 24) = v97;
      *(v40 + 40) = v63;
      *(v40 + 56) = v99;
    }

    else
    {

      v64 = v76;
      sub_24F91F6A8();
      v65 = sub_24F91F668();
      v67 = v66;
      (*(v77 + 8))(v64, v78);
      v95 = v65;
      v96 = v67;
      sub_24F92C7F8();
      sub_24E601704(&v97, &qword_27F235830);
    }

    v68 = *(v61 + 8);
    v69 = v93;
    v68(v62, v93);
    v36(v94, v89);
    sub_24E601704(&v100, &qword_27F235830);
    sub_24E601704(v85, &qword_27F213E68);
    sub_24E601704(v102, &qword_27F235830);
    v68(v92, v69);
    sub_24E601704(v88, &qword_27F213E68);
    *(v40 + 64) = v60;
    *(v40 + 72) = 0;
    v70 = v87;
    *(v40 + 80) = 0;
    *(v40 + 88) = v70;
    *(v40 + 96) = v82;
    sub_24E65E0D4(v81, v40 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(v40 + 17) = 6;
    *(v40 + 16) = v84;
    v71 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v40 + v71) = v83;
  }

  return v40;
}

uint64_t sub_24EBEA878()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EBEA8DC@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppEventSearchResult();
  *a1 = v1;
}

uint64_t sub_24EBEA920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent);
  *(v1 + 16) = xmmword_24F93DE60;
  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v1 + 56) = type metadata accessor for Lockup();
  *(v1 + 64) = sub_24EBEB938(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v1 + 32) = v3;

  return v1;
}

void sub_24EBEA9DC(char *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t AppEventSearchResult.__allocating_init(id:lockup:appEvent:alwaysShowAppEvent:clickAction:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v38 = a7;
  v14 = sub_24F91F6B8();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v35 - v18;
  v20 = swift_allocObject();
  v21 = *a6;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup) = a2;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) = a3;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) = a4;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_clickAction) = a5;
  sub_24E60169C(a1, v44, &qword_27F235830);
  if (a5)
  {
    v22 = type metadata accessor for Action();
    v23 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v38;
  sub_24E60169C(v38, v19, &qword_27F213E68);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v44, &v41, &qword_27F235830);
  if (*(&v42 + 1))
  {
    v25 = v42;
    *(v20 + 24) = v41;
    *(v20 + 40) = v25;
    *(v20 + 56) = v43;
  }

  else
  {

    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v14;
    v28 = v22;
    v29 = v21;
    v30 = a1;
    v32 = v31;
    (*(v36 + 8))(v16, v27);
    v39 = v26;
    v40 = v32;
    v24 = v38;
    a1 = v30;
    v21 = v29;
    v22 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830);
  }

  sub_24E601704(v24, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v44, &qword_27F235830);
  *(v20 + 64) = a5;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = v22;
  *(v20 + 96) = v23;
  sub_24E65E0D4(v19, v20 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v20 + 17) = 6;
  *(v20 + 16) = v21;
  v33 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v20 + v33) = v37;
  return v20;
}

uint64_t AppEventSearchResult.init(id:lockup:appEvent:alwaysShowAppEvent:clickAction:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v35 = a8;
  v36 = a7;
  v16 = sub_24F91F6B8();
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v32 - v20;
  v34 = *a6;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup) = a2;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) = a3;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) = a4;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_clickAction) = a5;
  sub_24E60169C(a1, v45, &qword_27F235830);
  if (a5)
  {
    v22 = type metadata accessor for Action();
    v23 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v36;
  sub_24E60169C(v36, v21, &qword_27F213E68);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v45, &v39, &qword_27F235830);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {

    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = a1;
    v28 = v27;
    (*(v33 + 8))(v18, v16);
    v37 = v25;
    v38 = v28;
    v24 = v36;
    a1 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(v24, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v45, &qword_27F235830);
  v29 = v43;
  *(v9 + 24) = v42;
  *(v9 + 40) = v29;
  *(v9 + 56) = v44;
  *(v9 + 64) = a5;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = v22;
  *(v9 + 96) = v23;
  sub_24E65E0D4(v21, v9 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v9 + 17) = 6;
  *(v9 + 16) = v34;
  v30 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v9 + v30) = v35;

  return v9;
}

uint64_t type metadata accessor for AppEventSearchResult()
{
  result = qword_27F22B2D0;
  if (!qword_27F22B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBEB168()
{
  v25 = sub_24F91F6B8();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  sub_24E65864C(v0 + 24, v33);
  v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);
  v26 = *(v0 + 16);
  sub_24E60169C(v9 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v8, &qword_27F213E68);
  v10 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  v11 = *(v0 + v10);
  type metadata accessor for AppSearchResult();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = v9;
  swift_beginAccess();
  *(v12 + v13) = 1;
  sub_24E60169C(v33, v32, &qword_27F235830);
  v14 = *(v9 + 264);
  if (v14)
  {
    v15 = type metadata accessor for Action();
    v16 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  sub_24E60169C(v8, v5, &qword_27F213E68);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v32, &v29, &qword_27F235830);
  if (*(&v30 + 1))
  {
    v17 = v30;
    *(v12 + 24) = v29;
    *(v12 + 40) = v17;
    *(v12 + 56) = v31;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v24 + 8))(v2, v25);
    v27 = v18;
    v28 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  sub_24E601704(v32, &qword_27F235830);
  sub_24E601704(v8, &qword_27F213E68);
  sub_24E601704(v33, &qword_27F235830);
  *(v12 + 64) = v14;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = v15;
  *(v12 + 96) = v16;
  sub_24E65E0D4(v5, v12 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v12 + 17) = 0;
  *(v12 + 16) = v26;
  v21 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v12 + v21) = v11;
  return v12;
}

uint64_t sub_24EBEB5A4()
{
}

uint64_t AppEventSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t AppEventSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EBEB7A4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppEventSearchResult();
  *a1 = v3;
}

uint64_t sub_24EBEB7EC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v2 + 56) = type metadata accessor for Lockup();
  *(v2 + 64) = sub_24EBEB938(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

void sub_24EBEB8AC(char *a1@<X8>)
{
  if (*(*v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t sub_24EBEB8E0(uint64_t a1)
{
  result = sub_24EBEB938(&qword_27F22B2C8, type metadata accessor for AppEventSearchResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EBEB938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EBEB980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBEB9D8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t AnnotationViewModel.init(annotation:forceExpanded:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_24EA4AD18(a1, a3);
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  result = sub_24EA4AD74(a1);
  *(a3 + 152) = v6;
  return result;
}

double AnnotationViewModel.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24EBEBC44(v1 + 112, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24EBEBC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22B2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBEBCB4()
{
  result = v0[3];
  if (result)
  {
    v2 = v0[2];
LABEL_10:

    return v2;
  }

  v3 = v0[4];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_9:
    v2 = 0;
    goto LABEL_10;
  }

  v4 = v0[3];
  v5 = sub_24F92C738();
  result = v4;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v2 = *(MEMORY[0x253052270](0, v3) + 40);

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(*(v3 + 32) + 40);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

BOOL AnnotationViewModel.canBeExpanded.getter()
{
  if (*(v0 + 152))
  {
    return 0;
  }

  if (*(v0 + 24))
  {
    return 1;
  }

  v2 = *(v0 + 32);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if (sub_24F92C738() > 1)
    {
      return 1;
    }

    v4 = sub_24EBEBCB4();
    v6 = v11;
    if (sub_24F92C738())
    {
      goto LABEL_8;
    }

LABEL_19:
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
  {
    return 1;
  }

  v4 = sub_24EBEBCB4();
  v6 = v5;
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x253052270](0, v2);
    v9 = *(v12 + 40);
    v8 = *(v12 + 48);

    v3 = v2 >> 62;
    swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = *(v2 + 32);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);

  if (!v6)
  {
LABEL_22:
    if (!v8)
    {
      goto LABEL_24;
    }

LABEL_23:

    return 1;
  }

LABEL_11:
  if (!v8)
  {
    goto LABEL_23;
  }

  if (v4 == v9 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_24:
  if (v3)
  {
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(*(v2 + 32) + 72);
        if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
        {
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return 1;
          }

          goto LABEL_33;
        }
      }

      else
      {
        __break(1u);
      }

      goto LABEL_41;
    }

LABEL_36:
    v16 = *(MEMORY[0x253052270](0, v2) + 72);

    swift_unknownObjectRelease();
    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_42;
    }

LABEL_41:
    v17 = sub_24F92C738();
LABEL_42:

    if (v17)
    {
      return 1;
    }
  }

LABEL_33:
  v15 = *(v0 + 56);
  if (!v15)
  {
    return 0;
  }

  return *(v15 + 24) != 0;
}

double sub_24EBEC00C@<D0>(uint64_t a1@<X8>)
{
  sub_24EBEBC44(v1 + 112, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24EBEC088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_24EBEC0D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PresentPromptActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PresentPromptAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24EBF1DF4(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PresentPromptAction);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  sub_24EBEE8D8(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F98B1B0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EBEC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  v5 = sub_24F928AE8();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = type metadata accessor for PresentPromptV2ActionIntent();
  v4[35] = swift_task_alloc();
  v6 = sub_24F9294C8();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBEC4F4, 0, 0);
}

uint64_t sub_24EBEC4F4()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[28];
  v5 = *(type metadata accessor for PresentPromptAction() + 20);
  v6 = *(v2 + 16);
  v0[39] = v6;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_24EBEC5D4;
  v8 = v0[38];

  return sub_24EBF12C0(v8);
}

uint64_t sub_24EBEC5D4()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBEC8E4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[43] = v3;
    v4 = type metadata accessor for PresentPromptActionImplementation();
    v2[44] = v4;
    *v3 = v2;
    v3[1] = sub_24EBEC76C;
    v5 = v2[38];
    v6 = v2[29];

    return sub_24EBEEA58(v5, v6, v4);
  }
}

uint64_t sub_24EBEC76C()
{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBEDCD0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[46] = v3;
    *v3 = v2;
    v3[1] = sub_24EBECAF8;
    v4 = v2[44];
    v5 = v2[29];
    v6 = v2[38];

    return sub_24EBEF4FC(v6, v5, v4);
  }
}

uint64_t sub_24EBEC8E4()
{
  v1 = v0[42];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBECAF8()
{
  v2 = *v1;
  v2[47] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBEDEE4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[48] = v3;
    *v3 = v2;
    v3[1] = sub_24EBECC6C;
    v4 = v2[38];

    return sub_24EBF1404(v4);
  }
}

uint64_t sub_24EBECC6C()
{
  v2 = *v1;
  v2[49] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBECF84, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[50] = v3;
    *v3 = v2;
    v3[1] = sub_24EBECDE0;
    v4 = v2[29];
    v5 = v2[38];

    return sub_24EBF16D0(v5, v4);
  }
}

uint64_t sub_24EBECDE0()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBED2AC, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
    v4 = swift_task_alloc();
    *(v2 + 416) = v4;
    *v4 = v2;
    v4[1] = sub_24EBED198;

    return MEMORY[0x28217F228](v2 + 16, v3, v3);
  }
}

uint64_t sub_24EBECF84()
{
  v1 = v0[49];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBED198()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_24EBEE0F8;
  }

  else
  {
    v2 = sub_24EBED4C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBED2AC()
{
  v1 = v0[51];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBED4C0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v4 = *v2;
  v3 = v2[1];
  (*(v0 + 312))(&v1[*(*(v0 + 272) + 20)], *(v0 + 304), *(v0 + 288));
  *v1 = v4;
  *(v1 + 1) = v3;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);

  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  v8 = sub_24EBF1DAC(&qword_27F21D5F8, type metadata accessor for PresentPromptV2ActionIntent);
  *v7 = v0;
  v7[1] = sub_24EBED5FC;
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 232);

  return MEMORY[0x28217F4B0](v0 + 96, v9, v11, v10, v8, v5, v6);
}

uint64_t sub_24EBED5FC()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_24EBEE30C;
  }

  else
  {
    v2 = sub_24EBED710;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBED710()
{
  v1 = *(v0 + 112);
  *(v0 + 56) = *(v0 + 96);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 128);
  sub_24E60169C(v0 + 56, v0 + 176, qword_27F21B590);
  if (*(v0 + 200))
  {
    sub_24E612C80((v0 + 176), v0 + 136);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E8E0);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "PresentPrompt: An action will be performed.", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 448) = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v0;
    v6[1] = sub_24EBEDA94;
    v8 = *(v0 + 352);
    v9 = *(v0 + 264);
    v10 = *(v0 + 232);

    return sub_24F1487B0(v9, v0 + 136, v10, v8, WitnessTable);
  }

  else
  {
    sub_24E601704(v0 + 176, qword_27F21B590);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E8E0);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BD98();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v13, v14, "PresentPrompt: No prompt.", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    sub_24E601704(v0 + 56, qword_27F21B590);
    sub_24EBF1E5C(v19, type metadata accessor for PresentPromptV2ActionIntent);
    (*(v17 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    (*(*(v0 + 256) + 104))(*(v0 + 216), *MEMORY[0x277D21CA8], *(v0 + 248));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24EBEDA94()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_24EBEE544;
  }

  else
  {
    (*(v2[32] + 8))(v2[33], v2[31]);
    v3 = sub_24EBEDBC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EBEDBC0()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  sub_24E601704((v0 + 7), qword_27F21B590);
  sub_24EBF1E5C(v4, type metadata accessor for PresentPromptV2ActionIntent);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EBEDCD0()
{
  v1 = v0[45];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEDEE4()
{
  v1 = v0[47];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEE0F8()
{
  v1 = v0[53];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEE30C()
{
  sub_24EBF1E5C(v0[35], type metadata accessor for PresentPromptV2ActionIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[55];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEE544()
{
  v1 = v0[35];
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  sub_24E601704((v0 + 7), qword_27F21B590);
  sub_24EBF1E5C(v1, type metadata accessor for PresentPromptV2ActionIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v2 = v0[57];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8E0);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24E5DD000, v5, v6, "PresentPrompt: Failed, reason: %@", v11, 0xCu);
    sub_24E601704(v12, &qword_27F227B20);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24EBEE7A0()
{
  v1 = (type metadata accessor for PresentPromptAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F9294C8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  v6 = sub_24F928AD8();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_24EBEE8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentPromptAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBEE93C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for PresentPromptAction() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EBEC3A4(a1, v1 + v6, v7, v4);
}

uint64_t sub_24EBEEA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[189] = a3;
  v3[188] = a2;
  v3[187] = a1;
  v4 = sub_24F920868();
  v3[190] = v4;
  v3[191] = *(v4 - 8);
  v3[192] = swift_task_alloc();
  v3[193] = swift_task_alloc();
  v5 = sub_24F9207F8();
  v3[194] = v5;
  v3[195] = *(v5 - 8);
  v3[196] = swift_task_alloc();
  v3[197] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v3[198] = swift_task_alloc();
  v3[199] = swift_task_alloc();
  type metadata accessor for Player(0);
  v3[200] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBEEC04, 0, 0);
}

uint64_t sub_24EBEEC04()
{
  *(v0 + 1608) = sub_24F92B7F8();
  *(v0 + 1616) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEEC9C, v2, v1);
}

uint64_t sub_24EBEEC9C()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 1624) = *(v0 + 1400);

  return MEMORY[0x2822009F8](sub_24EBEED24, 0, 0);
}

uint64_t sub_24EBEED24()
{
  *(v0 + 1632) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEEDB0, v2, v1);
}

uint64_t sub_24EBEEDB0()
{
  v1 = v0[203];
  v2 = v0[200];

  swift_getKeyPath();
  v0[181] = v1;
  sub_24EBF1DAC(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24EBF1DF4(v1 + v3, v2, type metadata accessor for Player);

  return MEMORY[0x2822009F8](sub_24EBEEED8, 0, 0);
}

uint64_t sub_24EBEEED8()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[189];
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  sub_24F005EC8();

  v6 = *(v3 + 16);
  sub_24F929468();
  v7 = [v4 standardUserDefaults];
  sub_24F005F70(v1);

  sub_24E60169C(v1, v2, &unk_27F22EC30);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v2, 1, v8);
  v11 = v0[198];
  if (v10 == 1)
  {
    sub_24E601704(v0[198], &unk_27F22EC30);
  }

  else
  {
    sub_24F91F5E8();
    (*(v9 + 8))(v11, v8);
  }

  v12 = v0[200];
  sub_24F929488();
  v13 = swift_task_alloc();
  v0[205] = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v12;
  swift_asyncLet_begin();
  v14 = swift_task_alloc();
  v0[206] = v14;
  *(v14 + 16) = v6;
  *(v14 + 24) = v12;
  swift_asyncLet_begin();
  v15 = v0[197];

  return MEMORY[0x282200928](v0 + 2, v15, sub_24EBEF170, v0 + 162);
}

uint64_t sub_24EBEF170()
{
  (*(v0[195] + 16))(v0[196], v0[197], v0[194]);
  v1 = v0[193];

  return MEMORY[0x282200928](v0 + 82, v1, sub_24EBEF1F4, v0 + 170);
}

uint64_t sub_24EBEF210()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[192];
  v5 = v0[191];
  v6 = v0[190];
  (*(v5 + 16))(v4, v0[193], v6);
  sub_24F9207E8();
  sub_24F9294A8();
  sub_24F920858();
  sub_24F9294A8();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[193];

  return MEMORY[0x282200920](v0 + 82, v7, sub_24EBEF354, v0 + 176);
}

uint64_t sub_24EBEF370()
{

  v1 = *(v0 + 1576);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24EBEF3DC, v0 + 1456);
}

uint64_t sub_24EBEF3F8()
{
  v1 = v0[200];
  v2 = v0[199];

  sub_24E601704(v2, &unk_27F22EC30);
  sub_24EBF1E5C(v1, type metadata accessor for Player);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EBEF4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_24F920EA8();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for Player(0);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBEF660, 0, 0);
}

uint64_t sub_24EBEF660()
{
  *(v0 + 160) = sub_24F92B7F8();
  *(v0 + 168) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEF6F8, v2, v1);
}

uint64_t sub_24EBEF6F8()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 176) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EBEF780, 0, 0);
}

uint64_t sub_24EBEF780()
{
  *(v0 + 184) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEF80C, v2, v1);
}

uint64_t sub_24EBEF80C()
{
  v1 = v0[22];
  v2 = v0[19];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24EBF1DAC(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24EBF1DF4(v1 + v3, v2, type metadata accessor for Player);

  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_24EBEF980;
  v5 = v0[18];

  return sub_24EBF0858(v5);
}

uint64_t sub_24EBEF980()
{

  return MEMORY[0x2822009F8](sub_24EBEFA7C, 0, 0);
}

uint64_t sub_24EBEFA7C()
{
  v2 = v0[14];
  v1 = v0[15];
  sub_24F920E98();
  sub_24F9294A8();
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  sub_24F0060A8();

  sub_24F929468();
  v33 = v3;
  v5 = [v3 standardUserDefaults];
  sub_24F006150(v1);

  sub_24E60169C(v1, v2, &unk_27F22EC30);
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  v32 = *(v7 + 48);
  v8 = v32(v2, 1, v6);
  v9 = v0[14];
  if (v8 == 1)
  {
    sub_24E601704(v9, &unk_27F22EC30);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v9, v6);
  }

  v10 = v0[12];
  v11 = v0[13];
  sub_24F929488();
  v12 = [v33 standardUserDefaults];
  sub_24F006288();

  sub_24F929468();
  v13 = [v33 standardUserDefaults];
  sub_24F006330(v11);

  sub_24E60169C(v11, v10, &unk_27F22EC30);
  v14 = v32(v10, 1, v6);
  v15 = v0[12];
  if (v14 == 1)
  {
    sub_24E601704(v0[12], &unk_27F22EC30);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v15, v6);
  }

  v16 = v0[10];
  v17 = v0[11];
  sub_24F929488();
  v18 = [v33 standardUserDefaults];
  sub_24F006468();

  sub_24F929468();
  v19 = [v33 standardUserDefaults];
  sub_24F006510(v17);

  sub_24E60169C(v17, v16, &unk_27F22EC30);
  v20 = v32(v16, 1, v6);
  v21 = v0[10];
  if (v20 == 1)
  {
    sub_24E601704(v0[10], &unk_27F22EC30);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v21, v6);
  }

  v23 = v0[18];
  v22 = v0[19];
  v24 = v0[17];
  v25 = v0[15];
  v31 = v0[16];
  v30 = v0[13];
  v26 = v0[11];
  sub_24F929488();
  v27 = [v33 standardUserDefaults];
  sub_24F006648();

  sub_24F929468();
  sub_24E601704(v26, &unk_27F22EC30);
  sub_24E601704(v30, &unk_27F22EC30);
  sub_24E601704(v25, &unk_27F22EC30);
  (*(v24 + 8))(v23, v31);
  sub_24EBF1E5C(v22, type metadata accessor for Player);

  v28 = v0[1];

  return v28();
}

uint64_t sub_24EBF0054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EBF0078, 0, 0);
}

uint64_t sub_24EBF0078()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  type metadata accessor for PresentPromptActionImplementation();
  *v4 = v0;
  v4[1] = sub_24EBF0134;
  v5 = v0[2];

  return sub_24EBF022C(v5, v2, v3);
}

uint64_t sub_24EBF0134()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24EBF022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_24EBF0250, 0, 0);
}

uint64_t sub_24EBF0250()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[21] = v2;

  v3 = sub_24F92B098();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_24EBF03D8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_38_1;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EBF03D8()
{

  return MEMORY[0x2822009F8](sub_24EBF04B8, 0, 0);
}

uint64_t sub_24EBF04B8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 184);
  swift_unknownObjectRelease();

  sub_24EBF0B2C(v3, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24EBF0538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EBF055C, 0, 0);
}

uint64_t sub_24EBF055C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  type metadata accessor for PresentPromptActionImplementation();
  *v1 = v0;
  v1[1] = sub_24EBF2198;
  v2 = *(v0 + 16);

  return sub_24EBF0618(v2);
}

uint64_t sub_24EBF0618(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  type metadata accessor for GKProfilePrivacyVisibility(0);
  *v2 = v1;
  v2[1] = sub_24EBF06F8;

  return MEMORY[0x2822007B8](v1 + 32, 0, 0, 0xD00000000000001CLL, 0x800000024FA56390, sub_24EBF0C8C, 0, v3);
}

uint64_t sub_24EBF06F8()
{

  return MEMORY[0x2822009F8](sub_24EBF07F4, 0, 0);
}

uint64_t sub_24EBF07F4()
{
  sub_24EBF0ED4(*(v0 + 32), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EBF0878()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 profileServicePrivate];
  v0[19] = v2;

  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_24EBF09DC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B368);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [v2 getContactsIntegrationConsentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EBF09DC()
{

  return MEMORY[0x2822009F8](sub_24EBF0ABC, 0, 0);
}

uint64_t sub_24EBF0ABC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  swift_unknownObjectRelease();
  sub_24EBF109C(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24EBF0B2C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 4)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Unknown age category: %d. Falling back to child.", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v4 = MEMORY[0x277D0CEB0];
  }

  else
  {
    v4 = qword_27968CDF8[a1];
  }

  v9 = *v4;
  v10 = sub_24F9207F8();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_24EBF0C8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 profileServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24EBF20D4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EBF0E80;
  aBlock[3] = &block_descriptor_34_0;
  v10 = _Block_copy(aBlock);

  [v7 getProfilePrivacyWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_24EBF0E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24EBF0ED4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 3)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Unknown profile privacy visibility: %d. Falling back to meOnly.", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v4 = MEMORY[0x277D0CF60];
  }

  else
  {
    v4 = qword_27968CE18[a1];
  }

  v9 = *v4;
  v10 = sub_24F920868();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_24EBF1034(uint64_t a1, int a2)
{
  sub_24F928FD8();
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v4 + 64) + 40) = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_24EBF109C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 + 1) >= 4)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Unknown contacts integration consent: %d. Falling back to notSet.", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v3 = MEMORY[0x277D0D498];
  }

  else
  {
    v3 = qword_27968CE30[a1 + 1];
  }

  v9 = *v3;
  v10 = sub_24F920EA8();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_24EBF1218()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EBF12E0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.appLaunchCount.getter();

  sub_24F929468();
  v2 = [objc_opt_self() mainBundle];
  sub_24F76084C();

  sub_24F9294A8();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24EBF1404(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBF14AC, 0, 0);
}

uint64_t sub_24EBF14AC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  sub_24F0066F0();

  sub_24F929468();
  v5 = [v3 standardUserDefaults];
  sub_24F006798(v2);

  sub_24E60169C(v2, v1, &unk_27F22EC30);
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v1, 1, v6);
  v9 = v0[3];
  if (v8 == 1)
  {
    sub_24E601704(v0[3], &unk_27F22EC30);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v9, v6);
  }

  v10 = v0[4];
  sub_24F929488();
  sub_24E601704(v10, &unk_27F22EC30);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24EBF16D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBF17E0, 0, 0);
}

uint64_t sub_24EBF17E0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  sub_24F0068D0();

  sub_24F929468();
  v5 = [v3 standardUserDefaults];
  sub_24F00699C();

  sub_24F9294A8();
  v6 = [v3 standardUserDefaults];
  sub_24F006A50(v2);

  sub_24E60169C(v2, v1, &unk_27F22EC30);
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v1, 1, v7);
  v10 = v0[10];
  if (v9 == 1)
  {
    sub_24E601704(v0[10], &unk_27F22EC30);
  }

  else
  {
    sub_24F91F5E8();
    (*(v8 + 8))(v10, v7);
  }

  sub_24F929488();
  v11 = type metadata accessor for ASKBagContract();
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_24EBF1A84;

  return MEMORY[0x28217F228](v0 + 4, v11, v11);
}

uint64_t sub_24EBF1A84()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24EBF1D08;
  }

  else
  {
    v2 = sub_24EBF1B98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBF1B98()
{
  if (qword_27F210A70 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_24F92A448();
  sub_24F92A408();
  (*(v3 + 8))(v2, v4);
  sub_24F9294A8();

  sub_24E601704(v1, &unk_27F22EC30);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EBF1D08()
{
  sub_24E601704(*(v0 + 88), &unk_27F22EC30);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EBF1DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EBF1DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBF1E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EBF1EE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EBF0054(a1, v4, v5);
}

uint64_t sub_24EBF1F94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EBF0538(a1, v4, v5);
}

uint64_t sub_24EBF2040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EBF20D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370);
  return sub_24F92B798();
}

uint64_t block_copy_helper_32_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EBF21B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LeaderboardEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24EBF2354(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for LeaderboardEntry();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for StickyPlayerRowView()
{
  result = qword_27F22B388;
  if (!qword_27F22B388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBF252C()
{
  type metadata accessor for LeaderboardEntry();
  if (v0 <= 0x3F)
  {
    sub_24E6C5550();
    if (v1 <= 0x3F)
    {
      sub_24EBF26B0(319, &qword_27F22B398, type metadata accessor for LeaderboardEntry, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24EBF26B0(319, &qword_27F22B3A0, type metadata accessor for Page, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E746BEC(319, &qword_27F215590);
          if (v4 <= 0x3F)
          {
            sub_24E746BEC(319, &qword_27F254DF0);
            if (v5 <= 0x3F)
            {
              sub_24E684120();
              if (v6 <= 0x3F)
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

void sub_24EBF26B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EBF2730(void **a1)
{
  v2 = *(type metadata accessor for LeaderboardEntry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E86178C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EBF4150(v5);
  *a1 = v3;
}

uint64_t sub_24EBF27D8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = sub_24F924BE8();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F9240F8();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3A8);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B0);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B8);
  MEMORY[0x28223BE20](v34);
  v15 = &v27 - v14;
  type metadata accessor for StickyPlayerRowView();
  v29 = v1;
  v39 = v1;
  type metadata accessor for BaseLeaderboardRowView();
  sub_24EBF5478(&qword_27F21C168, type metadata accessor for BaseLeaderboardRowView);

  sub_24F926F88();
  sub_24F9240E8();
  v16 = sub_24E602068(&qword_27F22B3C0, &qword_27F22B3A8);
  v17 = sub_24EBF5478(&qword_27F22B3C8, MEMORY[0x277CDDA98]);
  v18 = v30;
  sub_24F926178();
  (*(v31 + 8))(v6, v18);
  (*(v28 + 8))(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3D0);
  v40 = v7;
  v41 = v18;
  v42 = v16;
  v43 = v17;
  swift_getOpaqueTypeConformance2();
  sub_24E6A4C1C();
  sub_24EBF3DA8();
  v19 = v32;
  sub_24F926B08();
  (*(v33 + 8))(v13, v19);
  LOBYTE(v6) = sub_24F9257F8();
  sub_24EBF2FB8();
  sub_24F923318();
  v20 = &v15[*(v34 + 36)];
  *v20 = v6;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  v25 = v35;
  sub_24F924BC8();
  sub_24EBF3F20();
  sub_24F9266E8();
  (*(v36 + 8))(v25, v38);
  return sub_24EBF40E8(v15);
}

uint64_t sub_24EBF2CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E6C2DEC(a1, a2);
  v4 = *(a1 + *(type metadata accessor for LeaderboardEntry() + 24));
  v5 = sub_24EBF3A6C();
  v7 = v6;
  v8 = sub_24F37B534();
  v10 = v9;

  v11 = sub_24EBF3BB8();
  v13 = v12;
  if (qword_27F210150 != -1)
  {
    swift_once();
  }

  v23[4] = xmmword_27F39BAA0;
  v23[5] = unk_27F39BAB0;
  v23[6] = xmmword_27F39BAC0;
  v23[0] = xmmword_27F39BA60;
  v23[1] = *&qword_27F39BA70;
  v23[2] = xmmword_27F39BA80;
  v23[3] = unk_27F39BA90;
  v14 = type metadata accessor for BaseLeaderboardRowView();
  v15 = a2 + v14[5];
  *v15 = v4 < 100;
  *(v15 + 8) = v5;
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 64) = v11;
  *(v15 + 72) = v13;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  *(v15 + 97) = 2;
  v16 = (a2 + v14[6]);
  v17 = unk_27F39BAB0;
  v16[4] = xmmword_27F39BAA0;
  v16[5] = v17;
  v16[6] = xmmword_27F39BAC0;
  v18 = *&qword_27F39BA70;
  *v16 = xmmword_27F39BA60;
  v16[1] = v18;
  v19 = unk_27F39BA90;
  v16[2] = xmmword_27F39BA80;
  v16[3] = v19;
  v20 = v14[7];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  return sub_24E784FF8(v23, &v22);
}

uint64_t sub_24EBF2EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3D0) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v6 = *MEMORY[0x277CDF3C0];
  v7 = sub_24F9234D8();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B0);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_24EBF2FB8()
{
  v1 = v0;
  v2 = sub_24F925218();
  v57 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v56);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v62 = &v51 - v11;
  v12 = sub_24F924848();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = type metadata accessor for Page(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StickyPlayerRowView();
  sub_24E60169C(v1 + *(v21 + 32), v16, &qword_27F22B380);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_24E601704(v16, &qword_27F22B380);
  }

  sub_24EBF5350(v16, v20, type metadata accessor for Page);
  v23 = *(v17 + 84);
  v53 = v20;
  v24 = 8 * v20[v23];
  v25 = v1 + *(v21 + 36);
  v26 = *v25;
  if (*(v25 + 8) == 1)
  {
    v27 = *v25;
  }

  else
  {

    sub_24F92BDC8();
    v28 = sub_24F9257A8();
    sub_24F921FD8();

    v29 = v58;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v26, 0);
    (*(v59 + 8))(v29, v60);
    v27 = v63;
  }

  v30 = v57;
  v31 = v61;
  v32 = v62;
  v52 = 0x5040302010001uLL >> v24;
  v57 = v21;
  sub_24F769764(v62);
  (*(v30 + 104))(v31, *MEMORY[0x277CE0558], v2);
  (*(v30 + 56))(v31, 0, 1, v2);
  v33 = *(v56 + 48);
  sub_24E60169C(v32, v5, &qword_27F215598);
  sub_24E60169C(v31, &v5[v33], &qword_27F215598);
  v34 = *(v30 + 48);
  if (v34(v5, 1, v2) == 1)
  {
    sub_24E601704(v31, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    v35 = v34(&v5[v33], 1, v2);
    v36 = v57;
    if (v35 == 1)
    {
      sub_24E601704(v5, &qword_27F215598);
      v37 = 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v38 = v55;
  sub_24E60169C(v5, v55, &qword_27F215598);
  if (v34(&v5[v33], 1, v2) == 1)
  {
    sub_24E601704(v61, &qword_27F215598);
    sub_24E601704(v62, &qword_27F215598);
    (*(v30 + 8))(v38, v2);
    v36 = v57;
LABEL_11:
    sub_24E601704(v5, &unk_27F254F20);
    v37 = 0;
    goto LABEL_13;
  }

  v39 = v54;
  (*(v30 + 32))(v54, &v5[v33], v2);
  sub_24EBF5478(&qword_27F215650, MEMORY[0x277CE0570]);
  v40 = v38;
  v37 = sub_24F92AFF8();
  v41 = *(v30 + 8);
  v41(v39, v2);
  sub_24E601704(v61, &qword_27F215598);
  sub_24E601704(v62, &qword_27F215598);
  v41(v40, v2);
  sub_24E601704(v5, &qword_27F215598);
  v36 = v57;
LABEL_13:
  v42 = v1 + *(v36 + 40);
  v43 = *(v42 + 8);
  v44 = *(v42 + 24);
  if (*(v42 + 32) != 1)
  {
    v45 = *v42;
    v46 = *(v42 + 16);

    sub_24F92BDC8();
    v47 = sub_24F9257A8();
    sub_24F921FD8();

    v48 = v58;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v45, v43, v46, v44, 0);
    (*(v59 + 8))(v48, v60);
  }

  if (v27 > 1580.0)
  {
    v27 = 1580.0;
  }

  v49 = v53;
  if (v52 <= 2u)
  {
    if (v52)
    {
      if (v52 == 1)
      {
        result = sub_24EBF52F0(v53, type metadata accessor for Page);
        if (v37)
        {
          return result;
        }

        return sub_24E6B00B4(v27);
      }

      v50 = 2;
      goto LABEL_37;
    }

    return sub_24EBF52F0(v49, type metadata accessor for Page);
  }

  if (v52 == 3)
  {
    if (sub_24E6B00B4(v27) >= 4u)
    {
      v50 = 3;
LABEL_37:
      LOBYTE(v63) = v50;
      sub_24F422FFC(v37 & 1, v27);
    }

    return sub_24EBF52F0(v49, type metadata accessor for Page);
  }

  if (v52 != 4)
  {
    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((byte_27F2301A8 & 1) != 0 && (v37 & 1) != 0 && qword_27F210D60 != -1)
    {
      swift_once();
    }

    return sub_24EBF52F0(v49, type metadata accessor for Page);
  }

  result = sub_24EBF52F0(v53, type metadata accessor for Page);
  if ((v37 & 1) == 0)
  {
    return sub_24E6B00B4(v27);
  }

  return result;
}

uint64_t sub_24EBF3A6C()
{
  v1 = *(v0 + *(type metadata accessor for LeaderboardEntry() + 24));
  if (v1 > 99)
  {
    if (qword_27F2103C0 != -1)
    {
      swift_once();
    }

    v4 = qword_27F22B378;
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v6 = [v4 stringFromNumber_];

    if (v6)
    {
      v7 = sub_24F92B0D8();
      v9 = v8;

      v10 = v7;
    }

    else
    {
      v10 = sub_24F92CD88();
      v9 = v11;
    }

    MEMORY[0x253050C20](v10, v9);

    return 35;
  }

  else
  {
    sub_24F37B534();
    v3 = v2;
  }

  return v3;
}

uint64_t sub_24EBF3BB8()
{
  v1 = type metadata accessor for LeaderboardEntry();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for StickyPlayerRowView() + 28));
  if (v5[2])
  {
    v8 = v5;

    sub_24EBF2730(&v8);
    if (v8[2])
    {
      sub_24E6C2DEC(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4);

      sub_24EBF52F0(v4, type metadata accessor for LeaderboardEntry);
    }

    else
    {
    }
  }

  return 0x2E6E6F7276656863;
}

id sub_24EBF3D4C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  result = [v0 setNumberStyle_];
  qword_27F22B378 = v0;
  return result;
}

unint64_t sub_24EBF3DA8()
{
  result = qword_27F22B3D8;
  if (!qword_27F22B3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3A8);
    sub_24F9240F8();
    sub_24E602068(&qword_27F22B3C0, &qword_27F22B3A8);
    sub_24EBF5478(&qword_27F22B3C8, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B3D8);
  }

  return result;
}

unint64_t sub_24EBF3F20()
{
  result = qword_27F22B3E0;
  if (!qword_27F22B3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3A8);
    sub_24F9240F8();
    sub_24E602068(&qword_27F22B3C0, &qword_27F22B3A8);
    sub_24EBF5478(&qword_27F22B3C8, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_24E6A4C1C();
    sub_24EBF3DA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B3E0);
  }

  return result;
}

uint64_t sub_24EBF40E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24EBF4150(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LeaderboardEntry();
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LeaderboardEntry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24EBF44C4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EBF427C(0, v2, 1, a1);
  }
}

void sub_24EBF427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      sub_24E6C2DEC(v21, v16);
      sub_24E6C2DEC(v19, v12);
      v22 = *(v8 + 24);
      v23 = v8;
      v24 = *&v16[v22];
      v25 = *&v12[v22];
      sub_24EBF52F0(v12, type metadata accessor for LeaderboardEntry);
      sub_24EBF52F0(v16, type metadata accessor for LeaderboardEntry);
      v26 = v24 < v25;
      v8 = v23;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_24EBF5350(v21, v38, type metadata accessor for LeaderboardEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_24EBF5350(v27, v19, type metadata accessor for LeaderboardEntry);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24EBF44C4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v129 = type metadata accessor for LeaderboardEntry();
  v9 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v112 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v110 - v12;
  MEMORY[0x28223BE20](v13);
  v128 = &v110 - v14;
  MEMORY[0x28223BE20](v15);
  v127 = &v110 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
LABEL_99:
      v130 = v105;
      a4 = *(v105 + 2);
      if (a4 >= 2)
      {
        v106 = v9;
        while (*a3)
        {
          v107 = *&v105[16 * a4];
          v108 = v105;
          v9 = *&v105[16 * a4 + 24];
          sub_24EBF4DD8(*a3 + *(v106 + 72) * v107, *a3 + *(v106 + 72) * *&v105[16 * a4 + 16], *a3 + *(v106 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v107)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_24E86164C(v108);
          }

          if (a4 - 2 >= *(v108 + 2))
          {
            goto LABEL_124;
          }

          v109 = &v108[16 * a4];
          *v109 = v107;
          *(v109 + 1) = v9;
          v130 = v108;
          sub_24E8615C0(a4 - 1);
          v105 = v130;
          a4 = *(v130 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v105 = sub_24E86164C(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v115 = a4;
  v117 = a3;
  v113 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v119 = v19;
    if (v21 >= v17)
    {
      v30 = v21;
    }

    else
    {
      v124 = v17;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v127;
      sub_24E6C2DEC(v5, v127);
      v25 = v128;
      sub_24E6C2DEC(v22 + v23 * v20, v128);
      v26 = *(v129 + 24);
      v27 = *(v24 + v26);
      v121 = *(v25 + v26);
      v122 = v27;
      sub_24EBF52F0(v25, type metadata accessor for LeaderboardEntry);
      sub_24EBF52F0(v24, type metadata accessor for LeaderboardEntry);
      v114 = v20;
      v28 = v20 + 2;
      v123 = v23;
      v29 = v22 + v23 * v28;
      while (1)
      {
        v30 = v124;
        if (v124 == v28)
        {
          break;
        }

        LODWORD(v125) = v122 < v121;
        v31 = v127;
        sub_24E6C2DEC(v29, v127);
        v32 = v6;
        v33 = v128;
        sub_24E6C2DEC(v5, v128);
        v34 = *(v129 + 24);
        v35 = *(v31 + v34);
        v36 = *(v33 + v34);
        v37 = v33;
        v6 = v32;
        sub_24EBF52F0(v37, type metadata accessor for LeaderboardEntry);
        sub_24EBF52F0(v31, type metadata accessor for LeaderboardEntry);
        ++v28;
        v29 += v123;
        v5 += v123;
        if (((v125 ^ (v35 >= v36)) & 1) == 0)
        {
          v30 = v28 - 1;
          break;
        }
      }

      a3 = v117;
      v9 = v113;
      v20 = v114;
      a4 = v115;
      if (v122 < v121)
      {
        if (v30 < v114)
        {
          goto LABEL_127;
        }

        if (v114 < v30)
        {
          v38 = v123 * (v30 - 1);
          v39 = v30 * v123;
          v124 = v30;
          v40 = v30;
          v41 = v114;
          v42 = v114 * v123;
          v43 = v112;
          do
          {
            if (v41 != --v40)
            {
              v5 = *v117;
              if (!*v117)
              {
                goto LABEL_133;
              }

              sub_24EBF5350(v5 + v42, v43, type metadata accessor for LeaderboardEntry);
              if (v42 < v38 || v5 + v42 >= v5 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24EBF5350(v43, v5 + v38, type metadata accessor for LeaderboardEntry);
            }

            ++v41;
            v38 -= v123;
            v39 -= v123;
            v42 += v123;
          }

          while (v41 < v40);
          a3 = v117;
          v9 = v113;
          v20 = v114;
          a4 = v115;
          v30 = v124;
        }
      }
    }

    v44 = a3[1];
    if (v30 >= v44)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v30, v20))
    {
      goto LABEL_126;
    }

    if (v30 - v20 >= a4)
    {
LABEL_32:
      v46 = v30;
      if (v30 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v44)
    {
      v45 = a3[1];
    }

    else
    {
      v45 = v20 + a4;
    }

    if (v45 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v30 == v45)
    {
      goto LABEL_32;
    }

    v111 = v6;
    v91 = *a3;
    v92 = *(v9 + 72);
    v93 = *a3 + v92 * (v30 - 1);
    v94 = v20;
    v95 = -v92;
    v114 = v94;
    v96 = v94 - v30;
    v125 = v91;
    v118 = v92;
    v5 = v91 + v30 * v92;
    v97 = v129;
    v120 = v45;
LABEL_86:
    v123 = v93;
    v124 = v30;
    v121 = v5;
    v122 = v96;
    v98 = v93;
LABEL_87:
    a4 = v127;
    sub_24E6C2DEC(v5, v127);
    v99 = v128;
    sub_24E6C2DEC(v98, v128);
    v100 = *(v97 + 24);
    v101 = *(a4 + v100);
    v102 = *(v99 + v100);
    sub_24EBF52F0(v99, type metadata accessor for LeaderboardEntry);
    sub_24EBF52F0(a4, type metadata accessor for LeaderboardEntry);
    if (v101 < v102)
    {
      break;
    }

    v97 = v129;
LABEL_85:
    v30 = v124 + 1;
    v93 = v123 + v118;
    v96 = v122 - 1;
    v5 = v121 + v118;
    v46 = v120;
    if (v124 + 1 != v120)
    {
      goto LABEL_86;
    }

    v6 = v111;
    a3 = v117;
    v9 = v113;
    v20 = v114;
    if (v120 < v114)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v119;
    }

    else
    {
      v19 = sub_24E615ED8(0, *(v119 + 2) + 1, 1, v119);
    }

    a4 = *(v19 + 2);
    v47 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      v19 = sub_24E615ED8((v47 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v48 = &v19[16 * a4];
    *(v48 + 4) = v20;
    *(v48 + 5) = v46;
    v49 = *v116;
    if (!*v116)
    {
      goto LABEL_135;
    }

    v120 = v46;
    if (a4)
    {
      while (2)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          v55 = &v19[16 * v5 + 32];
          v56 = *(v55 - 64);
          v57 = *(v55 - 56);
          v61 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          if (v61)
          {
            goto LABEL_112;
          }

          v60 = *(v55 - 48);
          v59 = *(v55 - 40);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          v54 = v61;
          if (v61)
          {
            goto LABEL_113;
          }

          v62 = &v19[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v61 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v61)
          {
            goto LABEL_115;
          }

          v61 = __OFADD__(v53, v65);
          v66 = v53 + v65;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v66 >= v58)
          {
            v84 = &v19[16 * v50 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v61 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v61)
            {
              goto LABEL_122;
            }

            if (v53 < v87)
            {
              v50 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v54)
            {
              goto LABEL_114;
            }

            v67 = &v19[16 * v5];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_117;
            }

            v73 = &v19[16 * v50 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_121;
            }

            if (v71 + v76 < v53)
            {
              goto LABEL_66;
            }

            if (v53 < v76)
            {
              v50 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v51 = *(v19 + 4);
            v52 = *(v19 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
            goto LABEL_52;
          }

          v77 = &v19[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_66:
          if (v72)
          {
            goto LABEL_116;
          }

          v80 = &v19[16 * v50];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v83 < v71)
          {
            break;
          }
        }

        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
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
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v88 = v19;
        v89 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v50 + 40];
        sub_24EBF4DD8(*a3 + *(v9 + 72) * v89, *a3 + *(v9 + 72) * *&v19[16 * v50 + 32], *a3 + *(v9 + 72) * v5, v49);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v89)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_24E86164C(v88);
        }

        if (a4 >= *(v88 + 2))
        {
          goto LABEL_111;
        }

        v90 = &v88[16 * a4];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        v130 = v88;
        sub_24E8615C0(v50);
        v19 = v130;
        v5 = *(v130 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v120;
    a4 = v115;
    if (v120 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v125)
  {
    v103 = v126;
    sub_24EBF5350(v5, v126, type metadata accessor for LeaderboardEntry);
    v97 = v129;
    swift_arrayInitWithTakeFrontToBack();
    sub_24EBF5350(v103, v98, type metadata accessor for LeaderboardEntry);
    v98 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
}