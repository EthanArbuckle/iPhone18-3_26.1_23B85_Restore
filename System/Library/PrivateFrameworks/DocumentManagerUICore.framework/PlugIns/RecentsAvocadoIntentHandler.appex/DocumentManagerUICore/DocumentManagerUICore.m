void sub_10000182C(char *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = sub_100005014();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005044();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup];
  dispatch_group_enter(v13);
  v14 = a1;
  sub_100004560(v14);

  dispatch_group_enter(v13);
  v15 = v14;
  sub_1000048D8(v15);

  dispatch_group_enter(v13);
  v16 = *&v15[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favoritesSource];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = v15;
  sub_100002F20(sub_100004D94, v17);

  dispatch_group_enter(v13);
  v19 = DOCIntentLocationTypeCustomFolder;
  v20 = _DocumentManagerBundle();
  if (v20)
  {
    v21 = v20;
    v32._countAndFlagsBits = 0x8000000100005D70;
    v40._countAndFlagsBits = 0x7265646C6F46;
    v41._countAndFlagsBits = 0x617A696C61636F4CLL;
    v41._object = 0xEB00000000656C62;
    v40._object = 0xE600000000000000;
    v22.super.isa = v21;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    sub_100004FD4(v40, v41, v22, v42, v32);

    v23 = sub_100005054();

    v24 = [objc_opt_self() intentLocationWithIdentifier:v19 displayString:v23 type:v19];

    sub_100003B44(&qword_10000CE68, &qword_100005A38);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000058D0;
    *(v25 + 32) = v24;
    v26 = v24;
    sub_100001F78(v25, v18, &OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_customFolder, "provideLocationOptionsCollection() received %ld custom location item. Error: %s");

    v27 = *&v18[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchQueue];
    v28 = swift_allocObject();
    v29 = v34;
    v28[2] = v18;
    v28[3] = v29;
    v28[4] = a3;
    aBlock[4] = sub_100004DDC;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004F90;
    aBlock[3] = &unk_100008698;
    v30 = _Block_copy(aBlock);
    v31 = v18;

    sub_100005024();
    v38 = _swiftEmptyArrayStorage;
    sub_100003BD4(&qword_10000CE28, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003B44(&qword_10000CE30, &qword_100005A28);
    sub_100003C1C(&qword_10000CE38, &qword_10000CE30, &qword_100005A28);
    sub_100005114();
    sub_1000050A4();
    _Block_release(v30);
    (*(v37 + 8))(v8, v5);
    (*(v35 + 8))(v12, v36);
  }

  else
  {

    __break(1u);
  }
}

void sub_100001CEC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_100005004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites;
  v12 = *&a3[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites];
  *&a3[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites] = a1;

  sub_100004FE4();
  v13 = a3;
  swift_errorRetain();
  v14 = sub_100004FF4();
  v15 = sub_100005094();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v13;
    v27 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 134218242;
    v19 = *&a3[v11];
    if (v19 >> 62)
    {
      if (v19 < 0)
      {
        v26 = *&a3[v11];
      }

      v20 = sub_1000051A4();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v16;
    *(v17 + 4) = v20;

    *(v17 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v22 = sub_1000051B4();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_100003C70(v22, v24, &v28);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "provideLocationOptionsCollection() received %ld favorites. Error: %s", v17, 0x16u);
    sub_100004DE8(v18);

    (*(v7 + 8))(v10, v27);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    v21 = v13;
  }

  dispatch_group_leave(*&v21[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup]);
}

void sub_100001F78(uint64_t a1, char *a2, uint64_t *a3, const char *a4)
{
  v8 = sub_100005004();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *&a2[*a3];
  *&a2[*a3] = a1;

  sub_100004FE4();
  v15 = a2;
  swift_errorRetain();
  v16 = sub_100004FF4();
  v17 = sub_100005094();

  if (os_log_type_enabled(v16, v17))
  {
    v24 = a4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 134218242;
    v20 = *&a2[v13];
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v23 = *&a2[v13];
      }

      v21 = sub_1000051A4();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v21;

    *(v18 + 12) = 2080;
    v22 = sub_100003C70(7104878, 0xE300000000000000, &v25);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, v24, v18, 0x16u);
    sub_100004DE8(v19);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
  dispatch_group_leave(*&v15[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup]);
}

void sub_1000021AC(void *a1, void (*a2)(id, void), uint64_t a3)
{
  v63 = a3;
  v64 = a2;
  v4 = sub_100005004();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004FE4();
  v9 = a1;
  v10 = sub_100004FF4();
  v11 = sub_100005094();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218496;
    v13 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations);
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v56 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations);
      }

      v14 = sub_1000051A4();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v14;
    *(v12 + 12) = 2048;
    v15 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v57 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites);
      }

      v16 = sub_1000051A4();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    v17 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags);
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v58 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags);
      }

      v18 = sub_1000051A4();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 24) = v18;

    _os_log_impl(&_mh_execute_header, v10, v11, "provideLocationOptionsCollection() received %ld default locations %ld favorites and %ld tags.", v12, 0x20u);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v8, v4);
  sub_100003B44(&qword_10000CE68, &qword_100005A38);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000058E0;
  v20 = _DocumentManagerBundle();
  if (!v20)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  v69._object = 0xEB00000000656C62;
  v59._countAndFlagsBits = 0x8000000100005DA0;
  v65._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v65._object = 0xE900000000000073;
  v69._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.super.isa = v21;
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_100004FD4(v65, v69, v22, v73, v59);

  v23 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations);
  v24 = objc_allocWithZone(INObjectSection);

  v25 = sub_100005054();

  sub_100004F3C(0, &qword_10000CE60, DOCIntentLocation_ptr);
  isa = sub_100005074().super.isa;

  v27 = [v24 initWithTitle:v25 items:{isa, v63}];

  *(v19 + 32) = v27;
  v28 = _DocumentManagerBundle();
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v28;
  v60._countAndFlagsBits = 0x8000000100005DC0;
  v66._countAndFlagsBits = 0x657469726F766146;
  v66._object = 0xE900000000000073;
  v70._countAndFlagsBits = 0x617A696C61636F4CLL;
  v70._object = 0xEB00000000656C62;
  v30.super.isa = v29;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_100004FD4(v66, v70, v30, v74, v60);

  v31 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites);
  v32 = objc_allocWithZone(INObjectSection);

  v33 = sub_100005054();

  v34 = sub_100005074().super.isa;

  v35 = [v32 initWithTitle:v33 items:v34];

  *(v19 + 40) = v35;
  v36 = _DocumentManagerBundle();
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  v61._countAndFlagsBits = 0x8000000100005DE0;
  v67._countAndFlagsBits = 1936154964;
  v67._object = 0xE400000000000000;
  v71._countAndFlagsBits = 0x617A696C61636F4CLL;
  v71._object = 0xEB00000000656C62;
  v38.super.isa = v37;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_100004FD4(v67, v71, v38, v75, v61);

  v39 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags);
  v40 = objc_allocWithZone(INObjectSection);

  v41 = sub_100005054();

  v42 = sub_100005074().super.isa;

  v43 = [v40 initWithTitle:v41 items:v42];

  *(v19 + 48) = v43;
  v44 = _DocumentManagerBundle();
  if (v44)
  {
    v45 = v44;
    v62._countAndFlagsBits = 0x8000000100005E00;
    v68._countAndFlagsBits = 0x462061206B636950;
    v68._object = 0xED00007265646C6FLL;
    v72._countAndFlagsBits = 0x617A696C61636F4CLL;
    v72._object = 0xEB00000000656C62;
    v46.super.isa = v45;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    sub_100004FD4(v68, v72, v46, v76, v62);

    v47 = *(&v9->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_customFolder);
    v48 = objc_allocWithZone(INObjectSection);

    v49 = sub_100005054();

    v50 = sub_100005074().super.isa;

    v51 = [v48 initWithTitle:v49 items:v50];

    *(v19 + 56) = v51;
    v52 = objc_allocWithZone(INObjectCollection);
    sub_100003B44(&qword_10000CE70, &qword_100005A40);
    v53 = sub_100005074().super.isa;

    v54 = [v52 initWithSections:v53];

    v55 = v54;
    v64(v54, 0);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_100002888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100002968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100004FA4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_100002A00()
{
  v1 = v0;
  v2 = sub_1000050D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000050C4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100005044();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_customFolder] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchQueue;
  sub_100004F3C(0, &qword_10000CE40, OS_dispatch_queue_ptr);
  sub_100005034();
  sub_1000050B4();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  *&v1[v11] = sub_1000050F4();
  v12 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup;
  *&v1[v12] = dispatch_group_create();
  v13 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocationsSource;
  type metadata accessor for DefaultLocationsSource();
  *&v1[v13] = swift_allocObject();
  v14 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tagsSource;
  type metadata accessor for TagItemsSource();
  *&v1[v14] = swift_allocObject();
  v15 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favoritesSource;
  *&v1[v15] = [objc_allocWithZone(type metadata accessor for FavoritesItemsSource()) init];
  v16 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_pickFolderSource;
  *&v1[v16] = [objc_allocWithZone(type metadata accessor for PickFolderSource()) init];
  v17 = type metadata accessor for RecentsHomeScreenWidgetIntentHandler();
  v19.receiver = v1;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, "init");
}

void *sub_100002DF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v7 = _swiftEmptyArrayStorage;
    sub_100005174();
    v4 = a1 + 32;
    do
    {
      sub_100004E34(v4, &v6);
      sub_100004F3C(0, &unk_10000CE80, DOCTag_ptr);
      swift_dynamicCast();
      sub_100005154();
      v5 = v7[2];
      sub_100005184();
      sub_100005194();
      sub_100005164();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100002F20(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005014();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005044();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion];
  v14 = *&v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion];
  v15 = *&v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion + 8];
  *v13 = a1;
  *(v13 + 1) = a2;

  sub_100003AA4(v14);
  v16 = *&v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  aBlock[4] = sub_100003AEC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004F90;
  aBlock[3] = &unk_1000085A8;
  v18 = _Block_copy(aBlock);
  v19 = v2;
  sub_100005024();
  v24 = _swiftEmptyArrayStorage;
  sub_100003BD4(&qword_10000CE28, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B44(&qword_10000CE30, &qword_100005A28);
  sub_100003C1C(&qword_10000CE38, &qword_10000CE30, &qword_100005A28);
  sub_100005114();
  sub_1000050E4();
  _Block_release(v18);
  (*(v23 + 8))(v8, v5);
  (*(v9 + 8))(v12, v22);
}

id sub_10000320C()
{
  v1 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection;
  v2 = *(v0 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection);
  }

  else
  {
    v4 = [objc_opt_self() favoritesCollection];
    [v4 setDelegate:v0];
    [v4 setWorkingQueue:*(v0 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_queue)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000032B8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_hasSeenInitiallyGatheredFavorites);
  *(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_hasSeenInitiallyGatheredFavorites) = a1;
  if ((a1 & 1) != 0 && (v2 & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion);
    v4 = *(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion);
    if (v4)
    {
      v5 = v3[1];
      v6 = *(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_items);
      sub_100003A94(*(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion));

      v4(v7, 0);
      sub_100003AA4(v4);

      v8 = *v3;
    }

    else
    {
      v8 = 0;
    }

    v9 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_100003AA4(v8);
    v10 = sub_10000320C();
    [v10 stopObserving];
  }
}

void sub_1000033C0(char a1)
{
  v2 = v1;
  v4 = sub_10000320C();
  v5 = [v4 items];

  sub_100004F3C(0, &qword_10000CE20, FPItem_ptr);
  v6 = sub_100005084();

  if (v6 >> 62)
  {
    v7 = sub_1000051A4();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  sub_100005174();
  if (v7 < 0)
  {
    __break(1u);
    return;
  }

  v8 = objc_opt_self();
  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_100005134();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v12 = [v8 intentLocationWithItem:v10];

    sub_100005154();
    v13 = _swiftEmptyArrayStorage[2];
    sub_100005184();
    sub_100005194();
    sub_100005164();
  }

  while (v7 != v9);
LABEL_11:

  v14 = *(v2 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_items);
  *(v2 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_items) = _swiftEmptyArrayStorage;

  sub_1000032B8(a1 & 1);
}

id sub_10000359C()
{
  v15 = sub_1000050D4();
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000050C4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_100005044();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v14 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_queue;
  v9 = sub_100004F3C(0, &qword_10000CE40, OS_dispatch_queue_ptr);
  v13[1] = "r16PickFolderSource";
  v13[2] = v9;
  sub_100005034();
  v17 = _swiftEmptyArrayStorage;
  sub_100003BD4(&qword_10000CE48, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003B44(&qword_10000CE50, &qword_100005A30);
  sub_100003C1C(&qword_10000CE58, &qword_10000CE50, &qword_100005A30);
  sub_100005114();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *&v0[v14] = sub_1000050F4();
  v10 = &v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion];
  *v10 = 0;
  v10[1] = 0;
  *&v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_items] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection] = 0;
  v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_hasSeenInitiallyGatheredFavorites] = 0;
  v11 = type metadata accessor for FavoritesItemsSource();
  v16.receiver = v0;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_100003A38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100003A94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003AA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003AB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100003AEC()
{
  v1 = *(v0 + 16);
  v2 = sub_10000320C();
  [v2 startObserving];

  sub_1000033C0(0);
}

uint64_t sub_100003B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003B8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003C1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B8C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003C70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003D3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004E34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004DE8(v11);
  return v7;
}

unint64_t sub_100003D3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003E48(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100005144();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100003E48(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003E94(a1, a2);
  sub_100003FC4(&off_100008518);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003E94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000040B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100005144();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100005064();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000040B0(v10, 0);
        result = sub_100005124();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003FC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100004124(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000040B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003B44(&qword_10000CE78, qword_100005A48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004124(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003B44(&qword_10000CE78, qword_100005A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100004218(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005014();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005044();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultPermission];
  v14 = DOCDocumentsAppBundleIdentifier;
  [v13 setHostIdentifier:DOCDocumentsAppBundleIdentifier];

  v15 = [objc_opt_self() sharedManager];
  [v15 setHostIdentifier:v14];

  v16 = *&v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchQueue];
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_100004D88;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004F90;
  aBlock[3] = &unk_100008620;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  sub_100005024();
  v24 = _swiftEmptyArrayStorage;
  sub_100003BD4(&qword_10000CE28, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B44(&qword_10000CE30, &qword_100005A28);
  sub_100003C1C(&qword_10000CE38, &qword_10000CE30, &qword_100005A28);
  sub_100005114();
  sub_1000050E4();
  _Block_release(v18);
  (*(v23 + 8))(v8, v5);
  (*(v9 + 8))(v12, v22);
}

void sub_100004560(void *a1)
{
  v23._object = a1;
  sub_100003B44(&qword_10000CE68, &qword_100005A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000058F0;
  v2 = DOCSpotlightEnumeratedItemIdentifierRecentDocuments;
  v3 = _DocumentManagerBundle();
  if (!v3)
  {

    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v23._countAndFlagsBits = 0x8000000100005E30;
  v26._countAndFlagsBits = 0x73746E65636552;
  v26._object = 0xE700000000000000;
  v29._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29._object = 0xEB00000000656C62;
  v5.super.isa = v4;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_100004FD4(v26, v29, v5, v32, v23);

  v6 = DOCIntentLocationTypeRecents;
  v7 = sub_100005054();

  v8 = objc_opt_self();
  v9 = [v8 intentLocationWithIdentifier:v2 displayString:v7 type:v6];

  *(v1 + 32) = v9;
  v2 = DOCSpotlightEnumeratedItemIdentifierSharedItems;
  v10 = _DocumentManagerBundle();
  if (!v10)
  {
LABEL_8:

    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v23._countAndFlagsBits = 0x8000000100005E60;
  v27._countAndFlagsBits = 0x646572616853;
  v27._object = 0xE600000000000000;
  v30._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30._object = 0xEB00000000656C62;
  v12.super.isa = v11;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100004FD4(v27, v30, v12, v33, v23);

  v13 = DOCIntentLocationTypeShared;
  v14 = sub_100005054();

  v15 = [v8 intentLocationWithIdentifier:v2 displayString:v14 type:v13];

  *(v1 + 40) = v15;
  v16 = _DocumentManagerBundle();
  if (!v16)
  {
LABEL_9:

    __break(1u);
    return;
  }

  v17 = v16;
  v23._countAndFlagsBits = 0x8000000100005EC0;
  v28._countAndFlagsBits = 0x64616F6C6E776F44;
  v28._object = 0xE900000000000073;
  v31._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31._object = 0xEB00000000656C62;
  v18.super.isa = v17;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100004FD4(v28, v31, v18, v34, v23);

  v19 = DOCIntentLocationTypeDownloads;
  v20 = sub_100005054();
  v21 = sub_100005054();

  v22 = [v8 intentLocationWithIdentifier:v20 displayString:v21 type:v19];

  *(v1 + 48) = v22;
  sub_100001F78(v1, v24, &OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations, "provideLocationOptionsCollection() received %ld locations. Error: %s");
}

uint64_t sub_1000048D8(char *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 userTags];

  v4 = [v3 array];
  v5 = sub_100005084();

  v6 = sub_100002DF4(v5);

  if (v6 >> 62)
  {
    v7 = sub_1000051A4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_100005174();
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  v27 = a1;
  v31 = objc_opt_self();
  v9 = 0;
  v29 = v6 & 0xC000000000000001;
  v30 = objc_opt_self();
  v28 = v7;
  do
  {
    if (v29)
    {
      v11 = sub_100005134();
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v31 intentLocationWithTag:v11];
    v14 = [v30 requestForTag:v12 tagDimension:16.0];
    v15 = [objc_allocWithZone(DOCTagRenderer) init];
    v16 = [v15 renderImageWithRequest:v14];

    v17 = UIImagePNGRepresentation(v16);
    if (v17)
    {
      v18 = v17;
      v19 = sub_100004FC4();
      v21 = v20;

      v22 = v13;
      sub_100004E94(v19, v21);
      v32 = v14;
      v23 = v6;
      isa = sub_100004FB4().super.isa;
      v25 = [objc_opt_self() imageWithImageData:isa];

      v6 = v23;
      sub_100004EE8(v19, v21);
      [v22 setDisplayImage:v25];

      v26 = v21;
      v7 = v28;
      sub_100004EE8(v19, v26);
    }

    else
    {
    }

    ++v9;
    sub_100005154();
    v10 = _swiftEmptyArrayStorage[2];
    sub_100005184();
    sub_100005194();
    sub_100005164();
  }

  while (v7 != v9);

  a1 = v27;
LABEL_15:
  sub_100001F78(_swiftEmptyArrayStorage, a1, &OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags, "provideLocationOptionsCollection() received %ld tags. Error: %s");
}

void sub_100004C50()
{
  v0 = DOCCreateDefaultHomeScreenWidgetIntent();
  v1 = sub_100005054();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_100005104();
    swift_unknownObjectRelease();

    sub_100004D34(&v3, &v4);
    sub_100004F3C(0, &qword_10000CE60, DOCIntentLocation_ptr);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

_OWORD *sub_100004D34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100004D44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004D9C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004DE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004E34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004E94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004EE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004F3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}