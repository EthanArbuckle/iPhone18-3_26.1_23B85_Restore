uint64_t UIViewController.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(char a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(char *, uint64_t *, uint64_t, void *, uint64_t))
{
  v9 = a8;
  v13 = *a3;
  v14 = *(a3 + 8);
  if ((a1 & 1) == 0)
  {
    v17 = MEMORY[0x277D84F90];
    if ((a2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v29 = *(a3 + 8);
  v15 = *a3;
  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
  }

  v20 = lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  *(v17 + 2) = v19 + 1;
  v21 = &v17[16 * v19];
  *(v21 + 4) = &type metadata for DOCTabSwitcherStyleTrait;
  *(v21 + 5) = v20;
  v9 = a8;
  v13 = v15;
  v14 = v29;
  if (a2)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v23 = *(v17 + 2);
    v22 = *(v17 + 3);
    if (v23 >= v22 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v17);
    }

    v24 = lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
    *(v17 + 2) = v23 + 1;
    v25 = &v17[16 * v23];
    *(v25 + 4) = &type metadata for DOCUIPDocumentLandingModeTrait;
    *(v25 + 5) = v24;
  }

LABEL_12:
  v31 = v13;
  v32 = v14;
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a4;
  v26[4] = a5;

  v27 = a9(v17, &v31, v9, v26, a6);

  return v27;
}

uint64_t static NSUserDefaults.docUserDefaults.getter()
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSUserDefaults.docUserDefaults;
  v1 = static NSUserDefaults.docUserDefaults;
  return v0;
}

void one-time initialization function for docUserDefaults()
{
  v0 = *MEMORY[0x277D060B0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  static NSUserDefaults.docUserDefaults = v3;
}

Swift::String __swiftcall DOCLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(_, tableName, bundle, value, comment);
  object = v7._object;
  countAndFlagsBits = v7._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

id @objc UIView.enclosingTabSwitcherStyle.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 traitCollection];
  v6 = [v5 *a3];

  return v6;
}

uint64_t @objc UITraitCollection.enclosingTabSwitcherStyle.getter(void *a1)
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle);
  v2 = a1;
  UITraitCollection.subscript.getter();

  return v4;
}

unint64_t lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait()
{
  result = lazy protocol witness table cache variable for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait;
  if (!lazy protocol witness table cache variable for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(unint64_t *a1, void (*a2)(uint64_t))
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

void protocol witness for static UITraitDefinition.defaultValue.getter in conformance DOCTabSwitcherStyleTrait(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
  v4 = xmmword_249BA1BA0;
  v3 = specialized static DOCTabSwitcherStyle.preferredStyle(for:traitCollection:splitState:)(v2, 0, &v4);

  *a1 = v3;
}

uint64_t specialized static DOCTabSwitcherStyle.preferredStyle(for:traitCollection:splitState:)(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = *a3;
  if (v5 == 2)
  {
    IsPad = DOCDeviceIsPad();
    if (a2)
    {
LABEL_3:
      v7 = a2;
      [v7 enclosingDocumentLandingMode];
      goto LABEL_10;
    }
  }

  else
  {
    IsPad = (v5 & 1) == 0 && (*(a3 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v13[4] = specialized thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
  v13[3] = &block_descriptor_97;
  v8 = _Block_copy(v13);
  v7 = [objc_opt_self() traitCollectionWithTraits_];
  _Block_release(v8);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
LABEL_10:
  if ([a1 neverAllowsAnyTypeOfTabs])
  {
LABEL_11:

    return 0;
  }

  v7 = v7;
  v10 = DOCUsePhoneIdiomForTraits();
  v11 = DOCUsePadIdiomForTraits();

  if (([objc_opt_self() enclosingTabSwitcherCanBeFloating] & 1) != 0 && v11)
  {
    if (IsPad || [a1 isPickerUI])
    {
      goto LABEL_11;
    }

    v12 = [v7 horizontalSizeClass];

    if (v12 == 2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return v10;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id specialized thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ()(void *a1)
{
  result = DOCDeviceIsPad();
  if (result)
  {

    return [a1 setHorizontalSizeClass_];
  }

  return result;
}

{
  return [a1 setPreferredContentSizeCategory_];
}

{
  return [a1 setPreferredContentSizeCategory_];
}

uint64_t specialized static DOCUserInterfaceStateStore.groupingBehaviorStateIdentifier(for:)(void *a1)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v17 = a1;
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v8 = a1;

  if (v7)
  {
    goto LABEL_16;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
LABEL_15:

    goto LABEL_16;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {

LABEL_13:
    v15 = static DOCUserInterfaceStateStore.DOCGroupStateBehaviorNoSpecificSourceIdentifier;
    v16 = off_27EEF2D40;

    goto LABEL_17;
  }

LABEL_16:
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v18;

LABEL_17:

  if (one-time initialization token for StateStore != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.StateStore);
  v20 = a1;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315650;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000249C01940, &v31);
    *(v23 + 12) = 2080;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v31);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v31);

    *(v23 + 24) = v29;
    _os_log_impl(&dword_2493AC000, v21, v22, "%s in identifier: %s out identifier: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  else
  {
  }

  return v15;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCFocusableCollectionViewNavigationModifierFlags@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t @objc UITraitCollection.enclosingDocumentLandingMode.getter(void *a1)
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCUIPDocumentLandingMode and conformance DOCUIPDocumentLandingMode, type metadata accessor for DOCUIPDocumentLandingMode);
  v2 = a1;
  UITraitCollection.subscript.getter();

  return v4;
}

uint64_t protocol witness for static UITraitDefinition.defaultValue.getter in conformance DOCUIPDocumentLandingModeTrait@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static DOCUIPDocumentLandingModeTrait.defaultValue;
  return result;
}

uint64_t storeEnumTagSinglePayload for DOCAnalyticsActionEvent.FileProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static UTType.doc_identifiers(forContentTypes:)()
{
  v0 = objc_opt_self();
  type metadata accessor for UTType();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [v0 doc:isa identifiersForContentTypes:?];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t storeEnumTagSinglePayload for DOCItemGroupingBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t DOCTypeToFocusController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *&sharedTypeToFocusInputView.super._responderFlags;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8PropertyV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Property(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Property and conformance Property, type metadata accessor for Property);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt32 *a1, Swift::UInt32 a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables15DOCItemSortModeO011DisplayableI0OGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables15DOCItemSortModeOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCNodeGoToCandidateVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables34DOCFileProviderSourceGoToCandidateVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t getEnumTag for DOCItemGroupingBehavior(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA)
  {
    return v1 - 9;
  }

  else
  {
    return 0;
  }
}

char *@objc UISplitViewController.doc_splitViewState.getter(void *a1)
{
  v1 = a1;
  v2 = UISplitViewController.doc_splitViewState.getter();

  return v2;
}

char *@objc UISplitViewController.doc_splitViewStateTransitionEnd.getter(void *a1)
{
  v1 = a1;
  v2 = UISplitViewController.doc_splitViewStateTransitionEnd.getter();

  return v2;
}

uint64_t one-time initialization function for associatedObjectStorageKey()
{
  v0 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v0, v1);
  result = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC011_makeUniqueF3KeyyAA0defI0VSSKFZSo16UIViewControllerC_Tt1g5(0x656761726F7473, 0xE700000000000000, &v3);
  static UIViewController.associatedObjectStorageKey = v3;
  return result;
}

{
  v0 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v0, v1);
  result = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC011_makeUniqueF3KeyyAA0defI0VSSKFZSo6FINodeC_Tt1g5(0xD000000000000010, 0x8000000249BD2EC0, &v3);
  static FINode.associatedObjectStorageKey = v3;
  return result;
}

{
  v0 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v0, v1);
  result = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC011_makeUniqueF3KeyyAA0defI0VSSKFZSo31UIPopoverPresentationControllerC_Tt1g5(0x656761726F7473, 0xE700000000000000, &v3);
  static UIPopoverPresentationController.associatedObjectStorageKey = v3;
  return result;
}

{
  v0 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v0, v1);
  result = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC011_makeUniqueF3KeyyAA0defI0VSSKFZSo16UINavigationItemC_Tt1g5(0x656761726F7473, 0xE700000000000000, &v3);
  static UINavigationItem.associatedObjectStorageKey = v3;
  return result;
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

{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 64);
    do
    {
      v9 = v7;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v8 - 3);
      v13 = *(v8 - 2);
      v15[0] = *(v8 - 4);
      v15[1] = v12;
      v15[2] = v13;
      v15[3] = v11;
      v15[4] = v10;

      LOBYTE(v11) = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v11;
      if ((v4 != 0) | v11 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 5;
    }

    while (v9);
  }

  return v5 & 1;
}

id DOCAssociatedObjectStorage.().init()()
{
  v1 = direct field offset for DOCAssociatedObjectStorage._storage;
  *&v0[v1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCAssociatedObjectStorage();
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys10AnyKeyPathCypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v11, &_ss10AnyKeyPathC_yptMd);
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

char *UISplitViewController.doc_splitViewStateTransitionStart.getter()
{
  return UISplitViewController.doc_splitViewStateTransitionStart.getter();
}

{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v6);

  result = 0;
  v3 = v6[0];
  if (LOBYTE(v6[0]) != 2)
  {
    v4 = v6[1];
    result = [objc_allocWithZone(DOCSplitViewState) init];
    v5 = &result[OBJC_IVAR___DOCSplitViewState__impl];
    *v5 = v3;
    *(v5 + 1) = v4;
  }

  return result;
}

char *@objc UISplitViewController.doc_splitViewStateTransitionStart.getter(void *a1)
{
  v1 = a1;
  v2 = UISplitViewController.doc_splitViewStateTransitionStart.getter();

  return v2;
}

uint64_t outlined destroy of DOCConfigurationProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCConfigurationProviding_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *DOCAssertionCollection.init(debugName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = a3;
  v4[4] = a4;
  v4[5] = a1;
  return v4;
}

BOOL DOCAssertionCollection.hasValidAssertions.getter()
{
  v0 = DOCAssertionCollection.validAssertions.getter();
  if (v0 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

uint64_t static DOCAssociatedObjectStorage.makeUniqueStorageKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v6, v7);
  result = static DOCAssociatedObjectStorage._makeUniqueStorageKey(_:)(a1, a2, &v9);
  *a3 = v9;
  return result;
}

uint64_t static DOCAssociatedObjectStorage._makeUniqueStorageKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (String.count.getter() < 1)
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    MEMORY[0x24C1FAEA0](a1, a2);
    v7 = 46;
    v6 = 0xE100000000000000;
  }

  _StringGuts.grow(_:)(31);
  v8 = _typeName(_:qualified:)();
  v10 = v9;

  v34[3] = v8;
  v34[4] = v10;
  MEMORY[0x24C1FAEA0](0xD00000000000001BLL, 0x8000000249BEE410);
  MEMORY[0x24C1FAEA0](v7, v6);

  v12 = v8;
  v11 = v10;
  if (one-time initialization token for knownStorageKeyStrings != -1)
  {
    swift_once();
  }

  v13 = swift_beginAccess();
  rawValue = knownStorageKeyStrings._rawValue;
  v34[0] = v12;
  v34[1] = v11;
  MEMORY[0x28223BE20](v13, v15);
  v33[2] = v34;

  v16 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v33, rawValue);

  if (v16)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.DocumentManager);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315138;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v34);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_2493AC000, v18, v19, "ERROR: Associated storage key (%s) already exists, choose different uniqueSuffix!", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    else
    {
    }

    v31 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v32 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
    [v31 initWithDomain:v32 code:-1 userInfo:0];

    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v23 = knownStorageKeyStrings._rawValue;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    knownStorageKeyStrings._rawValue = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      knownStorageKeyStrings._rawValue = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = v12;
    v27[5] = v11;
    knownStorageKeyStrings._rawValue = v23;
    swift_endAccess();
    v28 = String.utf8CString.getter();
    v29 = strdup((v28 + 32));

    if (v29)
    {

      *a3 = v29;
    }

    else
    {
      __break(1u);
    }
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

id static DOCAssociatedObjectStorage.attachedTo(_:storageKey:)(void *a1, const void **a2)
{
  v3 = *a2;
  if (objc_getAssociatedObject(a1, *a2))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    outlined destroy of Any?(v11);
    v6 = type metadata accessor for DOCAssociatedObjectStorage();
LABEL_9:
    v5 = [objc_allocWithZone(v6) init];
    objc_setAssociatedObject(a1, v3, v5, 1);
    return v5;
  }

  v4 = type metadata accessor for DOCAssociatedObjectStorage();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = v4;
    goto LABEL_9;
  }

  return v8;
}

uint64_t DOCAssociatedObjectStorage.nonNullValue<A>(for:defaultValue:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a2;
  v7 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - v15;
  (*((*MEMORY[0x277D85000] & *v4) + 0x60))(a1);
  v17 = *(v7 - 8);
  if ((*(v17 + 48))(v16, 1, v7) != 1)
  {
    return (*(v17 + 32))(a4, v16, v7);
  }

  v18 = (*(v9 + 8))(v16, v8);
  v22(v18);
  (*(v17 + 16))(v13, a4, v7);
  (*(v17 + 56))(v13, 0, 1, v7);
  v19 = *((*MEMORY[0x277D85000] & *v4) + 0x68);

  return v19(v13, a1);
}

uint64_t DOCAssociatedObjectStorage._value<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = direct field offset for DOCAssociatedObjectStorage._storage;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    memset(v13, 0, sizeof(v13));
    goto LABEL_6;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v9, v13);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    outlined destroy of CharacterSet?(a1, &_sypSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);

    return outlined destroy of CharacterSet?(v7, &_sypSgMd);
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v19 - v7;
  updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo();
  v11 = MEMORY[0x28223BE20](updated, v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(a2, v15);
    return outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd);
  }

  else
  {
    _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(a1, v13, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for URL();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    outlined destroy of CharacterSet?(a1, &_sypSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 8))(a2, v7);
    return outlined destroy of CharacterSet?(v9, &_sypSgMd);
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    outlined destroy of CharacterSet?(a1, &_s10Foundation3URLVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);

    return outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of AnyHashable(a2);
    *v2 = v13;
  }

  else
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v14;
      }

      outlined destroy of AnyHashable(*(v12 + 48) + 40 * v10);

      specialized _NativeDictionary._delete(at:)(v10, v12);
      result = outlined destroy of AnyHashable(a2);
      *v3 = v12;
    }

    else
    {

      return outlined destroy of AnyHashable(a2);
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of AnyHashable(a2);
    *v2 = v13;
  }

  else
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v14;
      }

      outlined destroy of AnyHashable(*(v12 + 48) + 40 * v10);

      specialized _NativeDictionary._delete(at:)(v10, v12);
      result = outlined destroy of AnyHashable(a2);
      *v3 = v12;
    }

    else
    {

      return outlined destroy of AnyHashable(a2);
    }
  }

  return result;
}

{
  if (*a1)
  {
    v4 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v4;
    v8[2] = *(a1 + 32);
    v9 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of DOCIdentityHashableLocation(a2);
    *v2 = v7;
  }

  else
  {
    outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    outlined destroy of DOCIdentityHashableLocation(a2);
    return outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationVSgMd);
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
  }

  else
  {
    _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(a1, v12, type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    v17 = type metadata accessor for URL();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for AnyKeyPath();
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_0(v22);

  return outlined init with take of Any(a1, v22);
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

uint64_t dispatch thunk of DOCAssociatedObjectStorage.subscript.setter()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
}

uint64_t specialized DOCUIPTraitEnvironment<>._enclosedInUIPDocumentLanding.getter(unint64_t *a1)
{
  type metadata accessor for NSMutableAttributedString(0, a1);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCConfigurationProviding_pMd);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    outlined destroy of DOCConfigurationProviding?(&v9);
    goto LABEL_5;
  }

  v3 = *(&v10 + 1);
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(&v9);
  LOBYTE(v3) = [v5 isInUIPDocumentLanding];

  if ((v3 & 1) == 0)
  {
LABEL_5:
    v7 = [v2 traitCollection];
    v6 = [v7 enclosedInUIPDocumentLanding];

    return v6;
  }

  return 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemSortDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t Array<A>.displayableModes.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = byte_249BBD1A6[v5];
      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + v8 + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

char *UISplitViewController.doc_splitViewState.getter()
{
  result = [v0 doc_splitViewStateTransitionEnd];
  if (!result)
  {
    result = [v0 doc_splitViewStateTransitionStart];
    if (!result)
    {
      v2 = [v0 isCollapsed];
      v3 = [v0 displayMode];
      result = [objc_allocWithZone(DOCSplitViewState) init];
      v4 = &result[OBJC_IVAR___DOCSplitViewState__impl];
      *v4 = v2;
      *(v4 + 1) = v3;
    }
  }

  return result;
}

uint64_t _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC011_makeUniqueF3KeyyAA0defI0VSSKFZSo16UIViewControllerC_Tt1g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void *)@<X4>, char **a5@<X8>)
{
  type metadata accessor for NSMutableAttributedString(0, a3);
  if (String.count.getter() < 1)
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    MEMORY[0x24C1FAEA0](a1, a2);
    v10 = 46;
    v9 = 0xE100000000000000;
  }

  _StringGuts.grow(_:)(31);

  v36 = _typeName(_:qualified:)();
  v37 = v11;
  MEMORY[0x24C1FAEA0](0xD00000000000001BLL, 0x8000000249BEE410);
  MEMORY[0x24C1FAEA0](v10, v9);

  v13 = v36;
  v12 = v37;
  if (one-time initialization token for knownStorageKeyStrings != -1)
  {
    swift_once();
  }

  v14 = swift_beginAccess();
  rawValue = knownStorageKeyStrings._rawValue;
  v35[0] = v36;
  v35[1] = v37;
  MEMORY[0x28223BE20](v14, v16);
  v34[2] = v35;

  v17 = specialized Sequence.contains(where:)(a4, v34, rawValue);

  if (v17)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.DocumentManager);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35[0] = v22;
      *v21 = 136315138;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v35);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_2493AC000, v19, v20, "ERROR: Associated storage key (%s) already exists, choose different uniqueSuffix!", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    else
    {
    }

    v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v33 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
    [v32 initWithDomain:v33 code:-1 userInfo:0];

    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v24 = knownStorageKeyStrings._rawValue;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    knownStorageKeyStrings._rawValue = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
      knownStorageKeyStrings._rawValue = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    v28 = &v24[2 * v27];
    v28[4] = v13;
    v28[5] = v12;
    knownStorageKeyStrings._rawValue = v24;
    swift_endAccess();
    v29 = String.utf8CString.getter();
    v30 = strdup((v29 + 32));

    if (v30)
    {

      *a5 = v30;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(void *a1, const void *a2, uint64_t *a3)
{
  if (objc_getAssociatedObject(a1, a2))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(a3)) init];
    objc_setAssociatedObject(a1, a2, v6, 1);
    return v6;
  }

  return v8;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized static DOCColumnViewSpecs.specWithBrowsingContext(traitCollection:columnBrowserSize:)(void *a1, double a2, double a3)
{
  if (([a1 enclosedInUIPDocumentLanding] & 1) != 0 || !DOCUsePadIdiomForTraits() || objc_msgSend(a1, sel_horizontalSizeClass) != 2)
  {
    return 0;
  }

  specialized static DOCColumnWidth.layoutWidth(for:)(a1);
  v7 = v6;
  v8 = type metadata accessor for DOCColumnViewSpecs();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnBrowserSize];
  *v10 = a2;
  v10[1] = a3;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnWidth] = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(char a1, uint64_t (*a2)(void), uint64_t a3, char a4, char a5)
{
  if ((a1 & 1) == 0)
  {
    v8 = a2();
    v10 = v9;
    if (a4)
    {
      if (one-time initialization token for _isAttachedInDebugger != -1)
      {
        swift_once();
      }

      if (_isAttachedInDebugger)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.UI);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v25 = v15;
          *v14 = 136315138;
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v25);

          *(v14 + 4) = v16;
          v17 = "Skipping DOCGuardAssert() while attached in debugger: %s";
LABEL_16:
          _os_log_impl(&dword_2493AC000, v12, v13, v17, v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x24C1FE850](v15, -1, -1);
          MEMORY[0x24C1FE850](v14, -1, -1);
LABEL_24:

          return a1 & 1;
        }

        goto LABEL_23;
      }
    }

    if ((a5 & 1) != 0 && DOCIsRunningUnitTests()())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.UI);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = v15;
        *v14 = 136315138;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v25);

        *(v14 + 4) = v19;
        v17 = "Skipping DOCGuardAssert() while unit-testing: %s";
        goto LABEL_16;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (!DOCIsInternalBuild())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.UI);

      v12 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v12, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v25);
        _os_log_impl(&dword_2493AC000, v12, v21, "assertion failure: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x24C1FE850](v23, -1, -1);
        MEMORY[0x24C1FE850](v22, -1, -1);
      }

      goto LABEL_23;
    }
  }

  return a1 & 1;
}

Swift::Void __swiftcall Array.remove(upTo:)(Swift::Int upTo)
{
  if (upTo >= 1)
  {
    swift_getWitnessTable();

    RangeReplaceableCollection.removeFirst(_:)(upTo);
  }
}

uint64_t _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(void *a1)
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

uint64_t DOCAssociatedObjectStorage._set<A>(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v19 - v10 + 16;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v9, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v7 + 16))(v11, a1, v6);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v7 + 8))(v11, v6);
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v19);
    outlined destroy of Any?(v19);
    return swift_endAccess();
  }

  else
  {
    (*(v12 + 32))(v15, v11, a3);
    v20 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v12 + 16))(boxed_opaque_existential_1, v15, a3);
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v19, a2);
    swift_endAccess();
    return (*(v12 + 8))(v15, a3);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for AnyKeyPath();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  DOCGridLayout.LayoutCalculator.HeightDeterminingFactors.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  v6 = *(a1 + 144);
  v7 = *(a1 + 152);
  v8 = *(a1 + 160);
  DOCGridLayout.Spec.hash(into:)();
  CGSize.hash(into:)(v2, v3);
  UIEdgeInsets.hash(into:)(v4, v5, v6, v7);
  v9 = 0.0;
  if (v8 != 0.0)
  {
    v9 = v8;
  }

  MEMORY[0x24C1FCC00](*&v9);
  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UIColor);
}

{
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for UUID();
  v2 = MEMORY[0x277CC95F0];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277CC95F0], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x277CC9610]);
}

{
  type metadata accessor for URL();
  v2 = MEMORY[0x277CC9260];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277CC9260], &lazy protocol witness table cache variable for type URL and conformance URL, v2, MEMORY[0x277CC9278]);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for FPItemID);
}

{
  Hasher.init(_seed:)();
  (*(*a1 + 96))(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for FPActionOperationLocator);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, type metadata accessor for DOCGoToRecentLocation);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for UTType();
  v2 = MEMORY[0x277D85578];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D85578], &lazy protocol witness table cache variable for type UTType and conformance UTType, v2, MEMORY[0x277D85590]);
}

{
  type metadata accessor for Date();
  v2 = MEMORY[0x277CC9578];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277CC9578], &lazy protocol witness table cache variable for type Date and conformance Date, v2, MEMORY[0x277CC9598]);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UIButton);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](qword_249BB0DA0[v2]);
  MEMORY[0x24C1FCBD0](v3);
  DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x24C1FCBB0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for UTTagClass();
  v2 = MEMORY[0x277D854F0];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTTagClass and conformance UTTagClass, MEMORY[0x277D854F0]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D854F0], &lazy protocol witness table cache variable for type UTTagClass and conformance UTTagClass, v2, MEMORY[0x277D85500]);
}

{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for FPItem);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for DOCConcreteLocation);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, type metadata accessor for DOCBrowserContainerController);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AnyKeyPath();
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v36 = ~v3;
    v6 = *a1;
    do
    {
      v7 = *(v2 + 48) + 40 * v4;
      if (*v7 != v6)
      {
        goto LABEL_4;
      }

      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v11 = *(v7 + 24);
      v10 = *(v7 + 32);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {
        v21 = v8;
        v22 = v9;
        v23 = v10;
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v8;
        v19 = v9;
        v20 = v10;

        if ((v17 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if (v11 != *(a1 + 24))
      {
LABEL_3:

        goto LABEL_4;
      }

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
      if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
      {

        return v4;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v36;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *(a1 + 80);
    v57 = *(a1 + 64);
    v58 = v7;
    v59 = *(a1 + 96);
    v8 = *(a1 + 16);
    v53 = *a1;
    v54 = v8;
    v9 = *(a1 + 48);
    v55 = *(a1 + 32);
    v56 = v9;
    v10 = *(a1 + 112);
    v11 = *(a1 + 120);
    v29 = *(a1 + 128);
    v30 = *(a1 + 144);
    v12 = *(a1 + 160);
    do
    {
      v13 = *(v2 + 48) + 168 * v4;
      v15 = *(v13 + 16);
      v14 = *(v13 + 32);
      v46[0] = *v13;
      v46[1] = v15;
      v46[2] = v14;
      v16 = *(v13 + 96);
      v18 = *(v13 + 48);
      v17 = *(v13 + 64);
      v46[5] = *(v13 + 80);
      v46[6] = v16;
      v46[3] = v18;
      v46[4] = v17;
      v20 = *(v13 + 128);
      v19 = *(v13 + 144);
      v21 = *(v13 + 112);
      v50 = *(v13 + 160);
      v48 = v20;
      v49 = v19;
      v47 = v21;
      v22 = *(v13 + 64);
      v23 = *(v13 + 80);
      v24 = *(v13 + 32);
      v42 = *(v13 + 48);
      v43 = v22;
      v25 = *(v13 + 96);
      v44 = v23;
      v45 = v25;
      v26 = *v13;
      v40 = *(v13 + 16);
      v41 = v24;
      v36 = v57;
      v37 = v58;
      v38 = v59;
      v39 = v26;
      v32 = v53;
      v33 = v54;
      v34 = v55;
      v35 = v56;
      outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(v46, v31);
      outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(a1, v31);
      v27 = specialized static DOCGridLayout.Spec.== infix(_:_:)(&v39, &v32);
      v51[4] = v36;
      v51[5] = v37;
      v51[6] = v38;
      v51[0] = v32;
      v51[1] = v33;
      v51[2] = v34;
      v51[3] = v35;
      outlined destroy of DOCGridLayout.Spec(v51);
      v52[4] = v43;
      v52[5] = v44;
      v52[6] = v45;
      v52[0] = v39;
      v52[1] = v40;
      v52[2] = v41;
      v52[3] = v42;
      outlined destroy of DOCGridLayout.Spec(v52);
      if (v27 && *&v47 == v10 && *(&v47 + 1) == v11 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v48, v29), vceqq_f64(v49, v30)))) & 1) != 0 && v50 == v12)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    while (1)
    {
      v8 = (*(v6 + 48) + 48 * v5);
      v9 = *(v8 + 25);
      v10 = v8[1];
      v18 = *v8;
      v19[0] = v10;
      *(v19 + 9) = v9;
      outlined init with copy of DOCSidebarItem(&v18, &v17);
      v11 = DOCSidebarItem.hashComparableValue.getter();
      v13 = v12;
      if (v11 == DOCSidebarItem.hashComparableValue.getter() && v13 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of DOCSidebarItem(&v18);
      if ((v15 & 1) == 0)
      {
        v5 = (v5 + 1) & v7;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }

    outlined destroy of DOCSidebarItem(&v18);
  }

  return v5;
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
      v7 = MEMORY[0x24C1FC430](v9, a1);
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

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      swift_getObjectType();

      v7 = DOCNode.isEqualTo(node:)();

      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v36 = *(a1 + 32);
    v37 = *(a1 + 24);
    v6 = *(a1 + 120);
    v63 = *(a1 + 104);
    v64 = v6;
    v7 = *(a1 + 152);
    v65 = *(a1 + 136);
    v66 = v7;
    v8 = *(a1 + 56);
    v59 = *(a1 + 40);
    v60 = v8;
    v9 = *(a1 + 88);
    v61 = *(a1 + 72);
    v62 = v9;
    do
    {
      v10 = *(v2 + 48) + 168 * v4;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v56 = *v10;
      v57 = v12;
      *v58 = v11;
      v13 = *(v10 + 96);
      v15 = *(v10 + 48);
      v14 = *(v10 + 64);
      *&v58[48] = *(v10 + 80);
      *&v58[64] = v13;
      *&v58[16] = v15;
      *&v58[32] = v14;
      v17 = *(v10 + 128);
      v16 = *(v10 + 144);
      v18 = *(v10 + 112);
      *&v58[128] = *(v10 + 160);
      *&v58[96] = v17;
      *&v58[112] = v16;
      *&v58[80] = v18;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {
        outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56, v55);
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56, v55);

        if ((v23 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if (qword_249BB0DA0[SBYTE8(v57)] != qword_249BB0DA0[v37] || *v58 != v36)
      {
LABEL_3:
        outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56);
        goto LABEL_4;
      }

      v50 = *&v58[72];
      v51 = *&v58[88];
      v52 = *&v58[104];
      v53 = *&v58[120];
      v46 = *&v58[8];
      v47 = *&v58[24];
      v48 = *&v58[40];
      v49 = *&v58[56];
      v42 = v63;
      v43 = v64;
      v44 = v65;
      v45 = v66;
      v38 = v59;
      v39 = v60;
      v40 = v61;
      v41 = v62;
      outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v58[8], v55);
      outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v59, v55);
      v34 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(&v46, &v38);
      v54[4] = v42;
      v54[5] = v43;
      v54[6] = v44;
      v54[7] = v45;
      v54[0] = v38;
      v54[1] = v39;
      v54[2] = v40;
      v54[3] = v41;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v54);
      v55[4] = v50;
      v55[5] = v51;
      v55[6] = v52;
      v55[7] = v53;
      v55[0] = v46;
      v55[1] = v47;
      v55[2] = v48;
      v55[3] = v49;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v55);
      outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56);
      if (v34)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

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

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v6 + 48) + 56 * v5, v12);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      dispatch thunk of Hashable.hash(into:)();
      v9 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      outlined destroy of DOCIdentityHashableLocation(v12);
      if (v9 == v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized DOCAssociatedObjectStorage.subscript.setter(uint64_t a1, void *a2)
{
  return DOCAssociatedObjectStorage._set<A>(value:for:)(a1, a2, *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16));
}

{
  return DOCAssociatedObjectStorage._set<A>(value:for:)(a1, a2, *(*a2 + *MEMORY[0x277D84DE8] + 8));
}

uint64_t DOCAssociatedObjectStorage.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  specialized DOCAssociatedObjectStorage.subscript.setter(a1, a2);

  v4 = *(*(*(v3 + *MEMORY[0x277D84DE8] + 8) - 8) + 8);

  return v4(a1);
}

uint64_t UIMutableTraits.enclosingTabSwitcherStyle.setter()
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle);
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

BOOL @objc UITraitCollection.contextPrefersVariableBlurBottomTabBar.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 enclosingTabSwitcherStyle];
  v3 = [v1 horizontalSizeClass];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (v2 == 1)
  {
    v5 = IsReduceTransparencyEnabled;
    v6 = [v1 enclosedInUIPDocumentLanding];

    if (v6)
    {
      return v3 == 1 && !v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2493B7650()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2493B7688()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

Swift::Void __swiftcall DOCAssertionCollection.invalidateAll()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      (*(*v4 + 160))();
    }
  }
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsActionEvent.FileProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void DOCItemSortDescriptor.init(type:isReversed:)(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v7 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BF96F0);
  v8 = [v6 initWithKey:v7 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v110 = v8;
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249BA0470;
      v31 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      if (v5)
      {
        v87 = MEMORY[0x24C1FAD20](0xD000000000000017, 0x8000000249BCA390);
        v88 = [v31 initWithKey:v87 ascending:0];

        *(v9 + 32) = v88;
        v89 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v90 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
        v91 = [v89 initWithKey:v90 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 40) = v91;
        v92 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v93 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
        v94 = [v92 initWithKey:v93 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 48) = v94;
        *(v9 + 56) = v8;
        v95 = v8;
        v20 = &outlined read-only object #2 of DOCItemSortDescriptor.init(type:isReversed:);
      }

      else
      {
        v32 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BC5DF0);
        v33 = [v31 initWithKey:v32 ascending:0];

        *(v9 + 32) = v33;
        v34 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v35 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
        v36 = [v34 initWithKey:v35 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 40) = v36;
        v37 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v38 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
        v39 = [v37 initWithKey:v38 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 48) = v39;
        *(v9 + 56) = v8;
        v40 = v8;
        v20 = &outlined read-only object #1 of DOCItemSortDescriptor.init(type:isReversed:);
      }
    }

    else
    {
      if (v5 == 2)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_249BA37E0;
        v51 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v52 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
        v53 = [v51 initWithKey:v52 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 32) = v53;
        v54 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v55 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
        v56 = [v54 initWithKey:v55 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 40) = v56;
        *(v9 + 48) = v8;
        v57 = v8;
        goto LABEL_20;
      }

      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249BA0470;
      if (v5 == 3)
      {
        v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v11 = MEMORY[0x24C1FAD20](1718379891, 0xE400000000000000);
        v12 = [v10 initWithKey:v11 ascending:1 selector:sel_localizedStandardTagsCompareNode_];

        *(v9 + 32) = v12;
        v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v14 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
        v15 = [v13 initWithKey:v14 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 40) = v15;
        v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v17 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
        v18 = [v16 initWithKey:v17 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 48) = v18;
        *(v9 + 56) = v8;
        v19 = v8;
        v20 = &outlined read-only object #3 of DOCItemSortDescriptor.init(type:isReversed:);
      }

      else
      {
        v68 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v69 = MEMORY[0x24C1FAD20](0x657A6953656C6966, 0xE800000000000000);
        v70 = [v68 initWithKey:v69 ascending:0];

        *(v9 + 32) = v70;
        v71 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v72 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
        v73 = [v71 initWithKey:v72 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 40) = v73;
        v74 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v75 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
        v76 = [v74 initWithKey:v75 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 48) = v76;
        *(v9 + 56) = v8;
        v77 = v8;
        v20 = &outlined read-only object #4 of DOCItemSortDescriptor.init(type:isReversed:);
      }
    }

    goto LABEL_19;
  }

  if (v5 > 6)
  {
    if (v5 == 7)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249BA0470;
      v58 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      v59 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BF9710);
      v60 = [v58 initWithKey:v59 ascending:0];

      *(v9 + 32) = v60;
      v61 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      v62 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
      v63 = [v61 initWithKey:v62 ascending:1 selector:sel_localizedStandardCompare_];

      *(v9 + 40) = v63;
      v64 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      v65 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
      v66 = [v64 initWithKey:v65 ascending:1 selector:sel_localizedStandardCompare_];

      *(v9 + 48) = v66;
      *(v9 + 56) = v8;
      v67 = v8;
      v20 = &outlined read-only object #6 of DOCItemSortDescriptor.init(type:isReversed:);
    }

    else
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249BA0470;
      v21 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      if (v5 == 8)
      {
        v22 = MEMORY[0x24C1FAD20](0x6564644165746164, 0xE900000000000064);
        v23 = [v21 initWithKey:v22 ascending:0];

        *(v9 + 32) = v23;
        v24 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v25 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
        v26 = [v24 initWithKey:v25 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 40) = v26;
        v27 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v28 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
        v29 = [v27 initWithKey:v28 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 48) = v29;
        *(v9 + 56) = v8;
        v30 = v8;
        v20 = &outlined read-only object #7 of DOCItemSortDescriptor.init(type:isReversed:);
      }

      else
      {
        v78 = MEMORY[0x24C1FAD20](0x64616F6C6E776F64, 0xEA00000000006465);
        v79 = [v21 initWithKey:v78 ascending:0];

        *(v9 + 32) = v79;
        v80 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v81 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
        v82 = [v80 initWithKey:v81 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 40) = v82;
        v83 = objc_allocWithZone(MEMORY[0x277CCAC98]);
        v84 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
        v85 = [v83 initWithKey:v84 ascending:1 selector:sel_localizedStandardCompare_];

        *(v9 + 48) = v85;
        *(v9 + 56) = v8;
        v86 = v8;
        v20 = &outlined read-only object #8 of DOCItemSortDescriptor.init(type:isReversed:);
      }
    }

    goto LABEL_19;
  }

  if (v5 == 5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249BA0470;
    v41 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v42 = MEMORY[0x24C1FAD20](1718379891, 0xE400000000000000);
    v43 = [v41 initWithKey:v42 ascending:1 selector:sel__doc_fileTypeCompare_];

    *(v9 + 32) = v43;
    v44 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v45 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
    v46 = [v44 initWithKey:v45 ascending:1 selector:sel_localizedStandardCompare_];

    *(v9 + 40) = v46;
    v47 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v48 = MEMORY[0x24C1FAD20](0x656D616E656C6966, 0xE800000000000000);
    v49 = [v47 initWithKey:v48 ascending:1 selector:sel_localizedStandardCompare_];

    *(v9 + 48) = v49;
    *(v9 + 56) = v8;
    v50 = v8;
    v20 = &outlined read-only object #5 of DOCItemSortDescriptor.init(type:isReversed:);
LABEL_19:
    specialized Array.append<A>(contentsOf:)(v20);
    goto LABEL_20;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA1010;
  v103 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v104 = MEMORY[0x24C1FAD20](0x4E79616C70736964, 0xEB00000000656D61);
  v105 = [v103 initWithKey:v104 ascending:1 selector:sel_localizedStandardCompare_];

  *(v9 + 32) = v105;
  *(v9 + 40) = v8;
  v106 = v8;
  v107 = one-time initialization token for UI;
  v108 = v106;
  if (v107 != -1)
  {
    swift_once();
  }

  static os_log_type_t.fault.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_249B9A480;
  *(v109 + 56) = MEMORY[0x277D837D0];
  *(v109 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v109 + 32) = 0xD000000000000016;
  *(v109 + 40) = 0x8000000249BF9770;
  os_log(_:dso:log:type:_:)();

  v8 = v110;
LABEL_20:
  v96 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8PropertyV_SayAEGTt0g5Tf4g_n(&outlined read-only object #0 of DOCItemSortDescriptor.init(type:isReversed:));

  if (a2)
  {
    v97 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v97)
    {
      v111 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v98 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v99 = MEMORY[0x24C1FC540](v98, v9);
        }

        else
        {
          v99 = *(v9 + 8 * v98 + 32);
        }

        v100 = v99;
        ++v98;
        v101 = [v99 reversedSortDescriptor];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for NSSortDescriptor();
        swift_dynamicCast();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v97 != v98);

      v9 = v111;
      v102 = a2;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
      v102 = 1;
    }
  }

  else
  {

    v102 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v9;
  *(a3 + 16) = v96;
  *(a3 + 24) = v102;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt32 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for Property(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != a1)
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
  *(*(v13 + 48) + 4 * a2) = a1;
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
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for Permissions(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != a1)
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
  *(*(v13 + 48) + 4 * a2) = a1;
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
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t DOCItemSortDescriptor.ascending.getter()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1FC540](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;
    v5 = [v3 ascending];

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1702125924;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x7942646572616873;
  if (a1 != 5)
  {
    v5 = 0x745364756F6C6369;
    v4 = 0xEC00000073757461;
  }

  v6 = 1702521203;
  if (a1 != 3)
  {
    v6 = 1684957547;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 1701667182;
  if (a1 != 1)
  {
    v7 = 1936154996;
  }

  if (!a1)
  {
    v7 = 1702125924;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 2u)
  {
    v10 = 0xE400000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 1701667182)
        {
          goto LABEL_36;
        }
      }

      else if (v8 != 1936154996)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v10 = 0xE800000000000000;
        if (v8 != 0x7942646572616873)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v10 = 0xEC00000073757461;
        if (v8 != 0x745364756F6C6369)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    v10 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v8 != 1702521203)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 1684957547;
  }

  if (v8 != v2)
  {
LABEL_36:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v9 != v10)
  {
    goto LABEL_36;
  }

  v11 = 1;
LABEL_37:

  return v11 & 1;
}

{
  v2 = 0xEC00000065746144;
  v3 = 0x646573557473616CLL;
  v4 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6E6F697461657263;
    v12 = 0x6564644165746164;
    v13 = 0xE900000000000064;
    if (a1 != 8)
    {
      v12 = 0x745364756F6C6369;
      v13 = 0xEC00000073757461;
    }

    if (a1 == 7)
    {
      v14 = 0xEC00000065746144;
    }

    else
    {
      v11 = v12;
      v14 = v13;
    }

    v15 = 0xE400000000000000;
    v16 = 1684957547;
    if (a1 != 5)
    {
      v16 = 0x7942646572616873;
      v15 = 0xE800000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v5 = 1701667182;
    v6 = 1936154996;
    if (a1 != 3)
    {
      v6 = 1702521203;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    v8 = 0x8000000249BC5DF0;
    if (a1)
    {
      v7 = 0x646573557473616CLL;
      v8 = 0xEC00000065746144;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v9 != 1684957547)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x7942646572616873)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_52;
    }

    if (a2 == 7)
    {
      if (v9 != 0x6E6F697461657263)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (a2 == 8)
    {
      v2 = 0xE900000000000064;
      if (v9 != 0x6564644165746164)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    v3 = 0x745364756F6C6369;
    v2 = 0xEC00000073757461;
  }

  else
  {
    if (a2 > 1u)
    {
      v2 = 0xE400000000000000;
      if (a2 == 2)
      {
        if (v9 != 1701667182)
        {
          goto LABEL_55;
        }
      }

      else if (a2 == 3)
      {
        if (v9 != 1936154996)
        {
          goto LABEL_55;
        }
      }

      else if (v9 != 1702521203)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      v2 = 0x8000000249BC5DF0;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }
  }

  if (v9 != v3)
  {
LABEL_55:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_56;
  }

LABEL_52:
  if (v10 != v2)
  {
    goto LABEL_55;
  }

  v17 = 1;
LABEL_56:

  return v17 & 1;
}

{
  v2 = 0xD00000000000001DLL;
  v3 = ".Favorite";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "com.apple.DocumentsApp.folder";
      v5 = 0xD000000000000024;
    }

    else
    {
      v6 = "ntManager.dragFolder";
      v5 = 0xD00000000000001FLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (v4)
    {
      v6 = "ntsApp.quicklook";
    }

    else
    {
      v6 = ".Favorite";
    }
  }

  if (a2 > 1u)
  {
    v3 = "com.apple.DocumentsApp.folder";
    v7 = 0xD000000000000024;
    v8 = "ntManager.dragFolder";
    v2 = 0xD00000000000001FLL;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000020;
    v8 = "ntsApp.quicklook";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

{
  v2 = 0xE900000000000073;
  v3 = 0x6E6F697461636F6CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v5 = 0x6F4C726F68636E61;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v6 = 0xEE006E6F69746163;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4)
    {
      v6 = 0x8000000249BC6370;
    }

    else
    {
      v6 = 0x8000000249BC6350;
    }
  }

  if (a2 != 2)
  {
    v3 = 0x6F4C726F68636E61;
    v2 = 0xEE006E6F69746163;
  }

  v7 = 0xD000000000000014;
  v8 = 0x8000000249BC6370;
  if (a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x8000000249BC6350;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6C6165766572;
  v6 = 0xE400000000000000;
  v7 = 1852141679;
  if (a1 != 4)
  {
    v7 = 0x746E6F63776F6873;
    v6 = 0xEC00000073746E65;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1851876211;
  if (a1 != 1)
  {
    v9 = 0x656D616E656C6966;
    v8 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C6165766572)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1852141679)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000073746E65;
      if (v10 != 0x746E6F63776F6873)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1851876211)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D616E656C6966)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E6F697461636F6CLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

{
  v2 = 0xEB00000000646572;
  v3 = 0x6165707061736964;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x6465726165707061;
  if (a1 != 2)
  {
    v6 = 0x6165707061736964;
    v5 = 0xEC000000676E6972;
  }

  v7 = 0x6E69726165707061;
  v8 = 0xE900000000000067;
  if (!a1)
  {
    v7 = 0x6165707061736964;
    v8 = 0xEB00000000646572;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE800000000000000;
  v12 = 0x6465726165707061;
  if (a2 != 2)
  {
    v12 = 0x6165707061736964;
    v11 = 0xEC000000676E6972;
  }

  if (a2)
  {
    v3 = 0x6E69726165707061;
    v2 = 0xE900000000000067;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1684957547;
    }

    else
    {
      v3 = 1701736302;
    }

    v2 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 1702125924;
  }

  else if (a1 == 3)
  {
    v2 = 0xE400000000000000;
    v3 = 1702521203;
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x7942646572616873;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1684957547;
    }

    else
    {
      v8 = 1701736302;
    }

    v7 = 0xE400000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1702521203;
    if (a2 != 3)
    {
      v5 = 0x7942646572616873;
      v4 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 1702125924;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

id static FPItem.createDocumentSentinelItem()()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = static FPItem.createDocumentSentinelItemIdentifier;
  v6 = off_27EEE8030;

  v7 = MEMORY[0x24C1FAD20](v5, v6);

  v9 = static FPItem.createDocumentSentinelItemIdentifier;
  v8 = off_27EEE8030;

  v10 = MEMORY[0x24C1FAD20](v9, v8);

  static UTType.item.getter();
  v11 = objc_allocWithZone(MEMORY[0x277CC63E8]);
  v12 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BCFB90);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v14 = [v11 initWithProviderDomainID:v7 itemIdentifier:v10 parentItemIdentifier:0 filename:v12 contentType:isa];

  (*(v1 + 8))(v4, v0);
  return v14;
}

uint64_t static DOCSplitViewState._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = *(result + OBJC_IVAR___DOCSplitViewState__impl);
    if (v2 != 2)
    {
      v3 = *(result + OBJC_IVAR___DOCSplitViewState__impl + 8);
      *a2 = v2 & 1;
      *(a2 + 8) = v3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for DOCSplitViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id UIView.doc_nearestAncestor<A>(ofType:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [v3 *a3];
  if (result)
  {
    v6 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (([v6 isKindOfClass_] & 1) == 0)
    {
      v8 = [v6 *a3];

      v6 = v8;
      if (!v8)
      {
        return 0;
      }
    }

    return swift_dynamicCastUnknownClassUnconditional();
  }

  return result;
}

uint64_t dispatch thunk of DOCAssociatedObjectStorage.subscript.getter()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

uint64_t static UTType.doc_contentTypes(forIdentifiers:)()
{
  v0 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [v0 doc:isa contentTypesForIdentifiers:?];

  type metadata accessor for UTType();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id UIViewController.doc_nearestAncestor<A>(ofType:searchPresentingHierarchy:)(uint64_t a1, char a2, uint64_t a3)
{
  result = UIView.doc_nearestAncestor<A>(ofType:)(a1, a3, &selRef_parentViewController);
  if (!result && (a2 & 1) != 0)
  {
    result = [v3 presentingViewController];
    if (result)
    {
      v8 = result;
      v9 = UIView.doc_nearestAncestor<A>(ofType:)(a1, a3, &selRef_parentViewController);

      return v9;
    }
  }

  return result;
}

uint64_t DOCAssociatedObjectStorage.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return DOCAssociatedObjectStorage._value<A>(for:)(a1, *(*(*a1 + *MEMORY[0x277D84DE8] + 8) + 16), a2);
}

{
  return DOCAssociatedObjectStorage._value<A>(for:)(a1, *(*a1 + *MEMORY[0x277D84DE8] + 8), a2);
}

uint64_t static DOCTabSwitcherStyleTrait.defaultValue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
  v3 = xmmword_249BA1BA0;
  v1 = specialized static DOCTabSwitcherStyle.preferredStyle(for:traitCollection:splitState:)(v0, 0, &v3);

  return v1;
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
    type metadata accessor for AnyKeyPath();
    do
    {
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

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
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 24 * v3;
          v21 = (v19 + 24 * v6);
          if (v3 != v6 || v20 >= v21 + 24)
          {
            v9 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x24C1FCBB0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

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
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

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
      outlined init with copy of DOCIdentityHashableLocation(*(a2 + 48) + 56 * v6, v26);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      dispatch thunk of Hashable.hash(into:)();
      v12 = Hasher._finalize()();
      result = outlined destroy of DOCIdentityHashableLocation(v26);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = v14 + 56 * v3;
        v16 = (v14 + 56 * v6);
        if (v3 != v6 || v15 >= v16 + 56)
        {
          v17 = *v16;
          v18 = v16[1];
          v19 = v16[2];
          *(v15 + 48) = *(v16 + 6);
          *(v15 + 16) = v18;
          *(v15 + 32) = v19;
          *v15 = v17;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 56 * v3;
        v22 = (v20 + 56 * v6);
        if (v3 != v6 || v21 >= v22 + 56)
        {
          v9 = *v22;
          v10 = v22[1];
          v11 = v22[2];
          *(v21 + 48) = *(v22 + 6);
          *(v21 + 16) = v10;
          *(v21 + 32) = v11;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

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
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v24);
      v9 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
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
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(*v9 + 96);

      v10(v22);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *one-time initialization function for rootNodes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA17DOCICloudRootNodeC06ThreadeH5Nodes33_2567ED12BB6F4C10E87ACEB6FC07D9CFLLVGMd);
  swift_allocObject();
  result = specialized DOCThreadSafeState.init(_:)(0, 0, 0, 0);
  static DOCICloudRootNode.rootNodes = result;
  return result;
}

id FPProviderDomain.shouldUseDSEnumeration.getter()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    goto LABEL_9;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_9:
    v10 = [objc_opt_self() dsEnumerationLocal];
    goto LABEL_10;
  }

  v8 = [v0 identifier];
  v9 = DOCProviderDomainIDIsExternalDevice();

  if (v9)
  {
    v10 = [objc_opt_self() dsEnumerationUSB];
  }

  else
  {
    v14 = [v0 identifier];
    v15 = DOCProviderDomainIDIsSharedServerDomainID();

    if (v15)
    {
      v10 = [objc_opt_self() dsEnumerationSMB];
    }

    else
    {
      if ([v0 isUsingFPFS])
      {
        return [v0 isUsingFPFS];
      }

      v10 = [objc_opt_self() dsEnumerationFPv2];
    }
  }

LABEL_10:
  v11 = v10;
  v12 = [v11 isEnabled];

  return v12;
}

void *specialized DOCThreadSafeState.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v18 = a2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v13 - 8, v14);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v22 = 0xD000000000000012;
  v23 = 0x8000000249BCE0E0;
  v21 = &type metadata for DOCICloudRootNode.ThreadSafeRootNodes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCICloudRootNodeC010ThreadSafeE5Nodes33_2567ED12BB6F4C10E87ACEB6FC07D9CFLLVmMd);
  v15 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v15);

  MEMORY[0x24C1FAEA0](0x65756575712ELL, 0xE600000000000000);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v6);
  v4[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[3] = a1;
  v16 = v19;
  v4[4] = v18;
  v4[5] = v16;
  v4[6] = v20;
  return v4;
}

void closure #1 in static DOCICloudRootNode.iCloudRootNode(for:)(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ([a1 isDataSeparatedDomain])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_14:
    if (([a1 isDataSeparatedDomain] & 1) == 0 && v6)
    {
      v19 = v5;
      v20 = v6;
      v21 = [a1 identifier];
      v22 = v21;
      if (v5)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
        if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
        {

LABEL_27:
          if (one-time initialization token for Enumeration != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logger.Enumeration);
          v28 = Logger.logObject.getter();
          v33 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v28, v33))
          {
            v8 = v6;
            goto LABEL_39;
          }

          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_2493AC000, v28, v33, "DOCICloudRootNode: returning existing node for personal iCloud", v30, 2u);
          v8 = v6;
          goto LABEL_36;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.Enumeration);
    v28 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v28, v35))
    {
      v8 = 0;
      goto LABEL_39;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2493AC000, v28, v35, "DOCICloudRootNode: the requested node hasn't been created yet", v30, 2u);
    v8 = 0;
    goto LABEL_36;
  }

  v10 = v7;
  v11 = v8;
  v12 = [a1 identifier];
  v13 = v12;
  if (!v7)
  {

LABEL_13:
    goto LABEL_14;
  }

  v37 = a3;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    a3 = v37;
    goto LABEL_21;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a3 = v37;
  if ((v36 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.Enumeration);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2493AC000, v28, v29, "DOCICloudRootNode: returning existing node for DataSeparated iCloud", v30, 2u);
LABEL_36:
    MEMORY[0x24C1FE850](v30, -1, -1);
  }

LABEL_39:

  *a3 = v8;
}

void *DOCICloudRootNode.init(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_deferredCreationNode] = 0;
  v9 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_observerBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer] = 0;
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v5 + 8))(v8, v4);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Enumeration);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    v16 = [v11 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v31);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2493AC000, v12, v13, "Init DOCICloudRootNode for domain %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_providerDomain] = v11;
  v21 = type metadata accessor for DOCICloudRootNode();
  v32.receiver = v2;
  v32.super_class = v21;
  v22 = v11;
  v23 = objc_msgSendSuper2(&v32, sel_init);
  v24 = one-time initialization token for rootNodes;
  v25 = v23;
  v27 = v25;
  if (v24 != -1)
  {
    v25 = swift_once();
  }

  v28 = static DOCICloudRootNode.rootNodes;
  MEMORY[0x28223BE20](v25, v26);
  (*(*v28 + 168))(partial apply for closure #1 in DOCICloudRootNode.init(for:));
  DOCICloudRootNode.getContainers()();

  return v27;
}

void closure #1 in DOCICloudRootNode.init(for:)(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_providerDomain;
  v5 = [*&a2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_providerDomain] isDataSeparatedDomain];
  if (v5)
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 24;
  }

  else
  {
    v7 = 8;
  }

  v8 = *(a1 + v6);
  v9 = a2;

  *(a1 + v6) = a2;
  v10 = [*&a2[v4] identifier];

  *(a1 + v7) = v10;
}

uint64_t DOCICloudRootNode.getContainers()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_providerDomain) isDataSeparatedDomain])
  {
    if (one-time initialization token for workQueue != -1)
    {
      swift_once();
    }

    v14 = static DOCICloudRootNode.workQueue;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = partial apply for closure #1 in DOCICloudRootNode.getContainers();
    v23 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v10 = &block_descriptor_20_4;
  }

  else
  {
    if (one-time initialization token for workQueue != -1)
    {
      swift_once();
    }

    v14 = static DOCICloudRootNode.workQueue;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = partial apply for closure #2 in DOCICloudRootNode.getContainers();
    v23 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v10 = &block_descriptor_169;
  }

  v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = v10;
  v12 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v8, v4, v12);
  _Block_release(v12);
  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v8, v15);
}

uint64_t sub_2493BA860()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t one-time initialization function for workQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  v11 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DOCICloudRootNode.workQueue = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void closure #2 in DOCICloudRootNode.getContainers()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v37[13] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v37[10] = *(v9 - 8);
  v37[11] = v9;
  MEMORY[0x28223BE20](v9, v10);
  v37[9] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchTime();
  v37[12] = *(v38 - 8);
  v13 = MEMORY[0x28223BE20](v38, v12);
  v37[8] = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v37[14] = v37 - v16;
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v37[4] = v5;
    v37[5] = v1;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v37[7] = __swift_project_value_buffer(v24, static Logger.Enumeration);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2493AC000, v25, v26, "DOCICloudRootNode: building containers...", v27, 2u);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    v37[2] = v6;
    v37[3] = v4;
    v37[6] = v0;

    static os_signpost_type_t.begin.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v28 = *(v18 + 8);
    v28(v21, v17);
    v29 = objc_opt_self();
    v30 = [v29 iCloudDefaultContainer];
    v31 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer];
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer] = v30;

    v32 = [v29 iCloudLibrariesContainer];
    v33 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer];
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer] = v32;

    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v28(v21, v17);
    DOCICloudRootNode.createUnderlyingNode()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2493AC000, v34, v35, "DOCICloudRootNode: finished building containers...", v36, 2u);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }
  }
}

uint64_t DOCItemSortMode.isDateMode.getter()
{
  v1 = *v0;
  if (v1 <= 4 && *v0 <= 1u && !*v0)
  {
    v3 = 1;
LABEL_16:

    return v3 & 1;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (v1 == 1)
    {
LABEL_10:
      v3 = 1;
      goto LABEL_16;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      if (v1 == 7)
      {
        goto LABEL_10;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        if (v1 == 8)
        {
          v3 = 1;
        }

        else
        {
          v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_16;
      }
    }
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t Optional.isEqualTo(node:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v19 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    v17 = a1 == 0;
  }

  else
  {
    (*(v4 + 32))(v11, v14, v3);
    if (a1)
    {
      (*(v4 + 16))(v7, v11, v3);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      swift_dynamicCast();
      v17 = DOCNode.isEqualTo(node:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v4 + 8))(v11, v3);
    }

    else
    {
      (*(v4 + 8))(v11, v3);
      v17 = 0;
    }
  }

  return v17 & 1;
}

{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  if ((*(v3 + 48))(v14, 1, v2) == 1)
  {
    v17 = 0;
  }

  else
  {
    (*(v3 + 32))(v9, v14, v2);
    (*(v3 + 16))(v5, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    swift_dynamicCast();
    v17 = DOCNode.isEqualTo(node:)();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v9, v2);
  }

  return v17 & 1;
}

void DOCICloudRootNode.createUnderlyingNode()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA1010;
      *(inited + 32) = v2;
      *(inited + 40) = v3;
      v5 = v2;
      v6 = v3;
      v7 = v5;
      v31 = v6;
      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6FINodeC_SayAEGTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v8 = objc_allocWithZone(MEMORY[0x277D046C8]);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      lazy protocol witness table accessor for type FINode and conformance NSObject();
      v9 = v7;
      isa = Set._bridgeToObjectiveC()().super.isa;

      v11 = [v8 initWithNodes:isa subject:v9];

      v12 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v11);
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.Enumeration);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2493AC000, v14, v15, "DOCICloudRootNode: compound node created", v16, 2u);
        MEMORY[0x24C1FE850](v16, -1, -1);
      }

      v17 = (*((*v12 & *v1) + 0x90))();
      if (v17)
      {
        v18 = v17;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2493AC000, v19, v20, "DOCICloudRootNode: calling observer block to start observing", v21, 2u);
          MEMORY[0x24C1FE850](v21, -1, -1);
        }

        v22 = (*((*v12 & *v1) + 0x78))();
        v18();

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v18);
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.Enumeration);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2493AC000, v24, v25, "iCloudContainer is nil. This should never happen at this stage.", v26, 2u);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer))
  {
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.Enumeration);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2493AC000, v28, v29, "AppLibrariesContainer is nil. This should never happen at this stage.", v30, 2u);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }
  }

  lazy protocol witness table accessor for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError();
  swift_allocError();
  swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type FINode and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type FINode and conformance NSObject;
  if (!lazy protocol witness table cache variable for type FINode and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for FINode);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINode and conformance NSObject);
  }

  return result;
}

id static NSNotificationName.DOCCollaborationHighlightManagerHighlightsDidChange.getter()
{
  if (one-time initialization token for DOCCollaborationHighlightManagerHighlightsDidChange != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.DOCCollaborationHighlightManagerHighlightsDidChange;

  return v1;
}

uint64_t one-time initialization function for DOCCollaborationHighlightManagerHighlightsDidChange()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000033, 0x8000000249BD9740);
  static NSNotificationName.DOCCollaborationHighlightManagerHighlightsDidChange = result;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t Dictionary<>.doc_firstKey(forValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v23 - v17;
  v37 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a1;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = partial apply for closure #1 in Dictionary<>.doc_firstKey(forValue:);
  v30 = &v31;
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.first(where:)();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
  {
    (*(v15 + 8))(v18, v14);
    return (*(*(a3 - 8) + 56))(v24, 1, 1, a3);
  }

  else
  {
    v20 = *(TupleTypeMetadata2 + 48);
    v21 = *(a3 - 8);
    v22 = v24;
    (*(v21 + 32))(v24, v18, a3);
    (*(v21 + 56))(v22, 0, 1, a3);
    return (*(*(a4 - 8) + 8))(&v18[v20], a4);
  }
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@unowned Bool)(uint64_t a1)
{
  v3 = *(v1 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

void UITraitCollection.doc_preferredLayoutSizeCategory.getter(char *a1@<X8>)
{
  v3 = [v1 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v4 = static UIContentSizeCategory.> infix(_:_:)();

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {

    v5 = 0;
  }

  *a1 = v5;
}

void DOCThreadSafeState.withSharedAccess<A>(_:)()
{
  v1 = *(v0 + 16);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t closure #1 in DOCThreadSafeState.withSharedAccess<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v9 - v6;
  DOCThreadSafeState.protectedState.getter(&v9 - v6);
  a1(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t DOCThreadSafeState.protectedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t DOCThreadSafeState.withExclusiveAccess<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v18 = v3;
  OS_dispatch_queue.sync<A>(flags:execute:)();

  return (*(v8 + 8))(v11, v7);
}

uint64_t partial apply for closure #1 in DOCThreadSafeState.withExclusiveAccess<A>(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(*v2 + 96);
  swift_beginAccess();
  v1(v2 + v3);
  return swift_endAccess();
}

uint64_t UIEdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x24C1FCC00](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x24C1FCC00](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x24C1FCC00](*&v9);
}

UIFont __swiftcall UIFont.doc_withFeatureMonospacedDigits()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_yptGMd);
  inited = swift_initStackObject();
  v3 = *MEMORY[0x277D76908];
  *(inited + 32) = *MEMORY[0x277D76908];
  v4 = MEMORY[0x277D83B88];
  *(inited + 40) = 6;
  v5 = MEMORY[0x277D76900];
  *(inited + 16) = xmmword_249B9FA70;
  v6 = *v5;
  *(inited + 64) = v4;
  *(inited + 72) = v6;
  *(inited + 104) = v4;
  *(inited + 80) = 0;
  v7 = v3;
  v8 = v6;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_yptMd);
  swift_arrayDestroy();
  v10 = [v1 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_249B9A480;
  v12 = *MEMORY[0x277D74338];
  *(v11 + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaypGGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9A480;
  *(v13 + 32) = v9;
  *(v11 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaypGGMd);
  *(v11 + 40) = v13;
  v14 = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(v11);
  swift_setDeallocating();
  outlined destroy of (UIFontDescriptorAttributeName, Any)(v11 + 32);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v10 fontDescriptorByAddingAttributes_];

  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
  return v17;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v11, &_sSo26UIFontDescriptorFeatureKeya_yptMd);
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

uint64_t outlined init with copy of DOCGridLayout.Spec?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v11, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
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

uint64_t outlined destroy of (UIFontDescriptorAttributeName, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29UIFontDescriptorAttributeNamea_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName()
{
  result = lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName;
  if (!lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName)
  {
    type metadata accessor for UIFontDescriptorAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSFileProviderItemIdentifier()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

id DOCButtonGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_numberOfTouchesRequired] = 1;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo7UITouchC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_activeTouches] = v5;
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  outlined init with copy of Any?(a1, v17);
  v7 = v18;
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8, v8);
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for DOCButtonGestureRecognizer();
  v16.receiver = v2;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithTarget_action_, v12, a2);
  swift_unknownObjectRelease();
  outlined destroy of Any?(a1);
  return v14;
}

id DOCLocalizedMetadataStringForUnavailablePropertyValue()
{
  v0 = _DocumentManagerBundle();
  v1 = [v0 localizedStringForKey:@"Metadata Value Missing Indicator [--]" value:@"--" table:@"Localizable"];

  return v1;
}

id one-time initialization function for horizontalEllipsis(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DOCUnicode();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v8;
  v11.super_class = v7;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a4 = result;
  return result;
}

uint64_t DOCUnicode.rawValue.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

NSDirectionalEdgeInsets __swiftcall UIEdgeInsets.asDirectionalEdgeInsets(RTL:)(Swift::Bool RTL)
{
  if (RTL)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (RTL)
  {
    v2 = v1;
  }

  v4 = v3;
  result.trailing = v2;
  result.leading = v4;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DOCItemSortMode@<X0>(unint64_t *a1@<X8>)
{
  result = DOCItemSortMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t DOCItemSortMode.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E6F697461657263;
    v7 = 0x6564644165746164;
    if (v1 != 8)
    {
      v7 = 0x745364756F6C6369;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1684957547;
    if (v1 != 5)
    {
      v8 = 0x7942646572616873;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x646573557473616CLL;
    v3 = 1701667182;
    v4 = 1936154996;
    if (v1 != 3)
    {
      v4 = 1702521203;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t DOCItemSortMode.accessibilityIdentifierComponent.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6165724365746164;
    v7 = 0x6564644165746164;
    if (v1 != 8)
    {
      v7 = 0x745364756F6C6369;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1684957547;
    if (v1 != 5)
    {
      v8 = 0x7942646572616873;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x69646F4D65746164;
    v3 = 1701667182;
    v4 = 1936154996;
    if (v1 != 3)
    {
      v4 = 1702521203;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7473614C65746164;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

id DOCItemSortMode.localizedOrderedDescendingString.getter()
{
  v1 = 1 << *v0;
  if ((v1 & 0x26C) != 0)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BFA350;
      v4 = 0x69646E6563736544;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0xD00000000000003ALL;
      v8 = 0xEA0000000000676ELL;
LABEL_7:
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v5, v3, v9, *&v7)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v1 & 0x183) != 0)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BFA290;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v8 = 0x8000000249BFA270;
      v7 = 0xD000000000000040;
      v4 = 0xD000000000000010;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v11 = 0x8000000249BFA300;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v4 = 0xD000000000000013;
    v8 = 0x8000000249BFA2E0;
    v7 = 0xD000000000000043;
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCNode.isCreateDocumentSentinel()()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    v2 = [v1 itemIdentifier];
    swift_beginAccess();
    v4 = static FPItem.createDocumentSentinelItemIdentifier;
    v3 = off_27EEE8030;

    v5 = MEMORY[0x24C1FAD20](v4, v3);

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v6 == v9 && v8 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for FISentinelNode();
    v13 = swift_dynamicCastClass() != 0;
  }

  return v13 & 1;
}

uint64_t DOCNode.identifierKey.getter()
{
  v1 = [v0 identifier];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return swift_dynamicCast();
}

uint64_t == infix(_:_:)(unint64_t a1, unint64_t a2)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!(a2 >> 62))
  {
    if (v5 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v5 != __CocoaSet.count.getter())
  {
    return 0;
  }

LABEL_5:
  if (!i)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 1;
    }

LABEL_9:
    v14 = v6;
    for (i = 4; ; ++i)
    {
      v7 = i - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](i - 4, a1);
        v8 = i - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        swift_unknownObjectRetain();
        v8 = i - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v5 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      if (a2 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v7 == v9;
      if (v7 == v9)
      {
        goto LABEL_35;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](i - 4, a2);
      }

      else
      {
        if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        swift_unknownObjectRetain();
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() && (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v11 = &lazy cache variable for type metadata for FPItem;
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass() || (objc_opt_self(), !swift_dynamicCastObjCClass()))
        {
          swift_unknownObjectRelease();
LABEL_35:
          swift_unknownObjectRelease();
          return v10;
        }

        v11 = &lazy cache variable for type metadata for FINode;
      }

      type metadata accessor for NSMutableAttributedString(0, v11);
      v12 = static NSObject.== infix(_:_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      if (v8 == v14)
      {
        return 1;
      }
    }
  }

  v6 = __CocoaSet.count.getter();
  if (v6)
  {
    goto LABEL_9;
  }

  return 1;
}

id one-time initialization function for Source()
{
  result = DOCSourceLogHandle();
  static DOCLog.Source = result;
  return result;
}

id DOCSourceLogHandle()
{
  v0 = MEMORY[0x277D062F8];
  v1 = *MEMORY[0x277D062F8];
  if (!*MEMORY[0x277D062F8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCItemSortMode.localizedOrderedAscendingString.getter()
{
  v1 = 1 << *v0;
  if ((v1 & 0x26C) != 0)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BFA230;
      v4 = 0x6E69646E65637341;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0xD000000000000039;
      v8 = 0xE900000000000067;
LABEL_7:
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v5, v3, v9, *&v7)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v1 & 0x183) != 0)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BFA170;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v8 = 0x8000000249BFA150;
      v7 = 0xD000000000000040;
      v4 = 0xD000000000000010;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v11 = 0x8000000249BFA1E0;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v4 = 0xD000000000000013;
    v8 = 0x8000000249BFA1C0;
    v7 = 0xD000000000000043;
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *specialized static DOCRootNode.rootNode(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v174 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v174 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v174 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v174 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v174 - v25;
  if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0)
  {
    return 0;
  }

  if ([a1 isiCloudDriveProvider] && objc_msgSend(a1, sel_isUsingFPFS))
  {
    return specialized static DOCICloudRootNode.iCloudRootNode(for:)(a1, v27);
  }

  v181 = v11;
  *&v182 = v23;
  v183 = v7;
  v184 = a1;
  v29 = objc_opt_self();
  v30 = [v29 dsEnumerationLocal];
  v31 = [v30 isEnabled];

  if (v31)
  {
    v32 = [v184 providerID];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
    {

      goto LABEL_10;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
LABEL_10:
      v38 = objc_opt_self();
      result = [v38 currentSharedInstance];
      if (!result)
      {
        v39 = v184;
        v40 = DOCLocalizedDisplayName();
        if (!v40)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = MEMORY[0x24C1FAD20](v41);
        }

        v42 = [v38 sharedInstanceWithDisplayName:v40 domain:v39];

        return v42;
      }

      return result;
    }
  }

  v43 = [v29 dsEnumerationUSB];
  v44 = [v43 isEnabled];

  if (v44)
  {
    v45 = [v184 providerID];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {

      [v184 isUsingFPFS];
      v50 = 1;
      goto LABEL_38;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v50 = 0;
  }

  if (([v184 isUsingFPFS] & 1) == 0 && (v50 & 1) == 0)
  {
LABEL_22:
    v183 = objc_opt_self();
    v51 = 0;
    *&v52 = 136315394;
    v182 = v52;
    v53 = v184;
    do
    {
      if (v51)
      {
        if (one-time initialization token for Enumeration != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logger.Enumeration);
        v56 = v53;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v188[0] = v60;
          *v59 = v182;
          v61 = [v56 identifier];
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v188);
          v53 = v184;

          *(v59 + 4) = v65;
          *(v59 + 12) = 2048;
          *(v59 + 14) = v51;
          _os_log_impl(&dword_2493AC000, v57, v58, "Retrying because we did not find FINode for FPv2 domain '%s': %ld", v59, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x24C1FE850](v60, -1, -1);
          MEMORY[0x24C1FE850](v59, -1, -1);
        }

        [objc_opt_self() sleepForTimeInterval_];
      }

      v66 = [v183 providerDomainsContainer];
      v67 = [v66 iteratorWithOptions_];
      if (v67)
      {
        v68 = [v67 first];
        if (v68)
        {
          v69 = v68;
          while (1)
          {
            v71 = [v69 fpDomain];
            if (v71)
            {
              v72 = v71;
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
              v73 = v53;
              v74 = static NSObject.== infix(_:_:)();

              if (v74)
              {
                break;
              }
            }

            v70 = [swift_unknownObjectRetain() next];
            swift_unknownObjectRelease();

            v69 = v70;
            if (!v70)
            {
              goto LABEL_23;
            }
          }

          if (one-time initialization token for Enumeration != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          __swift_project_value_buffer(v93, static Logger.Enumeration);
          v94 = v73;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v188[0] = v183;
            *v97 = 136315138;
            v98 = [v94 identifier];
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v184 = v94;
            v101 = v100;

            v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v188);
            v94 = v184;

            *(v97 + 4) = v102;
            _os_log_impl(&dword_2493AC000, v95, v96, "Found FINode for FPv2 domain '%s'", v97, 0xCu);
            v103 = v183;
            __swift_destroy_boxed_opaque_existential_0(v183);
            MEMORY[0x24C1FE850](v103, -1, -1);
            MEMORY[0x24C1FE850](v97, -1, -1);
          }

          v104 = type metadata accessor for DOCRootNode();
          v105 = objc_allocWithZone(v104);
          *&v105[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = 0;
          v187.receiver = v105;
          v187.super_class = v104;
          v106 = objc_msgSendSuper2(&v187, sel_initWithSubject_, v69);

          swift_unknownObjectRelease();
          v107 = *&v106[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain];
          *&v106[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = v73;
          v108 = v106;

          v109 = v94;
          return v108;
        }

LABEL_23:
        swift_unknownObjectRelease();
      }
    }

    while (v51++ != 1000);
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v158 = type metadata accessor for Logger();
    __swift_project_value_buffer(v158, static Logger.Enumeration);
    v159 = v53;
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v188[0] = v129;
      *v128 = 136315138;
      v160 = [v159 identifier];
      v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v163 = v162;

      v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v163, v188);

      *(v128 + 4) = v164;
      v135 = "Did not find FINode for FPv2 domain '%s'";
      goto LABEL_66;
    }

    goto LABEL_67;
  }

LABEL_38:
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v179 = v50;
  v75 = type metadata accessor for Logger();
  v76 = __swift_project_value_buffer(v75, static Logger.Enumeration);
  v77 = v184;
  v180 = v76;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();

  v80 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  if (os_log_type_enabled(v78, v79))
  {
    v176 = v79;
    v177 = v78;
    v81 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v188[0] = v175;
    *v81 = 136315394;
    v82 = [v77 identifier];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v188);

    *(v81 + 4) = v86;
    *(v81 + 12) = 2080;
    v178 = v77;
    v87 = [v77 storageURLs];
    v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v88 + 16))
    {
      v89 = v183;
      (*(v183 + 2))(v26, v88 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v6);

      v90 = URL.absoluteString.getter();
      v92 = v91;
      v89[1](v26, v6);
    }

    else
    {

      v92 = 0xE300000000000000;
      v90 = 4271950;
      v89 = v183;
    }

    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v188);

    *(v81 + 14) = v110;
    v111 = v177;
    _os_log_impl(&dword_2493AC000, v177, v176, "Creating DOCRootNode from FPFS domain '%s' first storageURL: '%s'", v81, 0x16u);
    v112 = v175;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v112, -1, -1);
    MEMORY[0x24C1FE850](v81, -1, -1);

    v77 = v178;
    v80 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  }

  else
  {

    v89 = v183;
  }

  v113 = [v77 v80[250]];
  v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v114 + 16))
  {

    v125 = v77;
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v188[0] = v129;
      *v128 = 136315138;
      v130 = [v125 identifier];
      v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = v132;

      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, v188);

      *(v128 + 4) = v134;
      v135 = "Could not create rootNode becuase storageURLs.first is nil for providerDomain '%s'";
LABEL_66:
      _os_log_impl(&dword_2493AC000, v126, v127, v135, v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v129);
      MEMORY[0x24C1FE850](v129, -1, -1);
      MEMORY[0x24C1FE850](v128, -1, -1);
    }

LABEL_67:

    return 0;
  }

  v115 = v77;
  v116 = v89[2];
  v117 = v182;
  (v116)(v182, v114 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v6);

  (v116)(v19, v117, v6);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  (v116)(v5, v19, v6);
  (v89[7])(v5, 0, 1, v6);
  v118 = static FINode.docNode(from:)(v5);
  outlined destroy of URL?(v5);
  if (!v118)
  {
    v138 = v89[1];
    v136 = v89 + 1;
    v137 = v138;
    v138(v19, v6);
    if (v179)
    {
      (v116)(v15, v182, v6);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v183 = v136;
        v142 = v141;
        v143 = swift_slowAlloc();
        v188[0] = v143;
        *v142 = 136315138;
        lazy protocol witness table accessor for type URL and conformance URL();
        v144 = dispatch thunk of CustomStringConvertible.description.getter();
        v146 = v145;
        v137(v15, v6);
        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, v188);

        *(v142 + 4) = v147;
        _os_log_impl(&dword_2493AC000, v139, v140, "Could not create node for USB mounted at %s, creating encrypted volume node instead", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v143);
        MEMORY[0x24C1FE850](v143, -1, -1);
        MEMORY[0x24C1FE850](v142, -1, -1);
      }

      else
      {

        v137(v15, v6);
      }

      v165 = objc_allocWithZone(type metadata accessor for DOCEncryptedVolumeNode());
      v166 = v115;
      v167 = DOCEncryptedVolumeNode.init(domain:)(v166);
      v168 = type metadata accessor for DOCRootNode();
      v169 = objc_allocWithZone(v168);
      *&v169[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = 0;
      v186.receiver = v169;
      v186.super_class = v168;
      v170 = objc_msgSendSuper2(&v186, sel_initWithSubject_, v167);

      v137(v182, v6);
      v171 = *&v170[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain];
      *&v170[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = v166;
      v172 = v170;

      v173 = v166;
      return v172;
    }

    v149 = v181;
    v148 = v182;
    (v116)(v181, v182, v6);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v188[0] = v153;
      *v152 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v137(v149, v6);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, v188);

      *(v152 + 4) = v157;
      _os_log_impl(&dword_2493AC000, v150, v151, "Could not create rootNode for FPFS %s, going to fallback to safeDomainNode", v152, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v153);
      MEMORY[0x24C1FE850](v153, -1, -1);
      MEMORY[0x24C1FE850](v152, -1, -1);

      v137(v182, v6);
    }

    else
    {

      v137(v149, v6);
      v137(v148, v6);
    }

    goto LABEL_22;
  }

  v119 = type metadata accessor for DOCRootNode();
  v120 = objc_allocWithZone(v119);
  *&v120[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = 0;
  v185.receiver = v120;
  v185.super_class = v119;
  v121 = objc_msgSendSuper2(&v185, sel_initWithSubject_, v118);

  v122 = v89[1];
  v122(v19, v6);
  v123 = *&v121[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain];
  *&v121[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = v115;
  v108 = v121;

  v124 = v115;
  v122(v117, v6);
  return v108;
}

id UIViewController.doc_shouldAllowAnimations.getter()
{
  if (![v0 doc_hasAppearedOrIsAppearing])
  {
    goto LABEL_8;
  }

  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {

      if ([v0 doc_isAppearing])
      {
        v4 = [v0 navigationController];
        if (v4)
        {
          v5 = v4;
          v6 = [v4 topViewController];
          if (v6)
          {
            v7 = v6;
            type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
            v8 = v0;
            v9 = static NSObject.== infix(_:_:)();

            v10 = v9 ^ 1;
            return (v10 & 1);
          }
        }
      }

      v10 = 1;
      return (v10 & 1);
    }

LABEL_8:
    v10 = 0;
    return (v10 & 1);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent()
{
  result = lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent;
  if (!lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent;
  if (!lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent;
  if (!lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent);
  }

  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SetFilenameExtensionVisibilityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent()
{
  result = lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent;
  if (!lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent;
  if (!lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent;
  if (!lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetGroupingModeIntent and conformance SetGroupingModeIntent);
  }

  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SetGroupingModeIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t DOCAssertionCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall UTType.doc_conformsToAny(inContentTypes:)(Swift::OpaquePointer inContentTypes)
{
  isa = UTType._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UTType();
  v2 = Array._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)isa doc_conformsToAnyInContentTypes:v2];

  return v3;
}

unint64_t lazy protocol witness table accessor for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions()
{
  result = lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions;
  if (!lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions;
  if (!lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions;
  if (!lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions;
  if (!lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem.SharingStatusOptions and conformance FPItem.SharingStatusOptions);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DOCFocusableCollectionViewNavigationModifierFlags(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

id DOCNode.localizedSharingStatusDescription(type:options:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v61[-v13];
  v15 = *a1;
  v16 = *a2;
  result = [v3 fpfs_fpItem];
  if (result)
  {
    v18 = result;
    DOCNode.collaborationType.getter(&v63);
    if (v63 == 2)
    {
      v22 = DOCNode.documentAttributes.getter();
      if (v22)
      {
        v23 = v22;
        result = _DocumentManagerBundle();
        if (result)
        {
          v24 = result;
          v64._object = 0x8000000249BD2CA0;
          v25._countAndFlagsBits = 0x4025206D6F7246;
          v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v26.value._object = 0xEB00000000656C62;
          v64._countAndFlagsBits = 0xD000000000000042;
          v25._object = 0xE700000000000000;
          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v64);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_249B9A480;
          v29 = [v23 sender];
          v30 = [v29 preferredFormattedName];

          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          *(v28 + 56) = MEMORY[0x277D837D0];
          *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v28 + 32) = v31;
          *(v28 + 40) = v33;
          v34 = static String.localizedStringWithFormat(_:_:)();

          return v34;
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }
    }

    else if (v63 != 3)
    {
      v19 = FPItem.collaborationStatus.getter();
      if (v20)
      {
        v21 = v19;

        return v21;
      }
    }

    if ([v3 isShared])
    {
      v62 = v15;
      v35 = DOCNode.decorationLabel(for:)(&v62);
      v37 = v36;
      if (v15)
      {
        if ([v3 isSharedByCurrentUser])
        {
          if (!v37)
          {
            result = _DocumentManagerBundle();
            if (result)
            {
              v38 = result;
              v65._object = 0x8000000249BD2C70;
              v39._countAndFlagsBits = 0x6220646572616853;
              v39._object = 0xEC000000654D2079;
              v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v40.value._object = 0xEB00000000656C62;
              v41._countAndFlagsBits = 0;
              v41._object = 0xE000000000000000;
              v65._countAndFlagsBits = 0xD00000000000002ALL;
              countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v65)._countAndFlagsBits;

              return countAndFlagsBits;
            }

            goto LABEL_29;
          }
        }

        else if (!v37)
        {
          v43 = [v18 preformattedOwnerName];
          if (v43)
          {
            v44 = v43;
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v21 = compactOrDetailed #1 <A>(_:) in DOCNode.localizedSharingStatusDescription(type:options:)(v45, v47, v16);

            return v21;
          }

          v48 = [v3 ownerNameComponents];
          if (v48)
          {
            v49 = v48;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v7 + 32))(v14, v11, v6);
            v50 = objc_opt_self();
            isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v52 = [v50 localizedStringFromPersonNameComponents:isa style:0 options:0];

            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = v54;

            v56 = compactOrDetailed #1 <A>(_:) in DOCNode.localizedSharingStatusDescription(type:options:)(v53, v55, v16);

            (*(v7 + 8))(v14, v6);
            return v56;
          }

          result = _DocumentManagerBundle();
          if (result)
          {
            v57 = result;
            v66._object = 0x8000000249BD2C30;
            v58._countAndFlagsBits = 0x646572616853;
            v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v59.value._object = 0xEB00000000656C62;
            v66._countAndFlagsBits = 0xD000000000000038;
            v58._object = 0xE600000000000000;
            v60._countAndFlagsBits = 0;
            v60._object = 0xE000000000000000;
            countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v66)._countAndFlagsBits;

            return countAndFlagsBits;
          }

          goto LABEL_30;
        }
      }

      return v35;
    }

    return 0;
  }

  return result;
}

void DOCNode.collaborationType.getter(unsigned __int8 *a1@<X8>)
{
  v3 = DOCNode.documentAttributes.getter();
  if (v3)
  {

    v4 = 2;
  }

  else
  {
    v5 = [v1 fpfs_fpItem];
    if (v5)
    {
      v6 = v5;
      FPItem.collaborationStatus.getter();
      if (v7)
      {

        v4 = [v6 doc_isCollaborationInvitation];
      }

      else
      {

        v4 = 3;
      }
    }

    else
    {
      v4 = 3;
    }
  }

  *a1 = v4;
}

id DOCNode.documentAttributes.getter()
{
  v0 = [objc_opt_self() returnToSender];
  v1 = [v0 isEnabled];

  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    result = [result propertyAsNSObject_];
    if (!result)
    {
      return result;
    }

    v11 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    return 0;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 originatorInfo];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v6, v8);
  }

  else
  {
    v9.super.isa = 0;
  }

  v12 = [objc_opt_self() documentAttributesFromData_];
  swift_unknownObjectRelease();

  return v12;
}

objc_class *FPItem.collaborationStatus.getter()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v3 = static DOCCollaborationHighlightManager.shared;
  v4 = v2(v1);

  if (!v4)
  {
    return 0;
  }

  v5 = FPItem.collaborationSenderDisplayName.getter();
  if (!v6)
  {

    return 0;
  }

  v7 = v5;
  v8 = v6;
  if ([v4 highlightType] || (objc_msgSend(v1, sel_doc_isCollaborationInvitation) & 1) != 0)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v10 = result;
      v21 = 0x8000000249BFCCA0;
      v11 = 0x4025206D6F7246;
      v12 = 0x617A696C61636F4CLL;
      v13 = 0xEB00000000656C62;
      v14 = 0xD000000000000050;
      v15 = 0xE700000000000000;
      v16.super.isa = v10;
      v17 = 0;
      v18 = 0xE000000000000000;
LABEL_9:
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v12, v16, *&v17, *&v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_249B9A480;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v19 + 32) = v7;
      *(v19 + 40) = v8;
      v20 = static String.localizedStringWithFormat(_:_:)();

      return v20;
    }

    __break(1u);
  }

  else
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v10 = result;
      v21 = 0x8000000249BFCD00;
      v11 = 0x40252068746957;
      v12 = 0x617A696C61636F4CLL;
      v13 = 0xEB00000000656C62;
      v15 = 0xE700000000000000;
      v16.super.isa = v10;
      v17 = 0;
      v18 = 0xE000000000000000;
      v14 = 0xD000000000000041;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for DOCCollaborationHighlightManager()) init];
  static DOCCollaborationHighlightManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for DOCOpenWithMenuController()) init];
  static DOCOpenWithMenuController.shared = result;
  return result;
}

{
  type metadata accessor for DOCFileExtensionManager();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA016DOCFileExtensionB0C0F033_B1FA4EBED11BE9AB6139AA17EFDBDE03LLVGMd);
  swift_allocObject();
  v0[4] = specialized DOCThreadSafeState.init(_:)(MEMORY[0x277D84F98]);
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    v2 = static NSUserDefaults.docUserDefaults;
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v1 = 0;
  }

  v0[5] = v2;
  v0[6] = 0;
  static DOCFileExtensionManager.shared = v0;

  return v1;
}

{
  result = [objc_allocWithZone(type metadata accessor for DOCUTIDescriptorCollector()) init];
  static DOCUTIDescriptorCollector.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for DOCDragMonitor()) init];
  static DOCDragMonitor.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for DOCAnalyticsManager()) init];
  static DOCAnalyticsManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for DOCTransitionableContext()) init];
  static DOCTransitionableContext.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for DOCTagManager(0)) init];
  static DOCTagManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for DOCUSBStorageKitManager()) init];
  static DOCUSBStorageKitManager.shared = result;
  return result;
}

char *DOCCollaborationHighlightManager.().init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_highlightCenter;
  *&v0[v9] = [objc_allocWithZone(MEMORY[0x277CDC678]) init];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_collaborationIdentifierToHighlightCache;
  *&v0[v10] = [objc_allocWithZone(MEMORY[0x277CBEA78]) &selRef_setTeamData_];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_fetchQueue;
  v14[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v19 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v16 + 104))(v4, *MEMORY[0x277D85260], v17);
  *&v0[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_coalescingTimer] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_pendingIdentifiersToNotify] = MEMORY[0x277D84FA0];
  v11 = type metadata accessor for DOCCollaborationHighlightManager();
  v18.receiver = v0;
  v18.super_class = v11;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  [*&v12[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_highlightCenter] setDelegate_];
  return v12;
}

id DOCCollaborationHighlightManager.highlight(for:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 collaborationIdentifier];
  if (!v13)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.DocumentManager);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_2493AC000, v28, v29, "No collaboration identifier for item %@", v30, 0xCu);
      outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

    return 0;
  }

  v39 = v9;
  v40 = v4;
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_collaborationIdentifierToHighlightCache] objectForKey_];

  if (!v18)
  {
    v33 = swift_allocObject();
    v33[2] = a1;
    v33[3] = v1;
    v33[4] = v15;
    v33[5] = v17;
    aBlock[4] = partial apply for closure #1 in DOCCollaborationHighlightManager.highlight(for:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_45;
    v34 = _Block_copy(aBlock);
    v35 = a1;
    v36 = v1;
    static DispatchQoS.unspecified.getter();
    v41 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v7, v34);
    _Block_release(v34);
    (*(v40 + 8))(v7, v3);
    (*(v39 + 8))(v12, v8);

    return 0;
  }

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.DocumentManager);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_2493AC000, v21, v22, "Got collaboration highlight from cache for %@", v23, 0xCu);
    outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  return v18;
}

uint64_t sub_2493C1284()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

Swift::String __swiftcall DOCNode.localizedSizeDescription()()
{
  v1 = [v0 fileSize];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  if (([v1 longLongValue] & 0x8000000000000000) != 0)
  {

LABEL_7:
    v3 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v7;
    goto LABEL_8;
  }

  if (one-time initialization token for byteCountFormatter != -1)
  {
    swift_once();
  }

  v3 = [(objc_class *)byteCountFormatter.super.super.isa stringFromByteCount:Int64.init(truncating:)()];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

LABEL_8:
  v8 = v4;
  v9 = v6;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id one-time initialization function for byteCountFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  result = [v0 setCountStyle_];
  byteCountFormatter.super.super.isa = v0;
  return result;
}

uint64_t DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)(uint64_t a1, char a2)
{
  v96 = a1;
  v4 = type metadata accessor for DateComponents();
  v94 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v95 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Calendar();
  v7 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v8);
  v98 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v91 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v87 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = v87 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v87 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = v87 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v92 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v97 = v87 - v35;
  v38 = MEMORY[0x28223BE20](v36, v37);
  v99 = v87 - v39;
  if (a2)
  {
    v40 = [v2 doc_lastUsedDate];
    if (v40)
    {
      v41 = v97;
      v42 = v40;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = *(v30 + 32);
      v43(v24, v41, v29);
      v44 = *(v30 + 56);
      v44(v24, 0, 1, v29);
      v43(v28, v24, v29);
      v44(v28, 0, 1, v29);
    }

    else
    {
      v90 = v7;
      v47 = v30;
      v48 = *(v30 + 56);
      v49 = 1;
      v48(v24, 1, 1, v29);
      v50 = [v2 modificationDate];
      if (v50)
      {
        v51 = v50;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = 0;
      }

      v48(v20, v49, 1, v29);
      outlined init with take of (key: URL, value: FPItem)(v20, v28, &_s10Foundation4DateVSgMd);
      v30 = v47;
      v52 = (*(v47 + 48))(v24, 1, v29);
      v7 = v90;
      if (v52 != 1)
      {
        outlined destroy of CharacterSet?(v24, &_s10Foundation4DateVSgMd);
      }
    }
  }

  else
  {
    v45 = [v2 modificationDate];
    if (v45)
    {
      v46 = v45;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v30 + 56))(v16, 0, 1, v29);
    }

    else
    {
      (*(v30 + 56))(v16, 1, 1, v29);
    }

    outlined init with take of (key: URL, value: FPItem)(v16, v28, &_s10Foundation4DateVSgMd);
  }

  v53 = *(v30 + 48);
  if (v53(v28, 1, v29) == 1)
  {
    v54 = v28;
LABEL_14:
    outlined destroy of CharacterSet?(v54, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v56 = *(v30 + 32);
  v56(v99, v28, v29);
  if (v96 == 2)
  {
    if (one-time initialization token for modificationDateFormatter != -1)
    {
      swift_once();
    }

    v57 = static FPItem.modificationDateFormatter;
    v58 = v99;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v60 = [v57 stringFromDate_];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v30 + 8))(v58, v29);
  }

  else
  {
    v87[0] = v56;
    v87[1] = v30 + 32;
    v90 = v7;
    v96 = v4;
    static Calendar.current.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
    v62 = type metadata accessor for Calendar.Component();
    v63 = *(v62 - 8);
    v64 = *(v63 + 72);
    v65 = *(v63 + 80);
    v88 = v53;
    v66 = (v65 + 32) & ~v65;
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_249BA08D0;
    v68 = v67 + v66;
    v69 = *MEMORY[0x277CC9968];
    v89 = v29;
    v70 = *(v63 + 104);
    v70(v68, v69, v62);
    v70(v68 + v64, *MEMORY[0x277CC9998], v62);
    v70(v68 + 2 * v64, *MEMORY[0x277CC9988], v62);
    v71 = v98;
    v70(v68 + 3 * v64, *MEMORY[0x277CC9978], v62);
    v72 = v89;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v67);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v73 = v97;
    Date.init()();
    v74 = v95;
    Calendar.dateComponents(_:from:)();

    v75 = *(v30 + 8);
    v75(v73, v72);
    v76 = v91;
    Calendar.date(from:)();
    if (v88(v76, 1, v72) == 1)
    {
      (*(v94 + 8))(v74, v96);
      (*(v90 + 8))(v71, v93);
      v75(v99, v72);
      v54 = v76;
      goto LABEL_14;
    }

    (v87[0])(v92, v76, v72);
    v77 = static Date.> infix(_:_:)();
    v78 = v96;
    v79 = v94;
    v80 = v90;
    if (v77)
    {
      if (one-time initialization token for timeDateFormatter != -1)
      {
        swift_once();
      }

      v81 = static FPItem.timeDateFormatter;
      v82 = v99;
      v83.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v84 = [v81 stringFromDate_];
    }

    else
    {
      if (one-time initialization token for dayOnlyDateFormatter != -1)
      {
        swift_once();
      }

      v85 = static FPItem.dayOnlyDateFormatter;
      v82 = v99;
      v83.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v84 = [v85 stringFromDate_];
    }

    v86 = v84;

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75(v92, v72);
    (*(v79 + 8))(v95, v78);
    (*(v80 + 8))(v98, v93);
    v75(v82, v72);
  }

  return v61;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_17(unint64_t *a1, void (*a2)(uint64_t))
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

id one-time initialization function for timeDateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  static FPItem.timeDateFormatter = v0;
  return result;
}

uint64_t getEnumTag for DOCNodeCollaborationType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t UTType.isFolderUTI.getter()
{
  v0 = UTType.identifier.getter();
  v2 = String.isFolderUTI.getter(v0, v1);

  return v2 & 1;
}

uint64_t String.isFolderUTI.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for UTType();
  v31 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v30 - v14;
  if (one-time initialization token for folderUTICache != -1)
  {
    swift_once();
  }

  v16 = folderUTICache;
  v17 = MEMORY[0x24C1FAD20](a1, a2);
  v18 = [v16 objectForKey_];

  if (!v18)
  {

    UTType.init(_:)();
    v20 = v31;
    if ((*(v31 + 48))(v7, 1, v8) == 1)
    {
      outlined destroy of CharacterSet?(v7, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    }

    else
    {
      (*(v20 + 32))(v15, v7, v8);
      static UTType.folder.getter();
      v21 = UTType.conforms(to:)();
      v22 = *(v20 + 8);
      v22(v12, v8);
      if (v21)
      {
        static UTType.package.getter();
        v23 = UTType.conforms(to:)();
        v22(v12, v8);
        v22(v15, v8);
        v19 = v23 ^ 1;
LABEL_11:
        v24 = folderUTICache;
        v25 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        v26 = v24;
        v27 = [v25 initWithBool_];
        v28 = MEMORY[0x24C1FAD20](a1, a2);
        [v26 setObject:v27 forKey:v28];

        return v19 & 1;
      }

      v22(v15, v8);
    }

    v19 = 0;
    goto LABEL_11;
  }

  v19 = [v18 BOOLValue];

  return v19 & 1;
}

id one-time initialization function for folderUTICache()
{
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  folderUTICache = result;
  return result;
}

uint64_t static UTType.docWatchface.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UTType();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t one-time initialization function for docWatchface()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docWatchface);
  v5 = __swift_project_value_buffer(v4, static UTType.docWatchface);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docMSOfficeWordProcessing()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docMSOfficeWordProcessing);
  v5 = __swift_project_value_buffer(v4, static UTType.docMSOfficeWordProcessing);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docMSOfficeWordProcessingTemplate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docMSOfficeWordProcessingTemplate);
  v5 = __swift_project_value_buffer(v4, static UTType.docMSOfficeWordProcessingTemplate);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docMSOfficeXMLWordProcessing()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docMSOfficeXMLWordProcessing);
  v5 = __swift_project_value_buffer(v4, static UTType.docMSOfficeXMLWordProcessing);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docOfficeOpenXMLWordProcessing()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docOfficeOpenXMLWordProcessing);
  v5 = __swift_project_value_buffer(v4, static UTType.docOfficeOpenXMLWordProcessing);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docOfficeOpenXMLMacroEnabledWordProcessing()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docOfficeOpenXMLMacroEnabledWordProcessing);
  v5 = __swift_project_value_buffer(v4, static UTType.docOfficeOpenXMLMacroEnabledWordProcessing);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docOfficeOpenXMLWordProcessingTemplate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docOfficeOpenXMLWordProcessingTemplate);
  v5 = __swift_project_value_buffer(v4, static UTType.docOfficeOpenXMLWordProcessingTemplate);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docOfficeOpenXMLMacroEnabledWordProcessingTemplate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docOfficeOpenXMLMacroEnabledWordProcessingTemplate);
  v5 = __swift_project_value_buffer(v4, static UTType.docOfficeOpenXMLMacroEnabledWordProcessingTemplate);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall DOCNode.displayName(withHiddenPathExtension:)(Swift::Bool withHiddenPathExtension)
{
  if (([v1 isAppContainer] & 1) != 0 || objc_msgSend(v1, sel_isFolder) && objc_msgSend(v1, sel_folderType) != 1 && objc_msgSend(v1, sel_folderType))
  {
    v3 = [v1 displayName];
  }

  else
  {
    v4 = [v1 filename];
    if (!v4)
    {
      __break(1u);
      goto LABEL_10;
    }

    v6 = v4;
    v3 = [v4 fp:withHiddenPathExtension displayNameFromFilenameWithHiddenPathExtension:objc_msgSend(v1 isFolder:sel_isFolder)];
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v4 = v7;
  v5 = v9;
LABEL_10:
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

double @objc UITraitCollection.enclosingUIPHorizontalInset.getter(void *a1)
{
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();
  v2 = a1;
  UITraitCollection.subscript.getter();
  v4 = v3;

  return v4;
}

unint64_t lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait()
{
  result = lazy protocol witness table cache variable for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait;
  if (!lazy protocol witness table cache variable for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait);
  }

  return result;
}

double protocol witness for static UITraitDefinition.defaultValue.getter in conformance DOCUIPHorizontalInsetTrait@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&static DOCUIPHorizontalInsetTrait.defaultValue;
  *a1 = static DOCUIPHorizontalInsetTrait.defaultValue;
  return result;
}

uint64_t ColumnType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO16StatusCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v98 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO13TagCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v94 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO14SizeCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v93 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO14KindCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v97 = &v68 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO19DateAddedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v15);
  v96 = &v68 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO24DateLastOpenedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v17);
  v92 = &v68 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO21DateCreatedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v19);
  v91 = &v68 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO22DateModifiedCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v21);
  v95 = &v68 - v22;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO20CustomNameCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v23);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO14NameCodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v73 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v68 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables10ColumnTypeO10CodingKeys33_3B84591AC55F811F8B02574F7A9AADB4LLOGMd);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v68 - v33;
  v35 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  lazy protocol witness table accessor for type ColumnType.CodingKeys and conformance ColumnType.CodingKeys();
  v36 = v100;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v36)
  {
    v69 = v26;
    v70 = v25;
    v37 = v95;
    v38 = v96;
    v39 = v97;
    v71 = 0;
    v100 = v31;
    v41 = v98;
    v40 = v99;
    v42 = KeyedDecodingContainer.allKeys.getter();
    if (*(v42 + 16) != 1 || (v43 = *(v42 + 32), v43 == 10))
    {
      v50 = type metadata accessor for DecodingError();
      swift_allocError();
      v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v52 = &type metadata for ColumnType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
      swift_willThrow();
      (*(v100 + 8))(v34, v30);
      goto LABEL_11;
    }

    if (*(v42 + 32) <= 4u)
    {
      if (*(v42 + 32) <= 1u)
      {
        v58 = v71;
        if (*(v42 + 32))
        {
          v103 = 1;
          lazy protocol witness table accessor for type ColumnType.CustomNameCodingKeys and conformance ColumnType.CustomNameCodingKeys();
          v64 = v70;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v58)
          {
            v65 = v72;
            v48 = KeyedDecodingContainer.decode(_:forKey:)();
            v49 = v67;
            (*(v75 + 8))(v64, v65);
            (*(v100 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v45 = v40;
            goto LABEL_41;
          }
        }

        else
        {
          v102 = 0;
          lazy protocol witness table accessor for type ColumnType.NameCodingKeys and conformance ColumnType.NameCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v58)
          {
            (*(v73 + 8))(v29, v69);
            (*(v100 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v48 = 0;
            v49 = 0;
            v45 = v40;
            goto LABEL_41;
          }
        }
      }

      else
      {
        v44 = v71;
        if (v43 != 2)
        {
          v45 = v40;
          if (v43 == 3)
          {
            v105 = 3;
            lazy protocol witness table accessor for type ColumnType.DateCreatedCodingKeys and conformance ColumnType.DateCreatedCodingKeys();
            v46 = v91;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v47 = v100;
            if (!v44)
            {
              (*(v78 + 8))(v46, v77);
              (*(v47 + 8))(v34, v30);
              swift_unknownObjectRelease();
              v48 = 0;
              v49 = 2;
LABEL_41:
              *v45 = v48;
              v45[1] = v49;
              return __swift_destroy_boxed_opaque_existential_0(v101);
            }
          }

          else
          {
            v106 = 4;
            lazy protocol witness table accessor for type ColumnType.DateLastOpenedCodingKeys and conformance ColumnType.DateLastOpenedCodingKeys();
            v62 = v92;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v47 = v100;
            if (!v44)
            {
              (*(v79 + 8))(v62, v80);
              (*(v47 + 8))(v34, v30);
              swift_unknownObjectRelease();
              v48 = 0;
              v49 = 3;
              goto LABEL_41;
            }
          }

          (*(v47 + 8))(v34, v30);
          goto LABEL_11;
        }

        v104 = 2;
        lazy protocol witness table accessor for type ColumnType.DateModifiedCodingKeys and conformance ColumnType.DateModifiedCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          (*(v76 + 8))(v37, v74);
          (*(v100 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v48 = 0;
          v49 = 1;
          v45 = v40;
          goto LABEL_41;
        }
      }

      (*(v100 + 8))(v34, v30);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v101);
    }

    v45 = v40;
    if (*(v42 + 32) <= 6u)
    {
      v54 = v100;
      if (v43 == 5)
      {
        v107 = 5;
        lazy protocol witness table accessor for type ColumnType.DateAddedCodingKeys and conformance ColumnType.DateAddedCodingKeys();
        v59 = v71;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v59)
        {
          (*(v82 + 8))(v38, v81);
          (*(v54 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v48 = 0;
          v49 = 4;
          goto LABEL_41;
        }
      }

      else
      {
        v55 = v45;
        v108 = 6;
        lazy protocol witness table accessor for type ColumnType.KindCodingKeys and conformance ColumnType.KindCodingKeys();
        v66 = v71;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v66)
        {
          (*(v83 + 8))(v39, v84);
          (*(v54 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v48 = 0;
          v49 = 5;
          goto LABEL_40;
        }
      }
    }

    else
    {
      v54 = v100;
      if (v43 == 7)
      {
        v55 = v45;
        v109 = 7;
        lazy protocol witness table accessor for type ColumnType.SizeCodingKeys and conformance ColumnType.SizeCodingKeys();
        v60 = v93;
        v61 = v71;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v61)
        {
          (*(v85 + 8))(v60, v86);
          (*(v54 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v48 = 0;
          v49 = 6;
          goto LABEL_40;
        }
      }

      else
      {
        v55 = v45;
        if (v43 == 8)
        {
          v110 = 8;
          lazy protocol witness table accessor for type ColumnType.TagCodingKeys and conformance ColumnType.TagCodingKeys();
          v56 = v94;
          v57 = v71;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v57)
          {
            (*(v87 + 8))(v56, v88);
            (*(v54 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v48 = 0;
            v49 = 7;
LABEL_40:
            v45 = v55;
            goto LABEL_41;
          }
        }

        else
        {
          v111 = 9;
          lazy protocol witness table accessor for type ColumnType.StatusCodingKeys and conformance ColumnType.StatusCodingKeys();
          v63 = v71;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v63)
          {
            (*(v89 + 8))(v41, v90);
            (*(v54 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v48 = 0;
            v49 = 8;
            goto LABEL_40;
          }
        }
      }
    }

    (*(v54 + 8))(v34, v30);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0(v101);
}