unint64_t sub_1BA0D69C0()
{
  result = qword_1EBBEBB48;
  if (!qword_1EBBEBB48)
  {
    sub_1BA0D5884(255, &qword_1EBBEBA00, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578]);
    sub_1BA0D6A80();
    sub_1B9F87828(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB48);
  }

  return result;
}

unint64_t sub_1BA0D6A80()
{
  result = qword_1EDC5F178;
  if (!qword_1EDC5F178)
  {
    sub_1BA0D5A80(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F178);
  }

  return result;
}

uint64_t sub_1BA0D6B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA0D6B84(uint64_t a1, uint64_t a2)
{
  sub_1BA0D6E7C(0, &qword_1EBBEB9E0, sub_1BA0D4A4C, MEMORY[0x1E697CBE8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA0D6C54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F20854(a4, a5);
    v8 = sub_1BA4A6268();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA0D6CE8()
{
  result = qword_1EBBEBB68;
  if (!qword_1EBBEBB68)
  {
    sub_1BA0D49E0(255, &qword_1EBBEBB70, &qword_1EBBEBB00, sub_1BA0D5F34);
    sub_1BA0D6DB8(&qword_1EBBEBB78, &qword_1EBBEBB00, sub_1BA0D5F34, sub_1BA0D6108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB68);
  }

  return result;
}

uint64_t sub_1BA0D6DB8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA0D6E7C(255, a2, a3, MEMORY[0x1E697CBE8]);
    a4();
    sub_1B9F20854(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA0D6E7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA0D6EF8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = qword_1EBC094D8;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA0D6F64@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBC094D8;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA0D6FBC(__int128 *a1)
{
  v3 = qword_1EBC094D8;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t PinnedPinnableFeedItemsDataSource.__allocating_init(pinnedContentManager:sourceProfiles:managedObjectContext:searchQuery:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA0D881C(a1, a2, a3, a4);

  return v8;
}

uint64_t PinnedPinnableFeedItemsDataSource.init(pinnedContentManager:sourceProfiles:managedObjectContext:searchQuery:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = sub_1BA0D881C(a1, a2, a3, a4);

  return v4;
}

double sub_1BA0D712C@<D0>(uint64_t *a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1BA4A1318();
  v6 = v5;

  a1[3] = &type metadata for HeaderWithIconItem;
  a1[4] = sub_1B9FE8F38();
  v7 = swift_allocObject();
  *a1 = v7;
  *(v7 + 16) = 0xD000000000000024;
  *(v7 + 24) = 0x80000001BA4EA100;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  result = 0.0;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  return result;
}

uint64_t sub_1BA0D72AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EBC094D8);
}

uint64_t PinnedPinnableFeedItemsDataSource.deinit()
{
  v0 = FavoritableFeedItemsDataSource.deinit();
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EBC094D8);

  return v0;
}

uint64_t PinnedPinnableFeedItemsDataSource.__deallocating_deinit()
{
  FavoritableFeedItemsDataSource.deinit();
  v0 = qword_1EBC094D8;

  __swift_destroy_boxed_opaque_existential_1(v1 + v0);

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall PinnedPinnableFeedItemsDataSource.getPinnedIdentifier(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  sub_1B9F3AB98(countAndFlagsBits, object, &v53);
  if (!*(&v54 + 1))
  {
    sub_1B9FCD638(&v53);
LABEL_14:
    v16 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  sub_1B9F1134C(&v53, v59);
  sub_1B9F0A534(v59, v52);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  if (!swift_dynamicCast())
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    sub_1BA0D8B74(&v46);
    sub_1BA4A3D68();
    sub_1B9F0A534(v59, &v53);
    sub_1B9F0A534(v59, &v46);
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v19 = 136315650;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, &v45);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
      v52[0] = swift_getDynamicType();
      v52[1] = v55;
      sub_1BA051D44();
      v23 = sub_1BA4A6808();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v53);
      v26 = sub_1B9F0B82C(v23, v25, &v45);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2080;
      sub_1B9F0A534(&v46, v52);
      v27 = sub_1BA4A6808();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v46);
      v30 = sub_1B9F0B82C(v27, v29, &v45);

      *(v19 + 24) = v30;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: Expected FavoritableFeedItem but got %s. Item: %s", v19, 0x20u);
      v31 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v46);
      __swift_destroy_boxed_opaque_existential_1(&v53);
    }

    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v59);
    goto LABEL_14;
  }

  v55 = v48;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v53 = v46;
  v54 = v47;
  v10 = [*(&v48 + 1) pinnedContentIdentifier];
  if (!v10)
  {
    sub_1BA4A3D68();
    sub_1B9F0A534(v59, &v46);
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v34 = 136315394;
      v35 = sub_1BA4A85D8();
      v37 = sub_1B9F0B82C(v35, v36, &v45);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      sub_1B9F0A534(&v46, v52);
      v38 = sub_1BA4A6808();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_1(&v46);
      v41 = sub_1B9F0B82C(v38, v40, &v45);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s]: Unable to get pinned content identifier from FavoritableFeedItem's underlying FeedItem. Item: %s", v34, 0x16u);
      v42 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v46);
    }

    (*(v4 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_1(v59);
    sub_1BA0D8BF4(&v53);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_1BA0D8BF4(&v53);
  v15 = v14;
  v16 = v12;
LABEL_15:
  result.value._object = v15;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1BA0D795C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EBC094D8;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a1);
}

uint64_t sub_1BA0D79B8(__int128 *a1)
{
  v3 = *v1;
  v4 = qword_1EBC094D8;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t PinnableSearchQuery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1BA0D7B3C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v4 setSearchResultsUpdater_];
    [v4 setHidesNavigationBarDuringPresentation_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA0D7BDC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = a1;
}

void (*sub_1BA0D7BF0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA0D7B3C();
  return sub_1BA0D7C38;
}

void sub_1BA0D7C38(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = v2;
}

char *EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = 0;
  type metadata accessor for PinnableSearchQuery();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_searchQuery;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_searchQuery) = v8;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v10 = sub_1BA4A1B68();
  sub_1B9F0A534(a1, v23);
  v11 = *(v4 + v9);
  type metadata accessor for PinnedPinnableFeedItemsDataSource();
  swift_allocObject();

  v12 = v10;

  v13 = sub_1BA0D881C(v23, a2, v12, v11);

  v14 = OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_pinnedItemsDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_pinnedItemsDataSource) = v13;
  sub_1B9F0A534(a1, v23);
  v15 = *(v4 + v9);
  type metadata accessor for FavoritableFeedItemsDataSource();
  swift_allocObject();
  v16 = v12;

  v17 = sub_1BA15B73C(a2, v16, v23, &unk_1F37FC6E8, v15, 1);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_otherItemsDataSource) = v17;
  sub_1B9F1DEA0();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5460;
  *(v18 + 32) = *(v4 + v14);
  *(v18 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v18 + 48) = v17;
  *(v18 + 56) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  v19 = CompoundSectionedDataSource.init(_:)(v18);
  v20 = CompoundDataSourceCollectionViewController.init(dataSource:)(v19);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  v20[v21] = 0;
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v20;
}

id EditFavoritesCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EditFavoritesCollectionViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA0D7FEC()
{
  swift_getObjectType();
  v20.receiver = v0;
  v20.super_class = type metadata accessor for EditFavoritesCollectionViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1BA4A1318();

  v3 = sub_1BA4A6758();

  [v0 setTitle_];

  v4 = [v0 collectionView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_1BA4A6758();
  [v5 setAccessibilityIdentifier_];

  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 setKeyboardDismissMode_];

  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BA4A6AE8();
    v15 = HKUIJoinStringsForAutomationIdentifier();

    [v13 setAccessibilityIdentifier_];
    v16 = [v0 navigationItem];
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped];
    [v16 setRightBarButtonItem_];

    v18 = [v0 navigationItem];
    v19 = sub_1BA0D7B3C();
    [v18 setSearchController_];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1BA0D83F4(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_searchQuery);
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (v5)
  {
    v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v3 + 16) = v6;
  *(v3 + 24) = v8;

  v9 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_pinnedItemsDataSource);
  v10 = *(v9 + *(*v9 + 520));
  v11 = *(v9 + qword_1EDC64EB0);
  v12 = *(v9 + qword_1EDC64EB0 + 8);
  v13 = *(v9 + qword_1EDC64EB0 + 16);
  v14 = *(v9 + qword_1EDC84BB8);
  v15 = sub_1B9F17C00(v14, v10, v11, v12, v13);

  sub_1BA0E7F10(v15, 1);

  v16 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController_otherItemsDataSource);
  v17 = *(v16 + qword_1EDC84BB8);
  LOBYTE(v15) = *(v16 + *(*v16 + 520));
  v18 = *(v16 + qword_1EDC64EB0);
  v19 = *(v16 + qword_1EDC64EB0 + 8);
  v20 = *(v16 + qword_1EDC64EB0 + 16);
  v21 = swift_unknownObjectRetain();
  v22 = sub_1B9F17C00(v21, v15, v18, v19, v20);

  sub_1BA0E7F10(v22, 1);
}

id EditFavoritesCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA0D86E0()
{
}

id EditFavoritesCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditFavoritesCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s18HealthExperienceUI33PinnedPinnableFeedItemsDataSourceC17isReorderableItem10identifierSbSS_tF_0()
{
  v1 = *(v0 + qword_1EBC094E0);
  v2 = *(v1 + 24);
  result = 1;
  if (v2)
  {
    v3 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA0D881C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v27 = *v4;
  *(v4 + qword_1EBC094E0) = a4;
  sub_1B9F0A534(a1, v4 + qword_1EBC094D8);
  sub_1B9F0A534(a1, v29);
  *(v4 + qword_1EBC095A0) = a2;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);

  sub_1BA4A2388();
  v9 = sub_1BA4A2578();

  v10 = v9;
  v11 = sub_1BA4A26C8();

  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithKey:v14 ascending:1];

  *(v12 + 32) = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithKey:v17 ascending:1 selector:sel_localizedStandardCompare_];

  *(v12 + 40) = v18;
  sub_1BA0A361C();
  v19 = sub_1BA4A6AE8();

  [v11 setSortDescriptors_];

  v20 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v11 managedObjectContext:a3 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0();
  objc_allocWithZone(v21);
  v22 = v20;
  v23 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v22);
  sub_1B9F0A534(v29, v28);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  sub_1B9F1134C(v28, v24 + 24);
  *(v24 + 64) = v27;

  v25 = sub_1B9F17A68(v23, sub_1BA0D8EF8, v24, 0);

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v25;
}

uint64_t sub_1BA0D8B74(uint64_t a1)
{
  sub_1B9F23348(0, &qword_1EBBEBB88, &type metadata for FavoritableFeedItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PinnedPinnableFeedItemsDataSource()
{
  result = qword_1EBBEBBC0;
  if (!qword_1EBBEBBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PDFCharacteristicsProvider.Content.init(name:dateOfBirth:exportedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for PDFCharacteristicsProvider.Content();
  sub_1BA0D9010(a3, &a5[*(v8 + 20)]);
  v9 = *(v8 + 24);
  v10 = sub_1BA4A1728();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

uint64_t type metadata accessor for PDFCharacteristicsProvider.Content()
{
  result = qword_1EBBEBC40;
  if (!qword_1EBBEBC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0D9010(uint64_t a1, uint64_t a2)
{
  sub_1BA0DA5D4(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PDFCharacteristicsProvider.Content.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDFCharacteristicsProvider.Content.dateOfBirth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFCharacteristicsProvider.Content() + 20);

  return sub_1BA018958(v3, a1);
}

uint64_t PDFCharacteristicsProvider.Content.exportedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFCharacteristicsProvider.Content() + 24);
  v4 = sub_1BA4A1728();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFCharacteristicsProvider.__allocating_init(healthStore:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PDFCharacteristicsProvider.init(healthStore:dateGenerator:)(a1, a2, a3);
  return v6;
}

uint64_t *PDFCharacteristicsProvider.init(healthStore:dateGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  swift_defaultActor_initialize();
  sub_1BA0DA5D4(0, &qword_1EBBEBC38, type metadata accessor for PDFCharacteristicsProvider.Content, MEMORY[0x1E69A3170]);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v8;
  v4[14] = sub_1BA4A28C8();
  return v4;
}

uint64_t sub_1BA0D92D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BA0C2E3C;

  return sub_1BA0D945C(a1, a2, a3, a4);
}

uint64_t sub_1BA0D939C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA0D92D8(a1, v4, v5, v6);
}

uint64_t sub_1BA0D945C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = sub_1BA4A13E8();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = sub_1BA4A1728();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA0D9580, 0, 0);
}

uint64_t sub_1BA0D9580()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1BA0D96C8;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_1BA0DA580;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BA0B06D4;
  v1[13] = &block_descriptor_22;
  v9 = _Block_copy(v4);

  [v6 hk:v9 fetchExistingDemographicInformationWithCompletion:?];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BA0D96C8()
{
  *(*v0 + 224) = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BA0D97C4, 0, 0);
}

uint64_t sub_1BA0D97C4()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  (*(v0 + 152))();
  sub_1BA4A13D8();
  v5 = [v1 firstName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A1388();
  v6 = [v1 lastName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A13A8();
  v7 = objc_opt_self();
  v8 = sub_1BA4A13B8();
  v9 = [v7 localizedStringFromPersonNameComponents:v8 style:2 options:0];

  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  (*(v3 + 8))(v2, v4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    v10 = 0;
    v12 = 0;
  }

  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 136);
  v19 = type metadata accessor for PDFCharacteristicsProvider.Content();
  sub_1BA0D9B9C(v14, v18 + *(v19 + 20));

  *v18 = v10;
  v18[1] = v12;
  (*(v17 + 32))(v18 + *(v19 + 24), v15, v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1BA0D99D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA0D99F8, v1, 0);
}

uint64_t sub_1BA0D99F8()
{
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1BA0D9AA8;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1BA0D9AA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA0D9B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DA5D4(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_1BA4A1148();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = [a1 dateOfBirthComponents];
  sub_1BA4A1108();

  v21 = [a1 dateOfBirthComponents];
  sub_1BA4A1108();

  sub_1BA4A1128();
  v22 = *(v10 + 8);
  v22(v15, v9);
  v23 = sub_1BA4A1728();
  LODWORD(v15) = (*(*(v23 - 8) + 48))(v8, 1, v23);
  sub_1BA05DB44(v8);
  if (v15 == 1)
  {
    v45 = v22;
    sub_1BA4A3DD8();
    v24 = a1;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v44 = a2;
      v28 = v27;
      v43 = swift_slowAlloc();
      v50 = v43;
      *v28 = 136446722;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v50);
      LODWORD(v46) = v26;
      v32 = v31;

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4EA4D0, &v50);
      *(v28 + 22) = 2080;
      v33 = [v24 dateOfBirthComponents];
      sub_1BA4A1108();

      sub_1BA0DA638();
      v34 = sub_1BA4A82D8();
      v36 = v35;
      v37 = v45;
      v45(v12, v9);
      v38 = sub_1B9F0B82C(v34, v36, &v50);

      *(v28 + 24) = v38;
      _os_log_impl(&dword_1B9F07000, v25, v46, "[%{public}s.%{public}s]: Unable to create date from birth day components: %s", v28, 0x20u);
      v39 = v43;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v40 = v28;
      a2 = v44;
      MEMORY[0x1BFAF43A0](v40, -1, -1);

      (*(v47 + 8))(v49, v48);
      v37(v19, v9);
    }

    else
    {

      (*(v47 + 8))(v49, v48);
      v45(v19, v9);
    }

    v41 = 1;
  }

  else
  {
    (*(v10 + 32))(a2, v19, v9);
    v41 = 0;
  }

  return (*(v10 + 56))(a2, v41, 1, v9);
}

uint64_t PDFCharacteristicsProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PDFCharacteristicsProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BA0DA11C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BA0DA13C, v3, 0);
}

uint64_t sub_1BA0DA13C()
{
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1BA0DA690;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t dispatch thunk of PDFCharacteristicsProviding.fetchContent()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C36D8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PDFCharacteristicsProvider.fetchContent()(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0C36D8;

  return v6(a1);
}

void sub_1BA0DA4B4()
{
  sub_1B9F2F388();
  if (v0 <= 0x3F)
  {
    sub_1BA0DA5D4(319, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BA4A1728();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA0DA580(void *a1)
{
  v2 = *(v1 + 16);
  **(*(v2 + 64) + 40) = a1;
  v3 = a1;

  return MEMORY[0x1EEE6DEE0](v2);
}

void sub_1BA0DA5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA0DA638()
{
  result = qword_1EBBEBC50;
  if (!qword_1EBBEBC50)
  {
    sub_1BA4A1148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBC50);
  }

  return result;
}

id sub_1BA0DA694()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1BA0DA760()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BA0DA918()
{
  v1 = sub_1BA0DA760();
  [v0 addSubview_];

  v2 = sub_1BA0DA694();
  [v0 addSubview_];

  v3 = objc_opt_self();
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4BBC90;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView;
  v6 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v0[v5] trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v4 + 40) = v11;
  v12 = [*&v0[v5] topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v4 + 48) = v14;
  v15 = [*&v0[v5] bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v4 + 56) = v17;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner;
  v19 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner] centerXAnchor];
  v20 = [v0 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v4 + 64) = v21;
  v22 = [*&v0[v18] centerYAnchor];
  v23 = [v0 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v4 + 72) = v24;
  v25 = [*&v0[v18] widthAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v4 + 80) = v26;
  v27 = [*&v0[v18] heightAnchor];
  v28 = [v27 constraintEqualToConstant_];

  *(v4 + 88) = v28;
  sub_1B9F740B0();
  v29 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

id CameraScannerLoadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CameraScannerLoadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerLoadingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ContextMenuConfigurationProviding<>.contextMenuConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v7, a1, a3);
  if (v7[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBE9910);
    if (swift_dynamicCast())
    {
      v3 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v4 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&v8);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1B9F43A50(&v8, &qword_1EBBE9908, &qword_1EBBE9910);
  return 0;
}

uint64_t sub_1BA0DAFB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v145 = a2;
  v139 = sub_1BA4A2BF8();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v140 = &v134 - v7;
  v149 = sub_1BA4A31D8();
  v147 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1BA4A3198();
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v144 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DCF4C();
  v153 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1BA4A31C8();
  v143 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v141 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v134 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v142 = &v134 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v134 - v18;
  v19 = sub_1BA4A31F8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DCFBC();
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0DCC20();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v157 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v134 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v134 - v33;
  v35 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_previousConfiguration;
  v160 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_previousConfiguration;
  swift_beginAccess();
  v159 = a1;
  sub_1BA0DD020(a1, v34, MEMORY[0x1E69A33E8]);
  v155 = *(v20 + 56);
  v156 = v20 + 56;
  v155(v34, 0, 1, v19);
  v36 = *(v24 + 56);
  v158 = v3;
  sub_1BA0DD020(&v3[v35], v26, sub_1BA0DCC20);
  sub_1BA0DD020(v34, &v26[v36], sub_1BA0DCC20);
  v37 = *(v20 + 48);
  if (v37(v26, 1, v19) == 1)
  {
    sub_1BA0DD26C(v34, sub_1BA0DCC20);
    if (v37(&v26[v36], 1, v19) == 1)
    {
      return sub_1BA0DD26C(v26, sub_1BA0DCC20);
    }

    goto LABEL_6;
  }

  sub_1BA0DD020(v26, v31, sub_1BA0DCC20);
  if (v37(&v26[v36], 1, v19) == 1)
  {
    sub_1BA0DD26C(v34, sub_1BA0DCC20);
    sub_1BA0DD26C(v31, MEMORY[0x1E69A33E8]);
LABEL_6:
    sub_1BA0DD26C(v26, sub_1BA0DCFBC);
    goto LABEL_7;
  }

  sub_1BA0DD324(&v26[v36], v22);
  v47 = MEMORY[0x1BFAEDC20](v31, v22);
  v48 = MEMORY[0x1E69A33E8];
  sub_1BA0DD26C(v22, MEMORY[0x1E69A33E8]);
  sub_1BA0DD26C(v34, sub_1BA0DCC20);
  sub_1BA0DD26C(v31, v48);
  result = sub_1BA0DD26C(v26, sub_1BA0DCC20);
  if ((v47 & 1) == 0)
  {
LABEL_7:
    v39 = v154;
    v40 = *(v153 + 48);
    v41 = v159;
    sub_1BA0DD020(v159, v154, MEMORY[0x1E69A33E8]);
    v42 = v158;
    sub_1BA0DD020(&v158[v160], v39 + v40, sub_1BA0DCC20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v150 = v19;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (v37((v39 + v40), 1, v19) == 1)
        {
          v44 = v143;
          v45 = v142;
          v46 = v151;
          (*(v143 + 32))(v142, v39, v151);
        }

        else
        {
          v60 = swift_getEnumCaseMultiPayload();
          v44 = v143;
          v61 = *(v143 + 32);
          v46 = v151;
          v45 = v142;
          if (v60 == 1)
          {
            v62 = v151;
            v63 = v136;
            v61(v136, v39, v151);
            v61(v141, v39 + v40, v62);
            v64 = v140;
            sub_1BA4A31B8();
            v65 = v137;
            sub_1BA4A31B8();
            sub_1BA0DD2CC();
            v66 = v139;
            v67 = sub_1BA4A6728();
            v68 = *(v138 + 8);
            v69 = v65;
            v70 = v63;
            v68(v69, v66);
            v68(v64, v66);
            if ((v67 & 1) == 0)
            {
              v71 = *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView];
              if (v71)
              {
                v72 = v71;
                v73 = v140;
                sub_1BA4A31B8();
                v74 = sub_1BA4A2BB8();
                v68(v73, v66);
                [v72 setImage_];
              }
            }

            v75 = *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint];
            if (v75)
            {
              v76 = v75;
              v77 = COERCE_DOUBLE(sub_1BA4A31A8());
              if (v78)
              {
                v77 = 0.0;
              }

              [v76 setConstant_];
            }

            v79 = *(v44 + 8);
            v80 = v151;
            v79(v141, v151);
            v79(v70, v80);
            goto LABEL_41;
          }

          v93 = v135;
          v61(v135, v39, v151);
          sub_1BA0DD26C(v39 + v40, MEMORY[0x1E69A33E8]);
          v94 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView;
          v95 = *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView];
          if (v95)
          {
            [v95 removeFromSuperview];
            v96 = *&v42[v94];
          }

          else
          {
            v96 = 0;
          }

          *&v42[v94] = 0;

          v97 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView;
          [*&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] removeFromSuperview];
          v98 = *&v42[v97];
          *&v42[v97] = 0;

          v61(v45, v93, v46);
        }

        v99 = sub_1BA0DD088();
        [v42 addSubview_];
        v100 = [v99 image];
        if (v100)
        {
          v101 = v100;
          [v100 size];
          v103 = v102;
          v105 = v104;

          v106 = v105 / v103;
        }

        else
        {
          v106 = 1.0;
        }

        v107 = [v99 topAnchor];

        v108 = [v42 topAnchor];
        *&v109 = COERCE_DOUBLE(sub_1BA4A31A8());
        v110 = v45;
        v112 = v111;
        (*(v44 + 8))(v110, v46);
        v113 = *&v109;
        if (v112)
        {
          v113 = 0.0;
        }

        v114 = [v107 constraintEqualToAnchor:v108 constant:v113];

        v115 = objc_opt_self();
        sub_1B9F109F8();
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1BA4B5880;
        v117 = [v99 centerXAnchor];

        v118 = [v42 centerXAnchor];
        v119 = [v117 constraintEqualToAnchor_];

        *(v116 + 32) = v119;
        *(v116 + 40) = v114;
        v120 = v114;
        v121 = [v99 widthAnchor];

        v122 = [v121 constraintEqualToConstant_];
        *(v116 + 48) = v122;
        v123 = [v99 heightAnchor];

        v124 = [v99 widthAnchor];
        v125 = [v123 constraintEqualToAnchor:v124 multiplier:v106];

        *(v116 + 56) = v125;
        v126 = [v99 bottomAnchor];

        v127 = [v42 bottomAnchor];
        v128 = [v126 constraintEqualToAnchor_];

        *(v116 + 64) = v128;
        sub_1B9F0ADF8(0, &qword_1EDC6B570);
        v129 = sub_1BA4A6AE8();

        [v115 activateConstraints_];

        v130 = *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView];
        *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView] = v99;

        v131 = *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint];
        *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint] = v120;

        v41 = v159;
LABEL_41:
        v132 = v157;
        sub_1BA0DD020(v41, v157, MEMORY[0x1E69A33E8]);
        v155(v132, 0, 1, v150);
        v133 = v160;
        swift_beginAccess();
        sub_1BA0DD208(v132, &v42[v133]);
        return swift_endAccess();
      }

      v54 = v146;
      v55 = v144;
      v56 = v148;
      (*(v146 + 32))(v144, v39, v148);
      v57 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView;
      v58 = *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView];
      if (v58)
      {
        [v58 removeFromSuperview];
        v59 = *&v42[v57];
      }

      else
      {
        v59 = 0;
      }

      *&v42[v57] = 0;

      sub_1BA0DBFF4();
      v87 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView;
      [*&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] removeFromSuperview];
      v88 = *&v42[v87];
      *&v42[v87] = 0;

      v89 = sub_1BA0DCC78();
      v90 = *&v42[v87];
      *&v42[v87] = v89;
      v91 = v89;

      [v91 setTranslatesAutoresizingMaskIntoConstraints_];
      LODWORD(v92) = 1148846080;
      [v91 setContentHuggingPriority:1 forAxis:v92];
      [v42 addSubview_];
      [v91 hk:v42 alignConstraintsWithView:0.0 insets:{0.0, 0.0, 0.0}];

      (*(v54 + 8))(v55, v56);
    }

    else
    {
      v49 = v147;
      v50 = v149;
      (*(v147 + 32))(v152, v39, v149);
      v51 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView;
      v52 = *&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView];
      if (v52)
      {
        [v52 removeFromSuperview];
        v53 = *&v42[v51];
      }

      else
      {
        v53 = 0;
      }

      *&v42[v51] = 0;

      sub_1BA0DBFF4();
      v81 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView;
      [*&v42[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] removeFromSuperview];
      v82 = *&v42[v81];
      *&v42[v81] = 0;

      v83 = v152;
      v84 = sub_1BA0DC074(v152, v145);
      v85 = *&v42[v51];
      *&v42[v51] = v84;
      v86 = v84;

      [v42 addSubview_];
      [v86 hk:v42 alignConstraintsWithView:0.0 insets:{0.0, 0.0, 0.0}];

      (*(v49 + 8))(v83, v50);
    }

    sub_1BA0DD26C(v39 + v40, sub_1BA0DCC20);
    goto LABEL_41;
  }

  return result;
}

void sub_1BA0DBFF4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageHeightConstraint);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageHeightConstraint) = 0;
}

id sub_1BA0DC074(uint64_t a1, void *a2)
{
  v71 = a2;
  v72 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3198();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A2C58();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A2B98();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A2BF8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A31D8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v72, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x1E69A33E0])
  {
    (*(v18 + 96))(v21, v17);
    sub_1BA0DCE24(0);
    v61 = *&v21[v23[12]];
    v65 = *&v21[v23[16]];
    v24 = v23[20];
    (*(v14 + 32))(v16, v21, v13);
    (*(v10 + 32))(v12, &v21[v24], v9);
    v25 = sub_1BA4A2BB8();
    v66 = v9;
    v72 = v13;
    v26 = v12;
    v60 = v16;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v37 = v67;
      sub_1BA4A3DD8();
      v38 = sub_1BA4A3E88();
      v39 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v59 = v12;
        v41 = v40;
        v42 = swift_slowAlloc();
        v73 = v42;
        *v41 = 136446210;
        v43 = sub_1BA4A85D8();
        v45 = sub_1B9F0B82C(v43, v44, &v73);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_1B9F07000, v38, v39, "[%{public}s] Failed to create image view", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1BFAF43A0](v42, -1, -1);
        v26 = v59;
        MEMORY[0x1BFAF43A0](v41, -1, -1);

        (*(v63 + 8))(v67, v64);
      }

      else
      {

        (*(v63 + 8))(v37, v64);
      }

      v46 = sub_1BA4A6758();
      v47 = [objc_opt_self() systemImageNamed_];

      if (!v47)
      {
        v47 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      }

      v27 = v47;
      v25 = 0;
    }

    v48 = v25;
    v49 = v71;
    v50 = v68;
    sub_1BA4A2C48();
    v51 = sub_1BA4A2B68();
    (*(v69 + 8))(v50, v70);
    v52 = objc_allocWithZone(MEMORY[0x1E69A44B0]);
    v53 = sub_1BA4A6758();

    v54 = sub_1BA4A6758();

    v55 = [v52 initWithIconImage:v27 titleText:v53 detailText:v54 tintColor:v51];

    (*(v10 + 8))(v26, v66);
    (*(v14 + 8))(v60, v72);
    v32 = v55;
    goto LABEL_14;
  }

  if (v22 == *MEMORY[0x1E69A33D8])
  {
    (*(v18 + 96))(v21, v17);
    v29 = v65;
    v28 = v66;
    (*(v65 + 32))(v4, v21, v66);
    v30 = sub_1BA0DCC78();
    v31 = [objc_allocWithZone(MEMORY[0x1E69A44B0]) initWithWatchView_];

    (*(v29 + 8))(v4, v28);
    v32 = v31;
LABEL_14:
    v36 = v32;
    goto LABEL_15;
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v34 = [objc_allocWithZone(MEMORY[0x1E69A44B0]) initWithWatchView_];

  v35 = *(v18 + 8);
  v36 = v34;
  v35(v21, v17);
LABEL_15:
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v56) = 1148846080;
  [v36 setContentHuggingPriority:1 forAxis:v56];

  return v36;
}

id sub_1BA0DC93C(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_previousConfiguration;
  v4 = sub_1BA4A31F8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageHeightConstraint] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PromotionTileHeroView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1BA0DCA54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotionTileHeroView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PromotionTileHeroView()
{
  result = qword_1EDC67738;
  if (!qword_1EDC67738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA0DCB80()
{
  sub_1BA0DCC20();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA0DCC20()
{
  if (!qword_1EDC6AD10)
  {
    sub_1BA4A31F8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6AD10);
    }
  }
}

id sub_1BA0DCC78()
{
  sub_1BA4A3178();
  if (v0)
  {
    v1 = sub_1BA4A6758();

    v2 = [objc_opt_self() bundleWithIdentifier_];

    if (v2)
    {
      sub_1BA4A3188();
      v3 = sub_1BA4A6758();

      v4 = [v2 classNamed_];

      if (v4)
      {
        swift_getObjCClassMetadata();
        sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
        if (swift_dynamicCastMetatype())
        {
          v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          if (v5)
          {
            v6 = v5;
            [v5 setContentMode_];
            LODWORD(v7) = 1148846080;
            [v6 setContentHuggingPriority:1 forAxis:v7];
            LODWORD(v8) = 1148846080;
            [v6 setContentCompressionResistancePriority:0 forAxis:v8];

            return v6;
          }
        }
      }
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v10 initWithFrame_];
}

void sub_1BA0DCE24(uint64_t a1)
{
  if (!qword_1EBBEBC68)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1BA4A2BF8();
    sub_1BA4A2B98();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBEBC68);
    }
  }
}

void sub_1BA0DCF4C()
{
  if (!qword_1EDC6AD00)
  {
    sub_1BA4A31F8();
    sub_1BA0DCC20();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6AD00);
    }
  }
}

void sub_1BA0DCFBC()
{
  if (!qword_1EDC6AD08)
  {
    sub_1BA0DCC20();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6AD08);
    }
  }
}

uint64_t sub_1BA0DD020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1BA0DD088()
{
  v0 = sub_1BA4A2BF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v4 setContentMode_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BA4A31B8();
  v5 = sub_1BA4A2BB8();
  (*(v1 + 8))(v3, v0);
  [v4 setImage_];

  LODWORD(v6) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v7];
  return v4;
}

uint64_t sub_1BA0DD208(uint64_t a1, uint64_t a2)
{
  sub_1BA0DCC20();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0DD26C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA0DD2CC()
{
  result = qword_1EDC6AD60;
  if (!qword_1EDC6AD60)
  {
    sub_1BA4A2BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AD60);
  }

  return result;
}

uint64_t sub_1BA0DD324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A31F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CellEditModeHandling<>.didSetEditMode(isEditing:animated:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v10, a3, a5);
  if (v10[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC67CE0);
    if (swift_dynamicCast())
    {
      v7 = *(&v12 + 1);
      if (*(&v12 + 1))
      {
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(a1 & 1, a2 & 1, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v11);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v10, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  return sub_1B9F43A50(&v11, &qword_1EDC67CD8, &qword_1EDC67CE0);
}

UIInterfaceOrientationMask __swiftcall UINavigationController.overrideMask()()
{
  v1 = [v0 visibleViewController];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = [v3 overrideMask];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

void sub_1BA0DD624()
{
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] != 1)
  {
    return;
  }

  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v0 tableView];
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  [v12 directionalLayoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v15 != v5 || v17 != v7 || v19 != v9 || v21 != v11)
  {
    v25 = [v0 tableView];
    if (v25)
    {
      v26 = v25;
      [v25 setDirectionalLayoutMargins_];

      return;
    }

LABEL_22:
    __break(1u);
  }
}

id OnboardingTableViewController.__allocating_init(title:detailText:dataSource:icon:tableViewStyle:allowAnimations:useSystemMargins:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  ObjectType = swift_getObjectType();
  return sub_1BA0DF484(a1, a2, a3, a4, a5, a7, a8, a9, a10, v18, ObjectType, a6);
}

void sub_1BA0DD864()
{
  v1 = v0;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for OnboardingTableViewController();
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:*&v0[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] style:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTableView_];

  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v1 tableView];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 setDelegate_];

  v8 = [v1 tableView];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = [v1 tableView];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource + 8];
  v14 = v1[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations];
  type metadata accessor for DiffableTableViewAdaptor();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v15 = sub_1BA374C90(v11, v12, v13, v14);

  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = v15;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v15[6];
  v15[6] = sub_1BA0DF5C4;
  v15[7] = v16;

  sub_1B9F0E310(v17);

  v31 = v12;
  v32 = v13;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, &qword_1EBBEBCF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_1B9F43AAC(v29, &qword_1EBBEBD00, &qword_1EBBEBCF8);
LABEL_9:
    v22 = [v1 tableView];
    if (v22)
    {
      v23 = v22;
      sub_1B9F0ADF8(0, &qword_1EBBEBD08);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = sub_1BA4A6758();
      [v23 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v25];

      v26 = [v1 tableView];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1BA4A6758();
        [v27 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v28];

        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B9F1134C(v29, v33);
  v18 = v34;
  v19 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v20 = [v1 tableView];
  if (v20)
  {
    v21 = v20;
    (*(v19 + 8))(v20, v18, v19);

    __swift_destroy_boxed_opaque_existential_1(v33);
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
}

void sub_1BA0DDCA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (!v2)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v2 setNeedsLayout];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 layoutIfNeeded];
}

void sub_1BA0DDDD0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor];
      if (v4)
      {
        if ((*(v4 + 41) & 1) == 0)
        {

          sub_1BA3741A8();
        }
      }
    }

    v5.receiver = v0;
    v5.super_class = type metadata accessor for OnboardingTableViewController();
    objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
    sub_1BA0DD624();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA0DDEE0(char a1)
{
  v29.receiver = v1;
  v29.super_class = type metadata accessor for OnboardingTableViewController();
  objc_msgSendSuper2(&v29, sel_viewWillAppear_, a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins) != 1)
  {
    return;
  }

  v3 = [v1 navigationController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v5 directionalLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v1 tableView];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v14 directionalLayoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (v17 != v7 || v19 != v9 || v21 != v11 || v23 != v13)
  {
    v27 = [v1 tableView];
    if (v27)
    {
      v28 = v27;
      [v27 setDirectionalLayoutMargins_];

      return;
    }

LABEL_20:
    __break(1u);
  }
}

id OnboardingTableViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1BA4A6758();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1BA4A6758();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id OnboardingTableViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_1BA4A6758();

  if (a4)
  {
    v10 = sub_1BA4A6758();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id OnboardingTableViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id OnboardingTableViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id OnboardingTableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingTableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA0DE6E4(void *a1, uint64_t a2, int a3)
{
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a2, v9);
  v13 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource);
  v12 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource + 8);
  *&v37 = v13;
  *(&v37 + 1) = v12;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, &qword_1EBBEBD18);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1B9F43AAC(&v39, &qword_1EBBEBD20, &qword_1EBBEBD18);
    goto LABEL_9;
  }

  v34 = v8;
  v35 = v7;
  v14 = a1;
  sub_1B9F1134C(&v39, v42);
  v16 = v43;
  v15 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v33 = a3;
  v36 = a3;
  (*(v15 + 8))(&v37, &v36, v11, v16, v15);
  if (!v38)
  {
    sub_1B9F43AAC(&v37, &qword_1EBBEA750, &unk_1EDC5F8B0);
    __swift_destroy_boxed_opaque_existential_1(v42);
    a1 = v14;
LABEL_8:
    v7 = v35;
    LOBYTE(a3) = v33;
    v8 = v34;
LABEL_9:
    *&v37 = v13;
    *(&v37 + 1) = v12;
    sub_1B9F0D9AC(0, &qword_1EBBEBD28);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(&v39, v42);
      v19 = v43;
      v20 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      LOBYTE(v39) = a3;
      v21 = [a1 layoutMarginsGuide];
      [v21 layoutFrame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v45.origin.x = v23;
      v45.origin.y = v25;
      v45.size.width = v27;
      v45.size.height = v29;
      Width = CGRectGetWidth(v45);
      v18 = (*(v20 + 8))(&v39, v11, v19, v20, Width);
      (*(v8 + 8))(v11, v7);
      __swift_destroy_boxed_opaque_existential_1(v42);
      if (v18)
      {
        return v18;
      }
    }

    else
    {
      (*(v8 + 8))(v11, v7);
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_1B9F43AAC(&v39, &unk_1EBBEBD30, &qword_1EBBEBD28);
    }

    return 0;
  }

  sub_1B9F1134C(&v37, &v39);
  v17 = sub_1BA4A6758();
  a1 = v14;
  v18 = [v14 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1(&v39);
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_8;
  }

  sub_1B9F0A534(&v39, &v37);
  MEMORY[0x1BFAF18E0](&v37);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  (*(v34 + 8))(v11, v35);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v18;
}

double OnboardingTableViewController.tableView(_:heightForHeaderInSection:)(void *a1, uint64_t a2)
{
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a2, v7);
  v14 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource);
  *v17 = v14;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, qword_1EDC648F8);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v15, v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v11 + 8))(v15, 0xD000000000000013, 0x80000001BA4E1530, v9, v10, v11);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v9, v5);
      v12 = v17[0];
      __swift_destroy_boxed_opaque_existential_1(v18);
      return v12;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1B9F43AAC(v15, &qword_1EBBEBD40, qword_1EDC648F8);
  }

  if ([a1 style])
  {
    v12 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v12 = 0.0;
  }

  (*(v6 + 8))(v9, v5);
  return v12;
}

double OnboardingTableViewController.tableView(_:heightForFooterInSection:)(void *a1, uint64_t a2)
{
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAEC380](0, a2, v7);
  v14 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource);
  *v17 = v14;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, qword_1EDC648F8);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v15, v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v11 + 8))(v15, 0xD000000000000013, 0x80000001BA4E1560, v9, v10, v11);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v9, v5);
      v12 = v17[0];
      __swift_destroy_boxed_opaque_existential_1(v18);
      return v12;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1B9F43AAC(v15, &qword_1EBBEBD40, qword_1EDC648F8);
  }

  if ([a1 style])
  {
    v12 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v12 = 0.0;
  }

  (*(v6 + 8))(v9, v5);
  return v12;
}

void OnboardingTableViewController.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A18F8();
  v5 = [a1 cellForRowAtIndexPath_];

  if (v5 && (sub_1B9F0ADF8(0, &unk_1EBBEBD60), sub_1B9F0D9AC(0, &qword_1EBBEBD58), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_1B9F43AAC(&v9, &qword_1EBBEBD50, &qword_1EBBEBD58);
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, &qword_1EBBEBD58);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_1B9F43AAC(&v9, &qword_1EBBEBD50, &qword_1EBBEBD58);
    goto LABEL_9;
  }

LABEL_7:
  sub_1B9F1134C(&v9, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v7 + 8))(a2, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_9:
  v8 = sub_1BA4A18F8();
  [a1 deselectRowAtIndexPath:v8 animated:1];
}

id sub_1BA0DF484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, char a9, _BYTE *a10, uint64_t a11, uint64_t a12)
{
  *&a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
  v14 = &a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  *v14 = a5;
  v14[1] = a12;
  *&a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = a7;
  a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = a9;
  a10[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = a8;
  v15 = sub_1BA4A6758();

  if (a4)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  v20.receiver = a10;
  v20.super_class = type metadata accessor for OnboardingTableViewController();
  v17 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v15, v16, a6, 1);

  v18 = v17;
  [v18 setModalInPresentation_];

  return v18;
}

size_t sub_1BA0DF61C(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BA0219CC(a1[2], 0);
  v4 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  v6 = v5;
  sub_1B9F52E48();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t SummarySharingSelectedDataTypesContext.__allocating_init(selectedItems:selectionFlow:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(a1, a2);
  return v4;
}

uint64_t sub_1BA0DF734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1BA0DF7CC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

size_t sub_1BA0DF814@<X0>(size_t *a1@<X8>)
{
  swift_beginAccess();

  result = sub_1BA0DF61C(v2);
  *a1 = result;
  return result;
}

size_t sub_1BA0DF864()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BA0219CC(v1[2], 0);
  v4 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
  v6 = v5;

  sub_1B9F52E48();
  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BA0DF96C(uint64_t a1)
{
  v2 = v1;
  sub_1BA0E7408(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA024284(a1);
  swift_beginAccess();
  *(v2 + 24) = v11;

  v12 = *(a1 + 16);
  if (v12)
  {
    v36 = a1;
    v37 = v6;
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BA025290(v13, v10);
      v17 = *(v10 + 7);
      v18 = *(v10 + 8);

      sub_1BA0E6EC0(v10, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1BA27EE34(0, *(v15 + 2) + 1, 1, v15);
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        if (v20 >= v19 >> 1)
        {
          v15 = sub_1BA27EE34((v19 > 1), v20 + 1, 1, v15);
        }

        *(v15 + 2) = v20 + 1;
        v16 = &v15[16 * v20];
        *(v16 + 4) = v17;
        *(v16 + 5) = v18;
      }

      v13 += v14;
      --v12;
    }

    while (v12);

    v6 = v37;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1B9F12EB8(v15);

  swift_beginAccess();
  *(v2 + 32) = v21;

  v22 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  sub_1BA0E6D6C(v2 + v22, v6, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v23 = type metadata accessor for SummarySharingSelectionFlow(0);
  if ((*(*(v23 - 8) + 48))(v6, 1, v23) == 1)
  {
    sub_1BA0E6DEC(v6, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
LABEL_26:
    sub_1BA0E6E5C();
    sub_1BA0E7830(&qword_1EBBEBE30, sub_1BA0E6E5C);

    sub_1BA4A4EB8();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BA0E6EC0(v6, type metadata accessor for SummarySharingSelectionFlow);
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_26;
  }

  v25 = *(v2 + 32);
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 56);
  swift_beginAccess();
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v28; result = )
  {
    v31 = i;
LABEL_23:
    v32 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v33 = (*(v25 + 48) + ((v31 << 10) | (16 * v32)));
    v34 = *v33;
    v35 = v33[1];

    sub_1BA0E1C3C(&v38, v34, v35);
  }

  while (1)
  {
    v31 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v31 >= ((v26 + 63) >> 6))
    {
      swift_endAccess();

      goto LABEL_26;
    }

    v28 = *(v25 + 56 + 8 * v31);
    ++i;
    if (v28)
    {
      i = v31;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1BA0DFE2C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v6 = v5[2];
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_8:
    *(v4 + 24) = v7;
    return sub_1BA0DFF8C;
  }

  v7 = sub_1BA0219CC(v6, 0);
  v8 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v12, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v10 = v9;

  result = sub_1B9F52E48();
  if (v10 == v6)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1BA0DFF8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1BA0DF96C(v4);
  }

  else
  {
    sub_1BA0DF96C(v3);
  }

  free(v2);
}

void sub_1BA0DFFF0(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v31 = *(v12 + 72);
    v17 = v16;
    v18 = v15;
    do
    {
      sub_1BA025290(v17, v14);
      sub_1BA025290(v14, v4);
      swift_beginAccess();
      sub_1BA0E1D8C(v7, v4);
      sub_1BA0E6EC0(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
      swift_endAccess();
      sub_1BA0E6EC0(v14, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v17 += v31;
      --v18;
    }

    while (v18);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v31;
    do
    {
      sub_1BA025290(v16, v10);
      v23 = *(v10 + 7);
      v22 = *(v10 + 8);

      sub_1BA0E6EC0(v10, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1BA27EE34(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1BA27EE34((v24 > 1), v25 + 1, 1, v19);
        }

        *(v19 + 2) = v25 + 1;
        v21 = &v19[16 * v25];
        *(v21 + 4) = v23;
        *(v21 + 5) = v22;
      }

      v16 += v20;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v19 + 2);
  if (v26)
  {
    v27 = 0;
    v28 = (v19 + 40);
    while (v27 < *(v19 + 2))
    {
      ++v27;
      v30 = *(v28 - 1);
      v29 = *v28;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      sub_1BA0E1C3C(&v32, v30, v29);
      swift_endAccess();

      swift_beginAccess();
      sub_1BA0E1C3C(&v32, v30, v29);
      swift_endAccess();

      v28 += 2;
      if (v26 == v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1BA0E6E5C();
    sub_1BA0E7830(&qword_1EBBEBE30, sub_1BA0E6E5C);

    sub_1BA4A4EB8();
  }
}

void sub_1BA0E039C(uint64_t a1)
{
  v2 = v1;
  sub_1BA0E7408(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v42 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v37 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v41 = v8;
    v37 = v13;
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v43 = v2;
    swift_beginAccess();
    v45 = *(v9 + 72);
    v40 = (v9 + 48);
    v17 = v16;
    v18 = v15;
    v19 = v44;
    do
    {
      v20 = sub_1BA025290(v17, v19);
      v21 = *(v43 + 24);
      MEMORY[0x1EEE9AC00](v20);
      *(&v37 - 2) = v19;

      v22 = v41;
      sub_1BA368E04(sub_1BA0E7354, v21, v41);

      if ((*v40)(v22, 1, v42) == 1)
      {
        sub_1BA0E6DEC(v22, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
      }

      else
      {
        v23 = v38;
        sub_1BA025350(v22, v38);
        swift_beginAccess();
        v24 = v39;
        sub_1BA0222A4(v23, v39);
        sub_1BA0E6DEC(v24, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
        swift_endAccess();
        sub_1BA0E6EC0(v23, type metadata accessor for SummarySharingSelectableDataTypeItem);
      }

      v19 = v44;
      sub_1BA0E6EC0(v44, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v17 += v45;
      --v18;
    }

    while (v18);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = v37;
    do
    {
      sub_1BA025290(v16, v26);
      v29 = *(v26 + 56);
      v28 = *(v26 + 64);

      sub_1BA0E6EC0(v26, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v28)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1BA27EE34(0, *(v25 + 2) + 1, 1, v25);
        }

        v31 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v31 >= v30 >> 1)
        {
          v25 = sub_1BA27EE34((v30 > 1), v31 + 1, 1, v25);
        }

        *(v25 + 2) = v31 + 1;
        v27 = &v25[16 * v31];
        *(v27 + 4) = v29;
        *(v27 + 5) = v28;
      }

      v16 += v45;
      --v15;
    }

    while (v15);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v32 = *(v25 + 2);
  if (v32)
  {
    v33 = 0;
    v34 = (v25 + 40);
    while (v33 < *(v25 + 2))
    {
      ++v33;
      v36 = *(v34 - 1);
      v35 = *v34;
      swift_beginAccess();

      sub_1BA021E7C(v36, v35);
      swift_endAccess();

      v34 += 2;
      if (v32 == v33)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    sub_1BA0E6E5C();
    sub_1BA0E7830(&qword_1EBBEBE30, sub_1BA0E6E5C);

    sub_1BA4A4EB8();
  }
}

uint64_t sub_1BA0E08C8(uint64_t a1, uint64_t a2)
{
  sub_1BA0E7408(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA0E6D6C(a1 + *(v10 + 40), v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) == 1)
  {
    sub_1BA0E6DEC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = *&v9[*(v11 + 44)];

    sub_1BA0E6EC0(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA0E6D6C(a2 + *(v10 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v12(v6, 1, v11) == 1)
  {
    sub_1BA0E6DEC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = *&v6[*(v11 + 44)];

    sub_1BA0E6EC0(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA2ECCE8(v14, v13);
  v16 = v15;

  return v16 & 1;
}

uint64_t sub_1BA0E0B48()
{
  sub_1BA0E6E5C();
  sub_1BA0E7830(&qword_1EBBEB1A8, sub_1BA0E6E5C);
  return sub_1BA4A4F98();
}

uint64_t sub_1BA0E0BC4(uint64_t a1, uint64_t *a2)
{
  sub_1BA0E7408(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BA0E6D6C(a1, &v10 - v5, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  sub_1BA0E6F20(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1BA0E0CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  return sub_1BA0E6D6C(v1 + v3, a1, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
}

uint64_t sub_1BA0E0D34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  sub_1BA0E6F20(a1, v1 + v3);
  return swift_endAccess();
}

void *SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = MEMORY[0x1E69E7CC8];
  v2[5] = MEMORY[0x1E69E7CD0];
  sub_1BA0E6E5C();
  swift_allocObject();
  v2[6] = sub_1BA4A4D88();
  v10 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  v11 = type metadata accessor for SummarySharingSelectionFlow(0);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);

  v13 = sub_1BA024284(v12);

  v3[3] = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v25[0] = v10;
    v25[1] = a1;
    v26 = a2;
    v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BA025290(v15, v9);
      v20 = *(v9 + 7);
      v19 = *(v9 + 8);

      sub_1BA0E6EC0(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1BA27EE34(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_1BA27EE34((v21 > 1), v22 + 1, 1, v17);
        }

        *(v17 + 2) = v22 + 1;
        v18 = &v17[16 * v22];
        *(v18 + 4) = v20;
        *(v18 + 5) = v19;
      }

      v15 += v16;
      --v14;
    }

    while (v14);

    a2 = v26;
    v10 = v25[0];
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1B9F12EB8(v17);

  v3[4] = v23;
  swift_beginAccess();
  sub_1BA0E6F20(a2, v3 + v10);
  swift_endAccess();
  return v3;
}

uint64_t sub_1BA0E1094(uint64_t a1)
{
  if (*(a1 + 49))
  {

    return sub_1BA0E11F0(a1);
  }

  else
  {
    sub_1BA0E7408(0, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6F90]);
    v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5480;
    sub_1BA025290(a1, v5 + v4);
    sub_1BA0E17CC(v5);
    swift_setDeallocating();
    swift_arrayDestroy();

    return swift_deallocClassInstance();
  }
}

uint64_t sub_1BA0E11F0(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  sub_1BA025290(a1, v5);
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v3;
    v15 = v14;
    v30 = v14;
    *v13 = 136315394;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, &v30);
    v29 = a1;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = *(v5 + 2);
    v21 = *(v5 + 3);

    sub_1BA0E6EC0(v5, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v22 = sub_1B9F0B82C(v20, v21, &v30);

    *(v13 + 14) = v22;
    a1 = v29;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] Adding data type with identifier '%s' to the selected data types array", v13, 0x16u);
    swift_arrayDestroy();
    v23 = v15;
    v3 = v28;
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);

    (*(v7 + 8))(v9, v27);
  }

  else
  {

    sub_1BA0E6EC0(v5, type metadata accessor for SummarySharingSelectableDataTypeItem);
    (*(v7 + 8))(v9, v6);
  }

  sub_1BA0E7408(0, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6F90]);
  v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  sub_1BA025290(a1, v25 + v24);
  sub_1BA0DFFF0(v25);
  swift_setDeallocating();
  sub_1BA0E6EC0(v25 + v24, type metadata accessor for SummarySharingSelectableDataTypeItem);
  return swift_deallocClassInstance();
}

void sub_1BA0E159C(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  swift_bridgeObjectRetain_n();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = v2;
    v9 = v8;
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    v14 = *(a1 + 16);

    *(v9 + 14) = v14;

    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s] Adding array of %ld data types to selected items", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);

    (*(v3 + 8))(v5, v15);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v3 + 8))(v5, v2);
  }

  sub_1BA0DFFF0(a1);
}

uint64_t sub_1BA0E17CC(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  swift_bridgeObjectRetain_n();
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v3;
    v14 = v13;
    v31 = v13;
    *v12 = 136315394;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v31);
    v29 = v6;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    v19 = *(a1 + 16);

    *(v12 + 14) = v19;

    _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] Removing array of %ld data types from selected items", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v20 = v14;
    v3 = v30;
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    (*(v7 + 8))(v9, v29);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v7 + 8))(v9, v6);
  }

  v21 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1BA066E50(0, v21, 0);
    v22 = v31;
    v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v24 = a1 + v23;
    v25 = *(v3 + 72);
    do
    {
      sub_1BA025290(v24, v5);
      v5[49] = 1;
      v31 = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1BA066E50(v26 > 1, v27 + 1, 1);
        v22 = v31;
      }

      *(v22 + 16) = v27 + 1;
      sub_1BA025350(v5, v22 + v23 + v27 * v25);
      v24 += v25;
      --v21;
    }

    while (v21);
  }

  sub_1BA0E039C(v22);
}

uint64_t SummarySharingSelectedDataTypesContext.deinit()
{

  sub_1BA0E6DEC(v0 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  return v0;
}

uint64_t SummarySharingSelectedDataTypesContext.__deallocating_deinit()
{

  sub_1BA0E6DEC(v0 + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0E1C3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v8 = sub_1BA4A84D8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1BA4A8338() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1BA0E3600(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BA0E1D8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1BA4A8488();
  if (*(a2 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v10 = sub_1BA4A84D8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1BA025290(*(v9 + 48) + v14 * v12, v8);
      v15 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1BA0E6EC0(v8, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_1BA0E6EC0(a2, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA025290(*(v9 + 48) + v14 * v12, v19);
    return 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BA025290(a2, v8);
    v20 = *v3;
    sub_1BA0E3780(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_1BA025350(a2, v17);
    return 1;
  }
}

uint64_t sub_1BA0E1FA4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BA4A8488();
  v6 = a2 >> 6;
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      v7 = 0x80504u >> (8 * (a2 + 64));
    }

    else
    {
      LOBYTE(v7) = a2 ^ 0x80;
    }
  }

  else if (a2 >> 6)
  {
    LOBYTE(v7) = a2 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v7) = a2;
  }

  MEMORY[0x1BFAF2ED0](v7);
  v8 = sub_1BA4A84D8();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48);
      v13 = *(v12 + v10);
      v14 = v13 >> 6;
      if (v13 >> 6 > 1)
      {
        if (v14 == 3)
        {
          if (v13 == 192)
          {
            if (a2 == 192)
            {
              result = 0;
              LOBYTE(a2) = -64;
              goto LABEL_39;
            }
          }

          else if (v13 == 193)
          {
            if (a2 == 193)
            {
              result = 0;
              LOBYTE(a2) = -63;
              goto LABEL_39;
            }
          }

          else if (a2 == 194)
          {
            result = 0;
            LOBYTE(a2) = -62;
            goto LABEL_39;
          }
        }

        else if (*(v12 + v10) > 0x81u)
        {
          if (v13 == 130)
          {
            if (a2 == 130)
            {
              result = 0;
              LOBYTE(a2) = -126;
              goto LABEL_39;
            }
          }

          else if (a2 == 131)
          {
            result = 0;
            LOBYTE(a2) = -125;
            goto LABEL_39;
          }
        }

        else if (v13 == 128)
        {
          if (a2 == 128)
          {
            result = 0;
            LOBYTE(a2) = 0x80;
            goto LABEL_39;
          }
        }

        else if (a2 == 129)
        {
          result = 0;
          LOBYTE(a2) = -127;
          goto LABEL_39;
        }
      }

      else if (v14)
      {
        if (v6 == 1 && ((v13 ^ a2) & 0x3F) == 0)
        {
          result = 0;
          LOBYTE(a2) = *(v12 + v10);
          goto LABEL_39;
        }
      }

      else if (a2 <= 0x3Fu && v13 == a2)
      {
        result = 0;
        goto LABEL_39;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  sub_1BA0E39C4(a2, v10, isUniquelyReferenced_nonNull_native);
  *v2 = v17;
  result = 1;
LABEL_39:
  *a1 = a2;
  return result;
}

uint64_t sub_1BA0E2238(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A3A28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910]);
  v33 = a2;
  v11 = sub_1BA4A6698();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BA0E7830(&qword_1EBBEA620, MEMORY[0x1E69A3910]);
      v21 = sub_1BA4A6728();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BA0E3C4C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BA0E2518(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BA4A7CD8();

    if (v9)
    {

      sub_1BA0E7594();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1BA4A7CC8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BA0E3410(v7, result + 1, sub_1BA0E75E0, sub_1BA0E7594, sub_1BA305B7C);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1BA305B7C();
    }

    v18 = v8;
    sub_1BA30AC88();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BA0E7594();
  v11 = sub_1BA4A7788();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1BA0E41E4(v18, v13, isUniquelyReferenced_nonNull_native, sub_1BA305B7C, sub_1BA0E7594, sub_1BA0E75E0);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BA4A7798();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1BA0E27A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1E88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
  v33 = a2;
  v11 = sub_1BA4A6698();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BA0E7830(&unk_1EBBEA658, MEMORY[0x1E69A3C80]);
      v21 = sub_1BA4A6728();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BA0E3F18(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BA0E2A88(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BA4A7CD8();

    if (v9)
    {

      sub_1BA4A27B8();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1BA4A7CC8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BA0E3410(v7, result + 1, sub_1B9FF7538, MEMORY[0x1E69A3DD0], sub_1BA3060FC);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1BA3060FC();
    }

    v18 = v8;
    sub_1BA30AC88();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BA4A27B8();
  v11 = sub_1BA4A7788();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1BA0E41E4(v18, v13, isUniquelyReferenced_nonNull_native, sub_1BA3060FC, MEMORY[0x1E69A3DD0], sub_1B9FF7538);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BA4A7798();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1BA0E2D18(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A15D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0]);
  v33 = a2;
  v11 = sub_1BA4A6698();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BA0E7830(&qword_1EBBEBE70, MEMORY[0x1E6968FB0]);
      v21 = sub_1BA4A6728();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BA0E435C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BA0E2FF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A3B48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18]);
  v33 = a2;
  v11 = sub_1BA4A6698();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BA0E7830(&unk_1EDC6B7A0, MEMORY[0x1E69A3E18]);
      v21 = sub_1BA4A6728();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BA0E4628(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BA0E32D8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a2);
  v6 = sub_1BA4A84D8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1BA0E48F4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BA0E3410(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(unint64_t))
{
  if (a2)
  {
    a3(0);
    v7 = sub_1BA4A7D88();
    v20 = v7;
    sub_1BA4A7C88();
    if (sub_1BA4A7CF8())
    {
      a4(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          a5(v14 + 1);
        }

        v7 = v20;
        result = sub_1BA4A7788();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_1BA4A7CF8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_1BA0E3600(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BA3050BC();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BA0E4A50();
      goto LABEL_16;
    }

    sub_1BA0E56DC();
  }

  v10 = *v4;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  result = sub_1BA4A84D8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1BA4A8338();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0E3780(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v26 = v10;
    sub_1BA305310();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1BA0E4BA0();
      goto LABEL_15;
    }

    v26 = v10;
    sub_1BA0E5908();
  }

  v15 = *v4;
  sub_1BA4A8488();
  if (*(a1 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v16 = sub_1BA4A84D8();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1BA025290(*(v15 + 48) + v19 * a2, v12);
      v20 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1BA0E6EC0(v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v20)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BA025350(a1, *(v21 + 48) + *(v9 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0E39C4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1BA30569C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BA0E4D74();
      a2 = v7;
      goto LABEL_45;
    }

    sub_1BA0E5BF0();
  }

  v8 = *v3;
  sub_1BA4A8488();
  v9 = v4 >> 6;
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      v10 = 0x80504u >> (8 * (v4 + 64));
    }

    else
    {
      LOBYTE(v10) = v4 ^ 0x80;
    }
  }

  else if (v4 >> 6)
  {
    LOBYTE(v10) = v4 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v10) = v4;
  }

  MEMORY[0x1BFAF2ED0](v10);
  result = sub_1BA4A84D8();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2);
      v14 = v13 >> 6;
      if (v13 >> 6 > 1)
      {
        if (v14 == 3)
        {
          if (v13 == 192)
          {
            if (v4 == 192)
            {
              goto LABEL_44;
            }
          }

          else if (v13 == 193)
          {
            if (v4 == 193)
            {
              goto LABEL_44;
            }
          }

          else if (v4 == 194)
          {
            goto LABEL_44;
          }
        }

        else if (*(*(v8 + 48) + a2) > 0x81u)
        {
          if (v13 == 130)
          {
            if (v4 == 130)
            {
              goto LABEL_44;
            }
          }

          else if (v4 == 131)
          {
            goto LABEL_44;
          }
        }

        else if (v13 == 128)
        {
          if (v4 == 128)
          {
            goto LABEL_44;
          }
        }

        else if (v4 == 129)
        {
          goto LABEL_44;
        }
      }

      else if (v14)
      {
        if (v9 == 1 && ((v13 ^ v4) & 0x3F) == 0)
        {
LABEL_44:
          result = sub_1BA4A83A8();
          __break(1u);
          break;
        }
      }

      else if (v4 <= 0x3Fu && v13 == v4)
      {
        goto LABEL_44;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v4;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v18;
  }

  return result;
}

uint64_t sub_1BA0E3C4C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BA4A3A28();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA305818();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BA0E4ED4(MEMORY[0x1E69A3910], sub_1BA0E746C);
      goto LABEL_12;
    }

    sub_1BA0E5D0C();
  }

  v13 = *v3;
  sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910]);
  v14 = sub_1BA4A6698();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BA0E7830(&qword_1EBBEA620, MEMORY[0x1E69A3910]);
      v22 = sub_1BA4A6728();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0E3F18(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BA4A1E88();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA305D98();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BA0E4ED4(MEMORY[0x1E69A3C80], sub_1BA0E779C);
      goto LABEL_12;
    }

    sub_1BA0E601C();
  }

  v13 = *v3;
  sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
  v14 = sub_1BA4A6698();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BA0E7830(&unk_1EBBEA658, MEMORY[0x1E69A3C80]);
      v22 = sub_1BA4A6728();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

void sub_1BA0E41E4(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t), void (*a5)(void), void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a5;
    a4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1BA0E514C(a6);
      goto LABEL_12;
    }

    v11 = a5;
    sub_1BA0E632C(v9 + 1, a6);
  }

  v12 = *v6;
  v13 = sub_1BA4A7788();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_1BA4A7798();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BA4A83A8();
  __break(1u);
}

uint64_t sub_1BA0E435C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BA4A15D8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA30635C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BA0E4ED4(MEMORY[0x1E6968FB0], sub_1BA0E7708);
      goto LABEL_12;
    }

    sub_1BA0E6538();
  }

  v13 = *v3;
  sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0]);
  v14 = sub_1BA4A6698();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BA0E7830(&qword_1EBBEBE70, MEMORY[0x1E6968FB0]);
      v22 = sub_1BA4A6728();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0E4628(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BA4A3B48();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA3066C0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BA0E4ED4(MEMORY[0x1E69A3E18], sub_1BA0E7674);
      goto LABEL_12;
    }

    sub_1BA0E6848();
  }

  v13 = *v3;
  sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18]);
  v14 = sub_1BA4A6698();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BA0E7830(&unk_1EDC6B7A0, MEMORY[0x1E69A3E18]);
      v22 = sub_1BA4A6728();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

void sub_1BA0E48F4(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA306A24();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1BA0E5298();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BA0E6B58();
  }

  v8 = *v3;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1);
  v9 = sub_1BA4A84D8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for _HKDataTypeCode(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BA4A83A8();
  __break(1u);
}

void *sub_1BA0E4A50()
{
  v1 = v0;
  sub_1BA0E790C();
  v2 = *v0;
  v3 = sub_1BA4A7D68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0E4BA0()
{
  v1 = v0;
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0E7374();
  v6 = *v0;
  v7 = sub_1BA4A7D68();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1BA025290(*(v6 + 48) + v21, v5);
        result = sub_1BA025350(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1BA0E4D74()
{
  v1 = v0;
  sub_1BA0E72F8();
  v2 = *v0;
  v3 = sub_1BA4A7D68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BA0E4ED4(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_1BA4A7D68();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

id sub_1BA0E514C(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1BA4A7D68();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BA0E5298()
{
  v1 = v0;
  sub_1BA0E7500();
  v2 = *v0;
  v3 = sub_1BA4A7D68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BA0E53CC()
{
  v1 = v0;
  v32 = sub_1BA4A1C68();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1BA0E7878();
  v6 = sub_1BA4A7D78();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1BA0E7830(&qword_1EDC6E240, MEMORY[0x1E69A3C08]);
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BA0E56DC()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA0E790C();
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1BA4A8488();

      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BA0E5908()
{
  v1 = v0;
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1BA0E7374();
  result = sub_1BA4A7D78();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v0;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v32 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v31 = *(v3 + 72);
      sub_1BA025290(v20 + v31 * (v17 | (v9 << 6)), v5);
      sub_1BA4A8488();
      if (*(v5 + 8))
      {
        sub_1BA4A84A8();
        v6 = v30;
        sub_1BA4A68C8();
      }

      else
      {
        sub_1BA4A84A8();
      }

      result = sub_1BA4A84D8();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1BA025350(v5, *(v8 + 48) + v16 * v31);
      ++*(v8 + 16);
      v13 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        goto LABEL_29;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v32 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v8;
  }

  return result;
}

unint64_t sub_1BA0E5BF0()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA0E72F8();
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_1BA306CAC(*(*(v2 + 48) + (v10 | (v5 << 6))), v4))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      ;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BA0E5D0C()
{
  v1 = v0;
  v32 = sub_1BA4A3A28();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1BA0E746C();
  v6 = sub_1BA4A7D78();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910]);
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BA0E601C()
{
  v1 = v0;
  v32 = sub_1BA4A1E88();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1BA0E779C();
  v6 = sub_1BA4A7D78();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BA0E632C(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_1BA4A7D78();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1BA4A7788();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1BA0E6538()
{
  v1 = v0;
  v32 = sub_1BA4A15D8();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1BA0E7708();
  v6 = sub_1BA4A7D78();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0]);
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BA0E6848()
{
  v1 = v0;
  v32 = sub_1BA4A3B48();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1BA0E7674();
  v6 = sub_1BA4A7D78();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18]);
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BA0E6B58()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA0E7500();
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1BA4A8488();
      MEMORY[0x1BFAF2ED0](v15);
      result = sub_1BA4A84D8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BA0E6D6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA0E7408(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA0E6DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA0E7408(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA0E6E5C()
{
  if (!qword_1EBBEB1A0)
  {
    v0 = sub_1BA4A4D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB1A0);
    }
  }
}

uint64_t sub_1BA0E6EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA0E6F20(uint64_t a1, uint64_t a2)
{
  sub_1BA0E7408(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SummarySharingSelectedDataTypesContext()
{
  result = qword_1EBBEBE38;
  if (!qword_1EBBEBE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA0E7008()
{
  sub_1BA0E7408(319, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA0E72F8()
{
  if (!qword_1EBBEBE48)
  {
    sub_1BA0251E0();
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBE48);
    }
  }
}

void sub_1BA0E7374()
{
  if (!qword_1EBBEBE50)
  {
    type metadata accessor for SummarySharingSelectableDataTypeItem(255);
    sub_1BA0E7830(&qword_1EBBEA668, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBE50);
    }
  }
}

void sub_1BA0E7408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA0E746C()
{
  if (!qword_1EBBEBE58)
  {
    sub_1BA4A3A28();
    sub_1BA0E7830(&qword_1EBBEA610, MEMORY[0x1E69A3910]);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBE58);
    }
  }
}

void sub_1BA0E7500()
{
  if (!qword_1EBBEBE60)
  {
    type metadata accessor for _HKDataTypeCode(255);
    sub_1BA0E7830(&qword_1EBBEBE68, type metadata accessor for _HKDataTypeCode);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBE60);
    }
  }
}

unint64_t sub_1BA0E7594()
{
  result = qword_1EDC6E920;
  if (!qword_1EDC6E920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E920);
  }

  return result;
}

void sub_1BA0E75E0()
{
  if (!qword_1EDC5E050)
  {
    sub_1BA0E7594();
    sub_1BA0E7830(&qword_1EDC5E578, sub_1BA0E7594);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E050);
    }
  }
}

void sub_1BA0E7674()
{
  if (!qword_1EDC6B478)
  {
    sub_1BA4A3B48();
    sub_1BA0E7830(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18]);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B478);
    }
  }
}

void sub_1BA0E7708()
{
  if (!qword_1EBBEBE78)
  {
    sub_1BA4A15D8();
    sub_1BA0E7830(&qword_1EDC6E278, MEMORY[0x1E6968FB0]);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBE78);
    }
  }
}

void sub_1BA0E779C()
{
  if (!qword_1EBBEBE80)
  {
    sub_1BA4A1E88();
    sub_1BA0E7830(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBE80);
    }
  }
}

uint64_t sub_1BA0E7830(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA0E7878()
{
  if (!qword_1EBBEBE88)
  {
    sub_1BA4A1C68();
    sub_1BA0E7830(&qword_1EDC6E240, MEMORY[0x1E69A3C08]);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBE88);
    }
  }
}

void sub_1BA0E790C()
{
  if (!qword_1EDC5E058)
  {
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E058);
    }
  }
}

uint64_t sub_1BA0E7964(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA0E7B20()
{
  v1 = v0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = sub_1BA4A4578();
  (*(v4 + 8))(v6, v3);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  if (v9)
  {
    v12 = 0;
    v13 = v8 + 40;
    v38 = v9 - 1;
    v14 = MEMORY[0x1E69E7CC0];
    v39 = v8 + 40;
    while (1)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v17 = *(v1 + v10);
        if (*(v17 + 16))
        {
          break;
        }

LABEL_4:
        ++v16;
        v15 += 2;
        if (v9 == v16)
        {
          goto LABEL_16;
        }
      }

      v18 = *(v15 - 1);
      v19 = *v15;

      v20 = sub_1B9F24A34(v18, v19);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = (*(v17 + 56) + 48 * v20);
      v23 = v22[1];
      v37 = *v22;
      v33 = v14;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[5];
      v34 = v22[4];
      v35 = v23;

      v36 = v24;
      v27 = v25;
      v14 = v33;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B9F21540(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1B9F21540((v28 > 1), v29 + 1, 1, v14);
        v14 = result;
      }

      v12 = v16 + 1;
      *(v14 + 16) = v29 + 1;
      v30 = (v14 + 48 * v29);
      v31 = v35;
      v30[4] = v37;
      v30[5] = v31;
      v30[6] = v36;
      v30[7] = v27;
      v30[8] = v34;
      v30[9] = v26;
      v13 = v39;
      if (v38 == v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_16:

  return v14;
}

uint64_t sub_1BA0E7E1C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA0E7E60(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BA0E7F10(uint64_t a1, char a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - v6;
  if (a2)
  {
    v59 = v5;
    v8 = *(a1 + 16);
    v9 = &v76;
    v58 = a1;
    v10 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v11 = a1 + 48;
      v12 = MEMORY[0x1E69A3310];
      do
      {
        v13 = *v11;
        v14 = *(*v11 + 16);
        v15 = v10[2];
        v16 = (v15 + v14);
        if (__OFADD__(v15, v14))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v16 <= v10[3] >> 1)
        {
          if (!*(v13 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v15 <= v16)
          {
            v18 = v15 + v14;
          }

          else
          {
            v18 = v15;
          }

          v10 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v18, 1, v10);
          if (!*(v13 + 16))
          {
LABEL_4:

            if (v14)
            {
              goto LABEL_24;
            }

            goto LABEL_5;
          }
        }

        v9 = v10[2];
        if ((v10[3] >> 1) - v9 < v14)
        {
          goto LABEL_25;
        }

        v15 = &v10[5 * v9];
        sub_1B9F0D950(0, &qword_1EDC6AD50);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v14);
          v9 = (v19 + v14);
          if (v20)
          {
            goto LABEL_26;
          }

          v10[2] = v9;
        }

LABEL_5:
        v11 += 48;
        --v8;
      }

      while (v8);
    }

    v11 = v10[2];
    if (v11)
    {
      v21 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      v14 = (v10 + 4);
      v65 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
      swift_beginAccess();
      v60 = v21;
      swift_beginAccess();
      v64 = (v63 + 2);
      ++v63;
      v16 = MEMORY[0x1E69E7CC0];
      v61 = MEMORY[0x1E69E7CC0];
      v13 = v59;
      while (1)
      {
        sub_1B9F0A534(v14, v74);
        (*v64)(v7, v66 + v65, v13);
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v71[0] = sub_1BA4A2D58();
        v71[1] = v26;
        sub_1BA4A4468();
        v28 = v27;

        (*v63)(v7, v13);
        if ((v28 & 1) == 0)
        {
          break;
        }

LABEL_31:
        __swift_destroy_boxed_opaque_existential_1(v74);
        v14 += 40;
        if (!--v11)
        {
          goto LABEL_58;
        }
      }

      v62 = v16;
      sub_1B9F0A534(v74, v70);
      sub_1B9F0D950(0, &qword_1EDC6AD50);
      sub_1B9F0D950(0, &qword_1EDC66148);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(&v67, v71);
        v29 = v72;
        v30 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        if ((*(v30 + 16))(v29, v30))
        {
          __swift_project_boxed_opaque_existential_1(v71, v72);
          v15 = sub_1BA4A2D58();
          v12 = v31;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v16 = v62;
            v22 = v61;
          }

          else
          {
            v22 = sub_1BA27EE34(0, *(v61 + 2) + 1, 1, v61);
            v16 = v62;
          }

LABEL_28:
          v24 = *(v22 + 2);
          v23 = *(v22 + 3);
          if (v24 >= v23 >> 1)
          {
            v22 = sub_1BA27EE34((v23 > 1), v24 + 1, 1, v22);
          }

          *(v22 + 2) = v24 + 1;
          v61 = v22;
          v25 = &v22[16 * v24];
          *(v25 + 4) = v15;
          *(v25 + 5) = v12;
          __swift_destroy_boxed_opaque_existential_1(v71);
          goto LABEL_31;
        }

        __swift_destroy_boxed_opaque_existential_1(v71);
      }

      else
      {
        v69 = 0;
        v68 = 0u;
        v67 = 0u;
        sub_1BA0FA9CC(&v67, &qword_1EDC66140, &qword_1EDC66148, &protocol descriptor for ReloadableDataSourceItem);
      }

      sub_1B9F0A534(v74, v70);
      v32 = MEMORY[0x1E69A3348];
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v69 = 0;
        v68 = 0u;
        v67 = 0u;
        sub_1BA0FA9CC(&v67, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v32);
        goto LABEL_46;
      }

      sub_1B9F1134C(&v67, v71);
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v33 = sub_1BA4A2E58();
      v35 = v34;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v36 = sub_1BA4A2D58();
      v38 = v37;
      v39 = *(v66 + v60);
      if (*(v39 + 16))
      {
        v40 = v36;

        v41 = sub_1B9F24A34(v40, v38);
        v43 = v42;

        if (v43)
        {
          v44 = (*(v39 + 56) + 16 * v41);
          v46 = *v44;
          v45 = v44[1];

          if (v33 == v46 && v35 == v45)
          {

            v13 = v59;
LABEL_56:
            __swift_destroy_boxed_opaque_existential_1(v71);
LABEL_46:
            v16 = v62;
            __swift_project_boxed_opaque_existential_1(v74, v75);
            v47 = sub_1BA4A2D58();
            v49 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1BA27EE34(0, *(v16 + 2) + 1, 1, v16);
            }

            v51 = *(v16 + 2);
            v50 = *(v16 + 3);
            if (v51 >= v50 >> 1)
            {
              v16 = sub_1BA27EE34((v50 > 1), v51 + 1, 1, v16);
            }

            *(v16 + 2) = v51 + 1;
            v52 = &v16[16 * v51];
            *(v52 + 4) = v47;
            *(v52 + 5) = v49;
            goto LABEL_31;
          }

          v55 = sub_1BA4A8338();

          v13 = v59;
          if (v55)
          {
            goto LABEL_56;
          }
        }

        else
        {

          v13 = v59;
        }
      }

      else
      {
      }

      __swift_project_boxed_opaque_existential_1(v71, v72);
      v15 = sub_1BA4A2D58();
      v12 = v53;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v16 = v62;
      v9 = &v77;
      if (v54)
      {
        v22 = v61;
      }

      else
      {
LABEL_27:
        v22 = sub_1BA27EE34(0, *(*(v9 - 32) + 16) + 1, 1, *(v9 - 32));
      }

      goto LABEL_28;
    }

LABEL_58:

    a1 = v58;
  }

  sub_1B9F185CC(a1);
  swift_beginAccess();
  sub_1BA4A4498();

  sub_1BA4A4558();
  swift_endAccess();

  sub_1B9F18D28();
  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0E8828(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v5 = v2;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v8 + 16))(v10, v5 + v11, v7);
  v12 = a1(v7);
  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  a2(v12, v7);
  swift_endAccess();

  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0E89AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v26 = *v2;
  v27 = sub_1BA4A3EA8();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v11 + 16))(v13, v3 + v14, v10);
  v28[0] = a1;
  v28[1] = a2;
  sub_1BA4A44E8();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    sub_1BA4A3D88();

    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315650;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4EA9E0, v28);
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_1B9F0B82C(a1, a2, v28);
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] %s Failed to find section with id: %s.", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    return (*(v6 + 8))(v8, v27);
  }

  else
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BA4B5480;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    swift_beginAccess();

    sub_1BA4A4518();
    swift_endAccess();

    return sub_1BA0EF3D0();
  }
}

uint64_t sub_1BA0E8D84(unint64_t a1)
{
  v2 = v1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v20 = *(v6 + 16);
  v20(v8, v2 + v9, v5);
  v10 = sub_1BA4A4578();
  v11 = *(v6 + 8);
  v11(v8, v5);
  v12 = *(v10 + 16);

  if (v12 > a1)
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    v20(v8, v2 + v9, v5);
    v15 = sub_1BA4A4578();
    result = (v11)(v8, v5);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v15 + 16) > a1)
    {
      v16 = v15 + 16 * a1;
      v18 = *(v16 + 32);
      v17 = *(v16 + 40);

      *(v14 + 32) = v18;
      *(v14 + 40) = v17;
      swift_beginAccess();
      sub_1BA4A4518();
      swift_endAccess();

      return sub_1BA0EF3D0();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA0E8FD4(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v82 = *v2;
  v85 = sub_1BA4A3EA8();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v82 - v10;
  v12 = a1[1];
  v91 = *a1;
  v92 = v12;
  v93 = a1[2];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v14 = *(v9 + 16);
  v14(v11, &v3[v13], v8);
  v15 = sub_1BA4A4548();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v17 = v15 < a2;
  v18 = a2;
  if (v17)
  {
    v19 = a2;
    v20 = v83;
    sub_1BA4A3D88();
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89[0] = v24;
      *v23 = 136315650;
      v25 = sub_1BA4A85D8();
      v27 = sub_1B9F0B82C(v25, v26, v89);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4EAA00, v89);
      *(v23 + 22) = 2048;
      *(v23 + 24) = v19;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] %s Failed to insert a section at %ld, because it doesn't exist.", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    return (v84[1])(v20, v85);
  }

  v14(v11, &v3[v13], v8);
  v29 = sub_1BA4A4548();
  v16(v11, v8);
  v85 = v18;
  if (v29 == v18)
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BA4B5480;
    v31 = *(&v93 + 1);
    *(v30 + 32) = v93;
    *(v30 + 40) = v31;
    swift_beginAccess();

    sub_1BA4A44C8();
    swift_endAccess();
  }

  else
  {
    v14(v11, &v3[v13], v8);
    v32 = sub_1BA4A4578();
    v16(v11, v8);
    if ((v85 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    if (*(v32 + 16) <= v85)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }

    v33 = v32 + 16 * v85;
    v34 = *(v33 + 32);
    v35 = *(v33 + 40);

    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BA4B5480;
    v37 = *(&v93 + 1);
    *(v36 + 32) = v93;
    *(v36 + 40) = v37;
    *&v88 = v34;
    *(&v88 + 1) = v35;
    swift_beginAccess();

    sub_1BA4A4508();
    swift_endAccess();
  }

  v84 = v3;
  v38 = v92;
  v39 = *(v92 + 16);
  if (v39)
  {
    v85 = v13;
    *&v88 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v39, 0);
    v40 = v88;
    v41 = v38 + 32;
    do
    {
      sub_1B9F0A534(v41, v89);
      __swift_project_boxed_opaque_existential_1(v89, v90);
      v42 = sub_1BA4A2D58();
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1(v89);
      *&v88 = v40;
      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1B9F1C360((v45 > 1), v46 + 1, 1);
        v40 = v88;
      }

      *(v40 + 16) = v46 + 1;
      v47 = v40 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v41 += 40;
      --v39;
    }

    while (v39);
  }

  v48 = *(&v93 + 1);
  v49 = v93;
  v88 = v93;
  v50 = v84;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_1BA4A4448();
  swift_endAccess();

  v51 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F7D24(&v91, v89);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89[0] = *(v50 + v51);
  *(v50 + v51) = 0x8000000000000000;
  v53 = v49;
  v54 = v50;
  sub_1B9FF1718(&v91, v53, v48, isUniquelyReferenced_nonNull_native);

  *(v50 + v51) = v89[0];
  swift_endAccess();
  v55 = *(v38 + 16);
  if (v55)
  {
    v85 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    v56 = v38 + 32;
    v57 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v56, &v88);
      sub_1B9F0D950(0, &qword_1EDC6AD50);
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v86, v89);
        __swift_project_boxed_opaque_existential_1(v89, v90);
        v58 = sub_1BA4A2D58();
        v60 = v59;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        v61 = sub_1BA4A2E58();
        v63 = v62;
        v64 = v85;
        swift_beginAccess();
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *&v86[0] = *(v54 + v64);
        v66 = *&v86[0];
        *(v54 + v64) = 0x8000000000000000;
        v68 = sub_1B9F24A34(v58, v60);
        v69 = *(v66 + 16);
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v72 = v67;
        if (*(v66 + 24) >= v71)
        {
          if ((v65 & 1) == 0)
          {
            sub_1BA0F1474();
          }
        }

        else
        {
          sub_1B9F24AAC(v71, v65);
          v73 = sub_1B9F24A34(v58, v60);
          if ((v72 & 1) != (v74 & 1))
          {
            goto LABEL_38;
          }

          v68 = v73;
        }

        v75 = *&v86[0];
        if (v72)
        {
          v76 = (*(*&v86[0] + 56) + 16 * v68);
          *v76 = v61;
          v76[1] = v63;
        }

        else
        {
          *(*&v86[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
          v77 = (v75[6] + 16 * v68);
          *v77 = v58;
          v77[1] = v60;
          v78 = (v75[7] + 16 * v68);
          *v78 = v61;
          v78[1] = v63;
          v79 = v75[2];
          v80 = __OFADD__(v79, 1);
          v81 = v79 + 1;
          if (v80)
          {
            goto LABEL_35;
          }

          v75[2] = v81;
        }

        v54 = v84;
        *(v84 + v85) = v75;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(v89);
        v57 = MEMORY[0x1E69A3348];
      }

      else
      {
        v87 = 0;
        memset(v86, 0, sizeof(v86));
        sub_1BA0FA9CC(v86, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v57);
      }

      v56 += 40;
      --v55;
    }

    while (v55);
  }

  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0E9994(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v72 = *v4;
  v73 = sub_1BA4A3EA8();
  v8 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v70 - v14;
  v16 = a1[1];
  v80 = *a1;
  v81 = v16;
  v82 = a1[2];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v13 + 16))(v15, &v4[v17], v12);
  v78[0] = a2;
  v78[1] = a3;
  sub_1BA4A44E8();
  LOBYTE(a1) = v18;
  (*(v13 + 8))(v15, v12);
  if (a1)
  {
    sub_1BA4A3D88();

    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v78[0] = v22;
      *v21 = 136315650;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, v78);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1B9F0B82C(0xD00000000000001ELL, 0x80000001BA4EAA20, v78);
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1B9F0B82C(a2, a3, v78);
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] %s Failed to insert a section with id: %s, because it doesn't exist.", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    return (*(v8 + 8))(v10, v73);
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5480;
  v28 = *(&v82 + 1);
  v29 = v82;
  *(v27 + 32) = v82;
  *(v27 + 40) = v28;
  v76 = a2;
  v77 = a3;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v72 = v4;
  sub_1BA4A4508();
  swift_endAccess();

  v30 = v81;
  v31 = *(v81 + 16);
  if (v31)
  {
    v71 = v29;
    v73 = v28;
    v76 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v31, 0);
    v32 = v76;
    v70 = v30;
    v33 = v30 + 32;
    do
    {
      sub_1B9F0A534(v33, v78);
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v34 = sub_1BA4A2D58();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1(v78);
      v76 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B9F1C360((v37 > 1), v38 + 1, 1);
        v32 = v76;
      }

      *(v32 + 16) = v38 + 1;
      v39 = v32 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v33 += 40;
      --v31;
    }

    while (v31);
    v28 = v73;
    v29 = v71;
    v30 = v70;
  }

  v76 = v29;
  v77 = v28;
  v40 = v72;
  swift_beginAccess();
  sub_1BA4A4448();
  swift_endAccess();

  v41 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F7D24(&v80, v78);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *(v40 + v41);
  *(v40 + v41) = 0x8000000000000000;
  sub_1B9FF1718(&v80, v29, v28, isUniquelyReferenced_nonNull_native);

  *(v40 + v41) = v78[0];
  swift_endAccess();
  v43 = *(v30 + 16);
  if (!v43)
  {
    return sub_1BA0EF3D0();
  }

  v73 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v44 = v30 + 32;
  v45 = MEMORY[0x1E69A3348];
  while (1)
  {
    sub_1B9F0A534(v44, &v76);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v75 = 0;
      memset(v74, 0, sizeof(v74));
      sub_1BA0FA9CC(v74, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v45);
      goto LABEL_14;
    }

    sub_1B9F1134C(v74, v78);
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v46 = sub_1BA4A2D58();
    v48 = v47;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v49 = sub_1BA4A2E58();
    v51 = v50;
    v52 = v73;
    swift_beginAccess();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v74[0] = *(v40 + v52);
    v54 = *&v74[0];
    *(v40 + v52) = 0x8000000000000000;
    v56 = sub_1B9F24A34(v46, v48);
    v57 = *(v54 + 16);
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (*(v54 + 24) >= v59)
    {
      if ((v53 & 1) == 0)
      {
        sub_1BA0F1474();
      }
    }

    else
    {
      sub_1B9F24AAC(v59, v53);
      v61 = sub_1B9F24A34(v46, v48);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_30;
      }

      v56 = v61;
    }

    v63 = *&v74[0];
    if (v60)
    {
      v64 = (*(*&v74[0] + 56) + 16 * v56);
      *v64 = v49;
      v64[1] = v51;
    }

    else
    {
      *(*&v74[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
      v65 = (v63[6] + 16 * v56);
      *v65 = v46;
      v65[1] = v48;
      v66 = (v63[7] + 16 * v56);
      *v66 = v49;
      v66[1] = v51;
      v67 = v63[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_29;
      }

      v63[2] = v69;
    }

    v40 = v72;
    *(v72 + v73) = v63;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v78);
    v45 = MEMORY[0x1E69A3348];
LABEL_14:
    v44 += 40;
    if (!--v43)
    {
      return sub_1BA0EF3D0();
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0EA210(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v72 = *v4;
  v73 = sub_1BA4A3EA8();
  v8 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v70 - v14;
  v16 = a1[1];
  v80 = *a1;
  v81 = v16;
  v82 = a1[2];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v13 + 16))(v15, &v4[v17], v12);
  v78[0] = a2;
  v78[1] = a3;
  sub_1BA4A44E8();
  LOBYTE(a1) = v18;
  (*(v13 + 8))(v15, v12);
  if (a1)
  {
    sub_1BA4A3D88();

    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v78[0] = v22;
      *v21 = 136315650;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, v78);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4EAA40, v78);
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1B9F0B82C(a2, a3, v78);
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] %s Failed to insert a section after section with id: %s, because it doesn't exist.", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    return (*(v8 + 8))(v10, v73);
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5480;
  v28 = *(&v82 + 1);
  v29 = v82;
  *(v27 + 32) = v82;
  *(v27 + 40) = v28;
  v76 = a2;
  v77 = a3;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v72 = v4;
  sub_1BA4A44F8();
  swift_endAccess();

  v30 = v81;
  v31 = *(v81 + 16);
  if (v31)
  {
    v71 = v29;
    v73 = v28;
    v76 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v31, 0);
    v32 = v76;
    v70 = v30;
    v33 = v30 + 32;
    do
    {
      sub_1B9F0A534(v33, v78);
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v34 = sub_1BA4A2D58();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1(v78);
      v76 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B9F1C360((v37 > 1), v38 + 1, 1);
        v32 = v76;
      }

      *(v32 + 16) = v38 + 1;
      v39 = v32 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v33 += 40;
      --v31;
    }

    while (v31);
    v28 = v73;
    v29 = v71;
    v30 = v70;
  }

  v76 = v29;
  v77 = v28;
  v40 = v72;
  swift_beginAccess();
  sub_1BA4A4448();
  swift_endAccess();

  v41 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F7D24(&v80, v78);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *(v40 + v41);
  *(v40 + v41) = 0x8000000000000000;
  sub_1B9FF1718(&v80, v29, v28, isUniquelyReferenced_nonNull_native);

  *(v40 + v41) = v78[0];
  swift_endAccess();
  v43 = *(v30 + 16);
  if (!v43)
  {
    return sub_1BA0EF3D0();
  }

  v73 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v44 = v30 + 32;
  v45 = MEMORY[0x1E69A3348];
  while (1)
  {
    sub_1B9F0A534(v44, &v76);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v75 = 0;
      memset(v74, 0, sizeof(v74));
      sub_1BA0FA9CC(v74, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v45);
      goto LABEL_14;
    }

    sub_1B9F1134C(v74, v78);
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v46 = sub_1BA4A2D58();
    v48 = v47;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v49 = sub_1BA4A2E58();
    v51 = v50;
    v52 = v73;
    swift_beginAccess();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v74[0] = *(v40 + v52);
    v54 = *&v74[0];
    *(v40 + v52) = 0x8000000000000000;
    v56 = sub_1B9F24A34(v46, v48);
    v57 = *(v54 + 16);
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (*(v54 + 24) >= v59)
    {
      if ((v53 & 1) == 0)
      {
        sub_1BA0F1474();
      }
    }

    else
    {
      sub_1B9F24AAC(v59, v53);
      v61 = sub_1B9F24A34(v46, v48);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_30;
      }

      v56 = v61;
    }

    v63 = *&v74[0];
    if (v60)
    {
      v64 = (*(*&v74[0] + 56) + 16 * v56);
      *v64 = v49;
      v64[1] = v51;
    }

    else
    {
      *(*&v74[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
      v65 = (v63[6] + 16 * v56);
      *v65 = v46;
      v65[1] = v48;
      v66 = (v63[7] + 16 * v56);
      *v66 = v49;
      v66[1] = v51;
      v67 = v63[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_29;
      }

      v63[2] = v69;
    }

    v40 = v72;
    *(v72 + v73) = v63;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v78);
    v45 = MEMORY[0x1E69A3348];
LABEL_14:
    v44 += 40;
    if (!--v43)
    {
      return sub_1BA0EF3D0();
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA0EAA8C(uint64_t a1)
{
  v2 = v1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7 + 16;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v11;
  v17 = v9;
  v18 = v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v12, v5);
  v13 = sub_1BA4A4548();
  (*(v6 + 8))(v8, v5);
  return sub_1BA0E8FD4(v16, v13);
}

uint64_t sub_1BA0EABE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v57 = *v2;
  v58 = sub_1BA4A3EA8();
  v6 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v11 + 16))(v13, v3 + v14, v10);
  v62 = a1;
  v63 = a2;
  sub_1BA4A44E8();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    sub_1BA4A3D88();

    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v62 = v20;
      *v19 = 136315650;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, &v62);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1B9F0B82C(0xD00000000000001ALL, 0x80000001BA4EAA60, &v62);
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_1B9F0B82C(a1, a2, &v62);
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] %s Failed to remove a section with id: %s, because it doesn't exist.", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    return (*(v6 + 8))(v8, v58);
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;
  swift_beginAccess();

  sub_1BA4A44D8();
  swift_endAccess();

  v26 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  sub_1BA0F6560(a1, a2, &v62);
  v27 = v62;
  v28 = v63;
  v29 = v64;
  swift_endAccess();
  sub_1BA0F7D80(v27, v28, v29);
  v30 = *(v3 + v26);
  v31 = *(v30 + 16);
  v58 = v3;
  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = sub_1B9F24A34(a1, a2);
  if ((v33 & 1) == 0)
  {

LABEL_10:
    v38 = 0;
    v39 = 0;
LABEL_11:
    sub_1BA0F7D80(v38, v39, 0);
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v34 = (*(v30 + 56) + 48 * v32);
  v35 = *v34;
  v36 = v34[2];
  v37 = v34[1];

  if (!v36)
  {
    v38 = v35;
    v39 = v37;
    goto LABEL_11;
  }

  sub_1BA0F7D80(v35, v37, v36);
LABEL_12:
  v57 = v36;
  v40 = *(v36 + 16);
  if (v40)
  {
    v41 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    v42 = v57 + 32;
    v43 = &qword_1EDC6AD50;
    v44 = MEMORY[0x1E69A3310];
    v45 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v42, v61);
      sub_1B9F0D950(0, v43);
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      if (swift_dynamicCast())
      {
        v46 = v44;
        v47 = v43;
        sub_1B9F1134C(v59, &v62);
        __swift_project_boxed_opaque_existential_1(&v62, v65);
        v48 = sub_1BA4A2D58();
        v50 = v49;
        swift_beginAccess();
        v51 = sub_1B9F24A34(v48, v50);
        v53 = v52;

        if (v53)
        {
          v54 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = *(v54 + v41);
          *&v59[0] = v56;
          *(v54 + v41) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BA0F1474();
            v56 = *&v59[0];
          }

          sub_1BA0F6A1C(v51, v56);
          *(v54 + v41) = v56;
        }

        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v62);
        v43 = v47;
        v44 = v46;
        v45 = MEMORY[0x1E69A3348];
      }

      else
      {
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        sub_1BA0FA9CC(v59, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v45);
      }

      v42 += 40;
      --v40;
    }

    while (v40);
  }

  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0EB2C0(uint64_t a1)
{
  v2 = v1;
  v28 = *v1;
  v4 = sub_1BA4A3EA8();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v10, &v2[v11], v7);
  v13 = sub_1BA4A4548();
  v14 = *(v8 + 8);
  v14(v10, v7);
  if (v13 <= a1)
  {
    v20 = v29;
    sub_1BA4A3D88();
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315650;
      v25 = sub_1BA4A85D8();
      v27 = sub_1B9F0B82C(v25, v26, &v32);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4EAA80, &v32);
      *(v23 + 22) = 2048;
      *(v23 + 24) = a1;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] %s Failed to remove a section at %ld, because it doesn't exist.", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    return (*(v30 + 8))(v20, v31);
  }

  else
  {
    v12(v10, &v2[v11], v7);
    v15 = sub_1BA4A4578();
    result = (v14)(v10, v7);
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*(v15 + 16) > a1)
    {
      v17 = v15 + 16 * a1;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);

      sub_1BA0EABE4(v18, v19);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA0EB668(int64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v47 = *v3;
  v48 = a2;
  v6 = sub_1BA4A3EA8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BA4A1798();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42[-v13];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v16 = *(v12 + 16);
  v16(v14, &v4[v15], v11);
  v17 = sub_1BA4A4548();
  v18 = *(v12 + 8);
  v18(v14, v11);
  v19 = v17 < a1;
  v20 = a1;
  if (!v19)
  {
    v16(v14, &v4[v15], v11);
    v30 = sub_1BA4A4548();
    v18(v14, v11);
    if (v30 == v20)
    {
      v31 = v44;
      sub_1BA4A1788();
      v32 = sub_1BA4A1748();
      v34 = v33;
      (*(v45 + 8))(v31, v46);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
      v35 = v48;

      v37 = Array<A>.identifierToIndexDict()(v36);

      v52 = 0uLL;
      v53 = v35;
      v54 = v37;
      v55 = v32;
      v56 = v34;
      sub_1BA0E8FD4(&v52, v20);
    }

    v16(v14, &v4[v15], v11);
    v38 = sub_1BA4A4578();
    result = (v18)(v14, v11);
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v38 + 16) > v20)
    {
      v39 = v38 + 16 * v20;
      v40 = *(v39 + 32);
      v41 = *(v39 + 40);

      sub_1BA0EBB7C(v40, v41, v48, v43 & 1);
    }

    __break(1u);
    return result;
  }

  v21 = v49;
  sub_1BA4A3D88();
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v52 = v25;
    *v24 = 136315650;
    v26 = sub_1BA4A85D8();
    v28 = sub_1B9F0B82C(v26, v27, &v52);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1B9F0B82C(0xD00000000000003ELL, 0x80000001BA4EAAA0, &v52);
    *(v24 + 22) = 2048;
    *(v24 + 24) = v20;
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] %s Failed to replace items at section with index %ld, because it doesn't exist.", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    MEMORY[0x1BFAF43A0](v24, -1, -1);
  }

  return (*(v50 + 8))(v21, v51);
}

uint64_t sub_1BA0EBB7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v155) = a4;
  v152 = a3;
  v160 = *v4;
  v8 = sub_1BA4A3EA8();
  v162 = *(v8 - 8);
  v163 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v148 - v13;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v16 = v12 + 16;
  v17 = *(v12 + 16);
  v17(v14, &v5[v15], v11);
  v158 = a1;
  v172 = a1;
  v173 = a2;
  v154 = a2;
  sub_1BA4A44E8();
  LOBYTE(a2) = v18;
  v21 = *(v12 + 8);
  v19 = v12 + 8;
  v20 = v21;
  (v21)(v14, v11);
  if (a2)
  {
    v22 = v158;
    v23 = v161;
    sub_1BA4A3D88();
    v24 = v154;

    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v172 = v28;
      *v27 = 136315650;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v172);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1B9F0B82C(0xD000000000000045, 0x80000001BA4EAAE0, &v172);
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_1B9F0B82C(v22, v24, &v172);
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] %s Failed to replace items at section with id: %s, because it doesn't exist.", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    return (*(v162 + 8))(v23, v163);
  }

  v157 = v15;
  v159 = v17;
  v17(v14, &v5[v15], v11);
  v33 = v158;
  v172 = v158;
  v173 = v154;
  v151 = sub_1BA4A4528();
  v160 = v14;
  v162 = v19;
  (v20)(v14, v11);
  v163 = v5;
  v161 = v11;
  v34 = v20;
  v35 = v5;
  v36 = v33;
  if (v155)
  {
    v37 = *(v152 + 16);
    if (v37)
    {
      v38 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      v39 = v152 + 32;
      v155 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
      swift_beginAccess();
      v149 = v38;
      swift_beginAccess();
      v150 = xmmword_1BA4B5480;
      v153 = v16;
      v156 = v34;
      while (1)
      {
        sub_1B9F0A534(v39, &v172);
        __swift_project_boxed_opaque_existential_1(&v172, v174);
        v40 = sub_1BA4A2D58();
        v42 = v41;
        v43 = v160;
        v159(v160, &v35[v157], v11);
        *&v164[0] = v40;
        *(&v164[0] + 1) = v42;
        sub_1BA4A4568();
        (v156)(v43, v11);
        v44 = *(&v166 + 1);
        if (!*(&v166 + 1))
        {

LABEL_9:
          v171 = 0;
          v169 = 0u;
          v170 = 0u;
          v36 = v158;
          goto LABEL_10;
        }

        v45 = *&v35[v155];
        if (!*(v45 + 16) || (v46 = v166, , v47 = sub_1B9F24A34(v46, v44), v49 = v48, , (v49 & 1) == 0))
        {

          v11 = v161;
          goto LABEL_9;
        }

        v50 = *(v45 + 56) + 48 * v47;
        v51 = *(v50 + 16);
        v52 = *(v50 + 24);

        if (!*(v52 + 16))
        {
          break;
        }

        v53 = sub_1B9F24A34(v40, v42);
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          goto LABEL_23;
        }

        v56 = *(*(v52 + 56) + 8 * v53);
        if ((v56 & 0x8000000000000000) != 0)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          result = sub_1BA4A83B8();
          __break(1u);
          return result;
        }

        v11 = v161;
        if (v56 >= *(v51 + 16))
        {
          goto LABEL_85;
        }

        sub_1B9F0A534(v51 + 40 * v56 + 32, &v169);

LABEL_24:

        v36 = v158;
        v35 = v163;
        if (*(&v170 + 1))
        {
          sub_1BA0FA9CC(&v169, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
          sub_1B9F0A534(&v172, &v166);
          sub_1B9F0D950(0, &qword_1EDC6AD50);
          v57 = MEMORY[0x1E69A3348];
          sub_1B9F0D950(0, &qword_1EDC6E1B0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v165 = 0;
            memset(v164, 0, sizeof(v164));
            sub_1BA0FA9CC(v164, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v57);
            goto LABEL_32;
          }

          sub_1B9F1134C(v164, &v169);
          __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
          v58 = sub_1BA4A2E58();
          v60 = v59;
          __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
          v61 = sub_1BA4A2D58();
          v63 = v62;
          v64 = *&v35[v149];
          if (*(v64 + 16) && (v65 = v61, , v66 = sub_1B9F24A34(v65, v63), v68 = v67, , (v68 & 1) != 0))
          {
            v69 = (*(v64 + 56) + 16 * v66);
            v71 = *v69;
            v70 = v69[1];

            if (v58 == v71 && v60 == v70)
            {

              goto LABEL_37;
            }

            v76 = sub_1BA4A8338();

            if (v76)
            {
LABEL_37:
              __swift_destroy_boxed_opaque_existential_1(&v169);
LABEL_32:
              sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
              v72 = swift_allocObject();
              *(v72 + 16) = v150;
              __swift_project_boxed_opaque_existential_1(&v172, v174);
              *(v72 + 32) = sub_1BA4A2D58();
              *(v72 + 40) = v73;
              swift_beginAccess();
              v11 = v161;
              sub_1BA4A4558();
              swift_endAccess();

LABEL_35:
              v36 = v158;
              goto LABEL_11;
            }
          }

          else
          {
          }

          sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v74 = swift_allocObject();
          *(v74 + 16) = v150;
          __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
          *(v74 + 32) = sub_1BA4A2D58();
          *(v74 + 40) = v75;
          swift_beginAccess();
          v11 = v161;
          sub_1BA4A4498();
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_1(&v169);
          goto LABEL_35;
        }

LABEL_10:
        sub_1BA0FA9CC(&v169, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(&v172);
        v39 += 40;
        if (!--v37)
        {
          goto LABEL_38;
        }
      }

LABEL_23:
      v171 = 0;
      v169 = 0u;
      v170 = 0u;

      v11 = v161;
      goto LABEL_24;
    }
  }

LABEL_38:
  v77 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  v78 = *&v35[v77];
  if (!*(v78 + 16))
  {
    goto LABEL_43;
  }

  v79 = sub_1B9F24A34(v36, v154);
  if ((v80 & 1) == 0)
  {

LABEL_43:
    v85 = 0;
    v86 = 0;
LABEL_44:
    sub_1BA0F7D80(v85, v86, 0);
    v83 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v81 = (*(v78 + 56) + 48 * v79);
  v82 = *v81;
  v83 = v81[2];
  v84 = v81[1];

  if (!v83)
  {
    v85 = v82;
    v86 = v84;
    goto LABEL_44;
  }

  sub_1BA0F7D80(v82, v84, v83);
LABEL_45:
  v162 = v83;
  v87 = *(v83 + 16);
  if (v87)
  {
    v88 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    v89 = v162 + 32;
    v90 = &qword_1EDC6AD50;
    v91 = MEMORY[0x1E69A3310];
    v92 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v89, &v169);
      sub_1B9F0D950(0, v90);
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(&v166, &v172);
        __swift_project_boxed_opaque_existential_1(&v172, v174);
        v93 = sub_1BA4A2D58();
        v95 = v94;
        swift_beginAccess();
        v96 = sub_1B9F24A34(v93, v95);
        v98 = v97;

        if (v98)
        {
          v99 = v91;
          v100 = v90;
          v101 = v163;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = *(v101 + v88);
          *&v166 = v103;
          *(v101 + v88) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BA0F1474();
            v103 = v166;
          }

          sub_1BA0F6A1C(v96, v103);
          *(v101 + v88) = v103;
          v90 = v100;
          v91 = v99;
        }

        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v172);
        v92 = MEMORY[0x1E69A3348];
      }

      else
      {
        v168 = 0;
        v166 = 0u;
        v167 = 0u;
        sub_1BA0FA9CC(&v166, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v92);
      }

      v89 += 40;
      --v87;
    }

    while (v87);
  }

  v104 = *(v152 + 16);
  if (!v104)
  {
    swift_beginAccess();
    sub_1BA4A4458();
    swift_endAccess();

    v142 = v154;
    goto LABEL_78;
  }

  v162 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v105 = v152 + 32;
  v106 = v152 + 32;
  v156 = v104;
  v107 = v163;
  do
  {
    sub_1B9F0A534(v106, &v169);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    v108 = MEMORY[0x1E69A3348];
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v168 = 0;
      v166 = 0u;
      v167 = 0u;
      sub_1BA0FA9CC(&v166, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v108);
      goto LABEL_58;
    }

    sub_1B9F1134C(&v166, &v172);
    __swift_project_boxed_opaque_existential_1(&v172, v174);
    v109 = sub_1BA4A2D58();
    v110 = v107;
    v112 = v111;
    __swift_project_boxed_opaque_existential_1(&v172, v174);
    v159 = sub_1BA4A2E58();
    v160 = v113;
    v114 = v162;
    swift_beginAccess();
    v115 = swift_isUniquelyReferenced_nonNull_native();
    *&v166 = *(v110 + v114);
    v116 = v166;
    *(v110 + v114) = 0x8000000000000000;
    v118 = sub_1B9F24A34(v109, v112);
    v119 = *(v116 + 16);
    v120 = (v117 & 1) == 0;
    v121 = v119 + v120;
    if (__OFADD__(v119, v120))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v122 = v117;
    if (*(v116 + 24) >= v121)
    {
      if (v115)
      {
        v125 = v166;
        if ((v117 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        sub_1BA0F1474();
        v125 = v166;
        if ((v122 & 1) == 0)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      sub_1B9F24AAC(v121, v115);
      v123 = sub_1B9F24A34(v109, v112);
      if ((v122 & 1) != (v124 & 1))
      {
        goto LABEL_86;
      }

      v118 = v123;
      v125 = v166;
      if ((v122 & 1) == 0)
      {
LABEL_69:
        v125[(v118 >> 6) + 8] |= 1 << v118;
        v128 = (v125[6] + 16 * v118);
        *v128 = v109;
        v128[1] = v112;
        v129 = (v125[7] + 16 * v118);
        v130 = v160;
        *v129 = v159;
        v129[1] = v130;
        v131 = v125[2];
        v132 = __OFADD__(v131, 1);
        v133 = v131 + 1;
        if (v132)
        {
          goto LABEL_83;
        }

        v125[2] = v133;
        goto LABEL_71;
      }
    }

    v126 = (v125[7] + 16 * v118);
    v127 = v160;
    *v126 = v159;
    v126[1] = v127;

LABEL_71:
    v107 = v163;
    *(v163 + v162) = v125;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v172);
LABEL_58:
    v106 += 40;
    --v104;
  }

  while (v104);
  swift_beginAccess();
  sub_1BA4A4458();
  swift_endAccess();

  *&v169 = MEMORY[0x1E69E7CC0];
  v134 = v156;
  sub_1B9F1C360(0, v156, 0);
  v135 = v169;
  do
  {
    sub_1B9F0A534(v105, &v172);
    __swift_project_boxed_opaque_existential_1(&v172, v174);
    v136 = sub_1BA4A2D58();
    v138 = v137;
    __swift_destroy_boxed_opaque_existential_1(&v172);
    *&v169 = v135;
    v140 = *(v135 + 16);
    v139 = *(v135 + 24);
    if (v140 >= v139 >> 1)
    {
      sub_1B9F1C360((v139 > 1), v140 + 1, 1);
      v135 = v169;
    }

    *(v135 + 16) = v140 + 1;
    v141 = v135 + 16 * v140;
    *(v141 + 32) = v136;
    *(v141 + 40) = v138;
    v105 += 40;
    --v134;
  }

  while (v134);
  v142 = v154;
LABEL_78:
  v143 = v158;
  *&v169 = v158;
  *(&v169 + 1) = v142;
  swift_beginAccess();

  sub_1BA4A4448();
  swift_endAccess();

  v144 = sub_1BA0E7AC0();
  v146 = sub_1BA0F0994(&v169, v143, v142);
  if (*(v145 + 16))
  {
    *(v145 + 16) = v152;
    v147 = v145;

    *(v147 + 24) = Array<A>.identifierToIndexDict()(*(v147 + 16));
  }

  (v146)(&v169, 0);
  (v144)(&v172, 0);
  return sub_1BA0EF3D0();
}

unint64_t sub_1BA0ECD0C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1BA0F91A8(v6, a2, v2, v4, v5);
}

uint64_t sub_1BA0ECD60(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v57 = a1;
  v55 = *v3;
  v60 = sub_1BA4A3EA8();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v62 = sub_1BA4A1998();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v17 = *(v13 + 16);
  v63 = v4;
  v17(v15, &v4[v16], v12);
  v18 = a2;
  v19 = v64;
  v67 = a2;
  v68 = v64;
  sub_1BA4A4568();
  v20 = *(v13 + 8);
  v20(v15, v12);
  if (!v70)
  {
    v21 = v18;
    goto LABEL_5;
  }

  v56 = v70;
  v53 = v69;
  v17(v15, &v63[v16], v12);
  v21 = v18;
  sub_1BA0F00FC(v9);
  v20(v15, v12);
  v22 = v61;
  v23 = v62;
  if ((*(v61 + 48))(v9, 1, v62) == 1)
  {

    sub_1BA0FAAA0(v9);
LABEL_5:
    v24 = v58;
    sub_1BA4A3D88();

    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69 = v28;
      *v27 = 136315650;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v69);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4EAB30, &v69);
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_1B9F0B82C(v21, v19, &v69);
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] %s Failed to insert item before item with id: %s, because it doesn't exist.", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    return (*(v59 + 8))(v24, v60);
  }

  v33 = v54;
  (*(v22 + 32))(v54, v9, v23);
  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BA4B5480;
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  *(v34 + 32) = sub_1BA4A2D58();
  *(v34 + 40) = v35;
  v67 = v21;
  v68 = v19;
  v36 = v63;
  swift_beginAccess();
  sub_1BA4A4478();
  swift_endAccess();

  v37 = sub_1BA0E7AC0();
  v39 = sub_1BA0F0994(v65, v53, v56);
  v40 = v38 + 16;
  if (!*(v38 + 16))
  {
    (v39)(v65, 0);

    (v37)(&v67, 0);
    v43 = v57;
    goto LABEL_13;
  }

  v41 = v38;
  result = sub_1BA4A1958();
  if (*(*v40 + 16) < result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v42 = result;
  v43 = v57;
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_1B9F0A534(v57, &v69);
  sub_1BA0F1388(v42, v42, &v69, sub_1B9F281E8, sub_1BA170264);
  *(v41 + 24) = Array<A>.identifierToIndexDict()(*(v41 + 16));

  (v39)(v65, 0);

  (v37)(&v67, 0);
LABEL_13:
  sub_1B9F0A534(v43, &v67);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v65, &v69);
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    v44 = sub_1BA4A2D58();
    v46 = v45;
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    v47 = sub_1BA4A2E58();
    v49 = v48;
    v50 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65[0] = *(v36 + v50);
    *(v36 + v50) = 0x8000000000000000;
    sub_1B9F248E4(v47, v49, v44, v46, isUniquelyReferenced_nonNull_native);

    *(v36 + v50) = *&v65[0];
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v69);
  }

  else
  {
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    sub_1BA0FA9CC(v65, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  v52 = v61;
  sub_1BA0EF3D0();
  return (*(v52 + 8))(v33, v62);
}

uint64_t sub_1BA0ED648(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v57 = a1;
  v55 = *v3;
  v60 = sub_1BA4A3EA8();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v62 = sub_1BA4A1998();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v17 = *(v13 + 16);
  v63 = v4;
  v17(v15, &v4[v16], v12);
  v18 = a2;
  v19 = v64;
  v67 = a2;
  v68 = v64;
  sub_1BA4A4568();
  v20 = *(v13 + 8);
  v20(v15, v12);
  if (!v70)
  {
    v21 = v18;
    goto LABEL_5;
  }

  v56 = v70;
  v53 = v69;
  v17(v15, &v63[v16], v12);
  v21 = v18;
  sub_1BA0F00FC(v9);
  v20(v15, v12);
  v22 = v61;
  v23 = v62;
  if ((*(v61 + 48))(v9, 1, v62) == 1)
  {

    sub_1BA0FAAA0(v9);
LABEL_5:
    v24 = v58;
    sub_1BA4A3D88();

    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69 = v28;
      *v27 = 136315650;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v69);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4EAB50, &v69);
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_1B9F0B82C(v21, v19, &v69);
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] %s Failed to insert item after item with id: %s, because it doesn't exist.", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    return (*(v59 + 8))(v24, v60);
  }

  v33 = v54;
  (*(v22 + 32))(v54, v9, v23);
  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BA4B5480;
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  *(v34 + 32) = sub_1BA4A2D58();
  *(v34 + 40) = v35;
  v67 = v21;
  v68 = v19;
  v36 = v63;
  swift_beginAccess();
  sub_1BA4A4488();
  swift_endAccess();

  v37 = sub_1BA0E7AC0();
  v39 = sub_1BA0F0994(v65, v53, v56);
  v40 = v38 + 16;
  if (!*(v38 + 16))
  {
    (v39)(v65, 0);

    (v37)(&v67, 0);
    v43 = v57;
    goto LABEL_14;
  }

  v41 = v38;
  result = sub_1BA4A1958();
  v42 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v43 = v57;
  if (*(*v40 + 16) < v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v42 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  sub_1B9F0A534(v57, &v69);
  sub_1BA0F1388(v42, v42, &v69, sub_1B9F281E8, sub_1BA170264);
  *(v41 + 24) = Array<A>.identifierToIndexDict()(*(v41 + 16));

  (v39)(v65, 0);

  (v37)(&v67, 0);
LABEL_14:
  sub_1B9F0A534(v43, &v67);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v65, &v69);
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    v44 = sub_1BA4A2D58();
    v46 = v45;
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    v47 = sub_1BA4A2E58();
    v49 = v48;
    v50 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65[0] = *(v36 + v50);
    *(v36 + v50) = 0x8000000000000000;
    sub_1B9F248E4(v47, v49, v44, v46, isUniquelyReferenced_nonNull_native);

    *(v36 + v50) = *&v65[0];
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v69);
  }

  else
  {
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    sub_1BA0FA9CC(v65, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  v52 = v61;
  sub_1BA0EF3D0();
  return (*(v52 + 8))(v33, v62);
}