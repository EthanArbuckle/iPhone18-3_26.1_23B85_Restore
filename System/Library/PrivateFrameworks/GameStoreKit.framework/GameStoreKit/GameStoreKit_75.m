uint64_t TopChartsPagePresenter.__deallocating_deinit()
{
  TopChartsPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EDA1D60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v5 = sub_24F91FA78();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24EDA1EB8(uint64_t a1)
{
  v2 = type metadata accessor for TopChartsPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EDA1F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDA1F84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EDA1FE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EDA2044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  return sub_24E99091C(v3 + v4, a2);
}

uint64_t sub_24EDA20A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EDA20FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24EDA217C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t type metadata accessor for TopChartsPagePresenter()
{
  result = qword_27F22F648;
  if (!qword_27F22F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDA22EC()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    sub_24F91FA78();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EDA2710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EDA277C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GameSource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EDA28C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GameSource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardsPageView()
{
  result = qword_27F22F658;
  if (!qword_27F22F658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDA2A3C()
{
  sub_24EDA2B80();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GameSource();
      if (v2 <= 0x3F)
      {
        sub_24E6E8928(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E7D231C();
          if (v4 <= 0x3F)
          {
            type metadata accessor for LocalPlayerProvider();
            if (v5 <= 0x3F)
            {
              sub_24E6E8928(319, &qword_27F22F670, &type metadata for BackgroundThemeStyle, MEMORY[0x277CDF468]);
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

unint64_t sub_24EDA2B80()
{
  result = qword_27F22F668;
  if (!qword_27F22F668)
  {
    type metadata accessor for Page(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F22F668);
  }

  return result;
}

uint64_t sub_24EDA2C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LeaderboardsOverviewPageIntent();
  v28[3] = v17;
  v28[4] = sub_24EDA595C(&qword_27F21D378, type metadata accessor for LeaderboardsOverviewPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  v24 = a1;
  sub_24EDA56F0(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardsOverviewPageIntent);
  sub_24EDA56F0(a1 + *(v17 + 20), v16, type metadata accessor for Game);
  sub_24E60169C(a1, v13, &qword_27F21D8F8);
  sub_24E615E00(v28, v27);
  sub_24EDA56F0(v16, v7, type metadata accessor for Game);
  swift_storeEnumTagMultiPayload();
  sub_24E60169C(v13, v11, &qword_27F21D8F8);
  v19 = type metadata accessor for LeaderboardsPageView();
  v20 = a3 + v19[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  sub_24E615E00(v27, a3);
  *(a3 + 40) = a2;
  sub_24EDA56F0(v7, a3 + v19[6], type metadata accessor for GameSource);
  v21 = (a3 + v19[7]);
  *v21 = 0;
  v21[1] = 0;
  sub_24E60169C(v11, a3 + v19[8], &qword_27F21D8F8);
  type metadata accessor for LocalPlayerProvider();

  sub_24F928F28();

  sub_24EDA5758(v24, type metadata accessor for LeaderboardsOverviewPageIntent);
  sub_24E601704(v11, &qword_27F21D8F8);
  sub_24EDA5758(v7, type metadata accessor for GameSource);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_24E601704(v13, &qword_27F21D8F8);
  sub_24EDA5758(v16, type metadata accessor for Game);
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  *(a3 + v19[9]) = v26;
  return result;
}

uint64_t sub_24EDA2F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LeaderboardSetDetailsPageIntent();
  v19[3] = v12;
  v19[4] = sub_24EDA595C(&qword_27F21D368, type metadata accessor for LeaderboardSetDetailsPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_24EDA56F0(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardSetDetailsPageIntent);
  sub_24EDA56F0(a1 + *(v12 + 20), v11, type metadata accessor for GameSource);
  sub_24E60169C(a1, v8, &qword_27F21D8F8);
  v14 = type metadata accessor for LeaderboardsPageView();
  v15 = a3 + v14[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  sub_24E615E00(v19, a3);
  *(a3 + 40) = a2;
  sub_24EDA56F0(v11, a3 + v14[6], type metadata accessor for GameSource);
  v16 = (a3 + v14[7]);
  *v16 = 0;
  v16[1] = 0;
  sub_24E60169C(v8, a3 + v14[8], &qword_27F21D8F8);
  type metadata accessor for LocalPlayerProvider();

  sub_24F928F28();

  sub_24EDA5758(a1, type metadata accessor for LeaderboardSetDetailsPageIntent);
  sub_24E601704(v8, &qword_27F21D8F8);
  sub_24EDA5758(v11, type metadata accessor for GameSource);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  *(a3 + v14[9]) = v18;
  return result;
}

uint64_t sub_24EDA3220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LeaderboardsListPageIntent();
  v31[3] = v17;
  v31[4] = sub_24EDA595C(&qword_27F21D370, type metadata accessor for LeaderboardsListPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_24EDA56F0(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardsListPageIntent);
  sub_24EDA56F0(a1 + *(v17 + 20), v16, type metadata accessor for Game);
  v19 = (a1 + *(v17 + 24));
  v20 = v19[1];
  if (v20)
  {
    v26 = *v19;
  }

  else
  {
    v26 = 0;
  }

  sub_24E60169C(a1, v13, &qword_27F21D8F8);
  sub_24E615E00(v31, v30);
  sub_24EDA56F0(v16, v7, type metadata accessor for Game);
  swift_storeEnumTagMultiPayload();
  sub_24E60169C(v13, v11, &qword_27F21D8F8);
  v21 = type metadata accessor for LeaderboardsPageView();
  v22 = v21[10];
  v27 = a1;
  v23 = a3 + v22;
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  sub_24E615E00(v30, a3);
  *(a3 + 40) = v28;
  sub_24EDA56F0(v7, a3 + v21[6], type metadata accessor for GameSource);
  v24 = (a3 + v21[7]);
  *v24 = v26;
  v24[1] = v20;
  sub_24E60169C(v11, a3 + v21[8], &qword_27F21D8F8);
  type metadata accessor for LocalPlayerProvider();

  sub_24F928F28();

  sub_24E601704(v11, &qword_27F21D8F8);
  sub_24EDA5758(v7, type metadata accessor for GameSource);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_24E601704(v13, &qword_27F21D8F8);
  sub_24EDA5758(v16, type metadata accessor for Game);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *(a3 + v21[9]) = v29;
  return sub_24EDA5758(v27, type metadata accessor for LeaderboardsListPageIntent);
}

uint64_t sub_24EDA35EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v44 = sub_24F9220D8();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F678);
  MEMORY[0x28223BE20](v45);
  v46 = (&v40 - v5);
  v6 = type metadata accessor for LeaderboardsPageView();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(v6 + 40);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v49 = v15 & 1;
  }

  else
  {
    v40 = v11;

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    v42 = v4;
    v17 = v16;
    v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_24F921FD8();

    v4 = v42;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E83C01C(v15, 0);
    (*(v10 + 8))(v13, v40);
    v15 = v49;
  }

  v42 = v15;
  v18 = *(v6 + 32);
  v19 = *(v2 + 40);
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v20 = v44;
  v21 = __swift_project_value_buffer(v44, qword_27F39E880);
  sub_24EDA56F0(v2, v8, type metadata accessor for LeaderboardsPageView);
  v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v23 = v2;
  v24 = swift_allocObject();
  sub_24EDA4D8C(v8, v24 + v22);
  sub_24E615E00(v23, v48);
  v25 = v43;
  (*(v3 + 16))(v43, v21, v20);
  v26 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v19;
  *(v27 + 3) = sub_24EDA4DF0;
  *(v27 + 4) = v24;
  (*(v3 + 32))(&v27[v26], v25, v20);
  v28 = &v27[(v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v28 = sub_24EDA3ED4;
  v28[1] = 0;
  swift_retain_n();
  v29 = v46;
  sub_24EDA3F30(v48, v19, 1, sub_24EDA5240, v27, &qword_27F22F688, &unk_24F99CD80, sub_24EDA565C, v46);
  v30 = v29 + *(v45 + 36);
  sub_24E60169C(v23 + v18, v30, &qword_27F21D8F8);
  v31 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v30 + *(v31 + 20)) = 0;
  *(v30 + *(v31 + 24)) = 0;
  v32 = type metadata accessor for Page.Background(0);
  v33 = (*(*(v32 - 8) + 48))(v23 + v18, 1, v32) == 1;
  v34 = v33 & v42;
  KeyPath = swift_getKeyPath();
  v36 = v29;
  v37 = v47;
  sub_24EDA55EC(v36, v47);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F680);
  v39 = v37 + *(result + 36);
  *v39 = KeyPath;
  *(v39 + 8) = v34;
  return result;
}

uint64_t sub_24EDA3B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_24F92A708();
  sub_24F92CA38();
  v28 = v31;
  v29 = v30;
  v15 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + *(v15 + 96), v14, &qword_27F21D8F8);
  v16 = type metadata accessor for LeaderboardsPageView();
  sub_24EDA56F0(a2 + v16[6], v11, type metadata accessor for GameSource);
  v17 = (a2 + v16[7]);
  v18 = v17[1];
  v27 = *v17;
  v19 = *(a2 + v16[9]);
  swift_getKeyPath();
  v30 = v19;
  sub_24EDA595C(&qword_27F247200, type metadata accessor for LocalPlayerProvider);

  sub_24F91FD88();

  v20 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24EDA56F0(v19 + v20, v8, type metadata accessor for Player);
  v21 = v28;
  *a3 = v29;
  a3[1] = v21;
  v22 = type metadata accessor for LeaderboardsCountHeaderItemIntent();
  sub_24E60169C(v14, a3 + v22[5], &qword_27F21D8F8);
  sub_24EDA56F0(v11, a3 + v22[6], type metadata accessor for GameSource);
  v23 = (a3 + v22[7]);
  *v23 = v27;
  v23[1] = v18;
  sub_24EDA56F0(v8, a3 + v22[8], type metadata accessor for Player);
  v32 = &_s14descr2861AC041O5GamesON;
  v33 = sub_24EDA569C();
  LOBYTE(v30) = 0;
  v24 = sub_24F91FE68();
  sub_24EDA5758(v8, type metadata accessor for Player);
  sub_24EDA5758(v11, type metadata accessor for GameSource);
  sub_24E601704(v14, &qword_27F21D8F8);
  result = __swift_destroy_boxed_opaque_existential_1(&v30);
  *(a3 + v22[9]) = v24 & 1;
  return result;
}

uint64_t sub_24EDA3F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v56 = a4;
  v57 = a8;
  v50 = a7;
  v61 = a5;
  v58 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v53 = &v50 - v15;
  v16 = sub_24F92A498();
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v62 = a1;
  sub_24E615E00(a1, v66);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v28 = v27[13];
  *(a9 + v28) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = a9 + v27[14];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = a9 + v27[15];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v27[16];
  *(a9 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  swift_retain_n();
  sub_24F91F618();
  (*(v21 + 16))(v23, v26, v20);
  v32 = v51;
  sub_24F926F28();
  (*(v21 + 8))(v26, v20);
  v33 = a9 + v27[18];
  LOBYTE(v63) = 1;
  sub_24F926F28();
  v34 = v65;
  *v33 = v64;
  *(v33 + 1) = v34;
  v35 = (a9 + v27[30]);
  sub_24F929EB8();
  v63 = sub_24F929EA8();
  sub_24F926F28();
  v36 = v65;
  *v35 = v64;
  v35[1] = v36;
  sub_24E615E00(v66, a9 + v27[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v37 = v53;
  sub_24F92A448();
  v38 = v55;
  sub_24F92A408();
  (*(v54 + 8))(v37, v38);
  (*(v52 + 8))(v19, v32);
  v39 = v65;
  v40 = (a9 + v27[23]);
  *v40 = v64;
  v40[1] = v39;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928EF8();
  *(a9 + v27[25]) = v64;
  v41 = (a9 + v27[27]);
  v42 = v57;
  v43 = v61;
  *v41 = v56;
  v41[1] = v43;
  v44 = (a9 + v27[28]);
  *v44 = v42;
  v44[1] = a2;
  *(a9 + v27[20]) = a2;
  *(a9 + v27[22]) = v58 & 1;
  *(a9 + v27[21]) = 2;
  type metadata accessor for FeedRefreshNotifier();
  swift_retain_n();

  sub_24F928F28();
  *(a9 + v27[26]) = v64;
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  *(a9 + v27[31]) = v64;
  v45 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v46 = MEMORY[0x28223BE20](v45);
  (*(v48 + 16))(&v50 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  __swift_destroy_boxed_opaque_existential_1(v62);
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_24EDA45F0()
{
  v1 = type metadata accessor for LeaderboardsPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  __swift_destroy_boxed_opaque_existential_1(v3);

  v4 = v3 + v1[6];
  type metadata accessor for GameSource();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v15 = type metadata accessor for GameMAPI();
    v16 = *(v15 + 28);
    v17 = sub_24F9289E8();
    (*(*(v17 - 8) + 8))(v4 + v16, v17);

    v18 = *(v15 + 40);
    v19 = sub_24F928388();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v4 + v18, 1, v19))
    {
      (*(v20 + 8))(v4 + v18, v19);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_12;
      }

      v6 = type metadata accessor for Game();
      v7 = v6[18];
      v8 = sub_24F9289E8();
      v9 = *(v8 - 8);
      v10 = *(v9 + 8);
      v10(v4 + v7, v8);
      v11 = v6[19];
      if (!(*(v9 + 48))(v4 + v11, 1, v8))
      {
        v10(v4 + v11, v8);
      }

      v12 = v6[21];
      v13 = sub_24F920818();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v4 + v12, 1, v13))
      {
        (*(v14 + 8))(v4 + v12, v13);
      }
    }
  }

LABEL_12:

  v21 = v3 + v1[8];
  v22 = type metadata accessor for Page.Background(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          v26 = sub_24F9289E8();
          (*(*(v26 - 8) + 8))(v21, v26);
          v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v28 = sub_24F922348();
          v29 = *(v28 - 8);
          if (!(*(v29 + 48))(v21 + v27, 1, v28))
          {
            (*(v29 + 8))(v21 + v27, v28);
          }
        }
      }

      else
      {
        v41 = sub_24F9289E8();
        (*(*(v41 - 8) + 8))(v21, v41);
      }
    }

    else if (v24 == 2)
    {
      v30 = sub_24F9289E8();
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(v21, 1, v30))
      {
        (*(v31 + 8))(v21, v30);
      }

      v32 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v33 = type metadata accessor for GSKVideo();
      if (!(*(*(v33 - 1) + 48))(v32, 1, v33))
      {
        v34 = sub_24F91F4A8();
        (*(*(v34 - 8) + 8))(v32, v34);
        (*(v31 + 8))(v32 + v33[5], v30);
        v35 = v33[9];
        v36 = sub_24F928698();
        v37 = *(v36 - 8);
        v42 = v35;
        v38 = v32 + v35;
        v39 = *(v37 + 48);
        if (!v39(v38, 1, v36))
        {
          (*(v37 + 8))(v32 + v42, v36);
        }

        v43 = v37;
        v40 = v33[10];
        if (!v39(v32 + v40, 1, v36))
        {
          (*(v43 + 8))(v32 + v40, v36);
        }
      }
    }

    else if (v24 == 3 || v24 == 4)
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v21, v25);
    }
  }

  sub_24E83C01C(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_24EDA4D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDA4DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for LeaderboardsPageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EDA3B58(a1, v6, a2);
}

uint64_t sub_24EDA4E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F690);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_24EDA56F0(a1, a7, type metadata accessor for Page);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F698);
  a3(a1);
  v19 = v18[19];
  v20 = sub_24F9220D8();
  (*(*(v20 - 8) + 16))(a7 + v19, a4, v20);
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  *(a7 + v18[17]) = a2;
  v21 = (a7 + v18[20]);
  v22 = v34;
  *v21 = v33;
  v21[1] = v22;
  v23 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_24E60169C(v17, v14, &qword_27F22F690);

  sub_24F926F28();
  sub_24E601704(v17, &qword_27F22F690);
  v24 = a7 + v18[22];
  v37 = 0;
  sub_24F926F28();
  v25 = v39;
  *v24 = v38;
  *(v24 + 8) = v25;
  v26 = v18[23];
  *(a7 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v27 = v18[24];
  *(a7 + v27) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  v29 = a7 + v18[25];
  v30 = v35;
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  v31 = a7 + v18[26];
  *v31 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  return result;
}

uint64_t sub_24EDA515C()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EDA5240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_24F9220D8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_24EDA4E70(a1, v7, v8, v2 + v6, v10, v11, a2);
}

uint64_t sub_24EDA52F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F6B0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_24EDA56F0(a1, a7, type metadata accessor for Page);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F6B8);
  a3(a1);
  v19 = v18[19];
  v20 = sub_24F9220D8();
  (*(*(v20 - 8) + 16))(a7 + v19, a4, v20);
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  *(a7 + v18[17]) = a2;
  v21 = (a7 + v18[20]);
  v22 = v34;
  *v21 = v33;
  v21[1] = v22;
  v23 = type metadata accessor for AchievementsCountHeaderItem(0);
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_24E60169C(v17, v14, &qword_27F22F6B0);

  sub_24F926F28();
  sub_24E601704(v17, &qword_27F22F6B0);
  v24 = a7 + v18[22];
  v37 = 0;
  sub_24F926F28();
  v25 = v39;
  *v24 = v38;
  *(v24 + 8) = v25;
  v26 = v18[23];
  *(a7 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v27 = v18[24];
  *(a7 + v27) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  v29 = a7 + v18[25];
  v30 = v35;
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  v31 = a7 + v18[26];
  *v31 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  return result;
}

uint64_t sub_24EDA55EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EDA569C()
{
  result = qword_27F22F6A0;
  if (!qword_27F22F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6A0);
  }

  return result;
}

uint64_t sub_24EDA56F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDA5758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EDA57BC()
{
  result = qword_27F22F6C0;
  if (!qword_27F22F6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F680);
    sub_24EDA5874();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6C0);
  }

  return result;
}

unint64_t sub_24EDA5874()
{
  result = qword_27F22F6C8;
  if (!qword_27F22F6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F678);
    sub_24E602068(&qword_27F22F6D0, &qword_27F22F688);
    sub_24EDA595C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6C8);
  }

  return result;
}

uint64_t sub_24EDA595C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SponsoredSearchNativeAdvertData.init(adverts:odmlSuccess:installedStates:appliedPolicy:appStates:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

JSValue __swiftcall SponsoredSearchNativeAdvertData.makeValue(in:)(JSContext in)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(&v39 + 1) = v1[4];
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_27;
  }

  isa = result.super.isa;
  *&v39 = v5;
  if (!v3)
  {
    goto LABEL_8;
  }

  v11 = *(v3 + 16);
  if (v11)
  {
    v38 = v7;
    v48 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v12 = (v3 + 32);
    for (i = v11 - 1; ; --i)
    {
      v14 = v12[1];
      v47[0] = *v12;
      v47[1] = v14;
      v15 = v12[2];
      v16 = v12[3];
      v17 = v12[5];
      v47[4] = v12[4];
      v47[5] = v17;
      v47[2] = v15;
      v47[3] = v16;
      v18 = v12[3];
      v43 = v12[2];
      v44 = v18;
      v19 = v12[5];
      v45 = v12[4];
      v46 = v19;
      v20 = v12[1];
      v41 = *v12;
      v42 = v20;
      sub_24EDA5E3C(v47, v40);
      SponsoredSearchAdvert.makeValue(in:)(in);
      sub_24EDA5E98(v47);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      if (!i)
      {
        break;
      }

      v12 += 6;
    }

    v21 = v48;
    v7 = v38;
    if (!v48)
    {
LABEL_8:
      v22 = in.super.isa;
      v23 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  *&v47[0] = v21;

  v24 = in.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
  v23 = sub_24F92CDE8();
  sub_24E601704(v47, &qword_27F223FA8);
LABEL_11:
  v25 = [v8 valueWithObject:v23 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_24F92C328();
  result.super.isa = [v8 valueWithBool:v4 inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_24F92C328();
  if (v6)
  {
    *&v47[0] = v6;
    v26 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EBD8);
    v27 = sub_24F92CDE8();
    sub_24E601704(v47, &qword_27F21EBD8);
  }

  else
  {
    v28 = in.super.isa;
    v27 = 0;
  }

  v29 = [v8 valueWithObject:v27 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v29)
  {
    goto LABEL_29;
  }

  sub_24F92C328();
  v30 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v47[0] = v39;
    v31 = in.super.isa;

    v30 = sub_24F92CDE8();
    sub_24EB715C4(v47);
  }

  else
  {
    v32 = in.super.isa;
  }

  v33 = [v8 valueWithObject:v30 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v33)
  {
    goto LABEL_30;
  }

  sub_24F92C328();
  if (v7)
  {
    *&v47[0] = v7;
    v34 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    v35 = sub_24F92CDE8();
    sub_24E601704(v47, &qword_27F227A20);
  }

  else
  {
    v36 = in.super.isa;
    v35 = 0;
  }

  v37 = [v8 valueWithObject:v35 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v37)
  {

    sub_24F92C328();
    return isa;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24EDA5EEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_24EDA5F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EDA5FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v6 = sub_24F9294C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F928698();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  v14 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  v15 = *(v8 + 16);
  v15(v13, &v3[*(v14 + 20)], v7);
  if (*v3 == 1 && a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F93DE60;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    v15(v11, v13, v7);
    v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v23[0] = v16;

    v17 = sub_24F928678();
    sub_24E98859C(v23, 0x497463656A627573, 0xEA00000000007364);
    v17(v22, 0);
    (*(v8 + 8))(v13, v7);
    (*(v8 + 32))(v13, v11, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93DE60;
  v15((v19 + v18), v13, v7);
  sub_24F9294B8();
  sub_24F928AA8();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_24EDA62A0()
{
  if (*v0)
  {
    return 0x447363697274656DLL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_24EDA62E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x800000024FA5D320 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x447363697274656DLL && a2 == 0xEB00000000617461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

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

uint64_t sub_24EDA63D4(uint64_t a1)
{
  v2 = sub_24EDA6750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDA6410(uint64_t a1)
{
  v2 = sub_24EDA6750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayTogetherReviewMetricsInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_24F928698();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F6F0);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDA6750();
  sub_24F92D108();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = sub_24F92CC38() & 1;
    v23 = 1;
    sub_24EDA67A4();
    v16 = v5;
    sub_24F92CC68();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(&v10[*(v17 + 20)], v16, v12);
    sub_24EDA67FC(v10, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for PlayTogetherReviewMetricsInfo()
{
  result = qword_27F22F700;
  if (!qword_27F22F700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EDA6750()
{
  result = qword_27F22F6F8;
  if (!qword_27F22F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6F8);
  }

  return result;
}

unint64_t sub_24EDA67A4()
{
  result = qword_27F21EBD0;
  if (!qword_27F21EBD0)
  {
    sub_24F928698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBD0);
  }

  return result;
}

uint64_t sub_24EDA67FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDA688C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_24F928698();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24EDA694C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_24F928698();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EDA69EC()
{
  result = sub_24F928698();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EDA6A7C()
{
  result = qword_27F22F710;
  if (!qword_27F22F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F710);
  }

  return result;
}

unint64_t sub_24EDA6AD4()
{
  result = qword_27F22F718;
  if (!qword_27F22F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F718);
  }

  return result;
}

unint64_t sub_24EDA6B2C()
{
  result = qword_27F22F720;
  if (!qword_27F22F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F720);
  }

  return result;
}

uint64_t ProductPageIconDimension.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EDA6C80()
{
  result = qword_27F22F728;
  if (!qword_27F22F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F728);
  }

  return result;
}

uint64_t static MetricsPipeline.objectGraphWithNewPipelineConfiguredWith(optInProviders:optOutProviders:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F929158();
  v115 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v107 - v10;
  v114 = sub_24F9290F8();
  v12 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v107 - v15;
  v128 = sub_24F92A278();
  v118 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F730);
  MEMORY[0x28223BE20](v18 - 8);
  v124 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v121 = &v107 - v21;
  v131 = sub_24F92A2C8();
  v22 = *(v131 - 1);
  MEMORY[0x28223BE20](v131);
  v130 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F738);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v107 - v28;
  v29 = sub_24F929F48();
  MEMORY[0x28223BE20](v29);
  v135 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v120 = a1;
  if (!*(a1 + 16) && !*(a2 + 16))
  {

    return a3;
  }

  v125 = a2;
  v126 = v26;
  v109 = v12;
  v110 = v8;
  v117 = v16;
  v111 = v11;
  v112 = v6;
  v35 = &v107 - v32;
  v36 = v33;
  v37 = v34;
  v38 = sub_24F928FD8();
  v136 = v35;
  v116 = a3;
  v134 = v36;
  v107 = v38;
  sub_24F92A758();
  v39 = v120 + 64;
  v40 = 1 << *(v120 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v120 + 64);
  v43 = (v40 + 63) >> 6;
  v119 = v22 + 16;
  v129 = (v22 + 32);
  v122 = (v22 + 8);
  v133 = (v37 + 8);
  v108 = v37;
  v132 = (v37 + 32);

  v45 = 0;
  if (v42)
  {
    while (1)
    {
      v46 = v45;
LABEL_14:
      v50 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v51 = v50 | (v46 << 6);
      v52 = v120;
      (*(v22 + 16))(v130, *(v120 + 48) + *(v22 + 72) * v51, v131);
      sub_24E615E00(*(v52 + 56) + 40 * v51, &v137);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F740);
      v54 = *(v53 + 48);
      v49 = v126;
      (*(v22 + 32))();
      sub_24E612C80(&v137, v49 + v54);
      (*(*(v53 - 8) + 56))(v49, 0, 1, v53);
      v48 = v46;
LABEL_15:
      v55 = v123;
      sub_24E6009C8(v49, v123, &qword_27F22F738);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F740);
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {
        break;
      }

      v57 = *(v56 + 48);
      v58 = v130;
      v59 = v22;
      v60 = v131;
      (*v129)(v130, v55, v131);
      sub_24E612C80((v55 + v57), &v137);
      v62 = v135;
      v61 = v136;
      sub_24F929F18();
      __swift_destroy_boxed_opaque_existential_1(&v137);
      v63 = v60;
      v22 = v59;
      (*v122)(v58, v63);
      v64 = v134;
      (*v133)(v61, v134);
      result = (*v132)(v61, v62, v64);
      v45 = v48;
      if (!v42)
      {
        goto LABEL_7;
      }
    }

    v66 = v125;
    v67 = v125 + 64;
    v68 = 1 << *(v125 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & *(v125 + 64);
    v71 = (v68 + 63) >> 6;
    v131 = (v118 + 32);
    v129 = (v118 + 16);
    v130 = (v118 + 8);

    v72 = 0;
    if (v70)
    {
      while (1)
      {
        v73 = v72;
LABEL_31:
        v77 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v78 = v77 | (v73 << 6);
        v79 = v118;
        v81 = v127;
        v80 = v128;
        (*(v118 + 16))(v127, *(v66 + 48) + *(v118 + 72) * v78, v128);
        sub_24E615E00(*(v66 + 56) + 40 * v78, &v137);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F748);
        v83 = *(v82 + 48);
        v84 = *(v79 + 32);
        v76 = v124;
        v84(v124, v81, v80);
        sub_24E612C80(&v137, &v76[v83]);
        (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
        v75 = v73;
LABEL_32:
        v85 = v76;
        v86 = v121;
        sub_24E6009C8(v85, v121, &qword_27F22F730);
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F748);
        if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
        {
          break;
        }

        v88 = *(v87 + 48);
        v90 = v127;
        v89 = v128;
        (*v131)(v127, v86, v128);
        sub_24E612C80((v86 + v88), &v137);
        v91 = v135;
        v92 = v136;
        sub_24F929F28();
        __swift_destroy_boxed_opaque_existential_1(&v137);
        (*v130)(v90, v89);
        v93 = v134;
        (*v133)(v92, v134);
        result = (*v132)(v92, v91, v93);
        v72 = v75;
        v66 = v125;
        if (!v70)
        {
          goto LABEL_23;
        }
      }

      v95 = v113;
      v96 = v114;
      sub_24F92A758();
      v97 = v117;
      sub_24F9290C8();
      v98 = v109;
      v99 = *(v109 + 8);
      v131 = (v109 + 8);
      v132 = v99;
      (v99)(v95, v96);
      v130 = *(v98 + 16);
      (v130)(v95, v97, v96);
      v100 = v111;
      sub_24F929118();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
      v129 = (2 * *(*(sub_24F928188() - 8) + 72));
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_24F9479A0;
      v102 = v115;
      v103 = v112;
      (*(v115 + 16))(v110, v100, v112);
      sub_24F928168();
      (v130)(v95, v117, v96);
      sub_24F928168();
      v104 = v108 + 16;
      v105 = v136;
      v106 = v134;
      (*(v108 + 16))(v135, v136, v134);
      sub_24F928168();
      *&v137 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F750);
      sub_24EDA7A80();
      a3 = sub_24F928F98();

      (*(v102 + 8))(v100, v103);
      (v132)(v117, v96);
      (*(v104 - 8))(v105, v106);
      return a3;
    }

LABEL_23:
    if (v71 <= v72 + 1)
    {
      v74 = v72 + 1;
    }

    else
    {
      v74 = v71;
    }

    v75 = v74 - 1;
    v76 = v124;
    while (1)
    {
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v73 >= v71)
      {
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F748);
        (*(*(v94 - 8) + 56))(v76, 1, 1, v94);
        v70 = 0;
        goto LABEL_32;
      }

      v70 = *(v67 + 8 * v73);
      ++v72;
      if (v70)
      {
        v66 = v125;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_7:
    if (v43 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    else
    {
      v47 = v43;
    }

    v48 = v47 - 1;
    v49 = v126;
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v43)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F740);
        (*(*(v65 - 8) + 56))(v49, 1, 1, v65);
        v42 = 0;
        goto LABEL_15;
      }

      v42 = *(v39 + 8 * v46);
      ++v45;
      if (v42)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EDA7A80()
{
  result = qword_27F22F758;
  if (!qword_27F22F758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F758);
  }

  return result;
}

uint64_t MixedMediaLockupLayout.LockupPosition.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

double sub_24EDA7B70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2297E0);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22F7A0);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  result = 2.0;
  *(v1 + 24) = xmmword_24F99D1D0;
  qword_27F39C838 = v1;
  return result;
}

__n128 MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[4];
  *(a5 + 200) = a1[5];
  v9 = a1[7];
  *(a5 + 216) = a1[6];
  *(a5 + 232) = v9;
  *(a5 + 248) = a1[8];
  v10 = *a1;
  *(a5 + 136) = a1[1];
  v11 = a1[3];
  *(a5 + 152) = a1[2];
  *(a5 + 168) = v11;
  *(a5 + 184) = v8;
  *(a5 + 120) = v10;
  sub_24E612C80(a2, a5);
  sub_24E612C80(a3, a5 + 40);
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 80) = *a4;
  *(a5 + 96) = v13;
  *(a5 + 112) = *(a4 + 32);
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  sub_24E612C80(a3, a7 + 16);
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  result = sub_24E612C80(a6, a7 + 72);
  *(a7 + 112) = a8;
  *(a7 + 120) = a9;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.taglineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t MixedMediaLockupLayout.Metrics.verticalSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_24E612C80(a1, v1 + 72);
}

void MixedMediaLockupLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

double MixedMediaLockupLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  sub_24EDA8134(a1, &v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(&v5, v6);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    sub_24E601704(&v5, &qword_27F22F768);
  }

  sub_24EDA8514(&v5);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);

  return *(v2 + 240) + *(v2 + 256) + a2;
}

uint64_t sub_24EDA8134@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v2 + 80, &v31, &unk_27F22B200);
  v10 = *(&v32 + 1);
  result = sub_24E601704(&v31, &unk_27F22B200);
  if (!v10 && *(v2 + 184) != 1)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v12 = *(v2 + 128);
  if (qword_27F2106E8 != -1)
  {
    swift_once();
  }

  *&v31 = qword_27F39C838;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v14 = v13;
  v15 = v13;
  v16 = *(v7 + 8);
  v16(v9, v6);

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = a2;
  v17 = v12 * v14;
  if ((v12 * v14) >> 64 != v17 >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_24E60169C(v3 + 80, &v31, &unk_27F22B200);
  if (!*(&v32 + 1))
  {
    sub_24E601704(&v31, &unk_27F22B200);
    goto LABEL_16;
  }

  v29 = v33;
  v27 = __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v30 = qword_27F39C838;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v19 = v18;
  v20 = v18;
  v16(v9, v6);

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = v12 * v19;
  if ((v12 * v19) >> 64 != result >> 63)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  sub_24F922478();
  __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_16:
  v21 = *(v3 + 120);
  v29 = *(v3 + 176);
  sub_24E615E00(v3 + 136, &v32 + 8);
  LOBYTE(v31) = v21;
  *(&v31 + 1) = v17;
  *&v32 = v29;
  v22 = v28;
  v28[3] = &type metadata for LineCountTextLayout;
  v22[4] = sub_24EDA8F9C();
  v22[5] = sub_24EDA8FF0();
  v23 = swift_allocObject();
  *v22 = v23;
  sub_24E60169C(v3 + 80, (v23 + 5), &unk_27F22B200);
  v24 = v32;
  v23[1] = v31;
  v23[2] = v24;
  v25 = v34;
  v23[3] = v33;
  v23[4] = v25;
  v26 = v29;

  return v26;
}

uint64_t sub_24EDA8514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = 1;
  v63 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D22A30];
  *(&v48 + 1) = MEMORY[0x277D839F8];
  *&v49 = MEMORY[0x277D22A30];
  *&v47 = 0;
  *(&v39 + 1) = MEMORY[0x277D839F8];
  *&v40 = MEMORY[0x277D22A30];
  *&v38 = 0;
  sub_24E615E00(v1, v58);
  sub_24E615E00(&v47, &v60);
  sub_24E60169C(&v38, v61, &qword_27F22F780);
  v59 = 0;
  v61[5] = 0;
  sub_24E601704(&v38, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v57[3] = v4;
  v57[4] = v5;
  v56[4] = v5;
  v57[0] = 0;
  v56[3] = v4;
  v56[0] = 0;
  if ((*(v1 + 120) & 1) == 0)
  {
    sub_24E9D682C(v58, &v47);
    v7 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v7 = sub_24E617A24((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v10;
    v11 = &v7[136 * v9];
    *(v11 + 2) = v47;
    v12 = v48;
    v13 = v49;
    v14 = v51;
    *(v11 + 5) = v50;
    *(v11 + 6) = v14;
    *(v11 + 3) = v12;
    *(v11 + 4) = v13;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    *(v11 + 20) = v55;
    *(v11 + 8) = v16;
    *(v11 + 9) = v17;
    *(v11 + 7) = v15;
    __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
    sub_24E615E00(v56, &v52 + 8);
    sub_24E615E00(v2 + 40, &v47);
    sub_24E615E00(v57, &v50);
    WORD4(v49) = 0;
    v55 = 0;
    v18 = *(v7 + 2);
    if (!v18)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_24E9D682C(&v47, &v38);
    v19 = *(v7 + 2);
    if (v19)
    {
      v63 = v7;
      if (v19 < *(v7 + 3) >> 1)
      {
LABEL_10:
        sub_24EDAAC3C(1uLL, 1, 1, &v38);
        sub_24E9D6888(&v47);
        sub_24E9D6888(v58);
        v20 = v62;
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    v7 = sub_24E617A24(1, v19 + 1, 1, v7);
    v63 = v7;
    goto LABEL_10;
  }

  sub_24E60169C(v1 + 80, &v47, &unk_27F22B200);
  if (!*(&v48 + 1))
  {
    sub_24E601704(&v47, &unk_27F22B200);
LABEL_12:
    if (*(v2 + 184) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
  v6 = sub_24F9221E8();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
LABEL_14:
  __swift_assign_boxed_opaque_existential_1(v56, (v2 + 192));
  sub_24E615E00(v56, &v52 + 8);
  sub_24E615E00(v2 + 40, &v47);
  sub_24E615E00(v57, &v50);
  WORD4(v49) = 0;
  v55 = 0;
  sub_24E9D682C(&v47, &v38);
  v7 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v7 + 2);
  v18 = *(v7 + 3);
  v10 = v2 + 1;
  if (v2 >= v18 >> 1)
  {
LABEL_20:
    v7 = sub_24E617A24((v18 > 1), v10, 1, v7);
  }

  sub_24E9D6888(&v47);
  *(v7 + 2) = v10;
  v21 = &v7[136 * v2];
  v22 = v42;
  v23 = v40;
  v24 = v39;
  *(v21 + 5) = v41;
  *(v21 + 6) = v22;
  *(v21 + 3) = v24;
  *(v21 + 4) = v23;
  v25 = v45;
  v26 = v44;
  v27 = v43;
  *(v21 + 20) = v46;
  *(v21 + 8) = v26;
  *(v21 + 9) = v25;
  *(v21 + 7) = v27;
  *(v21 + 2) = v38;
  sub_24E9D682C(v58, &v47);
  v28 = *(v7 + 3);
  v29 = v2 + 2;
  if (v29 > (v28 >> 1))
  {
    v7 = sub_24E617A24((v28 > 1), v29, 1, v7);
  }

  sub_24E9D6888(v58);
  *(v7 + 2) = v29;
  v30 = &v7[136 * v10];
  v31 = v51;
  v33 = v48;
  v32 = v49;
  *(v30 + 5) = v50;
  *(v30 + 6) = v31;
  *(v30 + 3) = v33;
  *(v30 + 4) = v32;
  v35 = v53;
  v34 = v54;
  v36 = v52;
  *(v30 + 20) = v55;
  *(v30 + 8) = v35;
  *(v30 + 9) = v34;
  *(v30 + 7) = v36;
  *(v30 + 2) = v47;
  v20 = 1;
LABEL_18:
  *a1 = v20;
  *(a1 + 8) = v7;
  __swift_destroy_boxed_opaque_existential_1(v56);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t MixedMediaLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  sub_24F92C1C8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24EDA8134(a1, v36);
  sub_24E60169C(v36, &v33, &qword_27F22F768);
  if (v35)
  {
    __swift_project_boxed_opaque_existential_1(&v33, v35);
    sub_24F922288();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    sub_24E601704(&v33, &qword_27F22F768);
    v17 = 0.0;
  }

  v18 = *(v2 + 120);
  v37.origin.x = v9;
  v37.origin.y = v11;
  v37.size.width = v13;
  v37.size.height = v15;
  MinX = CGRectGetMinX(v37);
  v19 = v9;
  v20 = v11;
  v21 = v13;
  v22 = v15;
  if (v18)
  {
    Width = CGRectGetWidth(*&v19);
    v38.origin.x = v9;
    v38.origin.y = v11;
    v38.size.width = v13;
    v38.size.height = v15;
    Height = CGRectGetHeight(v38);
    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetMinX(v39);
    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    CGRectGetMinY(v40);
    MinY = v17;
  }

  else
  {
    MinY = CGRectGetMinY(*&v19);
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    Width = CGRectGetWidth(v41);
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    Height = CGRectGetHeight(v42);
    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    CGRectGetMinX(v43);
    v44.origin.x = v9;
    v44.origin.y = v11;
    v44.size.width = v13;
    v44.size.height = v15;
    CGRectGetMaxY(v44);
  }

  v45.origin.x = v9;
  v45.origin.y = v11;
  v45.size.width = v13;
  v45.size.height = v15;
  CGRectGetWidth(v45);
  sub_24EDA8514(&v33);
  v24 = v33;
  v25 = v34;
  sub_24E60169C(v36, &v33, &qword_27F22F768);
  if (v35)
  {
    __swift_project_boxed_opaque_existential_1(&v33, v35);
    sub_24F922AC8();
    v26 = sub_24F9221D8();
    (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
    sub_24E601704(v7, &qword_27F22F770);
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    sub_24E601704(&v33, &qword_27F22F768);
    v27 = sub_24F9221D8();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_24E601704(v7, &qword_27F22F770);
  }

  LOBYTE(v33) = v24;
  v34 = v25;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, MinX, MinY, Width, Height - v17);
  sub_24E601704(v36, &qword_27F22F768);
}

unint64_t sub_24EDA8D9C()
{
  result = qword_27F22F778;
  if (!qword_27F22F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F778);
  }

  return result;
}

uint64_t sub_24EDA8DF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_24EDA8E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EDA8EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EDA8F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EDA8F9C()
{
  result = qword_27F22F788;
  if (!qword_27F22F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F788);
  }

  return result;
}

unint64_t sub_24EDA8FF0()
{
  result = qword_27F22F790;
  if (!qword_27F22F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F790);
  }

  return result;
}

uint64_t sub_24EDA9044()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  }

  return swift_deallocObject();
}

__n128 sub_24EDA90A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.lookupName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.encode(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24F4589D0(0, v8, 0);
    v9 = v17;
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_24EDAB80C(v10, v7);
      v12 = sub_24EB74C5C();
      sub_24EDAB870(v7);
      v17 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24F4589D0((v13 > 1), v14 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F7B0);
  a2[3] = result;
  *a2 = v9;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.decode(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E643A9C(a1, v14);
  sub_24F928378();
  sub_24F9282B8();
  v9 = sub_24F92AC28();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_24E601704(v4, &qword_27F2213B0);
    return 0;
  }

  else
  {
    type metadata accessor for AppStoreDeepLink();
    v12 = sub_24F92ABB8();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v4, v9);
    return v12;
  }
}

uint64_t sub_24EDA9504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F928388();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_24EB74210(v7, a2);
}

uint64_t sub_24EDA95F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ResilientDeepLinkController.DeepLinkPreferenceKey.decode(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t static ResilientDeepLinkController.storeDeepLink(_:bag:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  if (a2)
  {
    v8 = (a1 + *(type metadata accessor for AppStoreDeepLink() + 20));
    v10 = *v8;
    v9 = v8[1];

    result = ASKBagContract.resilientDeepLinkPatterns.getter();
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v21[0] = a1;
      v21[1] = a2;
      v14 = 0;
      v15 = (result + 40);
      while (v14 < *(v12 + 16))
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v21[4] = v10;
        v21[5] = v9;
        v21[2] = v16;
        v21[3] = v17;
        v18 = sub_24F91F7C8();
        (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
        sub_24E600AEC();

        sub_24F92C5B8();
        v20 = v19;
        sub_24E601704(v7, &qword_27F21FAD8);

        if ((v20 & 1) == 0)
        {

          goto LABEL_12;
        }

        ++v14;
        v15 += 2;
        if (v13 == v14)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
LABEL_12:
    MEMORY[0x28223BE20](v5);
    return sub_24EDABA08(sub_24EDAB8CC);
  }

  return result;
}

BOOL sub_24EDA9874(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = 0;
  v26 = a1;
  v12 = *a1;
  v13 = *(*a1 + 16);
  while (1)
  {
    v14 = v11;
    if (v13 == v11)
    {
      break;
    }

    if (v11 >= v12[2])
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_24EDAB80C(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v10);
    v15 = *(v4 + 20);
    v16 = *&v10[v15];
    v17 = *&v10[v15 + 8];
    v18 = (a2 + v15);
    if (v16 == *v18 && v17 == v18[1])
    {
      sub_24EDAB870(v10);
      return v13 == v14;
    }

    ++v11;
    v20 = sub_24F92CE08();
    sub_24EDAB870(v10);
    if (v20)
    {
      return v13 == v14;
    }
  }

  sub_24EDAB80C(a2, v7);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_17:
  v12 = sub_24E6193D8(0, v12[2] + 1, 1, v12);
LABEL_11:
  v21 = v26;
  v23 = v12[2];
  v22 = v12[3];
  if (v23 >= v22 >> 1)
  {
    v12 = sub_24E6193D8(v22 > 1, v23 + 1, 1, v12);
  }

  v12[2] = v23 + 1;
  sub_24EB76568(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
  *v21 = v12;
  return v13 == v14;
}

uint64_t static ResilientDeepLinkController.fetchLatestResilientDeepLink(bag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v31 - v8;
  v9 = type metadata accessor for AppStoreDeepLink();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v46 = 0xD000000000000014;
  v47 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  result = v44;
  if (!v44)
  {
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  v32 = a2;
  v14 = *(v44 + 16);
  if (v14)
  {
    v39 = v44 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v40 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    v38 = (v7 + 8);
    v36 = v10;
    v37 = v9;
    v31[1] = a1;
    v34 = v44;
    v35 = v12;
    while (v14 <= *(result + 16))
    {
      v15 = *(v10 + 72);
      v41 = v14 - 1;
      v33 = v39 + v15 * (v14 - 1);
      sub_24EDAB80C(v33, v12);
      v16 = &v12[*(v9 + 20)];
      v18 = *v16;
      v17 = v16[1];
      if (qword_27F210A88 != -1)
      {
        swift_once();
      }

      v19 = v42;
      sub_24F92A428();
      v20 = v43;
      sub_24F92A3F8();
      (*v38)(v19, v20);
      if (!v46 || (v21 = sub_24E9E2340(v46), result = , !v21))
      {

        v21 = &unk_2861C0B48;
      }

      v22 = v21[2];
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 5;
        while (v23 < v21[2])
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v46 = v18;
          v47 = v17;
          v44 = v25;
          v45 = v26;
          v27 = sub_24F91F7C8();
          (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
          sub_24E600AEC();

          sub_24F92C5B8();
          v29 = v28;
          sub_24E601704(v6, &qword_27F21FAD8);

          if ((v29 & 1) == 0)
          {

            sub_24EDAB870(v35);
            v30 = v32;
            sub_24EDAB80C(v33, v32);

            return (*(v36 + 56))(v30, 0, 1, v37);
          }

          ++v23;
          v24 += 2;
          if (v22 == v23)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      v12 = v35;
      sub_24EDAB870(v35);
      v10 = v36;
      v9 = v37;
      result = v34;
      v14 = v41;
      if (!v41)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return (*(v10 + 56))(v32, 1, 1, v9);
  }

  return result;
}

uint64_t static ResilientDeepLinkController.removeNonResilientDeepLinks(bag:)(uint64_t a1)
{
  v79 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v83 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v66 - v1;
  v78 = type metadata accessor for AppStoreDeepLink();
  v2 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = v66 - v5;
  MEMORY[0x28223BE20](v6);
  v84 = v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v66 - v9;
  v11 = sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v86 = 0xD000000000000014;
  v87 = 0x800000024FA5D340;
  v67 = 0x800000024FA5D340;
  v12 = sub_24EDABB9C();
  v68 = v11;
  v66[1] = v12;
  sub_24F928838();

  if (v90)
  {
    v14 = v90;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v92 = v14;
  v69 = v14[2];
  if (!v69)
  {
LABEL_13:
    v30 = v14[2];
    v31 = v30;
    goto LABEL_45;
  }

  v15 = 0;
  v82 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v16 = v14 + v82;
  v17 = *(v2 + 72);
  v85 = v14;
  v77 = v17;
  v81 = v14 + v82;
  while (2)
  {
    v72 = v15;
    v18 = &v16[v17 * v15 + *(v78 + 20)];
    v19 = *v18;
    v20 = v18[1];
    result = ASKBagContract.resilientDeepLinkPatterns.getter();
    v21 = result;
    v22 = *(result + 16);
    if (v22)
    {
      v23 = 0;
      v24 = (result + 40);
      while (1)
      {
        if (v23 >= *(v21 + 16))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v25 = *(v24 - 1);
        v26 = *v24;
        v86 = v19;
        v87 = v20;
        v90 = v25;
        v91 = v26;
        v27 = sub_24F91F7C8();
        (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
        sub_24E600AEC();

        sub_24F92C5B8();
        v29 = v28;
        sub_24E601704(v10, &qword_27F21FAD8);

        if ((v29 & 1) == 0)
        {
          break;
        }

        ++v23;
        v24 += 2;
        if (v22 == v23)
        {
          goto LABEL_14;
        }
      }

      v15 = v72 + 1;
      v14 = v85;
      v17 = v77;
      v16 = v81;
      if (v72 + 1 != v69)
      {
        continue;
      }

      goto LABEL_13;
    }

    break;
  }

LABEL_14:

  v30 = v72 + 1;
  if (__OFADD__(v72, 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v73 = (v83 + 8);
  v74 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v14 = v85;
  v32 = v77;
  while (1)
  {
    v33 = v14[2];
    if (v30 == v33)
    {
      break;
    }

    if (v30 >= v33)
    {
      goto LABEL_60;
    }

    v34 = v14 + v82;
    v83 = v30;
    v35 = v30 * v32;
    v36 = v84;
    sub_24EDAB80C(v14 + v82 + v30 * v32, v84);
    v37 = (v36 + *(v78 + 20));
    v38 = *v37;
    v39 = v37[1];
    if (qword_27F210A88 != -1)
    {
      swift_once();
    }

    v80 = v35;
    v40 = v75;
    sub_24F92A428();
    v41 = v76;
    sub_24F92A3F8();
    (*v73)(v40, v41);
    v85 = v14;
    v81 = v34;
    if (!v86 || (v42 = sub_24E9E2340(v86), result = , !v42))
    {

      v42 = &unk_2861C0B78;
    }

    v43 = v42[2];
    if (v43)
    {
      v44 = 0;
      v45 = v42 + 5;
      while (1)
      {
        if (v44 >= v42[2])
        {
          __break(1u);
          goto LABEL_59;
        }

        v46 = *(v45 - 1);
        v47 = *v45;
        v86 = v38;
        v87 = v39;
        v90 = v46;
        v91 = v47;
        v48 = sub_24F91F7C8();
        (*(*(v48 - 8) + 56))(v10, 1, 1, v48);
        sub_24E600AEC();

        sub_24F92C5B8();
        v50 = v49;
        sub_24E601704(v10, &qword_27F21FAD8);

        if ((v50 & 1) == 0)
        {
          break;
        }

        ++v44;
        v45 += 2;
        if (v43 == v44)
        {
          goto LABEL_16;
        }
      }

      result = sub_24EDAB870(v84);
      v51 = v72;
      v52 = v83;
      if (v72 == v83)
      {
        v14 = v85;
        v32 = v77;
      }

      else
      {
        v14 = v85;
        v32 = v77;
        if (v72 < 0)
        {
          goto LABEL_63;
        }

        v53 = v85[2];
        if (v72 >= v53)
        {
          goto LABEL_64;
        }

        v54 = v72 * v77;
        v55 = v81;
        result = sub_24EDAB80C(&v81[v72 * v77], v71);
        if (v52 >= v53)
        {
          goto LABEL_65;
        }

        v56 = v80;
        sub_24EDAB80C(&v55[v80], v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_24ECDE2E0(v14);
        }

        v57 = v14 + v82;
        result = sub_24EDABBF0(v70, v14 + v82 + v54);
        if (v52 >= v14[2])
        {
          goto LABEL_66;
        }

        result = sub_24EDABBF0(v71, &v57[v56]);
        v51 = v72;
      }

      v58 = __OFADD__(v51, 1);
      v59 = v51 + 1;
      if (v58)
      {
        goto LABEL_62;
      }

      v72 = v59;
      v58 = __OFADD__(v52, 1);
      v30 = v52 + 1;
      if (v58)
      {
        goto LABEL_61;
      }
    }

    else
    {
LABEL_16:

      result = sub_24EDAB870(v84);
      v14 = v85;
      v32 = v77;
      v30 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_61;
      }
    }
  }

  v31 = v72;
  if (v30 < v72)
  {
    goto LABEL_69;
  }

  if (v72 < 0)
  {
LABEL_70:
    __break(1u);
    return result;
  }

LABEL_45:
  v60 = v31;
  v61 = v31 - v30;
  v62 = v30 + v61;
  if (__OFADD__(v30, v61))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v14;
  if (!isUniquelyReferenced_nonNull_native || v62 > v14[3] >> 1)
  {
    if (v30 <= v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = v30;
    }

    v14 = sub_24E6193D8(isUniquelyReferenced_nonNull_native, v64, 1, v14);
    v92 = v14;
  }

  sub_24EDAC24C(v60, v30, 0, type metadata accessor for AppStoreDeepLink);
  v65 = v14[2];
  if (v69 == v65)
  {
  }

  if (v65)
  {
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v90 = v14;
    v86 = 0xD000000000000014;
    v87 = v67;
    sub_24F928848();
  }

  else
  {

    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v88 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
    v89 = sub_24EDABC54();
    v86 = 0xD000000000000014;
    v87 = v67;
    sub_24F929358();

    __swift_destroy_boxed_opaque_existential_1(&v86);
  }

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F929368();
}

uint64_t static ResilientDeepLinkController.removeAllDeepLinks()()
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v1[3] = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
  v1[4] = sub_24EDABC54();
  v1[0] = 0xD000000000000014;
  v1[1] = 0x800000024FA5D340;
  sub_24F929358();

  __swift_destroy_boxed_opaque_existential_1(v1);
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F929368();
}

uint64_t static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-v8];
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _s12GameStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(a2);
  sub_24E99091C(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F228530);
    return 0;
  }

  v27 = v14;
  v28 = v11;
  v29 = v10;
  (*(v11 + 32))(v13, v9, v10);
  result = ASKBagContract.resilientDeepLinkFinancePatterns.getter();
  v16 = result;
  v17 = *(result + 16);
  if (!v17)
  {
LABEL_8:

    (*(v28 + 8))(v13, v29);
    return 0;
  }

  v18 = 0;
  v19 = (result + 40);
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v19 - 1);
    v21 = *v19;

    v32 = sub_24F91F398();
    v33 = v22;
    v30 = v20;
    v31 = v21;
    v23 = sub_24F91F7C8();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_24E600AEC();
    sub_24F92C5B8();
    v25 = v24;
    sub_24E601704(v6, &qword_27F21FAD8);

    if ((v25 & 1) == 0)
    {
      break;
    }

    ++v18;
    v19 += 2;
    if (v17 == v18)
    {
      goto LABEL_8;
    }
  }

  (*(v28 + 8))(v13, v29);

  return (v27 & 1) != 0;
}

unint64_t sub_24EDAAC3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 136 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 136 * a3;
      v15 = (v9 + 32 + 136 * a2);
      if (result != v15 || result >= v15 + 136 * v14)
      {
        result = memmove(result, v15, 136 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_24E601704(a4, &qword_27F22F7D0);
  }

  result = sub_24E9D682C(a4, v10);
  if (a3 == 1)
  {
    return sub_24E601704(a4, &qword_27F22F7D0);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_24EDAAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v11 = *v6;
  result = a5(0);
  v13 = *(result - 8);
  v14 = *(v13 + 72);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = result;
  v27 = a6;
  v17 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v18 = v17 + v14 * a1;
  result = swift_arrayDestroy();
  v19 = a3 - v15;
  if (__OFSUB__(a3, v15))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v14 * a3;
  if (v19)
  {
    v21 = *(v11 + 16);
    if (!__OFSUB__(v21, a2))
    {
      result = v18 + v20;
      v22 = v17 + v14 * a2;
      if (v18 + v20 < v22 || result >= v22 + (v21 - a2) * v14)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v22)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v24 = *(v11 + 16);
      v25 = __OFADD__(v24, v19);
      v26 = v24 + v19;
      if (!v25)
      {
        *(v11 + 16) = v26;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_24E601704(a4, v27);
  }

  if (v20 < 1)
  {
    return sub_24E601704(a4, v27);
  }

  result = (*(v13 + 16))(v18, a4, v16);
  if (v14 >= v20)
  {
    return sub_24E601704(a4, v27);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24EDAAF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for GuidedSearchToken();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDAAF70(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_24EDAAFD4(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_24EDAAFD4(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_24E6B8BBC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

unint64_t sub_24EDAB0D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDAB198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = type metadata accessor for AppStoreDeepLink();
  v8 = 0;
  v9 = a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
  v10 = *(*(v7 - 8) + 72);
  while (1)
  {
    v11 = (v9 + *(v7 + 20));
    v12 = *v11 == a2 && v11[1] == a3;
    if (v12 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    ++v8;
    v9 += v10;
    if (v3 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_24EDAB2A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t _s12GameStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for AppStoreDeepLink();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v44 = 0xD000000000000014;
  v45 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  result = v42;
  if (v42)
  {
    v36 = *(v42 + 16);
    if (v36)
    {
      v38 = (v6 + 8);
      v39 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
      v13 = 0;
      v34 = v5;
      v35 = a1;
      v32 = v9;
      v33 = v8;
      v31 = v10;
      v37 = v42;
      while (v13 < *(result + 16))
      {
        v14 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v15 = *(v10 + 72);
        v40 = v13;
        v16 = v14 + v15 * v13;
        v17 = v41;
        sub_24EDAB80C(v16, v41);
        v18 = (v17 + *(v9 + 20));
        v19 = *v18;
        v20 = v18[1];
        if (qword_27F210A88 != -1)
        {
          swift_once();
        }

        sub_24F92A428();
        sub_24F92A3F8();
        (*v38)(v8, v5);
        if (!v44 || (v21 = sub_24E9E2340(v44), result = , !v21))
        {

          v21 = &unk_2861C0750;
        }

        v22 = v21[2];
        if (v22)
        {
          v23 = 0;
          v24 = v21 + 5;
          while (v23 < v21[2])
          {
            v25 = *(v24 - 1);
            v26 = *v24;
            v44 = v19;
            v45 = v20;
            v42 = v25;
            v43 = v26;
            v27 = sub_24F91F7C8();
            (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
            sub_24E600AEC();

            sub_24F92C5B8();
            v29 = v28;
            sub_24E601704(v4, &qword_27F21FAD8);

            if ((v29 & 1) == 0)
            {

              sub_24EDAB870(v41);

              return 1;
            }

            ++v23;
            v24 += 2;
            if (v22 == v23)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
        v13 = v40 + 1;

        sub_24EDAB870(v41);
        v8 = v33;
        v5 = v34;
        v10 = v31;
        v9 = v32;
        result = v37;
        if (v13 == v36)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:

      return 0;
    }
  }

  return result;
}

uint64_t sub_24EDAB80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDAB870(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EDAB904(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24F92C738();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDABA08(uint64_t (*a1)(uint64_t *))
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v6 = 0xD000000000000014;
  v7 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  v2 = v10;
  if (!v10)
  {
    v2 = MEMORY[0x277D84F90];
  }

  v11 = v2;
  v3 = a1(&v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
  }

  if (*(v11 + 16))
  {
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v10 = v4;
    v6 = 0xD000000000000014;
    v7 = 0x800000024FA5D340;
    sub_24F928848();
  }

  else
  {

    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v8 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
    v9 = sub_24EDABC54();
    v6 = 0xD000000000000014;
    v7 = 0x800000024FA5D340;
    sub_24F929358();

    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F929368();
}

unint64_t sub_24EDABB9C()
{
  result = qword_27F22F7B8;
  if (!qword_27F22F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F7B8);
  }

  return result;
}

uint64_t sub_24EDABBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EDABC54()
{
  result = qword_27F22F7C0;
  if (!qword_27F22F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F7C0);
  }

  return result;
}

uint64_t sub_24EDABCA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppStoreDeepLink();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = *a1;
  v17 = v51;
  result = sub_24EDAB198(*a1, a2, a3);
  if (v17)
  {
    return result;
  }

  v51 = v15;
  v45 = v12;
  v43 = 0;
  if (v19)
  {
    return *(v16 + 16);
  }

  v44 = v9;
  v49 = v6;
  v42 = a1;
  v47 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v21 = v16;
  v23 = (v16 + 16);
  v22 = *(v16 + 16);
  if (v20 == v22)
  {
    return v47;
  }

  v24 = a3;
  v46 = a2;
  v48 = v7;
  while (v20 < v22)
  {
    v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v26 = v21;
    v27 = v21 + v25;
    v28 = *(v7 + 72);
    v50 = v28 * v20;
    v29 = v51;
    sub_24EDAB80C(v27 + v28 * v20, v51);
    v30 = (v29 + *(v49 + 20));
    if (*v30 == a2 && v30[1] == v24)
    {
      result = sub_24EDAB870(v29);
LABEL_10:
      v7 = v48;
      v21 = v26;
      goto LABEL_11;
    }

    v32 = v24;
    v33 = v29;
    v34 = sub_24F92CE08();
    result = sub_24EDAB870(v33);
    if (v34)
    {
      v24 = v32;
      a2 = v46;
      goto LABEL_10;
    }

    v35 = v47;
    if (v20 == v47)
    {
      v24 = v32;
      a2 = v46;
      v21 = v26;
    }

    else
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v36 = *v23;
      if (v47 >= v36)
      {
        goto LABEL_31;
      }

      v24 = v32;
      v37 = v28 * v47;
      result = sub_24EDAB80C(v27 + v37, v45);
      if (v20 >= v36)
      {
        goto LABEL_32;
      }

      v38 = v50;
      sub_24EDAB80C(v27 + v50, v44);
      v21 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24ECDE2E0(v26);
      }

      a2 = v46;
      v39 = v42;
      v40 = v21 + v25;
      result = sub_24EDABBF0(v44, v40 + v37);
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_33;
      }

      result = sub_24EDABBF0(v45, v40 + v38);
      *v39 = v21;
      v35 = v47;
    }

    v47 = v35 + 1;
    v7 = v48;
LABEL_11:
    ++v20;
    v23 = (v21 + 16);
    v22 = *(v21 + 16);
    if (v20 == v22)
    {
      return v47;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t _s12GameStoreKit27ResilientDeepLinkControllerO06removeeF0yySSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v13 = 0xD000000000000014;
  v14 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  if (v17)
  {
    v4 = v17;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v18 = v4;
  v5 = *(v4 + 16);
  if (!v5)
  {
  }

  v6 = sub_24EDABCA8(&v18, a1, a2);

  v8 = v18;
  v9 = v18[2];
  if (v6 > v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(v9, v6 - v9))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > v8[3] >> 1)
  {
    if (v9 <= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v9;
    }

    v8 = sub_24E6193D8(isUniquelyReferenced_nonNull_native, v11, 1, v8);
    v18 = v8;
  }

  sub_24EDAC24C(v6, v9, 0, type metadata accessor for AppStoreDeepLink);
  v12 = v8[2];
  if (v5 == v12)
  {
  }

  if (v12)
  {
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v17 = v8;
    v13 = 0xD000000000000014;
    v14 = 0x800000024FA5D340;
    sub_24F928848();
  }

  else
  {

    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v15 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
    v16 = sub_24EDABC54();
    v13 = 0xD000000000000014;
    v14 = 0x800000024FA5D340;
    sub_24F929358();

    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F929368();
}

unint64_t sub_24EDAC24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_24EDAC398(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for GuidedSearchToken();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_24F92C738();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_24EDAAF70(v4, sub_24EDAC8FC);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24EDAC530(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for GuidedSearchToken();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_24F92C738();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_24F92C738();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_24EDAC650(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_24EDAC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LeaderboardEntry();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_24EDAC918(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    v32 = *(a1 + 16);
    sub_24F4578E0(0, v1, 0);
    v2 = v33;
    v4 = a1 + 56;
    v5 = sub_24F92C6B8();
    v6 = v32;
    v7 = 0;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      v10 = 1 << v5;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_34;
      }

      v11 = *(a1 + 36);
      ++v7;
      v12 = v5 & 0x3F;
      v13 = 0xE400000000000000;
      v14 = 2036427888;
      switch(*(*(a1 + 48) + v5))
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x6573756170;
          break;
        case 2:
          v14 = 1801807219;
          break;
        case 3:
          v14 = 1886352499;
          break;
        case 4:
          v14 = 0x6C50656C67676F74;
          v13 = 0xEF65737561507961;
          break;
        case 5:
          v13 = 0xE90000000000006BLL;
          v14 = 0x636172547478656ELL;
          break;
        case 6:
          v14 = 0x73756F6976657270;
          v13 = 0xED00006B63617254;
          break;
        case 7:
          v14 = 0xD000000000000010;
          v13 = 0x800000024FA5D3B0;
          break;
        case 8:
          v14 = 0x4674736146646E65;
          v13 = 0xEE0064726177726FLL;
          break;
        case 9:
          v14 = 0x7765526E69676562;
          v13 = 0xEB00000000646E69;
          break;
        case 0xA:
          v14 = 0x6E69776552646E65;
          v13 = 0xE900000000000064;
          break;
        case 0xB:
          v13 = 0xEB00000000647261;
          v14 = 0x77726F4670696B73;
          break;
        case 0xC:
          v14 = 0x6B63614270696B73;
          v13 = 0xEC00000064726177;
          break;
        default:
          break;
      }

      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        v30 = *(a1 + 36);
        v31 = v5;
        v28 = v5 & 0x3F;
        v29 = v7;
        sub_24F4578E0((v15 > 1), v16 + 1, 1);
        v12 = v28;
        v7 = v29;
        v6 = v32;
        v11 = v30;
        v5 = v31;
      }

      *(v33 + 16) = v16 + 1;
      v17 = v33 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_35;
      }

      v18 = *(v4 + 8 * v9);
      if ((v18 & v10) == 0)
      {
        goto LABEL_36;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_37;
      }

      v19 = v18 & (-2 << v12);
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 64 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            v25 = v7;
            sub_24E6586A8(v5, v11, 0);
            v7 = v25;
            v6 = v32;
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        v26 = v7;
        sub_24E6586A8(v5, v11, 0);
        v7 = v26;
        v6 = v32;
      }

LABEL_4:
      v5 = v8;
      if (v7 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    JUMPOUT(0x24EDACCCCLL);
  }

  return v2;
}

void sub_24EDACD00(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = sub_24F91F268();

  v6 = [v5 localizedDescription];
  v7 = sub_24F92B0D8();
  v9 = v8;

  v10 = a1();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v34 = v5;

    v14 = sub_24F9220B8();
    v15 = sub_24F92BDB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446979;
      v18 = sub_24E7620D4(v13, v12, &v35);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = [v34 domain];
      v20 = sub_24F92B0D8();
      v22 = v21;

      v23 = sub_24E7620D4(v20, v22, &v35);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2048;
      v24 = [v34 code];

      *(v16 + 24) = v24;
      *(v16 + 32) = 2081;
      v25 = sub_24E7620D4(v7, v9, &v35);

      *(v16 + 34) = v25;
      _os_log_impl(&dword_24E5DD000, v14, v15, "%{public}s: %{public}s (%ld) %{private}s", v16, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v17, -1, -1);
      MEMORY[0x2530542D0](v16, -1, -1);

      return;
    }
  }

  else
  {
    v34 = v5;

    v14 = sub_24F9220B8();
    v26 = sub_24F92BDB8();

    if (os_log_type_enabled(v14, v26))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446723;
      v27 = [v34 domain];
      v28 = sub_24F92B0D8();
      v30 = v29;

      v31 = sub_24E7620D4(v28, v30, &v35);

      *(v16 + 4) = v31;
      *(v16 + 12) = 2048;
      v32 = [v34 code];

      *(v16 + 14) = v32;
      *(v16 + 22) = 2081;
      v33 = sub_24E7620D4(v7, v9, &v35);

      *(v16 + 24) = v33;
      _os_log_impl(&dword_24E5DD000, v14, v26, "%{public}s (%ld) %{private}s", v16, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t MediaPlayer.appBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *MediaPlayer.appIcon.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t MediaPlayer.appName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MediaPlayer.appURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  swift_beginAccess();
  return sub_24E99091C(v1 + v3, a1);
}

uint64_t MediaPlayer.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);

  return v1;
}

uint64_t MediaPlayer.isPlaying.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EDAD2D4(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  *(v2 + v4) = a1;
  if (a1)
  {
    v5 = type metadata accessor for MediaRemotePlaybackTimer.PlaybackAssertion();
    v6 = swift_allocObject();
    if (qword_27F2106F8 != -1)
    {
      swift_once();
    }

    sub_24EDB2E20();
    *(&v10 + 1) = v5;
    *&v9 = v6;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion;
  swift_beginAccess();
  sub_24E8E7708(&v9, v2 + v7);
  return swift_endAccess();
}

void *MediaPlayer.artwork.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

double MediaPlayer.duration.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MediaPlayer.mediaType.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_24EDAD4B4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime);
  }

  sub_24F91F528();
  v3 = v2 - *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp);
  v4 = 0.0;
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) + v3 * *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate);
  v6 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 >= v5)
  {
    v7 = v5;
  }

  if (v7 > 0.0)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_24EDAD590(char *a1)
{
  v2 = v1;
  v3 = dword_24F99DC0C[*a1];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath))
  {

    swift_unknownObjectRetain();
    v5 = sub_24F92AE28();
    sub_24E69A5C4(0, &qword_27F222300);
    v6 = sub_24F92BEF8();
    v24 = sub_24EDB4BE0;
    v25 = v4;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_24EDADF90;
    v23 = &block_descriptor_85;
    v7 = _Block_copy(&v20);

    v8 = MRMediaRemoteSendCommandToPlayer();
    swift_unknownObjectRelease();
    _Block_release(v7);
  }

  else
  {

    v9 = sub_24F92AE28();
    v5 = sub_24F92B098();
    sub_24E69A5C4(0, &qword_27F222300);
    v6 = sub_24F92BEF8();
    v24 = sub_24EDB4BE0;
    v25 = v4;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_24EDADF90;
    v23 = &block_descriptor_82_2;
    v10 = _Block_copy(&v20);

    v8 = MRMediaRemoteSendCommandToApp();
    _Block_release(v10);
  }

  if (!v8)
  {
    v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
    v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8);
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v13 = sub_24F9220D8();
    __swift_project_value_buffer(v13, qword_27F39E7D8);

    v14 = sub_24F9220B8();
    v15 = sub_24F92BDB8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136446466;
      v18 = sub_24E7620D4(v12, v11, &v20);

      *(v16 + 4) = v18;
      *(v16 + 12) = 1024;
      *(v16 + 14) = v3;
      _os_log_impl(&dword_24E5DD000, v14, v15, "%{public}s: send command %u failed", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x2530542D0](v17, -1, -1);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24EDAD970(int a1, void *a2, uint64_t a3, int a4)
{
  v8 = sub_24F9220D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_27F39E7D8);
  (*(v9 + 16))(v11, v12, v8);
  if (a1)
  {
    v13 = sub_24F92BDB8();
  }

  else
  {
    v13 = sub_24F92BD98();
  }

  v14 = v13;
  v15 = sub_24F9220B8();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v23 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446978;
    *(v17 + 4) = sub_24E7620D4(*(a3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id), *(a3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8), &v24);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a4;
    *(v17 + 18) = 1024;
    *(v17 + 20) = a1;
    *(v17 + 24) = 2082;
    v19 = sub_24EDADBCC(v23);
    v21 = sub_24E7620D4(v19, v20, &v24);

    *(v17 + 26) = v21;
    _os_log_impl(&dword_24E5DD000, v15, v14, "%{public}s: send command %u returned %u [%{public}s]", v17, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24EDADBCC(void *a1)
{
  v2 = sub_24F91F308();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    sub_24E69A5C4(0, &qword_27F22F948);
    v6 = MEMORY[0x253051CC0](MEMORY[0x277D84F90]);
  }

  v7 = a1;
  v8 = [v6 count];
  v31 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, v8 & ~(v8 >> 63), 0);
  v9 = v31;
  result = sub_24F92C348();
  if (v8 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v24 = v3;
  v25 = v6;
  if (v8)
  {
    v26 = sub_24EDB4838(&qword_27F22F950, MEMORY[0x277CC9178]);
    do
    {
      result = sub_24F92C4D8();
      if (!v30)
      {
        goto LABEL_18;
      }

      sub_24E643A9C(&v29, &v27);
      v11 = sub_24F92B188();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v31 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24F4578E0((v14 > 1), v15 + 1, 1);
        v9 = v31;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (--v8);
  }

  sub_24EDB4838(&qword_27F22F950, MEMORY[0x277CC9178]);
  while (1)
  {
    sub_24F92C4D8();
    if (!v28)
    {
      break;
    }

    sub_24E612B0C(&v27, &v29);
    sub_24E643A9C(&v29, &v27);
    v17 = sub_24F92B188();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = v9;
    v21 = *(v9 + 16);
    v20 = *(v9 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_24F4578E0((v20 > 1), v21 + 1, 1);
      v9 = v31;
    }

    *(v9 + 16) = v21 + 1;
    v22 = v9 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
  }

  (*(v24 + 8))(v5, v2);
  sub_24E601704(&v27, &qword_27F2129B0);
  *&v29 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
  v23 = sub_24F92AF68();

  return v23;
}

void sub_24EDADF90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall MediaPlayer.perform(_:)(GameStoreKit::MediaPlayer::Command a1)
{
  v1 = *a1;
  sub_24E608448(MEMORY[0x277D84F90]);
  sub_24EDAD590(&v1);
}

Swift::Void __swiftcall MediaPlayer.seek()()
{
  v3 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  if (qword_27F210700 != -1)
  {
    swift_once();
  }

  v1 = *algn_27F39C858;
  *(inited + 32) = qword_27F39C850;
  *(inited + 40) = v1;

  v2 = sub_24EDAD4B4();
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = v2;
  sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0);
  sub_24EDAD590(&v3);
}

uint64_t sub_24EDAE168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;

  if (v1 == v5 && v2 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (v12 == 1)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_24EDAE270()
{
  *(v0 + 4) = 0;
  *(v0 + 5) = 0;
  *(v0 + 6) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork] = 0;
  v4 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate] = 0x3FF0000000000000;
  v6 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_cancellables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playbackTimerSubscription] = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_validIntervals;
  *&v0[v9] = sub_24F45DE14(&unk_2861C0BA8);
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands] = v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  *&v0[v10] = sub_24E60ED08(MEMORY[0x277D84F90]);
  result = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (result)
  {
    v12 = result;
    v13 = sub_24F92B0D8();
    v15 = v14;

    *(v0 + 2) = v13;
    *(v0 + 3) = v15;
    result = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    if (result)
    {
      v16 = result;
      v17 = sub_24F92B0D8();
      v19 = v18;

      v20 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id];
      *v20 = v17;
      v20[1] = v19;
      *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath] = 0;
      MediaPlayer.updateApp()();
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MediaPlayer.updateApp()()
{
  v1 = sub_24F927D88();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927D98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300);
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_24F92BF48();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_24EDB3DEC;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_77;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24EDB4838(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v12);
  _Block_release(v12);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);
}

uint64_t sub_24EDAE7F0()
{
  v1 = v0;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  v3 = sub_24F91F4A8();
  v36 = v2;
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion);
  *v4 = 0u;
  v4[1] = 0u;
  v34 = v4;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying) = 0;
  v35 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork) = 0;
  v5 = (v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) = 0x3FF0000000000000;
  v7 = (v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
  *v8 = 0;
  v8[1] = 0;
  v9 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_cancellables) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playbackTimerSubscription) = 0;
  v10 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_validIntervals;
  *(v1 + v10) = sub_24F45DE14(&unk_2861C0C00);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands) = v9;
  v11 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  *(v1 + v11) = sub_24E60ED08(MEMORY[0x277D84F90]);
  v12 = MRNowPlayingClientGetParentAppBundleIdentifier();
  if (!v12)
  {
    v12 = MRNowPlayingClientGetBundleIdentifier();
    if (!v12)
    {
      swift_unknownObjectRelease();

      sub_24E601704(v1 + v36, &qword_27F228530);
      sub_24E601704(v34, &qword_27F2129B0);

      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  v13 = v12;
  v14 = sub_24F92B0D8();
  v16 = v15;

  v1[2] = v14;
  v1[3] = v16;

  result = MRMediaRemoteGetLocalOrigin();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = MRNowPlayingPlayerPathCreate();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = result;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = MRNowPlayingPlayerPathCopyStringRepresentation();
  if (result)
  {
    v19 = result;

    v20 = sub_24F92B0D8();
    v22 = v21;

    v23 = (v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
    *v23 = v20;
    v23[1] = v22;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath) = v18;
    v24 = qword_27F2113D8;

    swift_unknownObjectRetain();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_24F9220D8();
    __swift_project_value_buffer(v25, qword_27F39E7D8);

    v26 = sub_24F9220B8();
    v27 = sub_24F92BDA8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136446210;
      v30 = sub_24E7620D4(v20, v22, &v37);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_24E5DD000, v26, v27, "media player: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2530542D0](v29, -1, -1);
      MEMORY[0x2530542D0](v28, -1, -1);
    }

    else
    {
    }

    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer);
    v31 = sub_24F922FA8();
    if (qword_27F2106F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for MediaRemotePlaybackTimer(0);
    sub_24EDB4838(&qword_27F22F920, type metadata accessor for MediaRemotePlaybackTimer);
    v37 = sub_24F922FA8();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_24EDB4888;
    *(v32 + 24) = v31;
    sub_24F923018();

    v33 = sub_24F923148();

    *(v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playbackTimerSubscription) = v33;

    MediaPlayer.updateApp()();
    MediaPlayer.updateContent()();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v1;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MediaPlayer.updateContent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath);
  if (v1)
  {
    v2 = v0;
    sub_24E69A5C4(0, &qword_27F222300);
    swift_unknownObjectRetain();
    v3 = sub_24F92BEF8();
    v17 = sub_24EDB3E0C;
    v18 = v0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_24EDB3428;
    v16 = &block_descriptor_3_3;
    v4 = _Block_copy(&v13);
    swift_retain_n();

    MRMediaRemoteGetPlaybackStateForPlayer();
    _Block_release(v4);

    v5 = sub_24F92BEF8();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24EDB3E10;
    *(v6 + 24) = v0;
    v17 = sub_24EDB3E50;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_24E79B350;
    v16 = &block_descriptor_6_3;
    v7 = _Block_copy(&v13);
    swift_retain_n();

    MRMediaRemoteGetSupportedCommandsForPlayer();
    _Block_release(v7);

    v8 = MRPlaybackQueueRequestCreate();
    if (v8)
    {
      v9 = v8;
      MRPlaybackQueueRequestSetIncludeMetadata();
      v10 = sub_24F92BEF8();
      v11 = swift_allocObject();
      *(v11 + 16) = sub_24EDB3E58;
      *(v11 + 24) = v2;
      v17 = sub_24EDB3E60;
      v18 = v11;
      v13 = MEMORY[0x277D85DD0];
      v14 = 1107296256;
      v15 = sub_24EDB3A64;
      v16 = &block_descriptor_12_5;
      v12 = _Block_copy(&v13);
      swift_retain_n();

      MEMORY[0x253053110](v9, v1, v10, v12);
      _Block_release(v12);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24EDAF144()
{
  type metadata accessor for MediaPlayer(0);
  v0 = swift_allocObject();
  result = sub_24EDAE270();
  qword_27F39C840 = v0;
  return result;
}

uint64_t sub_24EDAF184(uint64_t a1)
{
  v2 = sub_24F927D88();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = sub_24F91F4A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_24E69A5C4(0, &qword_27F222300);
  v16 = sub_24F92BEF8();
  sub_24E99091C(v14, v11);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  sub_24E911D90(v11, v18 + v17);
  aBlock[4] = sub_24EDB4B34;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_76_1;
  v19 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EDB4838(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v19);
  _Block_release(v19);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return sub_24E601704(v14, &qword_27F228530);
}

uint64_t sub_24EDAF598(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  type metadata accessor for MediaPlayer(0);
  sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer);
  sub_24F922FA8();
  sub_24F923008();

  swift_beginAccess();
  v10 = a1[4];
  a1[4] = a2;
  v11 = a2;

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    a3 = 0;
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  a1[5] = a3;
  a1[6] = v12;

  v13 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  swift_beginAccess();
  sub_24ED9D920(a5, a1 + v13);
  return swift_endAccess();
}

unint64_t MediaPlayer.Command.description.getter()
{
  result = 2036427888;
  switch(*v0)
  {
    case 1:
      result = 0x6573756170;
      break;
    case 2:
      result = 1801807219;
      break;
    case 3:
      result = 1886352499;
      break;
    case 4:
      result = 0x6C50656C67676F74;
      break;
    case 5:
      result = 0x636172547478656ELL;
      break;
    case 6:
      result = 0x73756F6976657270;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x4674736146646E65;
      break;
    case 9:
      result = 0x7765526E69676562;
      break;
    case 0xA:
      result = 0x6E69776552646E65;
      break;
    case 0xB:
      result = 0x77726F4670696B73;
      break;
    case 0xC:
      result = 0x6B63614270696B73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MediaPlayer.Command.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D118();
  v6 = v2;
  MediaPlayer.Command.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_24F92CEC8();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void sub_24EDAF940(void *a1@<X0>, char *a2@<X8>)
{
  if (![a1 isEnabled])
  {

    goto LABEL_5;
  }

  v4 = [a1 command];

  if (v4 >= 0x19)
  {
LABEL_5:
    v5 = 13;
    goto LABEL_6;
  }

  v5 = byte_24F99DC40[v4];
LABEL_6:
  *a2 = v5;
}

uint64_t MediaPlayer.Command.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDAFA74(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_24E9A0188;
  a2[1] = v5;
  return result;
}

uint64_t MediaPlayer.Control.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MediaPlayer.Control.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MediaPlayer.Control.image.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MediaPlayer.Control.label.getter()
{
  v1 = *(v0 + 32);
  sub_24E5FD138(v1, *(v0 + 40), *(v0 + 48));

  return v1;
}

uint64_t MediaPlayer.Control.label.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_24E600B40(*(v4 + 32), *(v4 + 40), *(v4 + 48));

  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3 & 1;
  *(v4 + 56) = a4;
  return result;
}

uint64_t sub_24EDAFCD0(void *a1)
{
  v2 = v1;
  v3 = [a1 options];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_24F92AE38();

  v6 = *MEMORY[0x277D27A88];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F938);
  sub_24EDB4950();
  sub_24F92C7F8();
  if (!*(v5 + 16) || (v7 = sub_24E76D934(v21), (v8 & 1) == 0))
  {

    sub_24E6585F8(v21);
LABEL_9:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v5 + 56) + 32 * v7, &v22);
  sub_24E6585F8(v21);

  if (!*(&v23 + 1))
  {
LABEL_10:
    sub_24E601704(&v22, &qword_27F2129B0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v21[0] + 16);
  if (!v9)
  {
LABEL_21:

    return 0;
  }

  v10 = 0;
  v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_validIntervals);
  v12 = v21[0] + 32;
  v13 = *(v11 + 16);
  v14 = v11 + 56;
  while (1)
  {
    if (v13)
    {
      v16 = *(v12 + 8 * v10);
      v17 = sub_24F92D058();
      v18 = -1 << *(v11 + 32);
      v19 = v17 & ~v18;
      if ((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        break;
      }
    }

LABEL_13:
    if (++v10 == v9)
    {
      goto LABEL_21;
    }
  }

  v20 = ~v18;
  while (*(*(v11 + 48) + 8 * v19) != v16)
  {
    v19 = (v19 + 1) & v20;
    if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return v16;
}

void sub_24EDAFF08(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924A78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = a1;
  sub_24EDAF940(v6, &v43);
  v7 = v43;
  if (v43 == 13)
  {
    goto LABEL_8;
  }

  if (v43 != 11)
  {
    if (v43 == 12)
    {
      v41 = v2;
      v8 = sub_24EDAFCD0(v6);
      if ((v9 & 1) == 0)
      {
        v10 = v8;
        v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
        [v11 setAllowedUnits_];
        [v11 setAllowsFractionalUnits_];
        [v11 setFormattingContext_];
        [v11 setUnitsStyle_];
        v12 = [v11 stringFromTimeInterval_];

        if (v12)
        {
          sub_24F92B0D8();

          v43 = 0x61776B6361626F67;
          v44 = 0xEB000000002E6472;
          v13 = sub_24F92CD88();
          MEMORY[0x253050C20](v13);

          sub_24F924A68();
          sub_24F924A58();
          sub_24F924A48();
          sub_24F924A58();
          sub_24F924A98();
          v14 = sub_24F925DE8();
          v16 = v15;
          v42 = v17;
          v19 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24F93DE60;
          if (*MEMORY[0x277D27DF8])
          {
            v21 = inited;
            sub_24E5FD138(v14, v16, v42 & 1);

LABEL_13:

            v21[4] = sub_24F92B0D8();
            v21[9] = MEMORY[0x277D83B88];
            v21[5] = v32;
            v21[6] = v10;
            v33 = sub_24E608448(v21);
            swift_setDeallocating();
            sub_24E601704((v21 + 4), &qword_27F2135C0);
            v34 = v41;
LABEL_15:
            v38 = swift_allocObject();
            *(v38 + 16) = v34;
            *(v38 + 24) = v7;
            *(v38 + 32) = v33;

            v39 = [v6 isEnabled] ^ 1;
            v40 = sub_24F926DF8();
            sub_24E600B40(v14, v16, v42 & 1);

            LOBYTE(v43) = v42 & 1;
            *a2 = sub_24EDB4910;
            *(a2 + 8) = v38;
            *(a2 + 16) = v39;
            *(a2 + 24) = v40;
            *(a2 + 32) = v14;
            *(a2 + 40) = v16;
            *(a2 + 48) = v42 & 1;
            *(a2 + 56) = v19;
            return;
          }

          __break(1u);
          goto LABEL_17;
        }
      }

LABEL_14:
      sub_24F924A88();
      v14 = sub_24F925DE8();
      v16 = v35;
      v19 = v36;
      v42 = v37;
      sub_24E5FD138(v14, v35, v37 & 1);

      v33 = sub_24E608448(MEMORY[0x277D84F90]);
      v34 = v41;
      goto LABEL_15;
    }

LABEL_8:
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v41 = v2;
  v22 = sub_24EDAFCD0(v6);
  if (v23)
  {
    goto LABEL_14;
  }

  v10 = v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v24 setAllowedUnits_];
  [v24 setAllowsFractionalUnits_];
  [v24 setFormattingContext_];
  [v24 setUnitsStyle_];
  v25 = [v24 stringFromTimeInterval_];

  if (!v25)
  {
    goto LABEL_14;
  }

  sub_24F92B0D8();

  v43 = 0x726177726F666F67;
  v44 = 0xEA00000000002E64;
  v26 = sub_24F92CD88();
  MEMORY[0x253050C20](v26);

  sub_24F924A68();
  sub_24F924A58();
  sub_24F924A48();
  sub_24F924A58();
  sub_24F924A98();
  v14 = sub_24F925DE8();
  v16 = v27;
  v29 = v28;
  v19 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_24F93DE60;
  if (*MEMORY[0x277D27DF8])
  {
    v21 = v31;
    v42 = v29;
    sub_24E5FD138(v14, v16, v29 & 1);

    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

uint64_t MediaPlayer.control(for:)@<X0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_24E7728EC(v4), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + (v7 << 6));
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[1];
    v17[0] = *v9;
    v17[1] = v12;
    v17[2] = v11;
    v17[3] = v10;
    v13 = v9[1];
    *a2 = *v9;
    a2[1] = v13;
    v14 = v9[3];
    a2[2] = v9[2];
    a2[3] = v14;
    sub_24E8B96C4(v17, &v16);
  }

  else
  {
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_24EDB0758(int a1)
{
  v2 = v1;
  v4 = sub_24F927E38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E69A5C4(0, &qword_27F222300);
  *v7 = sub_24F92BEF8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_24F927E68();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v7 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
    v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8);
    if (qword_27F2113D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E7D8);

  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136446466;
    v14 = sub_24E7620D4(v7, v4, v18);

    *(v12 + 4) = v14;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1;
    _os_log_impl(&dword_24E5DD000, v10, v11, "%{public}s state: %u", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2530542D0](v13, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {
  }

  v15 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  result = swift_beginAccess();
  if ((a1 == 1) != *(v2 + v15))
  {
    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();

    return sub_24EDAD2D4(a1 == 1);
  }

  return result;
}

uint64_t sub_24EDB0A8C(unint64_t a1, uint64_t a2)
{
  v36 = MEMORY[0x277D84FA0];
  v35 = sub_24E60ED08(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    v4 = sub_24F92C738();
    if (!v4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_29;
    }
  }

  if (v4 < 1)
  {
    __break(1u);

    __break(1u);
    JUMPOUT(0x24EDB0FFCLL);
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](i, a1);
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if ([v6 isEnabled])
    {
      v8 = [v7 command];
      v9 = 0;
      v10 = 11;
      switch(v8)
      {
        case 0u:
          goto LABEL_23;
        case 1u:
          v9 = 1;
          goto LABEL_23;
        case 2u:
          v9 = 4;
          goto LABEL_23;
        case 3u:
          v9 = 3;
          goto LABEL_23;
        case 4u:
          v9 = 5;
          goto LABEL_23;
        case 5u:
          v9 = 6;
          goto LABEL_23;
        case 8u:
          v9 = 7;
          goto LABEL_23;
        case 9u:
          v9 = 8;
          goto LABEL_23;
        case 0xAu:
          v9 = 9;
          goto LABEL_23;
        case 0xBu:
          v9 = 10;
          goto LABEL_23;
        case 0x11u:
          goto LABEL_15;
        case 0x12u:
          v10 = 12;
LABEL_15:
          sub_24ED7F584(&v30, v10);
          sub_24EDAFF08(v7, &v30);
          if (v30)
          {
            v38 = v31;
            v39 = v32;
            v40 = v33;
            v41 = v34;
            v37 = v30;
            v11 = v35;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v29[0] = v11;
            sub_24E820D2C(&v37, v10, isUniquelyReferenced_nonNull_native);

            v35 = *&v29[0];
          }

          else
          {
            sub_24E98FF88(v10, v28);

            v29[0] = v28[0];
            v29[1] = v28[1];
            v29[2] = v28[2];
            v29[3] = v28[3];
            sub_24E601704(v29, &qword_27F22F930);
          }

          continue;
        case 0x18u:
          v9 = 2;
LABEL_23:
          sub_24ED7F584(&v30, v9);
          break;
        default:
          break;
      }
    }
  }

LABEL_29:
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9220D8();
  __swift_project_value_buffer(v13, qword_27F39E7D8);
  v14 = v36;
  swift_bridgeObjectRetain_n();

  v15 = sub_24F9220B8();
  v16 = sub_24F92BDA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_24E7620D4(*(a2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id), *(a2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8), &v30);
    *(v17 + 12) = 2080;
    *&v29[0] = sub_24EDAC918(v14);

    sub_24E8C0BD4(v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
    v19 = sub_24F92AF68();
    v21 = v20;

    v22 = sub_24E7620D4(v19, v21, &v30);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_24E5DD000, v15, v16, "%s: commands: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v23 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands;
  swift_beginAccess();
  v24 = sub_24EDD4E4C(*(a2 + v23), v14);

  if (v24)
  {
  }

  else
  {
    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();

    *(a2 + v23) = v14;

    v25 = v35;
    v26 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
    swift_beginAccess();
    *(a2 + v26) = v25;
  }
}

void sub_24EDB1060(uint64_t a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    v7 = __swift_project_value_buffer(v6, qword_27F39E7D8);
    MEMORY[0x28223BE20](v7);
    sub_24EDACD00(sub_24EDB488C, a3, sub_24EDB4894);

    return;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = sub_24EDB1240();
  if (!*(v8 + 16))
  {

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = *(v8 + 32);
  swift_unknownObjectRetain();

LABEL_10:
  sub_24EDB137C(v9);

  swift_unknownObjectRelease();
}

uint64_t sub_24EDB11B0(uint64_t a1)
{
  sub_24F92C888();
  v2 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);

  MEMORY[0x253050C20](0xD000000000000028, 0x800000024FA5D710);
  return v2;
}

uint64_t sub_24EDB1240()
{
  v0 = MRPlaybackQueueCopyContentItems();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  v3 = sub_24F92B5A8();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_12:

    return v1;
  }

  v4 = sub_24F92C738();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = sub_24F92C978();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v6, v3);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v6;
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_24EDB137C(uint64_t a1)
{
  v5 = v1;
  v7 = *v1;
  v8 = sub_24F927E38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_24E69A5C4(0, &qword_27F222300);
  *v11 = sub_24F92BEF8();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_24F927E68();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if (v12)
  {
    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();

    if (!a1)
    {
      v24 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier);
      *v24 = 0;
      v24[1] = 0;

      v25 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
      *v25 = 0;
      v25[1] = 0;

      v26 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
      swift_beginAccess();
      *v26 = 0;
      v26[1] = 0;

      v27 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
      swift_beginAccess();
      *v27 = 0;
      v27[1] = 0;

      v28 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
      swift_beginAccess();
      *(v5 + v28) = 0;
      *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) = 0;
      [objc_opt_self() timeIntervalSinceReferenceDate];
      *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp) = 0;
      *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) = 0x3FF0000000000000;
      v29 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
      swift_beginAccess();
      v30 = *(v5 + v29);
      *(v5 + v29) = 0;

      v31 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
      result = swift_beginAccess();
      *(v5 + v31) = 0;
      return result;
    }

    swift_unknownObjectRetain();
    result = MRContentItemGetIdentifier();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v7 = sub_24F92B0D8();
    v2 = v17;

    v18 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier);
    *v18 = v7;
    v18[1] = v2;

    ArtworkIdentifier = MRContentItemGetArtworkIdentifier();
    if (ArtworkIdentifier)
    {
      v20 = ArtworkIdentifier;
      v21 = sub_24F92B0D8();
      v13 = v22;

      v3 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
      v23 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8);
      v76 = v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8;
      if (v23)
      {
        if (v13)
        {
          if (*v3 == v21 && v23 == v13)
          {
            v78 = 1;
          }

          else
          {
            v78 = sub_24F92CE08();
          }
        }

        else
        {
          v78 = 0;
        }

LABEL_17:
        v75 = v21;
        v11 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
        v4 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8);
        if (qword_27F2113D8 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v13 = 0;
      v3 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
      v32 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8);
      v76 = v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8;
      if (v32)
      {
        v78 = 0;
        v21 = 0;
        goto LABEL_17;
      }

      v21 = 0;
    }

    v78 = v13 == 0;
    goto LABEL_17;
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_18:
  v33 = sub_24F9220D8();
  __swift_project_value_buffer(v33, qword_27F39E7D8);

  v34 = sub_24F9220B8();
  v35 = sub_24F92BD98();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v74 = v3;
    v73 = v13;
    v37 = v36;
    v38 = v7;
    v39 = swift_slowAlloc();
    v79[0] = v39;
    *v37 = 136446467;
    v40 = sub_24E7620D4(v11, v4, v79);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2081;
    v41 = sub_24E7620D4(v38, v2, v79);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_24E5DD000, v34, v35, "%{public}s: %{private}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v39, -1, -1);
    v42 = v37;
    v13 = v73;
    v3 = v74;
    MEMORY[0x2530542D0](v42, -1, -1);
  }

  else
  {
  }

  v43 = sub_24EDB1B88();
  v45 = v44;
  v46 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
  swift_beginAccess();
  *v46 = v43;
  v46[1] = v45;

  Title = MRContentItemGetTitle();
  if (Title)
  {
    v48 = Title;
    v49 = sub_24F92B0D8();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0xE000000000000000;
  }

  v52 = (v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
  swift_beginAccess();
  *v52 = v49;
  v52[1] = v51;

  MRContentItemGetDuration();
  v54 = v53;
  v55 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
  swift_beginAccess();
  *(v5 + v55) = v54;
  MediaType = MRContentItemGetMediaType();
  v57 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
  swift_beginAccess();
  *(v5 + v57) = MediaType;
  MRContentItemGetElapsedTime();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) = v58;
  v59 = objc_opt_self();
  [v59 timeIntervalSinceReferenceDate];
  v60 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp) = v61;
  MRContentItemGetElapsedTimeTimestamp();
  if (v62 <= 0.0)
  {
    [v59 timeIntervalSinceReferenceDate];
  }

  *(v5 + v60) = v62;
  MRContentItemGetPlaybackRate();
  v64 = v63;
  v65 = v63 <= 0.0;
  v66 = 1.0;
  if (!v65)
  {
    v66 = v64;
  }

  *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) = v66;
  v67 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  swift_beginAccess();
  v68 = *(v5 + v67);
  if (v68)
  {
    if ((v78 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    swift_unknownObjectRelease();
  }

  HasArtworkData = MRContentItemGetHasArtworkData();
  if ((v78 & 1) != 0 && !HasArtworkData)
  {
    goto LABEL_33;
  }

  v68 = *(v5 + v67);
LABEL_35:
  *(v5 + v67) = 0;

  v70 = v76;
  *v3 = v75;
  *v70 = v13;

  v71 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath);
  if (v71)
  {
    v72 = sub_24F92BEF8();

    sub_24EDB1DFC(v72, sub_24EDB48C0, v5, v71);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24EDB1B88()
{
  AlbumName = MRContentItemGetAlbumName();
  if (AlbumName)
  {
    v1 = AlbumName;
    v2 = sub_24F92B0D8();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  TrackArtistName = MRContentItemGetTrackArtistName();
  if (TrackArtistName)
  {
    v6 = TrackArtistName;
    v7 = sub_24F92B0D8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    AlbumArtistName = MRContentItemGetAlbumArtistName();
    if (AlbumArtistName)
    {
      v12 = AlbumArtistName;
      v7 = sub_24F92B0D8();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }
  }

  v14 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v14 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = v7 & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v9) & 0xF;
    }

    if (v15)
    {
      MEMORY[0x253050C20](0x209380E220, 0xA500000000000000);
      MEMORY[0x253050C20](v2, v4);

      return v7;
    }

    else
    {
    }
  }

  else
  {

    return v7;
  }

  return v2;
}

uint64_t sub_24EDB1D08(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
    swift_beginAccess();
    v5 = *(a2 + v4);
    *(a2 + v4) = v3;
    v6 = v3;

    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();
  }

  return result;
}

uint64_t sub_24EDB1DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v8 = sub_24F9220D8();
  __swift_project_value_buffer(v8, qword_27F39E7D8);
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDA8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24E5DD000, v9, v10, "requesting artwork", v11, 2u);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  result = MRPlaybackQueueRequestCreate();
  if (result)
  {
    v13 = result;
    MRPlaybackQueueRequestSetIncludeArtwork();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_24EDB48C8;
    *(v15 + 24) = v14;
    v17[4] = sub_24EDB4C70;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24EDB3A64;
    v17[3] = &block_descriptor_67_1;
    v16 = _Block_copy(v17);

    MEMORY[0x253053110](v13, a4, a1, v16);
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MediaPlayer.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL, &qword_27F228530);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion, &qword_27F2129B0);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t MediaPlayer.__deallocating_deinit()
{
  MediaPlayer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EDB21B4@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_24EDB21D0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1852793705;
  if (v1 != 6)
  {
    v3 = 0x6B63616279616C70;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 4)
  {
    v4 = 0x64657370616C65;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6B726F77747261;
  if (v1 != 2)
  {
    v5 = 0x73646E616D6D6F63;
  }

  if (*v0)
  {
    v2 = 0x657669746361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EDB22BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EDB45AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EDB22E4(uint64_t a1)
{
  v2 = sub_24EDB3E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDB2320(uint64_t a1)
{
  v2 = sub_24EDB3E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaPlayer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDB3E68();
  sub_24F92D128();
  v16 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v16 = 1;
    sub_24F92CD18();
    swift_beginAccess();
    v15 = 2;
    sub_24F92CD18();
    v9 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands;
    swift_beginAccess();
    v14 = *(v3 + v9);
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F830);
    sub_24EDB3EBC();
    sub_24F92CD48();
    swift_beginAccess();
    v13 = 4;
    sub_24F92CD28();
    sub_24EDAD4B4();
    v13 = 5;
    sub_24F92CD28();
    swift_beginAccess();
    v12 = 6;
    sub_24F92CD18();
    if (*(v3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) != 1.0)
    {
      v12 = 7;
      sub_24F92CD28();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EDB26C8()
{
  type metadata accessor for MediaRemotePlaybackTimer(0);
  swift_allocObject();
  result = sub_24EDB2788(0.1);
  qword_27F39C848 = result;
  return result;
}

uint64_t sub_24EDB2710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

uint64_t sub_24EDB2788(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F8F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__now;
  sub_24F91F548();
  (*(v8 + 16))(v10, v13, v7);
  sub_24F923058();
  (*(v8 + 8))(v13, v7);
  (*(v4 + 32))(v1 + v14, v6, v3);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_enableCount) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer) = 0;
  v15 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer___lock;
  type metadata accessor for UnfairControlsLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v1 + v15) = v16;
  v18 = (v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__enablementAssertions);
  *v18 = v16;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__playbackAssertions);
  *v19 = v16;
  v19[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_interval) = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_24EDB29EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F8F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E7D8);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v6, v7, "start playback timer", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  sub_24E69A5C4(0, &qword_27F22F900);
  v9 = [objc_opt_self() mainRunLoop];
  v10 = sub_24F92C468();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_24F92C368();

  sub_24E601704(v4, &qword_27F22F8F8);
  v16 = v11;
  sub_24F92C358();
  sub_24EDB4838(&qword_27F22F908, MEMORY[0x277CC9DF0]);
  v12 = sub_24F922FF8();

  v16 = v12;
  swift_getKeyPath();
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F910);
  sub_24E602068(&qword_27F22F918, &qword_27F22F910);
  v13 = sub_24F923158();

  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer) = v13;
}

uint64_t sub_24EDB2D00()
{
  v1 = v0;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7D8);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "stop playback timer", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer))
  {

    sub_24F922F78();
  }

  *(v1 + v6) = 0;
}

uint64_t sub_24EDB2E20()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__playbackAssertions);
  swift_beginAccess();
  v2 = *v1;
  os_unfair_lock_lock(*(*v1 + 16));
  v3 = v1[1];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1[1] = v5;
  if (v5 != 1)
  {
    if (v5 > 1)
    {
      os_unfair_lock_unlock(*(v2 + 16));
      return swift_endAccess();
    }

LABEL_9:
    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  os_unfair_lock_unlock(*(v2 + 16));
  swift_endAccess();
  v6 = (v0 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__enablementAssertions);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = *(*v6 + 16);

  os_unfair_lock_lock(v9);
  os_unfair_lock_unlock(*(v7 + 16));

  if (v8)
  {
    return sub_24EDB29EC();
  }

  return result;
}

uint64_t sub_24EDB2F58(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  os_unfair_lock_lock(*(*v2 + 16));
  v4 = v2[1];
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_8:
    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  v2[1] = v6;
  if (v6)
  {
    if (v6 > 0)
    {
      os_unfair_lock_unlock(*(v3 + 16));
      return swift_endAccess();
    }

    goto LABEL_8;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  swift_endAccess();
  return sub_24EDB2D00();
}

uint64_t sub_24EDB3040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

uint64_t sub_24EDB30BC(uint64_t a1)
{
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_24F9230A8();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_24EDB322C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__now;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F8F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EDB3314()
{
  result = *MEMORY[0x277D27D50];
  if (*MEMORY[0x277D27D50])
  {
    result = sub_24F92B0D8();
    qword_27F39C850 = result;
    *algn_27F39C858 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDB33D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (*a2)
  {
    sub_24F92B0D8();
    v5 = sub_24F92B098();

    *a3 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDB3428(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_24EDB347C(uint64_t a1, void *a2, void (*a3)(void))
{
  if (a2)
  {
    v4 = qword_27F2113D8;
    v5 = a2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    v7 = __swift_project_value_buffer(v6, qword_27F39E7D8);
    MEMORY[0x28223BE20](v7);
    sub_24EDACD00(sub_24EDB3608, 0, sub_24EDB4C98);
    a3(MEMORY[0x277D84F90]);
  }

  else
  {
    if (a1)
    {
      sub_24E69A5C4(0, &qword_27F22F928);
      sub_24F92B598();
    }

    a3(MEMORY[0x277D84F90]);
  }
}

void sub_24EDB3624(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    if (*(sub_24EDB1240() + 16))
    {
      swift_unknownObjectRetain();

      ArtworkData = MRContentItemGetArtworkData();
      if (ArtworkData)
      {
        v5 = ArtworkData;
        v6 = sub_24F91F4E8();
        v8 = v7;

        v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v10 = sub_24F91F4C8();
        v11 = [v9 initWithData_];

        sub_24E627880(v6, v8);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v11 = 0;
LABEL_8:
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9220D8();
  __swift_project_value_buffer(v12, qword_27F39E7D8);
  v24 = v11;
  v13 = sub_24F9220B8();
  v14 = sub_24F92BDA8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    if (v11)
    {
      [v24 size];
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = NSStringFromSize(*&v17);
    v20 = sub_24F92B0D8();
    v22 = v21;

    v23 = sub_24E7620D4(v20, v22, &v25);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_24E5DD000, v13, v14, "artwork: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2530542D0](v16, -1, -1);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  a3(v11);
}

uint64_t sub_24EDB38B4()
{
  result = MRNowPlayingPlayerPathCopyStringRepresentation();
  if (result)
  {
    v1 = result;
    v2 = sub_24F92B0D8();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDB3924(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v5 = qword_27F2113D8;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_24F9220D8();
    v8 = __swift_project_value_buffer(v7, qword_27F39E7D8);
    MEMORY[0x28223BE20](v8);
    sub_24EDACD00(sub_24EDB3A48, 0, sub_24EDB4C98);
  }

  if (!a1)
  {
    return a3(0);
  }

  v9 = swift_unknownObjectRetain();
  a3(v9);
  return swift_unknownObjectRelease();
}

void sub_24EDB3A64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

const void *sub_24EDB3ADC(CFArrayRef theArray, void *a2, void (*a3)(id))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v5 = qword_27F2113D8;
  v6 = a2;
  if (v5 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v7 = sub_24F9220D8();
    v8 = __swift_project_value_buffer(v7, qword_27F39E7D8);
    MEMORY[0x28223BE20](v8);
    sub_24EDACD00(sub_24EDB3CA8, 0, sub_24EDB4C98);

LABEL_4:
    v6 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    if (!theArray)
    {
      goto LABEL_14;
    }

    Count = CFArrayGetCount(theArray);
    if ((Count & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v10 = Count;
  if (!Count)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_14:
    a3(v6);
  }

  v11 = 0;
  while (1)
  {
    result = CFArrayGetValueAtIndex(theArray, v11);
    if (!result)
    {
      break;
    }

    v13 = swift_unknownObjectRetain_n();
    MEMORY[0x253050F00](v13);
    if (v14[2] >= v14[3] >> 1)
    {
      sub_24F92B5E8();
    }

    ++v11;
    sub_24F92B638();
    swift_unknownObjectRelease();
    if (v10 == v11)
    {
      v6 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_24EDB3CC4(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  if (a2)
  {
    v6 = a2;
  }

  if (a1)
  {
    swift_unknownObjectRetain();
  }

  v7 = a2;
  a3(a1, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_24EDB3D68(void *a1)
{
  if (qword_27F2106F8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  sub_24EDB2F58(a1);

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EDB3E18()
{

  return swift_deallocObject();
}

unint64_t sub_24EDB3E68()
{
  result = qword_27F22F828;
  if (!qword_27F22F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F828);
  }

  return result;
}

unint64_t sub_24EDB3EBC()
{
  result = qword_27F22F838;
  if (!qword_27F22F838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F830);
    sub_24EDB3F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F838);
  }

  return result;
}

unint64_t sub_24EDB3F40()
{
  result = qword_27F22F840;
  if (!qword_27F22F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F840);
  }

  return result;
}

unint64_t sub_24EDB3FDC()
{
  result = qword_27F22F860;
  if (!qword_27F22F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F860);
  }

  return result;
}

uint64_t sub_24EDB4030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EDB40B0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24E972460;
  a2[1] = v5;
}

void sub_24EDB4148()
{
  sub_24EDB43D8(319, &qword_27F218378, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EDB42E4()
{
  sub_24EDB43D8(319, &qword_27F22F8D0, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EDB43D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24EDB44A8()
{
  result = qword_27F22F8D8;
  if (!qword_27F22F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F8D8);
  }

  return result;
}

unint64_t sub_24EDB4500()
{
  result = qword_27F22F8E0;
  if (!qword_27F22F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F8E0);
  }

  return result;
}

unint64_t sub_24EDB4558()
{
  result = qword_27F22F8E8;
  if (!qword_27F22F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F8E8);
  }

  return result;
}

uint64_t sub_24EDB45AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64657370616C65 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000065746152)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EDB4838(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_24EDB4894()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_24EDB48D0()
{

  return swift_deallocObject();
}

unint64_t sub_24EDB4950()
{
  result = qword_27F22F940;
  if (!qword_27F22F940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F938);
    sub_24EDB4838(&qword_27F212508, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F940);
  }

  return result;
}

uint64_t sub_24EDB4A04()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);

  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24EDB4B34()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_24EDAF598(v2, v3, v4, v5, v6);
}

uint64_t sub_24EDB4BA8()
{

  return swift_deallocObject();
}

unint64_t sub_24EDB4C00()
{
  result = qword_27F22F958;
  if (!qword_27F22F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F958);
  }

  return result;
}

uint64_t static UICollectionReusableView.defaultReuseIdentifier.getter()
{
  v1 = v0;
  if (qword_27F211078 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F39E178;
  if (*(qword_27F39E178 + 16) && (v3 = sub_24E76D97C(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    v5 = sub_24F92B0D8();
    v9 = v8;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = qword_27F39E178;
    qword_27F39E178 = 0x8000000000000000;
    sub_24E81E5A4(v5, v9, v1, isUniquelyReferenced_nonNull_native);
    qword_27F39E178 = v12;
    swift_endAccess();
  }

  return v5;
}

uint64_t static UICollectionReusableView.elementKind.getter()
{
  v1 = v0;
  if (qword_27F211080 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F39E180;
  if (*(qword_27F39E180 + 16) && (v3 = sub_24E76D97C(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v11 = v6;
    MEMORY[0x253050C20](0x746E656D656C652ELL, 0xEC000000646E694BLL);
    v5 = v10;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = qword_27F39E180;
    qword_27F39E180 = 0x8000000000000000;
    sub_24E81E5A4(v10, v11, v1, isUniquelyReferenced_nonNull_native);
    qword_27F39E180 = v9;
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_24EDB4F5C()
{
  v1 = v0;
  if (qword_27F211088 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F39E188;
  if (*(qword_27F39E188 + 16) && (v3 = sub_24E76D97C(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_24F92C888();
    v6 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v8 = v7;

    MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA5D7A0);
    v5 = v6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = qword_27F39E188;
    qword_27F39E188 = 0x8000000000000000;
    sub_24E81E5A4(v6, v8, v1, isUniquelyReferenced_nonNull_native);
    qword_27F39E188 = v11;
    swift_endAccess();
  }

  return v5;
}

uint64_t static UICollectionReusableView.makeUniqueElementKind()()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = static UICollectionReusableView.elementKind.getter();
  v9[1] = v4;
  MEMORY[0x253050C20](95, 0xE100000000000000);
  sub_24F91F6A8();
  v5 = sub_24F91F668();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x253050C20](v5, v7);

  return v9[0];
}

uint64_t static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)(uint64_t a1, char a2)
{
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = 0;
  v16 = 0xE000000000000000;
  v7 = sub_24EDB4F5C();
  MEMORY[0x253050C20](v7);
  if (a2)
  {

    MEMORY[0x253050C20](95, 0xE100000000000000);
    sub_24F91F6A8();
    v8 = sub_24F91F668();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
    MEMORY[0x253050C20](v8, v10);
  }

  sub_24F92AF28();
  type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A48();

  v11 = sub_24F92C7A8();
  MEMORY[0x253050C20](v11);

  sub_24E6585F8(v14);
  return v15;
}

uint64_t sub_24EDB5400(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_24E600AEC();
  v3 = sub_24F92C5F8();

  return v3 & 1;
}

double String.extractElementKindContentIdentifier()@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = 47;
  v19[1] = 0xE100000000000000;
  v18[2] = v19;

  v7 = sub_24EDB5584(0x7FFFFFFFFFFFFFFFLL, 1, sub_24E61B674, v18, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32 * v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];

    v14 = MEMORY[0x253050B50](v10, v11, v12, v13);
    v16 = v15;

    v18[4] = v14;
    v18[5] = v16;
    sub_24F92C7F8();
    DiffablePageContentIdentifier.init(_:)(v19, a3);
  }

  else
  {

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_24EDB5584@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24F92B3D8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24E619400(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24E619400((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24F92B3A8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24F92B238();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24F92B238();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24F92B3D8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24E619400(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24F92B3D8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24E619400(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24E619400((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24F92B238();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t PurchaseHistory.init(isAppleSiliconSupportEnabled:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v12 = a2;
  v11 = sub_24F92BEE8();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92BE88();
  MEMORY[0x28223BE20](v6);
  v10[1] = sub_24E69A5C4(0, &qword_27F222300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v14 = v7;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v11);
  result = sub_24F92BF38();
  v9 = v12;
  *(v12 + 8) = result;
  *v9 = v13;
  return result;
}

uint64_t sub_24EDB5C48()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C8E0);
  __swift_project_value_buffer(v4, qword_27F39C8E0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id PurchaseHistory.defaultPurchaseQuery.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
  [v0 setAccountID_];
  [v0 setIsHidden_];
  [v0 setIsFirstParty_];
  [v0 setIsPreorder_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F941C80;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x277CEC420]) initWithName:*MEMORY[0x277CEC4E0] ascending:0];
  sub_24E69A5C4(0, &qword_27F22F960);
  v2 = sub_24F92B588();

  [v0 setSortOptions_];

  return v0;
}

id PurchaseHistory.makeQuery(for:)(uint64_t a1)
{
  v2 = PurchaseHistory.defaultPurchaseQuery.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  sub_24E69A5C4(0, &qword_27F22BD50);
  v4 = sub_24F92B588();

  [v2 setStoreIDs_];

  return v2;
}

void *PurchaseHistory.makeQuery(isVisible:excludePreorders:searchTerm:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = PurchaseHistory.defaultPurchaseQuery.getter();
  v8 = v7;
  if (a1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setIsHidden_];
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [v8 setIsPreorder_];
  if (a4 && sub_24F92B228() >= 1)
  {
    v11 = sub_24E600AEC();
    v12 = MEMORY[0x277D837D0];
    sub_24F92C568();
    sub_24F92C568();

    v20 = v11;
    v21 = v11;
    v18 = v12;
    v19 = v11;
    v13 = sub_24F92C568();
    v15 = v14;

    MEMORY[0x253050C20](v13, v15);

    MEMORY[0x253050C20](37, 0xE100000000000000);
    v16 = sub_24F92B098();

    [v8 setSearchTerm_];
  }

  return v8;
}

void PurchaseHistory.execute(_:familyMemberIDs:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = *(v4 + 8);
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v13 = sub_24F92AB18();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_24E601704(v11, &qword_27F2330E0);
LABEL_12:
    sub_24E60C238(MEMORY[0x277D84F90]);
    a3();

    return;
  }

  v15 = sub_24F92AB08();
  (*(v14 + 8))(v11, v13);
  v16 = [v15 ams_DSID];

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = [v16 longLongValue];

  if (![a1 accountID])
  {
    v18 = sub_24EDB6908(v17);
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_15:
    v43 = [objc_opt_self() sharedInstance];
    v44 = swift_allocObject();
    v44[2] = v12;
    v44[3] = a3;
    v44[4] = a4;
    v44[5] = v17;
    v57 = sub_24EDB8C98;
    v58 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_24EDB6F60;
    v56 = &block_descriptor_78;
    v45 = _Block_copy(&aBlock);

    v46 = v12;

    [v43 executeQuery:v18 withResultHandler:v45];
    _Block_release(v45);

    return;
  }

  v18 = a1;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_6:
  v50 = a4;
  v51 = a1;
  v48 = a3;
  v49 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F941C80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F968);
  v20 = sub_24F92A9E8();
  v21 = objc_opt_self();
  v22 = a2;
  v23 = [v21 sharedInstance];
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v18;
  v57 = sub_24EDB8CC0;
  v58 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24EDB6F60;
  v56 = &block_descriptor_6_4;
  v25 = _Block_copy(&aBlock);

  v26 = v18;

  v47 = v26;
  [v23 executeQuery:v26 withResultHandler:v25];
  _Block_release(v25);

  v27 = v22;
  *(v19 + 32) = v20;
  v52 = v19;
  v28 = *(v22 + 16);
  if (v28)
  {
    v29 = (v27 + 32);
    do
    {
      v30 = *v29++;
      v31 = sub_24EDB6908(v30);
      v32 = sub_24F92A9E8();
      v33 = [v21 sharedInstance];
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = v31;
      v57 = sub_24EDB90A8;
      v58 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_24EDB6F60;
      v56 = &block_descriptor_13_0;
      v35 = _Block_copy(&aBlock);

      v36 = v31;

      [v33 executeQuery:v36 withResultHandler:v35];
      _Block_release(v35);

      MEMORY[0x253050F00]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      --v28;
    }

    while (v28);
    v19 = v52;
  }

  aBlock = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F978);
  sub_24E602068(&qword_27F22F980, &qword_27F22F970);
  sub_24E602068(&qword_27F22F988, &qword_27F22F968);
  sub_24F92A4C8();

  v37 = swift_allocObject();
  v38 = v48;
  v39 = v50;
  *(v37 + 16) = v48;
  *(v37 + 24) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  v56 = sub_24E69A5C4(0, &qword_27F222300);
  v57 = MEMORY[0x277D225C0];
  v41 = v49;
  aBlock = v49;
  swift_retain_n();
  v42 = v41;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

id sub_24EDB6908(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
  [v3 setAccountID_];
  [v3 setIsFirstParty_];
  [v3 setIsHidden_];
  [v3 setIsPreorder_];
  v4 = [v1 searchTerm];
  [v3 setSearchTerm_];

  v5 = [v1 sortOptions];
  [v3 setSortOptions_];

  v6 = [v1 storeIDs];
  [v3 setStoreIDs_];

  v7 = [v1 bundleIDs];
  [v3 setBundleIDs_];

  [v3 setIsIOSBinaryMacOSCompatible_];
  [v3 setCurrentlyOptedInForMacOSEligibility_];
  [v3 setCurrentlyOptedInForXROSEligibility_];
  [v3 setOptedInForMacOSEligibility_];
  [v3 setOptedInForXROSEligibility_];
  [v3 setSupportsRealityDevice_];
  return v3;
}

uint64_t sub_24EDB6B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v10 = sub_24F927D88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F927DC8();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  aBlock[4] = sub_24EDB9058;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_101;
  v18 = _Block_copy(aBlock);

  sub_24F927DA8();
  v23 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_24EDB6E58(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = a4;
    v8 = inited + 32;
    *(inited + 40) = a1;
    v9 = sub_24E60C238(inited);
    swift_setDeallocating();

    sub_24E601704(v8, &qword_27F22F998);
    (a2)(v9);
  }

  else
  {
    sub_24E60C238(MEMORY[0x277D84F90]);
    a2();
  }
}

uint64_t sub_24EDB6F60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, &qword_27F225130);
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

void PurchaseHistory.setHidden(_:forStoreItemID:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a3;
  v13[4] = a4;
  v15[4] = sub_24EDB8D88;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_25_1;
  v14 = _Block_copy(v15);

  [v12 setHidden:a1 & 1 forStoreItemID:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void PurchaseHistory.showAll(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_24EDB8DCC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E9FABA0;
  v11[3] = &block_descriptor_31;
  v10 = _Block_copy(v11);

  [v8 showAllWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_24EDB7264(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a2;
  v12 = sub_24F927D88();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F927DC8();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  v20 = a1;
  sub_24F927DA8();
  v25 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);
}

void PurchaseHistory.update(for:in:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = sub_24EDB8E14;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_37_0;
  v14 = _Block_copy(v15);

  [v12 updateForAccountID:a1 withContext:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void PurchaseHistory.update(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_24EDB8E58;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E9FABA0;
  v13[3] = &block_descriptor_43;
  v12 = _Block_copy(v13);

  [v10 updateWithContext:a1 withCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_24EDB77A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v27 = a2;
  v12 = sub_24F927D88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F927DC8();
  v16 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_24F927DA8();
  v28 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v18, v15, v20);
  _Block_release(v20);
  (*(v13 + 8))(v15, v12);
  (*(v16 + 8))(v18, v26);
}

uint64_t sub_24EDB7A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    if (qword_27F210740 != -1)
    {
      swift_once();
    }

    v6 = 0xD000000000000010;
    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39C8E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    if (a2 <= 1)
    {
      if (!a2)
      {
        v8 = a3;
        v9 = 0xE700000000000000;
        v6 = 0x746C7561666564;
        goto LABEL_16;
      }

      if (a2 == 1)
      {
        v8 = a3;
        v9 = 0xED00006567615073;
        v6 = 0x6573616863727570;
        goto LABEL_16;
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v8 = a3;
          v9 = 0x800000024FA5D810;
          goto LABEL_16;
        case 3:
          v8 = a3;
          v9 = 0xEE006465676E6168;
          v6 = 0x43746E756F636361;
          goto LABEL_16;
        case 2:
          v8 = a3;
          v9 = 0xE800000000000000;
          v6 = 0x776F685365646968;
LABEL_16:
          v10 = MEMORY[0x277D837D0];
          v16 = MEMORY[0x277D837D0];
          v14 = v6;
          v15 = v9;
          sub_24F928438();
          sub_24E601704(&v14, &qword_27F2129B0);
          sub_24F9283A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670);
          v11 = sub_24F92C498();
          v16 = v10;
          v14 = v11;
          v15 = v12;
          sub_24F928438();
          sub_24E601704(&v14, &qword_27F2129B0);
          sub_24F92A588();

          a3 = v8;
          return a3(a1 == 0);
      }
    }

    v8 = a3;
    v9 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

  return a3(a1 == 0);
}

void sub_24EDB7DA0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24E60C238(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v4;
      sub_24EDB887C(v7, sub_24EDB8C84, 0, isUniquelyReferenced_nonNull_native, &v9);
      v4 = v9;
      --v5;
    }

    while (v5);
  }

  *a2 = v4;
}

uint64_t sub_24EDB7E58@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v33)
  {
    v38 = v4;
    v7 = MEMORY[0x277D84F90];
    if (i)
    {
      v39 = MEMORY[0x277D84F90];
      result = sub_24F458A10(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v3;
      v10 = 0;
      v11 = v39;
      v12 = v5;
      v13 = v5 & 0xC000000000000001;
      do
      {
        if (v13)
        {
          v14 = MEMORY[0x253052270](v10, v12);
        }

        else
        {
          v14 = *(v12 + 8 * v10 + 32);
        }

        v15 = v14;
        v16 = [v14 storeItemID];

        v18 = *(v39 + 16);
        v17 = *(v39 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_24F458A10((v17 > 1), v18 + 1, 1);
        }

        ++v10;
        *(v39 + 16) = v18 + 1;
        *(v39 + 8 * v18 + 32) = v16;
        v12 = v38;
      }

      while (i != v10);
      v3 = v9;
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v19 = sub_24F45DE3C(v11);

    v40 = v7;
    if (v3 >> 62)
    {
      break;
    }

    v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_36;
    }

LABEL_16:
    v35 = v3;
    v21 = 0;
    v37 = v3 & 0xC000000000000001;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    v3 += 32;
    v22 = v19 + 56;
    while (1)
    {
      if (v37)
      {
        v23 = MEMORY[0x253052270](v21, v35);
      }

      else
      {
        if (v21 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v23 = *(v3 + 8 * v21);
      }

      v24 = v23;
      if (__OFADD__(v21++, 1))
      {
        break;
      }

      v26 = [v23 storeItemID];
      if (*(v19 + 16) && (v27 = v26, v28 = sub_24F92D058(), v29 = -1 << *(v19 + 32), v30 = v28 & ~v29, ((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (*(*(v19 + 48) + 8 * v30) != v27)
        {
          v30 = (v30 + 1) & v31;
          if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      if (v21 == v20)
      {
        v32 = v40;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v33 = sub_24F92C738();
    v4 = v5;
  }

  v20 = sub_24F92C738();
  if (v20)
  {
    goto LABEL_16;
  }

LABEL_36:
  v32 = MEMORY[0x277D84F90];
LABEL_37:

  result = sub_24EA0B834(v34);
  *a3 = v32;
  return result;
}

void sub_24EDB8170(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;

    *(inited + 32) = [a4 accountID];
    *(inited + 40) = a1;
    sub_24E60C238(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F22F998);
LABEL_3:
    sub_24F92A9C8();

    return;
  }

  if (!a2)
  {
    sub_24E60C238(MEMORY[0x277D84F90]);
    goto LABEL_3;
  }

  v8 = a2;
  sub_24F92A9A8();
}

id sub_24EDB82AC(uint64_t a1)
{
  v2 = PurchaseHistory.defaultPurchaseQuery.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  sub_24E69A5C4(0, &qword_27F22BD50);
  v4 = sub_24F92B588();

  [v2 setStoreIDs_];

  return v2;
}

void sub_24EDB8394(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a3;
  v13[4] = a4;
  v15[4] = sub_24EDB90D8;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_71_0;
  v14 = _Block_copy(v15);

  [v12 setHidden:a1 & 1 forStoreItemID:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void sub_24EDB84D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_24EDB90D4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E9FABA0;
  v11[3] = &block_descriptor_64;
  v10 = _Block_copy(v11);

  [v8 showAllWithCompletionHandler_];
  _Block_release(v10);
}

void sub_24EDB85F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = sub_24EDB90A4;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_57_0;
  v14 = _Block_copy(v15);

  [v12 updateForAccountID:a1 withContext:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void sub_24EDB8734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_24EDB90A0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E9FABA0;
  v13[3] = &block_descriptor_50_0;
  v12 = _Block_copy(v13);

  [v10 updateWithContext:a1 withCompletionHandler:v12];
  _Block_release(v12);
}

void sub_24EDB887C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v17)
  {
    if (!v9)
    {
      v18 = i;
      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v17 >= v10)
        {
          sub_24E6586B4();

          return;
        }

        v16 = *(v6 + 8 * v17);
        ++v18;
        if (v16)
        {
          v37 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_24F92CF88();
      __break(1u);
      goto LABEL_34;
    }

    v37 = a4;
    v16 = v9;
    v17 = i;
LABEL_15:
    v19 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v20 = *(*(a1 + 56) + v19);
    v42 = *(*(a1 + 48) + v19);
    v43 = v20;

    a2(&v40, &v42);

    v22 = v40;
    v21 = v41;
    v44 = v41;
    v23 = *a5;
    v25 = sub_24E7728CC(v40);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_31;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (v37)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_24E8B3EDC();
      if (v29)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *a5;
    *(*a5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    *(v12[6] + 8 * v25) = v22;
    *(v12[7] + 8 * v25) = v21;
    v13 = v12[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_32;
    }

    v12[2] = v15;
LABEL_7:
    v9 = (v16 - 1) & v16;
    a4 = 1;
  }

  sub_24E8A43A4(v28, v37 & 1);
  v30 = sub_24E7728CC(v22);
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_33;
  }

  v25 = v30;
  if ((v29 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v32 = *a5;
  v39 = *(*(*a5 + 56) + 8 * v25);

  sub_24EDB7E58(&v39, &v44, &v42);
  if (!v35)
  {

    *(v32[7] + 8 * v25) = v42;

    goto LABEL_7;
  }

  v39 = v35;
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_24E6586B4();

    return;
  }

LABEL_34:
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
  sub_24F92CA38();
  MEMORY[0x253050C20](39, 0xE100000000000000);
  sub_24F92CA88();
  __break(1u);
}