void specialized CAFUICollectionViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView) = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_cancellables) = v1;
  v2 = v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing;
  *v4 = 0;
  *(v4 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized CAFUICollectionViewController.collectionView(_:didSelectItemAt:)()
{
  _StringGuts.grow(_:)(25);

  type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245D0D240](v0);

  specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000017, 0x800000024242BA30, 0xD000000000000022, 0x800000024242BA50, 440);

  v1 = IndexPath.row.getter();

  CAFUICollectionViewController.toggle(index:)(v1);
}

void specialized CAFUICollectionViewController.calculateItemSizeAndInterItemSpacing(layout:)()
{
  v1 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize];
  if (v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize + 16])
  {
    goto LABEL_8;
  }

  v2 = *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
  v3 = *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize + 8];
  v4 = v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize + 16];
  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_54:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 safeAreaLayoutGuide];

  [v7 layoutFrame];
  v9 = v8;
  v11 = v10;

  if ((v4 & 1) != 0 || (v2 == v9 ? (v12 = v3 == v11) : (v12 = 0), !v12))
  {
LABEL_8:
    v13 = [v0 collectionView];
    if (!v13)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v14 = v13;
    v15 = [v13 safeAreaLayoutGuide];

    [v15 layoutFrame];
    v17 = v16;
    v19 = v18;

    v20 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
    *v20 = v17;
    *(v20 + 1) = v19;
    v20[16] = 0;
    v21 = [v0 collectionView];
    if (!v21)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v22 = v21;
    v23 = [v21 safeAreaLayoutGuide];

    [v23 layoutFrame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v68.origin.x = v25;
    v68.origin.y = v27;
    v68.size.width = v29;
    v68.size.height = v31;
    Height = CGRectGetHeight(v68);
    v33 = [v0 collectionView];
    if (!v33)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v34 = v33;
    v35 = [v33 safeAreaLayoutGuide];

    [v35 layoutFrame];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v69.origin.x = v37;
    v69.origin.y = v39;
    v69.size.width = v41;
    v69.size.height = v43;
    Width = CGRectGetWidth(v69);
    v45 = Width + -90.0;
    v46 = Width / Height;
    v47 = (Height + -8.0 + -48.0 + -8.0) * 0.5;
    v48 = v47 * v46;
    if (v47 * v46 >= v45)
    {
      *v1 = v45;
      v1[1] = v45 / v46 + 24.0;
      *(v1 + 16) = 0;
      goto LABEL_23;
    }

    *v1 = v48;
    v1[1] = v47 + 24.0;
    *(v1 + 16) = 0;
    v49 = v45 / v48;
    if (COERCE__INT64(fabs(v45 / v48)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v49 > -9.22337204e18)
    {
      if (v49 < 9.22337204e18)
      {
        v50 = v49;
        v51 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
        swift_beginAccess();
        v52 = *&v0[v51];
        v53 = *(v52 + 16);
        if (v53 >= v50)
        {
          v54 = v50;
        }

        else
        {
          v54 = *(v52 + 16);
        }

        if (v54 >= 2)
        {
          v55 = v45 - v48 * v54;
          v56 = v54 - 1;
          v57 = (v54 - 1);
          v58 = v55 / v57;
          if (v55 / v57 < 10.0)
          {
            v59 = v54 - 2;
            if (!v59)
            {
              v60 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
              *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing] = 0x4024000000000000;
LABEL_24:
              v60[8] = 0;
              return;
            }

            v55 = v45 - v48 * v57;
            v58 = v55 / v59;
            v54 = v56;
          }

          if (v53 % v54)
          {
            v61 = v54 + ~(v53 % v54);
          }

          else
          {
            v61 = 0;
          }

          if (v53 % v54)
          {
            v62 = v53 / v54 + 1;
          }

          else
          {
            v62 = v53 / v54;
          }

          if (v54 >= 3)
          {
            v63 = v62 - 1;
            if (v61 >= (v62 - 1) && v62 >= 2)
            {
              do
              {
                v65 = v54--;
                if (v53 % v54)
                {
                  v66 = v54 + ~(v53 % v54);
                }

                else
                {
                  v66 = 0;
                }
              }

              while (v65 >= 4 && v66 >= v63);
              v55 = v45 - v48 * v54;
              v58 = v55 / (v54 - 1);
            }
          }

          v67 = (v55 + 45.0 + 45.0) / (v54 + 1);
          if (v67 <= 45.0)
          {
            v67 = v58;
          }

          v60 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
          *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing] = v67;
          goto LABEL_24;
        }

LABEL_23:
        v60 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
        *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing] = 0;
        goto LABEL_24;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }
}

uint64_t sub_2423D16F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2423D1A50()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double CAFNotificationDataSources.__allocating_init(displayID:carManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  result = 0.0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return result;
}

uint64_t CAFNotificationDataSources.init(displayID:carManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t CAFNotificationDataSources.currentCarPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  if (*(v0 + 40))
  {
    v5 = *(v0 + 40);
  }

  else
  {
    v6 = *(v0 + 32);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCarManager);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFCarManager and conformance CAFCarManager, &lazy cache variable for type metadata for CAFCarManager);
    v7 = v6;
    v8 = v0;
    v9 = CAFObserved<>.observable.getter();

    dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCar);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFCar?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd);
    v5 = Publisher.skipNil<A>()();
    (*(v2 + 8))(v4, v1);
    *(v8 + 40) = v5;
  }

  return v5;
}

uint64_t CAFNotificationDataSources.settingsNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GAA03AnyF0VySo6CAFCarCs5NeverOGGMd);
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D0Vy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAEy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AEy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAGy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGAC9MergeManyVy_AWGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_ARy_AC6FilterVy_AIySo0klmN0CANGGAOGGATy_AA9PublishedV0I0VySaySo0K13NotificationsCG_GAIySo6CAFCarCANGGGAPGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  if (*(v0 + 48))
  {
    v17 = *(v0 + 48);
  }

  else
  {
    v33 = v14;
    v34 = v0;
    v32 = v13;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v27 = v1;
    v36 = v18;
    v26[1] = static Subscribers.Demand.unlimited.getter();
    v31 = v8;
    v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v28 = v4;
    v30 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    v29 = v5;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAKy10CAFCombine0hijK10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GAA03AnyF0VySo6CAFCarCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAKy10CAFCombine0hijK10ObservableCAOGGGMd);
    v19 = v27;
    Publisher<>.flatMap<A>(maxPublishers:_:)();
    (*(v35 + 8))(v3, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>, Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D0Vy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAEy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGMd);
    v20 = v28;
    Publisher.map<A>(_:)();
    (*(v29 + 8))(v7, v20);
    v21 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>, Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>>>, Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AEy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAGy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGAC9MergeManyVy_AWGGMd);
    v22 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
    v23 = v31;
    MEMORY[0x245D0C880](v31, v21, v22);
    (*(v30 + 8))(v11, v23);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>, Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>>>, Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_ARy_AC6FilterVy_AIySo0klmN0CANGGAOGGATy_AA9PublishedV0I0VySaySo0K13NotificationsCG_GAIySo6CAFCarCANGGGAPGGMd);
    v24 = v32;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v33 + 8))(v16, v24);
    *(v34 + 48) = v17;
  }

  return v17;
}

void closure #1 in CAFNotificationDataSources.settingsNotification.getter()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCar);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFCar and conformance CAFCar, &lazy cache variable for type metadata for CAFCar);
  v0 = CAFObserved<>.observable.getter();
  dispatch thunk of CAFCarObservable.$automakerNotifications.getter();
}

uint64_t closure #2 in CAFNotificationDataSources.settingsNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGMd);
  v22 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAIy10CAFCombine0ghiJ10ObservableCAMGGMd);
  v9 = *(v8 - 8);
  v20 = v8;
  v21 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v24 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd);
  Sequence.publisher.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerSettingsRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd);
  v12 = v18;
  v13 = Publisher.compactFlatMap<A, B>(_:)();
  (*(v3 + 8))(v5, v12);
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGMd);
  Publisher.filter(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGMd);
  v14 = v19;
  Publisher.map<A>(_:)();
  (*(v22 + 8))(v7, v14);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAIy10CAFCombine0ghiJ10ObservableCAMGGMd);
  v15 = v20;
  Publisher.collect()();
  return (*(v21 + 8))(v11, v15);
}

uint64_t closure #1 in closure #2 in CAFNotificationDataSources.settingsNotification.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 automakerSettingsRemoteNotifications];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38CAFAutomakerSettingsRemoteNotificationCGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerSettingsRemoteNotification] and conformance [A], &_sSaySo38CAFAutomakerSettingsRemoteNotificationCGMd);
    Sequence.publisher.getter();

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t closure #2 in closure #2 in CAFNotificationDataSources.settingsNotification.getter(id *a1)
{
  v1 = [*a1 displayPanelIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == 0x445F7265746E6543 && v4 == 0xEE0079616C707369)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v6 & 1;
  }
}

void closure #3 in closure #2 in CAFNotificationDataSources.settingsNotification.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSettingsRemoteNotification and conformance CAFAutomakerSettingsRemoteNotification, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification);
  v2 = CAFObserved<>.observable.getter();
  type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  _s14CarPlayAssetUI28RequestTemporaryContentModelVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable, MEMORY[0x277CF3868]);
  v3 = CAFObservable.publisher.getter();

  *a1 = v3;
}

uint64_t closure #3 in CAFNotificationDataSources.settingsNotification.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.BOOLeanSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  if (*(v0 + 56))
  {
    v14 = *(v0 + 56);
  }

  else
  {
    v29 = v11;
    v30 = v0;
    v28 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v25 = v2;
    v31 = v15;
    swift_getKeyPath();
    v27 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v26 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
    v24 = v1;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd);
    v16 = Publisher.flatMap<A, B>(_:)();

    v31 = v16;
    v23[1] = static Subscribers.Demand.unlimited.getter();
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
    v17 = v24;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v4, v17);
    v18 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
    v20 = v27;
    MEMORY[0x245D0C880](v27, v18, v19);
    (*(v26 + 8))(v8, v20);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
    v21 = v28;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v29 + 8))(v13, v21);
    *(v30 + 56) = v14;
  }

  return v14;
}

uint64_t key path getter for CAFObserved<>.observable : CAFCar@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCar);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFCar and conformance CAFCar, &lazy cache variable for type metadata for CAFCar);
  result = CAFObserved<>.observable.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in CAFNotificationDataSources.BOOLeanSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFBooleanSetting);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFBooleanSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo17CAFBooleanSettingCGs5NeverOGMd);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGMd);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #2 in CAFNotificationDataSources.BOOLeanSettings.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFBooleanSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.deepLinkSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  if (*(v0 + 64))
  {
    v14 = *(v0 + 64);
  }

  else
  {
    v29 = v11;
    v30 = v0;
    v28 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v25 = v2;
    v31 = v15;
    swift_getKeyPath();
    v27 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v26 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
    v24 = v1;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd);
    v16 = Publisher.flatMap<A, B>(_:)();

    v31 = v16;
    v23[1] = static Subscribers.Demand.unlimited.getter();
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
    v17 = v24;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v4, v17);
    v18 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
    v20 = v27;
    MEMORY[0x245D0C880](v27, v18, v19);
    (*(v26 + 8))(v8, v20);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
    v21 = v28;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v29 + 8))(v13, v21);
    *(v30 + 64) = v14;
  }

  return v14;
}

uint64_t closure #1 in CAFNotificationDataSources.deepLinkSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFDeepLinkSetting);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFDeepLinkSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo18CAFDeepLinkSettingCGs5NeverOGMd);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGMd);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

void key path getter for CAFAutomakerSettings.BOOLeanSettings : CAFAutomakerSettings(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for OS_os_log(0, a3);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t key path getter for Sequence.publisher : [CAFBooleanSetting](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(a6, a4);
  return Sequence.publisher.getter();
}

uint64_t closure #2 in CAFNotificationDataSources.deepLinkSettings.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFDeepLinkSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.buttonSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  if (*(v0 + 72))
  {
    v14 = *(v0 + 72);
  }

  else
  {
    v29 = v11;
    v30 = v0;
    v28 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v25 = v2;
    v31 = v15;
    swift_getKeyPath();
    v27 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v26 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
    v24 = v1;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd);
    v16 = Publisher.flatMap<A, B>(_:)();

    v31 = v16;
    v23[1] = static Subscribers.Demand.unlimited.getter();
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
    v17 = v24;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v4, v17);
    v18 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
    v20 = v27;
    MEMORY[0x245D0C880](v27, v18, v19);
    (*(v26 + 8))(v8, v20);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
    v21 = v28;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v29 + 8))(v13, v21);
    *(v30 + 72) = v14;
  }

  return v14;
}

uint64_t closure #1 in CAFNotificationDataSources.buttonSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFButtonSetting);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFButtonSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo16CAFButtonSettingCGs5NeverOGMd);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo16CAFButtonSettingCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo16CAFButtonSettingCs5NeverOGMd);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #2 in CAFNotificationDataSources.buttonSettings.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFButtonSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.singleSelectSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  if (*(v0 + 80))
  {
    v14 = *(v0 + 80);
  }

  else
  {
    v29 = v11;
    v30 = v0;
    v28 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v25 = v2;
    v31 = v15;
    swift_getKeyPath();
    v27 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v26 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
    v24 = v1;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd);
    v16 = Publisher.flatMap<A, B>(_:)();

    v31 = v16;
    v23[1] = static Subscribers.Demand.unlimited.getter();
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd);
    v17 = v24;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v4, v17);
    v18 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
    v20 = v27;
    MEMORY[0x245D0C880](v27, v18, v19);
    (*(v26 + 8))(v8, v20);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd);
    v21 = v28;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v29 + 8))(v13, v21);
    *(v30 + 80) = v14;
  }

  return v14;
}

uint64_t closure #1 in CAFNotificationDataSources.singleSelectSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectSetting);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFSingleSelectSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo22CAFSingleSelectSettingCGs5NeverOGMd);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGMd);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #2 in CAFNotificationDataSources.singleSelectSettings.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFSingleSelectSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.remoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[11])
  {
    v17 = v0[11];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[11] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.remoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFRemoteNotification);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo21CAFRemoteNotificationCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #2 in CAFNotificationDataSources.remoteNotification.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.actionRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[12])
  {
    v17 = v0[12];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[12] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.actionRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFActionRemoteNotification);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFActionRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo27CAFActionRemoteNotificationCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #2 in CAFNotificationDataSources.actionRemoteNotification.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFActionRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

void closure #3 in CAFNotificationDataSources.remoteNotification.getter(void **a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v7 = *a1;
  v8 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  log = static OS_os_log.default.getter();
  if (os_log_type_enabled(log, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&dword_24234D000, log, v8, a4, v9, 0x16u);
    outlined destroy of NSObject?(v10);
    MEMORY[0x245D0E5A0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245D0E5A0](v11, -1, -1);
    MEMORY[0x245D0E5A0](v9, -1, -1);
  }
}

uint64_t CAFNotificationDataSources.minimalRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[13])
  {
    v17 = v0[13];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[13] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.minimalRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMinimalRemoteNotification);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFMinimalRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo28CAFMinimalRemoteNotificationCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #2 in CAFNotificationDataSources.minimalRemoteNotification.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.singleSelectRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[14])
  {
    v17 = v0[14];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[14] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.singleSelectRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectRemoteNotification);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFSingleSelectRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo33CAFSingleSelectRemoteNotificationCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #2 in CAFNotificationDataSources.singleSelectRemoteNotification.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.multiSelectRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[15])
  {
    v17 = v0[15];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[15] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.multiSelectRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultiSelectRemoteNotification);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFMultiSelectRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo32CAFMultiSelectRemoteNotificationCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #2 in CAFNotificationDataSources.multiSelectRemoteNotification.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.modalAlertRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[16])
  {
    v17 = v0[16];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[16] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.modalAlertRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAlertRemoteNotification);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAlertRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAlertRemoteNotificationCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #2 in CAFNotificationDataSources.modalAlertRemoteNotification.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFAlertRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.requestContent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo019CAFAutomakerRequestL0CGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo019CAFAutomakerRequestL0CGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo019CAFAutomakerRequestL0CGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo019CAFAutomakerRequestN0CGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[17])
  {
    v17 = v0[17];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerRequestContent]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo26CAFAutomakerRequestContentCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerRequestContent], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo019CAFAutomakerRequestL0CGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo019CAFAutomakerRequestL0CGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo019CAFAutomakerRequestL0CGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo019CAFAutomakerRequestN0CGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[17] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.requestContent.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerRequestContent] and conformance [A], &_sSaySo26CAFAutomakerRequestContentCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFRequestContent);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerRequestContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFRequestContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo17CAFRequestContentCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo17CAFRequestContentCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContent, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo17CAFRequestContentCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContent, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #2 in CAFNotificationDataSources.requestContent.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFRequestContentObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.requestTemporaryContent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo019CAFAutomakerRequestM0CGAQGGMd);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo019CAFAutomakerRequestM0CGASGGAC9MergeManyVy_AYGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo019CAFAutomakerRequestM0CGANGGAPGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo019CAFAutomakerRequestO0CGAPGGARGGGMd);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[18])
  {
    v17 = v0[18];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd);
    v45 = v11;
    v48 = v9;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerRequestContent]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo26CAFAutomakerRequestContentCG_GMd);
    v19 = Publisher.flatMap<A, B>(_:)();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerRequestContent], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo019CAFAutomakerRequestM0CGAQGGMd);
    v25 = v43;
    v26 = v44;
    Publisher.map<A>(_:)();
    (*(v24 + 8))(v23, v26);
    v27 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo019CAFAutomakerRequestM0CGASGGAC9MergeManyVy_AYGGMd);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
    v29 = v45;
    v30 = v41;
    MEMORY[0x245D0C880](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo019CAFAutomakerRequestM0CGANGGAPGGMd);

    v35 = v47;
    v36 = v49;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v48 + 8))(v29, v35);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo019CAFAutomakerRequestO0CGAPGGARGGGMd);
    v37 = v50;
    v38 = v36;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v38, v37);
    v31[18] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.requestTemporaryContent.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGMd);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v19 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v19 - v12;
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerRequestContent] and conformance [A], &_sSaySo26CAFAutomakerRequestContentCGMd);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFRequestTemporaryContent);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerRequestContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFRequestTemporaryContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFRequestTemporaryContentCGs5NeverOGMd);
  v14 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContent, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGMd);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGMd);
  v16 = v22;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v10, v16);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd);
  v17 = v23;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v17);
}

uint64_t closure #1 in closure #1 in CAFNotificationDataSources.remoteNotification.getter(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 displayPanelIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == a2 && v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t closure #2 in CAFNotificationDataSources.requestTemporaryContent.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFRequestTemporaryContentObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  return Publishers.MergeMany.init<A>(_:)();
}

void *CAFNotificationDataSources.remoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v29);
  v27 = v25 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v26 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  v12 = CAFNotificationDataSources.remoteNotification.getter();
  v25[1] = v12;
  v32 = CAFNotificationDataSources.requestContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFInferredNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v33 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v33 = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  v20 = v26;
  Publishers.CombineLatest.init(_:_:)();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v22 + 24) = v21;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd);
  v23 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v20, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.minimalRemoteNotificationSource(zoneRegion:destination:actionHandler:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v37);
  v35 = &v29 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v36);
  v31 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  MEMORY[0x28223BE20](v9);
  v33 = &v29 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v34 = *a2;
  v15 = CAFNotificationDataSources.minimalRemoteNotification.getter();
  v32 = v15;
  v30 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v16 = Zone.ZoneRegion.rawValue.getter();
  v18 = v17;
  type metadata accessor for CAFMinimalNotificationSource();
  v19 = swift_allocObject();
  v19[2] = 0;
  v20 = type metadata accessor for NotificationModel();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v19[3] = CurrentValueSubject.init(_:)();
  v19[4] = MEMORY[0x277D84FA0];
  v19[5] = a3;
  v19[6] = a4;
  v40 = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v40 = v30;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v23 = v33;
  Publishers.CombineLatest.init(_:_:)();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v34;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #3 in CAFMinimalNotificationSource.init(notification:requestContent:displayID:zoneRegion:destination:launchURL:);
  *(v26 + 24) = v25;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v27 = v38;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v23, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v19;
}

void *CAFNotificationDataSources.alertRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v29);
  v27 = v25 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v26 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  v12 = CAFNotificationDataSources.modalAlertRemoteNotification.getter();
  v25[1] = v12;
  v32 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFAlertNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v33 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v33 = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v20 = v26;
  Publishers.CombineLatest.init(_:_:)();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #3 in CAFAlertNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v22 + 24) = v21;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v23 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v20, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.actionRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v29);
  v27 = v25 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v26 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  v12 = CAFNotificationDataSources.actionRemoteNotification.getter();
  v25[1] = v12;
  v32 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFActionNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v33 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v33 = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v20 = v26;
  Publishers.CombineLatest.init(_:_:)();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #3 in CAFActionNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v22 + 24) = v21;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v23 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v20, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.singleSelectRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v29);
  v27 = v25 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v26 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  v12 = CAFNotificationDataSources.singleSelectRemoteNotification.getter();
  v25[1] = v12;
  v32 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFSingleSelectNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v33 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v33 = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v20 = v26;
  Publishers.CombineLatest.init(_:_:)();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #3 in CAFSingleSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v22 + 24) = v21;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v23 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v20, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.multiSelectRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v29);
  v27 = v25 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v26 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  v12 = CAFNotificationDataSources.multiSelectRemoteNotification.getter();
  v25[1] = v12;
  v32 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFMultiSelectNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v33 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v33 = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v20 = v26;
  Publishers.CombineLatest.init(_:_:)();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #3 in CAFMultiSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v22 + 24) = v21;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v23 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v20, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.settingsNotificationSource(zoneRegion:settingsByIdentifier:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v60 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  v7 = *(v6 - 8);
  v80 = v6;
  v81 = v7;
  MEMORY[0x28223BE20](v6);
  v79 = v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  MEMORY[0x28223BE20](v9);
  v76 = v55 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = v55 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v55 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v65);
  v63 = v55 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v64);
  v82 = v55 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v55 - v18;
  v20 = type metadata accessor for Zone.ZoneRegion();
  v86 = *(v20 - 8);
  v21 = v86;
  v22 = *(v86 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v57 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[1] = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v55 - v24;
  v26 = CAFNotificationDataSources.settingsNotification.getter();
  v74 = v26;
  v89 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v87 = CAFNotificationDataSources.buttonSettings.getter();
  v88 = CAFNotificationDataSources.singleSelectSettings.getter();
  v83 = CAFNotificationDataSources.BOOLeanSettings.getter();
  v72 = CAFNotificationDataSources.deepLinkSettings.getter();
  v27 = *(v21 + 16);
  v85 = v25;
  v27(v25, a1, v20);
  v56 = v27;
  type metadata accessor for CAFSettingsNotificationSource();
  v28 = swift_allocObject();
  v28[2] = 0;
  v29 = type metadata accessor for NotificationModel();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v30 = CurrentValueSubject.init(_:)();
  v58 = v28;
  v28[3] = v30;
  v28[4] = MEMORY[0x277D84FA0];
  v61 = v28 + 4;
  v31 = MEMORY[0x277D84F90];
  v28[9] = 0;
  v28[10] = v31;
  v28[7] = v59;
  v28[8] = 0;
  v32 = v60;
  v28[5] = a2;
  v28[6] = v32;
  v90 = v26;
  v33 = v57;
  v34 = v20;
  v84 = v20;
  v27(v57, v25, v20);
  v35 = v86;
  v36 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v37 = swift_allocObject();
  v38 = *(v35 + 32);
  v38(v37 + v36, v33, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v90 = v89;
  v39 = v84;
  v56(v33, v85, v84);
  v40 = swift_allocObject();
  v38(v40 + v36, v33, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v41 = v62;
  Publishers.CombineLatest.init(_:_:)();
  v42 = swift_allocObject();
  v43 = v58;
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for closure #3 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:);
  *(v44 + 24) = v42;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);

  v45 = v66;
  Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v41, v45);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v90 = v88;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  v46 = v68;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  v47 = v69;
  Publisher<>.sink(receiveValue:)();

  (*(v70 + 8))(v46, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v90 = v87;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  v48 = v71;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  v49 = v73;
  Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v48, v49);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v90 = v83;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  v50 = v76;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  v51 = v77;
  Publisher<>.sink(receiveValue:)();

  (*(v78 + 8))(v50, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v90 = v72;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  v52 = v79;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  v53 = v80;
  Publisher<>.sink(receiveValue:)();

  (*(v81 + 8))(v52, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v86 + 8))(v85, v84);
  return v43;
}

uint64_t CAFNotificationDataSources.requestContentSource(zoneRegion:)(uint64_t a1)
{
  v3 = type metadata accessor for Zone.ZoneRegion();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CAFNotificationDataSources.requestContent.getter();
  v8 = CAFNotificationDataSources.requestTemporaryContent.getter();
  (*(v4 + 16))(v6, a1, v3);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  type metadata accessor for CAFRequestContentSource();
  swift_allocObject();

  v11 = specialized CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(v7, v8, v6, v9, v10);

  return v11;
}

uint64_t CAFNotificationDataSources.notificationSource(settingsByIdentifier:zoneRegion:destination:actionHandler:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v127 = a5;
  v128 = a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v130 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v115 = &v89 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v89 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  *&v129 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v89 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  MEMORY[0x28223BE20](v100);
  v112 = &v89 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v98 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v118 = *(v15 - 8);
  v122 = v15 - 8;
  v120 = v118;
  MEMORY[0x28223BE20](v15 - 8);
  v123 = &v89 - v16;
  v17 = type metadata accessor for Zone.ZoneRegion();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a3;
  v97 = *a3;
  v22 = CAFNotificationDataSources.requestContent.getter();
  v23 = CAFNotificationDataSources.requestTemporaryContent.getter();
  (*(v18 + 16))(v20, a2, v17);
  v24 = *(v6 + 16);
  v25 = *(v6 + 24);
  type metadata accessor for CAFRequestContentSource();
  swift_allocObject();

  v106 = specialized CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(v22, v23, v20, v24, v25);

  v26 = v127;
  v27 = CAFNotificationDataSources.remoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v127);
  LOBYTE(v131) = v21;
  v28 = CAFNotificationDataSources.minimalRemoteNotificationSource(zoneRegion:destination:actionHandler:)(a2, &v131, a4, v26);
  v29 = CAFNotificationDataSources.alertRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v30 = CAFNotificationDataSources.actionRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v31 = CAFNotificationDataSources.singleSelectRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v116 = CAFNotificationDataSources.multiSelectRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v32 = CAFNotificationDataSources.settingsNotificationSource(zoneRegion:settingsByIdentifier:actionHandler:)(a2, v128, a4, v26);
  type metadata accessor for CAFNotificationSource();
  v33 = swift_allocObject();
  v33[2] = 0;
  v127 = type metadata accessor for NotificationModel();
  v34 = *(v127 - 8);
  v128 = *(v34 + 56);
  v126 = v34 + 56;
  v128(v123, 1, 1, v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v35 = CurrentValueSubject.init(_:)();
  v36 = MEMORY[0x277D84FA0];
  v95 = v33;
  v33[3] = v35;
  v33[4] = v36;
  v96 = v33 + 4;
  v33[5] = v106;
  v33[6] = v27;
  v111 = v27;
  v110 = v28;
  v33[7] = v28;
  v33[8] = v29;
  v109 = v29;
  v108 = v30;
  v33[9] = v30;
  v33[10] = v31;
  v107 = v31;
  v33[11] = v116;
  v33[12] = v32;
  v105 = v32;

  v131 = CAFRequestContentSource.content.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  v93 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type RequestTemporaryContentModel? and conformance <A> A?();
  v37 = v124;
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd);
  v38 = v125;
  v39 = Publisher.eraseToAnyPublisher()();
  (*(v129 + 8))(v37, v38);
  v131 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI28RequestTemporaryContentModelVSgGMd);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd) - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  v129 = xmmword_2424235A0;
  *(v42 + 16) = xmmword_2424235A0;
  v43 = type metadata accessor for RequestTemporaryContentModel();
  (*(*(v43 - 8) + 56))(v42 + v41, 1, 1, v43);
  Publisher.prepend(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine10PublishersO11ConcatenateVy_AE8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAC12AnyPublisherVyAmPGGGMd);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  v44 = *(v92 - 8);
  v119 = *(v44 + 72);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  v91 = v46;
  *(v46 + 16) = xmmword_2424235B0;
  v117 = v46 + v45;
  v131 = CAFNotificationSource.notification.getter();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  v48 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  v125 = lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  v49 = v115;
  Publisher<>.removeDuplicates()();

  v121 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v50 = v94;
  v51 = Publisher.eraseToAnyPublisher()();
  v124 = *(v130 + 8);
  v130 += 8;
  (v124)(v49, v50);
  v131 = v51;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelVSgGMd);
  v122 = *(v118 + 72);
  v120 = *(v120 + 80);
  v52 = (v120 + 32) & ~v120;
  v118 = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = v129;
  v54 = v127;
  v55 = v128;
  v128((v53 + v52), 1, 1, v127);
  v113 = v47;
  v114 = v48;
  Publisher.prepend(_:)();

  v131 = CAFNotificationSource.notification.getter();
  v56 = v115;
  Publisher<>.removeDuplicates()();

  v57 = Publisher.eraseToAnyPublisher()();
  (v124)(v56, v50);
  v131 = v57;
  v58 = v118;
  v59 = swift_allocObject();
  *(v59 + 16) = v129;
  v55(v59 + v58, 1, 1, v54);
  v60 = v119;
  Publisher.prepend(_:)();

  v90 = 2 * v60;
  v131 = CAFNotificationSource.notification.getter();
  v61 = v115;
  Publisher<>.removeDuplicates()();

  v62 = Publisher.eraseToAnyPublisher()();
  v63 = v124;
  (v124)(v61, v50);
  v131 = v62;
  v64 = v118;
  v65 = swift_allocObject();
  *(v65 + 16) = v129;
  v128((v65 + v64), 1, 1, v127);
  Publisher.prepend(_:)();

  v131 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v66 = Publisher.eraseToAnyPublisher()();
  v63(v61, v50);
  v131 = v66;
  v67 = v118;
  v68 = swift_allocObject();
  *(v68 + 16) = v129;
  v128((v68 + v67), 1, 1, v127);
  Publisher.prepend(_:)();

  v90 = 4 * v119;
  v131 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v69 = Publisher.eraseToAnyPublisher()();
  (v124)(v61, v50);
  v131 = v69;
  v70 = v118;
  v71 = swift_allocObject();
  *(v71 + 16) = v129;
  v128((v71 + v70), 1, 1, v127);
  v72 = v90;
  Publisher.prepend(_:)();

  v90 = v72 + v119;
  v131 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v73 = Publisher.eraseToAnyPublisher()();
  (v124)(v61, v50);
  v131 = v73;
  v74 = v118;
  v75 = swift_allocObject();
  *(v75 + 16) = v129;
  v128((v75 + v74), 1, 1, v127);
  v76 = v117;
  Publisher.prepend(_:)();

  v119 = v76 + 6 * v119;
  v131 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v77 = Publisher.eraseToAnyPublisher()();
  (v124)(v61, v50);
  v131 = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = v129;
  v128((v78 + v74), 1, 1, v127);
  Publisher.prepend(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  v79 = v99;
  Publishers.MergeMany.init(_:)();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd);
  v80 = v101;
  v81 = v79;
  v82 = Publisher.skipNil<A>()();
  (*(v102 + 8))(v81, v80);
  v131 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd);
  v83 = v98;
  Publishers.CombineLatest.init(_:_:)();
  swift_unownedRetainStrong();
  v84 = swift_unownedRetain();

  v85 = swift_allocObject();
  *(v85 + 16) = v97;
  *(v85 + 24) = v84;
  v86 = swift_allocObject();
  *(v86 + 16) = partial apply for closure #1 in CAFNotificationSource.init(requestContent:remoteNotification:minimalNotification:alertNotification:actionNotification:singleSelectNotification:multiSelectNotification:autoSettingsNotification:destination:);
  *(v86 + 24) = v85;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>>, AnyPublisher<NotificationModel, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd);
  v87 = v103;
  Publisher<>.sink(receiveValue:)();

  (*(v104 + 8))(v83, v87);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v84;
}

uint64_t CAFNotificationDataSources.deinit()
{

  return v0;
}

uint64_t CAFNotificationDataSources.__deallocating_deinit()
{
  CAFNotificationDataSources.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_2423DFF90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2423DFFF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423E0028()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2423E0060()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s5CAFUI29CAFSettingsNotificationSourceC12notification14requestContent21settingsByIdentifiers13buttonSetting012singleSelectL007BOOLeanL008deepLinkL010zoneRegion9launchURLAC7Combine12AnyPublisherVy10CAFCombine026CAFAutomakerSettingsRemoteC10ObservableCs5NeverOG_AOyAP019CAFRequestTemporaryG10ObservableCATGSDySSSo0zL0CGSgAOyAP09CAFButtonL10ObservableCATGAOyAP09CAFSinglenL10ObservableCATGAOyAP010CAFBooleanL10ObservableCATGAOyAP07CAFDeepqL10ObservableCATG14CarPlayAssetUI4ZoneV04ZoneS0OySSctcfcSbARcfU_TATm_0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Zone.ZoneRegion() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t _s14CarPlayAssetUI28RequestTemporaryContentModelVACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2423E0208()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_getTm@<X0>(unint64_t *a1@<X3>, unint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  type metadata accessor for OS_os_log(0, a1);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(a2, a1);
  result = CAFObserved<>.observable.getter();
  *a3 = result;
  return result;
}

uint64_t keypath_get_145Tm@<X0>(void (*a1)(void)@<X3>, unint64_t *a2@<X4>, void (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a1(0);
  _s14CarPlayAssetUI28RequestTemporaryContentModelVACSQAAWlTm_0(a2, a3);
  result = CAFObservable.publisher.getter();
  *a4 = result;
  return result;
}

uint64_t CAFInferredNotificationSource.output.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

BOOL String.isRemoteNotification.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20]();
  v1 = &v11 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v1, &_s10Foundation3URLVSgMd);
    return 0;
  }

  (*(v3 + 32))(v5, v1, v2);
  v7 = URL.scheme.getter();
  if (!v8)
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v7 != 0xD000000000000012 || v8 != 0x8000000242428C60)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v3 + 8))(v5, v2);
    return (v10 & 1) != 0;
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

void *CAFInferredNotificationSource.__allocating_init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a2;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v34);
  v32 = v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v30 = v29 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v29 - v18;

  v20 = swift_allocObject();
  v20[2] = 0;
  v21 = type metadata accessor for NotificationModel();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v20[3] = CurrentValueSubject.init(_:)();
  v20[4] = MEMORY[0x277D84FA0];
  v20[5] = a7;
  v20[6] = a8;
  v29[1] = a8;
  v37 = a1;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v29[0];
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  v24 = v30;
  Publishers.CombineLatest.init(_:_:)();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v26 + 24) = v25;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd);
  v27 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v24, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v20;
}

void *CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a2;
  v31[3] = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v31[2] = v31 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v32);
  v31[0] = v31 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd);
  v18 = *(v17 - 8);
  v34 = v17;
  v35 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v31 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v31 - v22;

  v9[2] = 0;
  v24 = type metadata accessor for NotificationModel();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v9[3] = CurrentValueSubject.init(_:)();
  v9[4] = MEMORY[0x277D84FA0];
  v9[5] = a7;
  v9[6] = a8;
  v31[1] = a8;
  v37 = a1;
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v36;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd);
  Publishers.CombineLatest.init(_:_:)();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)partial apply;
  *(v28 + 24) = v27;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd);
  v29 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v20, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v9;
}

uint64_t sub_2423E2AF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a4() == a2 && v5 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_2423E2C20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t (*a1)(void, void, void), void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFInferredNotificationSource.updateNotification(remoteNotification:requestContent:)(a1, a2);
  }

  return result;
}

uint64_t sub_2423E2CCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CAFInferredNotificationSource.updateNotification(remoteNotification:requestContent:)(uint64_t (*a1)(void, void, void), void *a2)
{
  v62 = a1;
  v59 = *v2;
  v4 = type metadata accessor for NotificationModel();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v63 = &v56 - v25;
  dispatch thunk of CAFRequestContentObservable.contentURL.getter();
  v26 = String.isRemoteNotification.getter();

  if (v26 && (dispatch thunk of CAFRequestContentObservable.on.getter() & 1) != 0)
  {
    v27 = v62;
    v28 = dispatch thunk of CAFRemoteNotificationObservable.displayPanelIdentifier.getter();
    v58 = v29;
    CAFInferredNotificationSource.convert(message:requestContent:)(v27, a2, v21);
    outlined init with copy of NotificationModel.Symbol?(v21, v18, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v30 = v4;
    v62 = *(v5 + 48);
    v31 = v62(v18, 1, v4);
    v57 = v28;
    if (v31 == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      (*(v5 + 56))(v24, 1, 1, v4);
    }

    else
    {
      (*(v5 + 32))(v11, v18, v4);
      static CAFInferredNotificationSource.sanitize(notification:displayID:)(v11, v28, v58, v24);
      v30 = v4;
      (*(v5 + 8))(v11, v4);
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    }

    v32 = v63;
    outlined init with take of NotificationModel?(v24, v63);
    outlined init with copy of NotificationModel.Symbol?(v32, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    if (v62(v15, 1, v30) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v34 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v35 = static OS_os_log.default.getter();
      v36 = os_log_type_enabled(v35, v34);
      v38 = v57;
      v37 = v58;
      if (v36)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v64 = v40;
        *v39 = 136315138;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v64);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_24234D000, v35, v34, "Unable to sanitize notification sent to display: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x245D0E5A0](v40, -1, -1);
        MEMORY[0x245D0E5A0](v39, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v42 = v61;
      (*(v5 + 32))(v61, v15, v30);
      v43 = static os_log_type_t.info.getter();
      v44 = v60;
      (*(v5 + 16))(v60, v42, v30);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v45 = v30;
      v46 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v46, v43))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v64 = v48;
        *v47 = 136315394;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v64);

        *(v47 + 4) = v49;
        *(v47 + 12) = 2080;
        v50 = NotificationModel.id.getter();
        v52 = v51;
        v53 = *(v5 + 8);
        v53(v44, v45);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v64);
        v32 = v63;

        *(v47 + 14) = v54;
        _os_log_impl(&dword_24234D000, v46, v43, "Presenting notification: %s:%s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D0E5A0](v48, -1, -1);
        MEMORY[0x245D0E5A0](v47, -1, -1);

        v53(v42, v45);
      }

      else
      {

        v55 = *(v5 + 8);
        v55(v44, v30);
        v55(v42, v30);
      }
    }
  }

  else
  {
    v32 = v63;
    (*(v5 + 56))(v63, 1, 1, v4);
  }

  CurrentValueSubject.send(_:)();

  return outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
}

uint64_t static CAFInferredNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v6 = type metadata accessor for NotificationModel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationModel.ValidationError();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = NotificationModel.validate(automakerSymbolValidator:)();
  v22 = a1;
  v23 = v18;
  (*(v7 + 16))(v20, v22, v6);
  v46 = v7;
  v24 = *(v7 + 56);
  v50 = v6;
  v40 = v24;
  v41 = v7 + 56;
  v24(v20, 0, 1, v6);
  v36 = v20;
  v25 = v20;
  v26 = v21;
  v27 = a4;
  outlined init with copy of NotificationModel.Symbol?(v25, a4, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  v51 = *(v21 + 16);
  if (v51)
  {
    v28 = 0;
    v49 = v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v47 = (v46 + 6);
    v48 = v52 + 16;
    v37 = (v46 + 4);
    v38 = (v46 + 1);
    v45 = 0;
    v46 = (v52 + 8);
    v29 = &_s14CarPlayAssetUI17NotificationModelVSgMR;
    v39 = v26;
    while (v28 < *(v26 + 16))
    {
      (*(v52 + 16))(v11, v49 + *(v52 + 72) * v28, v53);
      outlined init with copy of NotificationModel.Symbol?(v27, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v30 = v50;
      if ((*v47)(v15, 1, v50) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v27, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v40(v23, 1, 1, v30);
      }

      else
      {
        v31 = v29;
        v32 = v27;
        v27 = v30;
        v29 = v42;
        v33 = v15;
        (*v37)(v42, v15, v27);
        v34 = v45;
        closure #1 in closure #2 in static CAFInferredNotificationSource.sanitize(notification:displayID:)(v29, v11, v43, v44, v23);
        v45 = v34;
        if (v34)
        {
          goto LABEL_11;
        }

        (*v38)(v29, v27);
        v27 = v32;
        v29 = v31;
        outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v15 = v33;
        v26 = v39;
      }

      ++v28;
      (*v46)(v11, v53);
      outlined init with take of NotificationModel?(v23, v27);
      if (v51 == v28)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    result = (*v38)(v29, v27);
    __break(1u);
  }

  else
  {
LABEL_9:

    return outlined destroy of RequestTemporaryContentModel?(v36, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  }

  return result;
}

uint64_t closure #1 in closure #2 in static CAFInferredNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v59 = a3;
  v60 = a4;
  v7 = type metadata accessor for NotificationModel.ValidationError();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for NotificationModel();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  NotificationModel.ValidationError.correct(on:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v14, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v25 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v19, a1, v15);
    v26 = v58;
    (*(v62 + 16))(v58, a2, v63);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v27 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v27, v25))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136315650;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v28 + 12) = 2080;
      v30 = NotificationModel.id.getter();
      LODWORD(v60) = v25;
      v32 = v31;
      (*(v16 + 8))(v19, v15);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v64);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v34 = NotificationModel.ValidationError.description.getter();
      v36 = v35;
      (*(v62 + 8))(v26, v63);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_24234D000, v27, v60, "Unable to correct issue on notification %s:%s: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v29, -1, -1);
      MEMORY[0x245D0E5A0](v28, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v26, v63);
      (*(v16 + 8))(v19, v15);
    }

    v52 = 1;
    v53 = v61;
  }

  else
  {
    v58 = *(v16 + 32);
    (v58)(v24, v14, v15);
    v38 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v22, a1, v15);
    (*(v62 + 16))(v11, a2, v63);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v39 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v57 = v24;
      v41 = v40;
      v56 = swift_slowAlloc();
      v64 = v56;
      *v41 = 136315650;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v41 + 12) = 2080;
      v42 = NotificationModel.id.getter();
      LODWORD(v60) = v38;
      v44 = v43;
      (*(v16 + 8))(v22, v15);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v64);

      *(v41 + 14) = v45;
      *(v41 + 22) = 2080;
      v46 = NotificationModel.ValidationError.description.getter();
      v48 = v47;
      (*(v62 + 8))(v11, v63);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v64);

      *(v41 + 24) = v49;
      _os_log_impl(&dword_24234D000, v39, v60, "Corrected issue on notification  %s:%s: %s", v41, 0x20u);
      v50 = v56;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v50, -1, -1);
      v51 = v41;
      v24 = v57;
      MEMORY[0x245D0E5A0](v51, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v11, v63);
      (*(v16 + 8))(v22, v15);
    }

    v53 = v61;
    (v58)(v61, v24, v15);
    v52 = 0;
  }

  return (*(v16 + 56))(v53, v52, 1, v15);
}

uint64_t CAFInferredNotificationSource.convert(message:requestContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v209 = a2;
  v188 = type metadata accessor for UUID();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for NotificationModel();
  v200 = *(v203 - 8);
  v6 = MEMORY[0x28223BE20](v203);
  v8 = v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v199 = v182 - v9;
  v210 = type metadata accessor for NotificationModel.Style();
  v198 = *(v210 - 8);
  v10 = MEMORY[0x28223BE20](v210);
  v193 = v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v195 = v182 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v192 = v182 - v14;
  v201 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v225 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v16 = v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6ActionVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v182 - v18;
  v230 = type metadata accessor for NotificationModel.Action();
  v207 = *(v230 - 8);
  v20 = MEMORY[0x28223BE20](v230);
  v221 = v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v206 = v182 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v191 = v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v196 = (v182 - v26);
  v197 = type metadata accessor for NotificationModel.Symbol();
  v27 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v202 = v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v182 - v30;
  v205 = type metadata accessor for NotificationModel.Text();
  v204 = *(v205 - 8);
  v32 = MEMORY[0x28223BE20](v205);
  v190 = v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v227 = v182 - v34;
  v220 = dispatch thunk of CAFRemoteNotificationObservable.displayPanelIdentifier.getter();
  v224 = v35;
  v219 = dispatch thunk of CAFRemoteNotificationObservable.identifier.getter();
  v222 = v36;
  v37 = dispatch thunk of CAFRemoteNotificationObservable.userVisibleLabel.getter();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v194 = v16;
  if (v40)
  {
    dispatch thunk of CAFRemoteNotificationObservable.userVisibleLabel.getter();
    v228 = v41;
  }

  else
  {
    v228 = 0;
  }

  v42 = dispatch thunk of CAFRemoteNotificationObservable.userVisibleDescription.getter();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  v217 = a1;
  v46 = a3;
  if (v45)
  {
    dispatch thunk of CAFRemoteNotificationObservable.userVisibleDescription.getter();
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = v204;

  NotificationModel.Text.init(title:body:)();
  v50 = v205;
  v51 = (*(v49 + 48))(v31, 1, v205);
  v52 = v49;
  v53 = v225;
  if (v51 == 1)
  {

    outlined destroy of RequestTemporaryContentModel?(v31, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
    v54 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v55 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v232 = v57;
      *v56 = 136315138;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v224, &v232);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_24234D000, v55, v54, "No text added to notification on display: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x245D0E5A0](v57, -1, -1);
      MEMORY[0x245D0E5A0](v56, -1, -1);
    }

    else
    {
    }

    return (*(v200 + 56))(v46, 1, 1, v203);
  }

  v182[2] = v48;
  (*(v52 + 32))(v227, v31, v50);
  v59 = dispatch thunk of CAFRemoteNotificationObservable.symbolNameAndColor.getter();
  v184 = a3;
  v189 = v59;
  if (v59)
  {
    v60 = [v59 name];
    v61 = v8;
    if (v60)
    {
      v62 = v60;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    v67 = v27;
    v68 = UIColorFromCAFImageColor([v189 color]);
    v66 = MEMORY[0x245D0CE70](v68);
  }

  else
  {
    v66 = 0;
    v64 = 0xE000000000000000;
    v61 = v8;
    v67 = v27;
  }

  v182[1] = v64;
  v182[3] = v66;
  NotificationModel.Symbol.init(name:color:)();
  v69 = dispatch thunk of CAFRemoteNotificationObservable.notificationUserActions.getter();
  v70 = [v69 notificationUserActions];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFNotificationUserAction);
  v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = v71 >> 62;
  v183 = v61;
  v208 = v67;
  if (v71 >> 62)
  {
    goto LABEL_72;
  }

  result = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v74 = v227;
  if (result)
  {
    while (1)
    {
      v226 = v19;
      v218 = v71;
      if (result == 1)
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x245D0D9A0](0, v71);
        }

        else
        {
          if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v75 = *(v71 + 32);
        }

        v76 = v75;
        v77 = [v75 contentURLAction];
        if (v77)
        {
          v78 = v77;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          v82 = HIBYTE(v81) & 0xF;
          if ((v81 & 0x2000000000000000) == 0)
          {
            v82 = v79 & 0xFFFFFFFFFFFFLL;
          }

          if (v82)
          {
            v83 = [v76 userVisibleLabel];
            if (!v83)
            {
              goto LABEL_68;
            }

            v84 = v83;
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v88 = HIBYTE(v87) & 0xF;
            v89 = v85 & 0xFFFFFFFFFFFFLL;
            v90 = (v87 & 0x2000000000000000) == 0;
            v19 = v226;
            v74 = v227;
            if (v90)
            {
              v88 = v89;
            }

            if (!v88)
            {
LABEL_68:

              v129 = swift_allocObject();
              swift_weakInit();
              v130 = swift_allocObject();
              v131 = v219;
              v132 = v224;
              v130[2] = v220;
              v130[3] = v132;
              v133 = v196;
              v134 = v79;
              v135 = v222;
              v130[4] = v131;
              v130[5] = v135;
              v136 = v217;
              v128 = v209;
              v130[6] = v217;
              v130[7] = v128;
              v130[8] = v129;
              v130[9] = v134;
              v130[10] = v81;
              *v133 = 0xD00000000000001BLL;
              v133[1] = 0x8000000242428D90;
              v133[2] = partial apply for closure #1 in CAFInferredNotificationSource.convert(message:requestContent:);
              v133[3] = v130;
              v137 = *MEMORY[0x277CF8BC8];
              v138 = type metadata accessor for NotificationModel.ButtonType();
              v139 = *(v138 - 8);
              (*(v139 + 104))(v133, v137, v138);
              (*(v139 + 56))(v133, 0, 1, v138);

              v124 = v133;

              v140 = v136;
              v141 = v128;
              v53 = v225;
              goto LABEL_80;
            }
          }

          v53 = v225;
        }

        else
        {
        }

        v71 = v218;
      }

      v91 = v73 ? __CocoaSet.count.getter() : *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v73 = v210;
      if (!v91)
      {
        break;
      }

      v92 = 0;
      v215 = v71 & 0xFFFFFFFFFFFFFF8;
      v216 = v71 & 0xC000000000000001;
      v212 = (v207 + 48);
      v213 = (v207 + 56);
      v211 = (v207 + 32);
      v229 = MEMORY[0x277D84F90];
      *&v72 = 136315394;
      v185 = v72;
      v214 = v91;
      while (1)
      {
        if (v216)
        {
          v93 = MEMORY[0x245D0D9A0](v92, v71);
        }

        else
        {
          if (v92 >= *(v215 + 16))
          {
            goto LABEL_70;
          }

          v93 = *(v71 + 8 * v92 + 32);
        }

        v94 = v93;
        if (__OFADD__(v92, 1))
        {
          break;
        }

        v95 = [v93 userVisibleLabel];
        v231 = v92 + 1;
        if (v95)
        {
          v53 = v95;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v96;

          v97 = [v94 contentURLAction];
          if (v97)
          {
            v19 = v97;
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            if (v92 > 0xFF)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v67 = 0;
            v99 = 0;
            if (v92 > 0xFF)
            {
              goto LABEL_71;
            }
          }

          v108 = swift_allocObject();
          swift_weakInit();
          v109 = v94;
          v110 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v111 = swift_allocObject();
          v223 = v73;
          v112 = v111;
          swift_unknownObjectWeakInit();
          v113 = swift_allocObject();
          v114 = v219;
          v113[2] = v220;
          v113[3] = v224;
          v113[4] = v114;
          v113[5] = v222;
          v113[6] = v112;
          v113[7] = v110;
          v113[8] = v67;
          v94 = v109;
          v113[9] = v99;
          v113[10] = v108;

          v19 = v226;
          NotificationModel.Action.init(id:title:highlighted:handler:)();
          v107 = 0;
          v73 = v210;
          v53 = v225;
          v67 = v208;
        }

        else
        {
          v100 = static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
          v101 = static OS_os_log.default.getter();
          if (os_log_type_enabled(v101, v100))
          {
            v102 = v73;
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v232 = v104;
            *v103 = v185;
            *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v224, &v232);
            *(v103 + 12) = 2080;
            *(v103 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v219, v222, &v232);
            _os_log_impl(&dword_24234D000, v101, v100, "Notification (%s:%s) - User action does not have text", v103, 0x16u);
            swift_arrayDestroy();
            v105 = v104;
            v53 = v225;
            MEMORY[0x245D0E5A0](v105, -1, -1);
            v106 = v103;
            v73 = v102;
            v19 = v226;
            MEMORY[0x245D0E5A0](v106, -1, -1);
          }

          v107 = 1;
        }

        v115 = v230;
        (*v213)(v19, v107, 1, v230);

        if ((*v212)(v19, 1, v115) == 1)
        {
          outlined destroy of RequestTemporaryContentModel?(v19, &_s14CarPlayAssetUI17NotificationModelV6ActionVSgMd);
          v74 = v227;
        }

        else
        {
          v116 = *v211;
          v117 = v206;
          (*v211)(v206, v19, v115);
          v116(v221, v117, v115);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v227;
          v119 = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v229 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v229 + 2) + 1, 1, v229);
          }

          v121 = *(v229 + 2);
          v120 = *(v229 + 3);
          if (v121 >= v120 >> 1)
          {
            v229 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120 > 1, v121 + 1, 1, v229);
          }

          v123 = v229;
          v122 = v230;
          *(v229 + 2) = v121 + 1;
          v116(&v123[((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v121], v221, v122);
          v73 = v119;
          v19 = v226;
        }

        v71 = v218;
        ++v92;
        if (v231 == v214)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v142 = __CocoaSet.count.getter();
      v74 = v227;
      if (!v142)
      {
        goto LABEL_74;
      }

      result = __CocoaSet.count.getter();
    }

    v229 = MEMORY[0x277D84F90];
LABEL_67:

    v124 = v196;
    *v196 = v229;
    v125 = *MEMORY[0x277CF8BD0];
    v126 = type metadata accessor for NotificationModel.ButtonType();
    v127 = *(v126 - 8);
    (*(v127 + 104))(v124, v125, v126);
    (*(v127 + 56))(v124, 0, 1, v126);
    v128 = v209;
    dispatch thunk of CAFRequestContentObservable.userDismissible.getter();
  }

  else
  {
LABEL_74:

    v128 = v209;
    if ((dispatch thunk of CAFRequestContentObservable.userDismissible.getter() & 1) == 0)
    {
      v145 = type metadata accessor for NotificationModel.ButtonType();
      v124 = v196;
      (*(*(v145 - 8) + 56))(v196, 1, 1, v145);
LABEL_80:
      v146 = v197;
      v73 = v210;
      goto LABEL_84;
    }

    v73 = v210;
    if (v220 == 0x5F72657473756C43 && v224 == 0xEF79616C70736944 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v143 = 0xE500000000000000;
      v144 = 0x6B72616D78;
    }

    else
    {
      v143 = 0x8000000242428DB0;
      v144 = 0xD000000000000011;
    }

    v147 = swift_allocObject();
    v128 = v209;
    swift_unknownObjectWeakInit();
    v148 = swift_allocObject();
    v149 = v224;
    v148[2] = v220;
    v148[3] = v149;
    v150 = v222;
    v148[4] = v219;
    v148[5] = v150;
    v148[6] = v147;
    v151 = v196;
    *v196 = v144;
    v151[1] = v143;
    v151[2] = partial apply for closure #3 in CAFInferredNotificationSource.convert(message:requestContent:);
    v151[3] = v148;
    v152 = *MEMORY[0x277CF8BC8];
    v153 = type metadata accessor for NotificationModel.ButtonType();
    v154 = *(v153 - 8);
    (*(v154 + 104))(v151, v152, v153);
    (*(v154 + 56))(v151, 0, 1, v153);

    v124 = v151;
  }

  v146 = v197;
LABEL_84:
  (*(v204 + 16))(v190, v74, v205);
  outlined init with copy of NotificationModel.Symbol?(v124, v191, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd);
  v155 = v192;
  (*(v67 + 16))(v192, v202, v146);
  (*(v67 + 56))(v155, 0, 1, v146);
  *(swift_allocObject() + 16) = v128;
  v156 = v128;
  v157 = v194;
  NotificationModel.InferredNotificationModel.init(text:buttonType:symbol:blocking:dismissalHandler:)();
  v158 = v195;
  (*(v53 + 2))(v195, v157, v201);
  v159 = v198;
  (*(v198 + 104))(v158, *MEMORY[0x277CF8BF0], v73);
  (*(v159 + 16))(v193, v158, v73);
  v160 = v199;
  NotificationModel.init(id:style:)();
  v161 = static os_log_type_t.info.getter();
  v162 = v200;
  v163 = v183;
  (*(v200 + 16))(v183, v160, v203);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v164 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v164, v161))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v232 = v166;
    *v165 = 136315650;
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v224, &v232);

    *(v165 + 4) = v167;
    *(v165 + 12) = 2080;
    v168 = CAFRemoteNotificationObservable.observed.getter();
    v169 = v186;
    CAFService.id.getter();

    lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v170 = v188;
    v171 = dispatch thunk of CustomStringConvertible.description.getter();
    v173 = v172;
    (*(v187 + 8))(v169, v170);
    v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v173, &v232);

    *(v165 + 14) = v174;
    *(v165 + 22) = 2080;
    v175 = NotificationModel.description.getter();
    v177 = v176;
    v162 = v200;
    v178 = v203;
    (*(v200 + 8))(v163, v203);
    v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, &v232);

    *(v165 + 24) = v179;
    _os_log_impl(&dword_24234D000, v164, v161, "Converted notification (displayID = (%s), message.id = %s) to %s", v165, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v166, -1, -1);
    MEMORY[0x245D0E5A0](v165, -1, -1);

    (*(v198 + 8))(v195, v210);
    (v225)[1](v157, v201);
    outlined destroy of RequestTemporaryContentModel?(v196, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd);
    (*(v208 + 8))(v202, v197);
    (*(v204 + 8))(v227, v205);
    v180 = v184;
    v181 = v178;
  }

  else
  {

    v181 = v203;
    (*(v162 + 8))(v163, v203);
    (*(v198 + 8))(v158, v73);
    (*(v53 + 1))(v157, v201);
    outlined destroy of RequestTemporaryContentModel?(v196, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd);
    (*(v208 + 8))(v202, v197);
    (*(v204 + 8))(v74, v205);
    v180 = v184;
  }

  (*(v162 + 32))(v180, v199, v181);
  return (*(v162 + 56))(v180, 0, 1, v181);
}

uint64_t closure #1 in CAFInferredNotificationSource.convert(message:requestContent:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v15 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v20 = a8;
    v21[0] = swift_slowAlloc();
    v17 = v21[0];
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v21);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v21);
    _os_log_impl(&dword_24234D000, v15, v14, "Chevron (%s:%s) button pressed", v16, 0x16u);
    swift_arrayDestroy();
    v18 = v17;
    a8 = v20;
    MEMORY[0x245D0E5A0](v18, -1, -1);
    MEMORY[0x245D0E5A0](v16, -1, -1);
  }

  dispatch thunk of CAFRemoteNotificationObservable.userAction.setter();
  dispatch thunk of CAFRequestContentObservable.on.setter();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(result + 40))(a8, a9);
  }

  return result;
}

void closure #1 in closure #2 in CAFInferredNotificationSource.convert(message:requestContent:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v16 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v27 = a8;
    v17 = swift_slowAlloc();
    v18 = a5;
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v17 = 136315650;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v28);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, v18, v28);
    *(v17 + 22) = 256;
    *(v17 + 24) = a1;
    _os_log_impl(&dword_24234D000, v16, v15, "Notification (%s:%s) button %hhu pressed", v17, 0x19u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v19, -1, -1);
    v20 = v17;
    a8 = v27;
    MEMORY[0x245D0E5A0](v20, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    dispatch thunk of CAFRemoteNotificationObservable.userAction.setter();
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    dispatch thunk of CAFRequestContentObservable.on.setter();
  }

  if (a9)
  {
    static os_log_type_t.info.getter();
    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (v26)
    {
      (*(v26 + 40))(a8, a9);
    }
  }
}

void closure #3 in CAFInferredNotificationSource.convert(message:requestContent:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v9 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v14);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v14);
    _os_log_impl(&dword_24234D000, v9, v8, "Notification (%s:%s) close button pressed", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v11, -1, -1);
    MEMORY[0x245D0E5A0](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    dispatch thunk of CAFRequestContentObservable.on.setter();
  }
}

uint64_t CAFInferredNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFInferredNotificationSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFInferredNotificationSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2423E61DC()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423E6214()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2423E62AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423E62E4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2423E637C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt8)@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id CAUAssetLibrary.asset(for:)(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v64 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v55 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v55 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v55 - v17;
  dispatch thunk of CAUAssetLibrary.basePath(for:)();
  if (!v2)
  {
    v19 = v64;
    v58 = v7;
    v59 = v10;
    v60 = v16;
    v20 = dispatch thunk of CAUAssetLibrary.filename(for:)();
    v61 = 0;
    v55[0] = a1;
    v22 = v20;
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    v23 = *(v19 + 8);
    v23(v13, v4);
    v57 = v18;
    URL.appendingPathComponent(_:)();
    v24 = v59;
    v55[1] = v22;
    URL.appendingPathComponent(_:)();
    v56 = v4;
    v64 = v19 + 8;
    v23(v13, v4);
    v25 = objc_opt_self();
    v26 = [v25 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v28 = MEMORY[0x245D0D180](countAndFlagsBits);

    v29 = [v26 fileExistsAtPath_];

    if (v29 && (v30 = [v25 defaultManager], v31 = URL.path(percentEncoded:)(1)._countAndFlagsBits, v32 = MEMORY[0x245D0D180](v31), , v33 = objc_msgSend(v30, sel_fileExistsAtPath_, v32), v30, v32, v33))
    {

      v62 = 0;
      v63 = 0xE000000000000000;
      type metadata accessor for CAUResource();
      _print_unlocked<A, B>(_:_:)();
      v34 = v61;
      v35 = specialized CAUAssetLibrary.loadImage(path:for:)(v24, v62, v63);
      v1 = v34;
      if (v34)
      {

        v36 = v56;
        v23(v24, v56);
        v23(v60, v36);
        v23(v57, v36);
        return v1;
      }

      v58 = v35;
      v61 = v23;

      v62 = 0;
      v63 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v47 = specialized CAUAssetLibrary.loadImage(path:for:)(v60, v62, v63);
      v38 = v57;
      v48 = v47;

      v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      v49 = [v1 imageAsset];
      if (v49)
      {
        v50 = v49;
        v51 = objc_opt_self();
        v52 = [v51 traitCollectionWithUserInterfaceStyle_];
        v53 = v58;
        [v50 registerImage:v58 withTraitCollection:v52];

        v54 = [v51 traitCollectionWithUserInterfaceStyle_];
        [v50 registerImage:v48 withTraitCollection:v54];

        v23 = v61;
        v44 = v56;
        v61(v59, v56);
        goto LABEL_14;
      }

      specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000026, 0x800000024242BDA0, 0x6F66287465737361, 0xEB00000000293A72, 34);

      v23 = v61;
      v45 = v56;
    }

    else
    {
      v37 = v58;
      v38 = v57;
      URL.appendingPathComponent(_:)();

      v39 = [v25 &selRef_symbolName + 3];
      v40 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
      v41 = MEMORY[0x245D0D180](v40);

      v1 = [v39 fileExistsAtPath_];

      if (v1)
      {
        v62 = 0;
        v63 = 0xE000000000000000;
        type metadata accessor for CAUResource();
        _print_unlocked<A, B>(_:_:)();
        v42 = v61;
        v43 = specialized CAUAssetLibrary.loadImage(path:for:)(v37, v62, v63);
        v44 = v56;
        if (v42)
        {

          v23(v37, v44);
          v23(v59, v44);
          v23(v60, v44);
          v23(v38, v44);
          return v1;
        }

        v1 = v43;

        v23(v37, v44);
        v23(v59, v44);
LABEL_14:
        v23(v60, v44);
        v23(v38, v44);
        return v1;
      }

      v45 = v56;
      v23(v37, v56);
    }

    v1 = type metadata accessor for CAUError();
    lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8]);
    swift_allocError();
    (*(*(v1 - 1) + 104))(v46, *MEMORY[0x277CF88D8], v1);
    swift_willThrow();
    v23(v59, v45);
    v23(v60, v45);
    v23(v38, v45);
  }

  return v1;
}

UIImage_optional __swiftcall CAUAssetLibrary.customImage(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for CAUCustomImageArchiveManifest.ImageData.Appearance();
  v6 = *(v106 - 8);
  v7 = MEMORY[0x28223BE20](v106);
  v87 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v102 = &v69 - v9;
  v105 = type metadata accessor for URL.DirectoryHint();
  v113 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for URL();
  v112 = *(v92 - 8);
  v11 = MEMORY[0x28223BE20](v92);
  v103 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v69 - v13;
  v14 = type metadata accessor for CAUCustomImageArchiveManifest.ImageData.Property();
  v73 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v88 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for CAUCustomImageArchiveManifest.ImageData();
  v81 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils29CAUCustomImageArchiveManifestVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v20 = type metadata accessor for CAUCustomImageArchiveManifest();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v1;
  dispatch thunk of CAUAssetLibrary.customImageArchiveManifest.getter();
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v23, v19, v20);
    v30 = CAUCustomImageArchiveManifest.images.getter();
    v80 = *(v30 + 2);
    if (!v80)
    {

LABEL_30:
      v61 = MEMORY[0x245D0D180](countAndFlagsBits, object);
      v62 = CAFUIImageForSymbolName(v61);

      (*(v21 + 8))(v23, v20);
      v28 = v62;
      goto LABEL_31;
    }

    v69 = v23;
    v70 = v21;
    v71 = v20;
    v32 = 0;
    v77 = v30 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v76 = v81 + 16;
    v79 = (v81 + 8);
    v101 = v73 + 16;
    v100 = *MEMORY[0x277CC91D0];
    v99 = (v113 + 104);
    v98 = (v113 + 8);
    v110 = (v112 + 8);
    v91 = " support image assets.";
    v97 = (v6 + 8);
    v84 = "Failed to create image for ";
    v96 = (v73 + 8);
    v86 = *MEMORY[0x277CF88C0];
    v85 = (v6 + 104);
    *&v31 = 136315650;
    v83 = v31;
    v33 = v75;
    v34 = v72;
    v35 = v92;
    v78 = v30;
    while (1)
    {
      if (v32 >= *(v30 + 2))
      {
        __break(1u);
        goto LABEL_36;
      }

      v36 = *(v81 + 72);
      v82 = v32;
      (*(v81 + 16))(v34, &v77[v36 * v32], v33);
      if (CAUCustomImageArchiveManifest.ImageData.symbolName.getter() == countAndFlagsBits && v37 == object)
      {
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          (*v79)(v34, v33);
          goto LABEL_8;
        }
      }

      v39 = CAUCustomImageArchiveManifest.ImageData.properties.getter();
      v40 = *(v39 + 16);
      if (v40)
      {
        v90 = 0;
        v89 = 0;
        v41 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v74 = v39;
        v42 = v39 + v41;
        v43 = *(v73 + 72);
        v108 = *(v73 + 16);
        v109 = v43;
        v44 = v88;
        do
        {
          v112 = v42;
          v113 = v40;
          v108(v44);
          v45 = v103;
          CAUAssetLibrary.customImageArchiveImagesFilePath.getter();
          v115 = CAUCustomImageArchiveManifest.ImageData.Property.fileName.getter();
          v116 = v46;
          v48 = v104;
          v47 = v105;
          (*v99)(v104, v100, v105);
          lazy protocol witness table accessor for type String and conformance String();
          v49 = v14;
          v50 = v111;
          URL.appending<A>(path:directoryHint:)();
          (*v98)(v48, v47);

          v51 = *v110;
          (*v110)(v45, v35);
          v95 = specialized CAUAssetLibrary.loadImage(path:for:)(v50, 0x6D496D6F74737563, 0xEB00000000656761);
          v52 = v102;
          CAUCustomImageArchiveManifest.ImageData.Property.appearance.getter();
          v53 = v87;
          v54 = v106;
          (*v85)(v87, v86, v106);
          lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUCustomImageArchiveManifest.ImageData.Appearance and conformance CAUCustomImageArchiveManifest.ImageData.Appearance, MEMORY[0x277CF88C8]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v55 = *v97;
          (*v97)(v53, v54);
          v56 = v54;
          v35 = v92;
          v55(v52, v56);
          v51(v111, v35);
          (*v96)(v44, v49);
          v14 = v49;
          if (v115 == v114)
          {

            v57 = v95;
            v58 = &v117;
          }

          else
          {

            v57 = v95;
            v58 = &v118;
          }

          *(v58 - 32) = v57;
          v44 = v88;
          v42 = v112 + v109;
          v40 = v113 - 1;
        }

        while (v113 != 1);

        v28 = v89;
        if (v89)
        {
          v33 = v75;
          v34 = v72;
          if (!v90)
          {
            (*v79)(v72, v75);
LABEL_33:
            (*(v70 + 8))(v69, v71);

            goto LABEL_31;
          }

          v59 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
          v60 = [v59 imageAsset];
          if (v60)
          {
            v63 = v60;

            v64 = objc_opt_self();
            v65 = v33;
            v66 = [v64 traitCollectionWithUserInterfaceStyle_];
            [v63 registerImage:v28 withTraitCollection:v66];

            v67 = [v64 traitCollectionWithUserInterfaceStyle_];
            v68 = v90;
            [v63 registerImage:v90 withTraitCollection:v67];

            (*v79)(v34, v65);
            (*(v70 + 8))(v69, v71);
            v28 = v59;
            goto LABEL_31;
          }

          (*v79)(v34, v33);
        }

        else
        {
          v34 = v72;
          v33 = v75;
          (*v79)(v72, v75);
          v28 = v90;
          if (v90)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {

        v33 = v75;
        (*v79)(v34, v75);
      }

LABEL_8:
      v32 = v82 + 1;
      v30 = v78;
      if (v82 + 1 == v80)
      {

        v20 = v71;
        v21 = v70;
        v23 = v69;
        goto LABEL_30;
      }
    }
  }

  outlined destroy of CAUCustomImageArchiveManifest?(v19);
  static Logger.assetUtils.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24234D000, v24, v25, "customImageArchiveManifest is not available.", v26, 2u);
    MEMORY[0x245D0E5A0](v26, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v27 = MEMORY[0x245D0D180](countAndFlagsBits, object);
  v28 = CAFUIImageForSymbolName(v27);

LABEL_31:
  v30 = v28;
LABEL_36:
  result.value.super.isa = v30;
  result.is_nil = v29;
  return result;
}

uint64_t CAUAssetLibraryManager.fetchCustomImage(named:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for SymbolImageProvider.ImageSize();
  v67 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v63 - v9;
  v10._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String.hasPrefix(_:)(v10);

  v12 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log();
  v13 = static OS_os_log.default.getter();
  v14 = os_log_type_enabled(v13, v12);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v64 = v6;
      v17 = a3;
      v18 = v16;
      v68 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v68);
      _os_log_impl(&dword_24234D000, v13, v12, "Searching for custom image with URL '%s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v19 = v18;
      a3 = v17;
      v6 = v64;
      MEMORY[0x245D0E5A0](v19, -1, -1);
      MEMORY[0x245D0E5A0](v15, -1, -1);
    }

    v20 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.count.getter();

      v22 = String.index(_:offsetBy:)();
      v23 = specialized Collection.subscript.getter(v22, a1, a2);
      v24 = MEMORY[0x245D0D1E0](v23);
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      v28 = CAUAssetLibrary.customImage(for:)(v27);

      if (v28)
      {
        [v28 size];
        if (v29 <= 128.0)
        {
          [v28 size];
          v31 = v67;
          v32 = *(v67 + 104);
          if (v53 <= 78.0)
          {
            v54 = MEMORY[0x277CF8C60];
          }

          else
          {
            v54 = MEMORY[0x277CF8C68];
          }

          v30 = *v54;
        }

        else
        {
          v30 = *MEMORY[0x277CF8C58];
          v31 = v67;
          v32 = *(v67 + 104);
        }

        v55 = v65;
        v32(v65, v30, v6);
        v56 = *(v31 + 32);
        v57 = v66;
        v56(v66, v55, v6);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMd);
        v59 = *(v58 + 48);
        v60 = Image.init(uiImage:)();

        *a3 = v60;
        v56(a3 + v59, v57, v6);
        v61 = *MEMORY[0x277CF8C78];
        v62 = type metadata accessor for SymbolImageProvider.ImageSource();
        (*(*(v62 - 8) + 104))(a3 + v59, v61, v62);
        return (*(*(v58 - 8) + 56))(a3, 0, 1, v58);
      }

      static os_log_type_t.error.getter();
      v41 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      static os_log_type_t.error.getter();
      v41 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMd);
    v47 = *(*(v51 - 8) + 56);
    v50 = v51;
    v48 = a3;
    v49 = 1;
  }

  else
  {
    v33 = a3;
    if (v14)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v68 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v68);
      _os_log_impl(&dword_24234D000, v13, v12, "Searching for SF Symbol named '%s'", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x245D0E5A0](v35, -1, -1);
      MEMORY[0x245D0E5A0](v34, -1, -1);
    }

    v36 = CAFUIFrameworkBundle();
    v37 = MEMORY[0x245D0D180](a1, a2);
    v38 = [objc_opt_self() imageNamed:v37 inBundle:v36];

    if (v38)
    {

      v39 = CAFUIFrameworkBundle();

      v40 = Image.init(_:bundle:)();
    }

    else
    {

      v40 = Image.init(_internalSystemName:)();
    }

    v42 = v40;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMd);
    v44 = *(v43 + 48);
    *v33 = v42;
    v45 = *MEMORY[0x277CF8C70];
    v46 = type metadata accessor for SymbolImageProvider.ImageSource();
    (*(*(v46 - 8) + 104))(v33 + v44, v45, v46);
    v47 = *(*(v43 - 8) + 56);
    v48 = v33;
    v49 = 0;
    v50 = v43;
  }

  return v47(v48, v49, 1, v50);
}

uint64_t specialized Collection.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *specialized CAUAssetLibrary.loadImage(path:for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v80 = a3;
  v78 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = type metadata accessor for Logger();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v79 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v23 = Data.init(contentsOf:options:)();
  if (!v3)
  {
    v73 = v14;
    v74 = v22;
    v35 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      v36 = v20;
      v37 = v12;
      v38 = a1;
      if (v35 == 2 && *(v23 + 16) != *(v23 + 24))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v36 = v20;
      if (!v35)
      {
        v37 = v12;
        v38 = a1;
        if ((v24 & 0xFF000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_12:
        v42 = v23;
        v43 = v24;
        v44 = objc_allocWithZone(MEMORY[0x277D755B8]);
        outlined copy of Data._Representation(v42, v43);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v39 = [v44 initWithData_];

        outlined consume of Data._Representation(v42, v43);
        if (v39)
        {
          outlined consume of Data._Representation(v42, v43);
          return v39;
        }

        v75 = v42;
        v79 = v43;
        v59 = v74;
        static Logger.assetUtils.getter();
        v60 = v73;
        (*(v6 + 16))(v73, v38, v5);

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v81 = v72;
          *v63 = 136315394;
          v64 = v78;
          *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v81);
          *(v63 + 12) = 2080;
          lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v66;
          (*(v6 + 8))(v60, v5);
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v81);

          *(v63 + 14) = v68;
          _os_log_impl(&dword_24234D000, v61, v62, "failed to decode image %s at path %s", v63, 0x16u);
          v69 = v72;
          swift_arrayDestroy();
          MEMORY[0x245D0E5A0](v69, -1, -1);
          MEMORY[0x245D0E5A0](v63, -1, -1);

          (*(v76 + 8))(v74, v77);
        }

        else
        {

          (*(v6 + 8))(v60, v5);
          (*(v76 + 8))(v59, v77);
          v64 = v78;
        }

        v39 = type metadata accessor for CAUError();
        lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8]);
        swift_allocError();
        v58 = v57;
        *v57 = v64;
LABEL_23:
        v57[1] = v80;
        v57[2] = 0;
        (*(*(v39 - 1) + 104))(v58, *MEMORY[0x277CF88E0], v39);
        swift_willThrow();

        outlined consume of Data._Representation(v75, v79);
        return v39;
      }

      v37 = v12;
      v38 = a1;
      if (v23 != v23 >> 32)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v75 = v23;
    v79 = v24;
    static Logger.assetUtils.getter();
    (*(v6 + 16))(v37, v38, v5);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v81 = v74;
      *v48 = 136315394;
      v49 = v78;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v81);
      *(v48 + 12) = 2080;
      lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v6;
      v53 = v52;
      (*(v51 + 8))(v37, v5);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, &v81);

      *(v48 + 14) = v54;
      v55 = v49;
      _os_log_impl(&dword_24234D000, v46, v47, "File is empty for %s at path %s", v48, 0x16u);
      v56 = v74;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v56, -1, -1);
      MEMORY[0x245D0E5A0](v48, -1, -1);

      (*(v76 + 8))(v36, v77);
    }

    else
    {

      (*(v6 + 8))(v37, v5);
      (*(v76 + 8))(v36, v77);
      v55 = v78;
    }

    v39 = type metadata accessor for CAUError();
    lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8]);
    swift_allocError();
    v58 = v57;
    *v57 = v55;
    goto LABEL_23;
  }

  static Logger.assetUtils.getter();
  (*(v6 + 16))(v9, a1, v5);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v81 = v75;
    *v27 = 136315394;
    v28 = v78;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v81);
    *(v27 + 12) = 2080;
    lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v5;
    v32 = v31;
    (*(v6 + 8))(v9, v30);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &v81);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_24234D000, v25, v26, "failed to read data for %s at path %s", v27, 0x16u);
    v34 = v75;
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v34, -1, -1);
    MEMORY[0x245D0E5A0](v27, -1, -1);

    (*(v76 + 8))(v79, v77);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    (*(v76 + 8))(v79, v77);
    v28 = v78;
  }

  v39 = type metadata accessor for CAUError();
  lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8]);
  swift_allocError();
  v40 = v80;
  *v41 = v28;
  v41[1] = v40;
  v41[2] = v3;
  (*(*(v39 - 1) + 104))(v41, *MEMORY[0x277CF88E0], v39);
  swift_willThrow();

  return v39;
}

uint64_t outlined destroy of CAUCustomImageArchiveManifest?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils29CAUCustomImageArchiveManifestVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CAUError and conformance CAUError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CAFEqualizer.title.getter()
{
  v1 = [v0 type];
  v2 = 0;
  if (v1 > 1)
  {
    if (v1 == 3)
    {
      v7 = [v0 userVisibleLabel];
      if (v7)
      {
        v8 = v7;
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {

          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else if (v1 == 2)
    {
      v3 = MEMORY[0x245D0D180](0xD000000000000017, 0x800000024242BEB0);
      v4 = CAFUILocalizedStringForKey(v3);
      goto LABEL_9;
    }
  }

  else
  {
    if (!v1)
    {
      v3 = MEMORY[0x245D0D180](0xD000000000000019, 0x800000024242BE70);
      v4 = CAFUILocalizedStringForKey(v3);
      goto LABEL_9;
    }

    if (v1 == 1)
    {
      v3 = MEMORY[0x245D0D180](0xD000000000000016, 0x800000024242BE90);
      v4 = CAFUILocalizedStringForKey(v3);
LABEL_9:
      v5 = v4;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return v2;
}

id CAFEqualizerObservable.valueRange.getter()
{
  v0 = CAFEqualizerObservable.observed.getter();
  v1 = [v0 valueRange];

  return v1;
}

id CAFVolumeObservable.volumeRange.getter()
{
  v0 = CAFVolumeObservable.observed.getter();
  v1 = [v0 volumeRange];

  return v1;
}

uint64_t static CAFUICellProtocol.reuseIdentifier.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v1 + 48 * v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v8 = *(v4 + 56);
  v7 = *(v4 + 64);
  v9 = *(v4 + 72);
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  v11 = v7;
}

uint64_t CAFUIAutomakerSettingsSection.header.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CAFUIAutomakerSettingsSection.footer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *CAFUIAutomakerSettingsSection.parentSetting.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t CAFUITileDataSource.numSections.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  v5 = v4 >> 62;
  if (!v3)
  {
    if (v5)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v8 != 0;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = 1;
    if (i)
    {
      v7 = 2;
    }

LABEL_12:
    v9 = *(*(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) + 16);
    result = v7 + v9;
    if (!__OFADD__(v7, v9))
    {
      break;
    }

    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t key path setter for CAFUITileDataSource.listItems : CAFUITileDataSource(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  CAFUITileDataSource.listItems.didset(v5);
}

void CAFUITileDataSource.listItems.didset(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v2)
  {
    if (a1 >> 62)
    {
      goto LABEL_12;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v3 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
        swift_beginAccess();
        v4 = *(v1 + v3);
        if (v4 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            break;
          }
        }

        else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v5 = *(v1 + v3);
        if (v5 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_18:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_19:
            v7 = __CocoaSet.count.getter();
            goto LABEL_10;
          }
        }

        else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
        if (v6 >> 62)
        {
          goto LABEL_19;
        }

        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
        v8 = v7 != 0;
        v9 = objc_opt_self();
        v10 = swift_allocObject();
        *(v10 + 16) = v2;
        *(v10 + 24) = v8;
        v1 = swift_allocObject();
        *(v1 + 16) = partial apply for closure #1 in CAFUITileDataSource.listItems.didset;
        *(v1 + 24) = v10;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v1;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_83;
        v11 = _Block_copy(aBlock);
        v2 = v2;

        [v9 performWithoutAnimation_];

        _Block_release(v11);
        LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

        if ((v9 & 1) == 0)
        {
          return;
        }

        __break(1u);
LABEL_12:
        ;
      }

      while (__CocoaSet.count.getter());
    }

    v12 = v2;
    CAFUITileDataSource.reloadView()();
  }
}

uint64_t CAFUITileDataSource.listItems.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  CAFUITileDataSource.listItems.didset(v4);
}

void (*CAFUITileDataSource.listItems.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return CAFUITileDataSource.listItems.modify;
}

void CAFUITileDataSource.listItems.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {

    CAFUITileDataSource.listItems.didset(v5);
  }

  else
  {
    CAFUITileDataSource.listItems.didset(v5);
  }

  free(v2);
}

void CAFUITileDataSource.collectionView.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v1)
  {
    v2 = one-time initialization token for cellsByIdentifiers;
    v25 = v1;
    if (v2 != -1)
    {
LABEL_22:
      swift_once();
    }

    v3 = static CAFUICollectionViewCells.cellsByIdentifiers;
    v4 = static CAFUICollectionViewCells.cellsByIdentifiers + 64;
    v5 = 1 << *(static CAFUICollectionViewCells.cellsByIdentifiers + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(static CAFUICollectionViewCells.cellsByIdentifiers + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_11:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = (*(v3 + 48) + 16 * (v11 | (v10 << 6)));
        v13 = *v12;
        v14 = v12[1];
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v16 = MEMORY[0x245D0D180](v13, v14);
        [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v16];

        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }

    type metadata accessor for CAFUICollectionHeaderView();
    v17 = swift_getObjCClassFromMetadata();
    v18 = *MEMORY[0x277D767D8];
    v19 = NSStringFromClass(v17);
    if (!v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = MEMORY[0x245D0D180](v20);
    }

    [v25 registerClass:v17 forSupplementaryViewOfKind:v18 withReuseIdentifier:v19];

    type metadata accessor for CAFUICollectionFooterView();
    v21 = swift_getObjCClassFromMetadata();
    v22 = *MEMORY[0x277D767D0];
    v23 = NSStringFromClass(v21);
    if (!v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = MEMORY[0x245D0D180](v24);
    }

    [v25 registerClass:v21 forSupplementaryViewOfKind:v22 withReuseIdentifier:v23];

    [v25 setDataSource_];
  }
}

char **CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(char *a1, unint64_t a2, int64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v83 = *a4;
  v84 = a4[1];
  v6 = a4[2];
  v85 = a4[3];
  v86 = a4[4];
  v87 = a4[5];
  v88 = a4[6];
  *(v4 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView) = 0;
  v7 = a3[2];
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v10 = v6;
    *&v98 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v11 = v98;
    v12 = a3 + 9;
    do
    {
      v13 = *v12;
      *&v98 = v11;
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);

      if (v14 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1);
        v11 = v98;
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 8 * v14 + 32) = v13;
      v12 += 6;
      --v7;
    }

    while (v7);
    v16 = a2;
    v8 = MEMORY[0x277D84F90];
    v6 = v10;
  }

  else
  {
    v16 = a2;
    v11 = MEMORY[0x277D84F90];
  }

  v81 = v6;
  v90 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_s15FlattenSequenceVySaySayAEGGGTt0g5(v11);
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentCategories) = a1;
  v17 = (v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  *v17 = v83;
  v17[1] = v84;
  v17[2] = v6;
  v17[3] = v85;
  v17[4] = v86;
  v17[5] = v87;
  v17[6] = v88;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems) = v16;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections) = a3;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) = v8;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings) = v8;
  v18 = objc_allocWithZone(type metadata accessor for CAFUIProminentAncestorObserver());
  v19 = v6;

  outlined copy of CAFUISettingsCache?(v83);
  v20 = &off_278D49000;
  v21 = [v18 init];
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentAncestorObserver) = v21;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_viewSettingSet) = v90;
  if (!v83)
  {

    v19 = MEMORY[0x277D84F90];
LABEL_29:
    v34 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  if (v6 >> 62)
  {
    goto LABEL_27;
  }

  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = a1;
  if (!v22)
  {
LABEL_28:

    outlined consume of CAFUISettingsCache?(v83);
    goto LABEL_29;
  }

  while (1)
  {
    v80 = v5;
    *&v98 = MEMORY[0x277D84F90];
    v24 = v19;
    v19 &= 0xC000000000000001;
    v5 = (v24 + 32);
    v25 = (v23 + 32);

    v26 = 0;
    v20 = &selRef_systemImageNamed_withConfiguration_;
LABEL_13:
    if (v19)
    {
      v27 = MEMORY[0x245D0D9A0](v26, v81);
    }

    else
    {
      if (v26 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v27 = v5[v26];
    }

    v28 = v27;
    if (!__OFADD__(v26++, 1))
    {
      break;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v22 = __CocoaSet.count.getter();
    v23 = a1;
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  v30 = [v27 category];
  v31 = *(v23 + 2);
  v32 = v25;
  do
  {
    if (!v31)
    {

      if (v26 != v22)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

    v33 = *v32++;
    --v31;
  }

  while (v33 != v30);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v23 = a1;
  if (v26 != v22)
  {
    goto LABEL_13;
  }

LABEL_23:

  outlined consume of CAFUISettingsCache?(v83);
  v19 = v98;
  v5 = v80;
  v34 = MEMORY[0x277D84F90];
  v20 = &off_278D49000;
LABEL_30:
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentSettings) = v19;
  v97.receiver = v5;
  v97.super_class = type metadata accessor for CAFUITileDataSource();
  v35 = objc_msgSendSuper2(&v97, v20[476]);
  v36 = *(v35 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentSettings);
  v96 = v34;
  v37 = v36 & 0xFFFFFFFFFFFFFF8;
  if (v36 >> 62)
  {
    goto LABEL_127;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v92 = v35;

    if (v38)
    {
      v39 = 0;
      v89 = MEMORY[0x277D84F90];
      while (2)
      {
        v35 = v39;
LABEL_37:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x245D0D9A0](v35, v36);
        }

        else
        {
          if (v35 >= *(v37 + 16))
          {
            goto LABEL_120;
          }

          v40 = *(v36 + 8 * v35 + 32);
        }

        v41 = v40;
        v39 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
          goto LABEL_119;
        }

        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v43 = v42;
          swift_beginAccess();
          v44 = objc_getAssociatedObject(v43, &static CAFUIListContentAssociatedObjects.FirstChild);
          swift_endAccess();
          if (v44)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v94 = 0u;
            v95 = 0u;
          }

          v98 = v94;
          v99 = v95;
          if (*(&v95 + 1))
          {
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
            if (swift_dynamicCast())
            {
              v41 = v93;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                MEMORY[0x245D0D2F0]();
                if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v89 = v96;
                if (v39 != v38)
                {
                  continue;
                }

                goto LABEL_57;
              }

              goto LABEL_35;
            }
          }

          else
          {
            outlined destroy of Any?(&v98);
          }
        }

        else
        {
LABEL_35:
        }

        break;
      }

      ++v35;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

      goto LABEL_37;
    }

    v89 = MEMORY[0x277D84F90];
LABEL_57:

    v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_SayAEGTt0g5Tf4g_n(v89);

    v47 = specialized Set.union<A>(_:)(v46, v90);

    specialized Set.union<A>(_:)(v45, v47);
    v49 = v48;
    if ((v48 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting);
      Set.Iterator.init(_cocoa:)();
      v36 = *(&v98 + 1);
      v50 = v98;
      v52 = *(&v99 + 1);
      v51 = v99;
      v53 = v100;
    }

    else
    {
      v54 = -1 << *(v48 + 32);
      v36 = v48 + 56;
      v51 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v53 = v56 & *(v48 + 56);

      v52 = 0;
      v50 = v49;
    }

    v90 = v51;
    v57 = (v51 + 64) >> 6;
    v35 = &selRef__systemImageNamed_withConfiguration_;
    if (v50 < 0)
    {
      goto LABEL_70;
    }

    while (1)
    {
      v58 = v52;
      v59 = v53;
      v60 = v52;
      if (!v53)
      {
        while (1)
        {
          v60 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          if (v60 >= v57)
          {
            goto LABEL_74;
          }

          v59 = *(v36 + 8 * v60);
          ++v58;
          if (v59)
          {
            goto LABEL_68;
          }
        }

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
        goto LABEL_125;
      }

LABEL_68:
      v37 = (v59 - 1) & v59;
      v61 = *(*(v50 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v59)))));
      if (!v61)
      {
        break;
      }

      while (1)
      {
        [v61 registerObserver_];

        v52 = v60;
        v53 = v37;
        if ((v50 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_70:
        v62 = __CocoaSet.Iterator.next()();
        if (v62)
        {
          v96 = v62;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
          swift_dynamicCast();
          v61 = v94;
          v60 = v52;
          v37 = v53;
          if (v94)
          {
            continue;
          }
        }

        goto LABEL_74;
      }
    }

LABEL_74:
    outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();

    *&v94 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      v36 = __CocoaSet.count.getter();
    }

    else
    {
      v36 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = MEMORY[0x277D84F90];
    if (v36)
    {
      v37 = 0;
      v64 = MEMORY[0x277D84F90];
      do
      {
        v65 = v37;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x245D0D9A0](v65, a2);
            v37 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v65 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_122;
            }

            v37 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_121;
            }
          }

          type metadata accessor for CAFUIServiceListItem();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v65;
          if (v37 == v36)
          {
            goto LABEL_93;
          }
        }

        MEMORY[0x245D0D2F0]();
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v64 = v94;
      }

      while (v37 != v36);
    }

    else
    {
      v64 = MEMORY[0x277D84F90];
    }

LABEL_93:

    *&v94 = v63;
    if (v64 >> 62)
    {
      v66 = __CocoaSet.count.getter();
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = MEMORY[0x277D84F90];
    if (v66)
    {
      v36 = 0;
      v37 = v64 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x245D0D9A0](v36, v64);
          v69 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v36 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_124;
          }

          v68 = *(v64 + 8 * v36 + 32);

          v69 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_123;
          }
        }

        v70 = *(v68 + 128);

        MEMORY[0x245D0D2F0](v71);
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v90 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v36;
      }

      while (v69 != v66);
      v72 = v94;
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
    }

    if (!(v72 >> 62))
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v73)
      {
        goto LABEL_131;
      }

LABEL_110:
      v74 = 0;
      while (1)
      {
        if ((v72 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x245D0D9A0](v74, v72);
        }

        else
        {
          if (v74 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v75 = *(v72 + 8 * v74 + 32);
        }

        v36 = v75;
        v37 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        [v75 registerObserver_];

        ++v74;
        if (v37 == v73)
        {
          goto LABEL_131;
        }
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      v38 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  v73 = __CocoaSet.count.getter();
  if (v73)
  {
    goto LABEL_110;
  }

LABEL_131:

  *&(*(v92 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentAncestorObserver))[OBJC_IVAR____TtC5CAFUIP33_0E4D121C5C9C3A69D68EDC06FF2740D730CAFUIProminentAncestorObserver_delegate + 8] = &protocol witness table for CAFUITileDataSource;
  swift_unknownObjectWeakAssign();
  CAFUITileDataSource.refreshProminentSection()();
  *&v94 = v67;
  v76 = *(v92 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections);
  v77 = v92;
  specialized Sequence.forEach(_:)(v76, v77, &v94);

  *(v77 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) = v94;

  return v77;
}

id _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_s15FlattenSequenceVySaySayAEGGGTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
  v3 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting);
  result = MEMORY[0x245D0D3B0](0, v2, v3);
  v5 = 0;
  v10 = result;
LABEL_12:
  while (1)
  {
    v7 = *(a1 + 16);
    if (v5 == v7)
    {
      break;
    }

    if (v5 >= v7)
    {
      goto LABEL_19;
    }

    v8 = *(a1 + 32 + 8 * v5);

    ++v5;
    if (v8)
    {
      v6 = 0;
      if (v8 >> 62)
      {
        goto LABEL_9;
      }

      while (1)
      {
        result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6 == result)
        {
          break;
        }

        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x245D0D9A0](v6, v8);
          }

          else
          {
            if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            result = *(v8 + 8 * v6 + 32);
          }

          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            return result;
          }

          specialized Set._Variant.insert(_:)(&v9, result);

          ++v6;
          if (!(v8 >> 62))
          {
            break;
          }

LABEL_9:
          result = __CocoaSet.count.getter();
          if (v6 == result)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return v10;
}

void specialized Set.union<A>(_:)(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      specialized Set._Variant.insert(_:)(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void CAFUITileDataSource.reloadView()()
{
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView];
  if (v1)
  {
    v2 = v1;
    CAFUITileDataSource.refreshProminentSection()();
    aBlock[0] = MEMORY[0x277D84F90];
    v3 = *&v0[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections];
    v4 = v0;
    specialized Sequence.forEach(_:)(v3, v4, aBlock);

    *&v4[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections] = aBlock[0];

    specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000012, 0x800000024242C670, 0x695664616F6C6572, 0xEC00000029287765, 151);
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in CAFUITileDataSource.reloadView();
    *(v7 + 24) = v6;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_73;
    v8 = _Block_copy(aBlock);
    v9 = v2;

    [v5 performWithoutAnimation_];

    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }
}

id closure #1 in CAFUITileDataSource.reloadView()(void *a1)
{
  [a1 reloadData];
  v2 = [a1 collectionViewLayout];
  [v2 invalidateLayout];

  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

uint64_t CAFUITileDataSource.collectionView(_:cellForItemAt:)(char *a1, id a2)
{
  v7 = v2;
  if ((CAFUITileDataSource.validate(indexPath:)() & 1) == 0)
  {
    _StringGuts.grow(_:)(21);

    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v107);

    goto LABEL_133;
  }

  v10 = IndexPath.section.getter();
  v11 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v12 = *(v7 + v11);
  if (v12 >> 62)
  {
    v13 = 0x27ECAE000;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = &lazy protocol witness table cache variable for type ModifiedContent<AudioSettingsCrosshairView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }
  }

  v14 = *(v7 + *(v13 + 4056));
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_11:
    if (!v10)
    {
      goto LABEL_74;
    }

LABEL_12:
    v15 = (v7 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
    if (!*(v7 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache))
    {
      specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000044, 0x800000024242BF20, 0xD000000000000020, 0x800000024242BF70, 213);
      goto LABEL_133;
    }

    v6 = v15[5];
    v5 = v15[6];
    v4 = v15[4];
    v16 = IndexPath.section.getter();
    v3 = *(v13 + 4056);
    v17 = *(v7 + v3);
    if (v17 >> 62)
    {
      v95 = v16;
      v18 = __CocoaSet.count.getter();
      v16 = v95;
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18)
    {
      v19 = v16 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v59 = IndexPath.item.getter();
      v7 = *(v7 + v3);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v97 = v59;

        v60 = MEMORY[0x245D0D9A0](v97, v7);
      }

      else
      {
        if ((v59 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (v59 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v60 = *(v7 + 8 * v59 + 32);
      }

      swift_getObjectType();
      v61 = swift_conformsToProtocol2();
      if (!v61 || !v60)
      {
        goto LABEL_133;
      }

      v62 = v61;
      type metadata accessor for CAFUIProminentSettingCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v64 = v60;
      v65 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v65)
      {
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = MEMORY[0x245D0D180](v66);
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v68 = [a1 dequeueReusableCellWithReuseIdentifier:v65 forIndexPath:isa];

      v69 = swift_dynamicCastClass();
      if (v69)
      {
        a1 = v69;
        v70 = CAFUISettingsCache.hasAnyDisabledAncestor(_:)(v64);

        CAFUIProminentSettingCell.configureCell(for:isDisabledByAncestor:)(v64, v62, v70 & 1);
        return a1;
      }

      goto LABEL_132;
    }

    v20 = IndexPath.section.getter();
    v21 = *(v7 + v11);
    if (v21 >> 62)
    {
      v96 = v20;
      v22 = __CocoaSet.count.getter();
      v20 = v96;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = *(v7 + v3);
    v24 = v23 >> 62;
    if (!v22)
    {
      if (v24)
      {
        v105 = v20;
        v84 = __CocoaSet.count.getter();
        v20 = v105;
      }

      else
      {
        v84 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v85 = v84 != 0;
      v27 = __OFSUB__(v20, v85);
      v28 = v20 - v85;
      if (!v27)
      {
LABEL_27:
        if ((v28 & 0x8000000000000000) == 0)
        {
          v29 = *(v7 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
          if (v28 < *(v29 + 16))
          {
            v109 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections;
            v13 = *(v29 + 48 * v28 + 72);

            v30 = a2;
            v31 = IndexPath.item.getter();
            if ((v13 & 0xC000000000000001) == 0)
            {
              if ((v31 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_105;
              }

              if (v31 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              v32 = *(v13 + 8 * v31 + 32);
LABEL_33:
              v33 = v32;

              swift_getObjectType();
              v108 = swift_conformsToProtocol2();
              if (v108)
              {
                v34 = v33 == 0;
              }

              else
              {
                v34 = 1;
              }

              if (v34)
              {
                goto LABEL_133;
              }

              type metadata accessor for CAFUIAutomakerSettingCell();
              v35 = swift_getObjCClassFromMetadata();
              v13 = v33;
              v36 = NSStringFromClass(v35);
              if (!v36)
              {
                v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v36 = MEMORY[0x245D0D180](v37);
              }

              v38 = IndexPath._bridgeToObjectiveC()().super.isa;
              v4 = [a1 dequeueReusableCellWithReuseIdentifier:v36 forIndexPath:v38];

              v39 = swift_dynamicCastClass();
              if (!v39)
              {

                goto LABEL_133;
              }

              a1 = v39;
              v30 = a2;
              v6 = IndexPath.item.getter();
              v5 = IndexPath.item.getter();
              v31 = IndexPath.section.getter();
              v40 = *(v7 + v11);
              if (!(v40 >> 62))
              {
                v41 = *(v7 + v3);
                if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_42;
                }

                goto LABEL_106;
              }

LABEL_105:
              v98 = v31;
              v99 = __CocoaSet.count.getter();
              v31 = v98;
              v41 = *(v7 + v3);
              if (v99)
              {
LABEL_42:
                if (v41 >> 62)
                {
                  v104 = v31;
                  v42 = __CocoaSet.count.getter();
                  v31 = v104;
                }

                else
                {
                  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v19 = v42 == 0;
                v43 = 1;
                if (!v19)
                {
                  v43 = 2;
                }

                v27 = __OFSUB__(v31, v43);
                v44 = v31 - v43;
                if (!v27)
                {
LABEL_47:
                  if ((v44 & 0x8000000000000000) == 0)
                  {
                    v45 = *(v7 + v109);
                    if (v44 < *(v45 + 16))
                    {
                      v46 = *(v45 + 48 * v44 + 72);
                      if (!(v46 >> 62))
                      {
                        v20 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        v47 = v20 - 1;
                        if (!__OFSUB__(v20, 1))
                        {
                          goto LABEL_51;
                        }

LABEL_116:
                        __break(1u);
                        goto LABEL_117;
                      }

LABEL_114:
                      v20 = __CocoaSet.count.getter();
                      v47 = v20 - 1;
                      if (!__OFSUB__(v20, 1))
                      {
LABEL_51:
                        v48 = 3;
                        if (v6)
                        {
                          v48 = 0;
                          v49 = v5 == v47;
                        }

                        else
                        {
                          v49 = 1;
                        }

                        if (v49)
                        {
                          v50 = 22.0;
                        }

                        else
                        {
                          v50 = 0.0;
                        }

                        if (v5 == v47)
                        {
                          v51 = v48 | 0xC;
                        }

                        else
                        {
                          v51 = v48;
                        }

                        a2 = v4;
                        v52 = [a1 contentView];
                        v53 = [v52 layer];

                        [v53 setMaskedCorners_];
                        v54 = [a1 contentView];
                        [v54 _setCornerRadius_];

                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v55 = CAFUISettingsCache.visibleChildren(of:)(v13);

                          v56 = v108;
                          if (v55 >> 62)
                          {
                            v57 = __CocoaSet.count.getter();
                          }

                          else
                          {
                            v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          v58 = v57 != 0;
                          goto LABEL_90;
                        }

LABEL_89:

                        v58 = 0;
                        v56 = v108;
LABEL_90:
                        v86 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
                        swift_beginAccess();
                        a1[v86] = v58;
                        v87 = v13;
                        CAFUIAutomakerSettingCell.representable.setter(v13, v56);

                        return a1;
                      }

                      goto LABEL_116;
                    }

LABEL_113:
                    __break(1u);
                    goto LABEL_114;
                  }

LABEL_112:
                  __break(1u);
                  goto LABEL_113;
                }

                goto LABEL_110;
              }

LABEL_106:
              if (v41 >> 62)
              {
                v106 = v31;
                v100 = __CocoaSet.count.getter();
                v31 = v106;
              }

              else
              {
                v100 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v101 = v100 != 0;
              v27 = __OFSUB__(v31, v101);
              v44 = v31 - v101;
              if (!v27)
              {
                goto LABEL_47;
              }

LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

LABEL_103:
            v32 = MEMORY[0x245D0D9A0]();
            goto LABEL_33;
          }

          goto LABEL_101;
        }

        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (!v24)
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_120:
    v103 = v20;
    v25 = __CocoaSet.count.getter();
    v20 = v103;
LABEL_24:
    v19 = v25 == 0;
    v26 = 1;
    if (!v19)
    {
      v26 = 2;
    }

    v27 = __OFSUB__(v20, v26);
    v28 = v20 - v26;
    if (!v27)
    {
      goto LABEL_27;
    }

    goto LABEL_88;
  }

LABEL_6:
  if (v10 != 1)
  {
    goto LABEL_12;
  }

LABEL_74:
  v20 = IndexPath.item.getter();
  v30 = *(v7 + v11);
  if ((v30 & 0xC000000000000001) != 0)
  {
LABEL_117:
    v102 = v20;

    v71 = MEMORY[0x245D0D9A0](v102, v30);

    goto LABEL_78;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_119;
  }

  if (v20 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v71 = *(v30 + 8 * v20 + 32);

LABEL_78:
  type metadata accessor for CAFUIServiceListItem();
  v72 = swift_dynamicCastClass();
  if (!v72)
  {
    type metadata accessor for CAFUIListItemCell();
    v88 = swift_getObjCClassFromMetadata();
    v89 = NSStringFromClass(v88);
    if (!v89)
    {
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = MEMORY[0x245D0D180](v90);
    }

    v91 = IndexPath._bridgeToObjectiveC()().super.isa;
    v68 = [a1 dequeueReusableCellWithReuseIdentifier:v89 forIndexPath:v91];

    v92 = swift_dynamicCastClass();
    if (v92)
    {
      a1 = v92;
      v93 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
      swift_beginAccess();
      *&a1[v93] = v71;
      swift_retain_n();

      CAFUIListItemCell.item.didset();

      return a1;
    }

LABEL_132:

    goto LABEL_133;
  }

  v73 = *(v72 + 128);
  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  if (v74)
  {
    v75 = v74;
    type metadata accessor for CAFUIAutomakerSettingCell();
    v76 = swift_getObjCClassFromMetadata();
    v77 = v73;
    v78 = NSStringFromClass(v76);
    if (!v78)
    {
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = MEMORY[0x245D0D180](v79);
    }

    v80 = IndexPath._bridgeToObjectiveC()().super.isa;
    v68 = [a1 dequeueReusableCellWithReuseIdentifier:v78 forIndexPath:v80];

    v81 = swift_dynamicCastClass();
    if (v81)
    {
      a1 = v81;
      v82 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
      swift_beginAccess();
      a1[v82] = 0;
      v83 = v77;
      CAFUIAutomakerSettingCell.representable.setter(v75, &protocol witness table for CAFVolume);

      return a1;
    }

    goto LABEL_132;
  }

LABEL_133:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CAFUITileDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((CAFUITileDataSource.validate(indexPath:)() & 1) == 0)
  {
    _StringGuts.grow(_:)(21);

    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v61);

LABEL_70:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v11 == a3)
      {
        goto LABEL_33;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }
  }

  v14 = MEMORY[0x245D0D180](a2, a3);
  type metadata accessor for CAFUICollectionHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x245D0D180](v17);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:v16 forIndexPath:isa];

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
LABEL_68:

LABEL_69:
    _StringGuts.grow(_:)(49);

    MEMORY[0x245D0D240](a2, a3);
    MEMORY[0x245D0D240](0x6E6B6E7520736920, 0xEC0000002E6E776FLL);
    goto LABEL_70;
  }

  a1 = v20;
  v21 = IndexPath.section.getter();
  v22 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v23 = *(v4 + v22);
  if (v23 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v25 = *(v4 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    v26 = v25 >> 62;
    if (i)
    {
      if (!v26)
      {
        v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_22;
      }

      goto LABEL_60;
    }

    if (v26)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v37 != 0;
    v29 = __OFSUB__(v21, v38);
    for (j = v21 - v38; !v29; j = v21 - v28)
    {
      if ((j & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v31 = *(v4 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
        if (j < *(v31 + 16))
        {
          v32 = v31 + 48 * j;
          v33 = *(v32 + 32);
          v34 = *(v32 + 40);
          v35 = &a1[OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_title];
          *v35 = v33;
          *(v35 + 1) = v34;

          v36 = &OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_titleLabel;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_60:
      v27 = __CocoaSet.count.getter();
LABEL_22:
      v28 = 1;
      if (v27)
      {
        v28 = 2;
      }

      v29 = __OFSUB__(v21, v28);
    }

    __break(1u);
LABEL_33:

LABEL_34:
    v39 = MEMORY[0x245D0D180](a2, a3);
    type metadata accessor for CAFUICollectionFooterView();
    v40 = swift_getObjCClassFromMetadata();
    v41 = NSStringFromClass(v40);
    if (!v41)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = MEMORY[0x245D0D180](v42);
    }

    v43 = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [a1 dequeueReusableSupplementaryViewOfKind:v39 withReuseIdentifier:v41 forIndexPath:v43];

    v44 = swift_dynamicCastClass();
    if (!v44)
    {
      goto LABEL_68;
    }

    a1 = v44;
    v21 = IndexPath.section.getter();
    v45 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v46 = *(v4 + v45);
    if (v46 >> 62)
    {
      v47 = __CocoaSet.count.getter();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = *(v4 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    v49 = v48 >> 62;
    if (v47)
    {
      if (!v49)
      {
        v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_42;
      }

      goto LABEL_65;
    }

    v59 = v49 ? __CocoaSet.count.getter() : *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = v59 != 0;
    v29 = __OFSUB__(v21, v60);
    v52 = v21 - v60;
    if (!v29)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  while ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v50 = __CocoaSet.count.getter();
LABEL_42:
    v51 = 1;
    if (v50)
    {
      v51 = 2;
    }

    v29 = __OFSUB__(v21, v51);
    v52 = v21 - v51;
    if (v29)
    {
      goto LABEL_56;
    }
  }

  v53 = *(v4 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
  if (v52 >= *(v53 + 16))
  {
    goto LABEL_64;
  }

  v54 = v53 + 48 * v52;
  v33 = *(v54 + 48);
  v34 = *(v54 + 56);
  v55 = &a1[OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_title];
  *v55 = v33;
  *(v55 + 1) = v34;

  v36 = &OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_titleLabel;
LABEL_48:
  v56 = *&a1[*v36];
  if (v34)
  {

    v57 = MEMORY[0x245D0D180](v33, v34);
  }

  else
  {
    v57 = 0;
  }

  [v56 setText_];

  return a1;
}

uint64_t CAFUITileDataSource.limitableIndexPaths.getter()
{
  v60 = type metadata accessor for IndexPath();
  v1 = *(v60 - 8);
  v2 = MEMORY[0x28223BE20](v60);
  v59 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v58 = &v49 - v4;
  result = MEMORY[0x277D84FA0];
  v74 = MEMORY[0x277D84FA0];
  v6 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
    v8 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    if (v8 >> 62)
    {
      goto LABEL_75;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v49 = v6;
    v10 = &selRef_systemImageNamed_withConfiguration_;
    if (v9)
    {
      v63 = [v49 numberOfItemsInSection_];
      v11 = *(v0 + v7);
      v61 = v1;
      v57 = v0;
      v56 = v7;
      if (v11 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = v63;
      if (v12)
      {
        v13 = 0;
        v1 = v11 & 0xC000000000000001;
        v62 = (v61 + 8);
        do
        {
          if (v1)
          {
            v14 = MEMORY[0x245D0D9A0](v13, v11);
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v6 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            goto LABEL_73;
          }

          if (v13 >= v7)
          {
            goto LABEL_9;
          }

          if ([v14 v10[208]] && (objc_msgSend(v15, sel_limitableUIElement) & 1) != 0)
          {
            goto LABEL_24;
          }

          swift_beginAccess();
          v0 = objc_getAssociatedObject(v15, &static CAFUIListContentAssociatedObjects.AncestorUILimitable);
          swift_endAccess();
          if (v0)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v73 = 0u;
            v72 = 0u;
          }

          v65 = v72;
          v66 = v73;
          if (!*(&v73 + 1))
          {

            outlined destroy of Any?(&v65);
            goto LABEL_10;
          }

          if (swift_dynamicCast() & 1) != 0 && (v71)
          {
LABEL_24:
            v16 = v59;
            MEMORY[0x245D0BE30](v13, 0);
            v0 = &v74;
            v17 = v58;
            v18 = v16;
            v10 = &selRef_systemImageNamed_withConfiguration_;
            specialized Set._Variant.insert(_:)(v58, v18);

            v19 = v17;
            v7 = v63;
            (*v62)(v19, v60);
          }

          else
          {
LABEL_9:
          }

LABEL_10:
          ++v13;
        }

        while (v6 != v12);
      }

      v1 = v61;
      v0 = v57;
      v7 = v56;
    }

    v20 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v21 = *(v0 + v20);
    if (v21 >> 62)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = *(v0 + v7);
    v24 = v23 >> 62;
    if (v22)
    {
      if (v24)
      {
        v25 = __CocoaSet.count.getter();
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = 1;
      if (v25)
      {
        v26 = 2;
      }
    }

    else
    {
      if (v24)
      {
        v27 = __CocoaSet.count.getter();
      }

      else
      {
        v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v27 != 0;
    }

    v50 = v26;
    v28 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
    v70[1] = 0;
    v70[2] = 0;
    v70[0] = v28;

    v0 = v70;
    specialized EnumeratedSequence.Iterator.next()(&v65);
    v29 = v69;
    if (v69)
    {
      v30 = *(&v65 + 1);
      v56 = v65;
      v31 = v66;
      v57 = (v1 + 8);
      v33 = *(&v66 + 1);
      v32 = v67;
      v34 = v68;
      v35 = &static CAFUIListContentAssociatedObjects.AncestorUILimitable;
      while (1)
      {
        v51 = v34;
        v52 = v32;
        v53 = v33;
        v54 = v31;
        v55 = v30;
        v1 = v29 & 0xFFFFFFFFFFFFFF8;
        v7 = v29 >> 62 ? __CocoaSet.count.getter() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v7)
        {
          break;
        }

LABEL_41:

        outlined consume of (offset: Int, element: CAFUIAutomakerSettingsSection)?(v56, v55, v54, v53, v52, v51, v29);
        v0 = v70;
        specialized EnumeratedSequence.Iterator.next()(&v65);
        v30 = *(&v65 + 1);
        v56 = v65;
        v33 = *(&v66 + 1);
        v31 = v66;
        v32 = v67;
        v34 = v68;
        v29 = v69;
        if (!v69)
        {
          goto LABEL_68;
        }
      }

      v36 = 0;
      v6 = (v29 & 0xC000000000000001);
      v61 = v56 + v50;
      v37 = __OFADD__(v56, v50);
      LODWORD(v63) = v37;
      v62 = (v29 & 0xC000000000000001);
      while (1)
      {
        if (v6)
        {
          v38 = MEMORY[0x245D0D9A0](v36, v29);
        }

        else
        {
          if (v36 >= *(v1 + 16))
          {
            goto LABEL_71;
          }

          v38 = *(v29 + 8 * v36 + 32);
        }

        v39 = v38;
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          v9 = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        if ([v38 v10[208]] && (objc_msgSend(v39, sel_limitableUIElement) & 1) != 0)
        {
          goto LABEL_63;
        }

        swift_beginAccess();
        v0 = objc_getAssociatedObject(v39, v35);
        swift_endAccess();
        if (v0)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v73 = 0u;
          v72 = 0u;
        }

        v65 = v72;
        v66 = v73;
        if (!*(&v73 + 1))
        {

          outlined destroy of Any?(&v65);
          goto LABEL_50;
        }

        if (swift_dynamicCast() & 1) != 0 && (v64)
        {
LABEL_63:
          if (v63)
          {
            goto LABEL_72;
          }

          v41 = v7;
          v42 = v29;
          v43 = v1;
          v44 = v35;
          v45 = v59;
          MEMORY[0x245D0BE30](v36, v61);
          v0 = &v74;
          v46 = v58;
          v47 = v45;
          v35 = v44;
          v1 = v43;
          v29 = v42;
          v7 = v41;
          v6 = v62;
          specialized Set._Variant.insert(_:)(v58, v47);

          v48 = v46;
          v10 = &selRef_systemImageNamed_withConfiguration_;
          (*v57)(v48, v60);
        }

        else
        {
        }

LABEL_50:
        ++v36;
        if (v40 == v7)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_68:

    return v74;
  }

  return result;
}

unint64_t CAFUITileDataSource.infoButtonLimitableIndexPaths.getter()
{
  v43 = type metadata accessor for IndexPath();
  v1 = *(v43 - 8);
  v2 = MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v41 = &v32 - v4;
  v5 = MEMORY[0x277D84FA0];
  if (*(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView))
  {
    v46 = MEMORY[0x277D84FA0];
    v6 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v9 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
      v10 = v9 >> 62;
      if (i)
      {
        if (v10)
        {
          v11 = __CocoaSet.count.getter();
        }

        else
        {
          v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = 1;
        if (v11)
        {
          v12 = 2;
        }
      }

      else
      {
        v13 = v10 ? __CocoaSet.count.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v13 != 0;
      }

      v33 = v12;
      v14 = *(*(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) + 16);

      if (!v14)
      {
        break;
      }

      v0 = 0;
      v34 = v15;
      v35 = v15 + 32;
      v40 = (v1 + 8);
      while (v0 < v14)
      {
        v16 = (v35 + 48 * v0);
        v17 = v16[1];
        v19 = v16[3];
        v18 = v16[4];
        v1 = v16[5];
        v39 = v0;
        if (v1 >> 62)
        {
          v0 = v17;
          v20 = __CocoaSet.count.getter();
          v17 = v0;
        }

        else
        {
          v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v17;

        v37 = v19;

        v36 = v18;
        swift_bridgeObjectRetain_n();
        if (v20)
        {
          v5 = 0;
          v44 = v39 + v33;
          v21 = __OFADD__(v39, v33);
          v45 = v21;
          while (1)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x245D0D9A0](v5, v1);
            }

            else
            {
              if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v22 = *(v1 + 8 * v5 + 32);
            }

            v23 = v22;
            v24 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            swift_getObjectType();
            v25 = swift_conformsToProtocol2();
            if (v25 && v23 && (v26 = v25, ObjectType = swift_getObjectType(), v0 = v23, (v28 = (*(v26 + 32))(ObjectType, v26)) != 0))
            {

              if (v45)
              {
                goto LABEL_42;
              }

              v29 = v42;
              MEMORY[0x245D0BE30](v5, v44);
              v0 = &v46;
              v30 = v41;
              specialized Set._Variant.insert(_:)(v41, v29);

              (*v40)(v30, v43);
            }

            else
            {
            }

            ++v5;
            if (v24 == v20)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          break;
        }

LABEL_15:
        v0 = v39 + 1;

        swift_bridgeObjectRelease_n();
        v14 = *(v34 + 16);
        if (v0 == v14)
        {
          v5 = v46;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_44:
      ;
    }

LABEL_38:
  }

  return v5;
}

void *CAFUITileDataSource.indexPaths(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized CAFUITileDataSource.indexPaths(for:)(a1, v2, ObjectType, a2);
}

uint64_t CAFUITileDataSource.validate(indexPath:)()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  if (v2 >= CAFUITileDataSource.numSections.getter())
  {
    _StringGuts.grow(_:)(37);

    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v12);

    MEMORY[0x245D0D240](0xD000000000000018, 0x800000024242C110);
    specialized static CAFUILogger.info(_:function:file:line:)(0x7461507865646E69, 0xEB00000000203A68, 0xD000000000000014, 0x800000024242C130, 383);

    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
    v5 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v3;
    if (v6 && !IndexPath.section.getter())
    {
      v13 = [v7 numberOfItemsInSection_];
      goto LABEL_31;
    }

    v8 = IndexPath.section.getter();
    v9 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (v10 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_20;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v11 = *(v1 + v4);
    if (v11 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_11:
        if (v8 == 1)
        {
          goto LABEL_35;
        }

        goto LABEL_20;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    if (!v8)
    {
LABEL_35:
      v23 = *(v1 + v9);
      if (v23 >> 62)
      {
        goto LABEL_36;
      }

LABEL_30:
      v13 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_31;
    }

LABEL_20:
    v14 = IndexPath.section.getter();
    v15 = *(v1 + v9);
    if (v15 >> 62)
    {
      v26 = v14;
      v27 = __CocoaSet.count.getter();
      v14 = v26;
      v16 = *(v1 + v4);
      if (v27)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = *(v1 + v4);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_22:
        if (v16 >> 62)
        {
          goto LABEL_45;
        }

        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          v18 = v17 == 0;
          v19 = 1;
          if (!v18)
          {
            v19 = 2;
          }

          v20 = __OFSUB__(v14, v19);
          v21 = v14 - v19;
          if (v20)
          {
            break;
          }

LABEL_27:
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          v22 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
          if (v21 < *(v22 + 16))
          {
            v23 = *(v22 + 48 * v21 + 72);
            if (!(v23 >> 62))
            {
              goto LABEL_30;
            }

LABEL_36:
            v13 = __CocoaSet.count.getter();
LABEL_31:
            if (IndexPath.item.getter() < v13)
            {

              return 1;
            }

            _StringGuts.grow(_:)(34);

            type metadata accessor for IndexPath();
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
            v25 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x245D0D240](v25);

            MEMORY[0x245D0D240](0xD000000000000015, 0x800000024242C150);
            specialized static CAFUILogger.info(_:function:file:line:)(0x7461507865646E69, 0xEB00000000203A68, 0xD000000000000014, 0x800000024242C130, 401);

            return 0;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          v30 = v14;
          v17 = __CocoaSet.count.getter();
          v14 = v30;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    if (v16 >> 62)
    {
      v31 = v14;
      v28 = __CocoaSet.count.getter();
      v14 = v31;
    }

    else
    {
      v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v28 != 0;
    v20 = __OFSUB__(v14, v29);
    v21 = v14 - v29;
    if (v20)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  return 0;
}

id CAFUITileDataSource.setting(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_6;
    }
  }

  else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v7 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 == (v8 != 0))
  {
    return 0;
  }

LABEL_6:
  if ((CAFUITileDataSource.validate(indexPath:)() & 1) == 0)
  {
    return 0;
  }

  v9 = IndexPath.section.getter();
  v10 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
  v11 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v11 >> 62)
  {
    v25 = v9;
    v12 = __CocoaSet.count.getter();
    v9 = v25;
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = IndexPath.section.getter();
    v15 = *(v2 + v5);
    if (v15 >> 62)
    {
      v26 = v14;
      v27 = __CocoaSet.count.getter();
      v14 = v26;
      v16 = *(v2 + v10);
      if (v27)
      {
LABEL_15:
        if (v16 >> 62)
        {
          goto LABEL_50;
        }

        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          v13 = v17 == 0;
          v18 = 1;
          if (!v13)
          {
            v18 = 2;
          }

          v19 = __OFSUB__(v14, v18);
          v20 = v14 - v18;
          if (v19)
          {
            goto LABEL_41;
          }

LABEL_20:
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_44;
          }

          v21 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
          if (v20 >= *(v21 + 16))
          {
            goto LABEL_45;
          }

          v2 = *(v21 + 48 * v20 + 72);

          v14 = IndexPath.item.getter();
          if ((v2 & 0xC000000000000001) != 0)
          {
            goto LABEL_47;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v14 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v2 + 8 * v14 + 32);
            goto LABEL_26;
          }

          __break(1u);
LABEL_50:
          v32 = v14;
          v17 = __CocoaSet.count.getter();
          v14 = v32;
        }
      }
    }

    else
    {
      v16 = *(v2 + v10);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (v16 >> 62)
    {
      v33 = v14;
      v28 = __CocoaSet.count.getter();
      v14 = v33;
    }

    else
    {
      v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v28 != 0;
    v19 = __OFSUB__(v14, v29);
    v20 = v14 - v29;
    if (!v19)
    {
      goto LABEL_20;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = IndexPath.item.getter();
  a1 = *(v2 + v10);
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_42:
    v30 = v14;

    v31 = MEMORY[0x245D0D9A0](v30, a1);

    return v31;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else if (v14 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(a1 + 8 * v14 + 32);
  }

  __break(1u);
LABEL_47:
  v22 = MEMORY[0x245D0D9A0]();
LABEL_26:
  v23 = v22;

  return v23;
}

double CAFUITileDataSource.settingsSection(at:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v8 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    v9 = v8 >> 62;
    if (i)
    {
      break;
    }

    if (v9)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v21 != 0;
    v12 = __OFSUB__(a1, v22);
    v13 = a1 - v22;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  if (v9)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 1;
  if (v10)
  {
    v11 = 2;
  }

  v12 = __OFSUB__(a1, v11);
  v13 = a1 - v11;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v13 & 0x8000000000000000) != 0 || (v14 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections), v13 >= *(v14 + 16)))
  {
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v15 = v14 + 48 * v13;
    v17 = *(v15 + 56);
    v16 = *(v15 + 64);
    v18 = *(v15 + 72);
    *a2 = *(v15 + 32);
    *(a2 + 8) = *(v15 + 40);
    *(a2 + 24) = v17;
    *(a2 + 32) = v16;
    *(a2 + 40) = v18;
    v19 = v16;
  }

  return result;
}

unint64_t CAFUITileDataSource.listItem(at:)()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  v3 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  v5 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_10:
    if (!v2)
    {
      goto LABEL_13;
    }

LABEL_11:
    _StringGuts.grow(_:)(38);

    IndexPath.section.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v6);

    MEMORY[0x245D0D240](0xD00000000000001CLL, 0x800000024242C170);
    v7 = 0x206E6F6974636553;
    v8 = 0xE800000000000000;
    v9 = 431;
LABEL_12:
    specialized static CAFUILogger.info(_:function:file:line:)(v7, v8, 0x6D6574497473696CLL, 0xED0000293A746128, v9);

    return 0;
  }

LABEL_5:
  if (v2 != 1)
  {
    goto LABEL_11;
  }

LABEL_13:
  v11 = IndexPath.item.getter();
  v12 = *(v1 + v3);
  if (!(v12 >> 62))
  {
    if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v11 >= __CocoaSet.count.getter())
  {
LABEL_20:
    _StringGuts.grow(_:)(35);

    IndexPath.item.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v14);

    MEMORY[0x245D0D240](0xD00000000000001CLL, 0x800000024242C170);
    v7 = 0x206D657449;
    v8 = 0xE500000000000000;
    v9 = 436;
    goto LABEL_12;
  }

LABEL_15:
  result = IndexPath.item.getter();
  v13 = *(v1 + v3);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = result;

    v16 = MEMORY[0x245D0D9A0](v15, v13);

    return v16;
  }

  else
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    __break(1u);
  }

  return result;
}

void CAFUITileDataSource.refreshProminentSection()()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  i = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  if (!i)
  {
    return;
  }

  v3 = v0;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v9 = v1[5];
  v8 = v1[6];
  v47 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  v48 = v4;
  v49 = v5;
  v50 = v6;
  v51 = v7;
  v52 = v9;
  v53 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentSettings);
  if (v10 >> 62)
  {
LABEL_48:
    if (!__CocoaSet.count.getter())
    {
      return;
    }

    v18 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    v11 = __CocoaSet.count.getter();
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }

    v46 = MEMORY[0x277D84F90];
  }

  v41 = i;
  v3 = 0;
  i = (v10 & 0xFFFFFFFFFFFFFF8);
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D0D9A0](v3, v10);
    }

    else
    {
      if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v12 = *(v10 + 8 * v3 + 32);
    }

    v13 = v12;
    v14 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v15 = [v12 prominenceInfo];
    if (v15 && (v16 = v15, v17 = [v15 prominenceLevel], v16, v17 == 1))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v3;
  }

  while (v14 != v11);
  v18 = v46;
  v3 = v40;
  i = v41;
LABEL_17:
  v46 = MEMORY[0x277D84FA0];
  outlined copy of CAFUISettingsCache?(i);
  specialized Sequence.forEach(_:)(v18);
  outlined consume of CAFUISettingsCache?(i);
  CAFUIProminentAncestorObserver.observeAncestors(_:)(v46);
  v45 = MEMORY[0x277D84F90];
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = __CocoaSet.count.getter();
    if (!v19)
    {
      goto LABEL_52;
    }

LABEL_20:
    v20 = 0;
    v43 = v18 + 32;
    v44 = v18 & 0xC000000000000001;
    v3 = &selRef_systemImageNamed_withConfiguration_;
    v10 = &selRef__systemImageNamed_withConfiguration_;
    v42 = v18;
    while (1)
    {
      if (v44)
      {
        v21 = MEMORY[0x245D0D9A0](v20, v18);
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_47;
        }

        v21 = *(v43 + 8 * v20);
      }

      v22 = v21;
      if (__OFADD__(v20++, 1))
      {
        goto LABEL_46;
      }

      if ([v21 hasHidden] && (objc_msgSend(v22, sel_hidden) & 1) != 0)
      {
      }

      else
      {
        v24 = [v22 identifier];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (*(v9 + 16))
        {
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v27);
          v30 = v29;

          if (v30)
          {
            for (i = *(*(v9 + 56) + 8 * v28); ![i hasHidden] || (objc_msgSend(i, sel_hidden) & 1) == 0; i = v38)
            {
              v31 = [i identifier];
              v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v33;

              if (!*(v9 + 16))
              {

LABEL_40:

                v18 = v42;
                goto LABEL_22;
              }

              v35 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v34);
              v37 = v36;

              if ((v37 & 1) == 0)
              {
                goto LABEL_40;
              }

              v38 = *(*(v9 + 56) + 8 * v35);
            }

            v18 = v42;
            goto LABEL_23;
          }
        }

        else
        {
        }

LABEL_22:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        i = *(v45 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

LABEL_23:
      if (v20 == v19)
      {
        v3 = v40;
        goto LABEL_52;
      }
    }
  }

  v19 = *(v18 + 16);
  if (v19)
  {
    goto LABEL_20;
  }

LABEL_52:

  v45 = specialized Array._copyToContiguousArray()(v39);
  specialized MutableCollection<>.sort(by:)(&v45);

  *(v3 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings) = v45;
}

void specialized Set.formUnion<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t closure #4 in CAFUITileDataSource.refreshProminentSection()(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 prominenceInfo];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v3 prominenceInfo];
  if (!v6)
  {

LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = v6;
  v8 = [v5 sortOrder];
  if (v8 != [v7 sortOrder])
  {
    v27 = [v5 sortOrder];
    v28 = [v7 sortOrder];

    v26 = v27 < v28;
    return v26 & 1;
  }

  v9 = [v5 userVisibleLabel];
  if (!v9)
  {
    v9 = [v2 userVisibleLabel];
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v7 userVisibleLabel];
  if (!v14)
  {
    v14 = [v3 userVisibleLabel];
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v11 == v15 && v13 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v18 = [v2 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v3 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == v19 && v25 == v21)
    {

      v26 = 1;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v26 = v29 ^ 1;
    }

    return v26 & 1;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v31 & 1;
}

uint64_t closure #1 in CAFUITileDataSource.refreshDataSourceProperties()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = a2;
  v3 = *a1;
  v29 = *(a1 + 8);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v27 = a3;
  v28 = v4;
  v6 = *(a1 + 40);
  v35 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_21:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
LABEL_3:
      v25 = v5;
      v26 = v3;
      v5 = 0;
      v30 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
      v32 = v6 & 0xFFFFFFFFFFFFFF8;
      v33 = v6 & 0xC000000000000001;
      do
      {
        if (v33)
        {
          v8 = MEMORY[0x245D0D9A0](v5, v6);
        }

        else
        {
          if (v5 >= *(v32 + 16))
          {
            goto LABEL_20;
          }

          v8 = *(v6 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v11 = [v8 hasHidden];
        if (v11 && (v11 = [v9 hidden], (v11 & 1) != 0))
        {
        }

        else
        {
          v12 = v7;
          v3 = &v25;
          v13 = *(v31 + v30);
          v34 = v9;
          MEMORY[0x28223BE20](v11);
          v24[2] = &v34;

          v14 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo19CAFAutomakerSettingCG_TG5TA_0, v24, v13);

          if (v14)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          v7 = v12;
        }

        ++v5;
      }

      while (v10 != v7);
      v15 = v35;
      v5 = v25;
      v3 = v26;
      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v15 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if ((v15 & 0x4000000000000000) != 0)
  {
LABEL_30:
    if (!__CocoaSet.count.getter())
    {
    }

    goto LABEL_25;
  }

  if (!*(v15 + 16))
  {
  }

LABEL_25:
  v16 = v27;
  v17 = *v27;
  v18 = v28;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
    v17 = result;
    *v27 = result;
  }

  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
    v17 = result;
    *v27 = result;
  }

  *(v17 + 16) = v21 + 1;
  v22 = v17 + 48 * v21;
  *(v22 + 32) = v3;
  *(v22 + 40) = v29;
  v23 = v28;
  *(v22 + 56) = v5;
  *(v22 + 64) = v23;
  *(v22 + 72) = v15;
  return result;
}

id CAFUITileDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CAFUITileDataSource.updated(setting:)(id a1)
{
  i = v1;
  v4 = type metadata accessor for IndexPath();
  v65 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (!v6)
  {

    specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000020, 0x800000024242C4F0, 0xD000000000000011, 0x800000024242C520, 507);
    return;
  }

  v7 = v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache;
  v8 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  if (!v8)
  {
    v65 = v6;
    specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000033, 0x800000024242C540, 0xD000000000000011, 0x800000024242C520, 512);
    v23 = v65;

    return;
  }

  v9 = *(v7 + 40);
  v60 = *(v7 + 24);
  v61 = v9;
  v58 = *(v7 + 8);
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  if (!v62 || !a1)
  {
    goto LABEL_40;
  }

  v64 = v6;
  v10 = a1;
  v11 = specialized CAFUITileDataSource.indexPaths(for:)(v10, i);
  v12 = v11;
  v70 = v11;
  v13 = v11[2];
  v59 = i;
  if (!v13)
  {
    aBlock = v8;
    v67 = v58;
    v68 = v60;
    v69 = v61;
    v16 = CAFUISettingsCache.ancestors(of:)(v10);
    a1 = v63;
    if (v16 >> 62)
    {
      goto LABEL_36;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_30:

    v14 = v12[2];
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_31:
    aBlock = 0;
    *&v67 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    aBlock = 0xD000000000000027;
    *&v67 = 0x800000024242C600;
    v41 = [v10 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    MEMORY[0x245D0D240](v42, v44);

    specialized static CAFUILogger.default(_:function:file:line:)(aBlock, v67, 0xD000000000000011, 0x800000024242C520, 531);

LABEL_33:

    return;
  }

  a1 = v63;
  v14 = v11[2];
  if (!v14)
  {
    goto LABEL_31;
  }

LABEL_7:
  *&v61 = v10;
  v15 = v12 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  *&v60 = v62 + 80;
  v10 = v65 + 1;

  for (i = 0; i != v14; ++i)
  {
    if (i >= v12[2])
    {
      __break(1u);
      goto LABEL_35;
    }

    (v65[2])(a1, &v15[v65[9] * i], v4);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v64 cellForItemAtIndexPath_];

    if (!v18)
    {
      goto LABEL_9;
    }

    type metadata accessor for CAFUIAutomakerSettingCell();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {

LABEL_9:
      v16 = (*v10)(a1, v4);
      continue;
    }

    v20 = v19;
    v21 = v4;
    ObjectType = swift_getObjectType();
    if ((*(v62 + 80))(v20, ObjectType))
    {

      aBlock = 0;
      *&v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      aBlock = 0xD000000000000028;
      *&v67 = 0x800000024242C5D0;
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v45 = v63;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x245D0D240](v46);

      MEMORY[0x245D0D240](0x20726F6620, 0xE500000000000000);
      v47 = v61;
      v48 = [v61 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      MEMORY[0x245D0D240](v49, v51);

      specialized static CAFUILogger.default(_:function:file:line:)(aBlock, v67, 0xD000000000000011, 0x800000024242C520, 538);

      (*v10)(v45, v21);
      goto LABEL_33;
    }

    a1 = v63;
    (*v10)();
  }

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  v10 = v59;
  v25[2] = &v70;
  v25[3] = v10;
  v26 = v61;
  v27 = v64;
  v25[4] = v61;
  v25[5] = v27;
  i = swift_allocObject();
  *(i + 16) = partial apply for closure #1 in CAFUITileDataSource.updated(setting:);
  *(i + 24) = v25;
  *(&v68 + 1) = thunk for @callee_guaranteed () -> ()partial apply;
  *&v69 = i;
  aBlock = MEMORY[0x277D85DD0];
  *&v67 = 1107296256;
  *(&v67 + 1) = thunk for @escaping @callee_guaranteed () -> ();
  *&v68 = &block_descriptor_63_0;
  v4 = _Block_copy(&aBlock);
  v28 = v27;
  a1 = v26;
  v29 = v10;

  [v24 performWithoutAnimation_];

  _Block_release(v4);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if ((v28 & 1) == 0)
  {

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v6 = v16;
  v52 = __CocoaSet.count.getter();
  v16 = v6;
  if (!v52)
  {
    goto LABEL_30;
  }

LABEL_26:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x245D0D9A0](0);
    goto LABEL_29;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v16 + 32);
LABEL_29:
    v31 = v30;

    aBlock = 0;
    *&v67 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    aBlock = 34;
    *&v67 = 0xE100000000000000;
    v32 = [v31 userVisibleLabel];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    MEMORY[0x245D0D240](v33, v35);

    MEMORY[0x245D0D240](0xD000000000000018, 0x800000024242C630);
    v36 = [v10 userVisibleLabel];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    MEMORY[0x245D0D240](v37, v39);

    MEMORY[0x245D0D240](34, 0xE100000000000000);
    specialized static CAFUILogger.default(_:function:file:line:)(aBlock, v67, 0xD000000000000011, 0x800000024242C520, 525);

    v40 = v31;
    v12 = specialized CAFUITileDataSource.indexPaths(for:)(v40, i);

    v70 = v12;
    goto LABEL_30;
  }

  __break(1u);
LABEL_40:
  aBlock = 0;
  *&v67 = 0xE000000000000000;
  v53 = v6;
  _StringGuts.grow(_:)(80);
  MEMORY[0x245D0D240](0xD00000000000004ELL, 0x800000024242C580);
  v54 = [a1 identifier];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  MEMORY[0x245D0D240](v55, v57);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}