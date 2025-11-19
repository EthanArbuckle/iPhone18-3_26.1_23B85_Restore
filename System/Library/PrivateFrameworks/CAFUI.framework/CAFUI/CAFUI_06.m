void closure #1 in CAFUITileDataSource.updated(setting:)(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v29 = a3;
  v30 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = *a1;
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = 0;
    v31 = (v7 + 8);
    v36 = (v7 + 32);
    v37 = v7 + 16;
    v15 = MEMORY[0x277D84F90];
    v34 = a2;
    v35 = v6;
    v32 = v13;
    v33 = v12;
    while (v14 < *(v12 + 16))
    {
      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v17 = *(v7 + 72);
      (*(v7 + 16))(v11, v12 + v16 + v17 * v14, v6);
      if (CAFUITileDataSource.validate(indexPath:)())
      {
        v18 = *v36;
        (*v36)(v38, v11, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v39;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v15 = v39;
        }

        *(v15 + 16) = v21 + 1;
        v22 = v15 + v16 + v21 * v17;
        v6 = v35;
        v18(v22, v38, v35);
        v12 = v33;
        v13 = v32;
      }

      else
      {
        (*v31)(v11, v6);
      }

      if (v13 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_13:

    if (*(v15 + 16))
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v39 = 34;
      v40 = 0xE100000000000000;
      v23 = [v29 userVisibleLabel];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      MEMORY[0x245D0D240](v24, v26);

      MEMORY[0x245D0D240](0xD000000000000013, 0x800000024242C650);
      v27 = MEMORY[0x245D0D320](v15, v6);
      MEMORY[0x245D0D240](v27);

      specialized static CAFUILogger.default(_:function:file:line:)(v39, v40, 0xD000000000000011, 0x800000024242C520, 547);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v30 reconfigureItemsAtIndexPaths_];
    }

    else
    {
    }
  }
}

void CAFUITileDataSource.automakerSettingService(_:didUpdateProminenceInfo:)(void *a1)
{
  _StringGuts.grow(_:)(31);

  v2 = [a1 userVisibleLabel];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x245D0D240](v3, v5);

  MEMORY[0x245D0D240](0xD00000000000001ALL, 0x800000024242C1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24CAFProminenceInformationCSgMd);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFProminenceInformation and conformance NSObject, &lazy cache variable for type metadata for CAFProminenceInformation);
  v6 = Optional<A>.description.getter();
  MEMORY[0x245D0D240](v6);

  specialized static CAFUILogger.default(_:function:file:line:)(34, 0xE100000000000000, 0xD000000000000033, 0x800000024242C1E0, 561);

  CAFUITileDataSource.reloadView()();
}

void CAFUITileDataSource.automakerSettingService(_:didUpdateHidden:)(void *a1, char a2)
{
  _StringGuts.grow(_:)(23);

  v4 = [a1 userVisibleLabel];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x245D0D240](v5, v7);

  MEMORY[0x245D0D240](0xD000000000000012, 0x800000024242C220);
  if (a2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x245D0D240](v8, v9);

  specialized static CAFUILogger.default(_:function:file:line:)(34, 0xE100000000000000, 0xD00000000000002BLL, 0x800000024242C240, 566);

  CAFUITileDataSource.reloadView()();
}

void CAFUITileDataSource.automakerSettingService(_:didUpdateDisabled:)(void *a1, char a2)
{
  _StringGuts.grow(_:)(25);

  v4 = [a1 userVisibleLabel];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x245D0D240](v5, v7);

  MEMORY[0x245D0D240](0xD000000000000014, 0x800000024242C270);
  if (a2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x245D0D240](v8, v9);

  specialized static CAFUILogger.default(_:function:file:line:)(34, 0xE100000000000000, 0xD00000000000002DLL, 0x800000024242C290, 571);

  CAFUITileDataSource.updated(setting:)(a1);
}

void CAFUITileDataSource.ancestorHidden(_:)(void *a1)
{
  _StringGuts.grow(_:)(20);

  v2 = [a1 userVisibleLabel];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x245D0D240](v3, v5);

  MEMORY[0x245D0D240](0xD000000000000011, 0x800000024242C450);
  specialized static CAFUILogger.default(_:function:file:line:)(34, 0xE100000000000000, 0xD000000000000012, 0x800000024242C470, 826);

  CAFUITileDataSource.reloadView()();
}

uint64_t CAFUITileDataSource.ancestorDisabled(_:)(void *a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(22);

  aBlock = 34;
  v19 = 0xE100000000000000;
  v4 = [a1 userVisibleLabel];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x245D0D240](v5, v7);

  MEMORY[0x245D0D240](0xD000000000000013, 0x800000024242C490);
  specialized static CAFUILogger.default(_:function:file:line:)(34, 0xE100000000000000, 0xD000000000000014, 0x800000024242C4B0, 831);

  v9 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
    v11 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    if (!(v11 >> 62))
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v12 = *(v2 + v10);
      if (v12 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_6:
          v13 = objc_opt_self();
          v14 = swift_allocObject();
          *(v14 + 16) = v9;
          *(v14 + 24) = 0;
          v15 = swift_allocObject();
          *(v15 + 16) = partial apply for closure #1 in CAFUITileDataSource.ancestorDisabled(_:);
          *(v15 + 24) = v14;
          v22 = partial apply for thunk for @callee_guaranteed () -> ();
          v23 = v15;
          aBlock = MEMORY[0x277D85DD0];
          v19 = 1107296256;
          v20 = thunk for @escaping @callee_guaranteed () -> ();
          v21 = &block_descriptor_6;
          v16 = _Block_copy(&aBlock);
          v17 = v9;

          [v13 performWithoutAnimation_];

          _Block_release(v16);
          LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

          if ((v13 & 1) == 0)
          {
            return result;
          }

LABEL_12:
          __break(1u);
          return result;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_12;
    }

    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

void closure #1 in CAFUITileDataSource.listItems.didset(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2424235A0;
  *(v8 + 32) = a2;
  v12[1] = v8;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  [a1 reloadSections_];
}

void CAFUIProminentAncestorObserver.observeAncestors(_:)(int64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5CAFUIP33_0E4D121C5C9C3A69D68EDC06FF2740D730CAFUIProminentAncestorObserver_observedAncestors);
  v33 = OBJC_IVAR____TtC5CAFUIP33_0E4D121C5C9C3A69D68EDC06FF2740D730CAFUIProminentAncestorObserver_observedAncestors;
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting);
    Set.Iterator.init(_cocoa:)();
    v6 = v35;
    v5 = v36;
    v8 = v37;
    v7 = v38;
    v9 = v39;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v6 = *(v1 + OBJC_IVAR____TtC5CAFUIP33_0E4D121C5C9C3A69D68EDC06FF2740D730CAFUIProminentAncestorObserver_observedAncestors);
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v7;
    v15 = v9;
    v16 = v7;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();

      *(v2 + v33) = a1;

      if ((a1 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting);
        Set.Iterator.init(_cocoa:)();
        a1 = v40;
        v20 = v41;
        v21 = v42;
        v22 = v43;
        v23 = v44;
      }

      else
      {
        v24 = -1 << *(a1 + 32);
        v20 = a1 + 56;
        v21 = ~v24;
        v25 = -v24;
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v23 = v26 & *(a1 + 56);
        swift_bridgeObjectRetain_n();
        v22 = 0;
      }

      v27 = (v21 + 64) >> 6;
      if (a1 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v28 = v22;
        v29 = v23;
        v30 = v22;
        if (!v23)
        {
          break;
        }

LABEL_29:
        v31 = (v29 - 1) & v29;
        v32 = *(*(a1 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v32)
        {
LABEL_35:
          outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();
          return;
        }

        while (1)
        {
          [v32 registerObserver_];

          v22 = v30;
          v23 = v31;
          if ((a1 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
            swift_dynamicCast();
            v32 = v34;
            v30 = v22;
            v31 = v23;
            if (v34)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_37;
        }

        if (v30 >= v27)
        {
          goto LABEL_35;
        }

        v29 = *(v20 + 8 * v30);
        ++v28;
        if (v29)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      [v18 unregisterObserver_];

      v7 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = __CocoaSet.Iterator.next()();
      if (v19)
      {
        v34 = v19;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        swift_dynamicCast();
        v18 = v40;
        v16 = v7;
        v17 = v9;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void @objc CAFUIProminentAncestorObserver.automakerSettingService(_:didUpdateDisabled:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = a3;
    v9 = a1;
    a5(v8);
    swift_unknownObjectRelease();
  }
}

id CAFUITileDataSource.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t CAFVolume.identifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t protocol witness for CAFUITileIdentifiable.identifier.getter in conformance CAFAutomakerSetting()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CAFUITileDataSource.updated(setting:)(void *a1)
{
  v39 = a1;
  v38 = type metadata accessor for UUID();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isEscapingClosureAtFileLocation = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (!isEscapingClosureAtFileLocation)
  {

    specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000020, 0x800000024242C4F0, 0xD000000000000011, 0x800000024242C520, 903);
    return;
  }

  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v6 = *(v5 + v1);
  if (v6 >> 62)
  {
LABEL_26:
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v7 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v8 != 0;
  v10 = *(v5 + v1);
  if (v10 >> 62)
  {
    v30 = __CocoaSet.count.getter();
    if (v30 < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
    }

    v11 = v30;
    if (!v30)
    {
      return;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  v31 = v9;
  v36 = (v2 + 8);
  v32 = isEscapingClosureAtFileLocation;
  v33 = v11;
  v12 = 0;
  v34 = v5;
  v35 = v1;
  v13 = v36;
  while (1)
  {
    v14 = *(v5 + v1);
    if ((v14 & 0xC000000000000001) != 0)
    {

      MEMORY[0x245D0D9A0](v12, v14);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    type metadata accessor for CAFUIServiceListItem();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = [*(v15 + 128) uniqueIdentifier];
    v17 = v37;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = UUID.uuidString.getter();
    v20 = v19;
    v21 = *v13;
    v22 = v38;
    (*v13)(v17, v38);
    v23 = [v39 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = UUID.uuidString.getter();
    v25 = v24;
    v21(v17, v22);
    if (v18 == v2 && v20 == v25)
    {
      break;
    }

    isEscapingClosureAtFileLocation = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v34;
    v1 = v35;
    v11 = v33;
    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_23;
    }

LABEL_10:
    ++v12;

    if (v11 == v12)
    {

      return;
    }
  }

LABEL_23:
  v26 = objc_opt_self();
  v5 = swift_allocObject();
  v27 = v31;
  v28 = v32;
  v5[2] = v32;
  v5[3] = v12;
  v5[4] = v27;
  v1 = swift_allocObject();
  *(v1 + 16) = partial apply for closure #1 in CAFUITileDataSource.updated(setting:);
  *(v1 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v41 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_53;
  v9 = _Block_copy(aBlock);
  v2 = v41;
  v29 = v28;

  [v26 performWithoutAnimation_];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_31;
  }
}

void closure #1 in CAFUITileDataSource.updated(setting:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_2424235A0;
  MEMORY[0x245D0BE30](a2, a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 reconfigureItemsAtIndexPaths_];
}

uint64_t protocol witness for CAFUITileIdentifiable.identifier.getter in conformance CAFVolume()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_20;
    }

    v98 = v6;
    v10 = *a3;
    v11 = *(*a3 + 8 * v7);
    v101 = *(*a3 + 8 * v9);
    v12 = v101;
    v102 = v11;
    v13 = v11;
    v14 = v12;
    v15 = closure #4 in CAFUITileDataSource.refreshProminentSection()(&v102, &v101);
    if (v4)
    {

      return;
    }

    v16 = v15;

    v17 = v9 + 2;
    v95 = v9;
    v18 = 8 * v9;
    v5 = v10 + v18 + 16;
    while (1)
    {
      v7 = v98;
      if (v98 == v17)
      {
        break;
      }

      v19 = *v5;
      v101 = *(v5 - 8);
      v20 = v101;
      v102 = v19;
      v21 = v19;
      v22 = v20;
      v23 = closure #4 in CAFUITileDataSource.refreshProminentSection()(&v102, &v101);

      ++v17;
      v5 += 8;
      if ((v16 ^ v23))
      {
        v7 = v17 - 1;
        break;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v7 < v95)
    {
      goto LABEL_124;
    }

    if (v95 < v7)
    {
      v25 = 8 * v7 - 8;
      v26 = v7;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v28 = *(v27 + v18);
          *(v27 + v18) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v18 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v9 = v95;
      goto LABEL_20;
    }

    v9 = v95;
LABEL_20:
    v29 = a3[1];
    if (v7 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_120;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_133;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v9 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v9 + a4;
    }

    if (v30 < v9)
    {
      goto LABEL_123;
    }

    if (v7 == v30)
    {
LABEL_133:
      if (v7 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = v9;
      v78 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v96 = v77;
      v79 = v77 - v7;
      v92 = v30;
      do
      {
        v80 = *(v78 + 8 * v7);
        v93 = v79;
        v99 = v5;
        do
        {
          v101 = *v5;
          v81 = v101;
          v102 = v80;
          v82 = v80;
          v83 = v81;
          v84 = closure #4 in CAFUITileDataSource.refreshProminentSection()(&v102, &v101);
          if (v4)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v5;
          v80 = *(v5 + 8);
          *v5 = v80;
          *(v5 + 8) = v86;
          v5 -= 8;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v5 = v99 + 8;
        v79 = v93 - 1;
      }

      while (v7 != v92);
      v7 = v92;
      v9 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v37 = *(v8 + 4);
      v38 = *(v8 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_49:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v8[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v8[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v63 = &v8[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_63:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v8[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_70:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_125;
    }

    v5 = *&v8[16 * v74 + 32];
    v75 = *&v8[16 * v36 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v75), v35);
    if (v4)
    {
      goto LABEL_100;
    }

    if (v75 < v5)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    if (v74 >= *(v8 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v8[16 * v74];
    *(v76 + 4) = v5;
    *(v76 + 5) = v75;
    v103 = v8;
    specialized Array.remove(at:)(v36);
    v8 = v103;
    v33 = *(v103 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
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
  v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_92:
  v103 = v8;
  v88 = *(v8 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v8[16 * v88];
      v90 = *&v8[16 * v88 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v5);
      if (v4)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      if (v88 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v8[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v103 = v8;
      specialized Array.remove(at:)(v88 - 1);
      v8 = v103;
      v88 = *(v103 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = closure #4 in CAFUITileDataSource.refreshProminentSection()(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = closure #4 in CAFUITileDataSource.refreshProminentSection()(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo19CAFAutomakerSettingC_Tt1g5(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      specialized _NativeSet.resize(capacity:)();
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo19CAFAutomakerSettingC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo19CAFAutomakerSettingCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo19CAFAutomakerSettingCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for IndexPath();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation9IndexPathVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo19CAFAutomakerSettingCGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation9IndexPathVGMd);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo19CAFAutomakerSettingCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
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
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
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

        v1 = v24;
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

{
  v1 = v0;
  v32 = type metadata accessor for IndexPath();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation9IndexPathVGMd);
  v6 = static _SetStorage.resize(original:capacity:move:)();
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
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t outlined copy of CAFUISettingsCache?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *specialized CAFUITileDataSource.indexPaths(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a1;
  v84 = a3;
  v80 = type metadata accessor for UUID();
  v7 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = &v72 - v17;
  v18 = *(a2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
  v20 = *(a2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v20 >> 62)
  {
    goto LABEL_100;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v22 = v18;
  v82 = a2;
  v74 = v22;
  if (!v21)
  {
    goto LABEL_19;
  }

  v23 = [v22 numberOfItemsInSection_];
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_105:
    v39 = __CocoaSet.count.getter();
    goto LABEL_29;
  }

  if (v23)
  {
    v72 = v13;
    v81 = v7;
    v75 = v16;
    v7 = 0;
    v18 = (a4 + 8);
    v13 = MEMORY[0x277D84F90];
    v16 = v23;
    while (1)
    {
      v24 = *(a2 + v19);
      if ((v24 & 0xC000000000000001) != 0)
      {

        v4 = MEMORY[0x245D0D9A0](v7, v24);
      }

      else
      {
        if (v7 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v4 = *(v24 + 8 * v7 + 32);
      }

      v25 = [v4 identifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == (*(a4 + 8))(v84, a4) && v28 == v29)
      {
        break;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_22;
      }

      ++v7;

      a2 = v82;
      if (v16 == v7)
      {
        v4 = v13;
        v16 = v75;
        v7 = v81;
        goto LABEL_25;
      }
    }

LABEL_22:
    v32 = v72;
    MEMORY[0x245D0BE30](v7, 0);
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = v33[2];
    v34 = v33[3];
    v36 = v33;
    a2 = v82;
    if (v35 >= v34 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v33);
    }

    v7 = v81;

    v4 = v36;
    *(v36 + 16) = v35 + 1;
    (*(v78 + 32))(v36 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v35, v32, v77);
    v16 = v75;
  }

  else
  {
LABEL_19:
    v4 = MEMORY[0x277D84F90];
  }

LABEL_25:
  v13 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v37 = *(a2 + v13);
  if (v37 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_50;
    }
  }

  else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  v38 = *(a2 + v19);
  if (v38 >> 62)
  {
    goto LABEL_105;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v40 = v39 != 0;
  v41 = *(a2 + v13);
  v73 = v19;
  if (v41 >> 62)
  {
    v42 = __CocoaSet.count.getter();
    if (v42 < 0)
    {
      __break(1u);
      goto LABEL_108;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v42)
  {
LABEL_44:
    v19 = v73;
    goto LABEL_50;
  }

  v72 = v40;
  v75 = v16;
  v81 = v4;
  v4 = 0;
  v18 = (v7 + 8);
  v16 = (a4 + 8);
  v19 = v42;
  while (1)
  {
    v43 = *(a2 + v13);
    if ((v43 & 0xC000000000000001) != 0)
    {

      MEMORY[0x245D0D9A0](v4, v43);
    }

    else
    {
      if (v4 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }
    }

    type metadata accessor for CAFUIServiceListItem();
    v44 = swift_dynamicCastClass();
    if (!v44)
    {
      goto LABEL_34;
    }

    v45 = [*(v44 + 128) uniqueIdentifier];
    v46 = v76;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = UUID.uuidString.getter();
    v48 = v47;
    (*v18)(v46, v80);
    if (v7 == (*(a4 + 8))(v84, a4) && v48 == v49)
    {
      break;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v82;
    if (v7)
    {
      goto LABEL_45;
    }

LABEL_34:
    v4 = (v4 + 1);

    if (v19 == v4)
    {
      v4 = v81;
      goto LABEL_44;
    }
  }

  a2 = v82;
LABEL_45:
  v50 = v75;
  MEMORY[0x245D0BE30](v4, v72);
  v4 = v81;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  }

  v19 = v73;
  v52 = v4[2];
  v51 = v4[3];
  if (v52 >= v51 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1, v4);
  }

  v4[2] = v52 + 1;
  (*(v78 + 32))(v4 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v52, v50, v77);
LABEL_50:
  v53 = *(a2 + v13);
  if (v53 >> 62)
  {
    v54 = __CocoaSet.count.getter();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = *(a2 + v19);
  v56 = v55 >> 62;
  if (!v54)
  {
    if (v56)
    {
      v59 = __CocoaSet.count.getter();
    }

    else
    {
      v59 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v59 != 0;
    goto LABEL_61;
  }

  if (v56)
  {
LABEL_108:
    v57 = __CocoaSet.count.getter();
    goto LABEL_55;
  }

  v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_55:
  v58 = 1;
  if (v57)
  {
    v58 = 2;
  }

LABEL_61:
  v76 = v58;
  v18 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections;
  v80 = *(*(a2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) + 16);
  if (v80)
  {
    v19 = 0;
    v16 = (a4 + 8);
    v75 = (v78 + 32);
    do
    {
      v60 = *(v18 + a2);
      if (v19 >= *(v60 + 16))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        v21 = __CocoaSet.count.getter();
        goto LABEL_4;
      }

      v81 = v4;
      v61 = *(v60 + 48 * v19 + 72);
      if (v61 >> 62)
      {
        v70 = __CocoaSet.count.getter();
        if (v70 < 0)
        {
          goto LABEL_96;
        }

        v4 = v70;
        if (v70)
        {
LABEL_68:
          v7 = 0;
          while (1)
          {
            v62 = *(v18 + a2);
            if (v19 >= *(v62 + 16))
            {
              __break(1u);
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            v63 = *(v62 + 48 * v19 + 72);
            if ((v63 & 0xC000000000000001) != 0)
            {

              a2 = MEMORY[0x245D0D9A0](v7, v63);
            }

            else
            {
              if (v7 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_94;
              }

              a2 = *(v63 + 8 * v7 + 32);
            }

            v64 = [a2 identifier];
            v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;

            if (v13 == (*(a4 + 8))(v84, a4) && v66 == v67)
            {
              break;
            }

            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v13)
            {
              goto LABEL_82;
            }

            ++v7;

            a2 = v82;
            if (v4 == v7)
            {
              goto LABEL_63;
            }
          }

LABEL_82:
          if (__OFADD__(v19, v76))
          {
            goto LABEL_97;
          }

          MEMORY[0x245D0BE30](v7, &v76[v19]);
          v4 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
          }

          v7 = v4[2];
          v69 = v4[3];
          if (v7 >= v69 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v7 + 1, 1, v4);
          }

          v4[2] = v7 + 1;
          (*(v78 + 32))(v4 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v7, v79, v77);
          a2 = v82;
          goto LABEL_64;
        }
      }

      else
      {
        v4 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_68;
        }
      }

LABEL_63:
      v4 = v81;
LABEL_64:
      ++v19;
    }

    while (v19 != v80);
  }

  return v4;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    v5 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting);
    result = MEMORY[0x245D0D3B0](i, v4, v5);
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
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D0D9A0](v9, a1);
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

      specialized Set._Variant.insert(_:)(&v12, v10);

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
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D0D9A0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = CAFUISettingsCache.ancestors(of:)(v4);
      v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_SayAEGTt0g5Tf4g_n(v7);

      specialized Set.formUnion<A>(_:)(v8);

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = v4 - 1;
    v8 = (a1 + 72);
    do
    {
      v9 = v7;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 2);
      v15 = *(v8 - 5);
      v16 = *(v8 - 2);
      v17 = v12;
      v18 = v10;
      v19 = v11;
      v13 = v10;

      closure #1 in CAFUITileDataSource.refreshDataSourceProperties()(&v15, a2, a3);
      v14 = v18;

      if (v3)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 6;
    }

    while (v9);
  }
}

id specialized Set.union<A>(_:)(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x245D0D9A0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        specialized Set._Variant.insert(_:)(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = __CocoaSet.count.getter();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t outlined consume of CAFUISettingsCache?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized CAFUITileDataSource.collectionView(_:numberOfItemsInSection:)(uint64_t a1)
{
  if (CAFUITileDataSource.numSections.getter() <= a1)
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x245D0D240](0xD000000000000032, 0x800000024242C690);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v23);

    MEMORY[0x245D0D240](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
  v4 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = *(v1 + v3);
    if (!(v10 >> 62))
    {
      return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return __CocoaSet.count.getter();
  }

  v7 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_10:
      v9 = *(v1 + v3);
      if (v9 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_12:
          if (a1 == 1)
          {
            goto LABEL_35;
          }

          goto LABEL_23;
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      if (!a1)
      {
LABEL_35:
        v10 = *(v1 + v7);
        if (v10 >> 62)
        {
          return __CocoaSet.count.getter();
        }

        return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_23:
  v12 = *(v1 + v7);
  if (v12 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v14 = *(v1 + v3);
    v15 = v14 >> 62;
    if (i)
    {
      if (!v15)
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_28;
      }

      goto LABEL_45;
    }

    v21 = v15 ? __CocoaSet.count.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v21 != 0;
    v18 = __OFSUB__(a1, v22);
    v19 = a1 - v22;
    if (!v18)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  while ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v16 = __CocoaSet.count.getter();
LABEL_28:
    v17 = 1;
    if (v16)
    {
      v17 = 2;
    }

    v18 = __OFSUB__(a1, v17);
    v19 = a1 - v17;
    if (v18)
    {
      goto LABEL_41;
    }
  }

  v20 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
  if (v19 >= *(v20 + 16))
  {
    goto LABEL_44;
  }

  v10 = *(v20 + 48 * v19 + 72);
  if (!(v10 >> 62))
  {
    return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return __CocoaSet.count.getter();
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2423F5270@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t getEnumTagSinglePayload for CAFUIAutomakerSettingsSection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for CAFUIAutomakerSettingsSection(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_2423F56A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

void outlined consume of (offset: Int, element: CAFUIAutomakerSettingsSection)?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a7)
  {
  }
}

uint64_t sub_2423F580C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void partial apply for closure #1 in CAFUITileDataSource.updated(setting:)()
{
  closure #1 in CAFUITileDataSource.updated(setting:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  closure #1 in CAFUITileDataSource.updated(setting:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_2423F5850()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2423F58A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id CAFUIHeaderFooterTableView.__allocating_init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);

  return [v11 initWithFrame:a1 style:{a2, a3, a4, a5}];
}

id CAFUIHeaderFooterTableView.init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v12.receiver = v5;
  v12.super_class = type metadata accessor for CAFUIHeaderFooterTableView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_style_, a1, a2, a3, a4, a5);
}

id CAFUIHeaderFooterTableView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CAFUIHeaderFooterTableView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CAFUITableViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView] = [objc_allocWithZone(type metadata accessor for CAFUIHeaderFooterTableView()) initWithFrame:a1 style:{0.0, 0.0, 0.0, 0.0}];
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id CAFUITableViewController.init(style:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView] = [objc_allocWithZone(type metadata accessor for CAFUIHeaderFooterTableView()) initWithFrame:a1 style:{0.0, 0.0, 0.0, 0.0}];
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CAFUITableViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall CAFUITableViewController.viewDidLoad()()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for CAFUITableViewController();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 _setHeaderAndFooterViewsFloat_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = _UISolariumEnabled();
  v5 = objc_opt_self();
  v6 = v5;
  if (v4)
  {
    v7 = [v5 clearColor];
    [v1 setBackgroundColor_];

    v8 = [v0 view];
    if (!v8)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = v8;
    v10 = [v6 clearColor];
LABEL_8:
    v14 = v10;
    [v9 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_242423B90;
    v16 = [v1 topAnchor];
    v17 = [v0 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 topAnchor];

      v20 = [v16 constraintEqualToAnchor_];
      *(v15 + 32) = v20;
      v21 = [v1 bottomAnchor];
      v22 = [v0 view];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 bottomAnchor];

        v25 = [v21 constraintEqualToAnchor_];
        *(v15 + 40) = v25;
        v26 = [v1 leadingAnchor];
        v27 = [v0 view];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 safeAreaLayoutGuide];

          v30 = [v29 leadingAnchor];
          v31 = [v26 constraintEqualToAnchor_];

          *(v15 + 48) = v31;
          v32 = [v1 trailingAnchor];
          v33 = [v0 view];
          if (v33)
          {
            v34 = v33;
            v35 = objc_opt_self();
            v36 = [v34 safeAreaLayoutGuide];

            v37 = [v36 trailingAnchor];
            v38 = [v32 constraintEqualToAnchor_];

            *(v15 + 56) = v38;
            type metadata accessor for NSLayoutConstraint();
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v35 activateConstraints_];

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

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = [v5 tableBackgroundColor];
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  [v1 setBackgroundColor_];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v13;
  v10 = [v6 tableBackgroundColor];
  if (v10)
  {
    goto LABEL_8;
  }

LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall CAFUITableViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CAFUITableViewController();
  v15.receiver = v1;
  v15.super_class = v10;
  objc_msgSendSuper2(&v15, sel_viewWillAppear_, a1);
  v11 = *&v1[OBJC_IVAR____TtC5CAFUI24CAFUITableViewController_tableView];
  v12 = [v11 indexPathForSelectedRow];
  if (v12)
  {
    v13 = v12;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v9, v7, v3);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v11 deselectRowAtIndexPath:isa animated:a1];

    (*(v4 + 8))(v9, v3);
  }
}

id CAFUITableViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CAFUITableViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x245D0D180]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CAFUIHeaderFooterTableView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x245D0D860](v3, v5, v6, v7);
    outlined consume of [String : [CAFAutomakerSetting]].Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of [String : [CAFAutomakerSetting]].Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of [String : [CAFAutomakerSetting]].Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t CAFUIDataListItem.__allocating_init(symbol:text:secondaryText:badgeText:showChevron:enabled:settingsCategory:limitedUI:limitedUIImage:selectionAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, char a10, char a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = a8;
  v37 = a6;
  v38 = a7;
  v34 = a5;
  v33 = a4;
  v41 = a13;
  v42 = a9;
  v36 = a16;
  v39 = a14;
  v35 = a15;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v20 + 8))(v22, v19);
  *(v23 + 16) = v24;
  *(v23 + 24) = v26;
  *(v23 + 120) = 0;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0;
  *(v23 + 32) = 0u;
  swift_beginAccess();
  *(v23 + 32) = a1;
  swift_beginAccess();
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;
  swift_beginAccess();
  v27 = v34;
  *(v23 + 56) = v33;
  *(v23 + 64) = v27;
  swift_beginAccess();
  v28 = v38;
  *(v23 + 72) = v37;
  *(v23 + 80) = v28;
  *(v23 + 88) = v40;
  v29 = v36;
  *(v23 + 96) = v35;
  *(v23 + 104) = v29;
  swift_beginAccess();
  *(v23 + 120) = v39;
  v30 = v42;
  *(v23 + 112) = v41;
  *(v23 + 89) = v30;
  *(v23 + 90) = a11;
  *(v23 + 91) = a12 & 1;
  return v23;
}

uint64_t CAFUIDataListItem.init(symbol:text:secondaryText:badgeText:showChevron:enabled:settingsCategory:limitedUI:limitedUIImage:selectionAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, char a10, char a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v42 = a8;
  v39 = a6;
  v40 = a7;
  v36 = a5;
  v35 = a4;
  v43 = a13;
  v44 = a9;
  v38 = a16;
  v41 = a14;
  v37 = a15;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v22 + 8))(v24, v21);
  *(v17 + 16) = v25;
  *(v17 + 24) = v27;
  *(v17 + 120) = 0;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0;
  *(v17 + 32) = 0u;
  swift_beginAccess();
  *(v17 + 32) = a1;
  swift_beginAccess();
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  swift_beginAccess();
  v28 = v36;
  *(v17 + 56) = v35;
  *(v17 + 64) = v28;

  swift_beginAccess();
  v29 = v40;
  *(v17 + 72) = v39;
  *(v17 + 80) = v29;

  *(v17 + 88) = v42;
  v30 = v38;
  *(v17 + 96) = v37;
  *(v17 + 104) = v30;
  swift_beginAccess();
  v31 = *(v17 + 120);
  *(v17 + 120) = v41;

  v32 = v44;
  *(v17 + 112) = v43;
  *(v17 + 89) = v32;
  *(v17 + 90) = a11;
  *(v17 + 91) = a12 & 1;
  return v17;
}

uint64_t key path setter for CAFUIDataListItem.identifier : CAFUIDataListItem(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t CAFUIDataListItem.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void key path setter for CAFUIDataListItem.symbol : CAFUIDataListItem(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *CAFUIDataListItem.symbol.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t key path setter for CAFUIDataListItem.text : CAFUIDataListItem(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t CAFUIDataListItem.text.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t key path setter for CAFUIDataListItem.secondaryText : CAFUIDataListItem(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t CAFUIDataListItem.secondaryText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t key path setter for CAFUIDataListItem.badgeText : CAFUIDataListItem(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
}

uint64_t CAFUIDataListItem.badgeText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t key path setter for CAFUIDataListItem.selectionAction : CAFUIDataListItem(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 96) = v3;
  *(v4 + 104) = v2;
}

uint64_t CAFUIDataListItem.selectionAction.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

void key path setter for CAFUIDataListItem.limitedUIImage : CAFUIDataListItem(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
  v5 = v2;
}

void *CAFUIDataListItem.limitedUIImage.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t CAFUIDataListItem.deinit()
{

  return v0;
}

uint64_t CAFUIDataListItem.__deallocating_deinit()
{
  CAFUIDataListItem.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t CAFUITileViewController.settingsCache.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  v3 = *(v1 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 8);
  v4 = *(v1 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 16);
  v5 = *(v1 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 24);
  v6 = *(v1 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 32);
  v7 = *(v1 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 40);
  v8 = *(v1 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return outlined copy of CAFUISettingsCache?(v2);
}

uint64_t key path setter for CAFUITileViewController.assetManager : CAFUITileViewController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t CAFUITileViewController.assetManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void key path setter for CAFUITileViewController.dataSource : CAFUITileViewController(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CAFUITileViewController.dataSource.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id CAFUITileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CAFUITileViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *CAFUITileViewController.__allocating_init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)(void *a1, char *a2, unint64_t a3, int64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = objc_allocWithZone(v8);
  v14 = *a5;
  v13 = a5[1];
  v15 = a5[2];
  v16 = a5[3];
  v17 = a5[4];
  v18 = a5[5];
  v19 = a5[6];
  v20 = &v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
  *v20 = 0;
  v20[1] = 0;
  v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
  v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
  v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
  *&v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = a1;
  v21 = &v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  *v21 = v14;
  v21[1] = v13;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v21[6] = v19;
  *&v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = a7;
  *&v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = a6;
  v51[0] = v14;
  v51[1] = v13;
  v51[2] = v15;
  v51[3] = v16;
  v51[4] = v17;
  v51[5] = v18;
  v51[6] = v19;
  objc_allocWithZone(type metadata accessor for CAFUITileDataSource());
  v44 = a1;
  outlined copy of CAFUISettingsCache?(v14);

  v22 = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(a2, a3, a4, v51);
  v23 = 0;
  *&v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = v22;
  if (a8)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CF9380]) init];
  }

  *&v12[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = v23;
  v50.receiver = v12;
  v50.super_class = v49;
  v24 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  v25 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
  v26 = *&v24[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
  v27 = v24;
  v28 = [v26 limitUserInterfaces];
  if (v28 && (v29 = v28, v30 = [v28 BOOLValue], v29, v30))
  {
    v31 = [*&v24[v25] configuration];
    v32 = [v31 limitableUserInterfaces];

    v33 = (v32 >> 5) & 1;
  }

  else
  {
    LOBYTE(v33) = 0;
  }

  v27[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v33;
  v34 = [*&v24[v25] limitUserInterfaces];
  if (v34 && (v35 = v34, v36 = [v34 BOOLValue], v35, v36))
  {
    v37 = [*&v24[v25] configuration];
    v38 = [v37 limitableUserInterfaces];

    v39 = (v38 >> 8) & 1;
  }

  else
  {
    LOBYTE(v39) = 0;
  }

  v27[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v39;
  v40 = [objc_opt_self() defaultCenter];
  [v40 addObserver:v27 selector:sel_updateForLimitUIChanged name:*MEMORY[0x277CF8928] object:0];

  return v27;
}

char *CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)(void *a1, char *a2, unint64_t a3, int64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v10 = *a5;
  v11 = a5[1];
  v13 = a5[2];
  v12 = a5[3];
  v14 = a5[4];
  v15 = a5[5];
  v16 = a5[6];
  v17 = &v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
  *v17 = 0;
  v17[1] = 0;
  v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
  v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
  v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
  *&v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = a1;
  v18 = &v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  *v18 = v10;
  v18[1] = v11;
  v18[2] = v13;
  v18[3] = v12;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  *&v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = a7;
  *&v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = a6;
  v46[0] = v10;
  v46[1] = v11;
  v46[2] = v13;
  v46[3] = v12;
  v46[4] = v14;
  v46[5] = v15;
  v46[6] = v16;
  objc_allocWithZone(type metadata accessor for CAFUITileDataSource());
  v44 = a1;
  outlined copy of CAFUISettingsCache?(v10);

  v19 = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(a2, a3, a4, v46);
  v20 = 0;
  *&v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = v19;
  if (a8)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CF9380]) init];
  }

  *&v9[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = v20;
  v45.receiver = v9;
  v45.super_class = type metadata accessor for CAFUITileViewController();
  v21 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  v22 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
  v23 = *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
  v24 = v21;
  v25 = [v23 limitUserInterfaces];
  if (v25 && (v26 = v25, v27 = [v25 BOOLValue], v26, v27))
  {
    v28 = [*&v21[v22] configuration];
    v29 = [v28 limitableUserInterfaces];

    v30 = (v29 >> 5) & 1;
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  v24[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v30;
  v31 = [*&v21[v22] limitUserInterfaces];
  if (v31 && (v32 = v31, v33 = [v31 BOOLValue], v32, v33))
  {
    v34 = [*&v21[v22] configuration];
    v35 = [v34 limitableUserInterfaces];

    v36 = (v35 >> 8) & 1;
  }

  else
  {
    LOBYTE(v36) = 0;
  }

  v24[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v36;
  v37 = [objc_opt_self() defaultCenter];
  [v37 addObserver:v24 selector:sel_updateForLimitUIChanged name:*MEMORY[0x277CF8928] object:0];

  return v24;
}

Swift::Void __swiftcall CAFUITileViewController.viewDidLoad()()
{
  v1 = v0;
  v56.receiver = v0;
  v56.super_class = type metadata accessor for CAFUITileViewController();
  objc_msgSendSuper2(&v56, sel_viewDidLoad);
  CAFUITileViewController.setupRequestContentManager()();
  v2 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v3 = *(*&v0[v2] + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v55 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = 72;
    v5 = v55;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v55 + 16);
      v9 = *(v55 + 24);

      if (v8 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v8 + 1, 1);
      }

      *(v55 + 16) = v8 + 1;
      *(v55 + 8 * v8 + 32) = v7;
      v6 += 48;
      --v4;
    }

    while (v4);
  }

  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_s15FlattenSequenceVySaySayAEGGGTt0g5(v5);
  CAFUITileViewController.setupSettingsObserver(settings:)(v10);

  v11 = [*&v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] configuration];
  v12 = [v11 rightHandDrive];

  v13 = *&v1[v2];
  v14 = specialized static CAFUITileViewController.compositionalLayout(isRHD:dataSource:)(v12);

  v15 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v14 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v16 = v15;
  v17 = MEMORY[0x245D0D180](0xD000000000000017, 0x800000024242C890);
  [v16 setAccessibilityIdentifier_];

  [v16 setContentInset_];
  [v16 setDelegate_];
  v18 = v16;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 clearColor];
  [v20 setBackgroundColor_];

  v23 = [v21 clearColor];
  [v18 setBackgroundColor_];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = v24;
  [v24 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_242423B90;
  v27 = [v18 topAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v31;
  v32 = [v18 bottomAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v26 + 40) = v36;
  v37 = [v18 leadingAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  v40 = [v38 safeAreaLayoutGuide];

  v41 = [v40 leadingAnchor];
  v42 = [v37 constraintEqualToAnchor_];

  *(v26 + 48) = v42;
  v43 = [v18 trailingAnchor];

  v44 = [v1 view];
  if (v44)
  {
    v45 = v44;
    v46 = objc_opt_self();
    v47 = [v45 safeAreaLayoutGuide];

    v48 = [v47 trailingAnchor];
    v49 = [v43 constraintEqualToAnchor_];

    *(v26 + 56) = v49;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 activateConstraints_];

    v51 = *&v1[v2];
    v52 = *&v51[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView];
    *&v51[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView] = v18;
    v53 = v18;
    v54 = v51;

    CAFUITileDataSource.collectionView.didset();
    return;
  }

LABEL_19:
  __break(1u);
}

Swift::Void __swiftcall CAFUITileViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAFUITileViewController();
  v24.receiver = v1;
  v24.super_class = v7;
  objc_msgSendSuper2(&v24, sel_viewWillAppear_, a1);
  v8 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v9 = *(*&v1[v8] + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 indexPathsForSelectedItems];
    if (v11)
    {
      v12 = v11;
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v13 + 16);
      if (v14)
      {
        v16 = *(v4 + 16);
        v15 = v4 + 16;
        v22 = v1;
        v23 = v16;
        v17 = *(v15 + 64);
        v21 = v13;
        v18 = v13 + ((v17 + 32) & ~v17);
        v19 = *(v15 + 56);
        do
        {
          v23(v6, v18, v3);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v15 - 8))(v6, v3);
          [v10 deselectItemAtIndexPath:isa animated:{a1, v21}];

          v18 += v19;
          --v14;
        }

        while (v14);

        v1 = v22;
      }

      else
      {
      }
    }
  }

  [*&v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] suspendNotifications];
}

Swift::Void __swiftcall CAFUITileViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CAFUITileViewController();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  [*&v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] cancelSuspension];
}

Swift::Void __swiftcall CAFUITileViewController.setListItems(_:)(Swift::OpaquePointer a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;
  v7 = v4;

  CAFUITileDataSource.listItems.didset(v6);
}

unint64_t CAFUITileViewController.listItem(at:)()
{
  v1 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = CAFUITileDataSource.listItem(at:)();

  return v3;
}

uint64_t CAFUITileViewController.validate(indexPath:)()
{
  v1 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = CAFUITileDataSource.validate(indexPath:)();

  return v3 & 1;
}

Swift::Void __swiftcall CAFUITileViewController.reloadListItem(item:)(Swift::Int item)
{
  v29 = item;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v12 = *(v9 + v11);
    if (v12 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v13 = *(v9 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    if (v13 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v14 != 0;
    v16 = *(v1 + v8);
    v17 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v18 = *(v16 + v17);
    if (v18 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19 > v29)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v20 = v15;
      v21 = v10;
      v22 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v25 = v29;
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v20;
      aBlock[4] = partial apply for closure #1 in CAFUITileViewController.reloadListItem(item:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_7;
      v26 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x245D0D520](0, v7, v4, v26);
      _Block_release(v26);

      (*(v28 + 8))(v4, v2);
      (*(v27 + 8))(v7, v5);
    }
  }
}

uint64_t closure #1 in CAFUITileViewController.reloadListItem(item:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in CAFUITileViewController.reloadListItem(item:);
  *(v8 + 24) = v7;
  v11[4] = _sIg_Ieg_TRTA_0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_111;
  v9 = _Block_copy(v11);

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in CAFUITileViewController.reloadListItem(item:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
    type metadata accessor for IndexPath();
    *(swift_allocObject() + 16) = xmmword_2424235A0;
    MEMORY[0x245D0BE30](a2, a3);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 reconfigureItemsAtIndexPaths_];
  }
}

uint64_t one-time initialization function for interCell()
{
  result = _UISolariumEnabled();
  v1 = 2.0;
  if (result)
  {
    v1 = 0.0;
  }

  static CAFUITileViewController.LayoutConstants.Spacing.interCell = *&v1;
  return result;
}

uint64_t closure #1 in static CAFUITileViewController.compositionalLayout(isRHD:dataSource:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v75) = a5;
  v77 = a2;
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v71 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UICollectionLayoutListConfiguration();
  v76 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v20 = result;
  v69 = v9;
  v70 = v16;
  if (CAFUITileDataSource.numSections.getter() <= a1)
  {

    return 0;
  }

  v21 = a1;
  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 userInterfaceLayoutDirection];

  v24 = *&v20[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView];
  if (v24)
  {
    v25 = [v24 safeAreaLayoutGuide];
    [v25 layoutFrame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v84.origin.x = v27;
    v84.origin.y = v29;
    v84.size.width = v31;
    v84.size.height = v33;
    Height = CGRectGetHeight(v84);
  }

  else
  {
    [objc_msgSend(v77 container)];
    Height = v35;
    swift_unknownObjectRelease();
  }

  v36 = 12.0;
  if (Height < *(a4 + 24))
  {
    if (v23 == 1)
    {
      if (v75)
      {
LABEL_10:
        v37 = 45.0;
        goto LABEL_14;
      }
    }

    else if ((v75 & 1) == 0)
    {
      goto LABEL_10;
    }

    v36 = 45.0;
  }

  v37 = 12.0;
LABEL_14:
  v38 = *&v20[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings];
  if (v38 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_22;
    }
  }

  else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  if (!v21)
  {
    [objc_msgSend(v77 container)];
    v40 = v39;
    swift_unknownObjectRelease();
    if (v40 + -57.0 >= 496.0)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v42 = objc_opt_self();
    v43 = [v42 fractionalWidthDimension_];
    v44 = [v42 fractionalHeightDimension_];
    v45 = objc_opt_self();
    v46 = [v45 sizeWithWidthDimension:v43 heightDimension:v44];

    v47 = [objc_opt_self() itemWithLayoutSize_];
    v48 = [v42 fractionalWidthDimension_];
    v49 = [v42 estimatedDimension_];
    v50 = [v45 sizeWithWidthDimension:v48 heightDimension:v49];

    v51 = [objc_opt_self() horizontalGroupWithLayoutSize:v50 repeatingSubitem:v47 count:v41];
    v52 = [objc_opt_self() fixedSpacing_];
    [v51 setInterItemSpacing_];

    v53 = [objc_opt_self() sectionWithGroup_];
    [v53 setInterGroupSpacing_];
    [v53 setContentInsets_];

    return v53;
  }

LABEL_22:
  (*(v13 + 104))(v15, *MEMORY[0x277D74D50], v12);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v54 = objc_opt_self();
  v55 = [v54 clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  v56 = [v54 separatorColor];
  v57 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.color.setter();
  v57(&v78, 0);
  v58 = [objc_opt_self() effectWithStyle_];
  v59 = [objc_opt_self() effectForBlurEffect:v58 style:7];
  v60 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.visualEffect.setter();
  v60(&v78, 0);
  v61.n128_f64[0] = CAFUITileDataSource.settingsSection(at:)(v21, &v78);
  v62 = v83;
  if (v83)
  {
    v63 = v79;
    v75 = v78;
    v65 = v80;
    v64 = v81;
    v66 = v82;
    if (v79)
    {
      (*(v71 + 104))(v11, *MEMORY[0x277D74D90], v69, v61.n128_f64[0]);
      UICollectionLayoutListConfiguration.headerMode.setter();
    }

    if (v64)
    {
      (*(v73 + 104))(v72, *MEMORY[0x277D74D88], v74, v61);
      UICollectionLayoutListConfiguration.footerMode.setter();
    }

    outlined consume of CAFUIAutomakerSettingsSection?(v75, v63, v65, v64, v66, v62);
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
  v67 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  if (one-time initialization token for interCell != -1)
  {
    swift_once();
  }

  [v67 setInterGroupSpacing_];
  [v67 setContentInsets_];

  (*(v76 + 8))(v18, v70);
  return v67;
}

void CAFUITileViewController.setupSettingsObserver(settings:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    lazy protocol witness table accessor for type CAFAutomakerSetting and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v18 = v5;
  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();
      return;
    }

    while (1)
    {
      [v16 registerObserver_];

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = __CocoaSet.Iterator.next()();
      if (v17)
      {
        v19 = v17;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
        swift_dynamicCast();
        v16 = v20;
        v14 = v6;
        v15 = v7;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t CAFUITileViewController.setupRequestContentManager()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager);
  if (!v1)
  {
    specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000057, 0x800000024242D3B0, 0xD00000000000001CLL, 0x800000024242D410, 374);
  }

  v2 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_viewSettingSet);
  v5 = *(v3 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentSettings);

  v6 = _sSmsE1poiyxqd___xtSTRd__7ElementQyd__ABRtzlFZSaySo19CAFAutomakerSettingCG_ShyAFGTt2g5(v4, v5);

  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (!result)
  {
  }

LABEL_5:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D0D9A0](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v11)
      {
        if (v1)
        {
          v12 = [v1[2] session];
        }

        else
        {
          v12 = 0;
        }

        swift_getObjectType();
        specialized CAFListContentRepresentable.session.setter(v12);
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();
        objc_setAssociatedObject(v14, &static CAFUIListContentAssociatedObjects.CellValue, v1, 0);
        swift_endAccess();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSmsE1poiyxqd___xtSTRd__7ElementQyd__ABRtzlFZSaySo19CAFAutomakerSettingCG_ShyAFGTt2g5(uint64_t a1, unint64_t a2)
{
  v10 = MEMORY[0x277D84F90];
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = *(a1 + 16);
    v5 = __OFADD__(v3, v9);
    result = v3 + v9;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v3 = __CocoaSet.count.getter();
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = __CocoaSet.count.getter();
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (!v5)
  {
LABEL_4:
    specialized Array.reserveCapacity(_:)(result);

    specialized Array.append<A>(contentsOf:)(v7);

    specialized Array.append<A>(contentsOf:)(v8);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

id CAFUITileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x245D0D180]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void CAFUITileViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v7 = *&v2[v6];
  v8 = CAFUITileDataSource.validate(indexPath:)();

  if ((v8 & 1) == 0)
  {
    return;
  }

  v9 = IndexPath.section.getter();
  v10 = *(*&v3[v6] + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v10 >> 62)
  {
    v32 = v9;
    v11 = __CocoaSet.count.getter();
    v9 = v32;
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

  v14 = *&v3[v6];
  v15 = CAFUITileDataSource.setting(at:)(a2);

  if (!v15)
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    goto LABEL_18;
  }

  v17 = v16;
  if (specialized CAFListContentRepresentable.isLimitedUI.getter())
  {
    _StringGuts.grow(_:)(47);

    *&v85 = 0xD00000000000002CLL;
    *(&v85 + 1) = 0x800000024242A5D0;
    v18 = v15;
    v19 = [v17 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v13;
    v23 = v22;

    MEMORY[0x245D0D240](v20, v23);
    v13 = v21;

    MEMORY[0x245D0D240](46, 0xE100000000000000);
    specialized static CAFUILogger.default(_:function:file:line:)(0xD00000000000002CLL, 0x800000024242A5D0, 0x656C62616E457369, 0xE900000000000064, 243);

LABEL_18:
    v25 = 1;
    goto LABEL_19;
  }

  v24 = [v17 disabled];

  if (v24)
  {
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:v25];

  v27 = IndexPath.section.getter();
  v28 = *&v3[v6];
  v29 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v30 = *&v28[v29];
  if (v30 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_36;
    }
  }

  else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  v31 = *&v28[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings];
  if (v31 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_23:
      if (v27 != 1)
      {
        goto LABEL_36;
      }

LABEL_31:
      v33 = *&v3[v6];
      v34 = CAFUITileDataSource.listItem(at:)();

      if (v34)
      {
        v35 = (*(*v34 + 344))();
        v35(&v85);
        v36 = *(&v85 + 1);
        v28 = v85;
        if (v86 > 1u)
        {
          if (v86 != 3)
          {
            outlined consume of CAFUICellSelectionAction(v85, *(&v85 + 1), 2u);
            goto LABEL_84;
          }

          if (v85 == 0)
          {

            return;
          }

          if (v85 ^ 2 | *(&v85 + 1))
          {
            while (1)
            {
LABEL_84:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_85:
              outlined consume of CAFUICellSelectionAction(v28, v36, 1u);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
          v64 = type metadata accessor for IndexPath();
          v65 = *(v64 - 8);
          v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_2424235A0;
          (*(v65 + 16))(v67 + v66, a2, v64);
          v68 = Array._bridgeToObjectiveC()().super.isa;

          [a1 reloadItemsAtIndexPaths_];
        }

        else
        {
          if (v86)
          {
            goto LABEL_85;
          }

          v37 = [v3 navigationController];
          if (v37)
          {
            v38 = v37;
            [v37 pushViewController:v28 animated:1];
            outlined consume of CAFUICellSelectionAction(v28, v36, 0);
          }

          else
          {
            outlined consume of CAFUICellSelectionAction(v28, v36, 0);
          }
        }

        return;
      }

      goto LABEL_36;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (!v27)
  {
    goto LABEL_31;
  }

LABEL_36:
  v39 = *&v3[v6];
  v36 = CAFUITileDataSource.setting(at:)(a2);

  if (v36)
  {
    v84 = v13;
    ObjectType = swift_getObjectType();
    v41 = swift_conformsToProtocol2();
    if (!v41)
    {
      goto LABEL_84;
    }

    v42 = v41;
    v43 = *(v41 + 40);
    v44 = v36;
    if (v43(ObjectType, v42))
    {
      _StringGuts.grow(_:)(32);

      *&v85 = 0xD00000000000001ELL;
      *(&v85 + 1) = 0x800000024242C970;
      v45 = (*(v42 + 16))(ObjectType, v42);
      MEMORY[0x245D0D240](v45);

      specialized static CAFUILogger.default(_:function:file:line:)(0xD00000000000001ELL, 0x800000024242C970, 0xD000000000000022, 0x800000024242BA50, 450);

      v46 = &v3[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
      v28 = *&v3[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
      if (v28)
      {
        v82 = *(v46 + 5);
        v83 = *(v46 + 6);
        v81 = *(v46 + 4);
        v80 = *(v46 + 3);
        v47 = *(v46 + 1);
        v48 = *(v46 + 2);
        (*(v42 + 96))(&v85, ObjectType, v42);
        v49 = v85;
        if (v86 <= 1u)
        {
          if (!v86)
          {

            v50 = [v3 navigationController];
            if (v50)
            {
              v51 = v50;
              [v50 pushViewController:v49 animated:1];
              outlined consume of CAFUICellSelectionAction(v49, *(&v49 + 1), 0);

              return;
            }

            v72 = *(&v49 + 1);
            v71 = v49;
            v73 = 0;
            goto LABEL_75;
          }

          *&v85 = v28;
          *(&v85 + 1) = v47;
          v86 = v48;
          v87 = v80;
          v88 = v81;
          v89 = v82;
          v90 = v83;
          v69 = CAFUISettingsCache.visibleChildren(of:)(v44);

          if (v69 >> 62)
          {
            v79 = __CocoaSet.count.getter();

            if (!v79)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (!v70)
            {
LABEL_67:
              v72 = *(&v49 + 1);
              v71 = v49;
              v73 = 1;
LABEL_75:
              outlined consume of CAFUICellSelectionAction(v71, v72, v73);

              return;
            }
          }

          CAFUITileViewController.showChildren(_:isProminent:)(v49, v84);
          goto LABEL_67;
        }

        if (v86 == 2)
        {
          specialized static CAFUIRequestContentManager.inputStreamIdentifier(from:)();
          v55 = v54;
          if (v54)
          {
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v56 = v44;
            v57 = CAFDeepLinkSetting.requestContentManager.getter();
            if (!v57)
            {
              specialized static CAFUILogger.error(_:function:file:line:)(0xD00000000000002FLL, 0x800000024242CA10, 0xD000000000000022, 0x800000024242BA50, 470);

LABEL_80:
              outlined consume of CAFUICellSelectionAction(v49, *(&v49 + 1), 2u);

              return;
            }

            v36 = v57;
            v58 = [v3 view];
            if (v58)
            {
              v59 = v58;
              v60 = [v58 window];

              if (v60)
              {
                v61 = [v60 windowScene];

                if (v61)
                {

                  v62 = v3;
                  outlined copy of CAFUICellSelectionAction(v49, *(&v49 + 1), 2u);
                  specialized CAFUIRequestContentManager.open(contentURLString:in:completion:)(v49, *(&v49 + 1), v61, v36, v55 != 0, v62, v49, *(&v49 + 1));
                  outlined consume of CAFUICellSelectionAction(v49, *(&v49 + 1), 2u);

                  v63 = v36[2];
                  [v63 addObserver_];
                  outlined consume of CAFUICellSelectionAction(v49, *(&v49 + 1), 2u);

                  return;
                }
              }

              specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000023, 0x800000024242CA40, 0xD000000000000022, 0x800000024242BA50, 475);

              goto LABEL_80;
            }

            __break(1u);
            goto LABEL_84;
          }

          specialized static CAFUILogger.error(_:function:file:line:)(0xD00000000000003ALL, 0x800000024242C9D0, 0xD000000000000022, 0x800000024242BA50, 465);
          outlined consume of CAFUICellSelectionAction(v49, *(&v49 + 1), 2u);
        }

        else if (v85 != 0)
        {
          if (v85 ^ 1 | *(&v85 + 1))
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
            v74 = type metadata accessor for IndexPath();
            v75 = *(v74 - 8);
            v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_2424235A0;
            (*(v75 + 16))(v77 + v76, a2, v74);
            v78 = Array._bridgeToObjectiveC()().super.isa;

            [a1 reconfigureItemsAtIndexPaths_];

            return;
          }

          if (v84)
          {
            CAFUITileViewController.showSettingAndSiblings(_:)(v44);
          }
        }
      }

      else
      {
        specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000032, 0x800000024242C990, 0xD000000000000022, 0x800000024242BA50, 452);
      }

      return;
    }

    _StringGuts.grow(_:)(40);

    *&v85 = 0x206D657449;
    *(&v85 + 1) = 0xE500000000000000;
    v53 = (*(v42 + 16))(ObjectType, v42);
    MEMORY[0x245D0D240](v53);

    MEMORY[0x245D0D240](0xD000000000000021, 0x800000024242C940);
    specialized static CAFUILogger.default(_:function:file:line:)(0x206D657449, 0xE500000000000000, 0xD000000000000022, 0x800000024242BA50, 446);
  }

  else
  {
    _StringGuts.grow(_:)(43);

    type metadata accessor for IndexPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v52);

    specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000029, 0x800000024242C8D0, 0xD000000000000022, 0x800000024242BA50, 437);
  }
}

uint64_t closure #1 in CAFUITileViewController.collectionView(_:didSelectItemAt:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {
      *(a3 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState) = 2;
      v7 = (a3 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier);
      *v7 = a4;
      v7[1] = a5;
    }

    _StringGuts.grow(_:)(42);

    MEMORY[0x245D0D240](a4, a5);
    MEMORY[0x245D0D240](0xD000000000000010, 0x800000024242D1B0);
    v8 = 485;
  }

  else
  {
    _StringGuts.grow(_:)(46);

    MEMORY[0x245D0D240](a4, a5);
    MEMORY[0x245D0D240](0xD000000000000014, 0x800000024242D190);
    v8 = 487;
  }

  specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000018, 0x800000024242D170, 0xD000000000000022, 0x800000024242BA50, v8);
}

void CAFUITileViewController.showSettingAndSiblings(_:)(char *a1)
{
  v61 = a1;
  v64 = type metadata accessor for IndexPath();
  v62 = *(v64 - 8);
  v5 = MEMORY[0x28223BE20](v64);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v63 = v1;
  v13 = [v1 navigationController];
  if (!v13)
  {
    goto LABEL_57;
  }

  v14 = v13;
  v56 = v10;
  v15 = [v13 viewControllers];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v14;
  v57 = v12;
  if (v16 >> 62)
  {
    goto LABEL_55;
  }

  v3 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_56:

    while (1)
    {
LABEL_57:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_58:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_61;
      }

LABEL_15:

      v21 = [v2 viewControllers];
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = v22;
      specialized Array.append<A>(contentsOf:)(v3);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setViewControllers:isa animated:1];

      v3 = [v2 viewControllers];
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        v25 = __CocoaSet.count.getter();
        if (!v25)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_61;
        }
      }

      v26 = __OFSUB__(v25, 1);
      v27 = v25 - 1;
      if (v26)
      {
        break;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        goto LABEL_65;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v27 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v24 + 8 * v27 + 32);
        goto LABEL_22;
      }

      __break(1u);
    }

    __break(1u);
LABEL_65:
    v28 = MEMORY[0x245D0D9A0](v27, v24);
LABEL_22:
    v58 = v28;

    v29 = swift_dynamicCastClass();
    if (!v29)
    {

      v47 = v58;

      return;
    }

    v30 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
    v31 = v29;
    swift_beginAccess();
    v32 = *(v31 + v30);
    v33 = *&v32[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView];
    if (!v33)
    {

      return;
    }

    v55 = v33;
    v34 = v32;
    v35 = specialized CAFUITileDataSource.indexPaths(for:)(v61, v34);

    v36 = v35[2];
    if (!v36)
    {
LABEL_49:

      return;
    }

    v16 = v62;
    v59 = v35 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v61 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
    swift_beginAccess();
    v37 = 0;
    v2 = (v16 + 16);
    v38 = (v16 + 8);
    while (1)
    {
      if (v37 >= v35[2])
      {
        goto LABEL_54;
      }

      (*(v62 + 16))(v7, &v59[*(v62 + 72) * v37], v64);
      v16 = IndexPath.section.getter();
      v39 = *&v61[v63];
      v40 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
      swift_beginAccess();
      v41 = *(v39 + v40);
      if (v41 >> 62)
      {
        v42 = __CocoaSet.count.getter();
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = *(v39 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
      v44 = v43 >> 62;
      if (v42)
      {
        if (v44)
        {
          v45 = __CocoaSet.count.getter();
        }

        else
        {
          v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v46 = 1;
        if (v45)
        {
          v46 = 2;
        }

        if (v16 >= v46)
        {
LABEL_51:

          v49 = v62 + 32;
          v48 = *(v62 + 32);
          v50 = v56;
          v51 = v64;
          v48(v56, v7, v64);
          v52 = v57;
          v48(v57, v50, v51);
          v53 = IndexPath._bridgeToObjectiveC()().super.isa;
          v54 = v55;
          [v55 scrollToItemAtIndexPath:v53 atScrollPosition:2 animated:0];

          (*(v49 - 24))(v52, v51);
          return;
        }
      }

      else
      {
        if (v44)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_26:
            if ((v16 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_27;
          }
        }

        else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        if (v16 >= 1)
        {
          goto LABEL_51;
        }
      }

LABEL_27:
      ++v37;
      (*v38)(v7, v64);
      if (v36 == v37)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_4:
  v17 = 0;
  v2 = (v16 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x245D0D9A0](v17, v16);
    }

    else
    {
      if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v18 = *(v16 + 8 * v17 + 32);
    }

    v4 = v18;
    v19 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
        goto LABEL_56;
      }

      goto LABEL_4;
    }

    type metadata accessor for CAFUITileViewController();
    if (swift_dynamicCastClass())
    {
      break;
    }

    ++v17;
    if (v19 == v3)
    {
      goto LABEL_56;
    }
  }

  v20 = CAFUITileViewController.hierarchicalControllers(to:)(v61);
  v3 = v20;
  v2 = v60;
  if (v20 >> 62)
  {
    goto LABEL_58;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_61:
}

void CAFUITileViewController.showChildren(_:isProminent:)(char *a1, char a2)
{
  v69 = [v2 navigationController];
  if (!v69 || (v72 = v2, v5 = &v2[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache], (v6 = *&v2[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache]) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = *(v5 + 4);
  v11 = *(v5 + 5);
  v12 = *(v5 + 6);

  v67 = v11;

  v13 = v12;

  v68 = v9;
  if ((a2 & 1) == 0)
  {
    goto LABEL_25;
  }

  v14 = CAFUITileViewController.hierarchicalControllers(to:)(a1);
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_20;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:

    goto LABEL_25;
  }

  while (1)
  {
    v64 = v15;
    v70 = v10;
    v15 = [v69 viewControllers];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = v6;
    v61 = v7;
    v9 = v8;
    if (v16 >> 62)
    {
      break;
    }

    v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_8:
    v7 = 0;
    v6 = v16 & 0xC000000000000001;
    v8 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v17 = MEMORY[0x245D0D9A0](v7, v16);
      }

      else
      {
        if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v17 = *(v16 + 8 * v7 + 32);
      }

      v15 = v17;
      v18 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for CAFUITileViewController();
      if (swift_dynamicCastClass())
      {

        v19 = [v69 viewControllers];
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = v20;
        specialized Array.append<A>(contentsOf:)(v64);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v69 setViewControllers:isa animated:0];

        goto LABEL_24;
      }

      ++v7;
      if (v18 == v10)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_21;
    }
  }

  v10 = __CocoaSet.count.getter();
  if (v10)
  {
    goto LABEL_8;
  }

LABEL_23:

LABEL_24:
  v6 = v60;
  v7 = v61;
  v8 = v9;
  v9 = v68;
  v10 = v70;
LABEL_25:
  v63 = *&v72[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
  v65 = a1;
  v22 = a1;
  v23 = v10;
  v24 = [v22 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v23;
  v71 = v22;
  if (*(v23 + 16))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v27);
    v31 = v30;

    if (v31)
    {
      v32 = *(*(v23 + 56) + 8 * v29);
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v28 = v23;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v75 = v6;
  v76 = v7;
  v77 = v8;
  v78 = v9;
  v79 = v28;
  v80 = v67;
  v81 = v13;
  v66 = CAFUISettingsCache.sections(for:parentSetting:)(v32, v65);

  v33 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
  swift_beginAccess();
  v34 = *&v72[v33];
  v62 = *&v72[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager];
  v73 = type metadata accessor for CAFUITileViewController();
  v35 = v28;
  v36 = objc_allocWithZone(v73);
  v37 = &v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
  *v37 = 0;
  v37[1] = 0;
  v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
  v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
  v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
  *&v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = v63;
  v38 = &v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  *v38 = v6;
  v38[1] = v7;
  v38[2] = v8;
  v38[3] = v68;
  v38[4] = v35;
  v38[5] = v67;
  v38[6] = v13;
  *&v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = v62;
  *&v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = v34;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v78 = v68;
  v79 = v35;
  v80 = v67;
  v81 = v13;
  objc_allocWithZone(type metadata accessor for CAFUITileDataSource());

  outlined copy of CAFUISettingsCache?(v6);

  v39 = v63;
  *&v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v66, &v75);
  *&v36[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = 0;
  v74.receiver = v36;
  v74.super_class = v73;
  v40 = objc_msgSendSuper2(&v74, sel_initWithNibName_bundle_, 0, 0);
  v41 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
  v42 = *&v40[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
  v43 = v40;
  v44 = [v42 limitUserInterfaces];
  if (v44 && (v45 = v44, v46 = [v44 BOOLValue], v45, (v46 & 1) != 0))
  {
    v47 = [*&v40[v41] configuration];
    v48 = [v47 limitableUserInterfaces];

    v49 = (v48 >> 5) & 1;
  }

  else
  {
    LOBYTE(v49) = 0;
  }

  v43[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v49;
  v50 = [*&v40[v41] limitUserInterfaces];
  if (v50 && (v51 = v50, v52 = [v50 BOOLValue], v51, v52))
  {
    v53 = [*&v40[v41] configuration];
    v54 = [v53 limitableUserInterfaces];

    v55 = (v54 >> 8) & 1;
  }

  else
  {
    LOBYTE(v55) = 0;
  }

  v43[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v55;
  v56 = [objc_opt_self() defaultCenter];
  [v56 addObserver:v43 selector:sel_updateForLimitUIChanged name:*MEMORY[0x277CF8928] object:0];

  v57 = v43;
  v58 = [v71 userVisibleLabel];
  if (!v58)
  {
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = MEMORY[0x245D0D180](v59);
  }

  [v57 setTitle_];

  [v69 pushViewController:v57 animated:1];
}

void CAFUITileViewController.resetAndReload()()
{
  v1 = v0;
  if ((CAFUITileViewController.popNavigationControllerToSelf()() & 1) == 0)
  {

    specialized static CAFUILogger.info(_:function:file:line:)(0xD000000000000019, 0x800000024242D0F0, 0xD000000000000010, 0x800000024242D110, 509);
    return;
  }

  v2 = v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache;
  v3 = *(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  if (!v3)
  {
    goto LABEL_14;
  }

  v29 = *(v2 + 24);
  v31 = *(v2 + 40);
  v27 = *(v2 + 8);
  v4 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v5 = *(*(v1 + v4) + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections);
  if (!*(v5 + 16))
  {
    goto LABEL_14;
  }

  v6 = *(v5 + 72);
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_6;
    }

LABEL_14:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x245D0D9A0](0, v6);

    goto LABEL_9;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_9:
    v8 = [v7 category];

    v33 = v3;
    v34 = v27;
    v35 = v29;
    v36 = v31;
    v32 = CAFUISettingsCache.categorySettings(for:)(v8);
LABEL_15:
    v9 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
    v28 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v30 = v1;
    v11 = *(v10 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
    v25 = *(v10 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentCategories);
    v12 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v13 = *(v10 + v12);
    v14 = *(v2 + 8);
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    v17 = *(v2 + 32);
    v18 = *(v2 + 40);
    v19 = *(v2 + 48);
    v33 = *v2;
    *&v34 = v14;
    *(&v34 + 1) = v15;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    objc_allocWithZone(type metadata accessor for CAFUITileDataSource());
    v26 = v11;

    outlined copy of CAFUISettingsCache?(v33);
    v20 = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(v25, v13, v32, &v33);
    v21 = *(v30 + v28);
    *(v30 + v28) = v20;
    v22 = v20;

    v23 = *(v22 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
    *(v22 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView) = v11;
    v24 = v26;

    CAFUITileDataSource.collectionView.didset();
    return;
  }

  __break(1u);
}

uint64_t CAFUITileViewController.popNavigationControllerToSelf()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewControllers];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245D0D9A0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v8 == v0)
        {

          return 1;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  specialized static CAFUILogger.info(_:function:file:line:)(0xD00000000000002ALL, 0x800000024242D0A0, 0xD00000000000001FLL, 0x800000024242D0D0, 542);
  return 0;
}

Swift::Void __swiftcall CAFUITileViewController.dismissIfModal()()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t CAFUITileViewController.hierarchicalControllers(to:)(char *a1)
{
  v2 = &v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  v3 = *&v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  if (!v3)
  {
    v12 = 0xD000000000000033;
    v13 = 0x800000024242D240;
    v14 = 610;
    goto LABEL_5;
  }

  v4 = v1;
  v5 = a1;
  v6 = *(v2 + 1);
  v7 = *(v2 + 2);
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);
  v11 = *(v2 + 5);
  v10 = *(v2 + 6);
  v127 = *&v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  v128 = v6;
  v116 = v7;
  v117 = v6;
  v129 = v7;
  v130 = v8;
  v114 = v10;
  v115 = v8;
  v131 = v9;
  v132 = v11;
  v133 = v10;
  if (CAFUISettingsCache.hasAnyHiddenAncestor(_:)(a1))
  {
    v12 = 0xD000000000000025;
    v13 = 0x800000024242D310;
    v14 = 615;
LABEL_5:
    specialized static CAFUILogger.error(_:function:file:line:)(v12, v13, 0xD00000000000001CLL, 0x800000024242D280, v14);
    return MEMORY[0x277D84F90];
  }

  v15 = [v1 navigationController];
  if (!v15)
  {
LABEL_84:
    specialized static CAFUILogger.debug(_:function:file:line:)(0xD00000000000002ELL, 0x800000024242D2A0, 0xD00000000000001CLL, 0x800000024242D280, 620);
    return MEMORY[0x277D84F90];
  }

  v16 = v15;
  v17 = [v15 viewControllers];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v111 = v3;
  v112 = v4;
  v113 = v11;
  if (v18 >> 62)
  {
    goto LABEL_82;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_83:

    goto LABEL_84;
  }

LABEL_9:
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x245D0D9A0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      v19 = __CocoaSet.count.getter();
      if (!v19)
      {
        goto LABEL_83;
      }

      goto LABEL_9;
    }

    v24 = type metadata accessor for CAFUITileViewController();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      break;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_83;
    }
  }

  v123 = v24;
  v26 = v25;

  v27 = [v5 identifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v121 = v5;
  if (*(v113 + 16))
  {
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v30);
    v33 = v32;

    if (v33)
    {
      v100 = *(*(v113 + 56) + 8 * v31);
      v34 = v100;
      goto LABEL_23;
    }
  }

  else
  {
  }

  v100 = 0;
LABEL_23:
  v35 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();

  v37 = specialized Collection.first.getter(v36);

  if (v37)
  {
    v38 = [v37 category];

    if (!v100)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v38 = 0;
  if (v100)
  {
    goto LABEL_30;
  }

LABEL_27:
  v39 = [v5 category];
  if (v37 && v39 == v38)
  {
    specialized static CAFUILogger.debug(_:function:file:line:)(0xD00000000000003ELL, 0x800000024242D2D0, 0xD00000000000001CLL, 0x800000024242D280, 628);

    return MEMORY[0x277D84F90];
  }

LABEL_30:
  v126 = MEMORY[0x277D84F90];
  v40 = [v5 category];
  v110 = v22;
  if (v37 && v40 == v38)
  {
    goto LABEL_52;
  }

  v41 = *(v26 + v35);
  v42 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v18 = *(v41 + v42);
  if (v18 >> 62)
  {
    goto LABEL_90;
  }

  v43 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    if (v43)
    {
      v44 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x245D0D9A0](v44, v18);
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v44 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_81;
          }

          v45 = *(v18 + 8 * v44 + 32);

          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }
        }

        v5 = v45[90];
        v47 = v45[91];
        v48 = [v121 category];
        if ((v47 & 1) == 0 && v5 == v48)
        {
          break;
        }

        ++v44;
        if (v46 == v43)
        {
          goto LABEL_46;
        }
      }

      v50 = (*(*v45 + 344))(v49);
      v50(&v127);

      v51 = v127;
      v52 = v128;
      if (v129)
      {
        outlined consume of CAFUICellSelectionAction(v127, v128, v129);

        v22 = v110;
      }

      else
      {
        v53 = v127;
        MEMORY[0x245D0D2F0]();
        v22 = v110;
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        outlined consume of CAFUICellSelectionAction(v51, v52, 0);
      }
    }

    else
    {
LABEL_46:

      v22 = v110;
    }

LABEL_52:
    v127 = v111;
    v128 = v117;
    v129 = v116;
    v130 = v115;
    v131 = v9;
    v132 = v113;
    v133 = v114;
    v54 = CAFUISettingsCache.ancestors(of:)(v121);
    v55 = v54;
    if (!(v54 >> 62))
    {
      v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = v112;
      if (!v56)
      {
        goto LABEL_87;
      }

LABEL_54:
      v125 = MEMORY[0x277D84F90];
      v18 = &v125;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v56 < 0)
      {
        __break(1u);
LABEL_90:
        v43 = __CocoaSet.count.getter();
        continue;
      }

      v106 = objc_opt_self();
      v122 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
      v103 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager];
      v102 = v55 & 0xC000000000000001;
      v104 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
      v105 = *MEMORY[0x277CF8928];
      swift_beginAccess();
      v57 = 0;
      v58 = MEMORY[0x277D84F90];
      v108 = v55;
      v109 = v9;
      v107 = v56;
      while (2)
      {
        if (v102)
        {
          v60 = MEMORY[0x245D0D9A0](v57, v55);
        }

        else
        {
          v60 = *(v55 + 8 * v57 + 32);
        }

        v61 = v60;
        v62 = v60;
        v63 = [v62 identifier];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v119 = v62;
        v120 = v57;
        if (*(v9 + 16))
        {
          v67 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v66);
          v69 = v68;

          if (v69)
          {
            v70 = v61;
            v71 = *(*(v9 + 56) + 8 * v67);

            goto LABEL_66;
          }

          v70 = v61;
        }

        else
        {
          v70 = v61;
        }

        v71 = v58;
LABEL_66:
        v127 = v111;
        v128 = v117;
        v129 = v116;
        v130 = v115;
        v9 = v109;
        v131 = v109;
        v132 = v113;
        v133 = v114;
        v118 = CAFUISettingsCache.sections(for:parentSetting:)(v71, v70);

        v72 = *&v112[v104];
        v73 = objc_allocWithZone(v123);
        v74 = &v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
        *v74 = 0;
        v74[1] = 0;
        v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
        v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
        v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
        *&v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = v122;
        v75 = &v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
        *v75 = v111;
        v75[1] = v117;
        v75[2] = v116;
        v75[3] = v115;
        v75[4] = v109;
        v75[5] = v113;
        v75[6] = v114;
        *&v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = v103;
        *&v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = v72;
        v127 = v111;
        v128 = v117;
        v129 = v116;
        v130 = v115;
        v131 = v109;
        v132 = v113;
        v133 = v114;
        objc_allocWithZone(type metadata accessor for CAFUITileDataSource());

        outlined copy of CAFUISettingsCache?(v111);

        outlined copy of CAFUISettingsCache?(v111);
        v76 = v122;

        *&v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v118, &v127);
        *&v73[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = 0;
        v124.receiver = v73;
        v124.super_class = v123;
        v77 = objc_msgSendSuper2(&v124, sel_initWithNibName_bundle_, 0, 0);
        v78 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
        v79 = *&v77[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
        v80 = v77;
        v81 = [v79 limitUserInterfaces];
        if (v81)
        {
          v82 = v81;
          v83 = [v81 BOOLValue];

          v84 = v107;
          if (v83)
          {
            v85 = [*&v77[v78] configuration];
            v86 = [v85 limitableUserInterfaces];

            v87 = (v86 >> 5) & 1;
          }

          else
          {
            LOBYTE(v87) = 0;
          }

          v55 = v108;
        }

        else
        {
          LOBYTE(v87) = 0;
          v84 = v107;
          v55 = v108;
        }

        v80[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v87;
        v88 = [*&v77[v78] limitUserInterfaces];
        if (v88 && (v89 = v88, v90 = [v88 BOOLValue], v89, v90))
        {
          v91 = [*&v77[v78] configuration];
          v92 = [v91 limitableUserInterfaces];

          v93 = (v92 >> 8) & 1;
        }

        else
        {
          LOBYTE(v93) = 0;
        }

        v80[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v93;
        v94 = [v106 defaultCenter];
        [v94 addObserver:v80 selector:sel_updateForLimitUIChanged name:v105 object:0];

        v95 = v80;
        v96 = [v119 userVisibleLabel];
        v22 = v110;
        if (!v96)
        {
          v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = MEMORY[0x245D0D180](v97);
        }

        v57 = v120 + 1;
        [v95 setTitle_];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v59 = v84 == v120 + 1;
        v58 = MEMORY[0x277D84F90];
        if (v59)
        {

          v98 = v125;
          goto LABEL_88;
        }

        continue;
      }
    }

    break;
  }

  v56 = __CocoaSet.count.getter();
  v5 = v112;
  if (v56)
  {
    goto LABEL_54;
  }

LABEL_87:

  v98 = MEMORY[0x277D84F90];
LABEL_88:
  specialized Array.append<A>(contentsOf:)(v98);

  return v126;
}

void CAFUITileViewController.handleSettingHiddenDisabled(_:)(uint64_t a1)
{
  v4 = v1;
  v5 = &v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  v6 = *&v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
  if (!v6)
  {
    goto LABEL_70;
  }

  v38 = *(v5 + 24);
  v39 = *(v5 + 40);
  v37 = *(v5 + 8);
  v8 = &selRef_systemImageNamed_withConfiguration_;
  v9 = [v4 navigationController];
  if (!v9)
  {
    goto LABEL_29;
  }

  v36 = v6;
  v10 = &selRef_systemImageNamed_withConfiguration_;
  v11 = v9;
  v12 = [v9 viewControllers];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    goto LABEL_27;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_28:

LABEL_29:

    specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000040, 0x800000024242D020, 0xD00000000000001FLL, 0x800000024242D000, 665);
    return;
  }

  while (1)
  {
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
LABEL_33:
      v17 = MEMORY[0x245D0D9A0](v16, v13);
      goto LABEL_10;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_33;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      v31 = MEMORY[0x245D0D9A0](0, v3);
LABEL_61:
      v32 = v31;
      v40 = v36;
      v41 = v37;
      v42 = v38;
      v43 = v39;
      if (CAFUISettingsCache.setting(_:isAncestorOf:)(v13, v31))
      {
        CAFUITileViewController.popNavigationControllerToSelf()();
      }

LABEL_65:
      return;
    }

    v17 = *(v13 + 8 * v16 + 32);
LABEL_10:
    v12 = v17;

    v18 = [v4 *(v8 + 3272)];
    if (!v18)
    {
      goto LABEL_72;
    }

    v13 = v18;
    v10 = [v18 v10[413]];

    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v44[4] = v8;
    if (v8 >> 62)
    {
      goto LABEL_35;
    }

    v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_36;
    }

LABEL_13:
    v2 = (v8 + 32);
    while (1)
    {
      v15 = __OFSUB__(v3--, 1);
      if (v15)
      {
        break;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x245D0D9A0](v3, v8);
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v19 = v2[v3];
      }

      v13 = v19;
      type metadata accessor for CAFUITileViewController();
      v10 = swift_dynamicCastClass();

      if (v10)
      {
        MEMORY[0x28223BE20](v20);
        v44[0] = v3;
        partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(v44, &v40);
        v21 = v40;
        goto LABEL_37;
      }

      if (!v3)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_35:
  v3 = __CocoaSet.count.getter();
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_36:
  v21 = 0;
LABEL_37:

  if (!v21)
  {
    goto LABEL_72;
  }

  type metadata accessor for CAFUITileViewController();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_72;
  }

  v23 = v22;
  type metadata accessor for CAFUIPickerViewController();
  v24 = swift_dynamicCastClass();
  if (v24 && *(v24 + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable) == a1 || (type metadata accessor for CAFUICollectionViewController(), (v25 = swift_dynamicCastClass()) != 0) && *(v25 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting) == a1)
  {
    CAFUITileViewController.popNavigationControllerToSelf()();
    goto LABEL_54;
  }

  if (v23 == v4)
  {
LABEL_54:

    return;
  }

  v34 = v21;
  v35 = v12;
  v33 = a1;
  v13 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v26 = *(*&v23[v13] + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections);
  v2 = (v26 + 72);
  v27 = -*(v26 + 16);
  a1 = -1;
  do
  {
    while (1)
    {
      if (v27 + a1 == -1)
      {

        return;
      }

      if (++a1 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_67;
      }

      v13 = *(v2 - 1);
      v3 = *v2;
      v28 = *v2 >> 62;
      if (v28)
      {
        break;
      }

      v29 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v2 += 6;
      if (v29)
      {
        goto LABEL_51;
      }
    }

    v2 += 6;
  }

  while (!__CocoaSet.count.getter());
LABEL_51:
  a1 = v13;

  if (v28)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v33;
  v2 = v35;
  if (!v30)
  {

    goto LABEL_65;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v3 + 32);
    goto LABEL_61;
  }

  __break(1u);
  __break(1u);
LABEL_70:
  specialized static CAFUILogger.error(_:function:file:line:)(0xD00000000000003ELL, 0x800000024242CFC0, 0xD00000000000001FLL, 0x800000024242D000, 660);
LABEL_72:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CAFUITileViewController.updateForLimitUIChanged()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in CAFUITileViewController.updateForLimitUIChanged();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_102;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245D0D520](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void closure #1 in CAFUITileViewController.updateForLimitUIChanged()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource;
  swift_beginAccess();
  v3 = *(*&v1[v2] + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (!v3)
  {
    v8 = v1;
    goto LABEL_64;
  }

  v4 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting;
  v5 = v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting];
  v6 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
  v7 = *&v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
  v8 = v3;
  v9 = [v7 limitUserInterfaces];
  v10 = &selRef_systemImageNamed_withConfiguration_;
  if (!v9 || (v11 = v9, v12 = [v9 BOOLValue], v11, !v12))
  {
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_10:
    v21 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v13 = [*&v1[v6] configuration];
  v14 = [v13 limitableUserInterfaces];

  if ((v5 ^ ((v14 & 0x20) == 0)))
  {
    goto LABEL_10;
  }

LABEL_6:
  v15 = [*&v1[v6] limitUserInterfaces];
  if (v15 && (v16 = v15, v17 = [v15 BOOLValue], v16, v17))
  {
    v18 = [*&v1[v6] configuration];
    v19 = [v18 limitableUserInterfaces];

    v20 = (v19 >> 5) & 1;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  v1[v4] = v20;
  _StringGuts.grow(_:)(48);

  v73 = 0xD000000000000019;
  v74 = 0x800000024242CFA0;
  if (v1[v4])
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v1[v4])
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x245D0D240](v22, v23);

  MEMORY[0x245D0D240](0xD000000000000015, 0x800000024242CF60);
  specialized static CAFUILogger.default(_:function:file:line:)(v73, v74, 0xD000000000000019, 0x800000024242CF80, 729);

  v24 = *&v1[v2];
  v21 = CAFUITileDataSource.limitableIndexPaths.getter();

  if (v1[v4] != 1)
  {
    goto LABEL_43;
  }

  v25 = v1;
  v26 = [v25 navigationController];
  if (!v26)
  {

    goto LABEL_43;
  }

  v27 = v26;
  v28 = [v26 viewControllers];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_23;
    }

LABEL_42:

    goto LABEL_43;
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_42;
  }

LABEL_23:
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    goto LABEL_67;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_70:
    __break(1u);
    return;
  }

  for (i = *(v29 + 8 * v32 + 32); ; i = MEMORY[0x245D0D9A0](v32, v29))
  {
    v34 = i;

    type metadata accessor for CAFUIPickerViewController();
    v35 = swift_dynamicCastClass();
    if (v35 && (v36 = *(v35 + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable + 8), v37 = swift_getObjectType(), v38 = *(v36 + 8), v72 = v21, v39 = v25, v40 = v34, v41 = v34, swift_unknownObjectRetain(), v42 = v38, v10 = &selRef_systemImageNamed_withConfiguration_, LOBYTE(v37) = CAFListContentRepresentable.isLimitedUI.getter(v37, v42), v71 = v41, v41, v34 = v40, v25 = v39, v21 = v72, swift_unknownObjectRelease(), (v37 & 1) != 0))
    {
      v43 = [v25 navigationController];

      if (v43)
      {
      }
    }

    else
    {
      type metadata accessor for CAFUICollectionViewController();
      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v45 = *(v44 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting + 8);
        ObjectType = swift_getObjectType();
        v47 = *(v45 + 8);
        swift_unknownObjectRetain();
        LOBYTE(v47) = CAFListContentRepresentable.isLimitedUI.getter(ObjectType, v47);
        swift_unknownObjectRelease();
        if (v47)
        {
          v48 = [v25 navigationController];

          v10 = &selRef_systemImageNamed_withConfiguration_;
          if (v48)
          {
          }
        }

        else
        {

          v10 = &selRef_systemImageNamed_withConfiguration_;
        }
      }

      else
      {
      }
    }

LABEL_43:
    v49 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting;
    v50 = v1[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting];
    v51 = [*&v1[v6] limitUserInterfaces];
    if (v51 && (v52 = v51, v53 = [v51 v10[210]], v52, v53))
    {
      v54 = [*&v1[v6] configuration];
      v55 = [v54 limitableUserInterfaces];

      if ((v50 ^ ((v55 & 0x100) == 0)))
      {
        goto LABEL_50;
      }
    }

    else if (!v50)
    {
LABEL_50:
      v62 = MEMORY[0x277D84FA0];
      goto LABEL_59;
    }

    v56 = [*&v1[v6] limitUserInterfaces];
    if (v56 && (v57 = v56, v58 = [v56 v10[210]], v57, v58))
    {
      v59 = [*&v1[v6] configuration];
      v60 = [v59 limitableUserInterfaces];

      v61 = (v60 >> 8) & 1;
    }

    else
    {
      LOBYTE(v61) = 0;
    }

    v1[v49] = v61;
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v6 = 0xD000000000000019;
    MEMORY[0x245D0D240](0xD000000000000028, 0x800000024242CF30);
    v63 = v1[v49] ? 1702195828 : 0x65736C6166;
    v64 = v1[v49] ? 0xE400000000000000 : 0xE500000000000000;
    MEMORY[0x245D0D240](v63, v64);

    MEMORY[0x245D0D240](0xD000000000000015, 0x800000024242CF60);
    specialized static CAFUILogger.default(_:function:file:line:)(v73, v74, 0xD000000000000019, 0x800000024242CF80, 747);

    v65 = *&v1[v2];
    v66 = CAFUITileDataSource.infoButtonLimitableIndexPaths.getter();

    v62 = v66;
LABEL_59:
    v67 = specialized Set.union<A>(_:)(v62, v21);
    v68 = v67;
    v21 = *(v67 + 16);
    if (!v21)
    {
      break;
    }

    v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(*(v67 + 16), 0);
    v25 = type metadata accessor for IndexPath();
    v69 = specialized Sequence._copySequenceContents(initializing:)(&v73, (v29 + ((*(*(v25 - 1) + 80) + 32) & ~*(*(v25 - 1) + 80))), v21, v68);
    v32 = outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant();
    if (v69 == v21)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 reloadItemsAtIndexPaths_];

      goto LABEL_63;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_63:

LABEL_64:
}

void CAFUITileViewController.automakerSettingService(_:didUpdateHidden:)(void *a1, char a2)
{
  if (!*&v2[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache])
  {
    specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000034, 0x800000024242CB40, 0xD00000000000002BLL, 0x800000024242C240, 776);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (a2)
  {
    v3 = v2;
    v27 = *&v2[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 40];
    _StringGuts.grow(_:)(16);

    v5 = [a1 userVisibleLabel];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    MEMORY[0x245D0D240](v6, v8);

    MEMORY[0x245D0D240](0x6968207361772022, 0xED00002E6E656464);
    specialized static CAFUILogger.default(_:function:file:line:)(34, 0xE100000000000000, 0xD00000000000002BLL, 0x800000024242C240, 785);

    CAFUITileViewController.handleSettingHiddenDisabled(_:)(a1);
    v9 = [v3 navigationController];
    if (v9)
    {
      v26 = v9;
      v10 = [v9 viewControllers];
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIViewController);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12 >= 2)
      {
        v13 = [a1 identifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (*(v27 + 16))
        {
          v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v16);
          v19 = v18;

          if (v19)
          {
            v20 = *(*(v27 + 56) + 8 * v17);
            v21 = CAFUISettingsCache.visibleChildren(of:)(v20);
            if (v21 >> 62)
            {
              v24 = __CocoaSet.count.getter();

              if (v24)
              {
                goto LABEL_11;
              }
            }

            else
            {
              v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v22)
              {
LABEL_11:

                v23 = v20;
LABEL_15:

                return;
              }
            }

            v25 = [v26 popViewControllerAnimated_];

            v23 = v25;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v23 = v26;
      goto LABEL_15;
    }
  }
}

void CAFUITileViewController.automakerSettingService(_:didUpdateDisabled:)(void *a1, char a2)
{
  if (a2)
  {
    _StringGuts.grow(_:)(18);

    v3 = [a1 userVisibleLabel];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    MEMORY[0x245D0D240](v4, v6);

    MEMORY[0x245D0D240](0x6964207361772022, 0xEF2E64656C626173);
    specialized static CAFUILogger.default(_:function:file:line:)(34, 0xE100000000000000, 0xD00000000000002DLL, 0x800000024242C290, 804);

    CAFUITileViewController.handleSettingHiddenDisabled(_:)(a1);
  }
}

void CAFUITileViewController.createGeneralListItem()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  v6 = *(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  if (v6)
  {
    v36 = v0;
    v7 = v5[1];
    v8 = v5[2];
    v10 = v5[3];
    v9 = v5[4];
    v12 = v5[5];
    v11 = v5[6];
    v38 = v6;
    v39 = v7;
    v40 = v8;
    v41 = v10;
    v42 = v9;
    v43 = v12;
    v44 = v11;

    v37 = v11;

    v13 = CAFUISettingsCache.settings(for:)(0);
    if (v13 >> 62)
    {
      v35 = v2;
      v29 = __CocoaSet.count.getter();
      v2 = v35;

      if (v29)
      {
LABEL_4:
        v35 = v2;
        v34 = v1;
        v15 = MEMORY[0x245D0D180](1918985575, 0xE400000000000000);
        v16 = [objc_opt_self() systemImageNamed_];

        v33 = v16;
        if (v16)
        {
          v17 = MEMORY[0x245D0D180](0xD000000000000010, 0x8000000242429930);
          v18 = CAFUILocalizedStringForKey(v17);

          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v19;

          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = v6;
          *(v21 + 32) = v7;
          *(v21 + 40) = v8;
          *(v21 + 48) = v10;
          *(v21 + 56) = v9;
          v22 = v37;
          *(v21 + 64) = v12;
          *(v21 + 72) = v22;
          *(v21 + 80) = 0;
          type metadata accessor for CAFUIDataListItem();
          v23 = swift_allocObject();
          UUID.init()();
          v24 = UUID.uuidString.getter();
          v26 = v25;
          v27 = *(v35 + 8);

          v27(v4, v34);
          *(v23 + 16) = v24;
          *(v23 + 24) = v26;
          *(v23 + 120) = 0;
          *(v23 + 48) = 0u;
          *(v23 + 64) = 0u;
          *(v23 + 80) = 0;
          *(v23 + 32) = 0u;
          swift_beginAccess();
          *(v23 + 32) = v33;
          swift_beginAccess();
          v28 = v31;
          *(v23 + 40) = v32;
          *(v23 + 48) = v28;
          swift_beginAccess();
          *(v23 + 56) = 0;
          *(v23 + 64) = 0;
          swift_beginAccess();
          *(v23 + 72) = 0;
          *(v23 + 80) = 0;
          *(v23 + 88) = 1;
          *(v23 + 96) = partial apply for closure #1 in CAFUITileViewController.createGeneralListItem();
          *(v23 + 104) = v21;
          swift_beginAccess();
          *(v23 + 120) = 0;

          *(v23 + 112) = 0;
          *(v23 + 89) = 1;
          *(v23 + 91) = 0;
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v14)
      {
        goto LABEL_4;
      }
    }

    outlined consume of CAFUISettingsCache?(v6);
  }
}

void closure #1 in CAFUITileViewController.createGeneralListItem()(void *a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v53 = a1[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v52 = a3;
    v13 = *(Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession);
    v14 = *(a1 + 1);
    v56 = *a1;
    v57 = v14;
    v58 = *(a1 + 2);
    v59 = a1[6];
    v15 = Strong;
    v48 = v10;
    v16 = v6;
    v17 = v13;
    v50 = CAFUISettingsCache.categorySettings(for:)(a2);
    v18 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
    swift_beginAccess();
    v19 = *&v15[v18];
    v51 = v15;
    v20 = *&v15[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager];
    v49 = type metadata accessor for CAFUITileViewController();
    v21 = objc_allocWithZone(v49);
    v22 = &v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
    *v22 = 0;
    v22[1] = 0;
    v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
    v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
    v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = v17;
    v23 = &v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
    *v23 = v16;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    v23[4] = v11;
    v23[5] = v48;
    v23[6] = v53;
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = v20;
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = v19;
    *&v56 = v16;
    *(&v56 + 1) = v7;
    *&v57 = v8;
    *(&v57 + 1) = v9;
    *&v58 = v11;
    *(&v58 + 1) = v48;
    v59 = v53;
    v24 = objc_allocWithZone(type metadata accessor for CAFUITileDataSource());

    outlined init with copy of CAFUISettingsCache(a1, v55);

    v25 = v17;

    outlined init with copy of CAFUISettingsCache(a1, v55);

    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v50, &v56);
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = 0;
    v54.receiver = v21;
    v54.super_class = v49;
    v26 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
    v27 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
    v28 = *&v26[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
    v29 = v26;
    v30 = [v28 limitUserInterfaces];
    if (v30 && (v31 = v30, v32 = [v30 BOOLValue], v31, v32))
    {
      v33 = [*&v26[v27] configuration];
      v34 = [v33 limitableUserInterfaces];

      v35 = (v34 >> 5) & 1;
    }

    else
    {
      LOBYTE(v35) = 0;
    }

    v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v35;
    v36 = [*&v26[v27] limitUserInterfaces];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 BOOLValue];

      v39 = v52;
      if (v38)
      {
        v40 = [*&v26[v27] configuration];
        v41 = [v40 limitableUserInterfaces];

        v42 = (v41 >> 8) & 1;
      }

      else
      {
        LOBYTE(v42) = 0;
      }
    }

    else
    {
      LOBYTE(v42) = 0;
      v39 = v52;
    }

    v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v42;
    v43 = [objc_opt_self() defaultCenter];
    [v43 addObserver:v29 selector:sel_updateForLimitUIChanged name:*MEMORY[0x277CF8928] object:0];

    v44 = v29;
    v45 = MEMORY[0x245D0D180](0xD000000000000010, 0x8000000242429930);
    v46 = CAFUILocalizedStringForKey(v45);

    if (!v46)
    {
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = MEMORY[0x245D0D180](v47);
    }

    [v44 setTitle_];

    *v39 = v44;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }
}

void CAFUITileViewController.createAudioListItem(audioSettings:)(void *a1)
{
  v2 = v1;
  v43 = type metadata accessor for UUID();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  if (a1)
  {
    v7 = a1;
    if (CAFUITileViewController.createSoundItem(audioSettings:)(v7))
    {

      MEMORY[0x245D0D2F0](v8);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v9 = v51;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = [v7 volumes];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFVolume);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = CAFUITileViewController.createVolumeListItem(volumes:)(v11);

    if (v12)
    {

      MEMORY[0x245D0D2F0](v13);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v51;
    }

    else
    {

      v6 = v9;
    }
  }

  v14 = (v2 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  v15 = MEMORY[0x277D84F90];
  v49 = *(v2 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  if (v49)
  {
    v17 = v14[1];
    v16 = v14[2];
    v18 = v14[4];
    v47 = v14[3];
    v48 = v16;
    v46 = v18;
    v20 = v14[5];
    v19 = v14[6];
    v45 = v20;
    v44 = v19;
    v50 = MEMORY[0x277D84F90];
    if (v17 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      v40[0] = v6;
      v40[1] = v2;
      v41 = v5;
      v5 = 0;
      v6 = v17 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v22 = MEMORY[0x245D0D9A0](v5, v17);
        }

        else
        {
          if (v5 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v22 = *(v17 + 8 * v5 + 32);
        }

        v23 = v22;
        v24 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v22 category] != 3 || objc_msgSend(v23, sel_hasHidden) && objc_msgSend(v23, sel_hidden))
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
        if (v24 == v21)
        {
          v15 = v50;
          v5 = v41;
          v6 = v40[0];
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_29:
    outlined consume of CAFUISettingsCache?(v49);
  }

  if (!(v15 >> 62))
  {
    v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_32;
  }

LABEL_44:
  v25 = __CocoaSet.count.getter();
LABEL_32:

  if (v25)
  {
    goto LABEL_33;
  }

  if (v6 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_41;
    }

    if (__CocoaSet.count.getter() == 1)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

LABEL_33:
    v26 = MEMORY[0x245D0D180](0xD000000000000013, 0x8000000242429970);
    v27 = [objc_opt_self() systemImageNamed_];

    if (v27)
    {
      v28 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEE004F494455415FLL);
      v29 = CAFUILocalizedStringForKey(v28);

      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v6;
      *(v33 + 32) = 3;
      type metadata accessor for CAFUIDataListItem();
      v34 = swift_allocObject();
      UUID.init()();
      v35 = UUID.uuidString.getter();
      v37 = v36;
      v38 = *(v42 + 8);

      v38(v5, v43);
      *(v34 + 16) = v35;
      *(v34 + 24) = v37;
      *(v34 + 120) = 0;
      *(v34 + 48) = 0u;
      *(v34 + 64) = 0u;
      *(v34 + 80) = 0;
      *(v34 + 32) = 0u;
      swift_beginAccess();
      *(v34 + 32) = v27;
      swift_beginAccess();
      *(v34 + 40) = v49;
      *(v34 + 48) = v31;
      swift_beginAccess();
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      swift_beginAccess();
      *(v34 + 72) = 0;
      *(v34 + 80) = 0;
      *(v34 + 88) = 1;
      *(v34 + 96) = partial apply for specialized closure #1 in CAFUITileViewController.createAudioListItem(audioSettings:);
      *(v34 + 104) = v33;
      swift_beginAccess();
      *(v34 + 120) = 0;

      *(v34 + 112) = 0;
      *(v34 + 89) = 769;
      *(v34 + 91) = 0;
      return;
    }

    goto LABEL_52;
  }

  v39 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_41;
  }

  if (v39 != 1)
  {
    goto LABEL_33;
  }

LABEL_38:
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x245D0D9A0](0, v6);
    goto LABEL_41;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_41:

    return;
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

id CAFUITileViewController.createSoundItem(audioSettings:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 equalizers];
  if (result || (result = [a1 soundDistribution]) != 0)
  {
    v23 = v2;

    v7 = MEMORY[0x245D0D180](0xD000000000000011, 0x800000024242CBA0);
    v22 = [objc_opt_self() _systemImageNamed_];

    v8 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEE00444E554F535FLL);
    v9 = CAFUILocalizedStringForKey(v8);

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    type metadata accessor for CAFUIDataListItem();
    v15 = swift_allocObject();
    v16 = a1;
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    v20 = *(v3 + 8);

    v20(v5, v23);
    *(v15 + 16) = v17;
    *(v15 + 24) = v19;
    *(v15 + 120) = 0;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0;
    *(v15 + 32) = 0u;
    swift_beginAccess();
    *(v15 + 32) = v22;
    swift_beginAccess();
    *(v15 + 40) = v10;
    *(v15 + 48) = v12;
    swift_beginAccess();
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    swift_beginAccess();
    *(v15 + 72) = 0;
    *(v15 + 80) = 0;
    *(v15 + 88) = 1;
    *(v15 + 96) = partial apply for closure #1 in CAFUITileViewController.createSoundItem(audioSettings:);
    *(v15 + 104) = v14;
    swift_beginAccess();
    *(v15 + 120) = 0;

    result = v15;
    *(v15 + 112) = 0;
    *(v15 + 89) = 1;
    *(v15 + 91) = 1;
  }

  return result;
}

uint64_t CAFUITileViewController.createVolumeListItem(volumes:)(unint64_t a1)
{
  v41 = type metadata accessor for UUID();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      v36 = __CocoaSet.count.getter();
      v21 = MEMORY[0x277D84F90];
      if (v36)
      {
        v6 = v36;
        v42 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v6 & 0x8000000000000000) == 0)
        {
LABEL_4:
          v37 = v1;
          v7 = 0;
          v39 = a1 & 0xC000000000000001;
          v38 = v3;
          v8 = (v3 + 8);
          v40 = a1;
          v9 = v6;
          do
          {
            if (v39)
            {
              v10 = MEMORY[0x245D0D9A0](v7, a1);
            }

            else
            {
              v10 = *(a1 + 8 * v7 + 32);
            }

            v11 = v10;
            ++v7;
            type metadata accessor for CAFUIServiceListItem();
            v12 = swift_allocObject();
            *(v12 + 128) = v11;
            v13 = v11;
            v14 = CAFVolume.title.getter();
            v16 = v15;
            UUID.init()();
            v17 = UUID.uuidString.getter();
            v19 = v18;

            (*v8)(v5, v41);
            *(v12 + 16) = v17;
            *(v12 + 24) = v19;
            *(v12 + 120) = 0;
            *(v12 + 48) = 0u;
            *(v12 + 64) = 0u;
            *(v12 + 80) = 0;
            *(v12 + 32) = 0u;
            swift_beginAccess();
            *(v12 + 32) = 0;
            swift_beginAccess();
            *(v12 + 40) = v14;
            *(v12 + 48) = v16;
            swift_beginAccess();
            *(v12 + 56) = 0;
            *(v12 + 64) = 0;

            swift_beginAccess();
            *(v12 + 72) = 0;
            *(v12 + 80) = 0;

            *(v12 + 88) = 0;
            *(v12 + 96) = protocol witness for CAFListContentRepresentable.cellSelected() in conformance CAFPairedDevicesInformation;
            *(v12 + 104) = 0;
            swift_beginAccess();
            v20 = *(v12 + 120);
            *(v12 + 120) = 0;

            *(v12 + 112) = 0;
            *(v12 + 89) = 1;
            *(v12 + 91) = 1;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            a1 = v40;
          }

          while (v9 != v7);
          v21 = v42;
          goto LABEL_10;
        }

        __break(1u);
      }

      v38 = v3;
LABEL_10:
      v22 = MEMORY[0x245D0D180](0xD000000000000013, 0x8000000242429970);
      v40 = [objc_opt_self() systemImageNamed_];

      v23 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEF454D554C4F565FLL);
      v24 = CAFUILocalizedStringForKey(v23);

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v21;
      type metadata accessor for CAFUIDataListItem();
      v30 = swift_allocObject();
      UUID.init()();
      v31 = UUID.uuidString.getter();
      v33 = v32;
      v34 = *(v38 + 8);

      v34(v5, v41);
      *(v30 + 16) = v31;
      *(v30 + 24) = v33;
      *(v30 + 120) = 0;
      *(v30 + 48) = 0u;
      *(v30 + 64) = 0u;
      *(v30 + 80) = 0;
      *(v30 + 32) = 0u;
      swift_beginAccess();
      *(v30 + 32) = v40;
      swift_beginAccess();
      *(v30 + 40) = v25;
      *(v30 + 48) = v27;
      swift_beginAccess();
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      swift_beginAccess();
      *(v30 + 72) = 0;
      *(v30 + 80) = 0;
      *(v30 + 88) = 1;
      *(v30 + 96) = partial apply for closure #2 in CAFUITileViewController.createVolumeListItem(volumes:);
      *(v30 + 104) = v29;
      swift_beginAccess();
      *(v30 + 120) = 0;

      result = v30;
      *(v30 + 112) = 0;
      *(v30 + 89) = 1;
      *(v30 + 91) = 1;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v42 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

void specialized closure #1 in CAFUITileViewController.createAudioListItem(audioSettings:)(unint64_t a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v58 = a1;
    v61 = a3;
    v8 = *(Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession);
    v9 = (Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
    v10 = *(Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
    v63 = v8;
    if (v10)
    {
      v12 = v9[5];
      v11 = v9[6];
      v14 = v9[3];
      v13 = v9[4];
      v16 = v9[1];
      v15 = v9[2];
      v65 = *(Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
      *&v66 = v16;
      *(&v66 + 1) = v15;
      *&v67 = v14;
      *(&v67 + 1) = v13;
      *&v68 = v12;
      *(&v68 + 1) = v11;
      v17 = v8;
      outlined copy of CAFUISettingsCache?(v10);
      v57 = CAFUISettingsCache.categorySettings(for:)(a2);

      v18 = *v9;
    }

    else
    {
      v19 = v8;
      v18 = 0;
      v57 = MEMORY[0x277D84F90];
    }

    v21 = v9[1];
    v20 = v9[2];
    v22 = v9[3];
    v23 = v9[4];
    v24 = v9[5];
    v25 = v9[6];
    v62 = v9;
    v26 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
    swift_beginAccess();
    v27 = *&v7[v26];
    v60 = v7;
    v28 = *&v7[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager];
    v56 = type metadata accessor for CAFUITileViewController();
    v29 = objc_allocWithZone(v56);
    v30 = &v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
    *v30 = 0;
    v30[1] = 0;
    v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
    v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
    v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
    *&v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = v63;
    v31 = &v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
    *v31 = v18;
    v31[1] = v21;
    v31[2] = v20;
    v31[3] = v22;
    v31[4] = v23;
    v31[5] = v24;
    v31[6] = v25;
    *&v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = v28;
    *&v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = v27;
    v65 = v18;
    *&v66 = v21;
    *(&v66 + 1) = v20;
    *&v67 = v22;
    *(&v67 + 1) = v23;
    *&v68 = v24;
    *(&v68 + 1) = v25;
    objc_allocWithZone(type metadata accessor for CAFUITileDataSource());

    outlined copy of CAFUISettingsCache?(v18);

    v59 = v63;

    outlined copy of CAFUISettingsCache?(v18);

    *&v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(MEMORY[0x277D84F90], v58, v57, &v65);
    *&v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = 0;
    v64.receiver = v29;
    v64.super_class = v56;
    v32 = objc_msgSendSuper2(&v64, sel_initWithNibName_bundle_, 0, 0);
    v33 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
    v34 = *&v32[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
    v35 = v32;
    v36 = [v34 limitUserInterfaces];
    if (v36 && (v37 = v36, v38 = [v36 BOOLValue], v37, v38))
    {
      v39 = [*&v32[v33] configuration];
      v40 = [v39 limitableUserInterfaces];

      v41 = (v40 >> 5) & 1;
    }

    else
    {
      LOBYTE(v41) = 0;
    }

    v42 = v62;
    v35[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v41;
    v43 = [*&v32[v33] limitUserInterfaces];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 BOOLValue];

      if (v45)
      {
        v46 = [*&v32[v33] configuration];
        v47 = [v46 limitableUserInterfaces];

        v48 = (v47 >> 8) & 1;
      }

      else
      {
        LOBYTE(v48) = 0;
      }

      v42 = v62;
    }

    else
    {
      LOBYTE(v48) = 0;
    }

    v35[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v48;
    v49 = [objc_opt_self() defaultCenter];
    [v49 addObserver:v35 selector:sel_updateForLimitUIChanged name:*MEMORY[0x277CF8928] object:0];

    v50 = v35;
    v51 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEE004F494455415FLL);
    v52 = CAFUILocalizedStringForKey(v51);

    if (!v52)
    {
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = MEMORY[0x245D0D180](v53);
    }

    [v50 setTitle_];

    v54 = [v50 navigationItem];
    if (*v42 && (v65 = *v42, v66 = *(v42 + 1), v67 = *(v42 + 3), v68 = *(v42 + 5), CAFUISettingsCache.hasShowAudioLogo.getter()))
    {

      v55 = CAUAssetLibraryManager.createAudioLogoBarButton()();
    }

    else
    {
      v55 = 0;
    }

    [v54 setRightBarButtonItem_];

    *v61 = v50;
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }
}

UIBarButtonItem_optional __swiftcall CAFUITileViewController.createAudioLogoButtonIfApplicable()()
{
  if (*(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache) && CAFUISettingsCache.hasShowAudioLogo.getter())
  {
    swift_beginAccess();

    v2 = CAUAssetLibraryManager.createAudioLogoBarButton()();

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  result.value.super.super.isa = v3;
  result.is_nil = v1;
  return result;
}

void CAFUITileViewController.createRadioListItem()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  v6 = *(v0 + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache);
  if (v6)
  {
    v36 = v0;
    v7 = v5[1];
    v8 = v5[2];
    v10 = v5[3];
    v9 = v5[4];
    v12 = v5[5];
    v11 = v5[6];
    v38 = v6;
    v39 = v7;
    v40 = v8;
    v41 = v10;
    v42 = v9;
    v43 = v12;
    v44 = v11;

    v37 = v11;

    v13 = CAFUISettingsCache.settings(for:)(1u);
    if (v13 >> 62)
    {
      v35 = v2;
      v29 = __CocoaSet.count.getter();
      v2 = v35;

      if (v29)
      {
LABEL_4:
        v35 = v2;
        v34 = v1;
        v15 = MEMORY[0x245D0D180](0x69662E6F69646172, 0xEA00000000006C6CLL);
        v16 = [objc_opt_self() systemImageNamed_];

        v33 = v16;
        if (v16)
        {
          v17 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEE00414944454D5FLL);
          v18 = CAFUILocalizedStringForKey(v17);

          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v19;

          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = v6;
          *(v21 + 32) = v7;
          *(v21 + 40) = v8;
          *(v21 + 48) = v10;
          *(v21 + 56) = v9;
          v22 = v37;
          *(v21 + 64) = v12;
          *(v21 + 72) = v22;
          *(v21 + 80) = 1;
          type metadata accessor for CAFUIDataListItem();
          v23 = swift_allocObject();
          UUID.init()();
          v24 = UUID.uuidString.getter();
          v26 = v25;
          v27 = *(v35 + 8);

          v27(v4, v34);
          *(v23 + 16) = v24;
          *(v23 + 24) = v26;
          *(v23 + 120) = 0;
          *(v23 + 48) = 0u;
          *(v23 + 64) = 0u;
          *(v23 + 80) = 0;
          *(v23 + 32) = 0u;
          swift_beginAccess();
          *(v23 + 32) = v33;
          swift_beginAccess();
          v28 = v31;
          *(v23 + 40) = v32;
          *(v23 + 48) = v28;
          swift_beginAccess();
          *(v23 + 56) = 0;
          *(v23 + 64) = 0;
          swift_beginAccess();
          *(v23 + 72) = 0;
          *(v23 + 80) = 0;
          *(v23 + 88) = 1;
          *(v23 + 96) = partial apply for closure #1 in CAFUITileViewController.createRadioListItem();
          *(v23 + 104) = v21;
          swift_beginAccess();
          *(v23 + 120) = 0;

          *(v23 + 112) = 0;
          *(v23 + 89) = 257;
          *(v23 + 91) = 0;
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v14)
      {
        goto LABEL_4;
      }
    }

    outlined consume of CAFUISettingsCache?(v6);
  }
}

void closure #1 in CAFUITileViewController.createRadioListItem()(void *a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v52 = a1[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = a3;
    v13 = *(Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession);
    v14 = *(a1 + 1);
    v55 = *a1;
    v56 = v14;
    v57 = *(a1 + 2);
    v58 = a1[6];
    v15 = Strong;
    v47 = v10;
    v16 = v6;
    v17 = v13;
    v49 = CAFUISettingsCache.categorySettings(for:)(a2);
    v18 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
    swift_beginAccess();
    v19 = *&v15[v18];
    v50 = v15;
    v20 = *&v15[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager];
    v48 = type metadata accessor for CAFUITileViewController();
    v21 = objc_allocWithZone(v48);
    v22 = &v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
    *v22 = 0;
    v22[1] = 0;
    v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
    v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
    v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = v17;
    v23 = &v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
    *v23 = v16;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    v23[4] = v11;
    v23[5] = v47;
    v23[6] = v52;
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = v20;
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = v19;
    *&v55 = v16;
    *(&v55 + 1) = v7;
    *&v56 = v8;
    *(&v56 + 1) = v9;
    *&v57 = v11;
    *(&v57 + 1) = v47;
    v58 = v52;
    v24 = objc_allocWithZone(type metadata accessor for CAFUITileDataSource());

    outlined init with copy of CAFUISettingsCache(a1, v54);

    v25 = v17;

    outlined init with copy of CAFUISettingsCache(a1, v54);

    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v49, &v55);
    *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = 0;
    v53.receiver = v21;
    v53.super_class = v48;
    v26 = objc_msgSendSuper2(&v53, sel_initWithNibName_bundle_, 0, 0);
    v27 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
    v28 = *&v26[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
    v29 = v26;
    v30 = [v28 limitUserInterfaces];
    if (v30 && (v31 = v30, v32 = [v30 BOOLValue], v31, v32))
    {
      v33 = [*&v26[v27] configuration];
      v34 = [v33 limitableUserInterfaces];

      v35 = (v34 >> 5) & 1;
    }

    else
    {
      LOBYTE(v35) = 0;
    }

    v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v35;
    v36 = [*&v26[v27] limitUserInterfaces];
    if (v36 && (v37 = v36, v38 = [v36 BOOLValue], v37, v38))
    {
      v39 = [*&v26[v27] configuration];
      v40 = [v39 limitableUserInterfaces];

      v41 = (v40 >> 8) & 1;
    }

    else
    {
      LOBYTE(v41) = 0;
    }

    v29[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v41;
    v42 = [objc_opt_self() defaultCenter];
    [v42 addObserver:v29 selector:sel_updateForLimitUIChanged name:*MEMORY[0x277CF8928] object:0];

    v43 = v29;
    v44 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEE00414944454D5FLL);
    v45 = CAFUILocalizedStringForKey(v44);

    if (!v45)
    {
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = MEMORY[0x245D0D180](v46);
    }

    [v43 setTitle_];

    *v51 = v43;
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }
}

void closure #2 in CAFUITileViewController.createVolumeListItem(volumes:)(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession);
    v49 = a2;
    v50 = v6;
    if (a1 >> 62)
    {
      type metadata accessor for CAFUIDataListItem();
      v42 = v6;

      v43 = _bridgeCocoaArray<A>(_:)();

      v46 = v43;
    }

    else
    {
      v7 = v6;

      v46 = a1;
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CAFUIDataListItem();
    }

    v8 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
    v44 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 8];
    v10 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 16];
    v9 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 24];
    v11 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 32];
    v12 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 40];
    v13 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache + 48];
    v14 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager;
    swift_beginAccess();
    v15 = *&v5[v14];
    v48 = v5;
    v16 = *&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager];
    v45 = type metadata accessor for CAFUITileViewController();
    v17 = objc_allocWithZone(v45);
    v18 = &v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier];
    *v18 = 0;
    v18[1] = 0;
    v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = 0;
    v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = 0;
    v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState] = 0;
    *&v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession] = v50;
    v19 = &v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache];
    *v19 = v8;
    v19[1] = v44;
    v19[2] = v10;
    v19[3] = v9;
    v19[4] = v11;
    v19[5] = v12;
    v19[6] = v13;
    *&v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_requestContentManager] = v16;
    *&v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_assetManager] = v15;
    v52[0] = v8;
    v52[1] = v44;
    v52[2] = v10;
    v52[3] = v9;
    v52[4] = v11;
    v52[5] = v12;
    v52[6] = v13;
    objc_allocWithZone(type metadata accessor for CAFUITileDataSource());

    outlined copy of CAFUISettingsCache?(v8);

    v47 = v50;

    outlined copy of CAFUISettingsCache?(v8);

    *&v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_dataSource] = CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(MEMORY[0x277D84F90], v46, MEMORY[0x277D84F90], v52);
    v20 = [objc_allocWithZone(MEMORY[0x277CF9380]) init];
    *&v17[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] = v20;
    v51.receiver = v17;
    v51.super_class = v45;
    v21 = objc_msgSendSuper2(&v51, sel_initWithNibName_bundle_, 0, 0);
    v22 = OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession;
    v23 = *&v21[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession];
    v24 = v21;
    v25 = [v23 limitUserInterfaces];
    if (v25 && (v26 = v25, v27 = [v25 BOOLValue], v26, v27))
    {
      v28 = [*&v21[v22] configuration];
      v29 = [v28 limitableUserInterfaces];

      v30 = (v29 >> 5) & 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v24[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting] = v30;
    v31 = [*&v21[v22] limitUserInterfaces];
    if (v31 && (v32 = v31, v33 = [v31 BOOLValue], v32, v33))
    {
      v34 = [*&v21[v22] configuration];
      v35 = [v34 limitableUserInterfaces];

      v36 = (v35 >> 8) & 1;
    }

    else
    {
      LOBYTE(v36) = 0;
    }

    v24[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting] = v36;
    v37 = [objc_opt_self() defaultCenter];
    [v37 addObserver:v24 selector:sel_updateForLimitUIChanged name:*MEMORY[0x277CF8928] object:0];

    v38 = v24;
    v39 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEF454D554C4F565FLL);
    v40 = CAFUILocalizedStringForKey(v39);

    if (!v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = MEMORY[0x245D0D180](v41);
    }

    [v38 setTitle_];

    *v49 = v38;
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 3;
  }
}

void closure #1 in CAFUITileViewController.createSoundItem(audioSettings:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 3;
    return;
  }

  v5 = Strong;
  v6 = [*(Strong + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_carSession) configuration];
  v7 = [v6 screens];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CARScreenInfo);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

LABEL_10:

    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x245D0D9A0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 availableInteractionModels];

  v12 = (v11 >> 2) & 1;
LABEL_11:
  if (*&v5[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_settingsCache] && CAFUISettingsCache.hasShowAudioLogo.getter())
  {
    swift_beginAccess();

    v13 = CAUAssetLibraryManager.createAudioLogoBarButton()();
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(type metadata accessor for CAFUISoundSettingsViewController());
  v15 = a1;
  v16 = specialized CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(v12, v15, v13);

  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

UIBarButtonItem_optional __swiftcall CAFUITileViewController.createAudioLogoBarButton()()
{
  swift_beginAccess();

  v0 = CAUAssetLibraryManager.createAudioLogoBarButton()();

  v2 = v0;
  result.value.super.super.isa = v2;
  result.is_nil = v1;
  return result;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id CAFUITileViewCompositionalLayout.collectionViewContentSize.getter()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CAFUITileViewCompositionalLayout();
  result = objc_msgSendSuper2(&v10, sel_collectionViewContentSize);
  v4 = v3 + 16.0 + 2.0;
  v5 = *&v0[OBJC_IVAR____TtC5CAFUIP33_81CEDCC541A633F7CC5FD11DB3C3FABC32CAFUITileViewCompositionalLayout_data];
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v7 != v2 || v6 != v4)
  {
    if (v7 == 0.0 && v6 == 0.0)
    {
      v9 = v2;
      result = [v0 invalidateLayout];
      v2 = v9;
    }

    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
  }

  return result;
}

id CAFUITileViewController.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t CAFUITileViewCollectionViewData.__deallocating_deinit()
{
  MEMORY[0x245D0E610](v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15CAFPairedDeviceC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
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

id specialized Sequence._copySequenceContents(initializing:)(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
  lazy protocol witness table accessor for type CAFAutomakerSetting and conformance NSObject();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for IndexPath();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    __CocoaSet.count.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

void *specialized CAFUITileDataSource.indexPaths(for:)(void *a1, uint64_t a2)
{
  v95 = a1;
  v92 = type metadata accessor for UUID();
  v4 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v89 = v6;
  v90 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v83 - v12;
  MEMORY[0x28223BE20](v11);
  v91 = &v83 - v14;
  v15 = *(a2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
  v17 = *(a2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v17 >> 62)
  {
    goto LABEL_50;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v19 = v15;
  v94 = a2;
  v86 = v19;
  v84 = v13;
  if (!v18)
  {
    v93 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v83 = v10;
  v87 = v4;
  v20 = [v19 numberOfItemsInSection_];
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v21 = v20;
  if (v20)
  {
    v22 = 0;
    v93 = MEMORY[0x277D84F90];
    while (1)
    {
      v13 = *(a2 + v16);
      if ((v13 & 0xC000000000000001) != 0)
      {

        v10 = MEMORY[0x245D0D9A0](v22, v13);
      }

      else
      {
        if (v22 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          v18 = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        v10 = *(v13 + 8 * v22 + 32);
      }

      v15 = &selRef__systemImageNamed_withConfiguration_;
      v23 = [v10 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v25;

      v2 = [v95 identifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v27;

      if (v24 == v26 && v4 == v13)
      {

        a2 = v94;
LABEL_24:
        v18 = v83;
        MEMORY[0x245D0BE30](v22, 0);
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v32 = v30[2];
        v31 = v30[3];
        v93 = v30;
        v13 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          goto LABEL_57;
        }

        goto LABEL_25;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v94;
      if (v18)
      {
        goto LABEL_24;
      }

      ++v22;

      if (v21 == v22)
      {
        goto LABEL_22;
      }
    }
  }

  v93 = MEMORY[0x277D84F90];
LABEL_22:
  v4 = v87;
  while (1)
  {
LABEL_26:
    v2 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v34 = *&v2[a2];
    if (v34 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_60;
      }
    }

    else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

    v35 = *(a2 + v16);
    if (v35 >> 62)
    {
LABEL_54:
      v36 = __CocoaSet.count.getter();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v36 != 0;
    v37 = *&v2[a2];
    v85 = v16;
    if (!(v37 >> 62))
    {
      break;
    }

    v54 = __CocoaSet.count.getter();
    if ((v54 & 0x8000000000000000) == 0)
    {
      v10 = v54;
      if (!v54)
      {
        goto LABEL_59;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_57:
    v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v13, 1, v93);
LABEL_25:
    v4 = v87;

    v33 = v93;
    v93[2] = v13;
    (*(v90 + 32))(v33 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v32, v18, v89);
  }

  v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_59:
    v16 = v85;
    goto LABEL_60;
  }

LABEL_32:
  v87 = v32;
  v38 = 0;
  v15 = (v4 + 8);
  while (1)
  {
    v13 = *&v2[a2];
    if ((v13 & 0xC000000000000001) != 0)
    {

      v4 = MEMORY[0x245D0D9A0](v38, v13);
    }

    else
    {
      if (v38 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_49;
      }

      v4 = *(v13 + 8 * v38 + 32);
    }

    type metadata accessor for CAFUIServiceListItem();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      goto LABEL_34;
    }

    v16 = v2;
    v41 = [*(v40 + 128) uniqueIdentifier];
    v42 = v88;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = UUID.uuidString.getter();
    v45 = v44;
    (*v15)(v42, v92);
    v46 = [v95 identifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v43 == v47 && v45 == v49)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v94;
    v2 = v16;
    if (v39)
    {
      goto LABEL_43;
    }

LABEL_34:
    ++v38;

    if (v10 == v38)
    {
      goto LABEL_59;
    }
  }

  a2 = v94;
  v2 = v16;
LABEL_43:
  v50 = v84;
  MEMORY[0x245D0BE30](v38, v87);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93[2] + 1, 1, v93);
  }

  v16 = v85;
  v52 = v93[2];
  v51 = v93[3];
  if (v52 >= v51 >> 1)
  {
    v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1, v93);
  }

  v53 = v93;
  v93[2] = v52 + 1;
  (*(v90 + 32))(v53 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v52, v50, v89);
LABEL_60:
  v55 = *&v2[a2];
  if (v55 >> 62)
  {
    goto LABEL_106;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_62:
  v57 = *(a2 + v16);
  v58 = v57 >> 62;
  if (v56)
  {
    if (v58)
    {
      v59 = __CocoaSet.count.getter();
    }

    else
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = 1;
    if (v59)
    {
      v60 = 2;
    }
  }

  else
  {
    if (v58)
    {
      v61 = __CocoaSet.count.getter();
    }

    else
    {
      v61 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v61 != 0;
  }

  v88 = v60;
  v16 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections;
  v92 = *(*(a2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) + 16);
  if (v92)
  {
    v62 = 0;
    v87 = v90 + 32;
    do
    {
      v64 = *(a2 + v16);
      if (v62 >= *(v64 + 16))
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        v56 = __CocoaSet.count.getter();
        goto LABEL_62;
      }

      v65 = *(v64 + 48 * v62 + 72);
      if (v65 >> 62)
      {
        v82 = __CocoaSet.count.getter();
        if (v82 < 0)
        {
          goto LABEL_104;
        }

        v66 = v82;
        if (v82)
        {
LABEL_78:
          v67 = 0;
          while (1)
          {
            v68 = *(a2 + v16);
            if (v62 >= *(v68 + 16))
            {
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

            v69 = *(v68 + 48 * v62 + 72);
            if ((v69 & 0xC000000000000001) != 0)
            {

              v70 = MEMORY[0x245D0D9A0](v67, v69);
            }

            else
            {
              if (v67 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_102;
              }

              v70 = *(v69 + 8 * v67 + 32);
            }

            v71 = [v70 identifier];
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;

            v75 = [v95 identifier];
            a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v76;

            if (v72 == a2 && v74 == v77)
            {
              break;
            }

            a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (a2)
            {
              goto LABEL_92;
            }

            ++v67;

            a2 = v94;
            if (v66 == v67)
            {
              goto LABEL_74;
            }
          }

LABEL_92:
          if (__OFADD__(v62, v88))
          {
            goto LABEL_105;
          }

          MEMORY[0x245D0BE30](v67, &v88[v62]);
          v79 = v93;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
          }

          v81 = v79[2];
          v80 = v79[3];
          v93 = v79;
          a2 = v94;
          if (v81 >= v80 >> 1)
          {
            v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 > 1, v81 + 1, 1, v93);
          }

          v63 = v93;
          v93[2] = v81 + 1;
          (*(v90 + 32))(v63 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v81, v91, v89);
        }
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v66)
        {
          goto LABEL_78;
        }
      }

LABEL_74:
      ++v62;
    }

    while (v62 != v92);
  }

  return v93;
}