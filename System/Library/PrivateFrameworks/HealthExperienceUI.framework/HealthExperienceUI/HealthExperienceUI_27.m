id sub_1BA1E6D34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = type metadata accessor for SharedProfileOverviewViewController();
  v13[3] = v1;
  v13[0] = v0;
  v2 = v0;
  v3 = sub_1BA4A6758();

  if (v1)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v13, v1);
    v5 = *(v1 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1BA4A8328();
    (*(v5 + 8))(v8, v1);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v11 = [v10 initWithTitle:v3 style:0 target:v9 action:{sel_optionsButtonTapped_, v13[0]}];

  swift_unknownObjectRelease();
  return v11;
}

void sub_1BA1E6F58()
{
  v1 = v0;
  v2 = sub_1BA4A3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1E8ACC(0, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1BA4A33C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v14 = [*&v1[v13] profileIdentifier];

  sub_1BA0CE620(v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BA1E8C9C(v8, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1BA4A2AB8();
    (*(v10 + 8))(v12, v9);
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69A2C30], v2);
  v15 = v14;
  v16 = sub_1BA4A35B8();

  (*(v3 + 8))(v5, v2);
  [v1 setUserActivity_];
}

id sub_1BA1E7298(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64 - v5;
  sub_1BA1E8ACC(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v64 - v8;
  v10 = sub_1BA4A3678();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - v16;
  v70 = a1;
  v18 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BA1E8C9C(v9, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    sub_1BA4A3E48();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v77[0] = v22;
      *v21 = 136446210;
      *&v84[0] = ObjectType;
      swift_getMetatypeMetadata();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, v77);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s] user activity passed in does not have a valid activity type", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v68 + 8))(v6, v69);
    v27 = v70;
    v26 = v71;
    v28 = type metadata accessor for SharedProfileOverviewViewController();
    v89.receiver = v26;
    v29 = &v89;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v13, v17, v10);
    v30 = (*(v11 + 88))(v13, v10);
    if (v30 == *MEMORY[0x1E69A2C68])
    {
      v65 = v17;
      v31 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
      v32 = v71;
      swift_beginAccess();
      v33 = *&v32[v31];
      UIViewController.resolvedHealthExperienceStore.getter(v84);
      UIViewController.resolvedPresentation.getter(&v74);
      v34 = v74;
      v35 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
      *&v35[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables] = MEMORY[0x1E69E7CD0];
      *&v35[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] = v33;
      sub_1B9F0A534(v84, &v35[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore]);
      LOBYTE(v77[0]) = v34;
      v36 = Presentation.description.getter();
      v37 = &v35[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance];
      *v37 = v36;
      v37[1] = v38;
      sub_1B9F0A534(v84, v77);
      type metadata accessor for AllTrendsDataSource(0);
      v69 = swift_allocObject();
      sub_1B9F0A534(v77, v87);
      LOBYTE(v72) = v34;
      type metadata accessor for AllTrendsHeaderDataSource(0);
      swift_allocObject();
      v39 = v33;
      v40 = sub_1BA297AC0(v39, v87, &v72);

      sub_1B9F0A534(v77, v87);
      type metadata accessor for AllTrendsSectionedDataSource(0);
      swift_allocObject();
      v41 = v39;
      v42 = sub_1BA296558(v41, v87, MEMORY[0x1E69E7CC0]);
      type metadata accessor for NoDataDataSource();
      swift_allocObject();

      v43 = NoDataDataSource.init()();
      sub_1BA1E8DB4();
      swift_allocObject();
      v44 = sub_1BA063C54(v42, v43);

      swift_beginAccess();
      v44[5] = sub_1BA29613C;
      v44[6] = 0;

      sub_1B9F1DEA0();
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1BA4B5460;
      *(v45 + 32) = v40;
      *(v45 + 40) = &protocol witness table for MutableArrayDataSource;
      *(v45 + 48) = v44;
      *(v45 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
      v46 = CompoundSectionedDataSource.init(_:)(v45);

      __swift_destroy_boxed_opaque_existential_1(v77);
      *&v35[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource] = v46;

      v48 = CompoundDataSourceCollectionViewController.init(dataSource:)(v47);

      __swift_destroy_boxed_opaque_existential_1(v84);
      v49 = [v32 navigationController];
      if (v49)
      {
        v50 = v49;
        [v49 pushViewController:v48 animated:0];
      }

      v27 = v70;
      [v48 restoreUserActivityState_];
    }

    else
    {
      if (v30 != *MEMORY[0x1E69A2C00])
      {
        v57 = *(v11 + 8);
        v57(v17, v10);
        v57(v13, v10);
        v28 = type metadata accessor for SharedProfileOverviewViewController();
        v27 = v70;
        v88 = v71;
        v29 = &v88;
        goto LABEL_19;
      }

      v65 = v17;
      v51 = v71;
      UIViewController.resolvedHealthExperienceStore.getter(v87);
      v52 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
      swift_beginAccess();
      v53 = *&v51[v52];
      v54 = [v53 profileIdentifier];
      LOBYTE(v77[0]) = 15;
      v55 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v54, v77);

      UIViewController.resolvedPinnedContentManager.getter(v83);
      sub_1B9F0A534(v87, v77);
      *(&v78 + 1) = v53;
      LOBYTE(v79) = v55;
      sub_1BA4A2488();
      swift_allocObject();
      v56 = v53;
      *(&v79 + 1) = sub_1BA4A2468();
      sub_1BA10F7B4(v83, &v72);
      v27 = v70;
      if (v73)
      {

        sub_1BA10F728(v83);
        __swift_destroy_boxed_opaque_existential_1(v87);
        sub_1B9F1134C(&v72, &v74);
      }

      else
      {
        v58 = sub_1BA4A22B8();
        v59 = sub_1BA4A22A8();
        v75 = v58;
        v76 = MEMORY[0x1E69A3CF8];
        *&v74 = v59;
        sub_1BA10F728(v83);
        __swift_destroy_boxed_opaque_existential_1(v87);
        if (v73)
        {
          sub_1BA10F728(&v72);
        }
      }

      sub_1B9F1134C(&v74, v80);
      v82 = 0;
      v84[4] = v80[0];
      v84[5] = v80[1];
      v84[0] = v77[0];
      v84[1] = v77[1];
      v84[2] = v78;
      v84[3] = v79;
      v85 = 0;
      v84[6] = v81;
      v60 = HKTDataTypeDetailFactory.createViewController(userActivity:context:)(v27, v84);
      v32 = v71;
      v61 = [v71 navigationController];
      if (v61)
      {
        v62 = v61;
        [v61 pushViewController:v60 animated:0];
      }

      [v60 restoreUserActivityState_];

      sub_1BA114E30(v84);
    }

    (*(v11 + 8))(v65, v10);
    v28 = type metadata accessor for SharedProfileOverviewViewController();
    v86 = v32;
    v29 = &v86;
  }

LABEL_19:
  v29->super_class = v28;
  return [(objc_super *)v29 restoreUserActivityState:v27, v64];
}

id SharedProfileOverviewViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA1E7ED0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthExperienceStore);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_pinnedContentManager);

  return __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider);
}

id SharedProfileOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedProfileOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1E8038@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

id sub_1BA1E8090()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

uint64_t sub_1BA1E80E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_pinnedContentManager;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a1);
}

uint64_t sub_1BA1E81A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

void sub_1BA1E8200()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1BA1E8ACC(0, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7 + 16;
  v9 = sub_1BA4A33C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14 + 16;

  sub_1BA0CE620(v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BA1E8C9C(v8, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    sub_1BA4A3DD8();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136315138;
      v33[0] = ObjectType;
      swift_getMetatypeMetadata();
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, v34);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] could not find associated profile information", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v23 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
    swift_beginAccess();
    v24 = *&v0[v23];
    v25 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthExperienceStore;
    swift_beginAccess();
    sub_1B9F0A534(v1 + v25, v33);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(v12, v15, v9);
    v27 = v24;
    v28 = sub_1BA078438(v27, v33, v12, sub_1BA1E9498, v26);

    v29 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
    v30 = [v1 navigationController];
    if (v30)
    {
      v31 = v30;
      [v30 presentViewController:v29 animated:1 completion:0];

      (*(v10 + 8))(v15, v9);
    }

    else
    {
      (*(v10 + 8))(v15, v9);
    }
  }
}

void sub_1BA1E86C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 presentedViewController];
    if (v2)
    {

      [v1 dismissViewControllerAnimated:1 completion:0];
    }

    v3 = [v1 navigationController];

    if (v3)
    {
    }
  }
}

char *sub_1BA1E87F4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation) = 8;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView) = 0;
  v11 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber) = 0;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore) = a1;
  sub_1B9F0A534(a2, v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthExperienceStore);
  v12 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider);
  v12[3] = type metadata accessor for ProfileGradientsProvider();
  v12[4] = &protocol witness table for ProfileGradientsProvider;
  *v12 = a3;
  sub_1B9F0A534(a4, v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_pinnedContentManager);
  v13 = a1;
  v14 = a3;
  v15 = [v13 profileIdentifier];
  v16 = [v15 type];

  if (v16 == 1)
  {
    swift_beginAccess();
    *(v5 + v10) = 9;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v17 = sub_1BA4A1B68();
  sub_1B9F0A534(a2, v25);
  type metadata accessor for SharedProfileOverviewDataSource();
  swift_allocObject();
  v18 = sub_1BA4534BC(v17, v13, v25);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_sharedProfileOverviewDataSource) = v18;

  v20 = CompoundDataSourceCollectionViewController.init(dataSource:)(v19);
  v21 = qword_1EDC5E100;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v23 = sub_1BA4A6758();

  [v22 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

void sub_1BA1E8ACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA1E8B20(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA1E8ACC(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA1E8B98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA1E8B20(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA1E8BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA1E8C50()
{
  result = qword_1EDC6B600;
  if (!qword_1EDC6B600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B600);
  }

  return result;
}

uint64_t sub_1BA1E8C9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA1E8ACC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA1E8CF8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation) = 8;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA1E8DB4()
{
  if (!qword_1EBBEE058)
  {
    type metadata accessor for AllTrendsSectionedDataSource(255);
    type metadata accessor for NoDataDataSource();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE058);
    }
  }
}

uint64_t keypath_get_2Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F0A534(v4 + v5, a3);
}

void *sub_1BA1E94B4()
{
  sub_1BA0C6900();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A7938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A79A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA0FF550();
  sub_1BA4A7988();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC560], v3);
  sub_1BA4A7828();
  v12 = objc_opt_self();
  v13 = [v12 systemBackgroundColor];
  v14 = [v13 colorWithAlphaComponent_];

  sub_1BA4A78E8();
  v15 = [v12 systemBlueColor];
  sub_1BA4A78F8();
  (*(v8 + 16))(v2, v10, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  sub_1BA4A79D8();
  [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v16 = [v11 titleLabel];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB970], 0, 0, 0, 0, 1);
    [v17 setFont_];
  }

  (*(v8 + 8))(v10, v7);
  return v11;
}

void sub_1BA1E97C8()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5890;
  v3 = sub_1BA0FD5B4();
  v4 = [v3 topAnchor];

  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:10.0];
  *(v2 + 32) = v7;
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v11 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] bottomAnchor];
  v12 = [v9 constraintEqualToAnchor_];

  *(v2 + 40) = v12;
  v13 = [*&v0[v10] centerYAnchor];
  v14 = [v0 contentView];
  v15 = [v14 centerYAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v2 + 48) = v16;
  v17 = [*&v0[v10] centerXAnchor];
  v18 = [v0 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v2 + 56) = v20;
  sub_1B9F740B0();
  v21 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

id CardStackMoreButtonCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CardStackMoreButtonCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CardStackMoreButtonCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CardStackMoreButtonCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardStackMoreButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1E9CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BA1E9D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1BA1E9DF0()
{
  swift_getWitnessTable();
  sub_1BA4A5AD8();
  __break(1u);
}

id sub_1BA1E9E30(uint64_t a1)
{
  v1 = (*(*(a1 + 24) + 8))(*(a1 + 16));
  v2 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];

  return v2;
}

uint64_t sub_1BA1E9EB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA1E9F28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1BA1EA068(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id HealthExperienceStoreIncrementalCoreSpotlightDelegate.__allocating_init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initForStoreWithDescription:a1 coordinator:a2];

  return v5;
}

id HealthExperienceStoreIncrementalCoreSpotlightDelegate.init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate();
  v5 = objc_msgSendSuper2(&v7, sel_initForStoreWithDescription_coordinator_, a1, a2);

  return v5;
}

id HealthExperienceStoreIncrementalCoreSpotlightDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PrimarySecondaryDataSource.identifier.getter()
{
  v0 = sub_1B9F1E1B4();

  return v0;
}

__n128 sub_1BA1EA404@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *(a2 + a3 - 16);
  v11 = *(a2 + a3 - 32);
  v5 = (*(**a1 + 176))();
  v7 = v6;
  v8 = swift_allocObject();
  result = v10;
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *(v8 + 48) = v5;
  *(v8 + 56) = v7;
  *a4 = sub_1BA1EB2EC;
  a4[1] = v8;
  return result;
}

uint64_t sub_1BA1EA4A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v9 = *(v5 - 16);
  *(v8 + 16) = *(v5 - 32);
  *(v8 + 32) = v9;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;
  v10 = *(**a2 + 184);

  return v10(sub_1BA1EB2A8, v8);
}

uint64_t sub_1BA1EA598()
{
  sub_1B9F39CEC();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA1EA5C0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA1EA608()
{
  sub_1B9F40328();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA1EA630(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
  return swift_unknownObjectRelease();
}

void sub_1BA1EA678(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v5) = a4;
  v8 = *v4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6F88();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v5;
    v5 = v17;
    *&v29[0] = v17;
    *v16 = 136315394;
    v18 = sub_1BA4A85D8();
    v27 = v10;
    v20 = sub_1B9F0B82C(v18, v19, v29);
    v26 = v9;
    v21 = v8;
    v22 = v20;

    *(v16 + 4) = v22;
    v8 = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1B9F0B82C(v25, a2, v29);
    _os_log_impl(&dword_1B9F07000, v13, v14, "%s SanpshotDidChange, dataSourceID: %s", v16, 0x16u);
    swift_arrayDestroy();
    v23 = v5;
    LOBYTE(v5) = v28;
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v27 + 8))(v12, v26);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v24 = *(v8 + 96);
  v29[0] = *(v8 + 80);
  v29[1] = v24;
  type metadata accessor for PrimarySecondaryDataSource();
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(v5 & 1);
}

uint64_t sub_1BA1EA900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;
  sub_1BA4A45C8();

  sub_1BA1EA678(v11, v13, v14, a5);

  return (*(v8 + 8))(v10, v7);
}

uint64_t PrimarySecondaryDataSource.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PrimarySecondaryDataSource.__deallocating_deinit()
{
  PrimarySecondaryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t PrimarySecondaryDataSource.description.getter()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4F3B60);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4F3B80);
  swift_beginAccess();
  sub_1BA4A8308();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4F3BA0);
  swift_beginAccess();
  sub_1BA4A8308();
  MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F3BC0);
  v0 = sub_1B9F1E1F0();
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1BFAF1350](v2, v3);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

Swift::Bool __swiftcall PrimarySecondaryDataSource.isReorderableItem(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v9 = sub_1B9F1E2C4();
  v10 = v3;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v8, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    *&v8[0] = countAndFlagsBits;
    *(&v8[0] + 1) = object;
    v6 = (*(v5 + 40))(v8, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PrimarySecondaryDataSource.canMoveItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v10 = sub_1B9F1E2C4();
  v11 = v4;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v9, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 56))(a1, a2, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Void __swiftcall PrimarySecondaryDataSource.applyReorder(sectionTransactions:)(Swift::OpaquePointer sectionTransactions)
{
  v6 = sub_1B9F1E2C4();
  v7 = v2;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v5, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 48))(sectionTransactions._rawValue, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }
}

uint64_t sub_1BA1EAFD0(uint64_t a1)
{
  sub_1BA1EB02C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA1EB02C()
{
  if (!qword_1EBBEBD40)
  {
    sub_1B9F0D9AC(255, qword_1EDC648F8);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBD40);
    }
  }
}

uint64_t keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA1EB2A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1BA1EB2EC@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 48))(*a1, *a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1BA1EB328()
{
  result = qword_1EBBEE1A0;
  if (!qword_1EBBEE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE1A0);
  }

  return result;
}

uint64_t sub_1BA1EB37C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI33ContentConfigurationProviderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BA1EB3C0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_1BA1EB3F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t (*static AllHealthDataDataSource.cloudSyncStateObserverFactory.getter())()
{
  swift_beginAccess();
  v0 = off_1EE8FEEC8;

  return v0;
}

uint64_t static AllHealthDataDataSource.cloudSyncStateObserverFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_1EE8FEEC8 = a1;
  qword_1EE8FEED0 = a2;
}

uint64_t sub_1BA1EB53C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = off_1EE8FEEC8;
  v2 = qword_1EE8FEED0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1BA0FFE84;
  a1[1] = v4;
}

uint64_t sub_1BA1EB5C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_1EE8FEEC8 = sub_1BA0FFE44;
  qword_1EE8FEED0 = v3;
}

uint64_t sub_1BA1EB650@<X0>(uint64_t a1@<X8>)
{
  sub_1BA1ED6E4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState;
  swift_beginAccess();
  sub_1BA1ED568(v1 + v9, v8);
  sub_1BA043790(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v8, 1, v10) != 1)
  {
    return (*(v12 + 32))(a1, v8, v11);
  }

  sub_1BA1ED334(v8);
  v13 = sub_1BA4A2D28();
  v14 = MEMORY[0x1BFAED490](a1, v13);
  v16 = v15;
  v17 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_cloudSyncStateObserver);
  v18 = *MEMORY[0x1E69E7D40] & *v17;
  v23 = a1;
  v19 = *(v18 + 160);

  v20 = v19(v14, v16);
  (*((*MEMORY[0x1E69E7D40] & *v17) + 0x118))(v20);

  (*(v12 + 16))(v5, v23, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1BA043A00(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t AllHealthDataDataSource.__allocating_init(healthStore:healthExperienceStore:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BA1ECE48(a1, a2);

  return v4;
}

uint64_t AllHealthDataDataSource.init(healthStore:healthExperienceStore:)(void *a1, uint64_t a2)
{
  v3 = sub_1BA1ECE48(a1, a2);

  return v3;
}

uint64_t sub_1BA1EB9A0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA1EBA00(a1);
  }

  return result;
}

void sub_1BA1EBA00(uint64_t a1)
{
  v2 = sub_1BA4A2D28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if (sub_1BA4A2D18())
  {
    sub_1BA1ECA34(1);
    sub_1BA1EC7FC(0);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    sub_1BA1ECA34(0);
    sub_1BA1EC7FC(1);
  }
}

uint64_t sub_1BA1EBB90()
{
  sub_1BA1ED334(v0 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState);
}

uint64_t AllHealthDataDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BA1ED334(v0 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState);

  return v0;
}

uint64_t AllHealthDataDataSource.__deallocating_deinit()
{
  AllHealthDataDataSource.deinit();

  return swift_deallocClassInstance();
}

void *sub_1BA1EBD38()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_1BA4A1318();
  v7 = v6;

  v20 = type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  v8 = sub_1BA4A6808();
  v10 = v9;
  v11 = MEMORY[0x1E69E6F90];
  sub_1BA1ED6E4(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v19 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA1ED6E4(0, &qword_1EDC5DCA0, sub_1B9F32244, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v19;
  *(v13 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
  *(v13 + 64) = sub_1BA02090C();
  v14 = swift_allocObject();
  *(v13 + 32) = v14;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  *(v14 + 48) = 1;
  *(inited + 32) = v13;
  v20 = 0x3C53447961727241;
  v21 = 0xE800000000000000;
  sub_1BA4A1788();
  v15 = sub_1BA4A1748();
  v17 = v16;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1BFAF1350](v15, v17);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return ArrayDataSource.init(_:identifier:)(inited, v20, v21);
}

uint64_t sub_1BA1EC060()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BA1EC154(char a1)
{
  v8 = type metadata accessor for SharingOnboardingDataSource();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED608;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_31_2;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

void sub_1BA1EC38C(char a1)
{
  v8 = type metadata accessor for SharingWithYouLearnMoreDataSource();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED5FC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_25_0;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

void sub_1BA1EC5C4(char a1)
{
  v8 = type metadata accessor for MutableArrayDataSourceWithLayout();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED614;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_37_1;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

void sub_1BA1EC7FC(char a1)
{
  sub_1BA043BB8();
  v4 = v3;
  v15 = v3;
  swift_getKeyPath();
  v14 = v4;
  swift_getKeyPath();
  sub_1BA4A4F28();

  v5 = LOBYTE(aBlock[0]);
  v13 = v4;
  swift_getKeyPath();
  v12 = v4;
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  v11 = v4;
  swift_getKeyPath();
  v10 = v4;
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v5 != (a1 & 1))
  {
    swift_beginAccess();
    v6 = *(v1 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = 1;
    aBlock[4] = sub_1BA1ED550;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_50;
    v8 = _Block_copy(aBlock);

    v9 = v6;

    [v9 notifyObservers_];
    _Block_release(v8);
  }
}

void sub_1BA1ECA34(char a1)
{
  v8 = type metadata accessor for CloudSyncAllHealthDataDataSource(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a1 & 1;

  sub_1BA4A4F38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v3 != (a1 & 1))
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    aBlock[4] = sub_1BA1ED55C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F8A254;
    aBlock[3] = &block_descriptor_19_0;
    v6 = _Block_copy(aBlock);

    v7 = v4;

    [v7 notifyObservers_];
    _Block_release(v6);
  }
}

id sub_1BA1ECC6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v25[0] = xmmword_1EDC6D388;
  v25[1] = xmmword_1EDC6D398;
  v25[2] = xmmword_1EDC6D3A8;
  v25[3] = xmmword_1EDC6D3B8;
  v25[4] = xmmword_1EDC6D3C8;
  v25[5] = unk_1EDC6D3D8;
  v25[6] = xmmword_1EDC6D3E8;
  v25[7] = unk_1EDC6D3F8;
  v2 = *(&xmmword_1EDC6D388 + 1);
  v3 = xmmword_1EDC6D388;
  v4 = xmmword_1EDC6D398;
  v6 = xmmword_1EDC6D3A8;
  v5 = xmmword_1EDC6D3B8;
  v24 = qword_1EDC6D400;
  v22 = *&qword_1EDC6D3E0;
  v23 = *(&xmmword_1EDC6D3E8 + 8);
  v20 = *(&xmmword_1EDC6D3B8 + 8);
  v21 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v25, &v11);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_1BA4A7528();
  if (v7)
  {
    v9 = *(&v25[0] + 1);
    v2 = [objc_opt_self() estimatedDimension_];
  }

  sub_1B9F1DA18(*(&v4 + 1), v6, *(&v6 + 1), v5);
  sub_1BA0117AC();
  *&v11 = v3;
  v13 = 0u;
  v14 = 0u;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *(&v11 + 1) = v2;
  v12 = v4;
  v19 = v24;
  v15 = v20;
  return sub_1B9F293A8(&v11);
}

uint64_t sub_1BA1ECE48(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA043790(0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v39 = v12;
  v13 = *(v12 + 56);
  v42 = v14;
  v13(v2 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource____lazy_storage___firstRestoreState, 1, 1, v9);
  swift_beginAccess();
  v15 = off_1EE8FEEC8;

  v16 = (v15)(a1);

  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_cloudSyncStateObserver) = v16;
  v41 = a2;
  sub_1B9F0A534(a2, v43);
  v17 = a1;
  v18 = sub_1BA4A3BB8();
  type metadata accessor for SnippetAllDataDataSource(0);
  swift_allocObject();
  v19 = sub_1BA28ED0C(v17, v43, v18, MEMORY[0x1E69E7CC0]);

  type metadata accessor for NoDataDataSource();
  v20 = qword_1EBBE8368;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1BA459ADC(qword_1EBBEC0D0, *algn_1EBBEC0D8);
  sub_1BA043BB8();
  swift_allocObject();
  sub_1BA063C54(v19, v21);

  sub_1BA1ED620(0, &qword_1EBBEA9A8, sub_1BA043BB8);
  swift_allocObject();

  v23 = sub_1BA2AE338(v22, 1);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_snippetsCompoundDataSource) = v23;

  v24 = sub_1B9F1E00C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = *(v24 + 16);
  v25 = *(v24 + 24);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1B9F1E00C(v25 > 1, v26 + 1, 1, v24);
  }

  *(v24 + 16) = v26 + 1;
  v27 = v24 + 16 * v26;
  *(v27 + 32) = v23;
  *(v27 + 40) = &protocol witness table for HideableDataSource<A>;
  type metadata accessor for CloudSyncAllHealthDataDataSource(0);
  swift_allocObject();
  v28 = sub_1BA1EBD38();
  sub_1BA1ED620(0, &unk_1EBBEE1D0, type metadata accessor for CloudSyncAllHealthDataDataSource);
  swift_allocObject();
  v29 = sub_1BA2AE79C(v28, 0);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23AllHealthDataDataSource_cloudSyncDataSource) = v29;
  v31 = *(v24 + 16);
  v30 = *(v24 + 24);

  if (v31 >= v30 >> 1)
  {
    v24 = sub_1B9F1E00C(v30 > 1, v31 + 1, 1, v24);
  }

  *(v24 + 16) = v31 + 1;
  v32 = v24 + 16 * v31;
  *(v32 + 32) = v29;
  *(v32 + 40) = &protocol witness table for HideableDataSource<A>;
  v33 = CompoundSectionedDataSource.init(_:)(v24);

  v34 = v40;
  sub_1BA1EB650(v40);
  v35 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_1BA1ED68C();
  v36 = v42;
  sub_1BA4A2D38();

  __swift_destroy_boxed_opaque_existential_1(v41);
  v37 = *(v39 + 8);
  v37(v34, v36);
  v37(v11, v36);
  return v33;
}

uint64_t sub_1BA1ED334(uint64_t a1)
{
  sub_1BA1ED6E4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA1ED3E8()
{
  sub_1BA1ED6E4(319, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA1ED568(uint64_t a1, uint64_t a2)
{
  sub_1BA1ED6E4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA1ED620(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for HideableDataSource();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA1ED68C()
{
  result = qword_1EBBEA9B0;
  if (!qword_1EBBEA9B0)
  {
    sub_1BA043790(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA9B0);
  }

  return result;
}

void sub_1BA1ED6E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HealthChecklistStagedFeatureStatusFeedItemProvider.considerOnboarded(featureStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v23 = sub_1BA4A3908();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3938();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A38E8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E69A3888])
  {
    (*(v8 + 96))(v10, v7);
    (*(v12 + 32))(v15, v10, v11);
    sub_1BA4A38A8();
    v16 = (*(v22 + 48))(v21);
    v17 = sub_1BA4A3918();

    (*(v4 + 8))(v6, v23);
    v18 = sub_1BA4A76B8();

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t HealthChecklistStagedFeatureStatusFeedItemProvider.makeActionHandlerUserData(for:featureStatus:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v7 = sub_1BA4A3EA8();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41[1] = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = v41 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = v41 - v12;
  v47 = v13;
  v14 = sub_1BA4A7AA8();
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v41 - v19;
  if ((*(a4 + 64))(a2, a3, a4, v18))
  {
    v21 = (*(a4 + 48))(a3, a4);
    v22 = sub_1BA4A3948();

    (*(a4 + 88))(v22, v46, a2, a3, a4);
  }

  else
  {
    v23 = (*(a4 + 40))(a3, a4);
    v22 = sub_1BA4A3948();

    (*(a4 + 96))(v22, v46, a2, a3, a4);
  }

  v24 = v49;
  v25 = v14;
  (*(v49 + 16))(v16, v20, v14);
  v27 = v47;
  v26 = v48;
  if ((*(v48 + 48))(v16, 1, v47) == 1)
  {
    v46 = v20;
    v28 = *(v24 + 8);
    v28(v16, v25);
    v29 = v42;
    (*(a4 + 56))(a3, a4);
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136446210;
      v34 = sub_1BA4A85D8();
      v36 = v29;
      v37 = sub_1B9F0B82C(v34, v35, &v50);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[%{public}s] No user data specified", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);

      (*(v44 + 8))(v36, v45);
    }

    else
    {

      (*(v44 + 8))(v29, v45);
    }

    v28(v46, v25);
    return 0;
  }

  else
  {
    v38 = v43;
    (*(v26 + 32))();
    sub_1BA4A0EE8();
    swift_allocObject();
    sub_1BA4A0ED8();
    swift_getAssociatedConformanceWitness();
    v39 = sub_1BA4A0EC8();

    (*(v26 + 8))(v38, v27);
    (*(v49 + 8))(v20, v25);
    return v39;
  }
}

void HealthChecklistStagedFeatureStatusFeedItemProvider.makeConfiguration(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 64))())
  {
    v6 = (*(a3 + 48))(a2, a3);
    v8 = sub_1BA4A3948();

    (*(a3 + 72))(v8, a1, a2, a3);
  }

  else
  {
    v7 = (*(a3 + 40))(a2, a3);
    v8 = sub_1BA4A3948();

    (*(a3 + 80))(v8, a1, a2, a3);
  }
}

uint64_t sub_1BA1EE450()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEE1E0 = result;
  *algn_1EBBEE1E8 = v1;
  return result;
}

uint64_t sub_1BA1EE4E8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEE1F0 = result;
  *algn_1EBBEE1F8 = v1;
  return result;
}

void sub_1BA1EE580()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  qword_1EBBEE200 = v2;
}

unint64_t sub_1BA1EE640(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v12[8] = 0;
      *&v12[9] = 0xE000000000000000;
      MEMORY[0x1BFAF1350](0x20726F727265, 0xE600000000000000);
      *v12 = a1 & 1;
      sub_1BA4A7FB8();
      return *&v12[1];
    }

    sub_1BA4A7DF8();

    *&v12[1] = 0xD000000000000012;
    *&v12[9] = 0x80000001BA4F3F20;
    v2 = [a1 description];
LABEL_17:
    v7 = v2;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;

    MEMORY[0x1BFAF1350](v8, v10);

    return *&v12[1];
  }

  if (a2 == 2)
  {
    strcpy(&v12[1], "validating ");
    *&v12[13] = -352321536;
    v2 = [a1 description];
    goto LABEL_17;
  }

  if (a2 == 3)
  {
    strcpy(&v12[1], "notReachable ");
    *&v12[15] = -4864;
    v2 = [a1 description];
    goto LABEL_17;
  }

  if (a1 > 3)
  {
    v11 = 1701736292;
    if (a1 == 6)
    {
      v11 = 0xD000000000000010;
    }

    if (a1 <= 5)
    {
      return 0xD000000000000013;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0x50676E69776F6873;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0x6D6F7250776F6873;
    }

    if (a1 <= 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }
}

void sub_1BA1EE8E0()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 startAnimating];
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = objc_opt_self();
  sub_1B9F232F8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B7510;
  v5 = [v1 centerXAnchor];
  v6 = [v0 contentView];
  v7 = [v6 centerXAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v1 topAnchor];

  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:0.0];
  *(v4 + 40) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v13 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  v14 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v14 > 4)
  {
    LOBYTE(v16) = 0;
    v15 = 1;
  }

  else
  {
    v15 = qword_1BA4C65F0[v14];
    v16 = 0x40404uLL >> (8 * v14);
  }

  v17 = &v0[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  v18 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  *v17 = v15;
  v19 = v17[8];
  v17[8] = v16;
  sub_1BA1F1484(v18, v19);
}

void sub_1BA1EEC70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v126 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v126);
  v127 = (&v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v122 - v9;
  v11 = sub_1BA4A64F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v14 = sub_1BA4A7308();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = sub_1BA4A6528();
  v16 = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v124 = v7;
  sub_1BA4A3E28();
  v17 = v1;
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();

  v20 = os_log_type_enabled(v18, v19);
  v21 = &unk_1EBBEE000;
  v125 = ObjectType;
  if (v20)
  {
    v22 = swift_slowAlloc();
    v123 = v4;
    v23 = v22;
    v122 = swift_slowAlloc();
    aBlock = v122;
    *v23 = 136315394;
    v24 = sub_1BA4A85D8();
    v25 = v17;
    v27 = sub_1B9F0B82C(v24, v26, &aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
    v29 = v17[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state + 8];
    sub_1BA1F14F8(*&v25[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state], v25[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state + 8]);
    v30 = sub_1BA1EE640(v28, v29);
    v31 = v5;
    v33 = v32;
    LOBYTE(v32) = v29;
    v17 = v25;
    sub_1BA1F1484(v28, v32);
    v34 = sub_1B9F0B82C(v30, v33, &aBlock);

    *(v23 + 14) = v34;
    _os_log_impl(&dword_1B9F07000, v18, v19, "%s state nextState(%s)", v23, 0x16u);
    v35 = v122;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    v36 = v23;
    v4 = v123;
    MEMORY[0x1BFAF43A0](v36, -1, -1);

    v37 = v31;
    v21 = &unk_1EBBEE000;
  }

  else
  {

    v37 = v5;
  }

  v38 = *(v37 + 8);
  v38(v10, v4);
  v39 = &v17[v21[68]];
  v10 = *v39;
  v40 = v39[8];
  switch(v40)
  {
    case 1:
      v125 = v17;
      v39[8] = 2;
      sub_1BA1F14F8(v10, 1u);
      ObjectType = v10;
      v61 = [ObjectType phoneNumbers];
      v15 = sub_1B9F0ADF8(0, &unk_1EBBEE300);
      v62 = sub_1BA4A6B08();

      v16 = v62;
      if (!(v62 >> 62))
      {
        v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_23;
      }

LABEL_52:
      v112 = v16;
      v63 = sub_1BA4A7CC8();
      v16 = v112;
LABEL_23:
      v123 = v10;
      v126 = ObjectType;
      if (v63)
      {
        v50 = v16;
        v124 = v15;
        aBlock = MEMORY[0x1E69E7CC0];
        p_aBlock = &aBlock;
        sub_1B9F1C360(0, v63 & ~(v63 >> 63), 0);
        if (v63 < 0)
        {
          __break(1u);
          goto LABEL_58;
        }

        v64 = 0;
        v10 = aBlock;
        v65 = v50;
        v127 = (v50 & 0xC000000000000001);
        v66 = v50;
        do
        {
          if (v127)
          {
            v67 = MEMORY[0x1BFAF2860](v64, v65);
          }

          else
          {
            v67 = *(v65 + 8 * v64 + 32);
          }

          v68 = v67;
          v69 = [v67 value];
          v70 = [v69 stringValue];

          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v71 = sub_1BA4A6818();
          v73 = v72;

          aBlock = v10;
          v75 = *(v10 + 2);
          v74 = *(v10 + 3);
          if (v75 >= v74 >> 1)
          {
            sub_1B9F1C360((v74 > 1), v75 + 1, 1);
            v10 = aBlock;
          }

          ++v64;
          *(v10 + 2) = v75 + 1;
          v76 = &v10[16 * v75];
          *(v76 + 4) = v71;
          *(v76 + 5) = v73;
          v65 = v66;
        }

        while (v63 != v64);

        ObjectType = v126;
      }

      else
      {

        v10 = MEMORY[0x1E69E7CC0];
      }

      v77 = [ObjectType emailAddresses];
      v78 = sub_1BA4A6B08();

      if (v78 >> 62)
      {
        v79 = sub_1BA4A7CC8();
        if (v79)
        {
LABEL_36:
          v50 = v78;
          aBlock = MEMORY[0x1E69E7CC0];
          p_aBlock = &aBlock;
          sub_1B9F1C360(0, v79 & ~(v79 >> 63), 0);
          if ((v79 & 0x8000000000000000) == 0)
          {
            v80 = 0;
            v81 = aBlock;
            v82 = v50;
            v127 = (v50 & 0xC000000000000001);
            v83 = v50;
            do
            {
              if (v127)
              {
                v84 = MEMORY[0x1BFAF2860](v80, v82);
              }

              else
              {
                v84 = *(v82 + 8 * v80 + 32);
              }

              v85 = v84;
              v86 = [v84 value];
              v87 = [v86 lowercaseString];

              v88 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v90 = v89;

              aBlock = v81;
              v92 = *(v81 + 16);
              v91 = *(v81 + 24);
              if (v92 >= v91 >> 1)
              {
                sub_1B9F1C360((v91 > 1), v92 + 1, 1);
                v81 = aBlock;
              }

              ++v80;
              *(v81 + 16) = v92 + 1;
              v93 = v81 + 16 * v92;
              *(v93 + 32) = v88;
              *(v93 + 40) = v90;
              v82 = v83;
            }

            while (v79 != v80);

            ObjectType = v126;
            goto LABEL_55;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      else
      {
        v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v79)
        {
          goto LABEL_36;
        }
      }

      v81 = MEMORY[0x1E69E7CC0];
LABEL_55:
      aBlock = v10;
      sub_1B9FE271C(v81);
      v113 = v125;
      v114 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
      v115 = *&v113[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_sharingStore];
      *&v113[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_sharingStore] = v114;
      v116 = v114;

      [v116 setDelegate_];
      v117 = sub_1BA4A6AE8();

      v118 = swift_allocObject();
      *(v118 + 16) = v113;
      *(v118 + 24) = ObjectType;
      v134 = sub_1BA1F1510;
      v135 = v118;
      aBlock = MEMORY[0x1E69E9820];
      v131 = 1107296256;
      v132 = sub_1BA454240;
      v133 = &block_descriptor_51;
      v119 = _Block_copy(&aBlock);
      v120 = v113;
      v121 = v123;
      sub_1BA1F14F8(v123, 1u);

      [v116 beginObservingReachabilityStatusForIdentifiers:v117 isInitialQuery:1 completion:v119];
      _Block_release(v119);

      sub_1BA1F1484(v121, 1u);
      sub_1BA1F1484(v121, 1u);
      return;
    case 3:
      *v39 = 5;
      v39[8] = 4;
      v56 = sub_1BA4A7A08();
      v57 = v127;
      *v127 = v56;
      *(v57 + 8) = v58;
      swift_storeEnumTagMultiPayload();
      v59 = swift_allocObject();
      *(v59 + 16) = v17;
      v60 = v17;
      sub_1BA0C6BA4(v60, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA1F1438, v59);

      sub_1BA1F1484(v10, 3u);
      sub_1BA1F149C(v57);
      break;
    case 4:
      if (v10 == 1)
      {
        *v39 = 2;
        v39[8] = 4;
        v100 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
        v101 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v134 = sub_1BA1F16B4;
        v135 = v101;
        aBlock = MEMORY[0x1E69E9820];
        v131 = 1107296256;
        v132 = sub_1BA454240;
        v133 = &block_descriptor_22_0;
        v102 = _Block_copy(&aBlock);

        [v100 requestAccessForEntityType:0 completionHandler:v102];
        _Block_release(v102);
      }

      else if (v10 == 3)
      {
        *v39 = 4;
        v39[8] = 4;
        v94 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
        [v94 setDelegate_];
        sub_1B9F232F8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_1BA4B5460;
        *(v95 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        *(v95 + 40) = v96;
        *(v95 + 48) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        *(v95 + 56) = v97;
        v98 = sub_1BA4A6AE8();

        [v94 setDisplayedPropertyKeys_];

        sub_1B9F0ADF8(0, &qword_1EDC6B630);
        v99 = sub_1BA4A6EE8();
        [v94 setPredicateForEnablingContact_];

        [v17 presentViewController:v94 animated:1 completion:0];
      }

      else if (v10 == 6)
      {
        *v39 = 7;
        v39[8] = 4;
        v41 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthStore];
        sub_1B9F0A534(&v17[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthExperienceStore], &aBlock);
        v42 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_selectionFlowContext];
        v43 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController());
        v44 = v41;

        v45 = sub_1BA202D18(v44, &aBlock, v42);

        v10 = v45;
        v46 = [v10 navigationItem];
        [v46 setHidesBackButton_];

        v47 = [v17 navigationController];
        if (v47)
        {
          ObjectType = v47;
          v48 = [v47 viewControllers];
          sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
          p_aBlock = sub_1BA4A6B08();

          v50 = p_aBlock >> 62;
          if (!(p_aBlock >> 62))
          {
            if (*((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_14:
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (v50 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
              {
                p_aBlock = sub_1B9F2A568(p_aBlock);
              }

              v52 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v52)
              {
                v53 = v52 - 1;
                v54 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20);
                *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) = v53;

                v129 = p_aBlock;
                MEMORY[0x1BFAF1510]();
                if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_19:
                  sub_1BA4A6BB8();
                  memset(v128, 0, sizeof(v128));
                  aBlock = 0;
                  v131 = 0;
                  v132 = 0;
                  v133 = 6;
                  LOBYTE(v134) = 3;

                  sub_1B9FEEC64(v125, v128, 1, &aBlock);

                  sub_1B9FF3BFC(aBlock, v131, v132, v133);
                  sub_1B9F23224(v128);
                  v55 = sub_1BA4A6AE8();

                  [ObjectType setViewControllers:v55 animated:1];

                  return;
                }

LABEL_62:
                sub_1BA4A6B68();
                goto LABEL_19;
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_59:
          if (sub_1BA4A7CC8())
          {
            goto LABEL_14;
          }

          goto LABEL_60;
        }

        v103 = v124;
        sub_1BA4A3E28();
        v104 = sub_1BA4A3E88();
        v105 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          aBlock = v107;
          *v106 = 136315138;
          v108 = sub_1BA4A85D8();
          v110 = sub_1B9F0B82C(v108, v109, &aBlock);

          *(v106 + 4) = v110;
          _os_log_impl(&dword_1B9F07000, v104, v105, "[%s] not sure how to push contact picker", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v107);
          MEMORY[0x1BFAF43A0](v107, -1, -1);
          MEMORY[0x1BFAF43A0](v106, -1, -1);

          v111 = v124;
        }

        else
        {

          v111 = v103;
        }

        v38(v111, v4);
      }

      break;
  }
}

uint64_t sub_1BA1EFBC0(char a1)
{
  v2 = sub_1BA4A6478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v12 = sub_1BA4A7308();
    v17 = v6;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a1 & 1;
    *(v14 + 24) = v11;
    aBlock[4] = sub_1BA1F16BC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_28_0;
    v15 = _Block_copy(aBlock);
    v16 = v11;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F31478();
    sub_1B9F0A814(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v9, v5, v15);
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v17);
  }

  return result;
}

uint64_t sub_1BA1EFEB4(char a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BA4A6478();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A64C8();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v14 = sub_1BA4A7308();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  aBlock[4] = sub_1BA1F1718;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_34_2;
  v16 = _Block_copy(aBlock);
  v17 = a3;
  v18 = a4;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A814(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_1BA1F017C(uint64_t result, uint64_t a2, void *a3)
{
  if ((result & 1) == 0)
  {
    v3 = a2 + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
    v4 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state);
    *v3 = a3;
    v5 = *(v3 + 8);
    *(v3 + 8) = 3;
    v6 = a3;
    sub_1BA1F1484(v4, v5);
    return sub_1BA1EEC70();
  }

  return result;
}

id sub_1BA1F01E0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A64F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v11 = sub_1BA4A7308();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = sub_1BA4A6528();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    [a1 dismissViewControllerAnimated:1 completion:0];
    v14 = [v2 presentingViewController];
    if (v14 && (v14, ([v2 isBeingDismissed] & 1) == 0))
    {
      return [v2 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_1BA4A3E28();
      v15 = sub_1BA4A3E88();
      v16 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136315138;
        v19 = sub_1BA4A85D8();
        v21 = sub_1B9F0B82C(v19, v20, &v23);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] not sure how to dismiss contact picker", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1BFAF43A0](v18, -1, -1);
        MEMORY[0x1BFAF43A0](v17, -1, -1);
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA1F06E0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state + 8] != 2)
  {
    return;
  }

  v4 = a2;
  v76 = &a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  v5 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v81 = v5;
  sub_1BA1F14F8(v5, 2u);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = *(v4 + 6) + 16 * v15;
    v3 = *v16;
    v17 = *(v16 + 8);
    v18 = *(*(v4 + 7) + 8 * v15);

    v19 = v18;
    v20 = [v19 integerValue];

    if (v20 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1BA27EE34(0, *(v12 + 2) + 1, 1, v12);
      }

      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      if (v22 >= v21 >> 1)
      {
        v12 = sub_1BA27EE34((v21 > 1), v22 + 1, 1, v12);
      }

      *(v12 + 2) = v22 + 1;
      v23 = &v12[16 * v22];
      *(v23 + 4) = v3;
      *(v23 + 5) = v17;
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v24 = *(v12 + 2);
  if (v24)
  {
    v25 = 0;
    v26 = v12 + 40;
    v75 = v24 - 1;
    v79 = MEMORY[0x1E69E7CC0];
    v3 = &selRef_createListViewController_;
LABEL_18:
    v27 = &v26[16 * v25];
    v28 = v25;
    while (v28 < *(v12 + 2))
    {
      v30 = *(v27 - 1);
      v29 = *v27;
      v25 = v28 + 1;

      v4 = sub_1BA4A6758();
      v9 = [v4 _appearsToBeEmail];

      if (v9)
      {
        v4 = v79;
        *&v89 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B9F1C360(0, *(v79 + 2) + 1, 1);
          v4 = v89;
        }

        v32 = *(v4 + 2);
        v31 = *(v4 + 3);
        v9 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          sub_1B9F1C360((v31 > 1), v32 + 1, 1);
          v4 = v89;
        }

        *(v4 + 2) = v9;
        v79 = v4;
        v33 = &v4[16 * v32];
        *(v33 + 4) = v30;
        *(v33 + 5) = v29;
        v26 = v12 + 40;
        if (v75 != v28)
        {
          goto LABEL_18;
        }

LABEL_28:
        v34 = 0;
        v35 = v12 + 40;
        v4 = MEMORY[0x1E69E7CC0];
LABEL_29:
        v77 = v4;
        v4 = &v35[16 * v34];
        v36 = v34;
        while (v36 < *(v12 + 2))
        {
          v38 = *(v4 - 1);
          v37 = *v4;
          v34 = v36 + 1;

          v9 = sub_1BA4A6758();
          v3 = [v9 _appearsToBePhoneNumber];

          if (v3)
          {
            v4 = v77;
            *&v89 = v77;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B9F1C360(0, *(v77 + 2) + 1, 1);
              v4 = v89;
            }

            v3 = *(v4 + 2);
            v39 = *(v4 + 3);
            v9 = v3 + 1;
            if (v3 >= v39 >> 1)
            {
              sub_1B9F1C360((v39 > 1), v3 + 1, 1);
              v4 = v89;
            }

            *(v4 + 2) = v9;
            v40 = &v4[16 * v3];
            *(v40 + 4) = v38;
            *(v40 + 5) = v37;
            v35 = v12 + 40;
            if (v75 == v36)
            {
              v41 = v79;
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          v4 += 16;
          ++v36;
          if (v24 == v34)
          {
            v4 = v77;
            v41 = v79;
            goto LABEL_41;
          }
        }

        goto LABEL_66;
      }

      v27 += 16;
      ++v28;
      if (v24 == v25)
      {
        goto LABEL_28;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v41 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
LABEL_41:

  if (*(v41 + 2))
  {

    if (!*(v41 + 2))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v42 = *(v41 + 4);
    goto LABEL_46;
  }

  if (*(v4 + 2))
  {
    v41 = v4;
    v42 = *(v4 + 4);
LABEL_46:
    v43 = *(v41 + 5);

    sub_1BA1F14F8(v81, 2u);

    if (v81)
    {

      *&v89 = v81;
      *(&v89 + 1) = v42;
      *&v90 = v43;
      *(&v90 + 1) = v42;
      v91 = v43;
      v44 = *v76;
      *v76 = 7;
      v45 = v76[8];
      v76[8] = 4;
      v46 = v81;
      swift_bridgeObjectRetain_n();
      sub_1BA1F1484(v44, v45);
      v47 = sub_1BA4A7A28();
      v48 = OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_selectionFlowContext;
      memset(v88, 0, sizeof(v88));
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 6;
      v87 = 2;

      sub_1B9FEEC64(a3, v88, 1, &v83);

      sub_1B9FF3BFC(v83, v84, v85, v86);
      sub_1B9F23224(v88);
      sub_1B9F0A534(&a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthExperienceStore], &v83);
      v49 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthStore];
      v50 = *&a1[v48];
      v9 = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
      v3 = objc_allocWithZone(v9);
      sub_1B9F0A534(&v83, v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore);
      *(v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore) = v49;
      v51 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact);
      *(v51 + 4) = v91;
      v52 = v90;
      *v51 = v89;
      *(v51 + 1) = v52;
      *(v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher) = v47;
      *(v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext) = v50;
      *(v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems) = MEMORY[0x1E69E7CC0];
      v53 = qword_1EBBE8858;
      v54 = v46;
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v4 = v54;
      v55 = v49;
      if (v53 == -1)
      {
LABEL_48:
        v78 = v4;
        v56 = sub_1BA4A6758();
        if (qword_1EBBE8860 != -1)
        {
          swift_once();
        }

        sub_1B9F0A814(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1BA4B5480;
        v58 = sub_1BA1FAFCC();
        v60 = v59;
        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = sub_1B9F1BE20();
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;
        sub_1BA4A6768();

        v61 = sub_1BA4A6758();

        v82.receiver = v3;
        v82.super_class = v9;
        v62 = objc_msgSendSuper2(&v82, sel_initWithTitle_detailText_icon_contentLayout_, v56, v61, 0, 3);

        v63 = v62;
        sub_1BA2011C0();
        if (qword_1EBBE8868 != -1)
        {
          swift_once();
        }

        v64 = sub_1BA4A6758();
        v65 = sub_1BA4A6758();

        if (qword_1EBBE8870 != -1)
        {
          swift_once();
        }

        v66 = sub_1BA4A6758();
        v67 = sub_1BA4A6758();

        v68 = [v63 hxui_addCancelButton];
        swift_bridgeObjectRelease_n();

        __swift_destroy_boxed_opaque_existential_1(&v83);
        v69 = [v63 navigationItem];
        [v69 setHidesBackButton_];

        v70 = [a1 navigationController];
        if (v70)
        {
          v71 = v70;
          [v70 pushViewController:v63 animated:1];
          sub_1BA1F1484(v81, 2u);
        }

        else
        {
          sub_1BA1F1484(v81, 2u);
        }

        swift_bridgeObjectRelease_n();

        sub_1BA1E5348(v81);
        return;
      }

LABEL_68:
      swift_once();
      goto LABEL_48;
    }

    goto LABEL_61;
  }

LABEL_61:
  v72 = *v76;
  *v76 = v81;
  v73 = v76[8];
  v76[8] = 3;
  sub_1BA1F14F8(v81, 2u);
  sub_1BA1F1484(v72, v73);
  sub_1BA1EEC70();

  sub_1BA1F1484(v81, 2u);
}

id sub_1BA1F128C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI5State33_54F0D551205513B9B502D15FA1E45382LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1BA1F1384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BA1F13CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA1F1410(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1BA1F1438()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
  v2 = *v1;
  *v1 = 3;
  v3 = *(v1 + 8);
  *(v1 + 8) = 4;
  sub_1BA1F1484(v2, v3);
  return sub_1BA1EEC70();
}

void sub_1BA1F1484(id a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
  }
}

uint64_t sub_1BA1F149C(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingOnboardingError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA1F14F8(id result, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
    return result;
  }

  return result;
}

id sub_1BA1F1518(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state];
  *v7 = 0;
  v7[8] = 4;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_sharingStore] = 0;
  sub_1B9F0A534(a2, &v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthExperienceStore]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_healthStore] = a1;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_selectionFlowContext] = a3;
  v8 = qword_1EBBE84E0;
  v9 = a1;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A6758();
  if (qword_1EBBE84E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1BA4A6758();
  if (qword_1EBBE84F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBBEE200;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  v13 = objc_msgSendSuper2(&v15, sel_initWithTitle_detailText_icon_contentLayout_, v10, v11, v12, 2);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v13;
}

uint64_t sub_1BA1F16BC()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
  v2 = *v1;
  v3 = 3;
  if (*(v0 + 16))
  {
    v3 = 6;
  }

  *v1 = v3;
  v4 = *(v1 + 8);
  *(v1 + 8) = 4;
  sub_1BA1F1484(v2, v4);
  return sub_1BA1EEC70();
}

uint64_t sub_1BA1F1724(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A64C8();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v11 = sub_1BA4A7308();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = a1;
  v12[4] = ObjectType;
  aBlock[4] = sub_1BA1F19F8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_40_3;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A814(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

unint64_t sub_1BA1F1A18()
{
  result = qword_1EBBEE310;
  if (!qword_1EBBEE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE310);
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.init(hkType:includeShowAllData:additionalContentConstructor:contentInsetsReference:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1BA1F1AA0(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_beginAccess();
  a2(0);
  sub_1B9F0D9AC(0, qword_1EDC6C328);

  if (swift_dynamicCast())
  {
    v6 = *(&v12 + 1);
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v7 + 8))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1B9F399C0(&v11);
  }

  swift_beginAccess();
  a3(0);

  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1B9F399C0(&v11);
  }
}

uint64_t sub_1BA1F1D20@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1F2B8C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3);
}

uint64_t sub_1BA1F1DA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1F2B54;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.additionalContentConstructor.getter()
{
  v1 = *(v0 + 16);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.additionalContentConstructor.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DataTypeDetailConfiguration.DataManagementComponent.makeDataSource(context:)(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFE) != 2)
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    v8 = v1[2];
    v9 = v1[4];
    v10 = objc_opt_self();
    v11 = *(a1 + 40);
    v12 = [v10 sharedInstanceForHealthStore_];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 displayTypeForObjectType_];
      if (v14)
      {
        v15 = v14;
        v57 = v13;
        v16 = [objc_opt_self() sharedInstanceForHealthStore_];
        v17 = [v16 createHKUnitPreferenceController];

        type metadata accessor for DataTypeDetailDataManagementDataSource();
        swift_allocObject();
        v18 = v17;
        v19 = v11;
        v20 = v15;
        v21 = sub_1BA1B63CC(v20, v19, v7, v9);
        v56 = v20;

        v58 = v18;
        v22 = MEMORY[0x1E69E7CC0];
        if (v8)
        {
          v23 = v8(a1);
        }

        else
        {
          v23 = MEMORY[0x1E69E7CC0];
        }

        v28 = *(v23 + 16);
        v29 = v57;
        if (v28)
        {
          v55 = v21;
          v70 = v22;
          sub_1BA066BEC(0, v28, 0);
          v30 = v22;
          v54[1] = v23;
          v31 = v23 + 32;
          v32 = v23 + 32;
          v33 = v28;
          do
          {
            sub_1BA1F28EC(v32, &v63);
            v60 = v63;
            v61 = v64;
            *v62 = v65;
            *&v62[16] = v66;
            sub_1B9F25598(&v60, v67);
            v70 = v30;
            v35 = *(v30 + 16);
            v34 = *(v30 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_1BA066BEC((v34 > 1), v35 + 1, 1);
            }

            v36 = v68;
            v37 = v69;
            v38 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
            v39 = MEMORY[0x1EEE9AC00](v38);
            v41 = v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v42 + 16))(v41, v39);
            sub_1BA1F2854(v35, v41, &v70, v36, v37);
            __swift_destroy_boxed_opaque_existential_1(v67);
            v30 = v70;
            v32 += 56;
            --v33;
          }

          while (v33);
          v67[0] = MEMORY[0x1E69E7CC0];
          sub_1BA066BB8(0, v28, 0);
          v43 = v67[0];
          do
          {
            sub_1BA1F28EC(v31, &v63);
            v61 = v64;
            *v62 = v65;
            *&v62[16] = v66;
            v60 = v63;
            v59 = *&v62[8];
            __swift_destroy_boxed_opaque_existential_1(&v60);
            v67[0] = v43;
            v45 = *(v43 + 16);
            v44 = *(v43 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1BA066BB8((v44 > 1), v45 + 1, 1);
              v43 = v67[0];
            }

            *(v43 + 16) = v45 + 1;
            *(v43 + 16 * v45 + 32) = v59;
            v31 += 56;
            --v28;
          }

          while (v28);

          v21 = v55;
        }

        else
        {

          v43 = MEMORY[0x1E69E7CC0];
          v30 = MEMORY[0x1E69E7CC0];
        }

        v46 = sub_1B9FE4F98(v30);

        sub_1BA1F2640(0);
        v47 = swift_allocObject();
        *(v47 + 32) = v21;
        *(v47 + 40) = v46;

        v49 = Array<A>.identifierToIndexDict()(v48);

        *(v47 + 48) = v49;
        *(v47 + 56) = 1;
        v27 = *(v21 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
        v26 = *(v21 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

        *(v47 + 16) = v27;
        *(v47 + 24) = v26;
        v50 = swift_allocObject();
        *(v50 + 16) = v43;
        sub_1BA1F267C(0, &qword_1EDC69058, sub_1BA1F2640, &protocol witness table for AdditionalItemsDataSource<A>, type metadata accessor for CellRegistering);
        v51 = swift_allocObject();
        v51[3] = v26;
        v51[4] = v47;
        v51[2] = v27;
        v52 = swift_allocObject();
        v52[2] = v47;
        v52[3] = sub_1BA1F2A34;
        v52[4] = v50;
        v51[5] = sub_1BA1F2A3C;
        v51[6] = v52;
        sub_1BA1F2584();
        v25 = swift_allocObject();
        *(v25 + 16) = v27;
        *(v25 + 24) = v26;
        *(v25 + 32) = v51;
        *(v25 + 40) = 0;
        swift_bridgeObjectRetain_n();

        goto LABEL_22;
      }
    }

    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v24 = EmptyDataSource.init()();
    sub_1BA1F2584();
    v25 = swift_allocObject();
    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    *(v25 + 16) = v27;
    *(v25 + 24) = v26;
    *(v25 + 32) = v24;
    *(v25 + 40) = 1;

LABEL_22:
    sub_1BA1F26E8();
    v3 = swift_allocObject();
    *(v3 + 16) = v27;
    *(v3 + 24) = v26;
    *(v3 + 32) = v25;
    *(v3 + 40) = 1;
    goto LABEL_23;
  }

  type metadata accessor for EmptyDataSource();
  swift_allocObject();
  v2 = EmptyDataSource.init()();
  sub_1BA1F26E8();
  v3 = swift_allocObject();
  v4 = *(v2 + 24);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
LABEL_23:

  return v3;
}

void sub_1BA1F2510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 40);
    do
    {
      UICollectionView.registerCell<A>(_:)(*(v3 - 1), *(v3 - 1), *v3);
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1BA1F2584()
{
  if (!qword_1EDC66CD0)
  {
    sub_1BA1F267C(255, &qword_1EDC69058, sub_1BA1F2640, &protocol witness table for AdditionalItemsDataSource<A>, type metadata accessor for CellRegistering);
    type metadata accessor for EmptyDataSource();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CD0);
    }
  }
}

void sub_1BA1F267C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA1F26E8()
{
  if (!qword_1EDC66CF0)
  {
    type metadata accessor for EmptyDataSource();
    sub_1BA1F2584();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CF0);
    }
  }
}

uint64_t sub_1BA1F2854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B9F25598(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BA1F28EC(uint64_t a1, uint64_t a2)
{
  sub_1BA1F2950();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA1F2950()
{
  if (!qword_1EBBEE320)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6E1B0);
    sub_1BA1F29D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEE320);
    }
  }
}

unint64_t sub_1BA1F29D8()
{
  result = qword_1EBBEE328;
  if (!qword_1EBBEE328)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEAC78);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEE328);
  }

  return result;
}

uint64_t sub_1BA1F2A3C(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_1B9FF50C0();
  return v3(a1);
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI27DataTypeDetailConfigurationV7ContextVSay0aB009SectionedD10SourceItem_p4item_AA12ReusableView_pXp04cellE0tGIegno_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA1F2AB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BA1F2AFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BA1F2B8C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t PDFVStack.init(spacing:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

void PDFVStack.render(context:document:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (!v4)
  {
    return;
  }

  v7 = v2[1];
  v8 = *(v2 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v9 = 0;
  v10 = v3 + 32;
  while (1)
  {
    v11 = 0uLL;
    v12 = v4;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v9 == v4)
    {
      goto LABEL_7;
    }

    if (v9 >= *(v3 + 16))
    {
      break;
    }

    v12 = v9 + 1;
    *&v68 = v9;
    sub_1B9F0A534(v10 + 40 * v9, &v68 + 8);
    v11 = v68;
    v13 = v69;
    v14 = v70;
LABEL_7:
    v71[0] = v11;
    v71[1] = v13;
    v71[2] = v14;
    if (!v14)
    {
      return;
    }

    v66 = v11;
    sub_1B9F25598((v71 + 8), &v68);
    if (v8)
    {
      v15 = *(&v69 + 1);
      v16 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
      v17 = (*(v16 + 32))(a2, v15, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v72.origin.x = PDFBuilder.Document.drawingContext.getter();
      v84.origin.x = v17;
      v84.origin.y = v19;
      v84.size.width = v21;
      v84.size.height = v23;
      if (!CGRectContainsRect(v72, v84))
      {
        v24 = *(&v69 + 1);
        v25 = v70;
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        v26 = (*(v25 + 32))(a2, v24, v25);
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v73.origin.x = PDFBuilder.Document.bodyBox.getter();
        Height = CGRectGetHeight(v73);
        v74.origin.x = v26;
        v74.origin.y = v28;
        v74.size.width = v30;
        v74.size.height = v32;
        if (CGRectGetHeight(v74) <= Height)
        {
          v34 = *(a2 + 120);
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_29;
          }

          if (v35 == *(a2 + 104))
          {
            if (*(a2 + 201))
            {
              v63 = v10;
              v65 = v8;
              if (v35 >= 2)
              {
                type metadata accessor for PDFBuilder.Document();
                v49 = 1;
                do
                {
                  swift_initStackObject();
                  v50 = sub_1BA20F244(a2);
                  *(v50 + 168) = PDFBuilder.Document.bodyBox.getter();
                  *(v50 + 176) = v51;
                  *(v50 + 184) = v52;
                  *(v50 + 192) = v53;
                  *(v50 + 200) = 0;
                  v79.origin.x = PDFBuilder.Document.bodyBox.getter();
                  v54 = (CGRectGetWidth(v79) + (*(a2 + 104) + -1.0) * -36.0) / *(a2 + 104) * v49 + 18.0;
                  v80.origin.x = PDFBuilder.Document.drawingContext.getter();
                  x = v80.origin.x;
                  y = v80.origin.y;
                  width = v80.size.width;
                  v58 = v80.size.height;
                  v59 = CGRectGetMinX(v80) + v54;
                  v81.origin.x = x;
                  v81.origin.y = y;
                  v81.size.width = width;
                  v81.size.height = v58;
                  v60 = CGRectGetMinY(v81) + 0.0;
                  v82.origin.x = x;
                  v82.origin.y = y;
                  v82.size.width = width;
                  v82.size.height = v58;
                  v61 = CGRectGetWidth(v82) - v54;
                  v83.origin.x = x;
                  v83.origin.y = y;
                  v83.size.width = width;
                  v83.size.height = v58;
                  v62 = CGRectGetHeight(v83);
                  *(v50 + 168) = v59;
                  *(v50 + 176) = v60;
                  *(v50 + 184) = v61;
                  *(v50 + 192) = v62;
                  *(v50 + 200) = 0;
                  if (*(a2 + 112) == 1)
                  {
                    if (qword_1EBBE8468 != -1)
                    {
                      swift_once();
                    }

                    v67 = [qword_1EBBED280 CGColor];
                    PDFVerticalSeparator.render(context:document:)(a1, v50);
                  }

                  else
                  {
                  }

                  ++v49;
                }

                while (v49 - v34 != 1);
              }

              [a1 beginPage];
              v36 = *(a2 + 160);
              v37 = __OFADD__(v36, 1);
              v38 = v36 + 1;
              if (v37)
              {
                goto LABEL_30;
              }

              *(a2 + 160) = v38;
              sub_1BA20DD08(a1);
              *(a2 + 120) = 0;
              sub_1BA20F060();
              sub_1BA20DE40(a1);
              v8 = v65;
              v10 = v64;
            }
          }

          else
          {
            *(a2 + 120) = v35;
            sub_1BA20F060();
          }
        }
      }
    }

    v39 = *(&v69 + 1);
    v40 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    (*(v40 + 16))(a1, a2, v39, v40);
    if (v66 < *(v3 + 16) - 1)
    {
      v75.origin.x = PDFBuilder.Document.drawingContext.getter();
      v41 = v75.origin.x;
      v42 = v75.origin.y;
      v43 = v75.size.width;
      v44 = v75.size.height;
      v45 = CGRectGetMinX(v75) + 0.0;
      v76.origin.x = v41;
      v76.origin.y = v42;
      v76.size.width = v43;
      v76.size.height = v44;
      v46 = v7 + CGRectGetMinY(v76);
      v77.origin.x = v41;
      v77.origin.y = v42;
      v77.size.width = v43;
      v77.size.height = v44;
      v47 = CGRectGetWidth(v77);
      v78.origin.x = v41;
      v78.origin.y = v42;
      v78.size.width = v43;
      v78.size.height = v44;
      v48 = CGRectGetHeight(v78);
      *(a2 + 168) = v45;
      *(a2 + 176) = v46;
      *(a2 + 184) = v47;
      *(a2 + 192) = v48 - v7;
      *(a2 + 200) = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v68);
    v9 = v12;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void PDFVStack.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    PDFBuilder.Document.drawingContext.getter();
    return;
  }

  v5 = v1[1];
  v6 = *(v1 + 17);
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v7 = sub_1BA20F244(a1);
  v8 = *(v3 + 16);
  v9 = 0.0;
  v10 = 0.0;
  if (v8 >= 2)
  {
    v11 = v3 + 32;

    v12 = v8 - 1;
    v42 = v5;
    do
    {
      sub_1B9F0A534(v11, v43);
      v13 = v44;
      v14 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v15 = (*(v14 + 24))(v7, v13, v14);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v43);
      v46.origin.x = v15;
      v46.origin.y = v17;
      v46.size.width = v19;
      v46.size.height = v21;
      v40 = v10 + CGRectGetHeight(v46);
      v47.origin.x = v15;
      v47.origin.y = v17;
      v47.size.width = v19;
      v47.size.height = v21;
      Width = CGRectGetWidth(v47);
      if (v9 <= Width)
      {
        v9 = Width;
      }

      v41 = v9;
      v48.origin.x = v15;
      v48.origin.y = v17;
      v48.size.width = v19;
      v48.size.height = v21;
      Height = CGRectGetHeight(v48);
      v49.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v49.origin.x;
      y = v49.origin.y;
      v26 = v49.size.width;
      v27 = v49.size.height;
      v28 = CGRectGetMinX(v49) + 0.0;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = v26;
      v50.size.height = v27;
      v29 = Height + CGRectGetMinY(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = v26;
      v51.size.height = v27;
      v30 = CGRectGetWidth(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = v26;
      v52.size.height = v27;
      v31 = CGRectGetHeight(v52) - Height;
      *(v7 + 168) = v28;
      *(v7 + 176) = v29;
      *(v7 + 184) = v30;
      *(v7 + 192) = v31;
      *(v7 + 200) = 0;
      v53.origin.x = v28;
      v53.origin.y = v29;
      v53.size.width = v30;
      v53.size.height = v31;
      v32 = CGRectGetMinX(v53) + 0.0;
      v54.origin.x = v28;
      v54.origin.y = v29;
      v54.size.width = v30;
      v54.size.height = v31;
      v33 = v42 + CGRectGetMinY(v54);
      v55.origin.x = v28;
      v55.origin.y = v29;
      v55.size.width = v30;
      v55.size.height = v31;
      v34 = CGRectGetWidth(v55);
      v56.origin.x = v28;
      v56.origin.y = v29;
      v56.size.width = v30;
      v56.size.height = v31;
      v9 = v41;
      v35 = CGRectGetHeight(v56);
      *(v7 + 168) = v32;
      *(v7 + 176) = v33;
      *(v7 + 184) = v34;
      *(v7 + 192) = v35 - v42;
      *(v7 + 200) = 0;
      v10 = v42 + v40;
      v11 += 40;
      --v12;
    }

    while (v12);
    swift_unknownObjectRelease();
  }

  if (v4 > *(v3 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1B9F0A534(v3 + 40 * v4 - 8, v43);
  v36 = v44;
  v37 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v57.origin.x = (*(v37 + 24))(v7, v36, v37);
  CGRectGetHeight(v57);
  __swift_destroy_boxed_opaque_existential_1(v43);
  if (v4 > *(v3 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_1B9F0A534(v3 + 40 * v4 - 8, v43);
  v38 = v44;
  v39 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v58.origin.x = (*(v39 + 24))(v7, v38, v39);
  CGRectGetWidth(v58);
  __swift_destroy_boxed_opaque_existential_1(v43);
  if (!v6)
  {
    v59.origin.x = PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(v59);
  }

  PDFBuilder.Document.drawingContext.getter();
}

void PDFVStack.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    sub_1BA1F3704(a1);
  }

  else
  {
    PDFVStack.boundingRectForContent(in:)(a1);
  }
}

uint64_t PDFVStack.init(spacing:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0;
  result = a1();
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t PDFVStack.init(spacing:allowsMultiplePages:sizeWidthToContent:_:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  result = a3();
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 17) = a2;
  *(a4 + 16) = a1;
  return result;
}

uint64_t PDFVStack.init(spacing:allowsMultiplePages:sizeWidthToContent:_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a3;
  *(a4 + 8) = a5;
  *(a4 + 17) = a2;
  *(a4 + 16) = result;
  return result;
}

unint64_t sub_1BA1F36C0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

void sub_1BA1F3704(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    sub_1B9F0A534(*v1 + 32, v6);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v3 = sub_1BA20F244(a1);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 32))(v3, v4, v5);
    PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(*(a1 + 168));

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    PDFBuilder.Document.drawingContext.getter();
  }
}

void sub_1BA1F381C(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    sub_1BA1F3704(a1);
  }

  else
  {
    PDFVStack.boundingRectForContent(in:)(a1);
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BA1F38A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1BA1F38EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HeaderItem.__allocating_init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t HeaderItem.__allocating_init(hkType:title:showShowAll:configuration:automationIdentifier:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a6;
  v24 = a2;
  v25 = a3;
  v10 = sub_1BA4A4428();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    v18 = 0;
    v16 = 0;
    goto LABEL_5;
  }

  type metadata accessor for DefaultHeaderCollectionReusableView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_1BA4A1318();
  v18 = v17;

  if (!a1)
  {
LABEL_5:
    v21 = 0;
    v19 = 0;
    goto LABEL_6;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v20 = a1;

  v21 = sub_1BA1F42C8;
LABEL_6:
  (*(v11 + 16))(v13, a5, v10);
  type metadata accessor for HeaderItem();
  v22 = swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v24, v25, v16, v18, v21, v19, v13, v27, v26);
  sub_1B9F0E310(v21);

  (*(v11 + 8))(a5, v10);
  return v22;
}

uint64_t HeaderItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t HeaderItem.buttonText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HeaderItem.buttonWasTapped.getter()
{
  v1 = *(v0 + 72);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t HeaderItem.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration;
  v4 = sub_1BA4A4428();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BA1F3D44(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA1F3DB0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA1F3E08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA1F3EC8(void *a1, void *a2)
{
  v4 = [a1 viewController];
  if (v4)
  {
    v5 = v4;
    v6 = UIViewController.resolvedHealthStore.getter();
    if (v6)
    {
      v7 = v6;
      v8 = [a1 viewController];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 navigationController];

        if (v10)
        {
          v28 = v10;
          v11 = v7;
          UIViewController.resolvedHealthExperienceStore.getter(v30);
          v12 = objc_allocWithZone(type metadata accessor for AllHighlightsForDataTypeViewController());
          *&v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType] = a2;
          *&v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] = v11;
          sub_1B9F0A534(v30, &v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore]);
          v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton] = 0;
          *&v12[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance] = xmmword_1BA4C6710;
          sub_1B9F0A534(v30, v29);
          type metadata accessor for AllHighlightsForDataTypeDataSource();
          swift_allocObject();
          v13 = v11;
          v14 = a2;
          sub_1BA237ED8(v14, v13, v29, 0);

          v16 = CompoundDataSourceCollectionViewController.init(dataSource:)(v15);
          v17 = qword_1EDC5E100;
          v7 = v16;
          if (v17 != -1)
          {
            swift_once();
          }

          sub_1BA4A1318();
          sub_1B9F2EAC0();
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1BA4B5480;
          v19 = [v13 displayTypeController];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 displayTypeForObjectType_];

            if (v21)
            {
              v22 = [v21 localization];

              v23 = [v22 displayName];
              v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v26 = v25;

              *(v18 + 56) = MEMORY[0x1E69E6158];
              *(v18 + 64) = sub_1B9F1BE20();
              *(v18 + 32) = v24;
              *(v18 + 40) = v26;
              sub_1BA4A6768();

              v27 = sub_1BA4A6758();

              [v7 setTitle_];

              __swift_destroy_boxed_opaque_existential_1(v30);
              [v28 pushViewController:v7 animated:1];

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
    }
  }

  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA1F42D0()
{
  sub_1BA4A68C8();
  if (*(v0 + 56))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  swift_beginAccess();
  return sub_1BA4A84A8();
}

uint64_t HeaderItem.deinit()
{

  sub_1B9F0E310(*(v0 + 72));
  v1 = OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration;
  v2 = sub_1BA4A4428();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HeaderItem.__deallocating_deinit()
{

  sub_1B9F0E310(*(v0 + 72));
  v1 = OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration;
  v2 = sub_1BA4A4428();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1F44C0()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  if (*(v0 + 56))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  swift_beginAccess();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1F45B0()
{
  sub_1BA4A8488();
  sub_1BA1F42D0();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1F45F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA1F464C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA1F4720()
{
  v0 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A1D18();
  v5 = v4;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  type metadata accessor for HeaderItem();
  v6 = swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v3, v5, 0, 0, 0, 0, v2, 0, 0);
  qword_1EBBEE338 = v6;
}

uint64_t static HeaderItem.headerItemForCategories.getter()
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static HeaderItem.headerItemForCategories.setter(uint64_t a1)
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEE338 = a1;
}

uint64_t (*static HeaderItem.headerItemForCategories.modify())()
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _s18HealthExperienceUI10HeaderItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v4 && (sub_1BA4A8338() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5)
  {
    if (v6)
    {
      v7 = *(a1 + 48) == *(a2 + 48) && v5 == v6;
      if (v7 || (sub_1BA4A8338() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v9 = 0;
    return v9 & 1;
  }

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_13:
  swift_beginAccess();
  v8 = *(a1 + 64);
  swift_beginAccess();
  v9 = v8 ^ *(a2 + 64) ^ 1;
  return v9 & 1;
}

uint64_t sub_1BA1F4C60(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0791A0(a1, a2, &v28);
  if (v29)
  {
    sub_1B9F1134C(&v28, v31);
    sub_1B9F0A534(v31, &v28);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v8 = v27[0];
      v9 = [v27[0] pinnedContentIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        __swift_destroy_boxed_opaque_existential_1(v31);
        return v11;
      }

      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_1BA4A3D68();
      sub_1B9F0A534(v31, &v28);
      sub_1B9F0A534(v31, v27);
      v13 = sub_1BA4A3E88();
      v14 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 136315650;
        *(v15 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C68C0, &v26);
        *(v15 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v28, v29);
        v25[0] = swift_getDynamicType();
        v25[1] = v30;
        sub_1BA051D44();
        v17 = sub_1BA4A6808();
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_1(&v28);
        v20 = sub_1B9F0B82C(v17, v19, &v26);

        *(v15 + 14) = v20;
        *(v15 + 22) = 2080;
        sub_1B9F0A534(v27, v25);
        v21 = sub_1BA4A6808();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1(v27);
        v24 = sub_1B9F0B82C(v21, v23, &v26);

        *(v15 + 24) = v24;
        _os_log_impl(&dword_1B9F07000, v13, v14, "[%s]: Expected FeedItem but got %s. Item: %s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v16, -1, -1);
        MEMORY[0x1BFAF43A0](v15, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v27);
        __swift_destroy_boxed_opaque_existential_1(&v28);
      }

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  else
  {
    sub_1B9FCD638(&v28);
  }

  return 0;
}

uint64_t sub_1BA1F4FF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0791A0(a1, a2, &v28);
  if (v29)
  {
    sub_1B9F1134C(&v28, v31);
    sub_1B9F0A534(v31, &v28);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v8 = v27[0];
      v9 = [v27[0] pinnedContentIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        __swift_destroy_boxed_opaque_existential_1(v31);
        return v11;
      }

      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_1BA4A3D68();
      sub_1B9F0A534(v31, &v28);
      sub_1B9F0A534(v31, v27);
      v13 = sub_1BA4A3E88();
      v14 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 136315650;
        *(v15 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, &v26);
        *(v15 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v28, v29);
        v25[0] = swift_getDynamicType();
        v25[1] = v30;
        sub_1BA051D44();
        v17 = sub_1BA4A6808();
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_1(&v28);
        v20 = sub_1B9F0B82C(v17, v19, &v26);

        *(v15 + 14) = v20;
        *(v15 + 22) = 2080;
        sub_1B9F0A534(v27, v25);
        v21 = sub_1BA4A6808();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1(v27);
        v24 = sub_1B9F0B82C(v21, v23, &v26);

        *(v15 + 24) = v24;
        _os_log_impl(&dword_1B9F07000, v13, v14, "[%s]: Expected FeedItem but got %s. Item: %s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v16, -1, -1);
        MEMORY[0x1BFAF43A0](v15, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v27);
        __swift_destroy_boxed_opaque_existential_1(&v28);
      }

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  else
  {
    sub_1B9FCD638(&v28);
  }

  return 0;
}

uint64_t sub_1BA1F5388(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = qword_1EBC096C0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA1F53F4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBC096C0;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA1F544C(__int128 *a1)
{
  v3 = qword_1EBC096C0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

char *PinnedContentDataLoggingDataSource.init(pinnedContentManager:context:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1BA4A27B8();
  v4 = sub_1BA4A26E8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5460;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B9F1BE20();
  *(v5 + 64) = v7;
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x80000001BA4F41D0;
  v8 = sub_1BA4A2738();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v8;
  *(v5 + 80) = v9;
  v10 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = sub_1BA4A1D78();
  *(v11 + 40) = 0;
  v12 = MEMORY[0x1BFAED1E0](v11);

  v14 = MEMORY[0x1BFAED110](v13);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B8B60;
  *(v15 + 32) = v4;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  v16 = v4;
  v17 = v10;
  v18 = v12;
  v19 = sub_1BA4A6AE8();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v14 setPredicate_];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B7510;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:1];

  *(v21 + 32) = v24;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = sub_1BA4A6758();
  v27 = [v25 initWithKey:v26 ascending:1 selector:sel_localizedStandardCompare_];

  *(v21 + 40) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v28 = sub_1BA4A6AE8();

  [v14 setSortDescriptors_];

  v29 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v14 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F0A534(a1, v3 + qword_1EBC096C0);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v30;
}

id PinnedContentDataLoggingDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinnedContentDataLoggingDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PinnedContentDataLoggingDataSource()
{
  result = qword_1EBBEE348;
  if (!qword_1EBBEE348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1F5A18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EBC096C0;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a1);
}

uint64_t sub_1BA1F5A74(__int128 *a1)
{
  v3 = *v1;
  v4 = qword_1EBC096C0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA1F5B98(__int128 *a1)
{
  v10 = *a1;
  v2 = *(a1 + 2);
  v3 = sub_1B9FDBA04(&unk_1F37FC1B8);
  v4 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
  *&v18 = 0x4062C00000000000;
  *(&v18 + 1) = v4;
  v19 = 0uLL;
  *&v20 = 0x405D800000000000;
  *(&v20 + 1) = sub_1BA4A7648();
  *&v21 = 2;
  *(&v21 + 1) = v3;
  *&v22 = sub_1B9F58BC4;
  *(&v22 + 1) = 0;
  v16 = v10;
  v17 = v2;
  v5 = GridLayoutEngine.layout(for:)(&v16);
  if (v1)
  {
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    return sub_1B9F5A690(&v11);
  }

  else
  {
    v7 = v5;
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    sub_1B9F5A690(&v11);
    v8 = [objc_opt_self() estimatedDimension_];
    v9 = sub_1B9F5CA58(v8, 2);

    return v9;
  }
}

Swift::String __swiftcall LocalizedGeminiString(_:value:comment:)(Swift::String _, Swift::String value, Swift::String comment)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v3 = sub_1BA4A1318();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t LocalizedGeminiString(_:defaultValue:comment:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v27 = a8;
  v28 = a7;
  v29 = a1;
  v30 = a6;
  v31 = a2;
  v32 = a3;
  v25 = a4;
  v26 = a9;
  v33 = sub_1BA4A1198();
  MEMORY[0x1EEE9AC00](v33);
  sub_1BA1F6640(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1BA4A11C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A6738();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1BA4A12C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1BA4A6748();
  (*(v13 + 16))(v15, v26, v12);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDC84A30;
  v22 = sub_1BA4A17C8();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = v21;
  sub_1BA4A12B8();
  sub_1BA4A1188();
  (*(v18 + 8))(v20, v17);
  sub_1BA1F65E8();
  return sub_1BA4A69C8();
}

Swift::String __swiftcall LocalizedGeminiHealthAlertTitle(_:value:)(HKObjectType _, Swift::String value)
{
  sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = [(objc_class *)_.super.isa identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B9F1BE20();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1BA4A67D8();
  v8 = [(objc_class *)_.super.isa identifier];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  if (v9 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1BA4A8338();

    if ((v14 & 1) == 0)
    {
      if (qword_1EDC5E100 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v15 = sub_1BA4A1318();
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

Swift::String __swiftcall LocalizedChamomileString(_:value:comment:)(Swift::String _, Swift::String value, Swift::String comment)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v3 = sub_1BA4A1318();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_1BA1F65E8()
{
  result = qword_1EBBEE358;
  if (!qword_1EBBEE358)
  {
    sub_1BA4A1198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE358);
  }

  return result;
}

void sub_1BA1F6640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1BA1F66C0(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  sub_1B9F0ADF8(0, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a4 = result;
  return result;
}

id sub_1BA1F6734()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC84A30;
  qword_1EDC5E1B0 = qword_1EDC84A30;

  return v1;
}

id static NSBundle.healthExperienceUI.getter()
{
  if (qword_1EDC5E1A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E1B0;

  return v1;
}

uint64_t sub_1BA1F67F4()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v25 = v0;
  v7(v5, v0 + v6, v2);
  v8 = sub_1BA4A4578();
  (*(v3 + 8))(v5, v2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v9, 0);
    v11 = 0;
    v12 = v30;
    v13 = (v8 + 40);
    while (v11 < *(v8 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1BA1F6EF8(v14, v15, v25, &v26);

      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v30 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = v27;
        v24 = v26;
        result = sub_1B9F277B0((v20 > 1), v21 + 1, 1);
        v17 = v23;
        v16 = v24;
        v12 = v30;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 48 * v21;
      *(v22 + 32) = v16;
      *(v22 + 48) = v17;
      *(v22 + 64) = v18;
      *(v22 + 72) = v19;
      v13 += 2;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BA1F6A3C()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v25 = v0;
  v7(v5, v0 + v6, v2);
  v8 = sub_1BA4A4578();
  (*(v3 + 8))(v5, v2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v9, 0);
    v11 = 0;
    v12 = v30;
    v13 = (v8 + 40);
    while (v11 < *(v8 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1BA1F7B4C(v14, v15, v25, &v26);

      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v30 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = v27;
        v24 = v26;
        result = sub_1B9F277B0((v20 > 1), v21 + 1, 1);
        v17 = v23;
        v16 = v24;
        v12 = v30;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 48 * v21;
      *(v22 + 32) = v16;
      *(v22 + 48) = v17;
      *(v22 + 64) = v18;
      *(v22 + 72) = v19;
      v13 += 2;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BA1F6C64()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1EDC84AC8;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v25 = v0;
  v7(v5, &v0[v6], v2);
  v8 = sub_1BA4A4578();
  (*(v3 + 8))(v5, v2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v9, 0);
    v11 = 0;
    v12 = v30;
    v13 = (v8 + 40);
    while (v11 < *(v8 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1BA1F81A0(v14, v15, v25, &v26);

      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v30 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = v27;
        v24 = v26;
        result = sub_1B9F277B0((v20 > 1), v21 + 1, 1);
        v17 = v23;
        v16 = v24;
        v12 = v30;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 48 * v21;
      *(v22 + 32) = v16;
      *(v22 + 48) = v17;
      *(v22 + 64) = v18;
      *(v22 + 72) = v19;
      v13 += 2;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BA1F6EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54[0] = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v14 = v9 + 16;
  v13 = *(v9 + 16);
  v13(v11, a3 + v12, v8);
  *&v55 = a1;
  *&v73[0] = a1;
  *(&v73[0] + 1) = a2;
  *(&v55 + 1) = a2;
  sub_1BA4A44E8();
  LOBYTE(a1) = v15;
  v18 = *(v9 + 8);
  v16 = v9 + 8;
  v17 = v18;
  v18(v11, v8);
  v66 = v14;
  v65 = v13;
  v64 = v12;
  if (a1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13(v11, a3 + v12, v8);
    v73[0] = v55;
    v19 = sub_1BA4A4528();
    v17(v11, v8);
  }

  v20 = v16;
  v21 = *(v19 + 16);
  v58 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  v63 = v21;
  if (!v21)
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_30:

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v50 = v54[0];
    *v54[0] = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = v67;

    v52 = Array<A>.identifierToIndexDict()(v51);

    v53 = v55;
    *(v50 + 24) = v52;
    *(v50 + 32) = __PAIR128__(*(&v55 + 1), v53);
  }

  v60 = v17;
  v61 = v20;
  v23 = 0;
  v24 = (v19 + 40);
  v67 = MEMORY[0x1E69E7CC0];
  v62 = v8;
  v25 = v65;
  v57 = a3;
  v59 = v19;
  while (v23 < *(v19 + 16))
  {
    v27 = *(v24 - 1);
    v26 = *v24;
    v25(v11, a3 + v64, v8);
    v68 = v27;
    v69 = v26;

    sub_1BA4A4568();
    v60(v11, v8);
    v28 = *(&v73[0] + 1);
    if (!*(&v73[0] + 1))
    {
      goto LABEL_19;
    }

    v29 = *(a3 + v58);
    if (!*(v29 + 16))
    {

LABEL_19:
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      goto LABEL_20;
    }

    v30 = *&v73[0];

    v31 = sub_1B9F24A34(v30, v28);
    v33 = v32;

    if ((v33 & 1) == 0)
    {

      a3 = v57;
      v8 = v62;
      goto LABEL_19;
    }

    v34 = (*(v29 + 56) + 48 * v31);
    v35 = v34[2];
    v36 = v34[3];
    v56 = v34[1];

    if (*(v36 + 16) && (result = sub_1B9F24A34(v27, v26), (v37 & 1) != 0))
    {
      v38 = *(*(v36 + 56) + 8 * result);
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v38 >= *(v35 + 16))
      {
        goto LABEL_33;
      }

      sub_1B9F0A534(v35 + 40 * v38 + 32, &v70);
    }

    else
    {
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
    }

    a3 = v57;
    v8 = v62;
LABEL_20:

    if (*(&v71 + 1))
    {
      sub_1B9F25598(&v70, v73);
      sub_1B9F25598(v73, &v70);
      v39 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_1B9F281E8(0, v39[2] + 1, 1, v39);
        v74 = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v67 = sub_1B9F281E8((v41 > 1), v42 + 1, 1, v39);
        v74 = v67;
      }

      else
      {
        v67 = v39;
      }

      v43 = *(&v71 + 1);
      v44 = v72;
      v45 = __swift_mutable_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      v46 = MEMORY[0x1EEE9AC00](v45);
      v48 = v54 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48, v46);
      sub_1B9F1C4F4(v42, v48, &v74, v43, v44);
      result = __swift_destroy_boxed_opaque_existential_1(&v70);
      v8 = v62;
    }

    else
    {
      result = sub_1B9F44090(&v70, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    }

    ++v23;
    v24 += 2;
    v25 = v65;
    v19 = v59;
    if (v63 == v23)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_1BA1F7548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v53 = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v62 = *(v9 + 16);
  v62(v11, a3 + v12, v8);
  v58 = a1;
  *&v68 = a1;
  *(&v68 + 1) = a2;
  sub_1BA4A44E8();
  LOBYTE(a1) = v13;
  v14 = *(v9 + 8);
  result = v14(v11, v8);
  v57 = a3;
  if (a1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v58;
  }

  else
  {
    v62(v11, a3 + v12, v8);
    v18 = v58;
    *&v68 = v58;
    *(&v68 + 1) = a2;
    v16 = sub_1BA4A4528();
    result = v14(v11, v8);
    v17 = v18;
  }

  v56 = *(v16 + 16);
  if (v56)
  {
    v19 = 0;
    v20 = (v16 + 40);
    v59 = MEMORY[0x1E69E7CC0];
    v55 = a2;
    v54 = v16;
    while (v19 < *(v16 + 16))
    {
      v24 = *(v20 - 1);
      v23 = *v20;
      *&v68 = v24;
      *(&v68 + 1) = v23;
      v63 = 0x2A5F5F5F2ALL;
      v64 = 0xE500000000000000;
      sub_1BA164F44();
      v62 = v23;

      result = sub_1BA4A6E08();
      if (!result[2])
      {
        goto LABEL_21;
      }

      v60 = v20;
      v61 = v19;
      v25 = result[4];
      v26 = result[5];
      v27 = result[6];
      v28 = result[7];

      v29 = MEMORY[0x1BFAF12A0](v25, v26, v27, v28);
      v31 = v30;

      *&v68 = v24;
      *(&v68 + 1) = v62;
      v63 = 0x2A5F5F5F2ALL;
      v64 = 0xE500000000000000;
      result = sub_1BA4A6E08();
      v32 = result[2];
      if (!v32)
      {
        goto LABEL_22;
      }

      *&v68 = result;
      *(&v68 + 1) = result + 4;
      v69 = 1;
      v70 = (2 * v32) | 1;
      sub_1BA1F9960(0, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
      sub_1B9F407D0();
      sub_1B9F439FC();
      v33 = sub_1BA4A6A48();
      v35 = v34;

      *&v68 = v33;
      *(&v68 + 1) = v35;
      v36 = sub_1BA4A69D8();
      sub_1B9F3A3B4(v29, v31, v36, v37, &v65);

      if (v66)
      {
        sub_1B9F25598(&v65, &v68);
        sub_1B9F25598(&v68, &v65);
        v38 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v38;
        a2 = v55;
        v21 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_1B9F281E8(0, v38[2] + 1, 1, v38);
          v71 = v38;
        }

        v41 = v38[2];
        v40 = v38[3];
        v22 = v60;
        if (v41 >= v40 >> 1)
        {
          v59 = sub_1B9F281E8((v40 > 1), v41 + 1, 1, v38);
          v71 = v59;
        }

        else
        {
          v59 = v38;
        }

        v42 = v66;
        v43 = v67;
        v44 = __swift_mutable_project_boxed_opaque_existential_1(&v65, v66);
        v45 = MEMORY[0x1EEE9AC00](v44);
        v47 = &v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v48 + 16))(v47, v45);
        sub_1B9F1C4F4(v41, v47, &v71, v42, v43);
        result = __swift_destroy_boxed_opaque_existential_1(&v65);
        v17 = v58;
        v16 = v54;
      }

      else
      {
        result = sub_1B9F44090(&v65, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
        a2 = v55;
        v17 = v58;
        v16 = v54;
        v22 = v60;
        v21 = v61;
      }

      v19 = v21 + 1;
      v20 = (v22 + 2);
      if (v56 == v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_19:

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v49 = v53;
    *v53 = 0;
    v49[1] = 0;
    v49[2] = v59;

    v51 = Array<A>.identifierToIndexDict()(v50);

    v49[3] = v51;
    v49[4] = v17;
    v49[5] = a2;
  }

  return result;
}

unint64_t sub_1BA1F7B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55[0] = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v14 = v9 + 16;
  v13 = *(v9 + 16);
  v13(v11, a3 + v12, v8);
  *&v56 = a1;
  *&v74[0] = a1;
  *(&v74[0] + 1) = a2;
  *(&v56 + 1) = a2;
  sub_1BA4A44E8();
  LOBYTE(a1) = v15;
  v18 = *(v9 + 8);
  v16 = v9 + 8;
  v17 = v18;
  v18(v11, v8);
  v67 = v14;
  v66 = v13;
  v65 = v12;
  if (a1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13(v11, a3 + v12, v8);
    v74[0] = v56;
    v19 = sub_1BA4A4528();
    v17(v11, v8);
  }

  v20 = v16;
  v21 = *(v19 + 16);
  v59 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  v64 = v21;
  if (!v21)
  {
    v68 = MEMORY[0x1E69E7CC0];
LABEL_30:

    v50 = *(&v56 + 1);

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v51 = v55[0];
    *v55[0] = 0;
    v51[1] = 0;
    v51[2] = v68;

    v53 = Array<A>.identifierToIndexDict()(v52);

    v54 = v56;
    v51[3] = v53;
    v51[4] = v54;
    v51[5] = v50;
    return result;
  }

  v61 = v17;
  v62 = v20;
  v23 = 0;
  v24 = (v19 + 40);
  v68 = MEMORY[0x1E69E7CC0];
  v63 = v8;
  v25 = v66;
  v58 = a3;
  v60 = v19;
  while (v23 < *(v19 + 16))
  {
    v27 = *(v24 - 1);
    v26 = *v24;
    v25(v11, a3 + v65, v8);
    v69 = v27;
    v70 = v26;

    sub_1BA4A4568();
    v61(v11, v8);
    v28 = *(&v74[0] + 1);
    if (!*(&v74[0] + 1))
    {
      goto LABEL_19;
    }

    v29 = *(a3 + v59);
    if (!*(v29 + 16))
    {

LABEL_19:
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      goto LABEL_20;
    }

    v30 = *&v74[0];

    v31 = sub_1B9F24A34(v30, v28);
    v33 = v32;

    if ((v33 & 1) == 0)
    {

      a3 = v58;
      v8 = v63;
      goto LABEL_19;
    }

    v34 = (*(v29 + 56) + 48 * v31);
    v35 = v34[2];
    v36 = v34[3];
    v57 = v34[1];

    if (*(v36 + 16) && (result = sub_1B9F24A34(v27, v26), (v37 & 1) != 0))
    {
      v38 = *(*(v36 + 56) + 8 * result);
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v38 >= *(v35 + 16))
      {
        goto LABEL_33;
      }

      sub_1B9F0A534(v35 + 40 * v38 + 32, &v71);
    }

    else
    {
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
    }

    a3 = v58;
    v8 = v63;
LABEL_20:

    if (*(&v72 + 1))
    {
      sub_1B9F25598(&v71, v74);
      sub_1B9F25598(v74, &v71);
      v39 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_1B9F281E8(0, v39[2] + 1, 1, v39);
        v75 = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v68 = sub_1B9F281E8((v41 > 1), v42 + 1, 1, v39);
        v75 = v68;
      }

      else
      {
        v68 = v39;
      }

      v43 = *(&v72 + 1);
      v44 = v73;
      v45 = __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v46 = MEMORY[0x1EEE9AC00](v45);
      v48 = v55 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48, v46);
      sub_1B9F1C4F4(v42, v48, &v75, v43, v44);
      result = __swift_destroy_boxed_opaque_existential_1(&v71);
      v8 = v63;
    }

    else
    {
      result = sub_1B9F44090(&v71, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    }

    ++v23;
    v24 += 2;
    v25 = v66;
    v19 = v60;
    if (v64 == v23)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1BA1F81A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v41 = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1EDC84AC8;
  swift_beginAccess();
  v43 = *(v9 + 16);
  v43(v11, &a3[v12], v8);
  *&v49[0] = a1;
  *(&v49[0] + 1) = a2;
  sub_1BA4A44E8();
  v14 = v13;
  v40 = *(v9 + 8);
  result = v40(v11, v8);
  v42 = a2;
  v44 = a1;
  v45 = a3;
  if (v14)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v43(v11, &a3[v12], v8);
    *&v49[0] = a1;
    *(&v49[0] + 1) = v42;
    v16 = sub_1BA4A4528();
    result = v40(v11, v8);
  }

  v43 = *(v16 + 16);
  if (v43)
  {
    v17 = 0;
    v18 = (v16 + 40);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v42;
    v21 = v45;
    while (v17 < *(v16 + 16))
    {
      v23 = *(v18 - 1);
      v24 = *v18;
      v25 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x128);

      v25(&v46, v23, v24);

      if (v47)
      {
        sub_1B9F25598(&v46, v49);
        sub_1B9F25598(v49, &v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1B9F281E8(0, v19[2] + 1, 1, v19);
          v50 = v19;
        }

        v28 = v19[2];
        v27 = v19[3];
        if (v28 >= v27 >> 1)
        {
          v19 = sub_1B9F281E8((v27 > 1), v28 + 1, 1, v19);
          v50 = v19;
        }

        v29 = v47;
        v30 = v48;
        v31 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v47);
        v32 = MEMORY[0x1EEE9AC00](v31);
        v34 = &v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34, v32);
        sub_1B9F1C4F4(v28, v34, &v50, v29, v30);
        result = __swift_destroy_boxed_opaque_existential_1(&v46);
        v20 = v42;
      }

      else
      {
        result = sub_1B9F44090(&v46, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      }

      v17 = (v17 + 1);
      v18 += 2;
      v22 = v44;
      v21 = v45;
      if (v43 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v42;
    v22 = v44;
LABEL_16:

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v36 = v41;
    *v41 = 0;
    v36[1] = 0;
    v36[2] = v19;

    v38 = Array<A>.identifierToIndexDict()(v37);

    v36[3] = v38;
    v36[4] = v22;
    v36[5] = v20;
  }

  return result;
}

uint64_t ProfileInformationConsuming.healthKitProfileAvatarInformation.getter(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 8) + 16) + 8))(v4);
  if (v4[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1B9F0D9AC(0, &qword_1EBBEE370);
    if (swift_dynamicCast())
    {
      if (*(&v6 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
        v2 = sub_1BA4A3418();
        __swift_destroy_boxed_opaque_existential_1(&v5);
        return v2;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }
  }

  else
  {
    sub_1B9F44090(v4, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
  }

  sub_1B9F44090(&v5, &qword_1EBBEE368, &qword_1EBBEE370, MEMORY[0x1E69A3450]);
  return 0;
}

uint64_t ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v38 = a1;
  v39 = a2;
  v11 = *v6;
  sub_1BA1F8B70(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = qword_1EBC096D8;
  sub_1BA1F8B70(0, &qword_1EBBEE378, sub_1BA1F8BD4, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5460;
  *(v16 + 32) = type metadata accessor for ProfileAvatarImageCell();
  *(v16 + 40) = &protocol witness table for ProfileAvatarImageCell;
  *(v16 + 48) = type metadata accessor for ProfileNameCell();
  *(v16 + 56) = &protocol witness table for ProfileNameCell;
  *(v6 + v15) = v16;
  *(v6 + qword_1EBC096E0) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v11;

  v18 = sub_1BA2B8BC0(a2);
  *(v6 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = (v6 + qword_1EDC84CF0);
  v36 = a3;
  v37 = a4;
  *v19 = a3;
  v19[1] = a4;
  v20 = (v6 + qword_1EDC84CE0);
  sub_1BA1F9960(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *v20 = 0;
  v20[1] = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5470;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a3);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:1 selector:sel_localizedStandardCompare_];

  *(v21 + 32) = v24;
  v25 = v38;
  v26 = sub_1BA4A7558();

  sub_1B9F126E0();
  v28 = objc_allocWithZone(v27);
  v29 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v26);
  v30 = sub_1BA4A2888();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  sub_1BA1F9800();
  swift_allocObject();
  *(v6 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v31 = v29;
  v32 = sub_1B9F17A68(v31, sub_1BA1F8E5C, v17, 0);

  v33 = *(*v32 + 760);

  v33(v34);
  sub_1BA4A4DA8();

  sub_1B9F0E30C(v36, v37);

  sub_1BA06F9D0(v14);
  return v32;
}

void sub_1BA1F8B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA1F8BD4()
{
  result = qword_1EBBEE380;
  if (!qword_1EBBEE380)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEE388);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEE380);
  }

  return result;
}

uint64_t sub_1BA1F8C30(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1BA4A2888();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1BA0CD788(a1);
  sub_1B9F0D3C4(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  v13 = sub_1BA4A27F8();
  v14 = sub_1BA4A2E48();
  v15 = MEMORY[0x1E69A3330];
  *(v12 + 56) = v14;
  *(v12 + 64) = v15;
  *(v12 + 32) = v13;
  if (a3)
  {
    v16 = *(v6 + 16);
    v16(v8, v11, v5);
    v12 = sub_1B9F281E8(1, 2, 1, v12);
    v17 = *(v6 + 8);
    v17(v11, v5);
    v22 = v5;
    v23 = MEMORY[0x1E69A30F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    v16(boxed_opaque_existential_1, v8, v5);
    *(v12 + 16) = 2;
    sub_1B9F25598(&v21, v12 + 72);
    v17(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_1BA1F8E68@<X0>(uint64_t a1@<X8>)
{
  sub_1BA1F8B70(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  if (*(v1 + qword_1EBC096E0) != 1)
  {
LABEL_7:
    v18 = sub_1BA4A2888();
    v19 = *(*(v18 - 8) + 56);

    return v19(a1, 1, 1, v18);
  }

  v14 = sub_1BA1F67F4();
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_6:

    goto LABEL_7;
  }

  v62 = v14 + 32;
  v16 = 48;
  v17 = v15;
  while (!*(*(v14 + v16) + 16))
  {
    v16 += 48;
    if (!--v17)
    {
      goto LABEL_6;
    }
  }

  v56 = v8;
  v57 = v5;
  v58 = v13;
  v59 = a1;
  v21 = 0;
  v22 = 0;
  v23 = 48;
  v63 = v14;
  do
  {
    if (*(*(v14 + v23) + 16))
    {

      v24 = 0;
      v61 = v15;
      do
      {
        v25 = v22 >= v15;
        if (v22 >= v15)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v21)
        {
          goto LABEL_46;
        }

        v26 = v62 + 48 * v22;
        v29 = *(v26 + 16);
        v28 = (v26 + 16);
        v27 = v29;
        v30 = *(v29 + 16);
        v25 = v24 >= v30;
        if (v24 >= v30)
        {
          goto LABEL_42;
        }

        v65 = v24;
        v66 = v22;
        sub_1B9F0A534(v27 + 40 * v24 + 32, v68);
        sub_1B9F0A534(v68, v67);
        v31 = sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        v32 = sub_1BA4A2888();
        v33 = v64;
        v60 = v31;
        v34 = swift_dynamicCast();
        v35 = *(v32 - 8);
        v36 = *(v35 + 56);
        v36(v33, v34 ^ 1u, 1, v32);
        __swift_destroy_boxed_opaque_existential_1(v68);
        v15 = v35 + 48;
        v37 = *(v35 + 48);
        v38 = v37(v33, 1, v32);
        sub_1BA06F9D0(v33);
        v39 = v63;
        v40 = *(v63 + 16);
        if (v38 != 1)
        {
          v64 = (v32 - 8);
          if (v66 >= v40)
          {
            goto LABEL_50;
          }

          v47 = *v28;
          v48 = *(*v28 + 16);
          v25 = v65 >= v48;
          v50 = v56;
          v49 = v57;
          if (v65 < v48)
          {
            sub_1B9F0A534(v47 + 40 * v65 + 32, v68);
            sub_1B9F0A534(v68, v67);
            v51 = swift_dynamicCast();
            v36(v50, v51 ^ 1u, 1, v32);
            __swift_destroy_boxed_opaque_existential_1(v68);
            sub_1BA06FE18(v50, v49);
            v52 = v37(v49, 1, v32);
            v25 = v52 != 0;
            if (v52 != 1)
            {
              v15 = v58;
              (*(v35 + 32))(v58, v49, v32);
              sub_1BA06F9D0(v50);
              v36(v15, 0, 1, v32);
              goto LABEL_39;
            }

            goto LABEL_47;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v22 = v66;
        v25 = v66 >= v40;
        v15 = v61;
        if (v66 >= v40)
        {
          goto LABEL_43;
        }

        v24 = v65 + 1;
        if (v65 + 1 == *(*v28 + 16))
        {
          v22 = v66 + 1;
          while (1)
          {
            v21 = v22 == v40;
            if (v22 == v40)
            {
              v24 = 0;
              v22 = v40;
              goto LABEL_22;
            }

            v41 = v39;
            sub_1BA0CF724();
            sub_1BA0CF8C4();
            v42 = sub_1BA1F9630(v68, v22, v41, sub_1BA0CECC0);
            v44 = *v43;

            (v42)(v68, 0);
            v45 = *(v44 + 16);

            if (v45)
            {
              break;
            }

            v25 = __CFADD__(v22, 1);
            v46 = __OFADD__(v22++, 1);
            v39 = v63;
            if (v46)
            {
              goto LABEL_45;
            }
          }

          v24 = 0;
          v39 = v63;
        }

        else
        {
          v21 = 0;
        }

LABEL_22:
        ;
      }

      while (v22 != v15 || !v21);
      v53 = *(v39 + 16);
      v25 = v15 >= v53;
      if (v15 == v53)
      {
        goto LABEL_38;
      }

LABEL_48:
      if (!v25)
      {
        __break(1u);
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    ++v22;
    v23 += 48;
    v21 = v15 == v22;
  }

  while (v15 != v22);

LABEL_38:
  v32 = sub_1BA4A2888();
  v15 = v58;
  (*(*(v32 - 8) + 56))(v58, 1, 1, v32);
LABEL_39:
  v54 = v59;

  sub_1BA4A2888();
  v55 = *(v32 - 8);
  if ((*(v55 + 48))(v15, 1, v32) != 1)
  {

    (*(v55 + 32))(v54, v15, v32);
    return (*(v55 + 56))(v54, 0, 1, v32);
  }

LABEL_51:
  sub_1BA06F9D0(v15);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t ProfileAvatarDataSource.deinit()
{
  v0 = _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return v0;
}

uint64_t ProfileAvatarDataSource.__deallocating_deinit()
{
  _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return swift_deallocClassInstance();
}

void (*sub_1BA1F9630(uint64_t *a1, unint64_t a2, uint64_t a3, void (*a4)(void *)))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  *(v8 + 32) = sub_1BA1F9710(v8, a2, a3, a4);
  return sub_1BA1F96C8;
}

void sub_1BA1F96C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1BA1F9710(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *)))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v14[12] = v4;
    v14[13] = v5;
    v7 = (a3 + 48 * a2);
    v8 = v7[5];
    v9 = v7[6];
    v10 = v7[7];
    v11 = v7[8];
    v12 = v7[9];
    v14[0] = v7[4];
    v14[1] = v8;
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = v11;
    v14[5] = v12;

    a4(v14);

    return sub_1BA1F97F8;
  }

  __break(1u);
  return result;
}

void sub_1BA1F9800()
{
  if (!qword_1EDC6B720)
  {
    sub_1BA1F8B70(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A4DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B720);
    }
  }
}

uint64_t type metadata accessor for ProfileAvatarDataSource()
{
  result = qword_1EBBEE390;
  if (!qword_1EBBEE390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1F9960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA1F99C8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC60088 = result;
  unk_1EDC60090 = v1;
  return result;
}

uint64_t static HighlightsFetchedResultsControllerDataSource.defaultHeaderTitle.getter()
{
  if (qword_1EDC60080 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60088;

  return v0;
}

char *HighlightsFetchedResultsControllerDataSource.__allocating_init(managedObjectContext:objectType:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v50 = a8;
  v46 = a7;
  v52 = a4;
  v54 = a1;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v45 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = sub_1BA4A1C48();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = objc_allocWithZone(v12);
  sub_1BA4A1C28();
  v48 = sub_1BA4A1C38();
  (*(v22 + 8))(v24, v21);
  v47 = a9;
  sub_1BA1FA3F8(a9, v20);
  *&v25[qword_1EDC84A78] = a2;
  v53 = v25;
  v26 = &v25[qword_1EDC84A80];
  *v26 = a5;
  *(v26 + 1) = a6;
  sub_1BA4A27B8();
  v27 = a2;
  v28 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v29 = sub_1BA4A6AE8();

  [v28 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1BA4B5470;
    *(a2 + 32) = v27;
  }

  v49 = a11;
  v51 = v27;
  v30 = MEMORY[0x1BFAED020](v48, a2, v20, v52);

  sub_1B9F109F8();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5470;
  *(v31 + 32) = v30;
  v55 = v31;
  if (v50)
  {
    v32 = sub_1BA4A0FA8();
    v33 = v45;
    (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
    v34 = v30;
    v35 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v33);
    v36 = v35;
    MEMORY[0x1BFAF1510]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v37 = v30;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v38 = sub_1BA4A6AE8();

  v39 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v28 setPredicate_];
  if ((v49 & 1) == 0)
  {
    [v28 setFetchLimit_];
  }

  v40 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v41 = v54;
  v42 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v40 initWithFetchRequest:v28 managedObjectContext:v54 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v47);
  sub_1B9F1C1B0(v20);
  return v42;
}

char *HighlightsFetchedResultsControllerDataSource.init(managedObjectContext:objectType:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v49 = a8;
  v45 = a7;
  v51 = a4;
  v52 = a1;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v21 = sub_1BA4A1C48();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1C28();
  v47 = sub_1BA4A1C38();
  (*(v22 + 8))(v24, v21);
  v46 = a9;
  v53 = v20;
  sub_1BA1FA3F8(a9, v20);
  *(v12 + qword_1EDC84A78) = a2;
  v25 = (v12 + qword_1EDC84A80);
  *v25 = a5;
  v25[1] = a6;
  sub_1BA4A27B8();
  v26 = a2;
  v27 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v28 = sub_1BA4A6AE8();

  [v27 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1BA4B5470;
    *(a2 + 32) = v26;
  }

  v48 = a11;
  v50 = v26;
  v29 = MEMORY[0x1BFAED020](v47, a2, v53, v51);

  sub_1B9F109F8();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5470;
  *(v30 + 32) = v29;
  v54 = v30;
  if (v49)
  {
    v31 = sub_1BA4A0FA8();
    v32 = v44;
    (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
    v33 = v29;
    v34 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v32);
    v35 = v34;
    MEMORY[0x1BFAF1510]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v36 = v29;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v37 = sub_1BA4A6AE8();

  v38 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v27 setPredicate_];
  if ((v48 & 1) == 0)
  {
    [v27 setFetchLimit_];
  }

  v39 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v40 = v52;
  v41 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v39 initWithFetchRequest:v27 managedObjectContext:v52 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v46);
  sub_1B9F1C1B0(v53);
  return v41;
}

uint64_t sub_1BA1FA3F8(uint64_t a1, uint64_t a2)
{
  sub_1BA170230(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA1FA45C@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = *(v1 + qword_1EDC84A78);
  v10 = *(v1 + qword_1EDC84A80);
  v25 = *(v1 + qword_1EDC84A80 + 8);
  v26 = v10;

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  type metadata accessor for DefaultHeaderCollectionReusableView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v24 = sub_1BA4A1318();
  v14 = v13;

  if (v9)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v9;

    v16 = sub_1BA1F42C8;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  (*(v3 + 16))(v5, v8, v2);
  v17 = v2;
  v18 = type metadata accessor for HeaderItem();
  swift_allocObject();
  v19 = v9;
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v26, v25, v24, v14, v16, v15, v5, 0, 0);
  v21 = v20;
  sub_1B9F0E310(v16);
  (*(v3 + 8))(v8, v17);
  v22 = v27;
  v27[3] = v18;
  result = sub_1BA011754();
  v22[4] = result;
  *v22 = v21;
  return result;
}

id HighlightsFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsFetchedResultsControllerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HighlightsFetchedResultsControllerDataSource()
{
  result = qword_1EDC60068;
  if (!qword_1EDC60068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1FA864()
{
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v47 = v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = v44 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v44 - v5;
  v7 = sub_1BA4A1728();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  v13 = sub_1BA4A15D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x1E69A2D90]) init];
  v18 = sub_1BA4A37C8();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 identifier];

    v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = v21;
  }

  else
  {
    v23 = sub_1BA4A37E8();
    if (v24)
    {
      v48 = v23;
      v22 = v24;
    }

    else
    {
      sub_1BA4A3818();
      v48 = sub_1BA4A1518();
      v26 = v25;
      (*(v14 + 8))(v16, v13);
      v22 = v26;
    }
  }

  sub_1BA4A3868();
  v27 = v49;
  v28 = *(v49 + 48);
  if (v28(v6, 1, v7) == 1)
  {
    goto LABEL_9;
  }

  v44[0] = v9;
  v44[1] = v22;
  v45 = v17;
  v29 = *(v27 + 32);
  v29(v12, v6, v7);
  v6 = v46;
  sub_1BA4A3858();
  if (v28(v6, 1, v7) != 1)
  {
    v33 = v44[0];
    v29(v44[0], v6, v7);
    sub_1BA4A1628();
    v35 = v34;
    sub_1BA4A1628();
    v37 = round((v35 - v36) / 3600.0);
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v37 > -9.22337204e18)
    {
      if (v37 < 9.22337204e18)
      {
        v38 = v12;
        v50 = v37;
        sub_1BA4A82D8();
        v39 = v33;
        v32 = v40;
        v41 = *(v49 + 8);
        v41(v39, v7);
        v41(v38, v7);
        v17 = v45;
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v27 + 8))(v12, v7);
  v17 = v45;
LABEL_9:
  sub_1BA05DB44(v6);
  v30 = v47;
  sub_1BA4A3838();
  v31 = v28(v30, 1, v7);
  sub_1BA05DB44(v30);
  if (v31 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0xE100000000000000;
  }

LABEL_16:
  v42 = sub_1BA4A6758();

  if (v32)
  {
    v43 = sub_1BA4A6758();
  }

  else
  {
    v43 = 0;
  }

  [v17 submitHealthEventWithDescription:v42 requestInterval:v43];
}

uint64_t sub_1BA1FAD58(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1BA4A7F08();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFAF2860](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1BA4A7CC8();
    sub_1BA4A7F08();
  }

  return v8;
}

uint64_t sub_1BA1FAEC0(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1BA4A7F08();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1B9F0AD9C(i, v5);
    sub_1B9F0ADF8(0, &qword_1EBBE9970);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1BA4A7ED8();
    sub_1BA4A7F18();
    sub_1BA4A7F28();
    sub_1BA4A7EE8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1BA1FAFCC()
{
  v1 = sub_1BA4A7A08();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    return sub_1BA4A7A08();
  }

  if (v0[4])
  {
    v6 = v0[3];

    return v6;
  }

  else
  {
    if (v0[2])
    {
      v7 = v0[1];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }
}

uint64_t sub_1BA1FB06C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

id sub_1BA1FB0E0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1FB158()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView);
  }

  else
  {
    type metadata accessor for SummarySharingContactSelectionSplashView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1FB1D0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView);
  }

  else
  {
    type metadata accessor for VerticallyCenteredContentScrollView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setKeyboardDismissMode_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1FB298()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v64.receiver = v0;
  v64.super_class = type metadata accessor for SummarySharingOnboardingContactPickerViewController();
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  sub_1BA1FCC80();
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = sub_1BA1FB1D0();
  [v6 addSubview_];

  v8 = sub_1BA1FB158();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v63 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView;
  v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView;
  v11 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView];
  v12 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v13 = *&v9[v12];
  *&v9[v12] = v11;
  v14 = v11;
  v15 = v9;
  sub_1BA104BF4(v13);

  v16 = *&v1[v10];
  v17 = swift_allocObject();
  *(v17 + 16) = ObjectType;
  v18 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler];
  v19 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler];
  *v18 = sub_1BA205704;
  v18[1] = v17;
  v20 = v16;
  sub_1B9F0E310(v19);

  v21 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController];
  [v21 setDelegate_];
  [v1 addChildViewController_];
  result = [v21 tableView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v62 = v10;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  v23 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView] = result;
  v24 = result;

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v22] setKeyboardDismissMode_];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = result;
  [result addSubview_];

  [*&v1[v22] setHidden_];
  v26 = [v1 navigationItem];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonTapped_];
  [v26 setRightBarButtonItem_];

  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v1;
  sub_1BA4A4F38();
  sub_1BA2057F0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4C27A0;
  v30 = [*&v1[v22] leadingAnchor];
  result = [v28 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = result;
  v32 = [result leadingAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v29 + 32) = v33;
  v34 = [*&v1[v22] trailingAnchor];
  result = [v28 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = result;
  v36 = [result trailingAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v29 + 40) = v37;
  v38 = [*&v1[v22] topAnchor];
  result = [v28 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = result;
  v40 = [result safeAreaLayoutGuide];

  v41 = [v40 topAnchor];
  v42 = [v38 constraintEqualToAnchor_];

  *(v29 + 48) = v42;
  v43 = [*&v1[v22] bottomAnchor];
  result = [v28 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = result;
  v45 = [result bottomAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v29 + 56) = v46;
  v47 = [*&v1[v63] leadingAnchor];
  result = [v28 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v48 = result;
  v49 = [result leadingAnchor];

  v50 = [v47 constraintEqualToSystemSpacingAfterAnchor:v49 multiplier:1.0];
  *(v29 + 64) = v50;
  result = [v28 &selRef_textFieldShouldBeginEditing_];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = result;
  v52 = [result trailingAnchor];

  v53 = [*&v1[v63] trailingAnchor];
  v54 = [v52 constraintEqualToSystemSpacingAfterAnchor:v53 multiplier:1.0];

  *(v29 + 72) = v54;
  v55 = [*&v1[v63] topAnchor];
  result = [v28 &selRef_textFieldShouldBeginEditing_];
  if (result)
  {
    v56 = result;
    v57 = objc_opt_self();
    v58 = [v56 safeAreaLayoutGuide];

    v59 = [v58 topAnchor];
    v60 = [v55 constraintEqualToSystemSpacingBelowAnchor:v59 multiplier:1.0];

    *(v29 + 80) = v60;
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v61 = sub_1BA4A6AE8();

    [v57 activateConstraints_];

    [*&v1[v62] setHidden_];
    return [*&v1[v22] setHidden_];
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1BA1FBAC0(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v3 = sub_1BA201CF8(0xD00000000000001BLL, 0x80000001BA4F48A0, 1);
  if (v3)
  {
    v14 = v3;
    v4 = [objc_opt_self() defaultWorkspace];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(MEMORY[0x1E696B090]);
      v7 = sub_1BA4A6758();
      v8 = [v6 initWithActivityType_];

      v9 = objc_allocWithZone(MEMORY[0x1E69636B8]);
      v10 = v14;
      v11 = [v9 init];
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      aBlock[4] = sub_1BA20570C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA454240;
      aBlock[3] = &block_descriptor_118;
      v13 = _Block_copy(aBlock);

      [v5 openUserActivity:v8 usingApplicationRecord:v10 configuration:v11 completionHandler:v13];

      _Block_release(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_1BA1FBCF8(char a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v8 = a2;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315650;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    *(v12 + 18) = 2080;
    v24 = a2;
    v17 = a2;
    sub_1B9F6A85C(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], sub_1B9F0D950);
    v18 = sub_1BA4A6808();
    v20 = sub_1B9F0B82C(v18, v19, &v25);

    *(v12 + 20) = v20;
    _os_log_impl(&dword_1B9F07000, v9, v10, "%s Open Contacts app, success = %{BOOL}d, error = %s", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    return (*(v5 + 8))(v7, v23);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1BA1FBFA8(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SummarySharingOnboardingContactPickerViewController();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  [v3 setTitle_];

  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 keyboardLayoutGuide];

    v8 = [v7 topAnchor];
    v9 = sub_1BA1FB1D0();
    v10 = [v9 bottomAnchor];

    v11 = [v8 constraintEqualToSystemSpacingBelowAnchor:v10 multiplier:1.0];
    [v11 setActive_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA1FC1F4(char a1)
{
  v2 = v1;
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A64C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SummarySharingOnboardingContactPickerViewController();
  v19.receiver = v2;
  v19.super_class = v12;
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v13 = sub_1BA4A7308();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  aBlock[4] = sub_1BA2056FC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_109;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1BA1FC500()
{
  v0 = sub_1BA1FB0E0();
  v1 = [v0 searchBar];

  [v1 becomeFirstResponder];
}

uint64_t sub_1BA1FC5C4()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable])
  {

    sub_1BA4A4D48();
  }

  v2 = [v0 presentedViewController];
  if (v2)
  {
    v3 = v2;
    if (([v2 isBeingDismissed] & 1) == 0)
    {
      [v1 dismissViewControllerAnimated:1 completion:0];

      goto LABEL_11;
    }
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
  swift_beginAccess();
  if (*(*&v1[v4] + 16))
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  v12 = v5;

  sub_1B9FEF9F4(v1, &v8);

  sub_1BA2056EC(v8, v9, v10, v11);
LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v8) = 0;
  v6 = v1;
  return sub_1BA4A4F38();
}

uint64_t sub_1BA1FC780(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = sub_1BA4A7A28();
  v7 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_selectionFlowContext;
  memset(v40, 0, sizeof(v40));
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 5;
  v39 = 6;

  sub_1B9FEEC64(ObjectType, v40, 1, &v35);

  sub_1B9FF3BFC(v35, v36, v37, v38);
  sub_1B9F0DD40(v40, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA2057F0);
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthExperienceStore], &v35);
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthStore];
  v9 = *&v2[v7];
  v10 = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
  v11 = objc_allocWithZone(v10);
  sub_1B9F0A534(&v35, &v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore]);
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore] = v8;
  v40[0] = *(a1 + 8);
  v41 = *(a1 + 24);
  v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact];
  v13 = *a1;
  v14 = a1[1];
  *(v12 + 4) = *(a1 + 4);
  *v12 = v13;
  *(v12 + 1) = v14;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher] = v6;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext] = v9;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems] = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  swift_retain_n();
  v15 = v8;
  v16 = v5;
  sub_1B9F87F44(v40, v34);
  sub_1B9F87F44(&v41, v34);
  if (qword_1EBBE8858 != -1)
  {
    swift_once();
  }

  v17 = sub_1BA4A6758();
  if (qword_1EBBE8860 != -1)
  {
    swift_once();
  }

  sub_1B9F2EAC0();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5480;
  v19 = sub_1BA1FAFCC();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1B9F1BE20();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_1BA4A6768();

  v22 = sub_1BA4A6758();

  v33.receiver = v11;
  v33.super_class = v10;
  v23 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_contentLayout_, v17, v22, 0, 3);

  v24 = v23;
  sub_1BA2011C0();
  if (qword_1EBBE8868 != -1)
  {
    swift_once();
  }

  v25 = sub_1BA4A6758();
  v26 = sub_1BA4A6758();

  if (qword_1EBBE8870 != -1)
  {
    swift_once();
  }

  v27 = sub_1BA4A6758();
  v28 = sub_1BA4A6758();

  v29 = [v24 hxui_addCancelButton];

  __swift_destroy_boxed_opaque_existential_1(&v35);
  v30 = [v2 navigationController];
  if (v30)
  {
    v31 = v30;
    [v30 pushViewController:v24 animated:1];
  }
}

uint64_t sub_1BA1FCC80()
{
  sub_1BA204E7C();
  v1 = *(v0 - 8);
  v54 = v0;
  v55 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v53 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1E6969FF0];
  v49 = MEMORY[0x1E69E6720];
  sub_1B9F0A878(0, &qword_1EBBEE5F8, MEMORY[0x1E6969FF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v38 - v4;
  v47 = sub_1BA4A7A58();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA204F38();
  v40 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA205008();
  v46 = v11;
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BA4A7488();
  v52 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v51 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v44 = objc_opt_self();
  v17 = [v44 defaultCenter];
  v18 = sub_1BA1FB0E0();
  v19 = [v18 searchBar];

  v20 = [v19 searchTextField];
  v42 = v16;
  sub_1BA4A7498();

  sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1B9F28F00(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
  sub_1BA4A4FE8();
  sub_1BA4A7A48();
  v21 = [objc_opt_self() mainRunLoop];
  v56 = v21;
  v22 = sub_1BA4A7A38();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_1B9F0ADF8(0, &qword_1EBBEE610);
  sub_1B9F28F00(&qword_1EBBEE618, sub_1BA204F38);
  sub_1BA2050D4();
  v24 = v39;
  v23 = v40;
  sub_1BA4A50C8();
  sub_1B9F0DD40(v5, &qword_1EBBEE5F8, v50, v49, sub_1B9F0A878);

  (*(v45 + 8))(v7, v47);
  (*(v43 + 8))(v10, v23);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v38;
  sub_1B9F28F00(&qword_1EBBEE628, sub_1BA205008);
  v27 = v26;
  v28 = v46;
  sub_1BA4A5148();

  (*(v48 + 8))(v24, v28);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  v29 = [v44 defaultCenter];
  v30 = [*&v27[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController] searchBar];
  v31 = [v30 searchTextField];

  v32 = v51;
  sub_1BA4A7498();

  sub_1B9F0ADF8(0, &unk_1EBBEE5E8);
  v33 = v53;
  v34 = v41;
  sub_1BA4A4FA8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F28F00(&unk_1EBBEE630, sub_1BA204E7C);
  v35 = v54;
  sub_1BA4A5148();

  (*(v55 + 8))(v33, v35);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  v36 = *(v52 + 8);
  v36(v32, v34);
  return (v36)(v42, v34);
}

void sub_1BA1FD514(uint64_t *a1@<X8>)
{
  sub_1BA4A0FF8();
  if (!v8)
  {
    sub_1B9F0DD40(v7, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA2057F0);
    goto LABEL_6;
  }

  sub_1B9F0ADF8(0, &unk_1EBBEE5E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v2 = [v6 text];

  if (v2)
  {
    v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
}

uint64_t sub_1BA1FD62C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable))
  {

    sub_1BA4A4D48();
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v8 = sub_1BA1FB158();
    [v8 setHidden_];

    [*(a2 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView) setHidden_];
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults;
  swift_beginAccess();
  *(a2 + v9) = MEMORY[0x1E69E7CC0];

  sub_1BA1FD738(v5, v6);
}

void sub_1BA1FD738(uint64_t a1, unint64_t a2)
{
  v2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  sub_1BA4A4F38();
  v6 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID;
  if (*&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID])
  {
    [*&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager] cancelTaskWithID_];
    v8 = *&v5[v7];
    *&v5[v7] = 0;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E6996330]) init];
    v11 = sub_1BA4A6AE8();
    [v10 setBundleIdentifiers_];

    [v10 setPredictsBasedOnOutgoingInteraction_];
    v12 = sub_1BA4A6758();
    v13 = [v6 searchForText:v12 withAutocompleteFetchContext:v10 consumer:v5];

    v14 = *&v5[v7];
    *&v5[v7] = v13;
  }

  else
  {
    v15 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController];
    sub_1B9F0ADF8(0, &qword_1EBBE9970);
    v14 = sub_1BA4A6AE8();
    [v15 updateRecipients:v14 disambiguatingRecipient:0];
  }
}

uint64_t sub_1BA1FD918@<X0>(void *a1@<X8>)
{
  sub_1BA4A0FF8();
  if (!v3[3])
  {
    result = sub_1B9F0DD40(v3, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA2057F0);
    goto LABEL_5;
  }

  sub_1B9F0ADF8(0, &unk_1EBBEE5E8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
  }

  return result;
}

void sub_1BA1FD9DC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      if (([v4 isBeingDismissed] & 1) != 0 || (swift_beginAccess(), (v5 = swift_unknownObjectWeakLoadStrong()) == 0))
      {
      }

      else
      {
        v6 = v5;
        v8[3] = sub_1B9F0ADF8(0, &unk_1EBBEE5E8);
        v8[0] = v1;
        v7 = v1;
        sub_1BA1FC5C4();

        __swift_destroy_boxed_opaque_existential_1(v8);
      }
    }
  }
}

id sub_1BA1FDAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingContactPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingOnboardingContactPickerViewController()
{
  result = qword_1EBBEE4D0;
  if (!qword_1EBBEE4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1FDD1C()
{
  sub_1BA2057F0(319, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA1FDE34(uint64_t a1, char *a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);

    v18 = v17;
    sub_1BA20379C(v15, v16, v18, a2);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v19 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController];
      [v19 invalidatePreferredRecipients];
      [v19 invalidateAddressTintColors];
      swift_getKeyPath();
      swift_getKeyPath();
      v20 = a2;
      return sub_1BA4A4F38();
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1BA1FE078(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v93 = sub_1BA4A3EA8();
  v3 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_74:
    v6 = sub_1BA4A7CC8();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = sub_1BA1FB158();
  v8 = v7;
  if (!v6)
  {
    [v7 setHidden_];

    v68 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView);

    [v68 setHidden_];
    return;
  }

  v99 = v3;
  v94 = v5;
  [v7 setHidden_];

  v87 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView) setHidden_];
  v5 = 0;
  v88 = v1;
  v100 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_meContactIdentifier);
  v101 = a1 & 0xC000000000000001;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v101)
    {
      v11 = MEMORY[0x1BFAF2860](v5, a1);
    }

    else
    {
      if (v5 >= *(v9 + 16))
      {
        goto LABEL_69;
      }

      v11 = *(a1 + 8 * v5 + 32);
    }

    v12 = v11;
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v14 = [v11 contact];
    if (!v14)
    {
      goto LABEL_6;
    }

    v1 = v14;
    v15 = v6;
    v16 = a1;
    v17 = [v14 identifier];
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v3 = v19;

    v20 = v100[1];
    if (!v20)
    {

      a1 = v16;
      v6 = v15;
LABEL_6:
      v1 = aBlock;
      sub_1BA4A7ED8();
      v3 = *(aBlock[0] + 16);
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      goto LABEL_7;
    }

    v21 = v18 == *v100 && v20 == v3;
    a1 = v16;
    if (v21)
    {

      v6 = v15;
    }

    else
    {
      v22 = sub_1BA4A8338();

      v6 = v15;
      if ((v22 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    ++v5;
  }

  while (v13 != v6);
  v23 = aBlock[0];
  v103 = MEMORY[0x1E69E7CC0];
  if (aBlock[0] < 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    v3 = sub_1BA4A7CC8();
    v24 = v94;
    if (!v3)
    {
      goto LABEL_76;
    }

LABEL_25:
    v25 = 0;
    v97 = v23 & 0xC000000000000001;
    v91 = (v99 + 8);
    v92 = v23 + 32;
    *&v10 = 136315394;
    v89 = v10;
    v95 = v3;
    v96 = v23;
    while (1)
    {
      while (1)
      {
        if (v97)
        {
          v26 = MEMORY[0x1BFAF2860](v25, v23);
        }

        else
        {
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_73;
          }

          v26 = *(v92 + 8 * v25);
        }

        v27 = v26;
        if (__OFADD__(v25++, 1))
        {
          goto LABEL_70;
        }

        v29 = [v26 contact];
        if (v29)
        {
          break;
        }

        sub_1BA4A3E28();
        v43 = v27;
        v1 = v24;
        v44 = sub_1BA4A3E88();
        v5 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v44, v5))
        {
          v1 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          aBlock[0] = v46;
          *v1 = v89;
          v47 = sub_1BA4A85D8();
          a1 = sub_1B9F0B82C(v47, v48, aBlock);

          *(v1 + 4) = a1;
          *(v1 + 6) = 2112;
          *(v1 + 14) = v43;
          *v45 = v43;
          v49 = v43;
          _os_log_impl(&dword_1B9F07000, v44, v5, "%s Unable to get contact from recipient: %@.", v1, 0x16u);
          sub_1B9F8C6C8(v45);
          v50 = v45;
          v23 = v96;
          MEMORY[0x1BFAF43A0](v50, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v46);
          v51 = v46;
          v3 = v95;
          MEMORY[0x1BFAF43A0](v51, -1, -1);
          MEMORY[0x1BFAF43A0](v1, -1, -1);
        }

        else
        {
        }

        (*v91)(v24, v93);
        if (v25 == v3)
        {
          goto LABEL_76;
        }
      }

      v5 = v29;
      v30 = [v29 emailAddresses];
      v31 = sub_1B9F0ADF8(0, &unk_1EBBEE300);
      v32 = sub_1BA4A6B08();

      if (v32 >> 62)
      {
        v3 = sub_1BA4A7CC8();
      }

      else
      {
        v3 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v98 = v27;
      v99 = v25;
      v100 = v5;
      if (v3)
      {
        aBlock[0] = MEMORY[0x1E69E7CC0];
        v1 = aBlock;
        sub_1B9F1C360(0, v3 & ~(v3 >> 63), 0);
        if (v3 < 0)
        {
          goto LABEL_71;
        }

        v101 = v31;
        v33 = 0;
        v34 = aBlock[0];
        do
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1BFAF2860](v33, v32);
          }

          else
          {
            v35 = *(v32 + 8 * v33 + 32);
          }

          v36 = v35;
          v37 = [v35 value];
          v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v40 = v39;

          aBlock[0] = v34;
          v5 = *(v34 + 16);
          v41 = *(v34 + 24);
          a1 = v5 + 1;
          if (v5 >= v41 >> 1)
          {
            sub_1B9F1C360((v41 > 1), v5 + 1, 1);
            v34 = aBlock[0];
          }

          ++v33;
          *(v34 + 16) = a1;
          v42 = v34 + 16 * v5;
          *(v42 + 32) = v38;
          *(v42 + 40) = v40;
        }

        while (v3 != v33);

        v25 = v99;
      }

      else
      {

        v34 = MEMORY[0x1E69E7CC0];
      }

      v52 = [v100 phoneNumbers];
      v53 = sub_1BA4A6B08();

      if (v53 >> 62)
      {
        v54 = sub_1BA4A7CC8();
        if (!v54)
        {
LABEL_64:

          v57 = MEMORY[0x1E69E7CC0];
          goto LABEL_26;
        }
      }

      else
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v54)
        {
          goto LABEL_64;
        }
      }

      v55 = v53;
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v1 = aBlock;
      sub_1B9F1C360(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
        goto LABEL_72;
      }

      v56 = 0;
      v57 = aBlock[0];
      v58 = v55;
      v101 = v55 & 0xC000000000000001;
      do
      {
        if (v101)
        {
          v59 = MEMORY[0x1BFAF2860](v56, v58);
        }

        else
        {
          v59 = *(v58 + 8 * v56 + 32);
        }

        v60 = v59;
        v61 = [v59 value];
        v62 = [v61 stringValue];

        v63 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v65 = v64;

        aBlock[0] = v57;
        v5 = *(v57 + 16);
        v66 = *(v57 + 24);
        a1 = v5 + 1;
        if (v5 >= v66 >> 1)
        {
          sub_1B9F1C360((v66 > 1), v5 + 1, 1);
          v57 = aBlock[0];
        }

        ++v56;
        *(v57 + 16) = a1;
        v67 = v57 + 16 * v5;
        *(v67 + 32) = v63;
        *(v67 + 40) = v65;
        v58 = v55;
      }

      while (v54 != v56);

      v25 = v99;
LABEL_26:
      v1 = &v103;
      sub_1B9FE271C(v34);
      sub_1B9FE271C(v57);

      v24 = v94;
      v3 = v95;
      v23 = v96;
      if (v25 == v95)
      {
        goto LABEL_76;
      }
    }
  }

  v3 = *(aBlock[0] + 16);
  v24 = v94;
  if (v3)
  {
    goto LABEL_25;
  }

LABEL_76:
  v69 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults;
  v70 = v88;
  swift_beginAccess();
  v71 = *(v70 + v69);
  if (v71 >> 62)
  {
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_80;
    }

LABEL_78:
    v72 = v88;
    swift_beginAccess();

    sub_1B9FE2934(v73);
    swift_endAccess();
  }

  else
  {
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_78;
    }

LABEL_80:
    v72 = v88;
    *(v88 + v69) = v23;
  }

  v74 = *(v72 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController);
  sub_1B9F0ADF8(0, &qword_1EBBE9970);

  v75 = sub_1BA4A6AE8();

  [v74 setRecipients_];

  v76 = [v74 tableView];
  if (v76)
  {
    v77 = v76;

    v78 = *(v72 + v87);
    *(v72 + v87) = v77;

    v79 = *(v72 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_sharingEntryStore);
    v80 = sub_1BA4A6AE8();

    v81 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery;
    v82 = *(v72 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery);
    v83 = swift_allocObject();
    v84 = ObjectType;
    *(v83 + 16) = v72;
    *(v83 + 24) = v84;
    aBlock[4] = sub_1BA204E04;
    aBlock[5] = v83;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA454240;
    aBlock[3] = &block_descriptor_73;
    v85 = _Block_copy(aBlock);
    v86 = v72;

    [v79 beginObservingReachabilityStatusForIdentifiers:v80 isInitialQuery:v82 completion:v85];
    _Block_release(v85);

    *(v72 + v81) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA1FEBFC(char a1, void *a2, void *a3, uint64_t a4)
{
  v61 = a4;
  v62 = a3;
  v6 = sub_1BA4A6478();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  if (a1)
  {
    sub_1BA4A3E28();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = sub_1BA4A85D8();
      v60 = v12;
      v28 = sub_1B9F0B82C(v26, v27, aBlock);
      v61 = v6;
      v29 = v13;
      v30 = v28;

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1B9F07000, v22, v23, "%s Successfully started reachability query for contacts", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v29 + 8))(v21, v60);
      v6 = v61;
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v45 = sub_1BA4A7308();
    v46 = swift_allocObject();
    v47 = v62;
    *(v46 + 16) = v62;
    aBlock[4] = sub_1BA204E0C;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_79;
    v48 = _Block_copy(aBlock);
    v49 = v47;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v11, v8, v48);
    _Block_release(v48);

    (*(v65 + 8))(v8, v6);
    return (*(v63 + 8))(v11, v64);
  }

  else if (a2)
  {
    v31 = v13;
    v32 = a2;
    sub_1BA4A3E28();
    v33 = a2;
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315394;
      v38 = sub_1BA4A85D8();
      v40 = sub_1B9F0B82C(v38, v39, aBlock);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      aBlock[6] = a2;
      v41 = a2;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v42 = sub_1BA4A6828();
      v44 = sub_1B9F0B82C(v42, v43, aBlock);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_1B9F07000, v34, v35, "%s Could not fetch reachable contacts with error: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    else
    {
    }

    return (*(v31 + 8))(v18, v12);
  }

  else
  {
    sub_1BA4A3E28();
    v51 = sub_1BA4A3E88();
    v52 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v13;
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v53 = 136315138;
      v56 = sub_1BA4A85D8();
      v58 = sub_1B9F0B82C(v56, v57, aBlock);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_1B9F07000, v51, v52, "%s Could not fetch reachable contacts.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      MEMORY[0x1BFAF43A0](v53, -1, -1);

      return (*(v54 + 8))(v15, v12);
    }

    else
    {

      return (*(v13 + 8))(v15, v12);
    }
  }
}

void sub_1BA1FF364()
{
  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController);
    sub_1B9F0ADF8(0, &qword_1EBBE9970);
    v2 = sub_1BA4A6AE8();
    [v1 updateRecipients:v2 disambiguatingRecipient:0];

    v3 = sub_1BA1FB158();
    [v3 setHidden_];

    [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView) setHidden_];
  }

  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID) = 0;
}

uint64_t sub_1BA1FF488(void *a1)
{
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  swift_beginAccess();

  v13 = sub_1BA201EC4(v12);

  v14 = [a1 normalizedAddress];
  if (!v14)
  {
    sub_1BA4A3E28();
    v38 = a1;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = v2;
      v43 = v42;
      v44 = swift_slowAlloc();
      v54 = v13;
      v55[0] = v44;
      v45 = v3;
      v46 = v44;
      *v41 = 136315394;
      v47 = sub_1BA4A85D8();
      v49 = sub_1B9F0B82C(v47, v48, v55);

      *(v41 + 4) = v49;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v38;
      *v43 = v38;
      v50 = v38;
      _os_log_impl(&dword_1B9F07000, v39, v40, "%s Recipient address is nil: %@", v41, 0x16u);
      sub_1B9F8C6C8(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);

      (*(v45 + 8))(v5, v53);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }

  v54 = v3;
  v15 = v14;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v16 = sub_1BA4A6818();
  v18 = v17;

  if (!v13[2] || (sub_1B9F24A34(v16, v18), (v19 & 1) == 0))
  {
    sub_1BA4A3E28();

    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53 = v2;
      v33 = v32;
      v55[0] = v32;
      *v31 = 136315394;
      v34 = sub_1BA4A85D8();
      v36 = sub_1B9F0B82C(v34, v35, v55);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      v37 = sub_1B9F0B82C(v16, v18, v55);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v29, v30, "%s Recipient with address: %s is not reachable", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);

      (v54[1])(v8, v53);
    }

    else
    {

      (v54[1])(v8, v2);
    }

    return 0;
  }

  sub_1BA4A3E28();

  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v55[0] = v23;
    *v22 = 136315394;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, v55);
    v53 = v2;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = sub_1B9F0B82C(v16, v18, v55);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1B9F07000, v20, v21, "%s Recipient with address: %s is reachable", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);

    (v54[1])(v11, v53);
  }

  else
  {

    (v54[1])(v11, v2);
  }

  return 1;
}

id sub_1BA1FFBBC(void *a1)
{
  v2 = sub_1BA4A6478();
  v49 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 contact];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  if (![a1 kind])
  {
    v19 = [a1 address];
    if (v19)
    {
      v20 = v19;
      v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v18 = v21;
    }

    else
    {
      v44 = 0;
      v18 = 0;
    }

    v30 = [a1 address];
    if (!v30)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ([a1 kind] == 1)
  {
    v15 = [a1 normalizedAddress];
    if (v15)
    {
      v16 = v15;
      v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v18 = v17;
    }

    else
    {
      v44 = 0;
      v18 = 0;
    }

    v30 = [a1 address];
    if (!v30)
    {
LABEL_17:
      v45 = v2;
      v31 = v14;
      v33 = 0;
      v35 = 0;
      goto LABEL_18;
    }

LABEL_14:
    v45 = v2;
    v31 = v14;
    v32 = v30;
    v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v35 = v34;

LABEL_18:
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);

    v36 = sub_1BA4A7308();
    v37 = swift_allocObject();
    v38 = v46;
    v37[2] = v46;
    v37[3] = v31;
    v37[4] = v44;
    v37[5] = v18;
    v37[6] = v33;
    v37[7] = v35;
    aBlock[4] = sub_1BA204D70;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_58;
    v39 = _Block_copy(aBlock);
    v40 = v38;
    v41 = v31;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    v42 = v45;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v7, v4, v39);
    _Block_release(v39);

    (*(v49 + 8))(v4, v42);
    return (*(v47 + 8))(v7, v48);
  }

  sub_1BA4A3E28();
  v22 = a1;
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136642819;
    aBlock[6] = [v22 contact];
    sub_1B9F6A85C(0, &qword_1EBBEE5C0, &qword_1EBBEE5C8, 0x1E695CD58, sub_1B9F0ADF8);
    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, aBlock);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1B9F07000, v23, v24, "%{sensitive}s Selected contact address was not of kind iCloud or phone number.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v12, v8);
}

id sub_1BA2001E8(void *a1, void *a2)
{
  v4 = type metadata accessor for SummarySharingOnboardingError();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a2 contact];
  if (result)
  {
    v9 = result;

    sub_1B9FF0EE8();

    *v7 = sub_1BA4A7A08();
    v7[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_1BA0C6BA4(a1, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);

    return sub_1BA1F149C(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA200304(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a4;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A6478();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A64C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >= 2u)
  {
    v32 = v15;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      if (sub_1BA1FF488(a3))
      {
        sub_1BA1FFBBC(a3);
      }

      else
      {
        sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
        v27 = sub_1BA4A7308();
        v28 = swift_allocObject();
        v28[2] = a3;
        v28[3] = v19;
        v28[4] = v34;
        aBlock[4] = sub_1BA204DE4;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B9F0B040;
        aBlock[3] = &block_descriptor_64;
        v29 = _Block_copy(aBlock);
        v30 = a3;
        v31 = v19;

        sub_1BA4A64A8();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
        sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1B9F31534();
        sub_1BA4A7C38();
        MEMORY[0x1BFAF1D50](0, v17, v12, v29);
        _Block_release(v29);

        (*(v33 + 8))(v12, v10);
        (*(v14 + 8))(v17, v32);
      }
    }

    else
    {
      sub_1BA4A3E28();
      v20 = sub_1BA4A3E88();
      v21 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock[0] = v23;
        *v22 = 136315138;
        v24 = sub_1BA4A85D8();
        v26 = sub_1B9F0B82C(v24, v25, aBlock);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_1B9F07000, v20, v21, "%s Self was nil.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1BFAF43A0](v23, -1, -1);
        MEMORY[0x1BFAF43A0](v22, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

id sub_1BA2007C8(void *a1, void *a2)
{
  v4 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v11 = a1;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v32 = v7;
    v33 = v4;
    v34 = a2;
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v14 = 136315394;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v37);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = [v11 normalizedAddress];
    if (v18)
    {
      v19 = v18;
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v35 = v20;
    v36 = v22;
    sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v23 = sub_1BA4A6808();
    v25 = sub_1B9F0B82C(v23, v24, &v37);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] %s was not reachable. Returning error.", v14, 0x16u);
    v26 = v31;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    (*(v8 + 8))(v10, v32);
    a2 = v34;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  result = [v11 contact];
  if (result)
  {
    v28 = result;

    sub_1B9FF0EE8();

    *v6 = sub_1BA4A7A08();
    v6[1] = v29;
    swift_storeEnumTagMultiPayload();
    sub_1BA0C6BA4(a2, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);

    return sub_1BA1F149C(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA200BE0()
{
  result = qword_1EBBEE5A8;
  if (!qword_1EBBEE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE5A8);
  }

  return result;
}

uint64_t sub_1BA200C34(uint64_t a1, __int128 *a2)
{
  sub_1BA1FC780(a2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults;
  swift_beginAccess();
  *(a1 + v3) = MEMORY[0x1E69E7CC0];

  if (*(a1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable))
  {

    sub_1BA4A4D48();
  }

  return result;
}

uint64_t sub_1BA200CB8()
{
  sub_1BA20514C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2051D0();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2052BC();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  v31 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher];
  v12 = qword_1EDC5E100;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDC84A30;
  v14 = sub_1BA4A6758();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v13];

  v30 = v15;
  sub_1B9F6A85C(0, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
  sub_1BA4A4E78();
  sub_1BA1107A8();
  sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8);
  sub_1B9F28F00(&qword_1EDC5F430, sub_1BA20514C);
  sub_1BA4A4FC8();
  (*(v3 + 8))(v5, v2);

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4C69C0;
  *(v16 + 32) = 0x4054000000000000;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1BA205858;
  *(v17 + 24) = v16;
  sub_1B9F28F00(&qword_1EBBEE668, sub_1BA2051D0);
  v18 = v26;
  sub_1BA4A4FE8();

  (*(v25 + 8))(v8, v18);
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = v29;
  sub_1B9F28F00(&unk_1EBBEE670, sub_1BA2052BC);
  v21 = v20;
  v22 = v28;
  sub_1BA4A4F88();

  return (*(v27 + 8))(v11, v22);
}