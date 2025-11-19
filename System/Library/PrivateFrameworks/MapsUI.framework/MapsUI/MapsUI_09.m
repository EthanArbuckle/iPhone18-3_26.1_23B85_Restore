BOOL HikingTipSectionController.hasContentBeforePersonalizedSuggestionArbitration.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
    }

    v2 = sub_1C584FB90();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

BOOL HikingTipSectionController.hasContent.getter()
{
  v1 = [v0 personalizedSuggestionsArbiterDelegate];
  if (v1)
  {
    v2 = [v1 shouldShowHikingTipSection];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *&v0[OBJC_IVAR___MUHikingTipSectionController__sectionViews];
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v6 = *&v0[OBJC_IVAR___MUHikingTipSectionController__sectionViews];
      }

      v4 = sub_1C584FB90();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4 != 0;
  }

  return v2;
}

uint64_t sub_1C570C190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C584F2C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5716084();
  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_1C584F2A0();
  v12 = sub_1C584F990();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C5620000, v11, v12, "Placecard: Refreshing hiking tip section.", v13, 2u);
    MEMORY[0x1C694B7A0](v13, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C5867970;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v16 = [Strong hikingTipViewForHikingTipSectionController:v2 viewModel:a1], swift_unknownObjectRelease(), v16))
  {
    v17 = [objc_opt_self() insetPlatterSectionViewForContentView:v16 sectionHeaderViewModel:0 sectionFooterViewModel:0];
    [v17 configureWithSectionController_];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v2 action:sel_tipTapped];
    v19 = v17;
    [v19 addGestureRecognizer_];
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  *(v14 + 32) = v19;
  v20 = *(v2 + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
  *(v2 + OBJC_IVAR___MUHikingTipSectionController__sectionViews) = v14;
}

id sub_1C570C42C(id result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [v2 _identifier];
  if (!v3)
  {
LABEL_10:

    return 0;
  }

  v4 = v3;
  result = [v2 _geoMapItem];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = [result _tooltip];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_9:

    goto LABEL_10;
  }

  if ([v5 type] != 1)
  {

    goto LABEL_9;
  }

  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    v21 = sub_1C584F660();
    v9 = v8;
  }

  else
  {
    v21 = 0;
    v9 = 0;
  }

  v10 = [v5 subtitle];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C584F660();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [v5 actionLink];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C584F660();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = (*(v1 + 128))(v4, v21, v9, v12, v14, v17, v19, 0, [v5 usesOriginMapItem]);

  return v20;
}

uint64_t HikingTipSectionController.displayHikingTip(viewModel:)(uint64_t a1)
{
  sub_1C570C190(a1);
  *(v1 + OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem) = *(a1 + OBJC_IVAR___MUHikingTipViewModel_usesOriginMapItem);
  return 1;
}

uint64_t sub_1C570C6AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (*(v0 + OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem) == 1)
    {
      v3 = [v0 mapItem];
    }

    else
    {
      v3 = 0;
    }

    [v2 didTapHikingTip:v0 originMapItem:v3];

    return swift_unknownObjectRelease();
  }

  return result;
}

id HikingTipSectionController.__allocating_init(mapItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMapItem_];

  return v3;
}

id HikingTipSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double HikingTipSectionController.coordinateForTooltip.getter()
{
  v1 = [v0 mapItem];
  [v1 _coordinate];
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall HikingTipSectionController.requestHikingToolTipRegionID(forLocationCoordinate:)(__C::CLLocationCoordinate2D forLocationCoordinate)
{
  longitude = forLocationCoordinate.longitude;
  latitude = forLocationCoordinate.latitude;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestHikingToolTipRegionIDForLocationCoordinate_];

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1C570CB68()
{
  result = qword_1ED77E800;
  if (!qword_1ED77E800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED77E800);
  }

  return result;
}

id MUWebBasedPlacecardOfflineMapProvider.__allocating_init(nativeOfflineMapProvider:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_observers;
  sub_1C568FBBC();
  v6 = &unk_1F4524458;
  v7 = sub_1C584F9F0();
  v8 = [objc_allocWithZone(MEMORY[0x1E69A22D8]) initWithProtocol:v6 queue:v7];

  *&v4[v5] = v8;
  v9 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  *&v4[OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider] = 0;
  swift_beginAccess();
  *&v4[v9] = a1;
  v11.receiver = v4;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id MUWebBasedPlacecardOfflineMapProvider.init(nativeOfflineMapProvider:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_observers;
  sub_1C568FBBC();
  v6 = &unk_1F4524458;
  v7 = sub_1C584F9F0();
  v8 = [objc_allocWithZone(MEMORY[0x1E69A22D8]) initWithProtocol:v6 queue:v7];

  *&v2[v5] = v8;
  v9 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  *&v2[OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider] = 0;
  swift_beginAccess();
  *&v2[v9] = a1;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t MUWebBasedPlacecardOfflineMapProvider.nativeOfflineMapProvider.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t MUWebBasedPlacecardOfflineMapProvider.nativeOfflineMapProvider.setter(void *a1)
{
  sub_1C570D570(a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C570CEE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C570CF3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  sub_1C570D570(v4);

  return swift_unknownObjectRelease();
}

uint64_t MUWebBasedPlacecardOfflineMapProvider.offlineMapProviderUpdated(_:)()
{
  swift_getObjectType();

  return sub_1C570D42C(v0);
}

void (*MUWebBasedPlacecardOfflineMapProvider.nativeOfflineMapProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1C570D04C;
}

void sub_1C570D04C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1C570D570(v5);
    swift_unknownObjectRelease();
    v6 = *v3;
  }

  else
  {
    sub_1C570D570(*v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id MUWebBasedPlacecardOfflineMapProvider.downloadState.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result downloadState];
  }

  return result;
}

id MUWebBasedPlacecardOfflineMapProvider.downloadProgress.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result downloadProgress];
  }

  return result;
}

id MUWebBasedPlacecardOfflineMapProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUWebBasedPlacecardOfflineMapProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C570D42C(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_observers) allObservers];
  v3 = sub_1C584F770();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1C56465F8(v5, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1701F0, &qword_1C58774C8);
      if (swift_dynamicCast())
      {
        [v7 offlineMapProviderUpdated_];
        swift_unknownObjectRelease();
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_1C570D570(void *a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  swift_unknownObjectRetain();
  [v4 removeObserver_];
  a1 = *(v1 + v3);
  if (a1)
  {
LABEL_3:
    [a1 addObserver_];
  }

LABEL_4:
  sub_1C570D42C(v1);
  return swift_unknownObjectRelease();
}

uint64_t WatchPlaceETAProvider.etaTravelTime.getter()
{
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v1 = (v0 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1C570D704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v4 = v3 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

unint64_t sub_1C570D7D8()
{
  result = qword_1EC170200;
  if (!qword_1EC170200)
  {
    type metadata accessor for WatchPlaceETAProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170200);
  }

  return result;
}

uint64_t type metadata accessor for WatchPlaceETAProvider()
{
  result = qword_1EC18E110;
  if (!qword_1EC18E110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchPlaceETAProvider.etaTravelTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime;
  result = swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = *&a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v8);
  sub_1C570D7D8();
  sub_1C584EF30();
}

uint64_t sub_1C570D9A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
  return result;
}

void (*WatchPlaceETAProvider.etaTravelTime.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C570D7D8();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C570DB20;
}

uint64_t WatchPlaceETAProvider.localizedDistance.getter()
{
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v1 = (v0 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C570DBCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v4 = (v3 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C570DC68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return WatchPlaceETAProvider.localizedDistance.setter(v2, v3);
}

uint64_t WatchPlaceETAProvider.localizedDistance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = v5[1];
      if (sub_1C584FDC0())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v11);
  sub_1C570D7D8();
  sub_1C584EF30();
}

void (*WatchPlaceETAProvider.localizedDistance.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C570D7D8();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C570DF00;
}

id sub_1C570DF0C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v2 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    swift_getKeyPath();
    sub_1C584EF40();

    if (*(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted))
    {
      v3 = &selRef_restart;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v5);
      sub_1C584EF30();

      v3 = &selRef_start;
    }
  }

  else
  {
    v3 = &selRef_pause;
  }

  return [*(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider) *v3];
}

uint64_t WatchPlaceETAProvider.isActive.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C570D7D8();
  sub_1C584EF40();

  v1 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1C570E134()
{
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  return *(v0 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted);
}

uint64_t sub_1C570E1AC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1C570D7D8();
    sub_1C584EF30();
  }

  return result;
}

id (*sub_1C570E294(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C570E2F8;
}

id sub_1C570E2F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1C570DF0C();
  }

  return result;
}

uint64_t sub_1C570E32C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v4 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id WatchPlaceETAProvider.isActive.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    return sub_1C570DF0C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1C570D7D8();
    sub_1C584EF30();
  }
}

void (*WatchPlaceETAProvider.isActive.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C570D7D8();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  v4[7] = sub_1C570E294(v4);
  return sub_1C570E5F0;
}

void sub_1C570E5F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C584EF50();

  free(v1);
}

uint64_t sub_1C570E69C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  *a2 = *(v3 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted);
  return result;
}

char *WatchPlaceETAProvider.init(placeItem:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive] = 0;
  v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted] = 0;
  sub_1C584EF70();
  result = [objc_allocWithZone(MEMORY[0x1E696F1D0]) initWithPlaceItem_];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider] = result;
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider;
    v9 = *&v7[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider];
    v10 = v7;
    [v9 setDelegate_];
    [*&v7[v8] addObserver_];

    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id WatchPlaceETAProvider.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider;
  [*&v0[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider] removeObserver_];
  [*&v0[v2] cancel];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id WatchPlaceETAProvider.etaProviderUpdated(_:)(id result)
{
  if (result)
  {
    v1 = result;
    result = [result hasFoundDistanceOrETA];
    if (result)
    {
      v2 = [v1 distanceString];
      if (v2)
      {
        v3 = v2;
        v4 = sub_1C584F660();
        v6 = v5;

        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          WatchPlaceETAProvider.localizedDistance.setter(v4, v6);
        }

        else
        {
        }
      }

      if (qword_1EC18E050 != -1)
      {
        swift_once();
      }

      v8 = sub_1C584F2C0();
      __swift_project_value_buffer(v8, qword_1EC18E058);
      v9 = v1;
      v10 = sub_1C584F2A0();
      v11 = sub_1C584F9A0();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        [v9 etaTravelTime];
        *(v12 + 4) = v13;
        _os_log_impl(&dword_1C5620000, v10, v11, "Updated with travel time %f", v12, 0xCu);
        MEMORY[0x1C694B7A0](v12, -1, -1);
      }

      [v9 etaTravelTime];

      return WatchPlaceETAProvider.etaTravelTime.setter(v14, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id WatchPlaceETAProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C570ED08()
{
  v1 = [objc_opt_self() etaSymbolForTransportType_];
  v2 = sub_1C584F660();

  return v2;
}

uint64_t sub_1C570ED8C()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18E058);
  __swift_project_value_buffer(v0, qword_1EC18E058);
  type metadata accessor for WatchPlaceETAProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170298, &qword_1C58775E0);
  sub_1C584F680();
  return sub_1C584F2B0();
}

uint64_t sub_1C570EE30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
}

id sub_1C570EEA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_1C570DF0C();
}

uint64_t sub_1C570EF10()
{
  result = sub_1C584EF80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id BadgeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *BadgeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR___MUBadgeView_label;
  *&v4[OBJC_IVAR___MUBadgeView_label] = v10;
  v12 = [objc_opt_self() effectWithStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *&v4[OBJC_IVAR___MUBadgeView_blurView] = v13;
  v14 = [objc_opt_self() effectForBlurEffect:v12 style:1];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v4[OBJC_IVAR___MUBadgeView_labelVibrantView] = v15;
  v16 = [*&v4[v11] layer];
  [v16 setCompositingFilter_];

  v44.receiver = v4;
  v44.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  [v17 setClipsToBounds_];
  v18 = *&v17[OBJC_IVAR___MUBadgeView_label];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setNumberOfLines_];
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v20 = result;
    [v18 setFont_];

    [v18 setAdjustsFontForContentSizeCategory_];
    v21 = *&v17[OBJC_IVAR___MUBadgeView_blurView];
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v17 addSubview_];
    v22 = *&v17[OBJC_IVAR___MUBadgeView_labelVibrantView];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = [v22 contentView];
    [v23 addSubview_];

    v24 = [v21 contentView];
    [v24 addSubview_];

    v25 = [objc_opt_self() sharedApplication];
    [v25 userInterfaceLayoutDirection];

    [v21 _setCornerRadius_continuous_maskedCorners_];
    type metadata accessor for EdgeLayout();
    v26 = *&v17[OBJC_IVAR___MUBadgeView_labelVibrantView];
    v27 = EdgeLayout.__allocating_init(item:container:)(*&v17[OBJC_IVAR___MUBadgeView_label], [v26 contentView]);
    v28 = *&v17[OBJC_IVAR___MUBadgeView_blurView];
    v29 = EdgeLayout.__allocating_init(item:container:insets:)(v26, [v28 contentView], 4.0, 6.0, 4.0, 6.0);
    v30 = v28;
    v31 = v17;
    v32 = EdgeLayout.__allocating_init(item:container:)(v30, v31);
    v33 = type metadata accessor for SizeLayout();
    v34 = *MEMORY[0x1E69DE788];
    v36 = GEOLocationCoordinate2DMake(v33, v35);
    v37 = swift_unknownObjectRetain();
    v38 = SizeLayout.__allocating_init(item:size:)(v37, v36, 20.0);
    sub_1C5654C40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C5868600;
    *(v39 + 32) = v27;
    *(v39 + 40) = v29;
    *(v39 + 48) = v32;
    *(v39 + 56) = v38;
    v40 = v27;
    v41 = v29;
    v42 = v32;
    v43 = v38;
    static NSLayoutConstraint.activate(layouts:)(v39);

    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BadgeView.badgeString.getter()
{
  v1 = [*(v0 + OBJC_IVAR___MUBadgeView_label) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

void BadgeView.badgeString.setter()
{
  v1 = *(v0 + OBJC_IVAR___MUBadgeView_label);
  v2 = sub_1C584F630();

  [v1 setText_];
}

void sub_1C570F76C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR___MUBadgeView_label) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C584F660();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1C570F7E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a2 + OBJC_IVAR___MUBadgeView_label);
  v5 = sub_1C584F630();
  [v4 setText_];
}

void (*BadgeView.badgeString.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR___MUBadgeView_label);
  a1[2] = v3;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C584F660();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_1C570F8E0;
}

void sub_1C570F8E0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    v7 = sub_1C584F630();

    [v4 setText_];
  }

  else
  {
    v6 = *a1;
    v7 = sub_1C584F630();

    [v4 setText_];
  }
}

id BadgeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C570FA50(uint64_t a1)
{
  if (!a1)
  {
    return 5;
  }

  if (a1 == 1)
  {
    return 3;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FAB8(uint64_t a1)
{
  if (!a1)
  {
    return 9;
  }

  if (a1 == 1)
  {
    return 10;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FB20(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  if (a1 == 1)
  {
    return 4;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FB88(uint64_t a1)
{
  if (!a1)
  {
    return 7;
  }

  if (a1 == 1)
  {
    return 8;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FBF0(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    return 0;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

unint64_t sub_1C570FC58(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C570FCBC(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C570FD20(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C570FD80(void *a1)
{
  v1 = a1;
  shouldShowActionBarSbvg_0 = _sSo17UITraitCollectionC6MapsUIE27_mapsui_shouldShowActionBarSbvg_0();

  return shouldShowActionBarSbvg_0 & 1;
}

uint64_t TransitDeparturesDataSource.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C570FF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C570FF74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*TransitDeparturesDataSource.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MUTransitDeparturesDataSource_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

uint64_t TransitDeparturesDataSource.isActive.getter()
{
  v1 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

id TransitDeparturesDataSource.isActive.setter(char a1)
{
  v3 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setActive_];
}

uint64_t sub_1C57101D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1C5710228(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return [*(v3 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setActive_];
}

void (*TransitDeparturesDataSource.isActive.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C5710320;
}

void sub_1C5710320(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setActive_];
  }

  free(v3);
}

id sub_1C5710384()
{
  v1 = [*(v0 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) selectedSystem];

  return v1;
}

uint64_t sub_1C57103C4(uint64_t a1)
{
  [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setSelectedSystem_];

  return swift_unknownObjectRelease();
}

char *TransitDeparturesDataSource.init(mapItem:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MUTransitDeparturesDataSource_mapItem] = a1;
  v4 = objc_allocWithZone(MEMORY[0x1E696F3D0]);
  v5 = a1;
  v6 = [v4 initWithMapItem_];
  *&v1[OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider] = v6;
  v1[OBJC_IVAR___MUTransitDeparturesDataSource_isActive] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider;
  v9 = *&v7[OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider];
  v10 = v7;
  [v9 setSupportSystemSectionCollapsing_];
  [*&v7[v8] setDelegate_];

  return v10;
}

uint64_t sub_1C57105A4(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) incidentsForSystemIncidentsSection_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE00, &qword_1C5868570);
  v3 = sub_1C584F770();

  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v24 = MEMORY[0x1E69E7CC0];

      result = sub_1C584FCC0();
      if (v5 < 0)
      {
        break;
      }

      v21 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v4)
      {
        v7 = sub_1C584FB90();
      }

      else
      {
        v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v9 = v3 & 0xC000000000000001;
      v10 = (v3 + 32);
      v22 = v5;
      v23 = v7 & ~(v7 >> 63);
      v4 = v3;
      while (v23 != v8)
      {
        if (v9)
        {
          v12 = MEMORY[0x1C694A320](v8, v3);
        }

        else
        {
          if (v8 >= *(v21 + 16))
          {
            goto LABEL_26;
          }

          v12 = *v10;
          swift_unknownObjectRetain();
        }

        v13 = [objc_allocWithZone(MEMORY[0x1E696F3F0]) init];
        [v13 setBlocking_];
        v14 = v8 - 1;
        if (v8 < 1)
        {
          v16 = 1;
        }

        else
        {
          if (v9)
          {
            v15 = MEMORY[0x1C694A320](v14, v3);
          }

          else
          {
            if (v14 >= *(v21 + 16))
            {
              goto LABEL_27;
            }

            v15 = *(v10 - 1);
            swift_unknownObjectRetain();
          }

          v17 = [v15 isBlockingIncident];
          v18 = [v12 isBlockingIncident];
          swift_unknownObjectRelease();
          v16 = v17 ^ v18;
          v5 = v22;
        }

        [v13 setShowImage_];
        v19 = [v12 title];
        if (v19)
        {
          v20 = v19;
          [v13 setMessage_];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v3 = v4;
        ++v8;
        sub_1C584FCA0();
        v11 = *(v24 + 16);
        sub_1C584FCD0();
        sub_1C584FCE0();
        sub_1C584FCB0();
        ++v10;
        if (v5 == v8)
        {
          swift_bridgeObjectRelease_n();
          return v24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v5 = sub_1C584FB90();
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id sub_1C571088C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for TransitDeparturesContainerViewModel();
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C584EB30();
  v13 = *(v50 - 1);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v50, v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v48 - v20;
  v22 = *(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider);
  v23 = [v22 departuresSectionControllersForSystem_];
  sub_1C5626E40(0, &qword_1EC170870, 0x1E696F3D8);
  v24 = sub_1C584F770();

  v25 = *(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem);
  v26 = objc_allocWithZone(MEMORY[0x1E696F400]);
  v51 = v25;
  result = [v26 initWithMapItem_];
  if (!result)
  {
    goto LABEL_20;
  }

  v28 = result;
  v29 = [v22 departureCutoffDate];
  sub_1C584EB10();

  v30 = sub_1C584EB00();
  (*(v13 + 8))(v21, v50);
  [v28 setReferenceDate_];

  v31 = v24;
  if (v24 >> 62)
  {
    v32 = sub_1C584FB90();
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_17;
  }

LABEL_4:
  v53 = MEMORY[0x1E69E7CC0];
  result = sub_1C57113CC(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v49 = v24;
    v50 = v28;
    v33 = 0;
    v34 = v53;
    v35 = v31;
    v48 = v31 & 0xC000000000000001;
    v36 = v32;
    do
    {
      if (v48)
      {
        v37 = MEMORY[0x1C694A320](v33, v35);
      }

      else
      {
        v37 = *(v35 + 8 * v33 + 32);
      }

      v38 = v37;
      v39 = [v22 departureCutoffDate];
      sub_1C584EB10();

      v40 = [v22 isStuckWithExpiredInfo];
      v41 = [v51 timeZone];
      if (v41)
      {
        v42 = v41;
        sub_1C584ED70();

        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = sub_1C584ED80();
      (*(*(v44 - 8) + 56))(v7, v43, 1, v44);
      v45 = v50;
      sub_1C5722524(v38, v45, v18, v40, v7, v12);
      v53 = v34;
      v47 = *(v34 + 16);
      v46 = *(v34 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C57113CC(v46 > 1, v47 + 1, 1);
        v34 = v53;
      }

      ++v33;
      *(v34 + 16) = v47 + 1;
      sub_1C57113EC(v12, v34 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v47);
      v35 = v49;
    }

    while (v36 != v33);

    return v34;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C5710D28(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) inactiveLinesSectionControllersForSystem_];
  sub_1C5626E40(0, &qword_1EC170300, 0x1E696F3E0);
  v3 = sub_1C584F770();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1C584FB90();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1C584FCC0();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      ++v6;
      GEOLocationCoordinate2DMake(v7, v8);
      sub_1C584FCA0();
      v9 = *(v10 + 16);
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
    }

    while (v4 != v6);

    return v10;
  }

  return result;
}

uint64_t sub_1C5710EC8(SEL *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v8 = [*(v4 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) *a1];
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = sub_1C584F770();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_12:

    return v9;
  }

  v12 = sub_1C584FB90();
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = sub_1C584FCC0();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1C694A320](v14, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v14 + 32);
        v15 = swift_unknownObjectRetain();
      }

      ++v14;
      a4(v15);
      sub_1C584FCA0();
      v16 = *(v9 + 16);
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
    }

    while (v12 != v14);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id TransitDeparturesDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitDeparturesDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TransitDeparturesDataSource.traits(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong traitsForDeparturesDataSource_];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E69A2210]) init];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void *TransitDeparturesDataSource.transitDeparturesDataProviderDidReload(_:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result transitDeparturesDataSourceWantsReload_];
    return swift_unknownObjectRelease();
  }

  return result;
}

size_t sub_1C57113CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1C57114A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C57113EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitDeparturesContainerViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1C57114A0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170378, &qword_1C58776A8);
  v10 = *(type metadata accessor for TransitDeparturesContainerViewModel() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TransitDeparturesContainerViewModel() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1C5711678()
{
  v1 = OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels;
  swift_beginAccess();
  v20 = v0;
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v19 = *&v0[v1];
    }

    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];

    sub_1C584FCC0();
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    type metadata accessor for TransitIncidentRowView();
    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v7 = v2;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x1C694A320](v5, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v5 + 32);
      }

      v9 = v8;
      ++v5;
      v10 = sub_1C565D6A4(0.0, 0.0, 0.0, 0.0);
      v11 = v9;
      sub_1C565D528(v9);
      v12 = [v10 viewModel];
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      aBlock[4] = sub_1C5711CB0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C564A8C4;
      aBlock[3] = &block_descriptor_9;
      v15 = _Block_copy(aBlock);
      v16 = v11;

      [v12 setActionBlock_];
      _Block_release(v15);

      swift_unknownObjectRelease();
      sub_1C584FCA0();
      v17 = *(v22 + 16);
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
      v2 = v7;
    }

    while (v3 != v5);

    v4 = v22;
  }

  if (v4 >> 62)
  {
    sub_1C5641BC8();

    sub_1C584FD10();
  }

  else
  {

    sub_1C584FDD0();
    sub_1C5641BC8();
  }

  sub_1C5641BC8();
  v18 = sub_1C584F750();

  [v20 setRowViews_];
}

void sub_1C571199C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_1C5711678();
}

void sub_1C5711CB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, v1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id HikingTipCoordinator.__allocating_init(mapService:locationDelegate:mapAccessProvider:presenter:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___MUHikingTipCoordinator_muidToFetchedTooltipCache;
  *&v3[v4] = sub_1C5713620(MEMORY[0x1E69E7CC0]);
  v3[OBJC_IVAR___MUHikingTipCoordinator_isBusy] = 0;
  *&v3[OBJC_IVAR___MUHikingTipCoordinator_mapService] = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v8.receiver = v3;
  v8.super_class = v1;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

id HikingTipCoordinator.init(mapService:locationDelegate:mapAccessProvider:presenter:)(void *a1)
{
  v2 = sub_1C571371C(a1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

void *sub_1C5711FB4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result coordinateForTooltip];
    v2 = v1;
    v4 = v3;
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result requestHikingToolTipRegionIDForLocationCoordinate_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C571205C(void *a1)
{
  v2 = v1;
  v4 = [a1 muid];
  v5 = OBJC_IVAR___MUHikingTipCoordinator_muidToFetchedTooltipCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1C5712EF4(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_1C5712774(v9, 0, a1);
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR___MUHikingTipCoordinator_mapService);
    v11 = [v10 defaultTraits];
    v12 = v11;
    if (v11)
    {
      [v11 setWantsRouteCreationTip_];
    }

    v13 = [v10 ticketForHikingIntroTip:a1 traits:v12];
    if (v13)
    {
      v14 = v13;
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;
      aBlock[4] = sub_1C5713820;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C5664664;
      aBlock[3] = &block_descriptor_10;
      v17 = _Block_copy(aBlock);
      v18 = a1;

      [v14 submitWithHandler:v17 networkActivity:0];
      _Block_release(v17);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C571224C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v45[-v16];
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v45[-v19];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (a2)
    {
      v23 = a2;
      v24 = sub_1C5716084();
      (*(v8 + 16))(v20, v24, v7);
      v25 = a2;
      v26 = sub_1C584F2A0();
      v27 = sub_1C584F9B0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = a2;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_1C5620000, v26, v27, "HikingTipCoordinator: error downloading tip %@", v28, 0xCu);
        sub_1C567CCE0(v29);
        MEMORY[0x1C694B7A0](v29, -1, -1);
        MEMORY[0x1C694B7A0](v28, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v20, v7);
    }

    else if (a1)
    {
      v32 = a1;
      v33 = [v32 _geoMapItem];
      if (v33)
      {
        v34 = [v33 _tooltip];
        swift_unknownObjectRelease();
        if (v34)
        {
          v35 = [a4 muid];
          swift_beginAccess();
          v36 = v34;
          sub_1C57126B4(v34, v35);
          swift_endAccess();
          sub_1C5712774(v36, 0, a4);

          v22 = v36;
LABEL_12:

          return;
        }
      }

      v37 = sub_1C5716084();
      (*(v8 + 16))(v13, v37, v7);
      v38 = sub_1C584F2A0();
      v39 = sub_1C584F9B0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C5620000, v38, v39, "HikingTipCoordinator: mapItem does not contain tooltip", v40, 2u);
        MEMORY[0x1C694B7A0](v40, -1, -1);
      }

      (*(v8 + 8))(v13, v7);
    }

    else
    {
      v41 = sub_1C5716084();
      (*(v8 + 16))(v17, v41, v7);
      v42 = sub_1C584F2A0();
      v43 = sub_1C584F9B0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C5620000, v42, v43, "HikingTipCoordinator: error received nil mapItem", v44, 2u);
        MEMORY[0x1C694B7A0](v44, -1, -1);
      }

      (*(v8 + 8))(v17, v7);
    }

    *(v22 + OBJC_IVAR___MUHikingTipCoordinator_isBusy) = 0;
    goto LABEL_12;
  }
}

unint64_t sub_1C57126B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1C571337C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = sub_1C5712EF4(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1C57134C4();
        v14 = v16;
      }

      result = sub_1C571320C(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_1C5712774(void *a1, void *a2, void *a3)
{
  v79 = a2;
  v5 = sub_1C584F2C0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v75 - v12;
  v14 = sub_1C5716084();
  v80 = v6[2];
  v81 = v14;
  v78 = v6 + 2;
  v80(v13);
  v15 = a1;
  v16 = a3;
  v17 = sub_1C584F2A0();
  v18 = sub_1C584F990();

  v19 = os_log_type_enabled(v17, v18);
  v20 = &selRef_shouldBlurChromeHeaderButtons;
  v84 = v6;
  v85 = v5;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v88 = v77;
    *v21 = 134218754;
    *(v21 + 4) = [v16 muid];

    *(v21 + 12) = 2080;
    v22 = [v15 title];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1C584F660();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v86 = v24;
    v87 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE60, &unk_1C5877750);
    v27 = sub_1C584F680();
    v29 = sub_1C5649518(v27, v28, &v88);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2080;
    v30 = [v15 subtitle];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1C584F660();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v86 = v32;
    v87 = v34;
    v35 = sub_1C584F680();
    v37 = sub_1C5649518(v35, v36, &v88);

    *(v21 + 24) = v37;
    *(v21 + 32) = 2080;
    v86 = [v15 photo];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170490, &qword_1C5877760);
    v38 = sub_1C584F680();
    v40 = sub_1C5649518(v38, v39, &v88);

    *(v21 + 34) = v40;
    _os_log_impl(&dword_1C5620000, v17, v18, "HikingTipCoordinator: will try to present tip with muid: %llu title:%s subtitle:%s image:%s", v21, 0x2Au);
    v41 = v77;
    swift_arrayDestroy();
    MEMORY[0x1C694B7A0](v41, -1, -1);
    MEMORY[0x1C694B7A0](v21, -1, -1);

    v77 = v84[1];
    v77(v13, v85);
    v20 = &selRef_shouldBlurChromeHeaderButtons;
  }

  else
  {

    v77 = v6[1];
    v77(v13, v5);
  }

  v42 = [v15 title];
  if (v42)
  {
    v43 = v42;
    v76 = sub_1C584F660();
    v45 = v44;
  }

  else
  {
    v76 = 0;
    v45 = 0;
  }

  v46 = [v15 v20[137]];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1C584F660();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = [v15 actionLink];
  v52 = v16;
  if (v51)
  {
    v53 = v51;
    v54 = sub_1C584F660();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  type metadata accessor for HikingTipViewModel();
  v57 = v79;
  v58 = v79;
  v59 = [v15 usesOriginMapItem];
  v60 = v52;
  v61 = sub_1C57736C0(v60, v76, v45, v48, v50, v54, v56, v57, v59);
  v62 = v83;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v64 = [Strong displayHikingTipWithViewModel_];
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0;
  }

  v65 = v85;
  v66 = v82;
  (v80)(v82, v81, v85);
  v67 = sub_1C584F2A0();
  v68 = sub_1C584F990();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v86 = v70;
    *v69 = 136315138;
    if (v64)
    {
      v71 = 0x6564656563637573;
    }

    else
    {
      v71 = 0x64656C696166;
    }

    if (v64)
    {
      v72 = 0xE900000000000064;
    }

    else
    {
      v72 = 0xE600000000000000;
    }

    v73 = sub_1C5649518(v71, v72, &v86);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_1C5620000, v67, v68, "HikingTipCoordinator: attempt to present tip %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1C694B7A0](v70, -1, -1);
    MEMORY[0x1C694B7A0](v69, -1, -1);
  }

  result = (v77)(v66, v65);
  *(v62 + OBJC_IVAR___MUHikingTipCoordinator_isBusy) = 0;
  return result;
}

id HikingTipCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HikingTipCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HikingTipCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5712EF4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C584FE90();

  return sub_1C5712F38(a1, v4);
}

unint64_t sub_1C5712F38(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1C5712FA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170498, &qword_1C5877768);
  result = sub_1C584FD40();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_1C584FE90();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C571320C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C584FB60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1C584FE90();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C571337C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C5712EF4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1C57134C4();
    result = v17;
    goto LABEL_8;
  }

  sub_1C5712FA4(v14, a3 & 1);
  v18 = *v4;
  result = sub_1C5712EF4(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1C584FE00();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

id sub_1C57134C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170498, &qword_1C5877768);
  v2 = *v0;
  v3 = sub_1C584FD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1C5713620(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170498, &qword_1C5877768);
  v3 = sub_1C584FD50();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1C5712EF4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1C5712EF4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_1C571371C(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___MUHikingTipCoordinator_muidToFetchedTooltipCache;
  *&v1[v3] = sub_1C5713620(MEMORY[0x1E69E7CC0]);
  v1[OBJC_IVAR___MUHikingTipCoordinator_isBusy] = 0;
  *&v1[OBJC_IVAR___MUHikingTipCoordinator_mapService] = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HikingTipCoordinator();
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C5713890@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C584EE90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MUPlaceActionBarTypeDirections();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = (v8 + OBJC_IVAR___MUPlaceActionBarTypeDirections_modality);
    v10 = v8;
    swift_beginAccess();
    v12 = *v9;
    v11 = v9[1];
    v13 = (v10 + OBJC_IVAR___MUPlaceActionBarTypeDirections_eta);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    *v7 = v12;
    v7[1] = v11;
    v7[2] = v14;
    v7[3] = v15;
    (*(v3 + 104))(v7, *MEMORY[0x1E69AE040], v2);

LABEL_10:
    sub_1C584EEB0();
    v26 = sub_1C584EEC0();
    return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
  }

  type metadata accessor for MUPlaceActionBarTypeAdd();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
    v18 = v16;
    swift_beginAccess();
    *v7 = *(v18 + v17);
    v19 = MEMORY[0x1E69AE048];
LABEL_9:
    (*(v3 + 104))(v7, *v19, v2);
    goto LABEL_10;
  }

  type metadata accessor for MUPlaceActionBarTypeFavorite();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
    v22 = v20;
    swift_beginAccess();
    *v7 = *(v22 + v21);
    v19 = MEMORY[0x1E69AE060];
    goto LABEL_9;
  }

  type metadata accessor for MUPlaceActionBarTypeRate();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
    v25 = v23;
    swift_beginAccess();
    *v7 = *(v25 + v24);
    v19 = MEMORY[0x1E69AE050];
    goto LABEL_9;
  }

  v28 = sub_1C584EEC0();
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 1, 1, v28);
}

id MUPlaceActionBarController.actionDispatcher.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MUPlaceActionBarController.actionDispatcher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MUPlaceActionBarController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5714058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C57140B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*MUPlaceActionBarController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

id MUPlaceActionBarController.__allocating_init(actionDispatcher:delegate:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  swift_unknownObjectRelease();
  return v5;
}

id MUPlaceActionBarController.init(actionDispatcher:delegate:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t MUPlaceActionBarController.update(leadingItem:trailingItems:menuItems:)(char *a1, unint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for PlaceActionBarLayout(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v143 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v147 = &v139 - v13;
  v14 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v157 = *(v14 - 8);
  v15 = *(v157 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v140 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v141 = &v139 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v166 = &v139 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v165 = &v139 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v32 = (&v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v33);
  v156 = &v139 - v34;
  v155 = sub_1C584EB60();
  v146 = *(v155 - 8);
  v35 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v155, v36);
  v154 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v39 = *(*(v38 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v142 = &v139 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v164 = &v139 - v45;
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = &v139 - v47;
  v49 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  if (!a1 && a2)
  {
    if (a2 >> 62)
    {
      if (sub_1C584FB90())
      {
        goto LABEL_10;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if (a3)
    {
      if (a3 >> 62)
      {
        goto LABEL_66;
      }

      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        v50 = v49[161];
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong placeActionBarController:v3 didUpdateActionBarConfiguration:0];
          swift_unknownObjectRelease();
        }

        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v145 = v3;
    v53 = v157 + 56;
    v52 = *(v157 + 56);
    v52(v48, 1, 1, v14);
    v148 = v48;
    v144 = a3;
    if (a1)
    {
      v161 = v52;
      type metadata accessor for MUPlaceActionDispatcher.CustomAction();
      v54 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
      swift_beginAccess();
      v55 = *&a1[v54];

      v48 = a1;
      v160 = MUPlaceActionDispatcher.CustomAction.__allocating_init(handlers:)(v55);
      v56 = OBJC_IVAR___MUPlaceActionBarItem_type;
      swift_beginAccess();
      v57 = [*&v48[v56] symbol];
      v58 = sub_1C584F660();
      v158 = v59;
      v159 = v58;

      v60 = [*&v48[v56] title];
      v151 = a2;
      v162 = v32;
      v163 = v14;
      if (v60)
      {
        v61 = v60;
        v62 = sub_1C584F660();
        v152 = v63;
        v153 = v62;
      }

      else
      {
        v152 = 0;
        v153 = 0;
      }

      v64 = v154;
      sub_1C584EB50();
      v65 = sub_1C584EB40();
      v14 = v66;
      (*(v146 + 8))(v64, v155);
      v67 = &v48[OBJC_IVAR___MUPlaceActionBarItem_axID];
      swift_beginAccess();
      v69 = *v67;
      v68 = v67[1];

      v32 = v156;
      sub_1C5716754(v70);
      v71 = v160;
      v150 = v160;
      v136 = v65;
      v72 = v164;
      sub_1C57163A4(v32, v71, 0, 0, v159, v158, v153, v152, v164, v136, v14, v69, v68);
      a1 = v163;
      v161(v72, 0, 1, v163);
      v53 = v148;
      sub_1C56ECE38(v72, v148, &qword_1EC16FE18, &unk_1C5877850);
      v73 = *&v48[v56];
      a3 = v162;
      sub_1C5713890(v162);

      result = (*(v157 + 48))(v53, 1, a1);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_1C56ECE38(a3, v53, &unk_1EC170510, qword_1C5877770);
      a2 = v151;
    }

    v75 = a2 ? a2 : MEMORY[0x1E69E7CC0];
    v3 = v75;
    if (v75 >> 62)
    {
      v76 = sub_1C584FB90();
      if (!v76)
      {
LABEL_36:

        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }
    }

    else
    {
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v76)
      {
        goto LABEL_36;
      }
    }

    v153 = type metadata accessor for MUPlaceActionDispatcher.CustomAction();
    if (v76 < 1)
    {
      __break(1u);
      goto LABEL_60;
    }

    v149 = (v146 + 8);
    v150 = (v3 & 0xC000000000000001);

    v77 = v3;
    v78 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v151 = v76;
    v152 = v3;
    do
    {
      v162 = v32;
      if (v150)
      {
        v79 = MEMORY[0x1C694A320](v78, v77);
      }

      else
      {
        v79 = *(v77 + 8 * v78 + 32);
      }

      v80 = v79;
      v81 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
      swift_beginAccess();
      v82 = *&v80[v81];

      v161 = MUPlaceActionDispatcher.CustomAction.__allocating_init(handlers:)(v83);
      v84 = OBJC_IVAR___MUPlaceActionBarItem_type;
      swift_beginAccess();
      v85 = [*&v80[v84] symbol];
      v86 = sub_1C584F660();
      v158 = v87;
      v159 = v86;

      v88 = [*&v80[v84] title];
      if (v88)
      {
        v89 = v88;
        v90 = sub_1C584F660();
        v163 = v91;
        v164 = v90;
      }

      else
      {
        v163 = 0;
        v164 = 0;
      }

      v92 = v154;
      sub_1C584EB50();
      v93 = sub_1C584EB40();
      v14 = v94;
      (*v149)(v92, v155);
      v95 = &v80[OBJC_IVAR___MUPlaceActionBarItem_axID];
      swift_beginAccess();
      v96 = *v95;
      a2 = v95[1];

      v98 = v156;
      sub_1C5716754(v97);
      v99 = v161;
      v160 = v161;
      v138 = v96;
      v48 = v165;
      sub_1C57163A4(v98, v99, 0, 0, v159, v158, v164, v163, v165, v93, v14, v138, a2);
      v100 = *&v80[v84];
      sub_1C5713890(v98);

      sub_1C56ECE38(v98, v48, &unk_1EC170510, qword_1C5877770);
      sub_1C5715598(v48, v166, type metadata accessor for PlaceActionBarLayoutItem);
      v32 = v162;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1C571535C(0, v32[2] + 1, 1, v32);
      }

      v102 = v32[2];
      v101 = v32[3];
      if (v102 >= v101 >> 1)
      {
        v32 = sub_1C571535C(v101 > 1, v102 + 1, 1, v32);
      }

      ++v78;

      v32[2] = v102 + 1;
      sub_1C5715534(v166, v32 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v102);
      sub_1C5715600(v165, type metadata accessor for PlaceActionBarLayoutItem);
      v77 = v152;
    }

    while (v151 != v78);
LABEL_37:

    a3 = v144;
    if (!v144)
    {
      v53 = v145;
      a1 = v148;
      goto LABEL_55;
    }

    v3 = v144 & 0xFFFFFFFFFFFFFF8;
    v53 = v145;
    a1 = v148;
    if (!(v144 >> 62))
    {
      if (!*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      goto LABEL_40;
    }

LABEL_60:
    if (!sub_1C584FB90())
    {
      goto LABEL_55;
    }

LABEL_40:
    v49 = swift_allocObject();
    v49[2] = a3;
    a1 = (a3 & 0xC000000000000001);
    if ((a3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v3 + 16))
    {
      v103 = *(a3 + 32);

      v104 = v103;
      goto LABEL_43;
    }

    __break(1u);
LABEL_66:
    if (!sub_1C584FB90())
    {
      goto LABEL_8;
    }
  }

  v104 = MEMORY[0x1C694A320](0, a3);
LABEL_43:
  v105 = v104;
  v106 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v107 = *&v105[v106];

  v108 = [v107 symbol];
  v109 = sub_1C584F660();
  v111 = v110;

  if (a1)
  {
    v112 = MEMORY[0x1C694A320](0, a3);
  }

  else
  {
    v112 = *(a3 + 32);
  }

  v113 = v112;
  v114 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v115 = *&v113[v114];

  v116 = [v115 title];
  if (v116)
  {
    v117 = sub_1C584F660();
    v119 = v118;
  }

  else
  {
    v117 = 0;
    v119 = 0;
  }

  v120 = v154;
  sub_1C584EB50();
  v121 = sub_1C584EB40();
  v123 = v122;
  v124 = (*(v146 + 8))(v120, v155);
  v125 = v156;
  sub_1C5716754(v124);

  v137 = v121;
  v126 = v141;
  sub_1C57163A4(v125, sub_1C5715660, v49, 2, v109, v111, v117, v119, v141, v137, v123, 1970169165, 0xE400000000000000);
  v127 = v140;
  sub_1C5715598(v126, v140, type metadata accessor for PlaceActionBarLayoutItem);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1C571535C(0, v32[2] + 1, 1, v32);
  }

  a1 = v148;
  v129 = v32[2];
  v128 = v32[3];
  if (v129 >= v128 >> 1)
  {
    v32 = sub_1C571535C(v128 > 1, v129 + 1, 1, v32);
  }

  sub_1C5715600(v141, type metadata accessor for PlaceActionBarLayoutItem);
  v32[2] = v129 + 1;
  sub_1C5715534(v127, v32 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v129);
  v53 = v145;
LABEL_55:
  v130 = v142;
  sub_1C56466CC(a1, v142, &qword_1EC16FE18, &unk_1C5877850);
  v131 = v147;
  sub_1C57162A0(v130, v32, v147);
  type metadata accessor for PlaceActionBarConfiguration();
  v132 = v143;
  sub_1C5715598(v131, v143, type metadata accessor for PlaceActionBarLayout);
  v133 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v134 = sub_1C5704684(v132, *(v53 + v133), 0, 0);
  swift_beginAccess();
  v135 = swift_unknownObjectWeakLoadStrong();
  if (v135)
  {
    [v135 placeActionBarController:v53 didUpdateActionBarConfiguration:v134];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C5715600(v147, type metadata accessor for PlaceActionBarLayout);
  return sub_1C5625230(a1, &qword_1EC16FE18, &unk_1C5877850);
}

id MUPlaceActionBarController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUPlaceActionBarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_1C571535C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A50, &unk_1C5878AF0);
  v10 = *(type metadata accessor for PlaceActionBarLayoutItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PlaceActionBarLayoutItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1C5715534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceActionBarLayoutItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5715598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5715600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1C5715660(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_1C56466CC(a1, &v55, &qword_1EC16E790, &unk_1C586A110);
  sub_1C56466CC(a1, v53, &qword_1EC16E790, &unk_1C586A110);
  v47 = v5;
  if (!v54)
  {
    sub_1C5625230(v53, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_8;
  }

  sub_1C5626E40(0, &qword_1EC1705A0, 0x1E69DC708);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (![v50 respondsToSelector_])
  {

LABEL_8:
    sub_1C56466CC(a1, v53, &qword_1EC16E790, &unk_1C586A110);
    if (v54)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170590, &unk_1C58777D0);
      if (swift_dynamicCast())
      {
        if ([v50 respondsToSelector_])
        {
          v9 = [v50 button];
          swift_unknownObjectRelease();
          if (v9)
          {
            v10 = sub_1C5626E40(0, &qword_1EC170598, 0x1E69DC738);
            sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
          }

          else
          {
            sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
            v10 = 0;
          }

          v11 = 0uLL;
        }

        else
        {
          swift_unknownObjectRelease();
          v11 = v56;
          v9 = v55;
          v10 = v57;
        }

        v56 = v11;
        v55 = v9;
        v57 = v10;
      }
    }

    else
    {
      sub_1C5625230(v53, &qword_1EC16E790, &unk_1C586A110);
    }

    goto LABEL_18;
  }

  result = [v50 performSelector_];
  if (!result)
  {
    goto LABEL_54;
  }

  v7 = result;
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();

  sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
  v55 = v7;
  v57 = ObjectType;
LABEL_18:
  v52 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_47:
    v12 = sub_1C584FB90();
    if (v12)
    {
      goto LABEL_20;
    }

LABEL_48:
    v14 = MEMORY[0x1E69E7CC0];
LABEL_49:
    if (v14 >> 62)
    {
      sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);

      sub_1C584FD10();
    }

    else
    {

      sub_1C584FDD0();
      sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
    }

    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    v42 = sub_1C584FA70();
    sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
    return v42;
  }

  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_48;
  }

LABEL_20:
  v13 = 0;
  v48 = v5 & 0xC000000000000001;
  v45 = v5 + 32;
  v46 = v5 & 0xFFFFFFFFFFFFFF8;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v48)
    {
      v15 = MEMORY[0x1C694A320](v13, v5);
    }

    else
    {
      if (v13 >= *(v46 + 16))
      {
        goto LABEL_46;
      }

      v15 = *(v45 + 8 * v13);
    }

    v16 = v15;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v18 = OBJC_IVAR___MUPlaceActionBarItem_menuProviders;
    swift_beginAccess();
    v19 = *&v16[v18];
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *&v16[v18];

      v22 = (v19 + 40);
      do
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        v49[0] = a2;

        v24(&v51, &v55, v49);

        if (v51)
        {
          v25 = v51;
          MEMORY[0x1C6949DF0](v25);
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v44 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C584F7A0();
          }

          sub_1C584F7E0();

          v14 = v52;
        }

        v22 += 2;
        --v20;
      }

      while (v20);

      v5 = v47;
      goto LABEL_22;
    }

    v26 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
    swift_beginAccess();
    v27 = *&v16[v26];
    if (!(v27 >> 62))
    {
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_44;
    }

    if (v27 < 0)
    {
      v41 = *&v16[v26];
    }

    if (sub_1C584FB90())
    {
      break;
    }

LABEL_44:

LABEL_22:
    if (v13 == v12)
    {
      goto LABEL_49;
    }
  }

  v28 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  result = [*&v16[v28] title];
  if (result)
  {
    v29 = result;
    sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
    sub_1C584F660();

    v30 = [*&v16[v28] symbol];
    v31 = [objc_opt_self() systemImageNamed_];

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = v32;
    v33 = sub_1C584FAD0();
    v34 = &v16[OBJC_IVAR___MUPlaceActionBarItem_axID];
    swift_beginAccess();
    v35 = *(v34 + 1);
    v49[0] = *v34;
    v49[1] = v35;
    v36 = v33;

    MEMORY[0x1C6949D90](0x6D657449756E654DLL, 0xE800000000000000);
    v37 = sub_1C584F630();

    [v36 setAccessibilityIdentifier_];

    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1C5867970;
    *(v38 + 32) = v36;
    v39 = v36;
    v40 = sub_1C584FA70();
    MEMORY[0x1C6949DF0](v40);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    v14 = v52;
    goto LABEL_22;
  }

  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void sub_1C5715EB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3 >> 62)
    {
      v4 = sub_1C584FB90();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1C694A320](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
            _Block_copy(v6);
          }

          v6[2](v6);
          _Block_release(v6);
        }
      }
    }
  }
}

uint64_t sub_1C5715FE4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA08);
  __swift_project_value_buffer(v0, qword_1EC18FA08);
  swift_beginAccess();

  return sub_1C584F2B0();
}

uint64_t sub_1C57160A8()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC190458);
  __swift_project_value_buffer(v0, qword_1EC190458);
  swift_beginAccess();

  return sub_1C584F2B0();
}

uint64_t sub_1C5716174(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1C584F2C0();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1C57161C8()
{
  v1 = [*v0 serviceResumesDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

id sub_1C5716230()
{
  result = [*v0 line];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C57162A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C56534F4(a1, a3, &qword_1EC16FE18, &unk_1C5877850);
  result = type metadata accessor for PlaceActionBarLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

id sub_1C5716310(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_1C5716338@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C584EEC0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

int *sub_1C57163A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C56534F4(a1, a9, &unk_1EC170510, qword_1C5877770);
  result = type metadata accessor for PlaceActionBarLayoutItem(0);
  v21 = a9 + result[5];
  *v21 = a2;
  *(v21 + 8) = a3;
  *(v21 + 16) = a4;
  v22 = (a9 + result[6]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + result[7]);
  *v23 = a7;
  v23[1] = a8;
  v24 = (a9 + result[8]);
  *v24 = a10;
  v24[1] = a11;
  v25 = (a9 + result[9]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

void sub_1C57164A4()
{
  sub_1C5716588(319, &qword_1EC16D108, type metadata accessor for PlaceActionBarLayoutItem, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C5716588(319, &qword_1EC16D090, type metadata accessor for PlaceActionBarLayoutItem, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5716588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5716614()
{
  sub_1C5716588(319, &qword_1EC16D890, MEMORY[0x1E69AE080], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C57166E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C57166E8()
{
  if (!qword_1EC16D0D0)
  {
    v0 = sub_1C584FAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC16D0D0);
    }
  }
}

uint64_t WatchPlaceAcceptsPaymentsViewModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WatchPlaceAcceptsPaymentsViewModel.init(title:amenityItemViewModels:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C57167A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1C571681C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C5716864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C57168D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1C5716920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WatchPlaceRibbonItemViewModel.axIDPrefix.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WatchPlaceRibbonItemViewModel.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WatchPlaceRibbonItemViewModel.symbol.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t WatchPlaceRibbonItemViewModel.text.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C5716B90();
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v0 + 72);
  v1 = *(v4 + 80);

  return v2;
}

uint64_t sub_1C5716AC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5716B90();
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_1C5716B50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return WatchPlaceRibbonItemViewModel.text.setter(v2, v3);
}

unint64_t sub_1C5716B90()
{
  result = qword_1EC170620;
  if (!qword_1EC170620)
  {
    type metadata accessor for WatchPlaceRibbonItemViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170620);
  }

  return result;
}

uint64_t type metadata accessor for WatchPlaceRibbonItemViewModel()
{
  result = qword_1EC18E1C0;
  if (!qword_1EC18E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchPlaceRibbonItemViewModel.text.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (v6 = *(v2 + 80), (sub_1C584FDC0() & 1) != 0))
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1C5716B90();
    sub_1C584EF30();
  }
}

uint64_t sub_1C5716D58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 80);
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

void (*WatchPlaceRibbonItemViewModel.text.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI29WatchPlaceRibbonItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C5716B90();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5716ED0;
}

void sub_1C5716ED0(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C584EF50();

  free(v1);
}

void *WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:text:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  sub_1C584EF70();
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = a6;
  v20[10] = a7;
  v20[2] = a8;
  v20[3] = a9;
  return v20;
}

void *WatchPlaceRibbonItemViewModel.init(title:symbol:symbolColor:text:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C584EF70();
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  v9[8] = a5;
  v9[9] = a6;
  v9[10] = a7;
  v9[2] = a8;
  v9[3] = a9;
  return v9;
}

void *WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v40 = a7;
  v41 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170628, &unk_1C5877AE0);
  v38 = *(v23 - 8);
  v39 = v23;
  v24 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v37 = &v36 - v26;
  v27 = *(v11 + 48);
  v28 = *(v11 + 52);
  v29 = swift_allocObject();
  sub_1C584EF70();
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = a3;
  v29[7] = a4;
  v29[8] = a5;
  v29[9] = a6;
  v29[10] = v40;
  v29[2] = a9;
  v29[3] = a10;
  v30 = v41;
  sub_1C57176FC(v41, v22);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v22, 1, v31) == 1)
  {
    sub_1C571776C(v30);
    sub_1C571776C(v22);
  }

  else
  {
    sub_1C563D368(&qword_1EC170630, &qword_1EC16E138, &qword_1C5869668);

    v33 = v37;
    sub_1C584F3D0();
    (*(v32 + 8))(v22, v31);
    swift_allocObject();
    swift_weakInit();
    sub_1C563D368(&qword_1EC170638, &qword_1EC170628, &unk_1C5877AE0);
    v34 = v39;
    sub_1C584F3E0();

    sub_1C571776C(v30);
    (*(v38 + 8))(v33, v34);
  }

  return v29;
}

void *WatchPlaceRibbonItemViewModel.init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v37 = a7;
  v38 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v33 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170628, &unk_1C5877AE0);
  v35 = *(v23 - 8);
  v36 = v23;
  v24 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v34 = &v33 - v26;
  sub_1C584EF70();
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  v11[9] = a6;
  v11[10] = v37;
  v11[2] = a9;
  v11[3] = a10;
  v27 = v38;
  sub_1C57176FC(v38, v22);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v22, 1, v28) == 1)
  {
    sub_1C571776C(v27);
    sub_1C571776C(v22);
  }

  else
  {
    sub_1C563D368(&qword_1EC170630, &qword_1EC16E138, &qword_1C5869668);

    v30 = v34;
    sub_1C584F3D0();
    (*(v29 + 8))(v22, v28);
    swift_allocObject();
    swift_weakInit();
    sub_1C563D368(&qword_1EC170638, &qword_1EC170628, &unk_1C5877AE0);
    v31 = v36;
    sub_1C584F3E0();

    sub_1C571776C(v27);
    (*(v35 + 8))(v30, v31);
  }

  return v11;
}

uint64_t sub_1C57176FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C571776C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C57177D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C57177E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    WatchPlaceRibbonItemViewModel.text.setter(v1, v2);
  }

  return result;
}

char *WatchPlaceRibbonItemViewModel.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC6MapsUI29WatchPlaceRibbonItemViewModel___observationRegistrar;
  v7 = sub_1C584EF80();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t WatchPlaceRibbonItemViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC6MapsUI29WatchPlaceRibbonItemViewModel___observationRegistrar;
  v7 = sub_1C584EF80();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C57179B4()
{
  result = sub_1C584EF80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5717ABC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C5717B18(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t MUWebBasedPlacecardViewController.viewControllerDelegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t MUWebBasedPlacecardViewController.viewControllerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MUWebBasedPlacecardViewController.viewControllerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5634780;
}

uint64_t MUWebBasedPlacecardViewController.defaultHeight.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1C5717D24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5717D80(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_1C5717E48();
}

uint64_t MUWebBasedPlacecardViewController.defaultHeight.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_1C5717E48();
}

uint64_t sub_1C5717E48()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint);
  if (v2)
  {
    v3 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
    swift_beginAccess();
    v4 = *v3;
    if (*(v3 + 8))
    {
      v4 = 0.0;
    }

    [v2 setConstant_];
    v5 = *(v0 + v1);
    if (v5)
    {
LABEL_5:
      v6 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
      swift_beginAccess();
      v7 = *(v0 + v6);
      v8 = v5;
      v9 = [v7 scrollView];
      v10 = [v9 isScrollEnabled];

      [v8 setActive_];
    }
  }

  else
  {
    v15 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v16 = [*(v0 + v15) heightAnchor];
    v17 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
    swift_beginAccess();
    v18 = *v17;
    if (*(v17 + 8))
    {
      v18 = 0.0;
    }

    v19 = [v16 constraintEqualToConstant_];

    v20 = *(v0 + v1);
    *(v0 + v1) = v19;

    v5 = *(v0 + v1);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v11 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*MUWebBasedPlacecardViewController.defaultHeight.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C57180A4;
}

uint64_t sub_1C57180A4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1C5717E48();
  }

  return result;
}

id MUWebBasedPlacecardViewController.webView.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

char *MUWebBasedPlacecardViewController.init(webView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController] = 0;
  v5 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v5] = sub_1C571A608(MEMORY[0x1E69E7CC0], &qword_1EC1706E8, &qword_1C5877C50);
  v7 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
  *&v1[v7] = sub_1C571A608(v6, &qword_1EC1706E0, &qword_1C5877C48);
  *&v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView] = a1;
  v30.receiver = v1;
  v30.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  v10 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = v9;
  v13 = [v11 scrollView];
  [v13 setDelegate_];

  v14 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v15 = *&v12[v14];
  v16 = sub_1C584F630();
  [v15 setAccessibilityIdentifier_];

  result = [v12 view];
  if (result)
  {
    v18 = result;
    [result addSubview_];

    [*&v12[v14] setTranslatesAutoresizingMaskIntoConstraints_];
    v19 = [*&v12[v14] scrollView];
    [v19 setContentInsetAdjustmentBehavior_];

    v20 = *&v12[v14];
    result = [v12 view];
    if (result)
    {
      v21 = result;
      v22 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v20 container:result];

      v23 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C5867970;
      *(v24 + 32) = v22;
      sub_1C5626E40(0, &qword_1EC16CFF8, off_1E8216188);
      v25 = v22;
      v26 = sub_1C584F750();

      [v23 _mapsui_activateLayouts_];

      v27 = objc_opt_self();
      v28 = [v27 defaultCenter];
      [v28 addObserver:v12 selector:sel_sceneDidEnterBackground name:*MEMORY[0x1E69DE348] object:0];

      v29 = [v27 defaultCenter];
      [v29 addObserver:v12 selector:sel_sceneWillEnterForeground name:*MEMORY[0x1E69DE360] object:0];

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

id MUWebBasedPlacecardViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    [*&v0[v3] removeConstraint_];
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 removeObserver:v0 name:*MEMORY[0x1E69DE348] object:0];

  v6 = [v4 defaultCenter];
  [v6 removeObserver:v0 name:*MEMORY[0x1E69DE360] object:0];

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];

  v3 = [v1 mainScreen];
  UIRoundToScreenScale();
  v5 = v4;

  v6 = &v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight];
  swift_beginAccess();
  *v6 = v5;
  v6[8] = 0;
  sub_1C5717E48();
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  v3 = &v1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.viewDidLayoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController];
  if (v1)
  {
    [v1 updateLayoutForBoundsChange];
  }
}

void sub_1C5718B84(char *a1, uint64_t a2, char a3)
{
  v5 = &a1[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    v9 = a1;
    v8(a3 & 1, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

void sub_1C5718C3C()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v2 = [*(v0 + v1) scrollView];
  v3 = [v2 subviews];

  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
  v4 = sub_1C584F770();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:

    v10 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = MEMORY[0x1E69E7CC8];
    *(v0 + v10) = MEMORY[0x1E69E7CC8];

    v13 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
    swift_beginAccess();
    v14 = *(v0 + v13);
    *(v0 + v13) = v12;

    return;
  }

  v5 = sub_1C584FB90();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 || (type metadata accessor for MUTextSelectionView(), (v9 = swift_dynamicCastClass()) != 0))
      {
        [v9 removeFromSuperview];
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

id sub_1C5718EA0()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController;
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController];
  if (v2)
  {
    [v2 removeLoadingOverlayAnimated:0 completion:0];
  }

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v6 = [objc_allocWithZone(MULoadingOverlayController) initWithParentView:v4 contentView:*&v0[v5]];

    v7 = *&v0[v1];
    *&v0[v1] = v6;

    v8 = *&v0[v1];
    if (v8)
    {
      v9 = v8;
      GEOConfigGetDouble();
      [v9 setShowAfterInterval_];

      v10 = *&v0[v1];
      if (v10)
      {
        [v10 attachLoadingOverlay];
      }
    }

    sub_1C5718C3C();
    return sub_1C5717E48();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5719014()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController);
  if (v2)
  {
    [v2 removeLoadingOverlayAnimated:1 completion:0];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *MEMORY[0x1E69DD930];

  UIAccessibilityPostNotification(v4, 0);
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.removeInitialView()()
{
  v1 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController);
  if (v2)
  {
    [v2 removeLoadingOverlayAnimated:1 completion:0];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1C57191B4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5694BCC();
  v20 = v19;
  v21 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (*(v22 + 16))
  {
    v68 = v4;
    v23 = v21;
    v24 = v12;
    v25 = v17;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = sub_1C5645D34(v18, v20);
    v31 = v30;

    if (v31)
    {
      v32 = *(*(v22 + 56) + 8 * v29);
      v33 = v32;
    }

    else
    {
      v32 = 0;
    }

    a3 = v28;
    a2 = v27;
    a1 = v26;
    v17 = v25;
    v12 = v24;
    v21 = v23;
    v4 = v68;
  }

  else
  {

    v32 = 0;
  }

  swift_endAccess();
  sub_1C5694BE4(v17);
  v34 = sub_1C56959D4();
  v35 = sub_1C56959EC();
  v36 = sub_1C5695A1C();
  v37 = sub_1C5695A04();
  if (v32)
  {
    v38 = qword_1EC17B050;
    v39 = v32;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = sub_1C584F2C0();
    __swift_project_value_buffer(v40, qword_1EC18FA50);
    v41 = v39;
    v42 = sub_1C584F2A0();
    v43 = sub_1C584F990();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v32;
      v46 = v41;
      _os_log_impl(&dword_1C5620000, v42, v43, "Updated existing UIMenu's frame: %@", v44, 0xCu);
      sub_1C567CCE0(v45);
      MEMORY[0x1C694B7A0](v45, -1, -1);
      MEMORY[0x1C694B7A0](v44, -1, -1);
    }

    [v41 setFrame:v34, v35, v36, v37];
    v47 = v41;
  }

  else
  {
    type metadata accessor for MUWebUIMenu();
    sub_1C571A800(a1, v12);
    v48 = sub_1C5773AD4(v12, a2, v34, v35, v36, v37);
    v49 = &v48[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate];
    swift_beginAccess();
    *(v49 + 1) = &off_1F44C6BB0;
    swift_unknownObjectWeakAssign();
    v50 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_mapItem;
    swift_beginAccess();
    v51 = *&v48[v50];
    *&v48[v50] = a3;

    v52 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v53 = *(v4 + v52);
    v54 = a3;
    v55 = [v53 scrollView];
    [v55 addSubview_];

    v56 = sub_1C5694BCC();
    v58 = v57;
    swift_beginAccess();
    v59 = v48;
    v60 = *(v4 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v4 + v21);
    *(v4 + v21) = 0x8000000000000000;
    sub_1C571A310(v59, v56, v58, isUniquelyReferenced_nonNull_native, &qword_1EC1706E8, &qword_1C5877C50);

    *(v4 + v21) = v69;
    swift_endAccess();
    if (qword_1EC17B050 != -1)
    {
      swift_once();
    }

    v62 = sub_1C584F2C0();
    __swift_project_value_buffer(v62, qword_1EC18FA50);
    v63 = v59;
    v47 = sub_1C584F2A0();
    v64 = sub_1C584F990();

    if (os_log_type_enabled(v47, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v63;
      *v66 = v63;
      v41 = v63;
      _os_log_impl(&dword_1C5620000, v47, v64, "Added new UIMenu: %@", v65, 0xCu);
      sub_1C567CCE0(v66);
      MEMORY[0x1C694B7A0](v66, -1, -1);
      MEMORY[0x1C694B7A0](v65, -1, -1);
    }

    else
    {
      v41 = v47;
      v47 = v63;
    }
  }

  return sub_1C571A864(v17);
}

uint64_t sub_1C5719754()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5694BFC();
  v9 = v8;
  v10 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_1C5645D34(v7, v9);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v12);
      v16 = v15;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_6:
  swift_endAccess();
  sub_1C5694C2C(v6);
  v17 = sub_1C56959D4();
  v18 = sub_1C56959EC();
  v19 = sub_1C5695A1C();
  v20 = sub_1C5695A04();
  if (v15)
  {
    v21 = qword_1EC17B050;
    v22 = v15;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_1C584F2C0();
    __swift_project_value_buffer(v23, qword_1EC18FA50);
    v24 = v22;
    v25 = sub_1C584F2A0();
    v26 = sub_1C584F990();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v15;
      v29 = v24;
      _os_log_impl(&dword_1C5620000, v25, v26, "Updated existing text selection view's frame: %@", v27, 0xCu);
      sub_1C567CCE0(v28);
      MEMORY[0x1C694B7A0](v28, -1, -1);
      MEMORY[0x1C694B7A0](v27, -1, -1);
    }

    [v24 setFrame:v17, v18, v19, v20];
    v30 = v24;
  }

  else
  {
    type metadata accessor for MUTextSelectionView();
    v31 = sub_1C565D6A4(v17, v18, v19, v20);
    v32 = sub_1C5694C14();
    v34 = v33;
    v35 = &v31[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text];
    swift_beginAccess();
    v36 = v35[1];
    *v35 = v32;
    v35[1] = v34;

    v37 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
    swift_beginAccess();
    v38 = [*(v1 + v37) scrollView];
    v39 = v31;
    [v38 addSubview_];

    v40 = sub_1C5694BFC();
    v42 = v41;
    swift_beginAccess();
    v43 = *(v1 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v1 + v10);
    *(v1 + v10) = 0x8000000000000000;
    sub_1C571A310(v39, v40, v42, isUniquelyReferenced_nonNull_native, &qword_1EC1706E0, &qword_1C5877C48);

    *(v1 + v10) = v51;
    swift_endAccess();
    if (qword_1EC17B050 != -1)
    {
      swift_once();
    }

    v45 = sub_1C584F2C0();
    __swift_project_value_buffer(v45, qword_1EC18FA50);
    v46 = v39;
    v30 = sub_1C584F2A0();
    v47 = sub_1C584F990();

    if (os_log_type_enabled(v30, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v46;
      *v49 = v46;
      v24 = v46;
      _os_log_impl(&dword_1C5620000, v30, v47, "Added new text selection view: %@", v48, 0xCu);
      sub_1C567CCE0(v49);
      MEMORY[0x1C694B7A0](v49, -1, -1);
      MEMORY[0x1C694B7A0](v48, -1, -1);
    }

    else
    {
      v24 = v30;
      v30 = v46;
    }
  }

  return sub_1C571A864(v6);
}

id MUWebBasedPlacecardViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C584F630();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1C5719D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v15 = sub_1C57042D4(a5);
    (*(v13 + 24))(a1, a2, a3, a4, v15, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall MUWebBasedPlacecardViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v3 = v1 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(v1, a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5719FD0()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA50);
  __swift_project_value_buffer(v0, qword_1EC18FA50);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_1C584F2B0();
}

uint64_t sub_1C571A074(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1C584FD40();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_1C584FEA0();
      sub_1C584F6C0();
      result = sub_1C584FEF0();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1C571A310(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C5645D34(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1C571A074(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_1C5645D34(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1C584FE00();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_1C571A4AC(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

id sub_1C571A4AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C584FD30();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_1C571A608(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C584FD50();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1C5645D34(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C571A704()
{
  *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_defaultHeight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController) = 0;
  v2 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_UIMenusDictionary;
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + v2) = sub_1C571A608(MEMORY[0x1E69E7CC0], &qword_1EC1706E8, &qword_1C5877C50);
  v4 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_textSelectionViewsDictionary;
  *(v0 + v4) = sub_1C571A608(v3, &qword_1EC1706E0, &qword_1C5877C48);
  sub_1C584FD00();
  __break(1u);
}

uint64_t sub_1C571A800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C571A864(uint64_t a1)
{
  v2 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t String._mapsui_nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

uint64_t String._mapsui_quotedForLocale.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584ECE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v34 - v12;
  sub_1C584EC80();
  v14 = sub_1C584EC40();
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v13, v4);
  v34[6] = v14;
  v34[7] = v16;
  v34[8] = a1;
  v34[9] = a2;

  sub_1C584EC80();
  v18 = sub_1C584EC30();
  v20 = v19;
  result = (v17)(v10, v4);
  v22 = 0;
  v34[10] = v18;
  v34[11] = v20;
  v23 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v22 <= 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 + 1;
  v26 = 16 * v22 + 40;
  while (1)
  {
    if (v22 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE60, &unk_1C5877750);
      swift_arrayDestroy();
      v34[1] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
      sub_1C571AC5C();
      v33 = sub_1C584F600();

      return v33;
    }

    if (v25 == ++v22)
    {
      break;
    }

    v27 = v26 + 16;
    v28 = *(&v34[2] + v26);
    v26 += 16;
    if (v28)
    {
      v29 = *(&v34[-1] + v27);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C5638228(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1C5638228((v30 > 1), v31 + 1, 1, v23);
        v23 = result;
      }

      *(v23 + 16) = v31 + 1;
      v32 = v23 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C571AC5C()
{
  result = qword_1EC170BB0;
  if (!qword_1EC170BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16DA70, &qword_1C58679D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170BB0);
  }

  return result;
}

void sub_1C571ACC0(void *a1)
{
  sub_1C571D518();
}

void (*sub_1C571AD30(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C571ADC0;
}

void sub_1C571ADC0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v6 = *(v3 + 32);
    swift_endAccess();

    sub_1C5623E9C();
  }

  free(v3);
}

uint64_t sub_1C571AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1C571CC38(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1C5645D34(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1C571CDB0();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1C571CA88(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1C571AF44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C566CE90(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1C571AFD4(int64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1C584FB90();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_1C584FB90() / 8)
    {
      v6 = sub_1C584FB90();
      a2 = sub_1C571BACC(v5, v6, &qword_1EC170700, &unk_1C5877E48, &qword_1ED77E810, 0x1E696ACD8);
      return sub_1C5627A10(a1, a2, &qword_1ED77E810, 0x1E696ACD8, &qword_1ED77E808, &qword_1EC170700, &unk_1C5877E48);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_1C5627A10(a1, a2, &qword_1ED77E810, 0x1E696ACD8, &qword_1ED77E808, &qword_1EC170700, &unk_1C5877E48);
  }

  sub_1C571B874(a1);
  return a2;
}

uint64_t sub_1C571B0F0(int64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1C584FB90();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_1C584FB90() / 8)
    {
      v6 = sub_1C584FB90();
      a2 = sub_1C571BACC(v5, v6, &qword_1EC1706F8, &qword_1C5877E40, &unk_1ED77E840, 0x1E69DCC20);
      return sub_1C5627A10(a1, a2, &unk_1ED77E840, 0x1E69DCC20, &qword_1ED77E838, &qword_1EC1706F8, &qword_1C5877E40);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_1C5627A10(a1, a2, &unk_1ED77E840, 0x1E69DCC20, &qword_1ED77E838, &qword_1EC1706F8, &qword_1C5877E40);
  }

  sub_1C571B61C(a1);
  return a2;
}

uint64_t sub_1C571B20C()
{
  sub_1C571D464();
}

uint64_t sub_1C571B234()
{
  sub_1C571D4BC();
}

void (*sub_1C571B290(uint64_t *a1))(uint64_t a1)
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
  *(v4 + 24) = *(v1 + 16);
  return sub_1C571B31C;
}

void sub_1C571B31C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  sub_1C5623FC8(*(*a1 + 24));

  free(v1);
}

void sub_1C571B35C(void *a1)
{
  sub_1C571D64C();
}

void (*sub_1C571B394(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1C571AD30(v2);
  return sub_1C571B404;
}

void sub_1C571B404(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1C571B484(uint64_t *a1))()
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
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C571D7D8;
}

void sub_1C571B514(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1C571B594(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1C571B61C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_1C584FB90())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C584FB80();
    sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
    sub_1C56279C0(&qword_1ED77E838, &unk_1ED77E840, 0x1E69DCC20);
    sub_1C584F950();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_1C56280F4();
      return;
    }

    while (1)
    {
      v18 = sub_1C571BCCC(v17, &unk_1ED77E840, 0x1E69DCC20, &qword_1EC1706F8, &qword_1C5877E40);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1C584FBB0())
      {
        sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1C571B874(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_1C584FB90())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C584FB80();
    sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
    sub_1C56279C0(&qword_1ED77E808, &qword_1ED77E810, 0x1E696ACD8);
    sub_1C584F950();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_1C56280F4();
      return;
    }

    while (1)
    {
      v18 = sub_1C571BCCC(v17, &qword_1ED77E810, 0x1E696ACD8, &qword_1EC170700, &unk_1C5877E48);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1C584FBB0())
      {
        sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1C571BACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1C584FC20();
    v24 = v10;
    sub_1C584FB80();
    if (sub_1C584FBB0())
    {
      sub_1C5626E40(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_1C5627224(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_1C584FAB0();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_1C584FBB0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1C571BCCC(void *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *v5;

    v14 = a1;
    v15 = sub_1C584FBC0();

    if (v15)
    {
      v16 = sub_1C571C384(v12, v14, a4, a5, a2, a3);

      return v16;
    }

    return 0;
  }

  v29 = v5;
  sub_1C5626E40(0, a2, a3);
  v18 = *(v9 + 40);
  v19 = sub_1C584FAB0();
  v20 = -1 << *(v9 + 32);
  v21 = v19 & ~v20;
  if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v20;
  while (1)
  {
    v23 = *(*(v9 + 48) + 8 * v21);
    v24 = sub_1C584FAC0();

    if (v24)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v29;
  v30 = *v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C571C504(a4, a5);
    v27 = v30;
  }

  v28 = *(*(v27 + 48) + 8 * v21);
  sub_1C571C644(v21);
  result = v28;
  *v29 = v30;
  return result;
}

unint64_t sub_1C571BE80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C584FAB0();
  v5 = -1 << *(a2 + 32);
  result = sub_1C584FB70();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1C571BF04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v9 = a5;
  v11 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v12 = v11 - 1;
  v41 = a3 + 56;
  while (2)
  {
    v36 = v12;
    do
    {
      while (1)
      {
        if ((*v9 & 0x8000000000000000) != 0)
        {
          if (!sub_1C584FBB0())
          {
            goto LABEL_30;
          }

          sub_1C5626E40(0, a6, a7);
          swift_dynamicCast();
          v16 = v42;
          if (!v42)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v13 = v9[3];
          v14 = v9[4];
          if (!v14)
          {
            v17 = (v9[2] + 64) >> 6;
            if (v17 <= v13 + 1)
            {
              v18 = v13 + 1;
            }

            else
            {
              v18 = (v9[2] + 64) >> 6;
            }

            v19 = v18 - 1;
            while (1)
            {
              v15 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                break;
              }

              if (v15 >= v17)
              {
                v16 = 0;
                v20 = 0;
                goto LABEL_18;
              }

              v14 = *(v9[1] + 8 * v15);
              ++v13;
              if (v14)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v15 = v9[3];
LABEL_17:
          v20 = (v14 - 1) & v14;
          v16 = *(*(*v9 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
          v21 = v16;
          v19 = v15;
LABEL_18:
          v9[3] = v19;
          v9[4] = v20;
          if (!v16)
          {
LABEL_30:

            sub_1C571C198(a1, a2, v36, a3, a8, a9);
            return;
          }
        }

        v22 = *(a3 + 40);
        v23 = sub_1C584FAB0();
        v24 = -1 << *(a3 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v41 + 8 * (v25 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1C5626E40(0, a6, a7);
        v28 = *(*(a3 + 48) + 8 * v25);
        v29 = sub_1C584FAC0();

        if (v29)
        {
          break;
        }

        v30 = ~v24;
        while (1)
        {
          v25 = (v25 + 1) & v30;
          v26 = v25 >> 6;
          v27 = 1 << v25;
          if (((1 << v25) & *(v41 + 8 * (v25 >> 6))) == 0)
          {
            break;
          }

          v31 = *(*(a3 + 48) + 8 * v25);
          v32 = sub_1C584FAC0();

          if (v32)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v9 = a5;
      }

LABEL_24:

      v9 = a5;
      v33 = a1[v26];
      a1[v26] = v33 & ~v27;
    }

    while ((v33 & v27) == 0);
    v12 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v36 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1C571C198(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1C584FC30();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1C584FAB0();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C571C384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;

  v13 = sub_1C584FB90();
  v14 = swift_unknownObjectRetain();
  v15 = sub_1C571BACC(v14, v13, a3, a4, a5, a6);
  v25 = v15;
  v16 = *(v15 + 40);

  v17 = sub_1C584FAB0();
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    sub_1C5626E40(0, a5, a6);
    while (1)
    {
      v21 = *(*(v15 + 48) + 8 * v19);
      v22 = sub_1C584FAC0();

      if (v22)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v23 = *(*(v15 + 48) + 8 * v19);
  sub_1C571C644(v19);
  result = sub_1C584FAC0();
  if (result)
  {
    *v11 = v25;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C571C504(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C584FC00();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_1C571C644(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C584FB60();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1C584FAB0();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1C571C7E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170710, &unk_1C5877E60);
  v39 = a2;
  result = sub_1C584FD40();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1C584FEA0();
      sub_1C584F6C0();
      result = sub_1C584FEF0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C571CA88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C584FB60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C584FEA0();

      sub_1C584F6C0();
      v13 = sub_1C584FEF0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C571CC38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C5645D34(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C571C7E4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1C5645D34(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1C584FE00();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1C571CDB0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_1C571CDB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170710, &unk_1C5877E60);
  v2 = *v0;
  v3 = sub_1C584FD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t *sub_1C571CF1C(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1C584FB80();
  sub_1C5626E40(0, a5, a6);
  sub_1C56279C0(a7, a5, a6);
  result = sub_1C584F950();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1C584FBB0())
      {
        goto LABEL_30;
      }

      sub_1C5626E40(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_1C571D14C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C584FB90())
  {
    v4 = sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
    v5 = sub_1C56279C0(&qword_1ED77E808, &qword_1ED77E810, 0x1E696ACD8);
    result = MEMORY[0x1C6949FF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E696ACD8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C694A320](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1C5626BCC(&v12, v10, &qword_1ED77E810, 0x1E696ACD8, &qword_1EC170700, &unk_1C5877E48);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1C584FB90();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C571D2D8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C584FB90())
  {
    v4 = sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
    v5 = sub_1C56279C0(&qword_1ED77E838, &unk_1ED77E840, 0x1E69DCC20);
    result = MEMORY[0x1C6949FF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E69DCC20uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C694A320](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1C5626BCC(&v12, v10, &unk_1ED77E840, 0x1E69DCC20, &qword_1EC1706F8, &qword_1C5877E40);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1C584FB90();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C571D464()
{
  sub_1C5624064();
  sub_1C5627450();
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C571D4BC()
{
  sub_1C5624064();
  sub_1C5627450();
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *(v1 + 8);
}

void sub_1C571D518()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    if (Strong)
    {
      sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
      v5 = Strong;
      v6 = sub_1C584FAC0();

      if (v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!Strong)
  {
    goto LABEL_10;
  }

  *(v1 + *(*v1 + 136)) = 1;
  sub_1C5623E9C();
  swift_beginAccess();
  if (v1[2] == 2)
  {
    sub_1C5624064();
    sub_1C5627450();
  }

LABEL_10:
}

void sub_1C571D64C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1C5623E9C();
}

uint64_t sub_1C571D698(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C571D6E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C571D770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16FE40, &qword_1C5876370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConstraintLayout.layoutConstraints.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  v2 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t ConstraintLayout.layoutGuides.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  v2 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t ConstraintLayout.mode.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  v2 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t ConstraintLayout.mode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  v4 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(a1, ObjectType, v3);
}

uint64_t sub_1C571DB14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v5 + 24))(ObjectType, v5);
  *a2 = result;
  return result;
}

uint64_t sub_1C571DB74(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  return (*(v5 + 32))(v2, ObjectType, v5);
}

uint64_t (*ConstraintLayout.mode.modify(void *a1))(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  a1[1] = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = (*(v3 + 24))();
  return sub_1C571DC58;
}

uint64_t ConstraintLayout.viewForForwardingSetNeedsUpdateConstraints.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  v2 = *(v0 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(ObjectType, v1);
}

uint64_t ConstraintLayout.viewForForwardingSetNeedsUpdateConstraints.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  v4 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  ObjectType = swift_getObjectType();
  return (*(v3 + 56))(a1, ObjectType, v3);
}

uint64_t sub_1C571DE8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v5 + 48))(ObjectType, v5);
  *a2 = result;
  return result;
}

uint64_t sub_1C571DEEC(void **a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 56);
  v8 = v2;
  return v7(v2, ObjectType, v5);
}

void (*ConstraintLayout.viewForForwardingSetNeedsUpdateConstraints.modify(void *a1))(void **a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  a1[1] = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = (*(v3 + 48))();
  return sub_1C571DFE0;
}

void sub_1C571DFE0(void **a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = v2[7];
  v6 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v7 = v6;
    v4(v6, v3, v2);
  }

  else
  {
    v4(*a1, v3, v2);
  }
}

id sub_1C571E08C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v5;
  v12.super_class = v2;
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v12, sel_init);
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 80);
  v10 = v7;
  v9(v7, ObjectType, a2);

  swift_unknownObjectRelease();
  return v10;
}

id ConstraintLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConstraintLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConstraintLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static NSLayoutConstraint.activate(layouts:constraints:)(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  while (v4)
  {
    v52 = v3 & 0xC000000000000001;
    v50 = v3 + 32;
    v51 = v3 & 0xFFFFFFFFFFFFFF8;

    v6 = 0;
    v48 = v4;
    v49 = v3;
    while (1)
    {
      if (v52)
      {
        v7 = MEMORY[0x1C694A320](v6, v3);
      }

      else
      {
        if (v6 >= *(v51 + 16))
        {
          goto LABEL_48;
        }

        v7 = *(v50 + 8 * v6);
      }

      v8 = v7;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v10 = &v7[v5[227]];
      v12 = *v10;
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      if (!(*(v11 + 24))(ObjectType, v11))
      {
        v15 = *v10;
        v14 = *(v10 + 1);
        v16 = swift_getObjectType();
        (*(v14 + 32))(1, v16, v14);
      }

      v18 = *v10;
      v17 = *(v10 + 1);
      v19 = swift_getObjectType();
      v20 = (*(v17 + 8))(v19, v17);
      v21 = v20;
      v22 = v20 >> 62;
      if (v20 >> 62)
      {
        v23 = sub_1C584FB90();
      }

      else
      {
        v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = a2 >> 62;
      if (a2 >> 62)
      {
        v38 = sub_1C584FB90();
        v26 = v38 + v23;
        if (__OFADD__(v38, v23))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v26 = v25 + v23;
        if (__OFADD__(v25, v23))
        {
          goto LABEL_43;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v24)
        {
          goto LABEL_24;
        }

        v27 = a2 & 0xFFFFFFFFFFFFFF8;
        if (v26 <= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = a2;
          goto LABEL_26;
        }
      }

      else
      {
        if (v24)
        {
LABEL_24:
          sub_1C584FB90();
          goto LABEL_25;
        }

        v27 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v28 = *(v27 + 16);
LABEL_25:
      v54 = sub_1C584FC80();
      v27 = v54 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v53 = v8;
      v29 = *(v27 + 16);
      a2 = *(v27 + 24);
      if (v22)
      {
        v30 = sub_1C584FB90();
        if (v30)
        {
LABEL_30:
          if (((a2 >> 1) - v29) < v23)
          {
            goto LABEL_46;
          }

          v31 = v27 + 8 * v29 + 32;
          if (v22)
          {
            if (v30 < 1)
            {
              goto LABEL_49;
            }

            sub_1C571ED54();
            for (i = 0; i != v30; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170720, &qword_1C5877E70);
              v33 = sub_1C571ECCC(v55, i, v21);
              v35 = *v34;
              (v33)(v55, 0);
              *(v31 + 8 * i) = v35;
            }

            v4 = v48;
            v3 = v49;
          }

          else
          {
            sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
            swift_arrayInitWithCopy();
          }

          v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
          a2 = v54;
          if (v23 > 0)
          {
            v36 = *(v27 + 16);
            v9 = __OFADD__(v36, v23);
            v37 = v36 + v23;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v27 + 16) = v37;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_30;
        }
      }

      v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
      a2 = v54;
      if (v23 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v6 == v4)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v4 = sub_1C584FB90();
    v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  }

LABEL_52:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v40 = sub_1C584F750();

  [ObjCClassFromMetadata activateConstraints_];

  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v41 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1C694A320](v41, v3);
        }

        else
        {
          v42 = *(v3 + 8 * v41 + 32);
        }

        v43 = v42;
        ++v41;
        v44 = &v42[v5[227]];
        v45 = *v44;
        v46 = *(v44 + 1);
        v47 = swift_getObjectType();
        (*(v46 + 32))(2, v47, v46);
      }

      while (v4 != v41);
    }
  }
}

void static NSLayoutConstraint.deactivate(layouts:constraints:)(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  while (v4)
  {
    v48 = v3 & 0xC000000000000001;
    v46 = v3 + 32;
    v47 = v3 & 0xFFFFFFFFFFFFFF8;

    v6 = 0;
    v44 = v4;
    v45 = v3;
    while (1)
    {
      if (v48)
      {
        v7 = MEMORY[0x1C694A320](v6, v3);
      }

      else
      {
        if (v6 >= *(v47 + 16))
        {
          goto LABEL_46;
        }

        v7 = *(v46 + 8 * v6);
      }

      v8 = v7;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v10 = &v7[v5[227]];
      v12 = *v10;
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      v14 = (*(v11 + 8))(ObjectType, v11);
      v15 = v14;
      v16 = v14 >> 62;
      if (v14 >> 62)
      {
        v17 = sub_1C584FB90();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = a2 >> 62;
      if (a2 >> 62)
      {
        v34 = sub_1C584FB90();
        v20 = v34 + v17;
        if (__OFADD__(v34, v17))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 + v17;
        if (__OFADD__(v19, v17))
        {
          goto LABEL_41;
        }
      }

      v49 = v8;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v18)
        {
          goto LABEL_22;
        }

        v21 = a2 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v18)
        {
LABEL_22:
          sub_1C584FB90();
          goto LABEL_23;
        }

        v21 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = *(v21 + 16);
LABEL_23:
      a2 = sub_1C584FC80();
      v21 = a2 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v50 = v17;
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v16)
      {
        v25 = sub_1C584FB90();
        if (v25)
        {
LABEL_28:
          if (((v24 >> 1) - v23) < v50)
          {
            goto LABEL_44;
          }

          v26 = v21 + 8 * v23 + 32;
          if (v16)
          {
            if (v25 < 1)
            {
              goto LABEL_47;
            }

            sub_1C571ED54();
            for (i = 0; i != v25; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170720, &qword_1C5877E70);
              v29 = sub_1C571ECCC(v51, i, v15);
              v31 = *v30;
              (v29)(v51, 0);
              *(v26 + 8 * i) = v31;
            }

            v4 = v44;
            v3 = v45;
            v27 = v50;
          }

          else
          {
            sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
            v27 = v50;
            swift_arrayInitWithCopy();
          }

          v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
          if (v27 > 0)
          {
            v32 = *(v21 + 16);
            v9 = __OFADD__(v32, v27);
            v33 = v32 + v27;
            if (v9)
            {
              goto LABEL_45;
            }

            *(v21 + 16) = v33;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_28;
        }
      }

      v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
      if (v50 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v6 == v4)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v4 = sub_1C584FB90();
    v5 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
  }

LABEL_50:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v36 = sub_1C584F750();

  [ObjCClassFromMetadata deactivateConstraints_];

  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v37 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1C694A320](v37, v3);
        }

        else
        {
          v38 = *(v3 + 8 * v37 + 32);
        }

        v39 = v38;
        ++v37;
        v40 = &v38[v5[227]];
        v41 = *v40;
        v42 = *(v40 + 1);
        v43 = swift_getObjectType();
        (*(v42 + 32))(0, v43, v42);
      }

      while (v4 != v37);
    }
  }
}

uint64_t sub_1C571EB8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  type metadata accessor for ConstraintLayout();
  v5 = sub_1C584F770();
  swift_getObjCClassMetadata();
  a4(v5, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C571EC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for ConstraintLayout();
  v6 = sub_1C584F770();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v7 = sub_1C584F770();
  swift_getObjCClassMetadata();
  a5(v6, v7);
}

void (*sub_1C571ECCC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C694A320](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C571ED4C;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C571ED54()
{
  result = qword_1EC170728;
  if (!qword_1EC170728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC170720, &qword_1C5877E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170728);
  }

  return result;
}

uint64_t TransitDeparturesSectionViewProvider.needsRebuild.getter()
{
  v1 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransitDeparturesSectionViewProvider.needsRebuild.setter(char a1)
{
  v3 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C571EF64()
{
  v1 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView;
  v2 = *(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696F410]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TransitDeparturesSectionViewProvider.__allocating_init(dataSource:userInteractionDelegate:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C5720138(a1);

  swift_unknownObjectRelease();
  return v4;
}

id TransitDeparturesSectionViewProvider.init(dataSource:userInteractionDelegate:)(void *a1)
{
  v2 = sub_1C5720138(a1);

  swift_unknownObjectRelease();
  return v2;
}

id sub_1C571F0E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TransitConnectionsSectionView();
  v3 = sub_1C5640BEC(1);
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  v6 = swift_unknownObjectRetain();
  v5(v6, &off_1F44C6DF0);
  v7 = *((*v4 & *v3) + 0x80);

  v7(v8);
  v9 = [objc_opt_self() transitConnectionsSectionHeaderTitle];
  if (!v9)
  {
    sub_1C584F660();
    v9 = sub_1C584F630();
  }

  v10 = [objc_allocWithZone(MUPlaceSectionHeaderViewModel) initWithTitleString_];

  v11 = [objc_opt_self() insetPlatterSectionViewForContentView:v3 sectionHeaderViewModel:v10 sectionFooterViewModel:a2];
  v12 = sub_1C584F630();
  [v11 setAccessibilityIdentifier_];

  return v11;
}

uint64_t sub_1C571F290(uint64_t a1)
{
  v2 = type metadata accessor for TransitDeparturesContainerViewModel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C571FE50(0, v8, 0);
    v9 = v19;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_1C57222D0(v10, v7);
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C571FE50((v12 > 1), v13 + 1, 1);
        v9 = v19;
      }

      v17 = v2;
      v18 = &off_1F44C6E80;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_1C57222D0(v7, boxed_opaque_existential_1);
      *(v9 + 16) = v13 + 1;
      sub_1C56412D4(&v16, v9 + 40 * v13 + 32);
      sub_1C5722334(v7);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_1C571F424(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C571FE50(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v15 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        v9 = v7 > 1;
        v10 = v8;
        sub_1C571FE50(v9, v6 + 1, 1);
        v8 = v10;
        v2 = v15;
      }

      v13 = &type metadata for TransitDeparturesInactiveLinesContainerViewModel;
      v14 = &off_1F44C83A8;
      *&v12 = v8;
      *(v2 + 16) = v6 + 1;
      sub_1C56412D4(&v12, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C571F528(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C571FD08(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1707F0, qword_1C5877F48);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C571F630(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1C584FB90();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C5640E88(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C571FFB8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1C571F720()
{
  v1 = [objc_opt_self() viewModelForMapItem:*(*(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem) transitLine:0];
  if (v1)
  {
    v2 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_footerAttributionViewModel;
    swift_beginAccess();
    v3 = *(v0 + v2);
    *(v0 + v2) = v1;
    v4 = v1;

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C5720610;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_11;
    v6 = _Block_copy(aBlock);
    v7 = v4;

    [v7 setActionBlock_];
    _Block_release(v6);
  }

  return v1;
}

uint64_t TransitDeparturesSectionViewProvider.sectionViewsForCurrentState()()
{
  sub_1C5720700();
}

void sub_1C571F918(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v3 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource);
    v9 = OBJC_IVAR___MUTransitDeparturesDataSource_mapItem;
    if ([Strong sectionViewProvider:v3 canSelect:a1 using:*(v8 + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem)])
    {
      [v7 sectionViewProvider:v3 didSelectDepartureSequence:a1 using:*(v8 + v9)];
LABEL_8:
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  v10 = [a1 line];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for TransitLineMarker();
    [*(*(v3 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem) _coordinate];
    v14 = TransitLineMarker.__allocating_init(transitLine:locationHint:)(v11, v12, v13);
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      [v15 sectionViewProvider:v3 didSelect:v14 using:a2];

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t TransitDeparturesSectionViewProvider.filterView(_:didChangeSystemSelection:)()
{
  v1 = *(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource);
  v2 = swift_unknownObjectRetain();
  return sub_1C57103C4(v2);
}

id TransitDeparturesSectionViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitDeparturesSectionViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C571FC80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result sectionViewProvider:v2 didSelectConnectionInfo:a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1C571FD08(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707E8, &qword_1C5877F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1707F0, qword_1C5877F48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C571FE50(void *a1, int64_t a2, char a3)
{
  result = sub_1C571FE70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C571FE70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707E8, &qword_1C5877F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1707F0, qword_1C5877F48);
    swift_arrayInitWithCopy();
  }

  return v10;
}