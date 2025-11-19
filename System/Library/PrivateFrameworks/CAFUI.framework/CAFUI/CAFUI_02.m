uint64_t outlined init with take of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *specialized CAFUIPickerViewController.init(pickerRepresentable:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGSo9NSRunLoopCGMd);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = v39 - v10;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_cancellables] = v11;
  v12 = &a2[OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable];
  *v12 = a1;
  *(v12 + 1) = &protocol witness table for CAFSingleSelectSetting;
  v13 = objc_allocWithZone(type metadata accessor for CAFUIHeaderFooterTableView());
  swift_unknownObjectRetain();
  v14 = [v13 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&a2[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView] = v14;
  v15 = type metadata accessor for CAFUITableViewController();
  v54.receiver = a2;
  v54.super_class = v15;
  v16 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
  v17 = *&v16[OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable + 8];
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 56);
  v20 = v16;
  swift_unknownObjectRetain();
  v21 = v19(ObjectType, v17);
  v23 = v22;
  swift_unknownObjectRelease();
  if (v23)
  {
    v24 = MEMORY[0x245D0D180](v21, v23);
  }

  else
  {
    v24 = 0;
  }

  [v20 setTitle_];

  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectSetting);
  v44 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFSingleSelectSetting and conformance CAFSingleSelectSetting, &lazy cache variable for type metadata for CAFSingleSelectSetting);
  v25 = CAFObserved<>.observable.getter();
  v26 = dispatch thunk of CAFSingleSelectSettingObservable.$selectSettingEntryList.getter();

  v52 = v26;
  v43 = objc_opt_self();
  v27 = [v43 mainRunLoop];
  v39[3] = a1;
  v28 = v27;
  v53 = v27;
  v41 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v29 = *(v41 - 8);
  v40 = *(v29 + 56);
  v42 = v29 + 56;
  v40(v8, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGMd);
  v39[2] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
  v39[4] = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSelectSettingEntryList, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGMd);
  v39[1] = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v30 = v46;
  Publisher.receive<A>(on:options:)();
  outlined destroy of RequestTemporaryContentModel?(v8, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CAFSelectSettingEntryList, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGSo9NSRunLoopCGMd);
  v31 = v20;
  v32 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v30, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v33 = CAFObserved<>.observable.getter();
  v34 = dispatch thunk of CAFSingleSelectSettingObservable.$selectedEntryIndex.getter();

  v52 = v34;
  v35 = [v43 mainRunLoop];
  v53 = v35;
  v40(v8, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<UInt8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
  v36 = v49;
  Publisher.receive<A>(on:options:)();
  outlined destroy of RequestTemporaryContentModel?(v8, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UInt8, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v37 = v51;
  Publisher<>.sink(receiveValue:)();

  (*(v50 + 8))(v36, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v31;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGSo9NSRunLoopCGMd);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = v55 - v12;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v13 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_cancellables] = v13;
  v14 = &a2[OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable];
  *v14 = a1;
  *(v14 + 1) = &protocol witness table for CAFMultipleSelectSetting;
  v15 = objc_allocWithZone(type metadata accessor for CAFUIHeaderFooterTableView());
  swift_unknownObjectRetain();
  v16 = [v15 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&a2[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView] = v16;
  v17 = type metadata accessor for CAFUITableViewController();
  v73.receiver = a2;
  v73.super_class = v17;
  v18 = objc_msgSendSuper2(&v73, sel_initWithNibName_bundle_, 0, 0);
  v19 = *&v18[OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable + 8];
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 56);
  v22 = v18;
  swift_unknownObjectRetain();
  v23 = v21(ObjectType, v19);
  v25 = v24;
  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = MEMORY[0x245D0D180](v23, v25);
  }

  else
  {
    v26 = 0;
  }

  [v22 setTitle_];

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  v70 = v22;
  if (v27)
  {
    v63 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectSetting);
    v62 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFSingleSelectSetting and conformance CAFSingleSelectSetting, &lazy cache variable for type metadata for CAFSingleSelectSetting);
    v28 = CAFObserved<>.observable.getter();
    v29 = dispatch thunk of CAFSingleSelectSettingObservable.$selectSettingEntryList.getter();

    v71 = v29;
    v61 = objc_opt_self();
    v30 = [v61 mainRunLoop];
    v72 = v30;
    v59 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v31 = *(v59 - 8);
    v58 = *(v31 + 56);
    v60 = v31 + 56;
    v58(v10, 1, 1, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGMd);
    v56 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v57 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSelectSettingEntryList, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGMd);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v32 = v67;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    v33 = v70;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CAFSelectSettingEntryList, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGSo9NSRunLoopCGMd);
    v34 = v33;
    v35 = v69;
    Publisher<>.sink(receiveValue:)();

    (*(v68 + 8))(v32, v35);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v36 = CAFObserved<>.observable.getter();
    v37 = dispatch thunk of CAFSingleSelectSettingObservable.$selectedEntryIndex.getter();

    v71 = v37;
    v38 = [v61 mainRunLoop];
    v72 = v38;
    v58(v10, 1, 1, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<UInt8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    v39 = v64;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UInt8, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
    v40 = v66;
    Publisher<>.sink(receiveValue:)();

    (*(v65 + 8))(v39, v40);
  }

  else
  {
    v66 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultipleSelectSetting);
    v65 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting, &lazy cache variable for type metadata for CAFMultipleSelectSetting);
    v41 = CAFObserved<>.observable.getter();
    v42 = dispatch thunk of CAFMultipleSelectSettingObservable.$selectSettingEntryList.getter();

    v71 = v42;
    v64 = objc_opt_self();
    v43 = [v64 mainRunLoop];
    v72 = v43;
    v59 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v44 = *(v59 - 8);
    v58 = *(v44 + 56);
    v60 = v44 + 56;
    v58(v10, 1, 1, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGMd);
    v56 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v57 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSelectSettingEntryList, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGMd);
    v55[1] = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v45 = v67;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    v46 = v70;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CAFSelectSettingEntryList, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo25CAFSelectSettingEntryListCs5NeverOGSo9NSRunLoopCGMd);
    v47 = v46;
    v48 = v69;
    Publisher<>.sink(receiveValue:)();

    (*(v68 + 8))(v45, v48);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v49 = CAFObserved<>.observable.getter();
    v50 = dispatch thunk of CAFMultipleSelectSettingObservable.$selectedEntryIndices.getter();

    v71 = v50;
    v51 = [v64 mainRunLoop];
    v72 = v51;
    v58(v10, 1, 1, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[UInt8], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    v52 = v61;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[UInt8], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
    v53 = v63;
    Publisher<>.sink(receiveValue:)();

    (*(v62 + 8))(v52, v53);
  }

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v70;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

char *sub_24238A4C8@<X0>(char **a1@<X8>)
{
  result = CAFMultipleSelectImageSetting.selectedIndices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24238A50C@<X0>(uint64_t *a1@<X8>)
{
  result = CAFDeepLinkSetting.requestContentManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24238A558@<X0>(uint64_t *a1@<X8>)
{
  result = CAFStaticSetting.firstChild.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24238A5A4@<X0>(uint64_t *a1@<X8>)
{
  result = CAFSingleSelectSetting.selectedIndices.getter();
  *a1 = result;
  return result;
}

char *sub_24238A5D4@<X0>(char **a1@<X8>)
{
  result = CAFMultipleSelectSetting.selectedIndices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24238A64C()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id CAFAudioSettings.equalizersResettable.getter()
{
  result = [v0 equalizers];
  if (result)
  {
    v2 = result;
    type metadata accessor for CAFEqualizer();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D0D9A0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 value];
        v10 = [v7 valueRange];
        v11 = CAFInt8Range.centerValue.getter();

        if (v9 == v11)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v5;
        if (v8 == i)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_19:

    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *(v12 + 16);
    }

    return (v13 != 0);
  }

  return result;
}

Swift::Void __swiftcall CAFAudioSettings.resetEqualizers()()
{
  v1 = [v0 equalizers];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  type metadata accessor for CAFEqualizer();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
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
          v6 = MEMORY[0x245D0D9A0](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 value];
        v9 = [v7 valueRange];
        v10 = CAFInt8Range.centerValue.getter();

        if (v8 != v10)
        {
          v11 = [v7 valueRange];
          v12 = CAFInt8Range.centerValue.getter();

          [v7 setValue_];
        }
      }
    }
  }
}

unint64_t type metadata accessor for CAFEqualizer()
{
  result = lazy cache variable for type metadata for CAFEqualizer;
  if (!lazy cache variable for type metadata for CAFEqualizer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFEqualizer);
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v32 = i;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D0D9A0](v3, a1);
      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
        goto LABEL_30;
      }

LABEL_9:
      v35 = v7;
      v8 = v5;
      v9 = *(a2 + 40);

      v10 = [v8 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (*(v9 + 16))
      {
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
        v16 = v15;

        if (v16)
        {
          for (j = *(*(v9 + 56) + 8 * v14); ![j hasLimitableUIElement] || !objc_msgSend(j, sel_limitableUIElement); j = v25)
          {
            v18 = [j identifier];
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21 = v20;

            if (!*(v9 + 16))
            {

LABEL_22:

              goto LABEL_24;
            }

            v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
            v24 = v23;

            if ((v24 & 1) == 0)
            {

              goto LABEL_22;
            }

            v25 = *(*(v9 + 56) + 8 * v22);
          }

          goto LABEL_24;
        }
      }

      else
      {
      }

LABEL_24:
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      swift_beginAccess();
      v27 = v8;
      objc_setAssociatedObject(v8, &static CAFUIListContentAssociatedObjects.AncestorUILimitable, isa, 0);
      swift_endAccess();

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v34 = v28;
        v27 = v8;

        v29 = CAFUISettingsCache.firstChild(for:)(v27);

        if (v29)
        {
          swift_beginAccess();
          v30 = v29;
          objc_setAssociatedObject(v34, &static CAFUIListContentAssociatedObjects.FirstChild, v30, 0);
          swift_endAccess();

          v27 = v30;
        }

        v4 = v32;
        v3 = v35;
      }

      else
      {
        v3 = v35;
        v4 = v32;
      }

      if (v3 == v4)
      {
        return;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v5 = *(a1 + 32 + 8 * v3);
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSaySo19CAFAutomakerSettingCGG_AHs5NeverOTg5011_sSSSaySo19de30CGACIgggo_SS3key_AC5valuetACs5F188OIegnrzr_TR087_s5CAFUI18CAFUISettingsCacheV8sections33_C136C7576C945FF13298128793D0FFCELL3for13parentb46SayAA29CAFUIAutomakerSettingsSectionVGSaySo012A25M0CG_ALSgtFAMSS_AMtXEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v31;
  v4 = a1 + 64;
  v5 = _HashTable.startBucket.getter();
  v6 = 0;
  v7 = *(a1 + 36);
  v27 = v1;
  v28 = v7;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_30;
    }

    if (v7 != *(a1 + 36))
    {
      goto LABEL_31;
    }

    v10 = *(*(a1 + 56) + 8 * v5);
    if (!(v10 >> 62))
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;

LABEL_11:

      goto LABEL_12;
    }

    v22 = __CocoaSet.count.getter();
    if (!v22)
    {
      v11 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    v26 = v22;
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo19CAFAutomakerSettingC_Tt1g5(v22, 0);
    swift_bridgeObjectRetain_n();

    specialized Array._copyContents(initializing:)(v11 + 32, v26, v10);
    v25 = v23;

    if (v25 != v26)
    {
      goto LABEL_35;
    }

LABEL_12:
    v30 = v11;
    specialized MutableCollection<>.sort(by:)(&v30);
    if (v29)
    {
      goto LABEL_36;
    }

    v12 = v30;
    v31 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v2 = v31;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v12;
    v8 = 1 << *(a1 + 32);
    if (v5 >= v8)
    {
      goto LABEL_32;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_33;
    }

    v7 = v28;
    if (v28 != *(a1 + 36))
    {
      goto LABEL_34;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          outlined consume of [String : [CAFAutomakerSetting]].Index._Variant(v5, v28, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      outlined consume of [String : [CAFAutomakerSetting]].Index._Variant(v5, v28, 0);
    }

LABEL_4:
    ++v6;
    v5 = v8;
    if (v6 == v27)
    {
      return v2;
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
LABEL_35:
  __break(1u);
LABEL_36:

  __break(1u);
  return result;
}

uint64_t CAFAutomakerSetting.isLimitableUI.getter()
{
  if ([v0 hasLimitableUIElement] && (objc_msgSend(v0, sel_limitableUIElement) & 1) != 0)
  {
    return 1;
  }

  return CAFAutomakerSetting.isLimitableUIByAncestor.getter();
}

uint64_t protocol witness for CAFListContentRepresentable.isLimitableUI.getter in conformance CAFSingleSelectImageSetting()
{
  if ([v0 hasLimitableUIElement] && objc_msgSend(v0, sel_limitableUIElement))
  {
    return 1;
  }

  return CAFAutomakerSetting.isLimitableUIByAncestor.getter();
}

uint64_t CAFUISettingsCache.hasEnabledRootSettings(in:limitUIEnabled:)(uint64_t a1, int a2)
{
  v4 = *(v2 + 8);
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = &selRef_systemImageNamed_withConfiguration_;
    v10 = &selRef_systemImageNamed_withConfiguration_;
    while (1)
    {
      if (v7)
      {
        v11 = MEMORY[0x245D0D9A0](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_32;
        }

        v11 = *(v4 + 8 * v6 + 32);
      }

      v12 = v11;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v26 = v6 + 1;
      v25 = (a1 & 0x100) == 0 && [v11 category] != a1;
      if (![v12 v9[208]] || (v13 = a2, (objc_msgSend(v12, sel_limitableUIElement) & 1) == 0))
      {
        swift_beginAccess();
        v14 = objc_getAssociatedObject(v12, &static CAFUIListContentAssociatedObjects.AncestorUILimitable);
        swift_endAccess();
        if (v14)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30[0] = v28;
        v30[1] = v29;
        if (!*(&v29 + 1))
        {
          outlined destroy of Any?(v30);
LABEL_22:
          v13 = 0;
          goto LABEL_23;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_22;
        }

        v13 = (v27 & a2);
      }

LABEL_23:
      if ([v12 v10[213]] && (objc_msgSend(v12, sel_hidden) & 1) != 0)
      {
      }

      else if ([v12 hasDisabled])
      {
        v15 = v9;
        v16 = a1;
        v17 = v4;
        v18 = i;
        v19 = v8;
        v20 = v7;
        v21 = [v12 disabled];

        v22 = v21 | v13 | v25;
        v7 = v20;
        v8 = v19;
        i = v18;
        v4 = v17;
        a1 = v16;
        v9 = v15;
        v10 = &selRef_systemImageNamed_withConfiguration_;
        if ((v22 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {

        if (((v13 | v25) & 1) == 0)
        {
          return 1;
        }
      }

      ++v6;
      if (v26 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return 0;
}

id CAFAutomakerSetting.isHidden.getter(SEL *a1, SEL *a2)
{
  result = [v2 *a1];
  if (result)
  {
    return [v2 *a2];
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x245D0D9A0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void __swiftcall CAFUISettingsCache.init(settings:sections:)(CAFUI::CAFUISettingsCache *__return_ptr retstr, Swift::OpaquePointer settings, Swift::OpaquePointer_optional sections)
{
  rawValue = settings._rawValue;
  v104 = retstr;
  v4 = MEMORY[0x277D84F90];
  if (sections.value._rawValue)
  {
    v5 = sections.value._rawValue;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *&v123 = settings;
  v126 = v5;
  v106 = settings._rawValue >> 62;
  if (settings._rawValue >> 62)
  {
    v6 = __CocoaSet.count.getter();
    v119 = rawValue;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *((settings._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    v119 = settings._rawValue;
    if (v6)
    {
LABEL_6:
      v122 = v4;
      v7 = v6 & ~(v6 >> 63);

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v6 < 0)
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v8 = 0;
      v9 = v122;
      v10 = rawValue & 0xC000000000000001;
      do
      {
        if (v10)
        {
          v11 = MEMORY[0x245D0D9A0](v8, v119);
        }

        else
        {
          v11 = v119[v8 + 4];
        }

        v12 = v11;
        v13 = [v11 identifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v122 = v9;
        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v9 = v122;
        }

        ++v8;
        v9[2] = v18 + 1;
        v19 = &v9[3 * v18];
        v19[4] = v14;
        v19[5] = v16;
        v19[6] = v12;
      }

      while (v6 != v8);
      rawValue = v119;
      v4 = MEMORY[0x277D84F90];
      goto LABEL_18;
    }
  }

  if (v4[2])
  {
    v9 = v4;
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo19CAFAutomakerSettingCGMd);
    v20 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_19;
  }

  v20 = MEMORY[0x277D84F98];
  v9 = v4;
LABEL_19:
  v122 = v20;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v9, 1, &v122);

  v21 = v122;
  v122 = v4;
  v118 = rawValue & 0xFFFFFFFFFFFFFF8;
  if (v106)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = 0;
  v117 = rawValue & 0xC000000000000001;
  v7 = MEMORY[0x277D84F90];
  v116 = v22;
  if (v22)
  {
    v23 = 0;
    v24 = MEMORY[0x277D84F90];
    do
    {
      v25 = v23;
      while (1)
      {
        if (v117)
        {
          v26 = MEMORY[0x245D0D9A0](v25, rawValue);
        }

        else
        {
          if (v25 >= *(v118 + 16))
          {
            goto LABEL_90;
          }

          v26 = *(rawValue + 8 * v25 + 32);
        }

        v27 = v26;
        v23 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_89;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v25;
        if (v23 == v116)
        {
          goto LABEL_38;
        }
      }

      MEMORY[0x245D0D2F0]();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v24 = v122;
    }

    while (v23 != v116);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

LABEL_38:
  v122 = v7;
  if (v24 >> 62)
  {
    goto LABEL_95;
  }

  v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v7 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x245D0D9A0](v7, v24);
      }

      else
      {
        if (v7 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v30 = *(v24 + 8 * v7 + 32);
      }

      v31 = v30;
      v32 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_91;
      }

      v33 = [v30 childrenSettingsIdentifiers];
      if (v33 && (v34 = v33, v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v34, v36 = *(v35 + 16), , v36))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
    }

    while (v32 != v28);
    v37 = v122;
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v38 = __CocoaSet.count.getter();
    if (v38)
    {
LABEL_57:
      v122 = v29;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v39 = 0;
      v24 = v122;
      v113 = v37 & 0xC000000000000001;
      v107 = v37 + 32;
      v110 = v38;
      v111 = v37;
      do
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_93;
        }

        if (v113)
        {
          v41 = MEMORY[0x245D0D9A0]();
        }

        else
        {
          if (v39 >= *(v37 + 16))
          {
            goto LABEL_94;
          }

          v41 = *(v107 + 8 * v39);
        }

        v7 = v41;
        v42 = [v41 identifier];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = [v7 childrenSettingsIdentifiers];
        v114 = v45;
        v115 = v43;
        if (v46)
        {
          v47 = v46;
          v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v121 = v29;
          v49 = *(v48 + 16);
          if (v49)
          {
            v50 = 0;
            v51 = v48 + 40;
            v108 = v49 - 1;
            v52 = v29;
            v112 = v24;
            v109 = v48 + 40;
LABEL_67:
            v24 = v51 + 16 * v50;
            v53 = v50;
            do
            {
              if (v53 >= *(v48 + 16))
              {
                __break(1u);
LABEL_89:
                __break(1u);
LABEL_90:
                __break(1u);
LABEL_91:
                __break(1u);
LABEL_92:
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                v28 = __CocoaSet.count.getter();
                goto LABEL_40;
              }

              if (*(v21 + 16))
              {
                v54 = *(v24 - 8);
                v55 = *v24;

                v56 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v55);
                if (v57)
                {
                  v58 = *(*(v21 + 56) + 8 * v56);

                  MEMORY[0x245D0D2F0](v59);
                  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  v50 = v53 + 1;
                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v52 = v121;
                  v60 = v108 == v53;
                  v29 = MEMORY[0x277D84F90];
                  v24 = v112;
                  v51 = v109;
                  if (v60)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_67;
                }
              }

              ++v53;
              v24 += 16;
            }

            while (v49 != v53);
            v29 = MEMORY[0x277D84F90];
            v24 = v112;
          }

          else
          {
            v52 = v29;
          }

LABEL_81:

          v38 = v110;
          v37 = v111;
        }

        else
        {

          v52 = v29;
        }

        v122 = v24;
        v62 = *(v24 + 16);
        v61 = *(v24 + 24);
        v7 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
          v24 = v122;
        }

        *(v24 + 16) = v7;
        v63 = (v24 + 24 * v62);
        v64 = v114;
        v63[4] = v115;
        v63[5] = v64;
        v63[6] = v52;
        v39 = v40;
      }

      while (v40 != v38);

      if (*(v24 + 16))
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    }
  }

  else
  {
    v38 = *(v37 + 16);
    if (v38)
    {
      goto LABEL_57;
    }
  }

  v24 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_86:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo19CAFAutomakerSettingCGGMd);
    v65 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_99;
  }

LABEL_98:
  v65 = MEMORY[0x277D84F98];
LABEL_99:
  v122 = v65;
  v7 = v105;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v24, 1, &v122);

  if (!v105)
  {
    v66 = v122;
    v122 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So19CAFAutomakerSettingCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v67 = 1 << *(v66 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & *(v66 + 64);
    v70 = (v67 + 63) >> 6;

    v71 = 0;
    if (v69)
    {
      while (1)
      {
        v72 = v71;
LABEL_108:
        v73 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
        v74 = (*(v66 + 48) + 16 * (v73 | (v72 << 6)));
        v75 = *v74;
        v76 = v74[1];

        specialized Sequence.forEach(_:)(v77, &v122, v21, v75, v76);

        if (!v69)
        {
          goto LABEL_104;
        }
      }
    }

    while (1)
    {
LABEL_104:
      v72 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      if (v72 >= v70)
      {
        break;
      }

      v69 = *(v66 + 64 + 8 * v72);
      ++v71;
      if (v69)
      {
        v71 = v72;
        goto LABEL_108;
      }
    }

    *(&v124 + 1) = v21;
    *&v125 = v66;
    v78 = v122;
    *(&v125 + 1) = v122;
    v121 = MEMORY[0x277D84F90];
    v79 = v119;
    if (v106)
    {
      v80 = __CocoaSet.count.getter();
    }

    else
    {
      v80 = *(v118 + 16);
    }

    v81 = MEMORY[0x277D84F90];
    if (v80)
    {
      v82 = 0;
      do
      {
        if (v117)
        {
          v83 = MEMORY[0x245D0D9A0](v82, v79);
        }

        else
        {
          if (v82 >= *(v118 + 16))
          {
            goto LABEL_144;
          }

          v83 = *(v79 + 8 * v82 + 32);
        }

        v84 = v83;
        v85 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          goto LABEL_143;
        }

        v86 = [v83 identifier];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        if (*(v78 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v87, v89);
          v91 = v90;

          if (v91)
          {

            goto LABEL_117;
          }
        }

        else
        {
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_117:
        ++v82;
        v79 = v119;
      }

      while (v85 != v80);
    }

    v121 = specialized Array._copyToContiguousArray()(v92);
    specialized MutableCollection<>.sort(by:)(&v121);

    v93 = v121;
    *(&v123 + 1) = v121;
    v121 = v81;

    if (!v116)
    {
LABEL_141:

      *&v124 = v81;
      specialized Sequence.forEach(_:)(v79, &v123);

      v100 = v126;
      v101 = v124;
      v102 = v104;
      *&v104->settings._rawValue = v123;
      *&v102->prominentSettings._rawValue = v101;
      *&v102->parentToChildrenIdentifiers._rawValue = v125;
      v102->settingsSections._rawValue = v100;
      return;
    }

    v94 = 0;
    while (1)
    {
      if (v117)
      {
        v95 = MEMORY[0x245D0D9A0](v94, v79);
      }

      else
      {
        if (v94 >= *(v118 + 16))
        {
          goto LABEL_146;
        }

        v95 = *(v79 + 8 * v94 + 32);
      }

      v96 = v95;
      v97 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      v98 = [v95 prominenceInfo];
      if (!v98 || (v98, v120 = v96, MEMORY[0x28223BE20](v99), v103[2] = &v120, (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v103, v93) & 1) != 0) && (swift_getObjectType(), swift_conformsToProtocol2()) && v96)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v94;
      v79 = v119;
      if (v97 == v116)
      {
        v81 = v121;
        goto LABEL_141;
      }
    }

LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

LABEL_149:

  __break(1u);

  __break(1u);
}

uint64_t CAFUISettingsCache.firstChild(for:)(void *a1)
{
  v18 = *(v1 + 32);
  v3 = a1;
  v4 = [v3 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (*(v18 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v18 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x277D84F90];
LABEL_6:

  v12 = CAFUISettingsCache.sections(for:parentSetting:)(v11, a1);

  if (!*(v12 + 16))
  {
    goto LABEL_15;
  }

  v13 = *(v12 + 72);
  v14 = *(v12 + 64);

  if (v13 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_9;
    }

LABEL_15:

    return 0;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x245D0D9A0](0, v13);
    goto LABEL_12;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v13 + 32);
LABEL_12:
    v17 = v16;

    return v17;
  }

  __break(1u);
  return result;
}

BOOL CAFUISettingsCache.hasShowAudioLogo.getter()
{
  v1 = *v0;
  v12 = MEMORY[0x277D84F90];
  if (*v0 >> 62)
  {
LABEL_20:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = &selRef_systemImageNamed_withConfiguration_;
      v5 = &selRef_systemImageNamed_withConfiguration_;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D0D9A0](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if ([v6 hasHidden] && (objc_msgSend(v7, v4[215]) & 1) != 0 || objc_msgSend(v7, v5[216]) != 3 || (objc_msgSend(v7, sel_showAudioBrandLogo) & 1) == 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = &selRef_systemImageNamed_withConfiguration_;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = &selRef_systemImageNamed_withConfiguration_;
        }

        ++v3;
      }

      while (v8 != v2);
      v9 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_25:
    v10 = __CocoaSet.count.getter();
    goto LABEL_24;
  }

LABEL_22:
  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_25;
  }

  v10 = *(v9 + 16);
LABEL_24:

  return v10 != 0;
}

uint64_t CAFUISettingsCache.rootSettings(in:visibleOnly:)(unsigned __int8 a1, char a2)
{
  v4 = *(v2 + 8);
  v13 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0D9A0](v6, v4);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v8 category] != a1 || (a2 & 1) != 0 && objc_msgSend(v9, sel_hasHidden) && objc_msgSend(v9, sel_hidden))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      ++v6;
      if (v10 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t CAFUISettingsCache.prominentSettings(in:visibleOnly:)(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_22:

    return v4;
  }

  while (1)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v20 = MEMORY[0x277D84F90];
    v18 = v4;
    v4 += 32;
    v9 = (a1 + 32);
LABEL_5:
    if (v7)
    {
      v10 = MEMORY[0x245D0D9A0](v6, v18);
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(v4 + 8 * v6);
    }

    v11 = v10;
    if (!__OFADD__(v6++, 1))
    {
      break;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v13 = [v10 category];
  v14 = *(a1 + 16);
  v15 = v9;
  do
  {
    if (!v14)
    {
      goto LABEL_4;
    }

    v16 = *v15++;
    --v14;
  }

  while (v16 != v13);
  if ((a2 & 1) != 0 && [v11 hasHidden] && objc_msgSend(v11, sel_hidden))
  {
LABEL_4:

    if (v6 != v5)
    {
      goto LABEL_5;
    }

    return v20;
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v9 = (a1 + 32);
  if (v6 != v5)
  {
    goto LABEL_5;
  }

  return v20;
}

uint64_t CAFUISettingsCache.visibleChildren(of:)(void *a1)
{
  v2 = *(v1 + 32);
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = MEMORY[0x277D84F90];
  if (*(v2 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v2 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x277D84F90];
LABEL_6:
  v19 = v7;
  if (v11 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245D0D9A0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v14 hasHidden] && (objc_msgSend(v15, sel_hidden) & 1) != 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v13;
      if (v16 == i)
      {
        v17 = v19;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_24:

  return v17;
}

uint64_t CAFUISettingsCache.sections(for:)(void *a1)
{
  v14 = *(v1 + 32);
  if (!a1)
  {
    v11 = *(v1 + 8);

    goto LABEL_8;
  }

  v3 = a1;
  v4 = [v3 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (!*(v14 + 16))
  {

    goto LABEL_7;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v11 = *(*(v14 + 56) + 8 * v8);

LABEL_8:
  v12 = CAFUISettingsCache.sections(for:parentSetting:)(v11, a1);

  return v12;
}

uint64_t CAFUISettingsCache.childSettings(of:)(void *a1)
{
  v2 = *(v1 + 32);
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (*(v2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v4, v6);
    v8 = v7;

    if (v8)
    {
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

uint64_t CAFUISettingsCache.sections(for:parentSetting:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v29[0] = *v2;
  v29[1] = v4;
  v29[2] = *(v2 + 32);
  v30 = *(v2 + 48);

  v6 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySo19CAFAutomakerSettingCGTt1g5087_s5CAFUI18CAFUISettingsCacheV8sections33_C136C7576C945FF13298128793D0FFCELL3for13parente46SayAA29CAFUIAutomakerSettingsSectionVGSaySo012D20M0CG_ALSgtFSSALXEfU_Tf1nc_nTf4g_n(v5);

  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSaySo19CAFAutomakerSettingCGG_AHs5NeverOTg5011_sSSSaySo19de30CGACIgggo_SS3key_AC5valuetACs5F188OIegnrzr_TR087_s5CAFUI18CAFUISettingsCacheV8sections33_C136C7576C945FF13298128793D0FFCELL3for13parentb46SayAA29CAFUIAutomakerSettingsSectionVGSaySo012A25M0CG_ALSgtFAMSS_AMtXEfU0_Tf3nnnpf_nTf1cn_n(v6);

  v28 = v7;
  outlined init with copy of CAFUISettingsCache(v29, &v24);
  specialized MutableCollection<>.sort(by:)(&v28, v29);
  outlined destroy of CAFUISettingsCache(v29);
  v8 = v28;
  v9 = v28[2];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = 0;
    v12 = v23;
    while (v11 < v8[2])
    {
      v22 = v8[v11 + 4];

      closure #4 in CAFUISettingsCache.sections(for:parentSetting:)(&v22, a2, &v24);

      v13 = v24;
      v14 = v25;
      v15 = v26;
      v16 = v27;
      v23 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = v25;
        v21 = v24;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v14 = v20;
        v13 = v21;
        v12 = v23;
      }

      ++v11;
      *(v12 + 16) = v18 + 1;
      v19 = v12 + 48 * v18;
      *(v19 + 32) = v13;
      *(v19 + 48) = v14;
      *(v19 + 64) = v15;
      *(v19 + 72) = v16;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *CAFUISettingsCache.section(for:)(void *a1)
{
  v2 = *(v1 + 48);
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D0D9A0](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [a1 sectionIdentifier];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v9 == v14 && v11 == v16)
        {

          return v6;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          return v6;
        }
      }

      else
      {
      }

      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t CAFUISettingsCache.categorySettings(for:)(unsigned __int8 a1)
{
  v3 = *(v1 + 8);
  v14 = MEMORY[0x277D84F90];
  v4 = *(v1 + 8);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0D9A0](v6, v4);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v8 category] == a1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v6;
      if (v10 == i)
      {
        v11 = v14;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  v12 = CAFUISettingsCache.sections(for:parentSetting:)(v11, 0);

  return v12;
}

uint64_t CAFUISettingsCache.settings(excludingLayoutKeys:)(uint64_t a1)
{
  v16 = a1;
  v2 = *v1;
  v20 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v18 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        v5 = MEMORY[0x245D0D9A0](v4, v2);
      }

      else
      {
        if (v4 >= *(v17 + 16))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 vehicleLayoutKey];
      if (v8 && (v9 = v8, v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12 = v11, v9, v19[0] = v10, v19[1] = v12, MEMORY[0x28223BE20](v13), v15[2] = v19, LOBYTE(v9) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v15, v16), , (v9 & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v4;
      if (v7 == i)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t CAFUISettingsCache.settings(for:)(unsigned __int8 a1)
{
  v3 = *v1;
  v11 = MEMORY[0x277D84F90];
  if (*v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D0D9A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 category] == a1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t CAFUISettingsCache.setting(_:isAncestorOf:)(void *a1, void *a2)
{
  v5 = *(v2 + 40);
  v6 = [a1 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [a2 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

    goto LABEL_18;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    return 0;
  }

  v16 = [a2 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (!*(v5 + 16))
  {
LABEL_18:

    return 0;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    return 0;
  }

  for (i = *(*(v5 + 56) + 8 * v20); ; i = v41)
  {
    v24 = [a1 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [i identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v25 == v29 && v27 == v31)
    {

      return 1;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {

      return 1;
    }

    v34 = [i identifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (!*(v5 + 16))
    {
      break;
    }

    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }

    v41 = *(*(v5 + 56) + 8 * v38);
  }

LABEL_25:

  return 0;
}

uint64_t CAFUISettingsCache.ancestors(of:)(void *a1)
{
  v2 = *(v1 + 40);
  v20 = MEMORY[0x277D84F90];
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (*(v2 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v2 + 56) + 8 * v7);
      while (1)
      {
        v11 = v10;
        MEMORY[0x245D0D2F0]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = [v11 identifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (!*(v2 + 16))
        {

          goto LABEL_12;
        }

        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          break;
        }

        v10 = *(*(v2 + 56) + 8 * v16);
      }
    }
  }

  else
  {
  }

LABEL_12:
  specialized MutableCollection<>.reverse()();
  return v20;
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x245D0D9A0](v4, v1);
          v10 = MEMORY[0x245D0D9A0](v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!__CocoaSet.count.getter())
      {
        return;
      }

      v2 = __CocoaSet.count.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

uint64_t CAFUISettingsCache.hasAnyHiddenAncestor(_:)(void *a1, SEL *a2, SEL *a3)
{
  v6 = *(v3 + 40);
  v7 = [a1 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!*(v6 + 16))
  {

    return 0;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  for (i = *(*(v6 + 56) + 8 * v11); ![i *a2] || !objc_msgSend(i, *a3); i = v22)
  {
    v15 = [i identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (!*(v6 + 16))
    {

LABEL_11:

      return 0;
    }

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }

    v22 = *(*(v6 + 56) + 8 * v19);
  }

  return 1;
}

uint64_t closure #3 in CAFUISettingsCache.sections(for:parentSetting:)(id **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(*a1 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_29:
    v20 = 1;
    return v20 & 1;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D0D9A0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v4 = v2[4];
  }

  v2 = v4;
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_32:

LABEL_33:
    v20 = 1;
    return v20 & 1;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_8:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_36:
    v6 = MEMORY[0x245D0D9A0](0, v3);
    goto LABEL_11;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 32);
LABEL_11:
    v7 = v6;
    v8 = CAFUISettingsCache.section(for:)(v2);
    v9 = CAFUISettingsCache.section(for:)(v7);
    v10 = v9;
    if (v8)
    {
      if (v9)
      {
        v11 = [v8 sortOrder];
        if (v11 == [v10 sortOrder])
        {
          v12 = [v8 identifier];
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v16 = [v10 identifier];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          if (v17 == v13 && v19 == v15)
          {

            v20 = 1;
          }

          else
          {
            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v20 = v31 ^ 1;
          }
        }

        else
        {
          v21 = [v8 sortOrder];
          v22 = [v10 sortOrder];

          v20 = v21 < v22;
        }
      }

      else
      {

        v20 = 0;
      }

      return v20 & 1;
    }

    if (!v9)
    {
      v23 = [v2 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = [v7 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (v28 == v24 && v30 == v26)
      {

        v20 = 1;
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20 = v32 ^ 1;
      }

      return v20 & 1;
    }

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in CAFUISettingsCache.sections(for:parentSetting:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_25;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_25;
    }
  }

  v47 = a2;
  v44 = v8;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x245D0D9A0](0, v11);
    goto LABEL_6;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
LABEL_6:
    v14 = v13;
    v15 = CAFUISettingsCache.section(for:)(v13);
    if (v15)
    {
      v16 = v15;
      v42 = v7;
      v17 = [v15 userVisibleSectionName];
      v43 = v14;
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v45 = v19;
        v46 = v21;
        static CharacterSet.whitespaces.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v22 = StringProtocol.trimmingCharacters(in:)();
        v24 = v23;
        (*(v44 + 8))(v10, v42);

        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (!v25)
        {

          v22 = 0;
          v24 = 0;
        }

        v14 = v43;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v31 = [v16 userVisibleFooter];
      if (v31)
      {
        v41 = v3;
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v45 = v33;
        v46 = v35;
        static CharacterSet.whitespaces.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v36 = StringProtocol.trimmingCharacters(in:)();
        v38 = v37;

        (*(v44 + 8))(v10, v42);

        v39 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v39 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (!v39)
        {

          v36 = 0;
          v38 = 0;
        }

        a2 = v47;
      }

      else
      {

        v36 = 0;
        v38 = 0;
        a2 = v47;
      }

      goto LABEL_26;
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v45 = 0xD000000000000022;
    v46 = 0x800000024242A6B0;
    v26 = [v14 sectionIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0xE600000000000000;
      v28 = 0x29656E6F6E28;
    }

    a2 = v47;
    MEMORY[0x245D0D240](v28, v30);

    specialized static CAFUILogger.debug(_:function:file:line:)(v45, v46, 0xD00000000000001CLL, 0x800000024242A6E0, 285);

LABEL_25:
    v36 = 0;
    v38 = 0;
    v22 = 0;
    v24 = 0;
LABEL_26:
    *a3 = v22;
    a3[1] = v24;
    a3[2] = v36;
    a3[3] = v38;
    a3[4] = a2;
    a3[5] = v11;
    v40 = a2;
  }

  __break(1u);
  return result;
}

uint64_t CAFAutomakerSettings.allSettings.getter()
{
  v1 = v0;
  v43 = MEMORY[0x277D84F90];
  v2 = [v0 BOOLeanSettings];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFBooleanSetting);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v5 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v5 = v4;
    }

    specialized Array.append<A>(contentsOf:)(v5);
  }

  v6 = [v1 buttonSettings];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFButtonSetting);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v9 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v9 = v8;
    }

    specialized Array.append<A>(contentsOf:)(v9);
  }

  v10 = [v1 deepLinkSettings];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFDeepLinkSetting);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v13 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v13 = v12;
    }

    specialized Array.append<A>(contentsOf:)(v13);
  }

  v14 = [v1 floatSettings];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFFloatSetting);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v17 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v17 = v16;
    }

    specialized Array.append<A>(contentsOf:)(v17);
  }

  v18 = [v1 integerSettings];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFIntegerSetting);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v21 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v21 = v20;
    }

    specialized Array.append<A>(contentsOf:)(v21);
  }

  v22 = [v1 multipleSelectSettings];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultipleSelectSetting);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v25 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v25 = v24;
    }

    specialized Array.append<A>(contentsOf:)(v25);
  }

  v26 = [v1 multipleSelectImageSettings];
  if (v26)
  {
    v27 = v26;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v29 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v29 = v28;
    }

    specialized Array.append<A>(contentsOf:)(v29);
  }

  v30 = [v1 singleSelectSettings];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectSetting);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v32 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v33 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v33 = v32;
    }

    specialized Array.append<A>(contentsOf:)(v33);
  }

  v34 = [v1 singleSelectImageSettings];
  if (v34)
  {
    v35 = v34;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v37 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v37 = v36;
    }

    specialized Array.append<A>(contentsOf:)(v37);
  }

  v38 = [v1 staticSettings];
  if (v38)
  {
    v39 = v38;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFStaticSetting);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v40 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);

      v41 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      v41 = v40;
    }

    specialized Array.append<A>(contentsOf:)(v41);
  }

  return v43;
}

uint64_t CAFAutomakerSetting.isLimitableUIByAncestor.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static CAFUIListContentAssociatedObjects.AncestorUILimitable);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  return 0;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    v7 = &selRef_systemImageNamed_withConfiguration_;
    while (1)
    {
      v8 = v5;
      v9 = v5 + 1;
      v142 = v6;
      v132 = v5;
      if (v5 + 1 < v4)
      {
        v10 = v4;
        v11 = v5;
        v12 = *a3;
        v13 = *(*a3 + 8 * v5);
        v14 = *(*a3 + 8 * v9);
        v5 = v13;
        v139 = specialized static CAFAutomakerSetting.< infix(_:_:)(v14, v5);

        v9 = v11 + 2;
        v136 = v10;
        if (v11 + 2 < v10)
        {
          v15 = (v12 + 8 * v11 + 16);
          v16 = v10;
          while (1)
          {
            v17 = *(v15 - 1);
            if (*v15 == v17)
            {
              if (v139)
              {
                v8 = v132;
                if (v9 < v132)
                {
                  goto LABEL_146;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v18 = *v15;
              v19 = v17;
              v20 = [v18 v7[64]];
              if (v20 == [v19 v7[64]])
              {
                v21 = [v18 userVisibleLabel];
                v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v24 = v23;

                v25 = [v19 userVisibleLabel];
                v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v5 = v27;

                if (v22 == v26 && v24 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v28 = [v18 identifier];
                  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v31 = v30;

                  v32 = [v19 identifier];
                  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v5 = v34;

                  if (v29 == v33 && v31 == v5)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  }

                  v16 = v136;
                }

                else
                {
                  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v16 = v136;
                }

                v37 = v139 ^ v35;
                v6 = v142;
                v7 = &selRef_systemImageNamed_withConfiguration_;
                if (v37)
                {
                  break;
                }
              }

              else
              {
                v36 = [v18 v7[64]];
                v5 = [v19 v7[64]];

                if (((v139 ^ (v36 >= v5)) & 1) == 0)
                {
                  break;
                }
              }
            }

            ++v15;
            if (v16 == ++v9)
            {
              v9 = v16;
              break;
            }
          }
        }

        v8 = v132;
        if (v139)
        {
          if (v9 < v132)
          {
            goto LABEL_146;
          }

LABEL_27:
          if (v8 < v9)
          {
            v38 = v9;
            v39 = 8 * v9 - 8;
            v40 = 8 * v8;
            v41 = v8;
            do
            {
              if (v41 != --v38)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_152;
                }

                v42 = *(v43 + v40);
                *(v43 + v40) = *(v43 + v39);
                *(v43 + v39) = v42;
              }

              ++v41;
              v39 -= 8;
              v40 += 8;
            }

            while (v41 < v38);
          }
        }
      }

      v44 = a3[1];
      if (v9 >= v44)
      {
        v5 = v9;
        if (v9 < v8)
        {
          goto LABEL_144;
        }

        goto LABEL_45;
      }

      if (__OFSUB__(v9, v8))
      {
        goto LABEL_145;
      }

      v45 = v9;
      if (v9 - v8 >= a4)
      {
LABEL_42:
        v5 = v9;
        if (v9 < v8)
        {
          goto LABEL_144;
        }

        goto LABEL_45;
      }

      v46 = (v8 + a4);
      if (__OFADD__(v8, a4))
      {
        goto LABEL_147;
      }

      if (v46 >= v44)
      {
        v46 = a3[1];
      }

      if (v46 < v8)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v9 == v46)
      {
        goto LABEL_42;
      }

      v94 = *a3;
      v95 = *a3 + 8 * v9 - 8;
      v96 = v8 - v9;
      v133 = v46;
      v140 = *a3;
LABEL_97:
      v135 = v95;
      v137 = v45;
      v97 = *(v94 + 8 * v45);
      v134 = v96;
      while (1)
      {
        v98 = *v95;
        if (v97 == *v95)
        {
          goto LABEL_96;
        }

        v99 = v97;
        v100 = v98;
        v101 = [v99 v7[64]];
        if (v101 == [v100 v7[64]])
        {
          break;
        }

        v119 = [v99 v7[64]];
        v120 = [v100 v7[64]];

        if (v119 >= v120)
        {
          goto LABEL_96;
        }

LABEL_108:
        if (!v94)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v121 = *v95;
        v97 = *(v95 + 8);
        *v95 = v97;
        *(v95 + 8) = v121;
        v95 -= 8;
        if (__CFADD__(v96++, 1))
        {
          goto LABEL_96;
        }
      }

      v102 = [v99 userVisibleLabel];
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      v106 = [v100 userVisibleLabel];
      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v108;

      if ((v103 != v107 || v105 != v109) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v110 = [v99 identifier];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      v114 = [v100 identifier];
      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v116;

      if (v111 != v115 || v113 != v117)
      {
        break;
      }

      v6 = v142;
      v7 = &selRef_systemImageNamed_withConfiguration_;
      v94 = v140;
LABEL_96:
      v45 = v137 + 1;
      v95 = v135 + 8;
      v96 = v134 - 1;
      if ((v137 + 1) != v133)
      {
        goto LABEL_97;
      }

      v5 = v133;
      if (v133 < v132)
      {
        goto LABEL_144;
      }

LABEL_45:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v48 = *(v6 + 2);
      v47 = *(v6 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v6);
      }

      *(v6 + 2) = v49;
      v50 = &v6[16 * v48];
      *(v50 + 4) = v132;
      *(v50 + 5) = v5;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v48)
      {
        while (2)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            v57 = &v6[16 * v49 + 32];
            v58 = *(v57 - 64);
            v59 = *(v57 - 56);
            v63 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            if (v63)
            {
              goto LABEL_130;
            }

            v62 = *(v57 - 48);
            v61 = *(v57 - 40);
            v63 = __OFSUB__(v61, v62);
            v55 = v61 - v62;
            v56 = v63;
            if (v63)
            {
              goto LABEL_131;
            }

            v64 = &v6[16 * v49];
            v66 = *v64;
            v65 = *(v64 + 1);
            v63 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v63)
            {
              goto LABEL_133;
            }

            v63 = __OFADD__(v55, v67);
            v68 = v55 + v67;
            if (v63)
            {
              goto LABEL_136;
            }

            if (v68 >= v60)
            {
              v86 = &v6[16 * v52 + 32];
              v88 = *v86;
              v87 = *(v86 + 1);
              v63 = __OFSUB__(v87, v88);
              v89 = v87 - v88;
              if (v63)
              {
                goto LABEL_140;
              }

              if (v55 < v89)
              {
                v52 = v49 - 2;
              }
            }

            else
            {
LABEL_64:
              if (v56)
              {
                goto LABEL_132;
              }

              v69 = &v6[16 * v49];
              v71 = *v69;
              v70 = *(v69 + 1);
              v72 = __OFSUB__(v70, v71);
              v73 = v70 - v71;
              v74 = v72;
              if (v72)
              {
                goto LABEL_135;
              }

              v75 = &v6[16 * v52 + 32];
              v77 = *v75;
              v76 = *(v75 + 1);
              v63 = __OFSUB__(v76, v77);
              v78 = v76 - v77;
              if (v63)
              {
                goto LABEL_138;
              }

              if (__OFADD__(v73, v78))
              {
                goto LABEL_139;
              }

              if (v73 + v78 < v55)
              {
                goto LABEL_78;
              }

              if (v55 < v78)
              {
                v52 = v49 - 2;
              }
            }
          }

          else
          {
            if (v49 == 3)
            {
              v53 = *(v6 + 4);
              v54 = *(v6 + 5);
              v63 = __OFSUB__(v54, v53);
              v55 = v54 - v53;
              v56 = v63;
              goto LABEL_64;
            }

            v79 = &v6[16 * v49];
            v81 = *v79;
            v80 = *(v79 + 1);
            v63 = __OFSUB__(v80, v81);
            v73 = v80 - v81;
            v74 = v63;
LABEL_78:
            if (v74)
            {
              goto LABEL_134;
            }

            v82 = &v6[16 * v52];
            v84 = *(v82 + 4);
            v83 = *(v82 + 5);
            v63 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v63)
            {
              goto LABEL_137;
            }

            if (v85 < v73)
            {
              break;
            }
          }

          v90 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_151;
          }

          v91 = *&v6[16 * v90 + 32];
          v92 = *&v6[16 * v52 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v91), (*a3 + 8 * *&v6[16 * v52 + 32]), (*a3 + 8 * v92), v51);
          if (v141)
          {
            goto LABEL_126;
          }

          if (v92 < v91)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          }

          if (v90 >= *(v6 + 2))
          {
            goto LABEL_129;
          }

          v93 = &v6[16 * v90];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          specialized Array.remove(at:)(v52);
          v49 = *(v6 + 2);
          if (v49 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_117;
      }
    }

    v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v142;
    v7 = &selRef_systemImageNamed_withConfiguration_;
    v94 = v140;
    if ((v118 & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_108;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_117:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_155;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_149:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  v123 = v6 + 16;
  v124 = *(v6 + 2);
  if (v124 < 2)
  {
LABEL_126:

    return;
  }

  while (*a3)
  {
    v125 = &v6[16 * v124];
    v126 = *v125;
    v127 = &v123[2 * v124];
    v128 = v127[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v125), (*a3 + 8 * *v127), (*a3 + 8 * v128), v5);
    if (v141)
    {
      goto LABEL_126;
    }

    if (v128 < v126)
    {
      goto LABEL_141;
    }

    if (v124 - 2 >= *v123)
    {
      goto LABEL_142;
    }

    *v125 = v126;
    *(v125 + 1) = v128;
    v129 = *v123 - v124;
    if (*v123 < v124)
    {
      goto LABEL_143;
    }

    v124 = *v123 - 1;
    memmove(v127, v127 + 2, 16 * v129);
    *v123 = v124;
    if (v124 <= 1)
    {
      goto LABEL_126;
    }
  }

LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v42 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v42;
    }

    v43 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v44 = &selRef_systemImageNamed_withConfiguration_;
      v73 = v4;
      v78 = v6;
LABEL_38:
      v45 = v43 - 1;
      --v5;
      v46 = v14;
      v74 = v43 - 1;
      __dsta = v43;
      do
      {
        v48 = *--v46;
        v47 = v48;
        v49 = *v45;
        if (v48 != *v45)
        {
          v80 = v14;
          v50 = v47;
          v51 = v49;
          v52 = [v50 v44[64]];
          if (v52 == [v51 v44[64]])
          {
            v53 = [v50 userVisibleLabel];
            v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v56 = v55;

            v57 = [v51 userVisibleLabel];
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            if (v54 == v58 && v56 == v60 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (, , v61 = [v50 identifier], v62 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v64 = v63, v61, v65 = objc_msgSend(v51, sel_identifier), v66 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v68 = v67, v65, v62 == v66) && v64 == v68)
            {

              v4 = v73;
              v45 = v74;
              v6 = v78;
              v14 = v80;
              v44 = &selRef_systemImageNamed_withConfiguration_;
            }

            else
            {
              v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v4 = v73;
              v45 = v74;
              v6 = v78;
              v14 = v80;
              v44 = &selRef_systemImageNamed_withConfiguration_;
              if (v71)
              {
LABEL_53:
                if (v5 + 1 != __dsta)
                {
                  *v5 = *v45;
                }

                if (v14 <= v4 || (v43 = v45, v45 <= v6))
                {
                  v43 = v45;
                  goto LABEL_60;
                }

                goto LABEL_38;
              }
            }
          }

          else
          {
            v69 = [v50 v44[64]];
            v70 = [v51 v44[64]];

            v14 = v80;
            v45 = v74;
            if (v69 < v70)
            {
              goto LABEL_53;
            }
          }
        }

        if (v5 + 1 != v14)
        {
          *v5 = *v46;
        }

        --v5;
        v14 = v46;
      }

      while (v46 > v4);
      v14 = v46;
      v43 = __dsta;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      v79 = &v4[v9];
      do
      {
        v15 = *v4;
        if (*v13 == *v4)
        {
          goto LABEL_25;
        }

        v16 = *v13;
        v17 = v15;
        v18 = [v16 sortOrder];
        if (v18 == [v17 sortOrder])
        {
          __dst = v13;
          v77 = v6;
          v19 = v4;
          v20 = [v16 userVisibleLabel];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          v24 = [v17 userVisibleLabel];
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          if (v21 == v25 && v23 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v28 = [v16 identifier];
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            v32 = [v17 identifier];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            if (v29 == v33 && v31 == v35)
            {

              v4 = v19;
              v13 = __dst;
              v6 = v77;
              v14 = v79;
LABEL_25:
              v38 = v4;
              v39 = v6 == v4++;
              if (v39)
              {
                goto LABEL_27;
              }

LABEL_26:
              *v6 = *v38;
              goto LABEL_27;
            }

            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v4 = v19;
            v13 = __dst;
            v6 = v77;
            v14 = v79;
            if ((v40 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v4 = v19;
            v13 = __dst;
            v6 = v77;
            v14 = v79;
            if ((v41 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v36 = [v16 sortOrder];
          v37 = [v17 sortOrder];

          v14 = v79;
          if (v36 >= v37)
          {
            goto LABEL_25;
          }
        }

        v38 = v13;
        v39 = v6 == v13++;
        if (!v39)
        {
          goto LABEL_26;
        }

LABEL_27:
        ++v6;
      }

      while (v4 < v14 && v13 < v5);
    }

    v43 = v6;
  }

LABEL_60:
  if (v43 != v4 || v43 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v43, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, unint64_t *a2, id **a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;

      v18 = closure #3 in CAFUISettingsCache.sections(for:parentSetting:)(&v48, &v47);
      if (v5)
      {

        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        goto LABEL_62;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  --v6;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;

    v31 = closure #3 in CAFUISettingsCache.sections(for:parentSetting:)(&v48, &v47);
    if (v5)
    {
      break;
    }

    v32 = v31;

    v33 = (v6 + 1);
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    --v6;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        goto LABEL_62;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      goto LABEL_62;
    }
  }

  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    goto LABEL_62;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

LABEL_62:
  outlined destroy of CAFUISettingsCache(a5);
  return 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D0D8F0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo19CAFAutomakerSettingCGGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo19CAFAutomakerSettingCGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo19CAFAutomakerSettingCGGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo19CAFAutomakerSettingCGMd);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a1 >> 62)
  {
LABEL_34:
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      v44 = v9 & 0xFFFFFFFFFFFFFF8;
      v45 = v9 & 0xC000000000000001;
      v39 = a4;
      v40 = a5;
      v38 = a3;
      v42 = v10;
      v43 = v9;
      do
      {
        if (v45)
        {
          v12 = MEMORY[0x245D0D9A0](v11, v9);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v11 >= *(v44 + 16))
          {
            goto LABEL_31;
          }

          v12 = *(v9 + 8 * v11 + 32);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        v9 = a2;
        v46 = v12;
        v14 = [v12 identifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a2 = v16;

        if (!*(a3 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v18 & 1) == 0))
        {
          v27 = specialized __RawDictionaryStorage.find<A>(_:)(v15, a2);
          v29 = v28;

          if (v29)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31 = *v9;
            v48 = *v9;
            a2 = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
              v31 = v48;
            }

            specialized _NativeDictionary._delete(at:)(v27, v31);
            *v9 = v31;
          }

          else
          {

            a2 = v9;
          }

          goto LABEL_5;
        }

        v41 = *(*(a3 + 56) + 8 * v17);
        a4 = swift_isUniquelyReferenced_nonNull_native();
        v19 = *v9;
        v47 = *v9;
        a3 = specialized __RawDictionaryStorage.find<A>(_:)(v15, a2);
        v21 = *(v19 + 16);
        v22 = (v20 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_32;
        }

        a5 = v20;
        if (*(v19 + 24) >= v23)
        {
          if (a4)
          {
            v26 = v47;
            if ((v20 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v26 = v47;
            if ((a5 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a4);
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v15, a2);
          if ((a5 & 1) != (v25 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          a3 = v24;
          v26 = v47;
          if ((a5 & 1) == 0)
          {
LABEL_27:
            v26[(a3 >> 6) + 8] |= 1 << a3;
            v34 = (v26[6] + 16 * a3);
            *v34 = v15;
            v34[1] = a2;
            *(v26[7] + 8 * a3) = v41;
            v35 = v26[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_33;
            }

            v26[2] = v37;
            goto LABEL_29;
          }
        }

        v32 = v26[7];
        v33 = *(v32 + 8 * a3);
        *(v32 + 8 * a3) = v41;

LABEL_29:
        a2 = v9;
        *v9 = v26;

        a4 = v39;
        a5 = v40;
        a3 = v38;
LABEL_5:
        v9 = v43;
        ++v11;
      }

      while (v13 != v42);
    }
  }
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySo19CAFAutomakerSettingCGTt1g5087_s5CAFUI18CAFUISettingsCacheV8sections33_C136C7576C945FF13298128793D0FFCELL3for13parente46SayAA29CAFUIAutomakerSettingsSectionVGSaySo012D20M0CG_ALSgtFSSALXEfU_Tf1nc_nTf4g_n(unint64_t a1)
{
  v1 = a1;
  v31 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_27:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v29 = v1 & 0xFFFFFFFFFFFFFF8;
      v30 = v1 & 0xC000000000000001;
      v4 = MEMORY[0x277D84F98];
      v28 = v1;
      while (1)
      {
        if (v30)
        {
          v7 = MEMORY[0x245D0D9A0](v3, v1);
        }

        else
        {
          if (v3 >= *(v29 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
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

        v10 = [v7 sectionIdentifier];
        if (v10)
        {
          v11 = v10;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v13;
        }

        else
        {
          v12 = 0;
          v1 = 0xE000000000000000;
        }

        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v1);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, 1);
          v4 = v31;
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v1);
          if ((v19 & 1) != (v21 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x245D0D2F0](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_242423BD0;
          *(v22 + 32) = v8;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v12;
          v23[1] = v1;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_26;
          }

          v4[2] = v26;
        }

        v1 = v28;
        ++v3;
        if (v9 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  if (v8 >= 1)
  {
    outlined init with copy of CAFUISettingsCache(a5, &v145);
    outlined init with copy of CAFUISettingsCache(a5, &v145);
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        goto LABEL_22;
      }

      v128 = v10;
      v13 = *a3;
      *&v145 = *(*a3 + 8 * v12);
      v144 = *(v13 + 8 * v9);

      v14 = a5;
      v15 = closure #3 in CAFUISettingsCache.sections(for:parentSetting:)(&v145, &v144);
      if (v6)
      {
        goto LABEL_141;
      }

      v16 = v15;

      v17 = v11 + 2;
      v126 = v11;
      v18 = 8 * v11;
      v19 = (v13 + v18 + 16);
      while (v8 != v17)
      {
        *&v145 = *v19;
        v144 = *(v19 - 1);

        v20 = closure #3 in CAFUISettingsCache.sections(for:parentSetting:)(&v145, &v144);

        ++v17;
        ++v19;
        if ((v16 ^ v20))
        {
          v8 = v17 - 1;
          break;
        }
      }

      if (v16)
      {
        v21 = v126;
        v10 = v128;
        if (v8 < v126)
        {
          goto LABEL_164;
        }

        if (v126 >= v8)
        {
          v12 = v8;
          v11 = v126;
          goto LABEL_22;
        }

        v22 = 8 * v8 - 8;
        v23 = v8;
        do
        {
          if (v21 != --v23)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_168;
            }

            v25 = *(v24 + v18);
            *(v24 + v18) = *(v24 + v22);
            *(v24 + v22) = v25;
          }

          ++v21;
          v22 -= 8;
          v18 += 8;
        }

        while (v21 < v23);
        v12 = v8;
      }

      else
      {
        v12 = v8;
        v10 = v128;
      }

      v11 = v126;
LABEL_22:
      v26 = a3[1];
      if (v12 >= v26)
      {
        goto LABEL_74;
      }

      if (__OFSUB__(v12, v11))
      {
        goto LABEL_160;
      }

      if (v12 - v11 >= a4)
      {
        goto LABEL_74;
      }

      v27 = v11 + a4;
      if (__OFADD__(v11, a4))
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        outlined destroy of CAFUISettingsCache(a5);
        outlined destroy of CAFUISettingsCache(a5);
        __break(1u);
LABEL_166:
        outlined destroy of CAFUISettingsCache(a5);
        outlined destroy of CAFUISettingsCache(a5);
        __break(1u);
LABEL_167:
        outlined destroy of CAFUISettingsCache(a5);
        __break(1u);
LABEL_168:
        outlined destroy of CAFUISettingsCache(a5);
        outlined destroy of CAFUISettingsCache(a5);
        __break(1u);
LABEL_169:
        outlined destroy of CAFUISettingsCache(a5);
        outlined destroy of CAFUISettingsCache(a5);
        __break(1u);
LABEL_170:
        outlined destroy of CAFUISettingsCache(a5);
        result = outlined destroy of CAFUISettingsCache(a5);
        __break(1u);
        return result;
      }

      if (v27 >= v26)
      {
        v27 = a3[1];
      }

      if (v27 < v11)
      {
        goto LABEL_163;
      }

      if (v12 == v27)
      {
        goto LABEL_74;
      }

      v127 = v11;
      v129 = v10;
      v124 = v6;
      v28 = *a3;
      v29 = (*a3 + 8 * v12 - 8);
      v30 = v11 - v12;
      v137 = *a3;
      v131 = v27;
      while (2)
      {
        v133 = v29;
        v134 = v12;
        v14 = *(v28 + 8 * v12);
        v132 = v30;
        while (1)
        {
          v6 = *v29;
          if (v14 >> 62)
          {
            break;
          }

          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

LABEL_68:
          if (!v28)
          {
            goto LABEL_165;
          }

          v60 = *v29;
          v14 = v29[1];
          *v29 = v14;
          v29[1] = v60;
          --v29;
          if (__CFADD__(v30++, 1))
          {
            goto LABEL_32;
          }
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_68;
        }

LABEL_36:
        if ((v14 & 0xC000000000000001) != 0)
        {

          v32 = MEMORY[0x245D0D9A0](0, v14);
        }

        else
        {
          if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_141:

            outlined destroy of CAFUISettingsCache(v14);
            v122 = v14;
            return outlined destroy of CAFUISettingsCache(v122);
          }

          v31 = *(v14 + 32);

          v32 = v31;
        }

        v33 = v32;
        if (v6 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_66:

            goto LABEL_67;
          }
        }

        else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x245D0D9A0](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          v34 = *(v6 + 32);
        }

        v35 = v34;
        v36 = *(a5 + 16);
        v145 = *a5;
        v146 = v36;
        v147 = *(a5 + 32);
        v148 = *(a5 + 48);
        v10 = CAFUISettingsCache.section(for:)(v33);
        v37 = *(a5 + 16);
        v145 = *a5;
        v146 = v37;
        v147 = *(a5 + 32);
        v148 = *(a5 + 48);
        v38 = CAFUISettingsCache.section(for:)(v35);
        v39 = v38;
        v142 = v10;
        if (!v10)
        {
          if (v38)
          {

            v33 = v39;
            v28 = v137;
LABEL_67:

            goto LABEL_68;
          }

          v140 = v33;
          v53 = [v33 identifier];
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v139 = v35;
          v10 = [v35 identifier];
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          if (v57 != v54 || v59 != v56)
          {
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v52 = v139;
LABEL_60:

            v28 = v137;
            if (v51)
            {
              goto LABEL_32;
            }

            goto LABEL_68;
          }

          v48 = v139;
LABEL_58:

          v28 = v137;
          v33 = v140;
          goto LABEL_67;
        }

        if (v38)
        {
          v138 = v35;
          v140 = v33;
          v40 = [v10 sortOrder];
          if (v40 != [v39 sortOrder])
          {
            v49 = [v10 sortOrder];
            v50 = [v39 sortOrder];

            v28 = v137;
            if (v49 >= v50)
            {
              goto LABEL_32;
            }

            goto LABEL_68;
          }

          v41 = [v10 identifier];
          v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v44 = [v39 identifier];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v10 = v43;
          if (v45 != v136 || v47 != v43)
          {
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v52 = v142;
            goto LABEL_60;
          }

          v48 = v142;
          goto LABEL_58;
        }

        v28 = v137;
LABEL_32:
        v12 = v134 + 1;
        v29 = v133 + 1;
        v30 = v132 - 1;
        if (v134 + 1 != v131)
        {
          continue;
        }

        break;
      }

      v12 = v131;
      v6 = v124;
      v11 = v127;
      v10 = v129;
LABEL_74:
      if (v12 < v11)
      {
        goto LABEL_159;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      }

      v63 = *(v10 + 16);
      v62 = *(v10 + 24);
      v64 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v10);
      }

      *(v10 + 16) = v64;
      v65 = v10 + 16 * v63;
      *(v65 + 32) = v11;
      *(v65 + 40) = v12;
      v140 = *a1;
      if (!*a1)
      {
        goto LABEL_169;
      }

      if (v63)
      {
        while (1)
        {
          v66 = v64 - 1;
          if (v64 >= 4)
          {
            break;
          }

          if (v64 == 3)
          {
            v67 = *(v10 + 32);
            v68 = *(v10 + 40);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
LABEL_94:
            if (v70)
            {
              goto LABEL_148;
            }

            v83 = (v10 + 16 * v64);
            v85 = *v83;
            v84 = v83[1];
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_151;
            }

            v89 = (v10 + 32 + 16 * v66);
            v91 = *v89;
            v90 = v89[1];
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_155;
            }

            if (v87 + v92 >= v69)
            {
              if (v69 < v92)
              {
                v66 = v64 - 2;
              }

              goto LABEL_115;
            }

            goto LABEL_108;
          }

          v93 = (v10 + 16 * v64);
          v95 = *v93;
          v94 = v93[1];
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_108:
          if (v88)
          {
            goto LABEL_150;
          }

          v96 = v10 + 16 * v66;
          v98 = *(v96 + 32);
          v97 = *(v96 + 40);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_153;
          }

          if (v99 < v87)
          {
            goto LABEL_3;
          }

LABEL_115:
          v104 = v66 - 1;
          if (v66 - 1 >= v64)
          {
            goto LABEL_143;
          }

          v105 = *a3;
          if (!*a3)
          {
            goto LABEL_166;
          }

          v106 = *(v10 + 32 + 16 * v104);
          v143 = v66;
          v107 = *(v10 + 32 + 16 * v66 + 8);
          v108 = (v105 + 8 * v106);
          v109 = (v105 + 8 * *(v10 + 32 + 16 * v66));
          v110 = (v105 + 8 * v107);
          outlined init with copy of CAFUISettingsCache(a5, &v145);
          specialized _merge<A>(low:mid:high:buffer:by:)(v108, v109, v110, v140, a5);
          if (v6)
          {

            v121 = a5;
            goto LABEL_138;
          }

          if (v107 < v106)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v104 >= *(v10 + 16))
          {
            goto LABEL_145;
          }

          v111 = v10 + 16 * v104;
          *(v111 + 32) = v106;
          *(v111 + 40) = v107;
          v149 = v10;
          specialized Array.remove(at:)(v143);
          v10 = v149;
          v64 = *(v149 + 16);
          if (v64 <= 1)
          {
            goto LABEL_3;
          }
        }

        v71 = v10 + 32 + 16 * v64;
        v72 = *(v71 - 64);
        v73 = *(v71 - 56);
        v77 = __OFSUB__(v73, v72);
        v74 = v73 - v72;
        if (v77)
        {
          goto LABEL_146;
        }

        v76 = *(v71 - 48);
        v75 = *(v71 - 40);
        v77 = __OFSUB__(v75, v76);
        v69 = v75 - v76;
        v70 = v77;
        if (v77)
        {
          goto LABEL_147;
        }

        v78 = (v10 + 16 * v64);
        v80 = *v78;
        v79 = v78[1];
        v77 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v77)
        {
          goto LABEL_149;
        }

        v77 = __OFADD__(v69, v81);
        v82 = v69 + v81;
        if (v77)
        {
          goto LABEL_152;
        }

        if (v82 >= v74)
        {
          v100 = (v10 + 32 + 16 * v66);
          v102 = *v100;
          v101 = v100[1];
          v77 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v77)
          {
            goto LABEL_158;
          }

          if (v69 < v103)
          {
            v66 = v64 - 2;
          }

          goto LABEL_115;
        }

        goto LABEL_94;
      }

LABEL_3:
      v9 = v12;
      v8 = a3[1];
      if (v12 >= v8)
      {
        goto LABEL_125;
      }
    }
  }

  outlined init with copy of CAFUISettingsCache(a5, &v145);
  outlined init with copy of CAFUISettingsCache(a5, &v145);
  v10 = MEMORY[0x277D84F90];
LABEL_125:
  v140 = *a1;
  if (!*a1)
  {
    goto LABEL_170;
  }

  outlined init with copy of CAFUISettingsCache(a5, &v145);
  outlined init with copy of CAFUISettingsCache(a5, &v145);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_161:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v149 = v10;
  v112 = *(v10 + 16);
  if (v112 >= 2)
  {
    do
    {
      v113 = *a3;
      if (!*a3)
      {
        goto LABEL_167;
      }

      v114 = v10;
      v115 = *(v10 + 16 * v112);
      v116 = *(v10 + 16 * (v112 - 1) + 32);
      v10 = *(v10 + 16 * (v112 - 1) + 40);
      v117 = (v113 + 8 * v115);
      v118 = (v113 + 8 * v116);
      v119 = (v113 + 8 * v10);
      outlined init with copy of CAFUISettingsCache(a5, &v145);
      specialized _merge<A>(low:mid:high:buffer:by:)(v117, v118, v119, v140, a5);
      if (v6)
      {
        break;
      }

      if (v10 < v115)
      {
        goto LABEL_156;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = specialized _ArrayBuffer._consumeAndCreateNew()(v114);
      }

      if (v112 - 2 >= *(v114 + 2))
      {
        goto LABEL_157;
      }

      v120 = &v114[16 * v112];
      *v120 = v115;
      *(v120 + 1) = v10;
      v149 = v114;
      specialized Array.remove(at:)(v112 - 1);
      v10 = v149;
      v112 = *(v149 + 16);
    }

    while (v112 > 1);
  }

  v121 = a5;
  outlined destroy of CAFUISettingsCache(a5);
  outlined destroy of CAFUISettingsCache(a5);

LABEL_138:
  outlined destroy of CAFUISettingsCache(v121);
  v122 = v121;
  return outlined destroy of CAFUISettingsCache(v122);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v14 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;

      v10 = closure #3 in CAFUISettingsCache.sections(for:parentSetting:)(&v17, &v16);

      if (v4)
      {
        break;
      }

      if (v10)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v11 = *v7;
        v9 = v7[1];
        *v7 = v9;
        v7[1] = v11;
        --v7;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 1;
      v8 = v14 - 1;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  outlined init with copy of CAFUISettingsCache(a2, v10);
  outlined init with copy of CAFUISettingsCache(a2, v10);
  result = _minimumMergeRunLength(_:)(v4);
  if (result >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        outlined init with copy of CAFUISettingsCache(a2, v10);
        specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1);
        outlined destroy of CAFUISettingsCache(a2);
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19CAFAutomakerSettingCGMd);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      outlined init with copy of CAFUISettingsCache(a2, v10);
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      outlined destroy of CAFUISettingsCache(a2);
      *(v8 + 16) = 0;

LABEL_10:
      outlined destroy of CAFUISettingsCache(a2);
      return outlined destroy of CAFUISettingsCache(a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(void **a1, uint64_t a2)
{
  v4 = *a1;
  outlined init with copy of CAFUISettingsCache(a2, v8);
  outlined init with copy of CAFUISettingsCache(a2, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  outlined init with copy of CAFUISettingsCache(a2, v8);
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  outlined destroy of CAFUISettingsCache(a2);
  *a1 = v4;
  outlined destroy of CAFUISettingsCache(a2);
  return outlined destroy of CAFUISettingsCache(a2);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlXpGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of NotificationModel.Symbol?(v4, v13, &_ss11AnyHashableV_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So19CAFAutomakerSettingCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo19CAFAutomakerSettingCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of NotificationModel.Symbol?(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, v5 & 1);
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v25 = (v20[6] + 16 * v12);
    *v25 = v8;
    v25[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v26 = v20[2];
    v16 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v27;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v24 = v12;
  specialized _NativeDictionary.copy()();
  v12 = v24;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;

  v22 = v20[7];
  v23 = *(v22 + 8 * v21);
  *(v22 + 8 * v21) = v11;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v31 = *v5;
      v32 = *a3;

      v8 = v31;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v16 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v16)
      {
        goto LABEL_23;
      }

      v11 = v34;
      if (v32[3] < v37)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v11 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      v39 = *a3;
      if (v11)
      {
        v28 = v33;

        v29 = v39[7];
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v8;
      }

      else
      {
        v39[(v33 >> 6) + 8] |= 1 << v33;
        v40 = (v39[6] + 16 * v33);
        *v40 = v7;
        v40[1] = v6;
        *(v39[7] + 8 * v33) = v8;
        v41 = v39[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v39[2] = v42;
      }

      v5 += 3;
      if (!--v18)
      {
        return;
      }
    }
  }
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v21 = (v18[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  specialized _NativeDictionary.copy()();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  *(v18[7] + 8 * v19) = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v6 = *v5;
      v25 = *a3;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v26;
      if (v25[3] < v29)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
        if ((v8 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v8)
      {
        v24 = result;

        *(v31[7] + 8 * v24) = v6;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        v32 = (v31[6] + 16 * result);
        *v32 = v7;
        v32[1] = v9;
        *(v31[7] + 8 * result) = v6;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFUISettingsCache(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CAFUISettingsCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CAFVolume.title.getter()
{
  v1 = [v0 volumeType];
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 0x535F454D554C4F56;
        v4 = 0xE900000000000052;
        break;
      case 4:
        v2 = 0x525F454D554C4F56;
        v4 = 0xED00005245474E49;
        break;
      case 5:
        v2 = 0x4E5F454D554C4F56;
        v3 = 1381193281;
        goto LABEL_21;
      default:
LABEL_12:
        v5 = [v0 userVisibleLabel];
        if (v5)
        {
          v6 = v5;
          v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;

          v10 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v10 = v7 & 0xFFFFFFFFFFFFLL;
          }

          if (v10)
          {
            return v7;
          }
        }

        v2 = 0x4F5F454D554C4F56;
        v3 = 1380272212;
        goto LABEL_21;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0x4D5F454D554C4F56;
      v3 = 1095320645;
      goto LABEL_21;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        v2 = 0x505F454D554C4F56;
        v3 = 1162760008;
LABEL_21:
        v4 = v3 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    v2 = 0x4E5F454D554C4F56;
    v4 = 0xEA00000000005641;
  }

LABEL_22:
  v12 = MEMORY[0x245D0D180](v2, v4);
  v13 = CAFUILocalizedStringForKey(v12);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v14;
}

id closure #1 in variable initialization expression of CAFUIDevicePickerLimitedUIView.button()
{
  v0 = [objc_allocWithZone(type metadata accessor for CAFUIAlertButton()) init];
  v1 = [objc_opt_self() _carSystemFocusColor];
  [v0 setTitleColor:v1 forState:0];

  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = MEMORY[0x245D0D180](1262698818, 0xE400000000000000);
  v4 = CAFUILocalizedStringForKey(v3);

  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x245D0D180](v5);
  }

  [v2 setTitle:v4 forState:0];

  [v2 _setContinuousCornerRadius_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_242423B80;
  v8 = [v2 heightAnchor];
  v9 = [v8 constraintEqualToConstant_];

  *(v7 + 32) = v9;
  v10 = [v2 widthAnchor];

  v11 = [v10 constraintEqualToConstant_];
  *(v7 + 40) = v11;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints_];

  return v2;
}

id closure #1 in variable initialization expression of CAFUIDevicePickerLimitedUIView.label()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  [v0 setTextAlignment_];
  [v0 setLineBreakMode_];
  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = MEMORY[0x245D0D180](0xD000000000000019, 0x800000024242A770);
  v3 = CAFUILocalizedStringForKey(v2);

  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x245D0D180](v4);
  }

  [v0 setText_];

  return v0;
}

char *CAFUIDevicePickerLimitedUIView.init(presentedAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_presentedAction];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_dismissAction];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_button;
  *&v4[v11] = closure #1 in variable initialization expression of CAFUIDevicePickerLimitedUIView.button();
  v12 = OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_label;
  *&v4[v12] = closure #1 in variable initialization expression of CAFUIDevicePickerLimitedUIView.label();
  v13 = *v9;
  v14 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  v50 = a1;
  v51 = a2;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a1);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Bool))?(v13, v14);
  v15 = *v10;
  v16 = v10[1];
  *v10 = a3;
  v10[1] = a4;
  v49 = a3;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a3);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Bool))?(v15, v16);
  v52.receiver = v4;
  v52.super_class = type metadata accessor for CAFUIDevicePickerLimitedUIView();
  v17 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_button;
  v19 = *&v17[OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_button];
  v20 = v17;
  [v19 addTarget:v20 action:sel_buttonPressed forControlEvents:64];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [objc_opt_self() tableBackgroundColor];
  if (result)
  {
    v22 = result;
    [v20 setBackgroundColor_];

    [v20 setAlpha_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_242423B80;
    v24 = *&v20[OBJC_IVAR____TtC5CAFUI30CAFUIDevicePickerLimitedUIView_label];
    *(v23 + 32) = v24;
    v25 = *&v17[v18];
    *(v23 + 40) = v25;
    v26 = objc_allocWithZone(MEMORY[0x277D75A68]);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
    v27 = v24;
    v28 = v25;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v26 initWithArrangedSubviews_];

    [v30 setAxis_];
    [v30 setAlignment_];
    v31 = v30;
    [v31 setTranslatesAutoresizingMaskIntoConstraints_];
    [v31 setSpacing_];
    [v20 addSubview_];
    v32 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_242423B90;
    v34 = [v31 centerXAnchor];
    v35 = [v20 centerXAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v33 + 32) = v36;
    v37 = [v31 centerYAnchor];
    v38 = [v20 centerYAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    *(v33 + 40) = v39;
    v40 = [v31 leadingAnchor];
    v41 = [v20 safeAreaLayoutGuide];
    v42 = [v41 leadingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v33 + 48) = v43;
    v44 = [v31 trailingAnchor];

    v45 = [v20 safeAreaLayoutGuide];
    v46 = [v45 trailingAnchor];

    v47 = [v44 constraintEqualToAnchor_];
    *(v33 + 56) = v47;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v48 = Array._bridgeToObjectiveC()().super.isa;

    [v32 activateConstraints_];

    outlined consume of (@escaping @callee_guaranteed () -> (@unowned Bool))?(v49, a4);
    outlined consume of (@escaping @callee_guaranteed () -> (@unowned Bool))?(v50, v51);

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *@objc CAFUIDevicePickerLimitedUIView.layoutSubviews()(char *result, uint64_t a2, void *a3)
{
  v3 = &result[*a3];
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    v6 = result;
    v7 = outlined copy of (@escaping @callee_guaranteed () -> ())?(v4);
    v4(v7);

    return outlined consume of (@escaping @callee_guaranteed () -> (@unowned Bool))?(v4, v5);
  }

  return result;
}

id CAFUIDevicePickerLimitedUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIDevicePickerLimitedUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CAFActionNotificationSource.output.getter()
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

BOOL String.isDismissibleNotification.getter()
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

  if (v7 != 0xD000000000000018 || v8 != 0x800000024242A7F0)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v3 + 8))(v5, v2);
    return (v10 & 1) != 0;
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

uint64_t static NotificationModel.getSymbol(symbolName:symbolColor:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    if ((a3 & 0x100) == 0)
    {
      v7 = UIColorFromCAFImageColor(a3);
      MEMORY[0x245D0CE70](v7);
    }

    NotificationModel.Symbol.init(name:color:)();
    v17 = type metadata accessor for NotificationModel.Symbol();
    v18 = *(*(v17 - 8) + 56);

    return v18(a4, 0, 1, v17);
  }

  else
  {
LABEL_7:
    v8 = static os_log_type_t.default.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v9 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v12 = Optional<A>.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_24234D000, v9, v8, "Invalid symbol used on Notification:%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245D0E5A0](v11, -1, -1);
      MEMORY[0x245D0E5A0](v10, -1, -1);
    }

    v15 = type metadata accessor for NotificationModel.Symbol();
    return (*(*(v15 - 8) + 56))(a4, 1, 1, v15);
  }
}

void *CAFActionNotificationSource.__allocating_init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a2;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v34);
  v32 = v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v29[0];
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v24 = v30;
  Publishers.CombineLatest.init(_:_:)();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #3 in CAFActionNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v26 + 24) = v25;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v27 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v24, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v20;
}

void *CAFActionNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a2;
  v31[3] = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v31[2] = v31 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v32);
  v31[0] = v31 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v36;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  Publishers.CombineLatest.init(_:_:)();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = closure #3 in CAFActionNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)partial apply;
  *(v28 + 24) = v27;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v29 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v20, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v9;
}

uint64_t closure #1 in CAFActionNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t closure #3 in CAFActionNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t (*a1)(void, void, void), void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFActionNotificationSource.updateNotification(remoteNotification:requestContent:)(a1, a2);
  }

  return result;
}

uint64_t CAFActionNotificationSource.updateNotification(remoteNotification:requestContent:)(uint64_t (*a1)(void, void, void), void *a2)
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
  dispatch thunk of CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  v26 = String.isDismissibleNotification.getter();

  if (v26 && (dispatch thunk of CAFRequestTemporaryContentObservable.on.getter() & 1) != 0)
  {
    v27 = v62;
    v28 = dispatch thunk of CAFActionRemoteNotificationObservable.displayPanelIdentifier.getter();
    v58 = v29;
    CAFActionNotificationSource.convert(message:requestContent:)(v27, a2, v21);
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
      static CAFActionNotificationSource.sanitize(notification:displayID:)(v11, v28, v58, v24);
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

uint64_t static CAFActionNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
        closure #1 in closure #2 in static CAFActionNotificationSource.sanitize(notification:displayID:)(v29, v11, v43, v44, v23);
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

uint64_t closure #1 in closure #2 in static CAFActionNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
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

uint64_t CAFActionNotificationSource.convert(message:requestContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v156 = type metadata accessor for UUID();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for NotificationModel();
  v166 = *(v168 - 8);
  v7 = MEMORY[0x28223BE20](v168);
  v9 = v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v165 = v153 - v10;
  v164 = type metadata accessor for NotificationModel.Style();
  v163 = *(v164 - 8);
  v11 = MEMORY[0x28223BE20](v164);
  v160 = v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v153 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v159 = v153 - v16;
  v181 = type metadata accessor for NotificationModel.FancyModel();
  v184 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v195 = v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v153 - v19;
  v201 = type metadata accessor for NotificationModel.FancyModel.ActionConfiguration();
  v176 = *(v201 - 8);
  v21 = MEMORY[0x28223BE20](v201);
  v192 = v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v175 = v153 - v23;
  v194 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
  v202 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v203 = v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v180 = v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v204 = v153 - v29;
  MEMORY[0x28223BE20](v28);
  v170 = v153 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v153 - v32;
  v173 = type metadata accessor for NotificationModel.Text();
  v172 = *(v173 - 8);
  v34 = MEMORY[0x28223BE20](v173);
  v157 = v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v169 = v153 - v36;
  v183 = dispatch thunk of CAFActionRemoteNotificationObservable.displayPanelIdentifier.getter();
  v185 = v37;
  v182 = dispatch thunk of CAFActionRemoteNotificationObservable.identifier.getter();
  v186 = v38;
  v39 = dispatch thunk of CAFActionRemoteNotificationObservable.userVisibleLabel.getter();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v161 = v9;
  if (v42)
  {
    dispatch thunk of CAFActionRemoteNotificationObservable.userVisibleLabel.getter();
    v171 = v43;
  }

  else
  {
    v171 = 0;
  }

  v44 = dispatch thunk of CAFActionRemoteNotificationObservable.userVisibleDescription.getter();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    dispatch thunk of CAFActionRemoteNotificationObservable.userVisibleDescription.getter();
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  NotificationModel.Text.init(title:body:)();
  v50 = v172;
  v51 = v173;
  v52 = (*(v172 + 48))(v33, 1, v173);
  v53 = v195;
  if (v52 == 1)
  {

    outlined destroy of RequestTemporaryContentModel?(v33, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
    v54 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v55 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v206 = v57;
      *v56 = 136315138;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v185, &v206);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_24234D000, v55, v54, "No text added to notification on display: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x245D0E5A0](v57, -1, -1);
      MEMORY[0x245D0E5A0](v56, -1, -1);
    }

    else
    {
    }

    return (*(v166 + 56))(a3, 1, 1, v168);
  }

  else
  {
    v153[2] = v49;
    (*(v50 + 32))(v169, v33, v51);
    v158 = dispatch thunk of CAFActionRemoteNotificationObservable.symbolNameAndColor.getter();
    v59 = [v158 name];
    if (v59)
    {
      v60 = v59;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v65 = [v158 color];
    static NotificationModel.getSymbol(symbolName:symbolColor:)(v61, v63, v65, v170);

    v66 = dispatch thunk of CAFActionRemoteNotificationObservable.trailingButton.getter();
    v67 = [v66 type];

    v68 = 0xE000000000000000;
    if (v67 == 2)
    {
      v68 = 0x8000000242428D90;
    }

    if (v67 == 1)
    {
      v69 = 0x8000000242428DB0;
    }

    else
    {
      v69 = v68;
    }

    v70 = swift_allocObject();
    swift_weakInit();
    v71 = swift_allocObject();
    v71[2] = v70;
    v71[3] = a2;
    v71[4] = a1;

    v178 = a2;
    v72 = a1;
    v153[1] = v69;
    NotificationModel.TrailingButtonConfiguration.init(symbolName:handler:)();
    v199 = v72;
    v73 = dispatch thunk of CAFActionRemoteNotificationObservable.symbolNotificationUserActions.getter();
    v74 = [v73 symbolNotificationUserActions];

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSymbolNotificationUserAction);
    v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v174 = v75 >> 62;
    if (v75 >> 62)
    {
      goto LABEL_69;
    }

    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
    v77 = v181;
    v78 = v184;
    v79 = v194;
    v80 = v202;

    v82 = v203;
    v179 = v14;
    if (v76)
    {
      v83 = v76;
      v84 = 0;
      v191 = v75 & 0xC000000000000001;
      v85 = v75 & 0xFFFFFFFFFFFFFF8;
      v193 = v75 & 0xFFFFFFFFFFFFFF8;
      if (v75 < 0)
      {
        v85 = v75;
      }

      v162 = v85;
      v188 = (v176 + 48);
      v189 = (v176 + 56);
      v187 = (v176 + 32);
      v200 = MEMORY[0x277D84F90];
      *&v81 = 136315394;
      v167 = v81;
      v190 = v83;
      v177 = v75;
      while (1)
      {
        if (v191)
        {
          v86 = MEMORY[0x245D0D9A0](v84, v75);
        }

        else
        {
          if (v84 >= *(v193 + 16))
          {
            goto LABEL_66;
          }

          v86 = *(v75 + 8 * v84 + 32);
        }

        v53 = v86;
        if (__OFADD__(v84, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          v76 = __CocoaSet.count.getter();
          goto LABEL_27;
        }

        v87 = [v86 userVisibleLabel];
        v205 = v84 + 1;
        if (v87)
        {
          v88 = v87;
          v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v197 = v90;

          v91 = [v53 symbolName];
          if (v91)
          {
            v92 = v91;
            v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = v94;
          }

          else
          {
            v93 = 0;
            v95 = 0;
          }

          v103 = [v53 symbolColor];
          static NotificationModel.getSymbol(symbolName:symbolColor:)(v93, v95, v103, v204);

          v104 = dispatch thunk of CAFActionRemoteNotificationObservable.showsPrimaryActionHighlight.getter();
          v198 = v89;
          if (v104)
          {
            if (v174)
            {
              v105 = __CocoaSet.count.getter();
            }

            else
            {
              v105 = *(v193 + 16);
            }

            if (__OFSUB__(v105, 1))
            {
              goto LABEL_68;
            }

            v106 = v84 == v105 - 1;
          }

          else
          {
            v106 = 0;
          }

          v107 = [v53 disabled];
          if (v84 > 0xFF)
          {
            goto LABEL_67;
          }

          v108 = v107;
          v196 = v106;
          outlined init with copy of NotificationModel.Symbol?(v204, v180, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
          v109 = swift_allocObject();
          swift_weakInit();
          v110 = v20;
          v111 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v112 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v113 = swift_allocObject();
          v114 = v183;
          *(v113 + 16) = v84;
          *(v113 + 24) = v114;
          v115 = v182;
          *(v113 + 32) = v185;
          *(v113 + 40) = v115;
          *(v113 + 48) = v186;
          *(v113 + 56) = v108;
          *(v113 + 64) = v112;
          *(v113 + 72) = v111;
          *(v113 + 80) = v53;
          *(v113 + 88) = v109;

          v116 = v53;

          NotificationModel.FancyModel.ActionConfiguration.init(id:symbol:title:pressed:highlighted:disabled:handler:)();
          outlined destroy of RequestTemporaryContentModel?(v204, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);

          v20 = v110;
          v75 = v177;
          v14 = v179;

          v101 = v201;
          (*v189)(v20, 0, 1, v201);

          v117 = (*v188)(v20, 1, v101);
          v77 = v181;
          v78 = v184;
          v80 = v202;
          v82 = v203;
          if (v117 != 1)
          {
LABEL_54:
            v118 = v101;
            v119 = *v187;
            v120 = v175;
            (*v187)(v175, v20, v118);
            v119(v192, v120, v118);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v53 = v195;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v200 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v200 + 2) + 1, 1, v200);
            }

            v123 = *(v200 + 2);
            v122 = *(v200 + 3);
            if (v123 >= v122 >> 1)
            {
              v200 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v122 > 1, v123 + 1, 1, v200);
            }

            v125 = v200;
            v124 = v201;
            *(v200 + 2) = v123 + 1;
            v119(&v125[((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v123], v192, v124);
            v80 = v202;
            v82 = v203;
            goto LABEL_32;
          }
        }

        else
        {
          v96 = static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
          v97 = static OS_os_log.default.getter();
          if (os_log_type_enabled(v97, v96))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v206 = v99;
            *v98 = v167;
            *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v185, &v206);
            *(v98 + 12) = 2080;
            *(v98 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v186, &v206);
            _os_log_impl(&dword_24234D000, v97, v96, "Notification (%s:%s) - User action does not have text", v98, 0x16u);
            swift_arrayDestroy();
            v100 = v99;
            v78 = v184;
            MEMORY[0x245D0E5A0](v100, -1, -1);
            MEMORY[0x245D0E5A0](v98, -1, -1);
          }

          v101 = v201;
          v80 = v202;
          (*v189)(v20, 1, 1, v201);

          v102 = (*v188)(v20, 1, v101);
          v82 = v203;
          if (v102 != 1)
          {
            goto LABEL_54;
          }
        }

        outlined destroy of RequestTemporaryContentModel?(v20, &_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
        v53 = v195;
LABEL_32:
        ++v84;
        v79 = v194;
        if (v205 == v190)
        {
          goto LABEL_61;
        }
      }
    }

    v200 = MEMORY[0x277D84F90];
LABEL_61:

    swift_bridgeObjectRelease_n();
    (*(v172 + 16))(v157, v169, v173);
    outlined init with copy of NotificationModel.Symbol?(v170, v180, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
    v126 = v159;
    (*(v80 + 16))(v159, v82, v79);
    (*(v80 + 56))(v126, 0, 1, v79);
    v127 = swift_allocObject();
    v128 = v178;
    *(v127 + 16) = v178;
    v129 = v128;
    NotificationModel.FancyModel.init(text:symbol:trailingButtonConfiguration:actionButtons:dismissalHandler:)();
    (*(v78 + 16))(v14, v53, v77);
    v130 = v163;
    v131 = v164;
    (*(v163 + 104))(v14, *MEMORY[0x277CF8BE0], v164);
    (*(v130 + 16))(v160, v14, v131);
    v132 = v165;
    NotificationModel.init(id:style:)();
    v133 = static os_log_type_t.info.getter();
    v134 = v166;
    v135 = v161;
    v136 = v168;
    (*(v166 + 16))(v161, v132, v168);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v137 = static OS_os_log.default.getter();
    LODWORD(v205) = v133;
    if (os_log_type_enabled(v137, v133))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v206 = v139;
      *v138 = 136315650;
      v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v185, &v206);

      *(v138 + 4) = v140;
      *(v138 + 12) = 2080;
      v141 = CAFActionRemoteNotificationObservable.observed.getter();
      v142 = v154;
      CAFService.id.getter();

      lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v143 = v156;
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      (*(v155 + 8))(v142, v143);
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, &v206);

      *(v138 + 14) = v147;
      *(v138 + 22) = 2080;
      v136 = v168;
      v148 = NotificationModel.description.getter();
      v150 = v149;
      (*(v134 + 8))(v135, v136);
      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &v206);

      *(v138 + 24) = v151;
      _os_log_impl(&dword_24234D000, v137, v205, "Converted notification (displayID = (%s), message.id = %s) to %s", v138, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v139, -1, -1);
      MEMORY[0x245D0E5A0](v138, -1, -1);

      (*(v163 + 8))(v179, v164);
      (*(v184 + 8))(v195, v181);
    }

    else
    {

      (*(v134 + 8))(v135, v136);
      (*(v163 + 8))(v179, v164);
      (*(v78 + 8))(v53, v77);
    }

    (*(v80 + 8))(v203, v194);
    outlined destroy of RequestTemporaryContentModel?(v170, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
    (*(v172 + 8))(v169, v173);
    v152 = v153[0];
    (*(v134 + 32))(v153[0], v165, v136);
    return (*(v134 + 56))(v152, 0, 1, v136);
  }
}

uint64_t closure #1 in CAFActionNotificationSource.convert(message:requestContent:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    dispatch thunk of CAFRequestTemporaryContentObservable.on.setter();
    dispatch thunk of CAFActionRemoteNotificationObservable.trailingButtonState.setter();
    v2 = dispatch thunk of CAFActionRemoteNotificationObservable.trailingButton.getter();
    v3 = [v2 contentURLAction];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v7 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      (*(v1 + 40))(v4, v6);
    }
  }

  return result;
}

void closure #1 in closure #2 in CAFActionNotificationSource.convert(message:requestContent:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, NSObject *a9)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a1;
  if (a1 > 0xFF)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v11 = a9;
  v12 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v13 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v13, v12))
  {
    log = a9;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v37);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v37);
    *(v14 + 22) = 256;
    *(v14 + 24) = v9;
    _os_log_impl(&dword_24234D000, v13, v12, "Notification (%s:%s) button %hhu pressed", v14, 0x19u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v15, -1, -1);
    v16 = v14;
    v11 = a9;
    MEMORY[0x245D0E5A0](v16, -1, -1);
  }

  if (a6)
  {
    v17 = static os_log_type_t.info.getter();
    loga = static OS_os_log.default.getter();
    if (os_log_type_enabled(loga, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[0] = v19;
      *v18 = 136315650;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v37);
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v37);
      *(v18 + 22) = 256;
      *(v18 + 24) = v9;
      _os_log_impl(&dword_24234D000, loga, v17, "Notification (%s:%s) button %hhu is disabled.", v18, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v19, -1, -1);
      MEMORY[0x245D0E5A0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      dispatch thunk of CAFActionRemoteNotificationObservable.userAction.setter();
    }

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      dispatch thunk of CAFRequestTemporaryContentObservable.on.setter();
    }

    v24 = [v11 contentURLAction];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      static os_log_type_t.info.getter();
      v29 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      swift_beginAccess();
      v30 = swift_weakLoadStrong();
      if (v30)
      {
        (*(v30 + 40))(v26, v28);
      }
    }
  }
}

uint64_t CAFActionNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFActionNotificationSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFActionNotificationSource()
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

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for IndexPath();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5CAFUI29CAFUIAutomakerSettingsSectionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_242398CB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242398D58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242398D98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242398E20()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242398E74()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242398EAC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_242398F48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t CAFAlertNotificationSource.output.getter()
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

BOOL String.isModalAlert.getter()
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

  if (v7 != 0xD000000000000017 || v8 != 0x800000024242A840)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v3 + 8))(v5, v2);
    return (v10 & 1) != 0;
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

void *CAFAlertNotificationSource.__allocating_init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a2;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v34);
  v32 = v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v33);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v37 = v29[0];
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v24 = v30;
  Publishers.CombineLatest.init(_:_:)();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #3 in CAFAlertNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v26 + 24) = v25;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v27 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v24, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v20;
}