uint64_t specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, void *a2)
{
  if (a1)
  {
    [a2 setNeedsLayout];
  }

  v3 = [a2 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, v7);

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, void *a2, void *a3)
{
  if ((a1 & 1) != 0 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    MEMORY[0x24C1FB090](a2);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v6 = [a2 subviews];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1FC540](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, v10, a3);

        ++v9;
        if (v12 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }
}

uint64_t UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, uint64_t (*a2)(void *), uint64_t a3)
{
  if (a1 & 1) == 0 || (result = a2(v3), (result))
  {
    v7 = [v3 subviews];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x24C1FC540](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, a2, a3);

        ++v10;
        if (v13 == i)
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

  return result;
}

id UIViewController.doc_performBlock(allowingAnimations:block:)(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  if ((a1 & 1) != 0 && [v3 doc_hasAppearedOrIsAppearing])
  {
    result = [v3 view];
    if (!result)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result window];

    if (v8)
    {

      if ([v3 doc_isAppearing])
      {
        v9 = [v3 navigationController];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 topViewController];
          if (v11)
          {
            v12 = v11;
            type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
            v13 = v3;
            v14 = static NSObject.== infix(_:_:)();

            if (v14)
            {
              goto LABEL_9;
            }
          }

          else
          {
          }
        }
      }

      return a2();
    }
  }

LABEL_9:
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
  *(v17 + 24) = v16;
  v19[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed () -> ();
  v19[3] = &block_descriptor_50_1;
  v18 = _Block_copy(v19);

  [v15 performWithoutAnimation_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t UIViewController.doc_findSubtreeViews<A>(includingSelf:loadViewIfNeed:ofType:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [v5 viewIfLoaded];
  if (v8)
  {
    v10 = v8;
    v11 = UIView.doc_findSubtreeViews<A>(includingSelf:ofType:)(a1 & 1, v9, a4);

    return v11;
  }

  else
  {

    return static Array._allocateUninitialized(_:)();
  }
}

uint64_t partial apply for closure #1 in static UIView.doc_performAnimatable(allowingAnimations:animationDuration:animations:completion:)()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  return v1(1);
}

uint64_t specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(char a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  if (a1)
  {
    a3(a2);
  }

  v7 = [a2 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, v11, a3, a4);

      ++v10;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t outlined destroy of (key: String, value: DOCDebugUIScenario.Settings)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_26DocumentManagerExecutables18DOCDebugUIScenarioV8SettingsV5valuetMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions()
{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions;
  if (!lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTraitChangeObservingOptions and conformance DOCTraitChangeObservingOptions);
  }

  return result;
}

id DOCOuterScrollView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCOuterScrollView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCOuterScrollView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCOuterScrollView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCOuterScrollView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCOuterScrollView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCOuterScrollView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCOuterScrollView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DOCDocumentSource.== infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 identifier];
  v4 = [a2 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void static DOCPickerSource.getBundles(from:)(void *a1)
{
  v1 = &selRef__setLocationsInBrowseTab_;
  v2 = [a1 identifier];
  if (!v2)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = objc_allocWithZone(MEMORY[0x277CC1E50]);
  v5 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 containingBundleRecord];
    if (!v7)
    {

      return;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {

      return;
    }

    v9 = [v8 applicationExtensionRecords];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord);
    lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type LSApplicationExtensionRecord and conformance NSObject, &lazy cache variable for type metadata for LSApplicationExtensionRecord);
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v10 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v10 = v33;
      v11 = v34;
      v12 = v35;
      v13 = v36;
      v14 = v37;
    }

    else
    {
      v13 = 0;
      v15 = -1 << *(v10 + 32);
      v11 = v10 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v10 + 56);
    }

    v18 = (v12 + 64) >> 6;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v19 = v32, v20 = v13, v21 = v14, !v32))
    {
LABEL_33:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return;
    }

    while (1)
    {
      v24 = [v19 extensionPointRecord];
      v25 = v1;
      v26 = [v24 v1[466]];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == 0xD00000000000001CLL && 0x8000000249BD67E0 == v29)
      {

        goto LABEL_33;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_33;
      }

      v13 = v20;
      v14 = v21;
      v1 = v25;
      if (v10 < 0)
      {
        goto LABEL_16;
      }

LABEL_19:
      v22 = v13;
      v23 = v14;
      v20 = v13;
      if (!v14)
      {
        break;
      }

LABEL_23:
      v21 = (v23 - 1) & v23;
      v19 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!v19)
      {
        goto LABEL_33;
      }
    }

    while (1)
    {
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        goto LABEL_33;
      }

      v23 = *(v11 + 8 * v20);
      ++v22;
      if (v23)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_36;
  }
}

id @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x24C1FAD20]();

  v6[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t specialized static DOCDocumentSource.< infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String.lowercased()();

  v5 = [a2 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String.lowercased()();

  if (v4._countAndFlagsBits == v6._countAndFlagsBits && v4._object == v6._object)
  {
    v8 = 0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for DOCPickerSource.DOCPickerBundles(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DOCPickerSource.DOCPickerBundles(uint64_t result, int a2, int a3)
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

double DOCProgressIndicatorView.fractionCompleted.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCProgressIndicatorView.fractionCompleted.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCProgressIndicatorView.fractionCompleted.didset();
}

void DOCProgressIndicatorView.fractionCompleted.didset()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = v4;
    v7(ObjectType, v5, v2);
    *v3 = v4;
    *(v3 + 8) = v5;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*DOCProgressIndicatorView.fractionCompleted.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCProgressIndicatorView.fractionCompleted.modify;
}

void DOCProgressIndicatorView.fractionCompleted.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCProgressIndicatorView.fractionCompleted.didset();
  }
}

void *DOCProgressIndicatorView.preferredIconColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCProgressIndicatorView.preferredIconColor.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v6 = a1;
      v7 = v5;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {

LABEL_12:
        return;
      }
    }

    else
    {
      v9 = a1;
    }

LABEL_8:
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (v11)
    {
      type metadata accessor for DOCCircularProgressView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = *(v2 + v4);
        v14 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor);
        *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = v13;
        v15 = v13;
        v16 = v11;

        DOCCircularProgressView.updateColors()();
      }
    }

    v7 = a1;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_8;
  }
}

void (*DOCProgressIndicatorView.preferredIconColor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return DOCProgressIndicatorView.preferredIconColor.modify;
}

void DOCProgressIndicatorView.preferredIconColor.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_19:
LABEL_20:
          v11 = *v4;
          goto LABEL_26;
        }
      }

      else
      {
        v14 = v3;
      }
    }

    else if (!v7)
    {
      goto LABEL_20;
    }

    v15 = v2[10];
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v17 = *(v15 + v16);
    if (v17)
    {
      type metadata accessor for DOCCircularProgressView();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = *(v2[10] + v2[11]);
        v20 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor);
        *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = v19;
        v21 = v19;
        v22 = v17;

        DOCCircularProgressView.updateColors()();
      }
    }

    v8 = v3;
    goto LABEL_19;
  }

  if (v3)
  {
    if (v7)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v11 = v3;
      v12 = v7;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

LABEL_26:
        goto LABEL_27;
      }
    }

    else
    {
      v23 = v3;
    }

LABEL_22:
    v24 = v2[10];
    v25 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v26 = *(v24 + v25);
    if (v26)
    {
      type metadata accessor for DOCCircularProgressView();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = *(v2[10] + v2[11]);
        v29 = *(v27 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor);
        *(v27 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = v28;
        v30 = v28;
        v31 = v26;

        DOCCircularProgressView.updateColors()();
      }
    }

    v11 = v3;
    goto LABEL_26;
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_27:

  free(v2);
}

Swift::Int DOCProgressIndicatorView.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

char *DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(char *a1, double a2)
{
  v4 = 0xD00000000000001DLL;
  v5 = *a1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_preferredIconColor] = 0;
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView];
  v7 = type metadata accessor for DOCProgressIndicatorView();
  *v6 = 0;
  *(v6 + 1) = 0;
  v20.receiver = v2;
  v20.super_class = v7;
  v8 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = v8;
  if (v5)
  {
    v10 = specialized static DOCCircularProgressView.view(byAddingTo:changeAnimationDuration:)(v8, a2);
    v12 = v11;
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v14 = *&v9[v13];
    *&v9[v13] = v10;
    v15 = "com.apple.fileprovider-nonui";
  }

  else
  {
    v10 = specialized static DOCHorizontalBarProgressView.view(byAddingTo:changeAnimationDuration:)(v8, a2);
    v12 = v16;
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView;
    swift_beginAccess();
    v14 = *&v9[v13];
    *&v9[v13] = v10;
    v15 = "DOCProgress.circularIndicator";
    v4 = 0xD00000000000001FLL;
  }

  *&v9[v13 + 8] = v12;
  v17 = v10;

  v18 = MEMORY[0x24C1FAD20](v4, v15 | 0x8000000000000000);
  [v17 setAccessibilityIdentifier_];

  return v9;
}

void DOCProgressIndicatorView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_contentView);
}

uint64_t DOCHorizontalBarProgressView.changeAnimationDuration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  swift_beginAccess();
  return *v1;
}

uint64_t DOCHorizontalBarProgressView.changeAnimationDuration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void DOCHorizontalBarProgressView.fractionCompleted.setter(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = [v4 progress];
  if (v6 > 1.0 || (v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x58))(v5), (v8 & 1) != 0))
  {
    v9 = [v4 window];
    if (v9)
    {

      v11 = [objc_opt_self() areAnimationsEnabled];
    }

    else
    {
      v11 = 0;
    }

    *&v10 = a1;
    [v4 setProgress:v11 animated:v10];
  }

  else
  {
    v12 = *&v7;
    v13 = objc_opt_self();
    v15[4] = partial apply for closure #1 in DOCHorizontalBarProgressView.fractionCompleted.setter;
    v15[5] = v3;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15[3] = &block_descriptor_35;
    v14 = _Block_copy(v15);

    [v13 animateWithDuration:v14 animations:v12];

    _Block_release(v14);
  }
}

id closure #1 in DOCHorizontalBarProgressView.fractionCompleted.setter(void *a1, double a2)
{
  v4 = [a1 window];
  if (v4)
  {

    v6 = [objc_opt_self() areAnimationsEnabled];
  }

  else
  {
    v6 = 0;
  }

  *&v5 = a2;
  return [a1 setProgress:v6 animated:v5];
}

void (*DOCHorizontalBarProgressView.fractionCompleted.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  [v1 progress];
  *a1 = v3;
  return DOCHorizontalBarProgressView.fractionCompleted.modify;
}

id DOCHorizontalBarProgressView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration];
  *v9 = 0;
  v9[8] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCHorizontalBarProgressView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCHorizontalBarProgressView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCHorizontalBarProgressView_changeAnimationDuration];
  *v3 = 0;
  v3[8] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCHorizontalBarProgressView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DOCCircularProgressView.init(changeAnimationDuration:)(double a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_fractionCompleted] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize];
  __asm { FMOV            V0.2D, #20.0 }

  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize] = _Q0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor] = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor;
  v13 = objc_opt_self();
  *&v1[v12] = [v13 systemBlueColor];
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor;
  *&v1[v14] = [v13 systemBlueColor];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor;
  *&v1[v15] = [v13 systemBackgroundColor];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_changeAnimationDuration] = a1;
  v16 = *v6;
  v17 = v6[1];
  v23.receiver = v1;
  v23.super_class = type metadata accessor for DOCCircularProgressView();
  v18 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, v16, v17);
  [v18 setOpaque_];
  DOCCircularProgressView.setupLayers()();
  DOCCircularProgressView.updateColors()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249B9A480;
  v20 = type metadata accessor for UITraitUserInterfaceStyle();
  v21 = MEMORY[0x277D74BF0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v18;
}

void DOCCircularProgressView.updateColors()()
{
  v1 = [v0 tintColor];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor];
    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor];
    }

    else
    {
      v4 = v1;
      v3 = 0;
    }

    v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor] = v4;
    v6 = v3;
    v7 = v4;

    v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor] = v7;
    v11 = v7;

    v9 = [objc_opt_self() systemBackgroundColor];
    v10 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor] = v9;

    DOCCircularProgressView.updateLayers()();
  }

  else
  {
    __break(1u);
  }
}

void DOCCircularProgressView.layoutSublayers(of:)(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DOCCircularProgressView();
  objc_msgSendSuper2(&v15, sel_layoutSublayersOfLayer_, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA37E0;
  v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer];
  *(inited + 32) = v4;
  v14 = inited + 32;
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer];
  *(inited + 40) = v5;
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer];
  *(inited + 48) = v6;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v10, inited);
      goto LABEL_5;
    }

    if (v10 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v11 = *(inited + 8 * v10 + 32);
LABEL_5:
    v12 = v11;
    ++v10;
    [a1 bounds];
    [v12 setBounds_];
    [a1 bounds];
    MidX = CGRectGetMidX(v16);
    [a1 bounds];
    [v12 setPosition_];

    if (v10 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      DOCCircularProgressView.updateLayers()();
      return;
    }
  }

  __break(1u);
}

void DOCCircularProgressView.setupLayers()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer] setStrokeStart_];
  [*&v0[v1] setStrokeEnd_];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer] setContentsGravity_];
  v3 = [v0 layer];
  [v3 addSublayer_];

  v4 = [v0 layer];
  [v4 addSublayer_];

  v5 = [v0 layer];
  [v5 addSublayer_];
}

void DOCCircularProgressView.updateLayers()()
{
  [v0 bounds];
  x = v91.origin.x;
  y = v91.origin.y;
  height = v91.size.height;
  Width = CGRectGetWidth(v91);
  v5 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize];
  if (Width > *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize])
  {
    v6 = Width;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize];
  }

  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = v6;
  v92.size.height = height;
  v7 = CGRectGetHeight(v92);
  if (v7 > v5[1])
  {
    v8 = v7;
  }

  else
  {
    v8 = v5[1];
  }

  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = v6;
  v93.size.height = v8;
  v9 = CGRectGetHeight(v93);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = v6;
  v94.size.height = v8;
  v10 = CGRectGetWidth(v94);
  if (v10 < v9)
  {
    v9 = v10;
  }

  v11 = v9 * 0.5;
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = v6;
  v95.size.height = v8;
  MidX = CGRectGetMidX(v95);
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = v6;
  v96.size.height = v8;
  MidY = CGRectGetMidY(v96);
  [v0 frame];
  v14 = 2.0;
  v15 = 2.0;
  if (CGRectGetHeight(v97) <= 50.0)
  {
    v16 = [v0 traitCollection];
    [v16 displayScale];
    v18 = v17;

    v15 = (1.0 / fmax(v18, 1.0) + 1.0) * 0.5;
  }

  v19 = MidX - v11;
  v20 = MidY - v11;
  [v0 frame];
  if (CGRectGetHeight(v98) <= 50.0)
  {
    v21 = [v0 traitCollection];
    [v21 displayScale];
    v23 = v22;

    v14 = (1.0 / fmax(v23, 1.0) + 1.0) * 0.5;
  }

  v88 = v20;
  v89 = v19;
  v99.origin.x = v19;
  v99.origin.y = v20;
  v99.size.width = v9;
  v99.size.height = v9;
  v100 = CGRectInset(v99, v15, v14);
  v24 = v100.origin.x;
  v25 = v100.origin.y;
  v26 = v100.size.width;
  v27 = v100.size.height;
  v28 = CGRectGetHeight(v100) * 0.5;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  v30 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer];
  v101.origin.x = v24;
  v101.origin.y = v25;
  v101.size.width = v26;
  v101.size.height = v27;
  v31 = CGRectGetWidth(v101);
  v102.origin.x = v24;
  v102.origin.y = v25;
  v102.size.width = v26;
  v102.size.height = v27;
  v32 = CGRectGetHeight(v102);
  if (v32 >= v31)
  {
    v32 = v31;
  }

  v33 = v32 * 0.5 - v28 * 0.5;
  v103.origin.x = v24;
  v103.origin.y = v25;
  v103.size.width = v26;
  v103.size.height = v27;
  v34 = CGRectGetMidX(v103);
  v104.origin.x = v24;
  v104.origin.y = v25;
  v104.size.width = v26;
  v104.size.height = v27;
  v35 = CGRectGetMidY(v104);
  v36 = objc_opt_self();
  v37 = [v36 bezierPathWithArcCenter:1 radius:v34 startAngle:v35 endAngle:v33 clockwise:{4.71238898, 10.9955743}];
  [v37 setLineWidth_];
  v38 = [v37 CGPath];

  [v30 setPath_];
  [*&v0[v29] setLineWidth_];
  v39 = *&v0[v29];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  v43 = [v42 CGColor];

  [v41 setFillColor_];
  v44 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor];
  v45 = *&v0[v29];
  v46 = [v44 CGColor];
  [v45 setStrokeColor_];

  [*&v0[v29] setStrokeEnd_];
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  v48 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer];
  [v0 frame];
  v49 = 4.0;
  v50 = CGRectGetHeight(v105) <= 50.0;
  v51 = 4.0;
  if (v50)
  {
    v52 = [v0 traitCollection];
    [v52 displayScale];
    v54 = v53;

    v51 = 1.0 / fmax(v54, 1.0) + 1.0;
  }

  [v48 setBorderWidth_];

  v55 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor];
  v56 = *&v0[v47];
  v57 = [v55 CGColor];
  [v56 setBorderColor_];

  v58 = *&v0[v47];
  [v58 bounds];
  [v58 setCornerRadius_];

  v59 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  v60 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer];
  [v0 frame];
  if (CGRectGetHeight(v107) <= 50.0)
  {
    v61 = [v0 traitCollection];
    [v61 displayScale];
    v63 = v62;

    v49 = 1.0 / fmax(v63, 1.0) + 1.0;
  }

  v108.origin.x = v89;
  v108.origin.y = v88;
  v108.size.width = v9;
  v108.size.height = v9;
  v64 = CGRectGetWidth(v108);
  v109.origin.x = v89;
  v109.origin.y = v88;
  v109.size.width = v9;
  v109.size.height = v9;
  v65 = CGRectGetHeight(v109);
  if (v65 >= v64)
  {
    v65 = v64;
  }

  v66 = v65 * 0.5 - v49 * 0.5;
  v110.origin.x = v89;
  v110.origin.y = v88;
  v110.size.width = v9;
  v110.size.height = v9;
  v67 = CGRectGetMidX(v110);
  v111.origin.x = v89;
  v111.origin.y = v88;
  v111.size.width = v9;
  v111.size.height = v9;
  v68 = [v36 bezierPathWithArcCenter:1 radius:v67 startAngle:CGRectGetMidY(v111) endAngle:v66 clockwise:{4.71238898, 10.3672558}];
  [v68 setLineWidth_];
  v69 = [v68 CGPath];

  [v60 setPath_];
  v70 = *&v0[v47];
  v71 = *&v0[v59];
  [v70 borderWidth];
  [v71 setLineWidth_];

  v72 = *&v0[v47];
  v73 = *&v0[v59];
  v74 = [v72 borderColor];
  [v73 setStrokeColor_];

  v75 = *&v0[v59];
  v76 = [v40 clearColor];
  v77 = [v76 CGColor];

  [v75 setFillColor_];
  [*&v0[v59] setLineCap_];
  if ([objc_opt_self() areAnimationsEnabled] && (objc_msgSend(objc_opt_self(), sel_disableActions) & 1) == 0 && (objc_msgSend(v0, sel_isHiddenOrHasHiddenAncestor) & 1) == 0)
  {
    v78 = [*&v0[v29] presentationLayer];
    if (v78)
    {
      v79 = v78;
      [v78 strokeEnd];
    }

    else
    {
      [*&v0[v29] strokeEnd];
    }

    v80 = MEMORY[0x24C1FAD20](0x6E45656B6F727473, 0xE900000000000064);
    v81 = [objc_opt_self() animationWithKeyPath_];

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v81 setFromValue_];

    v83 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v81 setToValue_];

    v84 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_changeAnimationDuration];
    v85 = v81;
    [v85 setDuration_];
    [v85 setFillMode_];

    v86 = *&v0[v29];
    v87 = [v85 keyPath];
    [v86 addAnimation:v85 forKey:v87];
  }

  DOCCircularProgressView.updateIndeterminateUI()();
}

void DOCCircularProgressView.updateIndeterminateUI()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_fractionCompleted);
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  v3 = (v1 < COERCE_DOUBLE(1)) ^ [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer) isHidden];
  if ((v3 & 1) == 0)
  {
    v4 = objc_opt_self();
    [v4 begin];
    [v4 setDisableActions_];
  }

  [*(v0 + v2) setHidden_];
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer) setHidden_];
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer) setHidden_];
  if ((v3 & 1) == 0)
  {
    [objc_opt_self() commit];
  }

  v5 = *(v0 + v2);
  v6 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BD6A90);
  if (v1 >= COERCE_DOUBLE(1))
  {
    [v5 removeAnimationForKey_];
  }

  else
  {
    v16 = [v5 animationForKey_];

    v7 = v16;
    if (v16)
    {
      goto LABEL_10;
    }

    v8 = MEMORY[0x24C1FAD20](0xD000000000000014, 0x8000000249BD6AB0);
    v9 = [objc_opt_self() animationWithKeyPath_];

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v9 setFromValue_];

    v11 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v9 setToValue_];

    v12 = v9;
    [v12 setRemovedOnCompletion_];
    LODWORD(v13) = 2139095039;
    [v12 setRepeatCount_];
    [v12 setFillMode_];
    [v12 setDuration_];
    v14 = CACurrentMediaTime();
    [v12 setBeginTimeMode_];
    [v12 duration];
    [v12 setBeginTime_];

    v5 = *(v0 + v2);
    v6 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BD6A90);
    [v5 addAnimation:v12 forKey:v6];
  }

  v7 = v6;
LABEL_10:
}

id DOCProgressIndicatorView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *specialized static DOCHorizontalBarProgressView.view(byAddingTo:changeAnimationDuration:)(void *a1, double a2)
{
  type metadata accessor for DOCHorizontalBarProgressView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v6 = v4;
  v5(*&a2, 0);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [a1 tintColor];
  [v6 setTintColor_];

  [a1 addSubview_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0470;
  v10 = [v6 widthAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant_];

  *(v9 + 32) = v11;
  v12 = [v6 centerYAnchor];
  v13 = [a1 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v9 + 40) = v14;
  v15 = [v6 leadingAnchor];
  v16 = [a1 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v9 + 48) = v17;
  v18 = [v6 trailingAnchor];
  v19 = [a1 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v9 + 56) = v20;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints_];

  return v6;
}

char *specialized static DOCCircularProgressView.view(byAddingTo:changeAnimationDuration:)(void *a1, double a2)
{
  v4 = objc_allocWithZone(type metadata accessor for DOCCircularProgressView());
  v5 = DOCCircularProgressView.init(changeAnimationDuration:)(a2);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  v6 = [v5 heightAnchor];
  v7 = [a1 heightAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  LODWORD(v9) = 1144750080;
  [v8 setPriority_];
  v10 = [v5 heightAnchor];
  v11 = [a1 widthAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  LODWORD(v13) = 1144750080;
  [v12 setPriority_];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA5C40;
  *(v14 + 32) = v8;
  *(v14 + 40) = v12;
  v15 = v8;
  v16 = v12;
  v17 = [v5 &selRef_splitViewController_didChangeFromState_toState_isUserDisplayModeChange_ + 6];
  v18 = [v5 heightAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v14 + 48) = v19;
  v20 = [v5 &selRef_splitViewController_didChangeFromState_toState_isUserDisplayModeChange_ + 6];
  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  *(v14 + 56) = v21;
  v22 = [v5 centerXAnchor];
  v23 = [a1 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v14 + 64) = v24;
  v25 = [v5 centerYAnchor];
  v26 = [a1 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v14 + 72) = v27;
  v28 = [v5 topAnchor];
  v29 = [a1 topAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor_];

  *(v14 + 80) = v30;
  v31 = [v5 bottomAnchor];
  v32 = [a1 bottomAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor_];

  *(v14 + 88) = v33;
  v34 = [v5 leadingAnchor];
  v35 = [a1 leadingAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor_];

  *(v14 + 96) = v36;
  v37 = [v5 trailingAnchor];
  v38 = [a1 trailingAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor_];

  *(v14 + 104) = v39;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints_];

  return v5;
}

unint64_t lazy protocol witness table accessor for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style()
{
  result = lazy protocol witness table cache variable for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style;
  if (!lazy protocol witness table cache variable for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressIndicatorView.Style and conformance DOCProgressIndicatorView.Style);
  }

  return result;
}

void specialized DOCCircularProgressView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_fractionCompleted) = 0;
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_borderLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_indeterminateLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  __asm { FMOV            V0.2D, #20.0 }

  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_minSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_preferredIconColor) = 0;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBorderColor;
  v10 = objc_opt_self();
  *(v0 + v9) = [v10 systemBlueColor];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressFillColor;
  *(v0 + v11) = [v10 systemBlueColor];
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView_progressBackgroundColor;
  *(v0 + v12) = [v10 systemBackgroundColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static GetContentOfFolderIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables24GetContentOfFolderIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables24GetContentOfFolderIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD6B50;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables24GetContentOfFolderIntentV10AppIntents0J9ParameterCyAC12FINodeEntityVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent()
{
  result = lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent;
  if (!lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent;
  if (!lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent;
  if (!lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent);
  }

  return result;
}

uint64_t key path setter for GetContentOfFolderIntent.folder : GetContentOfFolderIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t GetContentOfFolderIntent.folder.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

void (*GetContentOfFolderIntent.folder.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t GetContentOfFolderIntent.title.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static GetContentOfFolderIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static GetContentOfFolderIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static GetContentOfFolderIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static GetContentOfFolderIntent.authenticationPolicy : GetContentOfFolderIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static GetContentOfFolderIntent.authenticationPolicy : GetContentOfFolderIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t GetContentOfFolderIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for FINodeEntity();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContentOfFolderIntent.perform(), 0, 0);
}

uint64_t GetContentOfFolderIntent.perform()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "[GetContentOfFolderIntent] Performing Get Contents of Folder Intent", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[6];

  IntentParameter.wrappedValue.getter();
  v7 = *(v5 + *(v6 + 32));
  v0[11] = v7;
  v8 = v7;
  outlined destroy of FINodeEntity(v5);
  v9 = v8;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *(v10 + 16) = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  *v11 = v0;
  v11[1] = GetContentOfFolderIntent.perform();

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000015, 0x8000000249BD6B80, partial apply for closure #1 in static FolderNodeObserver.getChildrenNodes(in:), v10, v12);
}

{

  return MEMORY[0x2822009F8](GetContentOfFolderIntent.perform(), 0, 0);
}

{
  v28 = v0;
  v2 = v0[11];

  v3 = v0[2];
  v27 = MEMORY[0x277D84F90];
  v25 = v3 >> 62;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_36:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v26 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, v3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    v1 = [v7 fpfs_fpItem];
    v9 = swift_unknownObjectRelease();
    ++v6;
    if (v1)
    {
      MEMORY[0x24C1FB090](v9);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v26 = v27;
      v6 = v8;
    }
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = v26 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {
    swift_bridgeObjectRelease_n();

    goto LABEL_23;
  }

  v1 = swift_slowAlloc();
  *v1 = 134218240;
  if (v12)
  {
    goto LABEL_43;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    *(v1 + 4) = i;

    *(v1 + 6) = 2048;
    v14 = v25 ? __CocoaSet.count.getter() : *(v4 + 16);

    *(v1 + 14) = v14;

    _os_log_impl(&dword_2493AC000, v10, v11, "[GetContentOfFolderIntent] %ld items out of %ld nodes found", v1, 0x16u);
    MEMORY[0x24C1FE850](v1, -1, -1);
LABEL_23:

    if (v12)
    {
      v15 = __CocoaSet.count.getter();
      if (!v15)
      {
LABEL_38:

        v18 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    else
    {
      v15 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    v27 = MEMORY[0x277D84F90];
    v10 = &v27;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  v16 = 0;
  v17 = v0[7];
  v18 = v27;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x24C1FC540](v16, v26);
    }

    else
    {
      v19 = *(v26 + 8 * v16 + 32);
    }

    FINodeEntity.init(item:)(v19, v0[8]);
    v27 = v18;
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
      v18 = v27;
    }

    v22 = v0[8];
    ++v16;
    *(v18 + 16) = v21 + 1;
    outlined init with take of FINodeEntity(v22, v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v21);
  }

  while (v15 != v16);

LABEL_39:
  v0[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
  static IntentResult.result<A>(value:)();

  v23 = v0[1];

  return v23();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance GetContentOfFolderIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static GetContentOfFolderIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance GetContentOfFolderIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return GetContentOfFolderIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance GetContentOfFolderIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of GetContentOfFolderIntent.init(folder:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance GetContentOfFolderIntent(uint64_t a1)
{
  ContentOfFolderIntent = lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();

  return MEMORY[0x28210B538](a1, ContentOfFolderIntent);
}

void *FolderNodeObserver.__allocating_init(folderNode:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *FolderNodeObserver.init(folderNode:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return specialized static FolderNodeObserver.getChildrenNodes(in:)(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21 - v14;
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v10, v6, v19);
  _Block_release(v19);

  (*(v25 + 8))(v6, v3);
  (*(v23 + 8))(v10, v24);
}

uint64_t closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  type metadata accessor for FolderNodeObserver();
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = a1;
  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  swift_unknownObjectRetain();
  FolderNodeObserver.startObserving(completionBlock:)(partial apply for closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:), v11);
}

uint64_t closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

void FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for DOCNodeObserver());
  v7 = swift_unknownObjectRetain();
  v8 = DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(v7, 0, 0);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = a1;
  v9[4] = a2;

  v10 = DOCNodeObserver.addDidFinishGatheringSubscriber(_:)(partial apply for closure #1 in FolderNodeObserver.startObserving(completionBlock:), v9);

  v11 = *(v3 + 32);
  *(v3 + 32) = v10;

  (*((*MEMORY[0x277D85000] & **&v8[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1D0))();
  v12 = *(v3 + 24);
  *(v3 + 24) = v8;
}

uint64_t closure #1 in FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a1;
  v14[7] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:), v14);
}

uint64_t closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:), v9, v8);
}

uint64_t closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)()
{
  v1 = v0[7];
  v2 = v0[5];

  v2(v1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 24);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & **&v5[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1C8);
      v7 = v5;
      v6();
      v8 = *(v4 + 32);
      if (v8)
      {
        v9 = v8;
        DOCNodeObserver.removeSubscriber(_:)();
      }
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t FolderNodeObserver.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FolderNodeObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of FINodeEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FINodeEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
    lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
    lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A]);
  }

  return result;
}

uint64_t specialized static FolderNodeObserver.getChildrenNodes(in:)()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  *v3 = v0;
  v3[1] = specialized static FolderNodeObserver.getChildrenNodes(in:);

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000015, 0x8000000249BD6B80, closure #1 in static FolderNodeObserver.getChildrenNodes(in:)partial apply, v2, v4);
}

{

  return MEMORY[0x2822009F8](specialized static FolderNodeObserver.getChildrenNodes(in:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t default argument 0 of GetContentOfFolderIntent.init(folder:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v45 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v44 = &v36 - v14;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v22 - 8, v23);
  *&v36 = type metadata accessor for LocalizedStringResource();
  v24 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v25);
  v37 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v19, v27, v15);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28(v19, v27, v15);
  v29 = v44;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v24 + 56))(v29, 0, 1, v36);
  v30 = type metadata accessor for FINodeEntity();
  (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v31 = swift_allocObject();
  v36 = xmmword_249B9A480;
  *(v31 + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  v32 = type metadata accessor for IntentDialog();
  v33 = *(*(v32 - 8) + 56);
  v33(v39, 1, 1, v32);
  v33(v40, 1, 1, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = v36;
  static UTType.folder.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  v46 = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v34, 1);
  v47 = 2;
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  lazy protocol witness table accessor for type LocationOptionsProvider and conformance LocationOptionsProvider();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init<A>(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

unint64_t lazy protocol witness table accessor for type LocationOptionsProvider and conformance LocationOptionsProvider()
{
  result = lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider;
  if (!lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider;
  if (!lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationOptionsProvider and conformance LocationOptionsProvider);
  }

  return result;
}

uint64_t dispatch thunk of static FolderNodeObserver.getChildrenNodes(in:)(uint64_t a1)
{
  v6 = (*(v1 + 160) + **(v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in FolderNodeObserver.startObserving(completionBlock:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)(v2, v3);
}

uint64_t lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5NeverOGMd);

  return closure #1 in closure #1 in closure #1 in static FolderNodeObserver.getChildrenNodes(in:)();
}

uint64_t key path getter for DOCOperation.finishedBlock : DOCOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCOperation.finishedBlock : DOCOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCOperation.finishedBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_finishedBlock);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCOperation.finishedBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_finishedBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

id DOCOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCOperation.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = v1;
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v22 = v0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation__isFinished] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation__isExecuting] = 0;
  v9 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_finishedBlock];
  v17 = type metadata accessor for OS_dispatch_queue();
  v21 = "t Contents of Folder intent";
  *v9 = 0;
  *(v9 + 1) = 0;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  v20 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = *MEMORY[0x277D85260];
  v11 = *(v23 + 104);
  v23 += 104;
  v11(v4, v10, v1);
  v12 = v4;
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v22;
  *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue] = v13;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11(v12, v10, v18);
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for DOCOperation();
  v24.receiver = v14;
  v24.super_class = v15;
  return objc_msgSendSuper2(&v24, sel_init);
}

Swift::Void __swiftcall DOCOperation.start()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCOperation.start();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

id closure #1 in DOCOperation.start()(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isCancelled])
  {
    v20 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    aBlock[4] = closure #1 in DOCOperation._finishIfCanceled()partial apply;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_71;
    v14 = _Block_copy(aBlock);
    v19 = v7;
    v15 = v14;
    v16 = a1;
    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v6, v15);
    _Block_release(v15);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v19);
  }

  else
  {
    [a1 setExecuting_];

    return [a1 main];
  }
}

uint64_t DOCOperation.isFinished.getter()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCOperation.isFinished.getter;
  *(v3 + 24) = v2;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9_3;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void DOCOperation.isFinished.setter(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x24C1FAD20](0x6873696E69467369, 0xEA00000000006465);
  [v2 willChangeValueForKey_];

  v5 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in DOCOperation.isFinished.setter;
  *(v7 + 24) = v6;
  v11[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_19_3;
  v8 = _Block_copy(v11);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x24C1FAD20](0x6873696E69467369, 0xEA00000000006465);
    [v9 didChangeValueForKey_];
  }
}

uint64_t DOCOperation.isExecuting.getter()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCOperation.isExecuting.getter;
  *(v3 + 24) = v2;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_29_1;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void DOCOperation.isExecuting.setter(char a1)
{
  v3 = MEMORY[0x24C1FAD20](0x7475636578457369, 0xEB00000000676E69);
  [v1 willChangeValueForKey_];

  v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_synchronizationQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in DOCOperation.isExecuting.setter;
  *(v6 + 24) = v5;
  v10[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_39_2;
  v7 = _Block_copy(v10);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x24C1FAD20](0x7475636578457369, 0xEB00000000676E69);
    [v8 didChangeValueForKey_];
  }
}

Swift::Void __swiftcall DOCOperation.cancel()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCOperation();
  objc_msgSendSuper2(&v1, sel_cancel);
  DOCOperation._finishIfCanceled()();
}

id DOCOperation._finishIfCanceled()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 isCancelled];
  if (result)
  {
    v17[1] = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
    v18 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    aBlock[4] = partial apply for closure #1 in DOCOperation._finishIfCanceled();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_64;
    v14 = _Block_copy(aBlock);
    v17[0] = v6;
    v15 = v14;
    v16 = v0;
    static DispatchQoS.unspecified.getter();
    v19 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v11, v5, v15);
    _Block_release(v15);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v17[0]);

    return v18;
  }

  return result;
}

uint64_t closure #1 in DOCOperation._finishIfCanceled()(void *a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:{0, 0, 0}];
  (*((*MEMORY[0x277D85000] & *a1) + 0xE8))(v4, v2);

  return outlined destroy of Any?(v4);
}

uint64_t DOCOperation.completed(with:error:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCOperation_callbackQueue];
  outlined init with copy of Any?(a1, v24);
  v14 = swift_allocObject();
  v15 = v24[1];
  *(v14 + 24) = v24[0];
  *(v14 + 16) = v2;
  *(v14 + 40) = v15;
  *(v14 + 56) = a2;
  aBlock[4] = partial apply for closure #1 in DOCOperation.completed(with:error:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_45;
  v16 = _Block_copy(aBlock);
  v17 = v2;
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v21);
}

id DOCOperation.finish(with:error:)(uint64_t a1, uint64_t a2)
{
  result = [v2 isFinished];
  if ((result & 1) == 0)
  {
    v6 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
    if (v7)
    {
      v8 = v7;
      v7(a1, a2);
      (*((*v6 & *v2) + 0xB0))(0, 0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
    }

    [v2 setExecuting_];

    return [v2 setFinished_];
  }

  return result;
}

id DOCOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @in_guaranteed Error?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

void notificationCallback(notification:responseCode:)(void *a1, char a2)
{
  if (a1)
  {
    v3 = one-time initialization token for blockForNotification;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = specialized Dictionary._Variant.removeValue(forKey:)(v4);
    swift_endAccess();
    if (v5)
    {
      v6[0] = a2 & 3;
      v5(v6);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
    }
  }
}

unint64_t one-time initialization function for blockForNotification()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ySucTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DOCSystemAlert.blockForNotification = result;
  return result;
}

Swift::Int DOCSystemAlert.Response.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCSystemAlert.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t static DOCSystemAlert.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DOCSystemAlert.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCSystemAlert.shared = a1;
}

uint64_t (*static DOCSystemAlert.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static DOCSystemAlert.shared : DOCSystemAlert.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCSystemAlert.shared;
}

uint64_t key path setter for static DOCSystemAlert.shared : DOCSystemAlert.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCSystemAlert.shared = v1;
}

void DOCSystemAlert.presentError(title:message:primaryButtonTitle:alternateButtonTitle:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = *MEMORY[0x277D85DE8];
  if (v10[2].isa)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v12, "Error dialog is already visible. Don't show a second one.", v13, 2u);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    return;
  }

  osloga = v10;
  error = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SStGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA08C0;
  v54 = a8;
  v22 = *MEMORY[0x277CBF188];
  *(inited + 32) = *MEMORY[0x277CBF188];
  v23 = *MEMORY[0x277CBF198];
  *(inited + 56) = *MEMORY[0x277CBF198];
  *(inited + 64) = a3;
  v24 = MEMORY[0x277CBF1E8];
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v25 = *v24;
  *(inited + 72) = a4;
  *(inited + 80) = v25;
  *(inited + 88) = a5;
  *(inited + 96) = a6;
  v26 = v25;

  v27 = v22;
  v28 = v23;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSg_SStMd);
  swift_arrayDestroy();
  if (v54)
  {
    v29 = *MEMORY[0x277CBF1C0];

    v30 = v29;
    specialized Dictionary.subscript.setter(a7, v54, v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd);
  lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, isa);

  v33 = v10[2].isa;
  v10[2].isa = v32;
  v34 = v32;

  if (!v34)
  {
    goto LABEL_14;
  }

  if (error)
  {

LABEL_14:

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.UI);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      swift_beginAccess();
      *(v38 + 4) = error;
      _os_log_impl(&dword_2493AC000, v36, v37, "Could not create CFUserNotification: %d", v38, 8u);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }

    return;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v34, @objc notificationCallback(notification:responseCode:), 0);
  v40 = v10[3].isa;
  v10[3].isa = RunLoopSource;
  v41 = RunLoopSource;

  if (v41)
  {
    v42 = CFRunLoopGetCurrent();
    v43 = CFRunLoopCopyCurrentMode(v42);
    if (!v43)
    {
      v43 = *MEMORY[0x277CBF048];
    }

    if (one-time initialization token for blockForNotification != -1)
    {
      swift_once();
    }

    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = a9;
    v45[4] = a10;
    v45[5] = v42;
    swift_beginAccess();

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a9);
    v46 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = static DOCSystemAlert.blockForNotification;
    static DOCSystemAlert.blockForNotification = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in DOCSystemAlert.presentError(title:message:primaryButtonTitle:alternateButtonTitle:responseHandler:), v45, v34, isUniquelyReferenced_nonNull_native);
    static DOCSystemAlert.blockForNotification = v57;
    swift_endAccess();

    CFRunLoopAddSource(v46, v41, v43);
    CFRunLoopRun();
  }

  else
  {

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.UI);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2493AC000, v49, v50, "Could not create CFRunLoopSource.", v51, 2u);
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    v52 = osloga[2].isa;
    osloga[2].isa = 0;
  }
}

void @objc notificationCallback(notification:responseCode:)(void *a1, char a2)
{
  v4 = a1;
  notificationCallback(notification:responseCode:)(a1, a2);
}

uint64_t closure #1 in DOCSystemAlert.presentError(title:message:primaryButtonTitle:alternateButtonTitle:responseHandler:)(uint64_t *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, __CFRunLoop *a5)
{
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DOCSystemAlert.dismissError()();
    if (v7 == 1)
    {
      if (a3)
      {
        v13 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      if (v7)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.UI);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 134217984;
          *(v12 + 4) = v7;
          _os_log_impl(&dword_2493AC000, v10, v11, "Unexpected response from validating notification: %lu", v12, 0xCu);
          MEMORY[0x24C1FE850](v12, -1, -1);
        }

        goto LABEL_14;
      }

      if (a3)
      {
        v13 = 0;
LABEL_8:
        a3(&v13);
      }
    }

LABEL_14:
    CFRunLoopStop(a5);
  }

  return result;
}

void DOCSystemAlert.dismissError()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    CFRunLoopSourceInvalidate(v1);
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  v3 = *(v0 + 16);
  if (v3)
  {
    CFUserNotificationCancel(v3);
    v4 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t DOCSystemAlert.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCSystemAlert.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CFStringRefaSgMd);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response()
{
  result = lazy protocol witness table cache variable for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response;
  if (!lazy protocol witness table cache variable for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response);
  }

  return result;
}

void (*NavigateQuickLookIntent.direction.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static NavigateQuickLookIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables23NavigateQuickLookIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables23NavigateQuickLookIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD70D0;
  v4._countAndFlagsBits = 0xD000000000000028;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables23NavigateQuickLookIntentV10AppIntents0I9ParameterCyAC19NavigationDirectionOGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent()
{
  result = lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent;
  if (!lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent;
  if (!lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent;
  if (!lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent);
  }

  return result;
}

uint64_t static NavigateQuickLookIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NavigateQuickLookIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NavigateQuickLookIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static NavigateQuickLookIntent.authenticationPolicy : NavigateQuickLookIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static NavigateQuickLookIntent.authenticationPolicy : NavigateQuickLookIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance NavigateQuickLookIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.init() in conformance NavigateQuickLookIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of NavigateQuickLookIntent.init(direction:)(&outlined read-only object #0 of NavigateQuickLookIntent.init());
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance NavigateQuickLookIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t default argument 0 of NavigateQuickLookIntent.init(direction:)(uint64_t a1)
{
  v37 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v32 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = v30 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v30[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v30[0] - 8);
  MEMORY[0x28223BE20](v30[0], v23);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v25(v17, v24, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v17, v24, v13);
  v26 = v31;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v26, 0, 1, v30[0]);
  v38 = 0;
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v32, 1, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

id @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t DOCFullDocumentManagerViewController.pickerIsLoading.getter()
{
  v1 = [v0 effectiveBrowserViewController];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

  if (!v4)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_6:
    v7 = 0;
    return v7 & 1;
  }

  v6 = (*((*v3 & *v5) + 0x998))();

  v7 = v6 ^ 1;
  return v7 & 1;
}

void key path getter for DOCFullDocumentManagerViewController.pickerIsLoading : DOCFullDocumentManagerViewController(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 effectiveBrowserViewController];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

  if (!v6)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = (*((*v5 & *v7) + 0x998))();

  v9 = v8 ^ 1;
LABEL_7:
  *a2 = v9 & 1;
}

void key path setter for DOCFullDocumentManagerViewController.pickerIsLoading : DOCFullDocumentManagerViewController(char *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 effectiveBrowserViewController];
  if (v4)
  {
    v5 = v4;
    v11 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();

    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v2;
        *(v8 + 32) = v3;
        v9 = v11;
        v10 = v3;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }
    }
  }
}

void DOCFullDocumentManagerViewController.pickerIsLoading.setter(char a1)
{
  v2 = v1;
  v4 = [v1 effectiveBrowserViewController];
  if (v4)
  {
    v5 = v4;
    v11 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();

    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = a1 & 1;
        *(v8 + 32) = v2;
        v9 = v11;
        v10 = v2;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }
    }
  }
}

void closure #1 in DOCFullDocumentManagerViewController.pickerIsLoading.setter(void *a1, unsigned __int8 a2, void *a3)
{
  v6 = DOCItemCollectionViewController.pickerIsLoadingIndicatorItem.getter();
  v20 = [v6 customView];

  if (!v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  v8 = &selRef_startAnimating;
  if ((a2 & 1) == 0)
  {
    v8 = &selRef_stopAnimating;
  }

  [v7 *v8];
  v9 = a2 ^ 1;
  (*((*MEMORY[0x277D85000] & *a1) + 0x9A0))((a2 ^ 1) & 1);
  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
  v10 = [a3 view];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  [v10 setUserInteractionEnabled_];

  v12 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v12 view];

  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v14 setUserInteractionEnabled_];

LABEL_8:
  v15 = objc_opt_self();
  v16 = [a3 configuration];
  v17 = [v16 sceneIdentifier];

  v18 = [v15 globalTabbedBrowserControllerForIdentifier_];
  if (v18)
  {
    v19 = [v18 view];

    if (v19)
    {
      [v19 setUserInteractionEnabled_];

      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_11:
}

void (*DOCFullDocumentManagerViewController.pickerIsLoading.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = [v1 effectiveBrowserViewController];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

  if (!v6)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = (*((*v5 & *v7) + 0x998))();

  v9 = v8 ^ 1;
LABEL_7:
  *(a1 + 8) = v9 & 1;
  return DOCFullDocumentManagerViewController.pickerIsLoading.modify;
}

void DOCFullDocumentManagerViewController.pickerIsLoading.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = [*a1 effectiveBrowserViewController];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      return;
    }

    v15 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

    if (!v15)
    {
      return;
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    *(v9 + 32) = v3;
    v10 = v3;
    v15 = v15;
    goto LABEL_10;
  }

  if (!v5)
  {
    return;
  }

  v15 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

  if (!v15)
  {
    return;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v4;
    *(v13 + 32) = v3;
    v15 = v15;
    v14 = v3;
LABEL_10:
    DOCRunInMainThread(_:)();
  }

LABEL_11:
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.setupPickerFilenameViewIfNeeded()()
{
  v1 = [v0 pickerFilenameView];
  if (!v1)
  {
    v2 = [v0 pickerContext];
    if (!v2)
    {
      return;
    }

    v33 = v2;
    v3 = [v0 configuration];
    v4 = [v3 forSavingDocuments];

    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = objc_allocWithZone(type metadata accessor for DOCPickerFilenameView(0));
    v6 = v0;
    v7 = v33;
    DOCPickerFilenameView.init(with:presentingViewController:)(v7, v6);
    v33 = v8;
    [v33 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *((*MEMORY[0x277D85000] & *v33) + 0xE0);
    v10 = swift_unknownObjectRetain();
    v9(v10, &protocol witness table for DOCFullDocumentManagerViewController);
    v11 = [v6 view];
    if (v11)
    {
      v12 = v11;
      [v11 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_249BA37E0;
      v14 = [v33 leadingAnchor];
      v15 = [v6 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 safeAreaLayoutGuide];

        v18 = [v17 leadingAnchor];
        v19 = [v14 constraintEqualToAnchor_];

        *(v13 + 32) = v19;
        v20 = [v33 trailingAnchor];
        v21 = [v6 view];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 safeAreaLayoutGuide];

          v24 = [v23 trailingAnchor];
          v25 = [v20 constraintEqualToAnchor_];

          *(v13 + 40) = v25;
          v26 = [v33 bottomAnchor];

          v27 = [v6 view];
          if (v27)
          {
            v28 = v27;
            v29 = objc_opt_self();
            v30 = [v28 bottomAnchor];

            v31 = [v26 constraintEqualToAnchor:v30 constant:0.0];
            *(v13 + 48) = v31;
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v29 activateConstraints_];

            [v6 setPickerFilenameView_];
LABEL_9:
            v1 = v33;
            goto LABEL_10;
          }

LABEL_17:
          __break(1u);
          return;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
}

void DOCFullDocumentManagerViewController.didTapOn(unselectableItem:)(void *a1)
{
  v3 = [v1 configuration];
  v4 = [v3 forSavingDocuments];

  if (v4)
  {
    v5 = [v1 pickerFilenameView];
    if (v5)
    {
      v10 = v5;
      v6 = [a1 displayName];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      (*((*MEMORY[0x277D85000] & *v10) + 0x110))(v7, v9);
    }
  }
}

uint64_t DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1)
{
  v2 = v1;
  v208 = a1;
  v212 = type metadata accessor for DOCOperationItem();
  v220 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v3);
  v5 = (&v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v193 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v201 = &v193 - v12;
  v13 = type metadata accessor for CharacterSet();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v222 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v211 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v199 = &v193 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v209 = &v193 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v207 = &v193 - v29;
  v32 = MEMORY[0x28223BE20](v30, v31);
  v206 = &v193 - v33;
  v34 = [v1 effectiveBrowserViewController];
  if (v34)
  {
    v35 = v34;
    v36 = (*((*MEMORY[0x277D85000] & *v34) + 0xE8))();

    if (v36)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v38 = v37;
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *(v39 + 24) = 1;
        *(v39 + 32) = v2;
        v40 = v36;
        v41 = v2;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }
    }
  }

  v200 = v17;
  v42 = [v2 pickerContext];
  if (v42)
  {

    v43 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
    if (!v43)
    {
      goto LABEL_115;
    }

    v44 = v43;
    DOCSidebarViewController.prepareForTeardown()();
  }

  v45 = [v2 pickerContext];
  v205 = v2;
  if (v45)
  {
    v46 = v45;
    v47 = [v45 urlsToSave];

    if (v47)
    {
      v194 = v14;
      v195 = v13;
      v196 = v9;
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = v2;
      v50 = swift_allocObject();
      *(v50 + 16) = MEMORY[0x277D84F98];
      v51 = (v50 + 16);
      v52 = swift_allocObject();
      v53 = v208;
      v52[2] = v49;
      v52[3] = v53;
      v52[4] = v48;
      v52[5] = v50;
      v202 = v52;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v54 = v49;
      swift_unknownObjectRetain();
      v55 = [v54 configuration];
      LODWORD(v53) = [v55 forSavingDocuments];

      if (!v53)
      {

        swift_bridgeObjectRelease_n();
        if (one-time initialization token for UI == -1)
        {
LABEL_43:
          v107 = type metadata accessor for Logger();
          __swift_project_value_buffer(v107, static Logger.UI);
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v224[0] = v111;
            *v110 = 136446210;
            *(v110 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BD7410, v224);
            _os_log_impl(&dword_2493AC000, v108, v109, "%{public}s: Trying to export with the wrong interaction mode", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v111);
            MEMORY[0x24C1FE850](v111, -1, -1);
            MEMORY[0x24C1FE850](v110, -1, -1);
          }

          goto LABEL_71;
        }

LABEL_105:
        swift_once();
        goto LABEL_43;
      }

      v197 = v54;
      v198 = v50;
      v57 = *(v48 + 16);
      v216 = v18;
      v210 = v48;
      v58 = v209;
      v59 = v206;
      v215 = v57;
      if (v57)
      {
        v60 = 0;
        v214 = v48 + ((*(v222 + 80) + 32) & ~*(v222 + 80));
        v204 = "No nodes or urls";
        v219 = (v222 + 8);
        v213 = (v222 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        *&v56 = 136446466;
        v203 = v56;
        v217 = v222 + 16;
        while (v60 < *(v48 + 16))
        {
          v218 = *(v222 + 9);
          v62 = *(v222 + 2);
          v62(v59, v214 + v218 * v60, v18);
          LODWORD(v221) = URL.startAccessingSecurityScopedResource()();
          if ((v221 & 1) == 0)
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            __swift_project_value_buffer(v63, static Logger.UI);
            v64 = v207;
            v62(v207, v59, v18);
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = v64;
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v224[0] = v69;
              *v68 = v203;
              *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, v204 | 0x8000000000000000, v224);
              *(v68 + 12) = 2080;
              _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
              v70 = dispatch thunk of CustomStringConvertible.description.getter();
              v72 = v71;
              v73 = v67;
              v59 = v206;
              (*v219)(v73, v216);
              v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v224);
              v18 = v216;

              *(v68 + 14) = v74;
              _os_log_impl(&dword_2493AC000, v65, v66, "%{public}s: Cannot access URL to export : %s", v68, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v69, -1, -1);
              MEMORY[0x24C1FE850](v68, -1, -1);
            }

            else
            {

              (*v219)(v64, v18);
            }

            v48 = v210;
            v58 = v209;
          }

          v62(v58, v59, v18);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v223 = *v51;
          v76 = v223;
          *v51 = 0x8000000000000000;
          v77 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
          v79 = v76[2];
          v80 = (v78 & 1) == 0;
          v81 = __OFADD__(v79, v80);
          v82 = v79 + v80;
          if (v81)
          {
            goto LABEL_103;
          }

          v83 = v78;
          if (v76[3] >= v82)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v89 = v77;
              specialized _NativeDictionary.copy()();
              v77 = v89;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, isUniquelyReferenced_nonNull_native);
            v77 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
            if ((v83 & 1) != (v84 & 1))
            {
              goto LABEL_117;
            }
          }

          v85 = v223;
          if (v83)
          {
            *(v223[7] + v77) = v221 & 1;
            v61 = *v219;
            (*v219)(v58, v18);
          }

          else
          {
            v223[(v77 >> 6) + 8] |= 1 << v77;
            v86 = v77;
            v62((v85[6] + v77 * v218), v58, v18);
            *(v85[7] + v86) = v221 & 1;
            v61 = *v219;
            (*v219)(v58, v18);
            v87 = v85[2];
            v81 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (v81)
            {
              goto LABEL_104;
            }

            v85[2] = v88;
          }

          ++v60;
          *v51 = v85;

          swift_endAccess();
          v61(v59, v18);
          if (v215 == v60)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

LABEL_45:
      v112 = v197;
      v113 = [v197 pickerFilenameView];
      if (!v113)
      {
        v221 = 0;
        v133 = 0;
        v91 = v198;
        v92 = v202;
LABEL_84:
        v158 = [v112 configuration];
        LODWORD(v219) = [v158 isContentManaged];

        v159 = [v112 configuration];
        v160 = [v159 interactionMode];

        if (v160 == 3)
        {
          v161 = *(v48 + 16);
          if (!v161)
          {

            v125 = 0;
            v126 = MEMORY[0x277D84F90];
            goto LABEL_101;
          }

          v224[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v161, 0);
          v126 = v224[0];
          v162 = *(v222 + 2);
          v163 = v48 + ((*(v222 + 80) + 32) & ~*(v222 + 80));
          v217 = *(v222 + 9);
          v218 = v162;
          v222 = (v222 + 16);
          v164 = (v222 + 16);
          v165 = v196;
          v166 = v211;
          do
          {
            v167 = v216;
            v218(v166, v163, v216);
            v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMd);
            v169 = (v165 + *(v168 + 48));
            v170 = *(v168 + 64);
            (*v164)(v165, v166, v167);
            *v169 = v221;
            v169[1] = v133;
            *(v165 + v170) = v219;
            swift_storeEnumTagMultiPayload();
            v224[0] = v126;
            v172 = *(v126 + 16);
            v171 = *(v126 + 24);

            if (v172 >= v171 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v171 > 1, v172 + 1, 1);
              v126 = v224[0];
            }

            *(v126 + 16) = v172 + 1;
            outlined init with take of DOCOperationItem(v165, v126 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v172);
            v163 += v217;
            --v161;
          }

          while (v161);

          v125 = 0;
LABEL_98:
          v91 = v198;
          v92 = v202;
          v48 = v210;
LABEL_101:
          v185 = *(v48 + 16);

          v127 = 0;
          v124 = v185 > 1;
          v222 = closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)partial apply;
          v123 = 2;
          goto LABEL_109;
        }

        if (v160 == 2)
        {
          v173 = *(v48 + 16);
          if (!v173)
          {

            v126 = MEMORY[0x277D84F90];
            v125 = 1;
            goto LABEL_101;
          }

          v224[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v173, 0);
          v126 = v224[0];
          v174 = *(v222 + 2);
          v175 = v48 + ((*(v222 + 80) + 32) & ~*(v222 + 80));
          v217 = *(v222 + 9);
          v218 = v174;
          v222 = (v222 + 16);
          v176 = (v222 + 16);
          v177 = v201;
          v178 = v211;
          do
          {
            v179 = v216;
            v218(v178, v175, v216);
            v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMd);
            v181 = (v177 + *(v180 + 48));
            v182 = *(v180 + 64);
            (*v176)(v177, v178, v179);
            *v181 = v221;
            v181[1] = v133;
            *(v177 + v182) = v219;
            swift_storeEnumTagMultiPayload();
            v224[0] = v126;
            v184 = *(v126 + 16);
            v183 = *(v126 + 24);

            if (v184 >= v183 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v183 > 1, v184 + 1, 1);
              v126 = v224[0];
            }

            *(v126 + 16) = v184 + 1;
            outlined init with take of DOCOperationItem(v177, v126 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v184);
            v175 += v217;
            --v173;
          }

          while (v173);

          v125 = 1;
          goto LABEL_98;
        }

LABEL_122:

        goto LABEL_123;
      }

      v114 = v113;
      v115 = (*((*MEMORY[0x277D85000] & *v113) + 0x108))();
      v117 = v116;

      v91 = v198;
      v92 = v202;
      if (!v117)
      {
        v221 = 0;
        v133 = 0;
LABEL_83:
        v112 = v197;
        goto LABEL_84;
      }

      v118._countAndFlagsBits = 46;
      v118._object = 0xE100000000000000;
      if (String.hasPrefix(_:)(v118))
      {
        swift_bridgeObjectRelease_n();
        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v119 = swift_allocError();
        *v120 = 2;

        goto LABEL_79;
      }

      v134 = v200;
      CharacterSet.init(charactersIn:)();
      v224[0] = v115;
      v224[1] = v117;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      if ((v135 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();
        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v119 = swift_allocError();
        *v144 = 3;

        (*(v194 + 8))(v134, v195);

LABEL_79:
        swift_getErrorValue();
        v145 = Error.localizedDescription.getter();
        v146 = MEMORY[0x24C1FAD20](v145);

        v147 = [objc_opt_self() alertControllerWithTitle:0 message:v146 preferredStyle:1];

        v148 = _DocumentManagerBundle();
        if (v148)
        {
          v149 = v148;
          v226._object = 0xE200000000000000;
          v150.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v150.value._object = 0xEB00000000656C62;
          v151._countAndFlagsBits = 19279;
          v151._object = 0xE200000000000000;
          v152._countAndFlagsBits = 0;
          v152._object = 0xE000000000000000;
          v226._countAndFlagsBits = 19279;
          v153 = NSLocalizedString(_:tableName:bundle:value:comment:)(v151, v150, v149, v152, v226);

          v154 = MEMORY[0x24C1FAD20](v153._countAndFlagsBits, v153._object);

          v155 = [objc_opt_self() actionWithTitle:v154 style:0 handler:0];

          [v147 addAction_];
          [v197 presentViewController:v147 animated:1 completion:0];
        }

        goto LABEL_116;
      }

      (*(v194 + 8))(v134, v195);
      v136 = MEMORY[0x24C1FAD20](v115, v117);
      if (!v215)
      {
        v143 = 0;
        goto LABEL_82;
      }

      if (*(v48 + 16))
      {
        v137 = v222;
        v138 = v199;
        v139 = v216;
        (*(v222 + 2))(v199, v48 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v216);
        v140 = URL.pathExtension.getter();
        v142 = v141;
        (*(v137 + 1))(v138, v139);
        v143 = MEMORY[0x24C1FAD20](v140, v142);

LABEL_82:
        v156 = [v136 fp:v143 filenameFromDisplayNameWithExtension:?];

        v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v133 = v157;

        goto LABEL_83;
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_120;
    }

    v90 = partial apply for closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
  }

  else
  {
    v90 = closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)partial apply;
  }

  v91 = swift_allocObject();
  *(v91 + 16) = MEMORY[0x277D84F98];
  v92 = swift_allocObject();
  v93 = v208;
  v92[2] = v2;
  v92[3] = v93;
  v92[4] = 0;
  v92[5] = v91;
  swift_retain_n();
  v94 = v2;
  swift_unknownObjectRetain();
  v95 = [v94 pickerContext];
  if (v95)
  {
    v96 = v95;
    v97 = [v95 nodesToMove];
    if (v97)
    {
      v98 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v99 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v100 = [v94 pickerOperationFor_];
      if (v100 <= 1)
      {
        if (!v100)
        {

          if (one-time initialization token for UI == -1)
          {
LABEL_40:
            v101 = type metadata accessor for Logger();
            __swift_project_value_buffer(v101, static Logger.UI);
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v224[0] = v105;
              *v104 = 136446210;
              *(v104 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BD7410, v224);
              _os_log_impl(&dword_2493AC000, v102, v103, "%{public}s: No operation to perform on these nodes", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v105);
              MEMORY[0x24C1FE850](v105, -1, -1);
              MEMORY[0x24C1FE850](v104, -1, -1);
            }

LABEL_71:
          }

LABEL_113:
          swift_once();
          goto LABEL_40;
        }

        if (v100 == 1)
        {
          LODWORD(v221) = 1;
LABEL_57:
          if (v99 >> 62)
          {
            v128 = __CocoaSet.count.getter();
            v222 = v90;
            if (v128)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v128 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v222 = v90;
            if (v128)
            {
LABEL_59:
              v202 = v92;
              v198 = v91;
              v224[0] = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128 & ~(v128 >> 63), 0);
              if (v128 < 0)
              {
                __break(1u);
                goto LABEL_113;
              }

              v129 = 0;
              v126 = v224[0];
              do
              {
                if ((v99 & 0xC000000000000001) != 0)
                {
                  v130 = MEMORY[0x24C1FC540](v129, v99);
                }

                else
                {
                  v130 = swift_unknownObjectRetain();
                }

                *v5 = v130;
                swift_storeEnumTagMultiPayload();
                v224[0] = v126;
                v132 = *(v126 + 16);
                v131 = *(v126 + 24);
                if (v132 >= v131 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v131 > 1, v132 + 1, 1);
                  v126 = v224[0];
                }

                ++v129;
                *(v126 + 16) = v132 + 1;
                outlined init with take of DOCOperationItem(v5, v126 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v132);
              }

              while (v128 != v129);

              v91 = v198;
              v92 = v202;
LABEL_108:
              v123 = 0;
              v210 = 0;
              v124 = v128 > 1;
              v127 = 1;
              v125 = v221;
              goto LABEL_109;
            }
          }

          v126 = MEMORY[0x277D84F90];
          goto LABEL_108;
        }

        goto LABEL_121;
      }

      if (v100 == 2)
      {
        LODWORD(v221) = 0;
        goto LABEL_57;
      }

      if (v100 != 3)
      {
LABEL_121:
        v192 = v100;

        v224[0] = v192;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        goto LABEL_122;
      }

LABEL_120:

LABEL_123:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v121 = [v94 configuration];
  v122 = [v121 forPickingFolders];

  if ((v122 & 1) == 0)
  {
    goto LABEL_120;
  }

  v222 = v90;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v210 = 0;
  v126 = MEMORY[0x277D84F90];
  v127 = 1;
LABEL_109:
  v186 = v205;
  v187 = [v205 configuration];
  v188 = [v187 forPickingFolders];

  if (v188)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    v190 = v208;
    *(inited + 32) = v208;
    swift_unknownObjectRetain();
    closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(inited, v186, v190, v210, v91);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v191 = [objc_opt_self() defaultManager];

  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(v125, v126, v208, v124, v123, v127, v186, v222, v92);
}

void closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(unint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v134 = a4;
  v140 = type metadata accessor for DispatchWorkItemFlags();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v8);
  v138 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Date();
  v143 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v10);
  v150 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DOCSmartFolderInputFile();
  MEMORY[0x28223BE20](v149, v12);
  v14 = (v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v15, v16);
  v136 = type metadata accessor for DispatchQoS();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v17);
  v141 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(a3, a2);
  v153 = a2;
  if (!a1)
  {
    goto LABEL_9;
  }

  v145 = a3;
  v152 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v152)
  {
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133[0] = v24;
  if (v24 < 1)
  {

LABEL_9:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.UI);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BD7410, &aBlock);
      _os_log_impl(&dword_2493AC000, v39, v40, "%s: Bailing out early to allow the user to pick a node", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C1FE850](v42, -1, -1);
      v43 = v41;
      a2 = v153;
      MEMORY[0x24C1FE850](v43, -1, -1);
    }

    v44 = [a2 effectiveBrowserViewController];
    if (v44)
    {
      v45 = v44;
      v152 = (*((*MEMORY[0x277D85000] & *v44) + 0xE8))();

      if (v152)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          v48 = swift_allocObject();
          *(v48 + 16) = v47;
          *(v48 + 24) = 0;
          *(v48 + 32) = a2;
          v49 = a2;
          v50 = v152;
          DOCRunInMainThread(_:)();
        }

        else
        {
          v51 = v152;
        }
      }
    }

    return;
  }

  v144 = a1 >> 62;
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84F90];
  v148 = v25;
  *(v25 + 16) = MEMORY[0x277D84F90];
  v147 = dispatch_group_create();
  v133[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v146 = "Cannot use .importCopy";
  (*(v20 + 104))(v23, *MEMORY[0x277D85268], v19);
  static DispatchQoS.unspecified.getter();
  aBlock = v26;
  v142 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v146 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = [v153 configuration];

  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v28);
  LODWORD(v142) = aBlock;
  v29 = objc_opt_self();
  v30 = [v29 mainBundle];

  v31 = DOCNode.sourceIdentifier.getter();
  DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v31);
  v32 = v154;
  v33 = [v29 mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v52 = v27;
  DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v52, v35, v37, v163);
  v53 = v163[0];
  v54 = v52;
  DOCAnalyticsActionEvent.SortMode.init(configuration:)(v54, &v162);
  v55 = v162;
  v56 = v54;
  DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v56, &v161);
  v57 = v161;
  v58 = [v56 hostIdentifier];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v163[0] = 0xD000000000000032;
  v163[1] = 0x8000000249BCDC20;
  v163[2] = v59;
  v163[3] = v61;
  v164 = 1;
  v165 = v53;
  v166 = v142;
  v167 = v32;
  v168 = 0;
  v169 = v55;
  v170 = v57;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized DOCAnalyticsManager.sendEvent(_:)(v163, static DOCAnalyticsManager.shared);
  outlined destroy of DOCAnalyticsActionEvent(v163);
  v62 = v153;
  if (v144)
  {
    v63 = __CocoaSet.count.getter();
    if (!v63)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v63 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v63)
    {
      goto LABEL_39;
    }
  }

  if (v63 < 1)
  {
    __break(1u);
    return;
  }

  v64 = 0;
  v144 = a1 & 0xC000000000000001;
  ++v143;
  v142 = &v157;
  v145 = v63;
  do
  {
    if (v144)
    {
      v76 = MEMORY[0x24C1FC540](v64, a1);
    }

    else
    {
      v76 = *(a1 + 8 * v64 + 32);
      swift_unknownObjectRetain();
    }

    v77 = [v76 displayName];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v81 = [v76 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    Date.init()();
    *v14 = v78;
    v14[1] = v80;
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    v82 = a1;
    v83 = v152;
    (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA8))(v14, v152);
    v84 = [v62 configuration];
    v85 = [v84 hostIdentifier];

    if (!v85)
    {
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = MEMORY[0x24C1FAD20](v86);
    }

    ++v64;
    v65 = v83;
    v66 = v150;
    Date.init()();
    v67 = objc_allocWithZone(MEMORY[0x277D05ED0]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v69 = [v67 initWithAppBundleIdentifier:v85 folderItem:v65 type:1 lastUsedDate:isa frecency:1.0];

    (*v143)(v66, v151);
    DOCSmartFolderManager.register(event:)(v69);
    v70 = v147;
    dispatch_group_enter(v147);
    v71 = swift_allocObject();
    v72 = v146;
    v71[2] = v70;
    v71[3] = v72;
    v71[4] = v148;
    v159 = partial apply for closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
    v160 = v71;
    aBlock = MEMORY[0x277D85DD0];
    v156 = 1107296256;
    v157 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v158 = &block_descriptor_51;
    v73 = _Block_copy(&aBlock);
    v74 = v70;
    v75 = v72;

    [v76 fetchURL_];
    _Block_release(v73);
    swift_unknownObjectRelease();

    outlined destroy of DOCSmartFolderInputFile(v14);
    v62 = v153;
    a1 = v82;
  }

  while (v145 != v64);
LABEL_39:
  v87 = [v62 pickerFilenameView];
  if (!v87)
  {
LABEL_61:
    v117 = v62;
    v118 = static OS_dispatch_queue.main.getter();
    v119 = swift_allocObject();
    v120 = v137;
    v119[2] = v134;
    v119[3] = v120;
    v121 = v148;
    v119[4] = v117;
    v119[5] = v121;
    v159 = partial apply for closure #4 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
    v160 = v119;
    aBlock = MEMORY[0x277D85DD0];
    v156 = 1107296256;
    v157 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v158 = &block_descriptor_57_1;
    v122 = _Block_copy(&aBlock);

    v104 = v117;

    v123 = v141;
    static DispatchQoS.unspecified.getter();
    v154 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v124 = v138;
    v125 = v140;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v126 = v147;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v122);

    (*(v139 + 8))(v124, v125);
    (*(v135 + 8))(v123, v136);

    v127 = [v104 effectiveBrowserViewController];
    if (v127)
    {
      v128 = v127;
      v107 = (*((*MEMORY[0x277D85000] & *v127) + 0xE8))();

      if (v107)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v108 = swift_dynamicCastClass();
        if (v108)
        {
LABEL_64:
          v129 = v108;
          v130 = swift_allocObject();
          *(v130 + 16) = v129;
          *(v130 + 24) = 0;
          *(v130 + 32) = v104;
          v131 = v104;
          v132 = v107;
          DOCRunInMainThread(_:)();

          return;
        }

        goto LABEL_65;
      }
    }

    return;
  }

  v88 = v87;
  (*((*MEMORY[0x277D85000] & *v87) + 0x138))();

  v89 = [v62 pickerContext];
  if (!v89)
  {

    goto LABEL_61;
  }

  v90 = v89;
  v91 = [v89 canSetTags];

  if ((v91 & 1) == 0)
  {

LABEL_60:
    v62 = v153;
    goto LABEL_61;
  }

  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
  v93 = v152;
  if (All)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    v94 = Array._bridgeToObjectiveC()().super.isa;

    v95 = FPTagsFromDOCTags();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
    v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = MEMORY[0x277D84F90];
    v97 = v133[0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133[0], 0);
    v98 = aBlock;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v99 = 0;
      do
      {
        MEMORY[0x24C1FC540](v99, a1);
        swift_unknownObjectRelease();
        aBlock = v98;
        v100 = *(v98 + 16);
        v101 = *(v98 + 24);

        if (v100 >= v101 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v100 + 1, 1);
          v98 = aBlock;
        }

        ++v99;
        *(v98 + 16) = v100 + 1;
        *(v98 + 8 * v100 + 32) = v96;
      }

      while (v97 != v99);
    }

    else
    {
      do
      {
        aBlock = v98;
        v109 = *(v98 + 16);
        v110 = *(v98 + 24);

        if (v109 >= v110 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v109 + 1, 1);
          v98 = aBlock;
        }

        *(v98 + 16) = v109 + 1;
        *(v98 + 8 * v109 + 32) = v96;
        --v97;
      }

      while (v97);
    }

    v111 = [objc_opt_self() shared];
    v112 = objc_allocWithZone(MEMORY[0x277D06258]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v113 = Array._bridgeToObjectiveC()().super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5FPTagCGMd);
    v114 = Array._bridgeToObjectiveC()().super.isa;

    v115 = [v112 initWithItems:v113 tagsLists:v114 isUndoable:0 shouldClearUndoStack:0 undoManager:v111];

    v116 = [objc_opt_self() defaultManager];
    [v116 scheduleAction_];

    goto LABEL_60;
  }

  v102 = swift_allocObject();
  v103 = v153;
  *(v102 + 16) = v153;
  v104 = v103;
  DOCRunInMainThread(_:)();

  v105 = [v104 effectiveBrowserViewController];
  if (v105)
  {
    v106 = v105;
    v107 = (*((*MEMORY[0x277D85000] & *v105) + 0xE8))();

    if (v107)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v108 = swift_dynamicCastClass();
      if (v108)
      {
        goto LABEL_64;
      }

LABEL_65:
    }
  }
}

void DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(uint64_t a1)
{
  swift_getObjectType();

  specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(a1, v1);
}

void closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v42 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v36 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v36 - v26;
  outlined init with copy of URL?(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
    dispatch_group_leave(a3);
  }

  else
  {
    v36 = v7;
    v37 = a3;
    (*(v18 + 32))(v27, v16, v17);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
    (*(v18 + 16))(v23, v27, v17);
    v28 = @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(v23, 0);
    v29 = swift_allocObject();
    v30 = v37;
    v29[2] = v38;
    v29[3] = v28;
    v29[4] = v30;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_77;
    v31 = _Block_copy(aBlock);

    v32 = v28;
    v33 = v30;
    static DispatchQoS.unspecified.getter();
    v44 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v34 = v40;
    v35 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v34, v31);
    _Block_release(v31);

    (*(v43 + 8))(v34, v35);
    (*(v39 + 8))(v12, v41);
    (*(v18 + 8))(v27, v17);
  }
}

void closure #1 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1, void *a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = a2;
  MEMORY[0x24C1FB090]();
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  dispatch_group_leave(a3);
}

void closure #2 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(void *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      type metadata accessor for URL();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v3 documentBrowser:a1 didPickDocumentsAtURLs:isa];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t closure #4 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v15 = *(v7 + 16);
      v13 = v7 + 16;
      v14 = v15;
      v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v17 = *(v13 + 56);
      v15(v11, v16, v6, v9);
      while (1)
      {
        swift_beginAccess();
        v19 = *(a2 + 16);
        if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v21 & 1) != 0))
        {
          v22 = *(*(v19 + 56) + v20);
          swift_endAccess();
          if (v22)
          {
            URL.stopAccessingSecurityScopedResource()();
          }
        }

        else
        {
          swift_endAccess();
        }

        (*(v13 - 8))(v11, v6);
        v16 += v17;
        if (!--v12)
        {
          break;
        }

        v14(v11, v16, v6, v18);
      }
    }
  }

  v23 = swift_allocObject();
  v24 = v29;
  v25 = v30;
  *(v23 + 16) = v29;
  *(v23 + 24) = v25;
  v26 = v24;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #4 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(void *a1, uint64_t a2)
{
  v24 = type metadata accessor for URL();
  v4 = *(v24 - 8);
  v6 = MEMORY[0x28223BE20](v24, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 delegate];
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      swift_beginAccess();
      v11 = *(a2 + 16);
      if (v11 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12)
      {
        v22 = v10;
        v23 = a1;
        v25 = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
          return;
        }

        v13 = 0;
        v14 = v25;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x24C1FC540](v13, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = [v15 url];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = v14;
          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          if (v19 >= v18 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
            v14 = v25;
          }

          ++v13;
          *(v14 + 16) = v19 + 1;
          (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v8, v24);
        }

        while (v12 != v13);

        v10 = v22;
        a1 = v23;
      }

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 documentBrowser:a1 didPickDocumentsAtURLs:isa];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

objc_class *DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(void *a1, char a2)
{
  v4 = DOCFullDocumentManagerViewController._pickerOperation(for:)(a1);
  v5 = [v2 configuration];
  v6 = [v5 interactionMode];

  if (v6 == 2 || (v17 = [v2 configuration], v18 = objc_msgSend(v17, sel_interactionMode), v17, v18 == 3) && (_anyFileNotInFileProvider #1 () in DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(v2), (v19 & 1) != 0))
  {
    result = _DocumentManagerBundle();
    v8 = result;
    if (a2)
    {
      if (result)
      {
        v21 = 0x8000000249BD7580;
        v9 = 0x617A696C61636F4CLL;
        v10 = 0xEB00000000656C62;
        v11 = 0xD00000000000001BLL;
        v12 = 0x8000000249BD7560;
        v13 = 0xD00000000000003CLL;
        v14.super.isa = v8;
        v15 = 1702256979;
        v16 = 0xE400000000000000;
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (result)
    {
      v21 = 0x8000000249BD7530;
      v9 = 0x617A696C61636F4CLL;
      v10 = 0xEB00000000656C62;
      v15 = 0x73612065766153;
      v11 = 0xD000000000000023;
      v12 = 0x8000000249BD7500;
      v13 = 0xD00000000000002BLL;
      v14.super.isa = v8;
      v16 = 0xE700000000000000;
      goto LABEL_18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = _DocumentManagerBundle();
  v8 = result;
  if (v4 == 3)
  {
    if (!result)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = 0x8000000249BD7490;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v13 = 0xD000000000000026;
    v11 = 1852141647;
    v12 = 0xE400000000000000;
    v14.super.isa = v8;
    v15 = 0;
    v16 = 0xE000000000000000;
LABEL_18:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v14, *&v15, *&v13)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v4 == 1)
  {
    if (result)
    {
      v21 = 0x8000000249BD74E0;
      v9 = 0x617A696C61636F4CLL;
      v10 = 0xEB00000000656C62;
      v11 = 0xD00000000000001BLL;
      v12 = 0x8000000249BD74C0;
      v14.super.isa = v8;
      v15 = 2037411651;
      v16 = 0xE400000000000000;
LABEL_17:
      v13 = 0xD00000000000001ALL;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (result)
  {
    v21 = 0x8000000249BD7470;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v11 = 1702260557;
    v12 = 0xE400000000000000;
    v14.super.isa = v8;
    v15 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

void _anyFileNotInFileProvider #1 () in DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v23 - v10;
  v12 = [a1 pickerContext];
  if (!v12 || (v13 = v12, v14 = [v12 urlsToSave], v13, !v14))
  {
    v22 = 1;
    goto LABEL_10;
  }

  v24 = v11;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_8:

    v22 = 1;
    v11 = v24;
LABEL_10:
    (*(v3 + 56))(v11, v22, 1, v2);
    outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
    return;
  }

  v17 = 0;
  while (v17 < *(v15 + 16))
  {
    (*(v3 + 16))(v6, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v21 = FPURLMightBeInFileProvider();

    if (!v21)
    {

      v11 = v24;
      (*(v3 + 32))(v24, v6, v2);
      v22 = 0;
      goto LABEL_10;
    }

    ++v17;
    (*(v3 + 8))(v6, v2);
    if (v16 == v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t DOCFullDocumentManagerViewController._pickerOperation(for:)(void *a1)
{
  v5 = v1;
  v7 = [v1 pickerFilenameView];
  if (v7)
  {
    v8 = v7;
    v2 = (*((*MEMORY[0x277D85000] & *v7) + 0x108))();
    v10 = v9;

    if (v10)
    {
      v11 = String.count.getter();

      if (!v11)
      {
        return 0;
      }
    }
  }

  swift_getObjectType();
  if (![a1 canPerform_])
  {
    return 0;
  }

  v12 = &selRef_removeFromSuperlayer;
  v13 = [v5 pickerContext];
  if (v13)
  {
    v2 = v13;
    v14 = [v13 urlsToSave];

    if (v14)
    {

      v15 = [v5 pickerContext];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 utisToSave];

        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = DOCNode.fpfs_syncFetchFPItem()();
        if (!v18)
        {
          goto LABEL_125;
        }

        v2 = v18;
        v19 = [objc_opt_self() defaultManager];

        isa = Array._bridgeToObjectiveC()().super.isa;

        v21 = [v19 eligibleActionsForDroppingUTIs:isa underItem:v2];

        type metadata accessor for FPAction(0);
        v23 = v22;
        v170 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
        v171 = v23;
        v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = [objc_opt_self() defaultPermission];
        v25 = [v5 configuration];
        LODWORD(v12) = [v24 canAppWithConfiguration:v25 handleNode:a1];

        if (one-time initialization token for UI == -1)
        {
LABEL_10:
          v26 = type metadata accessor for Logger();
          v27 = __swift_project_value_buffer(v26, static Logger.UI);

          swift_unknownObjectRetain();

          v172 = v27;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.debug.getter();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            LODWORD(v168) = v12;
            v12 = swift_slowAlloc();
            v173[0] = v12;
            *v30 = 136446978;
            *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v173);
            *(v30 + 12) = 2082;
            v31 = [a1 description];
            v32 = v4;
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v169 = v2;
            v35 = v34;

            v36 = v33;
            v4 = v32;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v173);

            *(v30 + 14) = v37;
            *(v30 + 22) = 2082;
            v38 = MEMORY[0x24C1FB0D0](v3, MEMORY[0x277D837D0]);
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v173);

            *(v30 + 24) = v40;
            *(v30 + 32) = 2082;
            v41 = Set.description.getter();
            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v173);

            *(v30 + 34) = v43;
            v2 = v169;
            _os_log_impl(&dword_2493AC000, v28, v29, "%{public}s: %{public}s eligibleActions for these UTIs %{public}s %{public}s", v30, 0x2Au);
            swift_arrayDestroy();
            v44 = v12;
            LODWORD(v12) = v168;
            MEMORY[0x24C1FE850](v44, -1, -1);
            MEMORY[0x24C1FE850](v30, -1, -1);
          }

          v45 = [v5 configuration];
          v46 = [v45 interactionMode];

          if (v46 > 2)
          {
            if (v46 == 3)
            {

              v77 = Logger.logObject.getter();
              v78 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v173[0] = v80;
                *v79 = 136446210;
                *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v173);
                _os_log_impl(&dword_2493AC000, v77, v78, "%{public}s: expecting reparent", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v80);
                MEMORY[0x24C1FE850](v80, -1, -1);
                MEMORY[0x24C1FE850](v79, -1, -1);
              }

              v81 = specialized Set.contains(_:)(*MEMORY[0x277CC6048], v4);

              if (v81 & v12)
              {
                return 2;
              }

              else
              {
                return 0;
              }
            }
          }

          else
          {
            if (v46 == 2)
            {

              v47 = Logger.logObject.getter();
              v48 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v47, v48))
              {
                v49 = swift_slowAlloc();
                v50 = swift_slowAlloc();
                v173[0] = v50;
                *v49 = 136446210;
                *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v173);
                _os_log_impl(&dword_2493AC000, v47, v48, "%{public}s: expecting copy", v49, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v50);
                MEMORY[0x24C1FE850](v50, -1, -1);
                MEMORY[0x24C1FE850](v49, -1, -1);
              }

              v51 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v4);

              return v51 & v12 & 1;
            }

            if (v46)
            {
              if (v46 != 1)
              {
                goto LABEL_163;
              }

              v166 = 0;
              v160 = 325;
            }

            else
            {
              v166 = 0;
              v160 = 323;
            }

            v165 = v160;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

LABEL_163:
          v161 = [v5 configuration];
          v162 = [v161 interactionMode];

          type metadata accessor for DOCDocumentInteractionMode(0);
          v173[3] = v163;
          v173[0] = v162;
          doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(v173);
        }

LABEL_150:
        swift_once();
        goto LABEL_10;
      }
    }
  }

  v53 = [v5 pickerContext];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 nodesToMove];

    if (v55)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v56 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_21;
        }
      }

      else if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        if ((v56 & 0xC000000000000001) != 0)
        {
          goto LABEL_148;
        }

        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v57 = *(v56 + 32);
          swift_unknownObjectRetain();
          while (1)
          {
            v58 = objc_opt_self();
            v59 = &selRef__setLocationsInBrowseTab_;
            v60 = [v58 defaultPermission];
            v61 = [v5 configuration];
            v62 = [v60 userActionForConfiguration_];

            v63 = [v58 defaultPermission];
            LODWORD(v60) = [v63 canNode:v57 performAction:v62 node:a1];

            if (!v60)
            {
              break;
            }

            objc_opt_self();
            v64 = swift_dynamicCastObjCClass();
            v169 = v57;
            if (!v64)
            {

              objc_opt_self();
              v82 = swift_dynamicCastObjCClass();
              if (v82)
              {
                v61 = v82;
                swift_unknownObjectRetain();
                v83 = [v5 *(v12 + 3160)];
                if (v83)
                {
                  v84 = v83;
                  v56 = DOCPickerContext.fpfs_allFPItemsToMove()();

                  if (v56)
                  {
                    if (v56 >> 62)
                    {
                      v5 = __CocoaSet.count.getter();
                    }

                    else
                    {
                      v5 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v85 = MEMORY[0x277D84F90];
                    if (!v5)
                    {
                      goto LABEL_75;
                    }

                    v173[0] = MEMORY[0x277D84F90];
                    specialized ContiguousArray.reserveCapacity(_:)();
                    if ((v5 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
LABEL_156:
                      __break(1u);
                    }

                    else
                    {
                      v86 = 0;
                      do
                      {
                        if ((v56 & 0xC000000000000001) != 0)
                        {
                          v87 = MEMORY[0x24C1FC540](v86, v56);
                        }

                        else
                        {
                          v87 = *(v56 + 8 * v86 + 32);
                        }

                        v88 = v87;
                        ++v86;
                        v89 = [v87 parentItemID];

                        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                        specialized ContiguousArray._endMutation()();
                      }

                      while (v5 != v86);
                      v85 = v173[0];
LABEL_75:
                      v91 = [v61 itemID];
                      v173[0] = v91;
                      MEMORY[0x28223BE20](v91, v92);
                      v165 = v173;
                      v93 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v164, v85);

                      if (v93)
                      {
                        swift_unknownObjectRelease();
LABEL_56:
                        swift_unknownObjectRelease();
LABEL_125:

                        return 0;
                      }

                      v94 = [objc_opt_self() defaultManager];
                      v59 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
                      v95 = Array._bridgeToObjectiveC()().super.isa;
                      v96 = [v94 eligibleActionsForDroppingItems:v95 underItem:v61];

                      type metadata accessor for FPAction(0);
                      v62 = v97;
                      v12 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
                      v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                      if (one-time initialization token for UI == -1)
                      {
LABEL_78:
                        v98 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v98, static Logger.UI);
                        swift_unknownObjectRetain();

                        v99 = Logger.logObject.getter();
                        v100 = static os_log_type_t.debug.getter();

                        swift_unknownObjectRelease();
                        if (os_log_type_enabled(v99, v100))
                        {
                          v101 = swift_slowAlloc();
                          v102 = swift_slowAlloc();
                          v172 = v12;
                          v103 = v102;
                          v104 = swift_slowAlloc();
                          v171 = v62;
                          v105 = v104;
                          v173[0] = v104;
                          *v101 = 136446978;
                          *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v173);
                          *(v101 + 12) = 2114;
                          *(v101 + 14) = v61;
                          *v103 = v61;
                          *(v101 + 22) = 2082;
                          swift_unknownObjectRetain();
                          v106 = MEMORY[0x24C1FB0D0](v56, v59);
                          v108 = v107;

                          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v173);

                          *(v101 + 24) = v109;
                          *(v101 + 32) = 2082;
                          v110 = Set.description.getter();
                          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v173);

                          *(v101 + 34) = v112;
                          _os_log_impl(&dword_2493AC000, v99, v100, "%{public}s -- destination: %{public}@, sources: %{public}sexpecting reparent in eligibleActions: %{public}s", v101, 0x2Au);
                          outlined destroy of CharacterSet?(v103, &_sSo8NSObjectCSgMd);
                          MEMORY[0x24C1FE850](v103, -1, -1);
                          swift_arrayDestroy();
                          MEMORY[0x24C1FE850](v105, -1, -1);
                          MEMORY[0x24C1FE850](v101, -1, -1);
                        }

                        else
                        {
                        }

                        if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v5))
                        {
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
LABEL_129:

                          return 2;
                        }

                        else
                        {
                          v147 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v5);
                          swift_unknownObjectRelease();

                          swift_unknownObjectRelease();
                          return (v147 & 1) != 0;
                        }
                      }
                    }

                    swift_once();
                    goto LABEL_78;
                  }
                }

                swift_unknownObjectRelease();
              }

LABEL_32:
              swift_unknownObjectRelease();
              return 0;
            }

            v65 = v64;
            swift_unknownObjectRetain();
            v66 = [v5 *(v12 + 3160)];
            if (!v66 || (v67 = v66, v5 = DOCPickerContext.fpfs_allFINodesToMove()(), v67, !v5))
            {
              swift_unknownObjectRelease();
              goto LABEL_56;
            }

            v172 = v65;
            v167 = v5 >> 62;
            if (!(v5 >> 62))
            {
              v168 = v5 & 0xFFFFFFFFFFFFFF8;
              v62 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_30;
            }

LABEL_153:
            v168 = v5 & 0xFFFFFFFFFFFFFF8;
            v62 = __CocoaSet.count.getter();
LABEL_30:
            v12 = 0;
            v170 = v5 & 0xC000000000000001;
            v171 = v5;
            while (1)
            {
              if (v62 == v12)
              {

                if (v167)
                {
                  v90 = __CocoaSet.count.getter();
                }

                else
                {
                  v90 = *(v168 + 16);
                }

                v113 = MEMORY[0x277D84F90];
                if (v90)
                {
                  v173[0] = MEMORY[0x277D84F90];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90 & ~(v90 >> 63), 0);
                  if (v90 < 0)
                  {
                    goto LABEL_156;
                  }

                  v114 = 0;
                  v113 = v173[0];
                  do
                  {
                    if (v170)
                    {
                      v115 = MEMORY[0x24C1FC540](v114, v5);
                    }

                    else
                    {
                      v115 = *(v5 + 8 * v114 + 32);
                    }

                    v116 = v115;
                    v117 = [v115 nodePermissions_];

                    v173[0] = v113;
                    v59 = *(v113 + 16);
                    v118 = *(v113 + 24);
                    if (v59 >= v118 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v59 + 1, 1);
                      v113 = v173[0];
                    }

                    ++v114;
                    *(v113 + 16) = v59 + 1;
                    *(v113 + 4 * v59 + 32) = v117;
                    v5 = v171;
                  }

                  while (v90 != v114);
                }

                v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo11PermissionsV_SayAEGTt0g5Tf4g_n(v113);

                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v119 = type metadata accessor for Logger();
                __swift_project_value_buffer(v119, static Logger.UI);
                swift_unknownObjectRetain();

                v120 = Logger.logObject.getter();
                v121 = static os_log_type_t.debug.getter();

                swift_unknownObjectRelease();
                if (os_log_type_enabled(v120, v121))
                {
                  v61 = v5;
                  v122 = swift_slowAlloc();
                  v59 = swift_slowAlloc();
                  v123 = swift_slowAlloc();
                  v173[0] = v123;
                  *v122 = 136446978;
                  *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v173);
                  *(v122 + 12) = 2114;
                  v124 = v172;
                  *(v122 + 14) = v172;
                  *v59 = v124;
                  *(v122 + 22) = 2082;
                  v125 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
                  swift_unknownObjectRetain();
                  v126 = MEMORY[0x24C1FB0D0](v61, v125);
                  v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v173);

                  *(v122 + 24) = v128;
                  *(v122 + 32) = 2082;
                  type metadata accessor for Permissions(0);
                  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Permissions and conformance Permissions, type metadata accessor for Permissions);
                  v129 = Set.description.getter();
                  v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v173);

                  *(v122 + 34) = v131;
                  _os_log_impl(&dword_2493AC000, v120, v121, "%{public}s -- destination: %{public}@, sources: %{public}s, permissions: %{public}s", v122, 0x2Au);
                  outlined destroy of CharacterSet?(v59, &_sSo8NSObjectCSgMd);
                  MEMORY[0x24C1FE850](v59, -1, -1);
                  swift_arrayDestroy();
                  MEMORY[0x24C1FE850](v123, -1, -1);
                  MEMORY[0x24C1FE850](v122, -1, -1);
                }

                if (specialized Set.contains(_:)(0, v56))
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
LABEL_124:

                  goto LABEL_125;
                }

                v132 = 0;
                v5 = v56 + 56;
                v133 = 1 << *(v56 + 32);
                v134 = -1;
                if (v133 < 64)
                {
                  v134 = ~(-1 << v133);
                }

                v135 = v134 & *(v56 + 56);
                v136 = (v133 + 63) >> 6;
                do
                {
                  if (!v135)
                  {
                    while (1)
                    {
                      v137 = v132 + 1;
                      if (__OFADD__(v132, 1))
                      {
                        break;
                      }

                      if (v137 >= v136)
                      {

                        goto LABEL_110;
                      }

                      v135 = *(v5 + 8 * v137);
                      ++v132;
                      if (v135)
                      {
                        v132 = v137;
                        goto LABEL_106;
                      }
                    }

                    __break(1u);
                    goto LABEL_152;
                  }

                  v137 = v132;
LABEL_106:
                  v138 = __clz(__rbit64(v135));
                  v135 &= v135 - 1;
                }

                while ((*(*(v56 + 48) + ((v137 << 8) | (4 * v138))) & 2) == 0);
                v139 = isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v172, v171);

                if (v139)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_129;
                }

LABEL_110:
                v140 = 0;
                v141 = 1 << *(v56 + 32);
                v142 = -1;
                if (v141 < 64)
                {
                  v142 = ~(-1 << v141);
                }

                v143 = v142 & *(v56 + 56);
                v144 = (v141 + 63) >> 6;
                while (v143)
                {
                  v145 = v140;
LABEL_119:
                  v146 = __clz(__rbit64(v143));
                  v143 &= v143 - 1;
                  if ((*(*(v56 + 48) + ((v145 << 8) | (4 * v146))) & 0x10000) != 0)
                  {

                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    return 1;
                  }
                }

                while (1)
                {
                  v145 = v140 + 1;
                  if (__OFADD__(v140, 1))
                  {
                    break;
                  }

                  if (v145 >= v144)
                  {

                    swift_unknownObjectRelease();
                    goto LABEL_32;
                  }

                  v143 = *(v5 + 8 * v145);
                  ++v140;
                  if (v143)
                  {
                    v140 = v145;
                    goto LABEL_119;
                  }
                }

LABEL_152:
                __break(1u);
                goto LABEL_153;
              }

              if (v170)
              {
                v69 = MEMORY[0x24C1FC540](v12, v5);
              }

              else
              {
                if (v12 >= *(v168 + 16))
                {
                  goto LABEL_147;
                }

                v69 = *(v5 + 8 * v12 + 32);
              }

              v70 = v69;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              v59 = [v69 parent];
              v61 = v172;
              if (v59)
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
                swift_unknownObjectRetain();
                v71 = v59;
                v72 = static NSObject.== infix(_:_:)();
                swift_unknownObjectRelease();

                if (v72)
                {
                  swift_unknownObjectRelease();

                  goto LABEL_123;
                }
              }

              v73 = [v172 source];
              v74 = v73;
              if (v59)
              {
                if (v73)
                {
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
                  v75 = v59;
                  v76 = static NSObject.== infix(_:_:)();

                  if (v76)
                  {
                    swift_unknownObjectRelease();

LABEL_123:
                    swift_unknownObjectRelease();
                    goto LABEL_124;
                  }
                }
              }

              else
              {
                if (!v73)
                {
                  swift_unknownObjectRelease();

                  goto LABEL_123;
                }
              }

              v68 = [v70 isOrIsAncestorOf_];

              ++v12;
              v5 = v171;
              if (v68)
              {
                swift_unknownObjectRelease();
                goto LABEL_123;
              }
            }

            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            v57 = MEMORY[0x24C1FC540](0, v56);
          }

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_150;
      }
    }
  }

  v148 = [v5 configuration];
  v149 = [v148 forPickingFolders];

  if (!v149)
  {
    return 0;
  }

  result = [v5 effectiveBrowserViewController];
  if (result)
  {
    v150 = result;
    v151 = MEMORY[0x277D85000];
    v152 = (*((*MEMORY[0x277D85000] & *result) + 0xE8))();

    result = 0;
    if (v152)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v153 = swift_dynamicCastClass();
      if (!v153)
      {

        return 0;
      }

      v154 = (*((*v151 & *v153) + 0xA68))();

      v155 = *&v154[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      v156 = v155;

      if (v155 && (v157 = [v156 supportsPickingFolders], v156, v157))
      {
        v158 = [v5 configuration];
        v159 = [v158 interactionMode];

        if (v159 == 1)
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t DOCFullDocumentManagerViewController.pickerOperation(for:)(void *a1)
{
  v3 = DOCFullDocumentManagerViewController._pickerOperation(for:)(a1);
  if (_UISolariumEnabled())
  {
    v4 = [v1 pickerOperationTitleFor:a1 useShortTitle:0];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [v1 pickerFilenameView];
    if (v8)
    {
      v9 = v8;
      (*((*MEMORY[0x277D85000] & *v8) + 0x128))(v5, v7);
    }

    else
    {
    }
  }

  return v3;
}

void closure #1 in DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v25[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v25[0] = 0;
    v7 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v25];
    v8 = v25[0];
    if (v7)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      isa = Data._bridgeToObjectiveC()().super.isa;
      [a3 setLastUsedOpenSaveLocation_];

      v13 = [objc_opt_self() sharedStore];
      v14 = [v6 configuration];
      [v13 updateInterfaceState:a3 forConfiguration:v14];

      outlined consume of Data._Representation(v9, v11);
    }

    else
    {
      v15 = v8;
      v16 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.DocumentManager);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v16;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_2493AC000, v19, v20, "Failed to store the last used save location: %@", v21, 0xCu);
        outlined destroy of CharacterSet?(v22, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v22, -1, -1);
        MEMORY[0x24C1FE850](v21, -1, -1);
      }

      else
      {
      }
    }
  }
}

void DOCFullDocumentManagerViewController.pickerFilenameView(_:didChangeText:)()
{
  v1 = [v0 effectiveBrowserViewController];
  if (v1)
  {
    v2 = v1;
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

    if (v3)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      }
    }
  }
}

void protocol witness for DOCPickerFilenameViewDelegate.pickerFilenameView(_:didChangeText:) in conformance DOCFullDocumentManagerViewController()
{
  v1 = [v0 effectiveBrowserViewController];
  if (v1)
  {
    v2 = v1;
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

    if (v3)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      }
    }
  }
}

uint64_t outlined init with take of DOCOperationItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedStore];
  v13 = [a2 configuration];
  v14 = [v12 interfaceStateForConfiguration_];

  if (v14)
  {
    v15 = DOCNode.sourceIdentifier.getter();
    v27 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v15 node:a1];

    if ([v27 canBeRestored])
    {
      v16 = [a2 hierarchyController];
      v24 = *&v16[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_lastVisitedLocationSavingQueue];

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v19 = v27;
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v14;
      aBlock[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_38;
      v20 = _Block_copy(aBlock);

      v27 = v27;
      v23 = v14;
      static DispatchQoS.unspecified.getter();
      v28 = MEMORY[0x277D84F90];
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = v24;
      MEMORY[0x24C1FB9A0](0, v11, v7, v20);
      _Block_release(v20);

      (*(v26 + 8))(v7, v4);
      (*(v25 + 8))(v11, v8);
    }

    else
    {

      v22 = v27;
    }
  }
}

uint64_t _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of DOCSmartFolderInputFile(uint64_t a1)
{
  v2 = type metadata accessor for DOCSmartFolderInputFile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchFileShortcutsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v49 = &v38 - v6;
  v7 = type metadata accessor for String.IntentInputOptions.CapitalizationType();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.IntentInputOptions.KeyboardType();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v42 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v40 = &v38 - v18;
  v19 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v26 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v26 - 8, v27);
  v39 = type metadata accessor for LocalizedStringResource();
  v28 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v29);
  v38 = &v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = *MEMORY[0x277CC9110];
  v32 = *(v20 + 104);
  v32(v23, v31, v19);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v23, v31, v19);
  v33 = v40;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v28 + 56))(v33, 0, 1, v39);
  v54 = xmmword_249BA62B0;
  (*(v44 + 104))(v43, *MEMORY[0x277CBA528], v45);
  (*(v47 + 104))(v46, *MEMORY[0x277CBA530], v48);
  v34 = v42;
  String.IntentInputOptions.init(keyboardType:capitalizationType:multiline:autocorrect:smartQuotes:smartDashes:)();
  v35 = type metadata accessor for String.IntentInputOptions();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = type metadata accessor for IntentDialog();
  (*(*(v36 - 8) + 56))(v49, 1, 1, v36);
  (*(v51 + 104))(v50, *MEMORY[0x277CBA308], v52);
  result = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  *v53 = result;
  return result;
}

uint64_t one-time initialization function for title(uint64_t a1)
{
  return one-time initialization function for title(a1, static SearchFileShortcutsIntent.title);
}

{
  return one-time initialization function for title(a1, static SearchInBrowserIntent.title);
}

uint64_t one-time initialization function for description(uint64_t a1)
{
  return one-time initialization function for description(a1, static SearchFileShortcutsIntent.description, "SEARCH_FILE_INTENT_DESCRIPTION", 30);
}

{
  return one-time initialization function for description(a1, static SearchInBrowserIntent.description, "SEARCH_FILE_ASSISTANT_INTENT_DESCRIPTION", 40);
}

uint64_t key path setter for SearchFileShortcutsIntent.searchPhrase : SearchFileShortcutsIntent()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t (*SearchFileShortcutsIntent.searchPhrase.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return SearchFileShortcutsIntent.searchPhrase.modify;
}

uint64_t static SearchFileShortcutsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables25SearchFileShortcutsIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables25SearchFileShortcutsIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD7770;
  v4._countAndFlagsBits = 0xD000000000000021;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables25SearchFileShortcutsIntentV10AppIntents0I9ParameterCySSGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent()
{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

uint64_t one-time initialization function for authenticationPolicy(uint64_t a1)
{
  return one-time initialization function for authenticationPolicy(a1, static SearchFileShortcutsIntent.authenticationPolicy);
}

{
  return one-time initialization function for authenticationPolicy(a1, static SearchInBrowserIntent.authenticationPolicy);
}

uint64_t (*static SearchFileShortcutsIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static SearchFileShortcutsIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = *v2;
  v3[7] = type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:), v5, v4);
}

uint64_t SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)()
{
  v17 = v0;
  IntentParameter.wrappedValue.getter();
  v2 = v0[2];
  v1 = v0[3];
  v0[11] = v1;
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.AppIntents);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BD77A0, &v16);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v1, &v16);
    _os_log_impl(&dword_2493AC000, v4, v5, "%s Search action initiated from Link with search phrase %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  else
  {
  }

  v8 = v0[5];
  v9 = static MainActor.shared.getter();
  v0[12] = v9;
  v10 = swift_task_alloc();
  v0[13] = v10;
  v10[2] = v8;
  v10[3] = v2;
  v10[4] = v1;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
  *v11 = v0;
  v11[1] = SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  v13 = v0[4];
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v13, v9, v14, 0xD00000000000002DLL, 0x8000000249BD77A0, partial apply for closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:), v10, v12);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = aBlock - v11;
  (*(v8 + 16))(aBlock - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = DOCFullDocumentManagerViewController.postSearchInitializationBuffer.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = partial apply for closure #1 in closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  v17[4] = v14;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:)partial apply;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v18 = _Block_copy(aBlock);

  [v15 performAfterSearchInitialization_];
  _Block_release(v18);
}

uint64_t SearchFileShortcutsIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchFileShortcutsIntent.perform(), v3, v2);
}

uint64_t (*protocol witness for SearchIntent.searchPhrase.modify in conformance SearchFileShortcutsIntent(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return SearchFileShortcutsIntent.searchPhrase.modify;
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance SearchFileShortcutsIntent()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables25SearchFileShortcutsIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables25SearchFileShortcutsIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD7770;
  v4._countAndFlagsBits = 0xD000000000000021;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables25SearchFileShortcutsIntentV10AppIntents0I9ParameterCySSGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchFileShortcutsIntent(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchFileShortcutsIntent.perform(), v3, v2);
}

uint64_t SearchInBrowserIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v29 = &v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v27 = type metadata accessor for LocalizedStringResource();
  v19 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v20);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCyAA20StringSearchCriteriaVGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = *MEMORY[0x277CC9110];
  v22 = *(v11 + 104);
  v22(v14, v21, v10);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v14, v21, v10);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v19 + 56))(v23, 0, 1, v27);
  v24 = type metadata accessor for IntentDialog();
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  (*(v32 + 104))(v31, *MEMORY[0x277CBA308], v33);
  result = IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)();
  *v34 = result;
  return result;
}

uint64_t one-time initialization function for searchScopes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOGMd);
  v0 = type metadata accessor for StringSearchScope();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277CB9FF8], v0);
  static SearchInBrowserIntent.searchScopes = v3;
  return result;
}

uint64_t static SearchInBrowserIntent.searchScopes.getter()
{
  if (one-time initialization token for searchScopes != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for title(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t one-time initialization function for description(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a3;
  v22[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v22 - v7;
  v22[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0], v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v20 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v20, a2);
  __swift_project_value_buffer(v20, a2);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277CC9110], v22[0]);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v18 + 56))(v8, 1, 1, v17);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t static SearchFileShortcutsIntent.title.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t key path setter for SearchInBrowserIntent.criteria : SearchInBrowserIntent(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);

  IntentParameter.wrappedValue.setter();
  (*(v3 + 8))(v11, v2);
}

uint64_t SearchInBrowserIntent.criteria.setter(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SearchInBrowserIntent.criteria.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return SearchFileShortcutsIntent.searchPhrase.modify;
}

uint64_t static SearchInBrowserIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SearchInBrowserIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SearchInBrowserIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD7850;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21SearchInBrowserIntentV10AppIntents0I9ParameterCyAF06StringF8CriteriaVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t one-time initialization function for authenticationPolicy(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = *MEMORY[0x277CBA3F8];
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t static SearchFileShortcutsIntent.authenticationPolicy.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for IntentAuthenticationPolicy();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t static SearchFileShortcutsIntent.authenticationPolicy.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for IntentAuthenticationPolicy();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static SearchInBrowserIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static SearchInBrowserIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static SearchFileShortcutsIntent.authenticationPolicy : SearchFileShortcutsIntent.Type@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for IntentAuthenticationPolicy();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t key path setter for static SearchFileShortcutsIntent.authenticationPolicy : SearchFileShortcutsIntent.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for IntentAuthenticationPolicy();
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  (*(*(v8 - 8) + 24))(v9, a1, v8);
  return swift_endAccess();
}

uint64_t SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for StringSearchCriteria();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v8;
  v3[11] = v7;

  return MEMORY[0x2822009F8](SearchInBrowserIntent.startSearch(inFullDocumentManagerController:), v8, v7);
}

uint64_t SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)()
{
  v21 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  IntentParameter.wrappedValue.getter();
  v4 = StringSearchCriteria.term.getter();
  v6 = v5;
  v0[12] = v5;
  (*(v3 + 8))(v1, v2);
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.AppIntents);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BD77A0, &v20);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v20);
    _os_log_impl(&dword_2493AC000, v8, v9, "%s Search action initiated from Link with search phrase %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {
  }

  v12 = v0[3];
  v13 = static MainActor.shared.getter();
  v0[13] = v13;
  v14 = swift_task_alloc();
  v0[14] = v14;
  v14[2] = v12;
  v14[3] = v4;
  v14[4] = v6;
  v15 = swift_task_alloc();
  v0[15] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
  *v15 = v0;
  v15[1] = SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  v17 = v0[2];
  v18 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v17, v13, v18, 0xD00000000000002DLL, 0x8000000249BD77A0, partial apply for closure #1 in SearchInBrowserIntent.startSearch(inFullDocumentManagerController:), v14, v16);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = aBlock - v11;
  (*(v8 + 16))(aBlock - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = DOCFullDocumentManagerViewController.postSearchInitializationBuffer.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = partial apply for closure #1 in closure #1 in SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  v17[4] = v14;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_39;
  v18 = _Block_copy(aBlock);

  [v15 performAfterSearchInitialization_];
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  if (a2)
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    static IntentResult.result<>()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t SearchInBrowserIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchInBrowserIntent.perform(), v3, v2);
}

uint64_t SearchInBrowserIntent.perform()()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for static ShowInAppSearchResultsIntent.searchScopes.getter in conformance SearchInBrowserIntent@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for searchScopes != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static SearchInBrowserIntent.searchScopes;
}

uint64_t protocol witness for ShowInAppSearchResultsIntent.criteria.setter in conformance SearchInBrowserIntent(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance SearchFileShortcutsIntent@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LocalizedStringResource();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for static AppIntent.authenticationPolicy.getter in conformance SearchFileShortcutsIntent@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for IntentAuthenticationPolicy();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance SearchInBrowserIntent()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SearchInBrowserIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SearchInBrowserIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD7850;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21SearchInBrowserIntentV10AppIntents0I9ParameterCyAF06StringF8CriteriaVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchInBrowserIntent(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchInBrowserIntent.perform(), v3, v2);
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SearchInBrowserIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent()
{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StringSearchCriteria and conformance StringSearchCriteria()
{
  result = lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria;
  if (!lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria)
  {
    type metadata accessor for StringSearchCriteria();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_29Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double one-time initialization function for zero()
{
  qword_27EEE8FE0 = 0;
  result = 0.0;
  static DOCItemCollectionCellStackMetrics.zero = 0u;
  *algn_27EEE8FD0 = 0u;
  return result;
}

void DOCItemCollectionCellStackMetrics.init(dateLabelWidth:sizeLabelWidth:kindLabelWidth:tagDimension:spacing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

double static DOCItemCollectionCellStackMetrics.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_27EEE8FE0;
  v2 = *algn_27EEE8FD0;
  *a1 = static DOCItemCollectionCellStackMetrics.zero;
  *(a1 + 16) = v2;
  *(a1 + 32) = result;
  return result;
}

Swift::Int DOCDefaultSourceUIManager.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCDefaultSourceUIManager.state.getter()
{
  v1 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCDefaultSourceUIManager.state.setter(unsigned __int8 a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
  swift_beginAccess();
  v9 = v1[v8];
  *v7 = [v1 queue];
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v10)
  {
    v1[v8] = a1;
    if (v9 != a1)
    {
      *(swift_allocObject() + 16) = v1;
      v12 = v1;
      DOCRunInMainThread(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*DOCDefaultSourceUIManager.state.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for DispatchPredicate();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  swift_beginAccess();
  *(v5 + 64) = *(v1 + v9);
  return DOCDefaultSourceUIManager.state.modify;
}

void DOCDefaultSourceUIManager.state.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v6 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(*a1 + 24);
  v10 = v9[v5];
  *v6 = [v9 queue];
  (*(v8 + 104))(v6, *MEMORY[0x277D85200], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v6, v7);
  if (a2)
  {
    if (v11)
    {
      *(*(v3 + 24) + *(v3 + 56)) = v4;
      if (v4 != v10)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  *(*(v3 + 24) + *(v3 + 56)) = v4;
  if (v4 != v10)
  {
LABEL_7:
    v12 = *(v3 + 24);
    *(swift_allocObject() + 16) = v12;
    v13 = v12;
    DOCRunInMainThread(_:)();
  }

LABEL_8:
  free(*(v3 + 48));

  free(v3);
}

uint64_t DOCDefaultSourceUIManager.settingsDocumentsAndDataURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  MEMORY[0x24C1F76F0](0xD000000000000017, 0x8000000249BD8480);
  v20 = 47;
  v21 = 0xE100000000000000;
  v12 = [v1 configuration];
  v13 = [v12 hostIdentifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x24C1FAEA0](v14, v16);

  MEMORY[0x24C1F7700](v20, v21);
  URLComponents.url.getter();
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v6, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return (*(v18 + 32))(a1, v6, v17);
  }

  return result;
}

id DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 sourceObserver:a2 presentAlertsOn:a3];

  return v6;
}

CFNotificationCenterRef DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v12, v13);
  v44 = type metadata accessor for DispatchQoS();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = OBJC_IVAR___DOCDefaultSourceUIManager_viewController;
  swift_unknownObjectWeakInit();
  v50 = OBJC_IVAR___DOCDefaultSourceUIManager_queue;
  v17 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v48 = "SEARCH_FILE_INTENT_TITLE";
  v49 = v17;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v52);
  v18 = v16;
  *&v3[v50] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v3[OBJC_IVAR___DOCDefaultSourceUIManager_state] = 0;
  *&v3[OBJC_IVAR___DOCDefaultSourceUIManager_alert] = 0;
  v20 = v53;
  v19 = v54;
  *&v4[OBJC_IVAR___DOCDefaultSourceUIManager_configuration] = v53;
  *&v4[OBJC_IVAR___DOCDefaultSourceUIManager_sourceObserver] = v19;
  swift_unknownObjectWeakAssign();
  v58.receiver = v4;
  v58.super_class = DOCDefaultSourceUIManager;
  v21 = v20;
  v22 = v19;
  v23 = objc_msgSendSuper2(&v58, sel_init);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.UI);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2493AC000, v25, v26, "[Default Source UI]: Init", v27, 2u);
    MEMORY[0x24C1FE850](v27, -1, -1);
  }

  if ([v21 isPickerUI])
  {

    return v23;
  }

  v53 = v21;
  v54 = v22;
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  [v29 addObserver:v23 selector:sel_ubiquityIdentityDidChange_ name:*MEMORY[0x277CCA7C8] object:0];

  v30 = [v28 defaultCenter];
  [v30 addObserver:v23 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  result = CFNotificationCenterGetDistributedCenter();
  if (result)
  {
    v32 = result;
    v33 = MEMORY[0x24C1FAD20](0xD00000000000002ELL, 0x8000000249BD79C0);
    CFNotificationCenterAddObserver(v32, v23, @objc closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:), v33, 0, CFNotificationSuspensionBehaviorDrop);

    v34 = MEMORY[0x24C1FAD20](0xD000000000000030, 0x8000000249BD79F0);
    CFNotificationCenterAddObserver(v32, v23, @objc closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:), v34, 0, CFNotificationSuspensionBehaviorDrop);

    v35 = *&v23[OBJC_IVAR___DOCDefaultSourceUIManager_queue];
    v36 = swift_allocObject();
    *(v36 + 16) = v23;
    aBlock[4] = partial apply for closure #2 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_40;
    v37 = _Block_copy(aBlock);
    v38 = v35;
    v39 = v23;
    static DispatchQoS.unspecified.getter();
    v56 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v40 = v45;
    v41 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v18, v40, v37);
    _Block_release(v37);

    (*(v46 + 8))(v40, v41);
    (*(v43 + 8))(v18, v44);

    return v23;
  }

  __break(1u);
  return result;
}

id closure #1 in DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:)(void *a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "[Default Source UI]: ubiquityIdentityDidChange", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  return [a1 updateAlertState];
}

uint64_t DOCDefaultSourceUIManager.cleanupAlert(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v8 = *(v20 - 8);
  v10 = MEMORY[0x28223BE20](v20, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v2 queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in DOCDefaultSourceUIManager.cleanupAlert(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_129_0;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v7, v15);
  _Block_release(v15);

  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v12, v20);
}

void closure #1 in DOCDefaultSourceUIManager.cleanupAlert(_:)(unsigned __int8 *a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 alert];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAlertController);
    v12 = a2;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      v14 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
      swift_beginAccess();
      v15 = a1[v14];
      *v9 = [a1 queue];
      (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4);
      v16 = _dispatchPreconditionTest(_:)();
      (*(v5 + 8))(v9, v4);
      if (v16)
      {
        a1[v14] = 0;
        if (v15)
        {
          *(swift_allocObject() + 16) = a1;
          v17 = a1;
          DOCRunInMainThread(_:)();
        }

        [a1 updateAlertState];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void DOCDefaultSourceUIManager.promptToUseICloudOrLocal()()
{
  v1 = v0;
  v2 = [v0 hostApplicationRecord];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 localizedName];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = _DocumentManagerBundle();
    if (v8)
    {
      v9 = v8;
      v10._countAndFlagsBits = 0xD00000000000002ALL;
      v78._countAndFlagsBits = 0xD000000000000082;
      v78._object = 0x8000000249BD80D0;
      v10._object = 0x8000000249BD80A0;
      v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v11.value._object = 0xEB00000000656C62;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v78);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_249B9A480;
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v13 + 32) = v5;
      *(v13 + 40) = v7;
      v14 = String.init(format:_:)();
      v16 = v15;

      v17 = MobileGestalt_get_current_device();
      if (v17)
      {
        v18 = v17;
        deviceClassNumber = MobileGestalt_get_deviceClassNumber();

        v20 = _DocumentManagerBundle();
        v21 = v20;
        switch(deviceClassNumber)
        {
          case 2:
            if (!v20)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v22 = "New documents will be saved to iCloud Drive. Existing documents on your iPod will not be moved.";
            break;
          case 11:
            if (!v20)
            {
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v26 = 0xD00000000000006BLL;
            v69 = 0x8000000249BD8310;
            v27 = 0x8000000249BD82A0;
            v28 = 0xD000000000000089;
            v29 = 0x617A696C61636F4CLL;
            v30 = 0xEB00000000656C62;
            v31.super.isa = v21;
            v32 = 0;
            v33 = 0xE000000000000000;
LABEL_24:
            NSLocalizedString(_:tableName:bundle:value:comment:)(*&v26, *&v29, v31, *&v32, *&v28);

            v35 = String.init(format:_:)();
            v37 = v36;

            v38 = MEMORY[0x24C1FAD20](v14, v16);

            v39 = MEMORY[0x24C1FAD20](v35, v37);

            v40 = [objc_opt_self() alertControllerWithTitle:v38 message:v39 preferredStyle:1];

            v41 = _DocumentManagerBundle();
            if (v41)
            {
              v42 = v41;
              v43._countAndFlagsBits = 0xD000000000000010;
              v79._object = 0x8000000249BD7FE0;
              v43._object = 0x8000000249BD7FC0;
              v79._countAndFlagsBits = 0xD0000000000000B5;
              v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v44.value._object = 0xEB00000000656C62;
              v45._countAndFlagsBits = 0;
              v45._object = 0xE000000000000000;
              v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v79);

              v47 = swift_allocObject();
              *(v47 + 16) = v1;
              *(v47 + 24) = v40;
              v48 = v1;
              v49 = v40;
              v50 = MEMORY[0x24C1FAD20](v46._countAndFlagsBits, v46._object);

              v75 = partial apply for closure #1 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal();
              v76 = v47;
              aBlock = MEMORY[0x277D85DD0];
              v72 = 1107296256;
              v73 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
              v74 = &block_descriptor_117;
              v51 = _Block_copy(&aBlock);

              v52 = objc_opt_self();
              v53 = [v52 actionWithTitle:v50 style:0 handler:v51];
              _Block_release(v51);

              v54 = v49;
              [v54 addAction_];
              v55 = _DocumentManagerBundle();
              if (v55)
              {
                v56 = v55;
                v80._countAndFlagsBits = 0xD000000000000030;
                v80._object = 0x8000000249BD8260;
                v57._countAndFlagsBits = 0x776F4E20746F4ELL;
                v57._object = 0xE700000000000000;
                v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                v58.value._object = 0xEB00000000656C62;
                v59._countAndFlagsBits = 0;
                v59._object = 0xE000000000000000;
                v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v80);

                v61 = swift_allocObject();
                *(v61 + 16) = v48;
                *(v61 + 24) = v54;
                v62 = v48;
                v63 = v54;
                v64 = MEMORY[0x24C1FAD20](v60._countAndFlagsBits, v60._object);

                v75 = partial apply for closure #2 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal();
                v76 = v61;
                aBlock = MEMORY[0x277D85DD0];
                v72 = 1107296256;
                v73 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
                v74 = &block_descriptor_123;
                v65 = _Block_copy(&aBlock);

                v66 = [v52 actionWithTitle:v64 style:0 handler:v65];
                _Block_release(v65);

                [v63 addAction_];
                [v63 setPreferredAction_];

                [v62 setAlert_];
                v67 = [v62 viewController];
                if (v67)
                {
                  v68 = v67;
                  [v67 presentViewController:v63 animated:1 completion:0];
                }

                return;
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          case 3:
            if (!v20)
            {
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v22 = "New documents will be saved to iCloud Drive. Existing documents on your iPad will not be moved.";
            break;
          default:
            if (!v20)
            {
LABEL_36:
              __break(1u);
              return;
            }

            v34 = "bling iCloud Drive";
            v26 = 0xD000000000000061;
            goto LABEL_23;
        }

        v34 = (v22 - 32);
        v26 = 0xD00000000000005FLL;
LABEL_23:
        v69 = 0x8000000249BD81D0;
        v27 = v34 | 0x8000000000000000;
        v29 = 0x617A696C61636F4CLL;
        v30 = 0xEB00000000656C62;
        v31.super.isa = v21;
        v32 = 0;
        v33 = 0xE000000000000000;
        v28 = 0xD000000000000084;
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.UI);
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v24, "Unable to load hostApplicationRecord, so can not present promptToUseICloudOrLocal()", v25, 2u);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }
}

void DOCDefaultSourceUIManager.promptToUseOtherOrLocal()()
{
  v1 = [v0 hostApplicationRecord];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    aBlock[4] = partial apply for closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_87_1;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v6 getIsICloudDriveEnabledWithCompletion_];
    _Block_release(v4);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v8, "Unable to load hostApplicationRecord, so can not present promptToUseOtherOrLocal()", v9, 2u);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }
  }
}

uint64_t closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal()(char a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  v7 = a2;
  v8 = a3;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal()(void *a1, void *a2, char a3)
{
  v3 = [a1 localizedName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = _DocumentManagerBundle();
  if (!v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10._countAndFlagsBits = 0xD000000000000024;
  v85._countAndFlagsBits = 0xD000000000000069;
  v85._object = 0x8000000249BD7C90;
  v10._object = 0x8000000249BD7C60;
  v9.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v85);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 64) = v14;
  *(v12 + 32) = v4;
  *(v12 + 40) = v6;

  v15 = String.init(format:_:)();
  v17 = v16;

  v18 = _DocumentManagerBundle();
  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = v18;
  v20._countAndFlagsBits = 0xD000000000000068;
  v86._countAndFlagsBits = 0xD00000000000006BLL;
  v86._object = 0x8000000249BD7D70;
  v20._object = 0x8000000249BD7D00;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v86);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249B9A480;
  *(v23 + 56) = v13;
  *(v23 + 64) = v14;
  *(v23 + 32) = v4;
  *(v23 + 40) = v6;
  v24 = String.init(format:_:)();
  v26 = v25;

  v27 = MEMORY[0x24C1FAD20](v15, v17);

  v28 = MEMORY[0x24C1FAD20](v24, v26);

  v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];

  v30 = _DocumentManagerBundle();
  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v30;
  v32._countAndFlagsBits = 0xD000000000000013;
  v87._object = 0x8000000249BD7E00;
  v32._object = 0x8000000249BD7DE0;
  v87._countAndFlagsBits = 0xD000000000000074;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v87);

  v36 = v29;
  v37 = MEMORY[0x24C1FAD20](v35._countAndFlagsBits, v35._object);

  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  v83 = partial apply for closure #1 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
  v84 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v82 = &block_descriptor_96;
  v39 = _Block_copy(&aBlock);
  v40 = a2;

  v83 = getEnumTag for DOCNodeOperation;
  v84 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  v82 = &block_descriptor_99;
  v41 = _Block_copy(&aBlock);
  [v36 _addActionWithTitle_style_handler_shouldDismissHandler_];
  _Block_release(v41);
  _Block_release(v39);

  if ((a3 & 1) == 0)
  {
    v53 = MobileGestalt_get_current_device();
    if (!v53)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v54 = v53;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    v56 = _DocumentManagerBundle();
    v57 = v56;
    switch(deviceClassNumber)
    {
      case 2:
        if (!v56)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v76 = 0x8000000249BD7EA0;
        v58 = 0x206F742065766153;
        v59 = 0xEF646F506920794DLL;
        break;
      case 11:
        if (!v56)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v58 = 0xD00000000000001BLL;
        v76 = 0x8000000249BD7F40;
        v59 = 0x8000000249BD7F20;
        v60 = 0xD000000000000077;
        v61 = 0x617A696C61636F4CLL;
        v62 = 0xEB00000000656C62;
        v63.super.isa = v57;
        v64 = 0;
        v65 = 0xE000000000000000;
LABEL_20:
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v58, *&v61, v63, *&v64, *(&v76 - 1));

        v66 = String.init(format:_:)();
        v68 = v67;

        v69 = swift_allocObject();
        *(v69 + 16) = v40;
        *(v69 + 24) = v36;
        v70 = v36;
        v71 = v40;
        v51 = MEMORY[0x24C1FAD20](v66, v68);

        v83 = partial apply for closure #4 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
        v84 = v69;
        aBlock = MEMORY[0x277D85DD0];
        v80 = 1107296256;
        v52 = &block_descriptor_105;
        goto LABEL_21;
      case 3:
        if (!v56)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v76 = 0x8000000249BD7EA0;
        v58 = 0x206F742065766153;
        v59 = 0xEF6461506920794DLL;
        break;
      default:
        if (!v56)
        {
LABEL_32:
          __break(1u);
          return;
        }

        v58 = 0xD000000000000011;
        v76 = 0x8000000249BD7EA0;
        v59 = 0x8000000249BD7E80;
        break;
    }

    v61 = 0x617A696C61636F4CLL;
    v62 = 0xEB00000000656C62;
    v63.super.isa = v57;
    v64 = 0;
    v65 = 0xE000000000000000;
    v60 = 0xD000000000000072;
    goto LABEL_20;
  }

  v42 = _DocumentManagerBundle();
  if (!v42)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43 = v42;
  v44._countAndFlagsBits = 0xD000000000000010;
  v88._object = 0x8000000249BD7FE0;
  v44._object = 0x8000000249BD7FC0;
  v88._countAndFlagsBits = 0xD0000000000000B5;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v88);

  v48 = swift_allocObject();
  *(v48 + 16) = v40;
  *(v48 + 24) = v36;
  v49 = v36;
  v50 = v40;
  v51 = MEMORY[0x24C1FAD20](v47._countAndFlagsBits, v47._object);

  v83 = partial apply for closure #3 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
  v84 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v52 = &block_descriptor_111;
LABEL_21:
  v81 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v82 = v52;
  v72 = _Block_copy(&aBlock);

  v73 = [objc_opt_self() actionWithTitle:v51 style:0 handler:v72];
  _Block_release(v72);

  [v36 addAction_];
  [v40 setAlert_];

  v74 = [v40 viewController];
  if (v74)
  {
    v75 = v74;
    [v74 presentViewController:v36 animated:1 completion:0];
  }
}

void closure #1 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal()(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v9 = [a1 settingsDocumentsAndDataURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    [v8 openSensitiveURL:v12 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal()(uint64_t a1, void *a2, uint64_t a3)
{
  result = DOCDocumentSourceIdentifierICloud_Current();
  if (result)
  {
    v6 = result;
    v7 = [a2 configuration];
    v8 = [v7 hostIdentifier];

    if (!v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = MEMORY[0x24C1FAD20](v9);
    }

    [objc_opt_self() setDefaultSourceIdentifier:v6 forBundleIdentifier:v8];

    return [a2 cleanupAlert_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #2 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal()(int a1, id a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D060F0];
  v6 = [a2 configuration];
  v7 = [v6 hostIdentifier];

  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x24C1FAD20](v8);
  }

  [objc_opt_self() setDefaultSourceIdentifier:v5 forBundleIdentifier:v7];

  return [a2 cleanupAlert_];
}

void DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 configuration];
  v7 = [v3 sourceObserver];
  [v7 startObservingSources];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = partial apply for closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:);
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_17_1;
  v9 = _Block_copy(v10);

  [v7 retrieveSourcesForConfiguration:v6 usingBlock:v9];
  _Block_release(v9);
}

uint64_t DOCDefaultSourceUIManager.getMainICloudSourceIfEnabled(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(partial apply for closure #1 in DOCDefaultSourceUIManager.getMainICloudSourceIfEnabled(completion:), v4);
}

void closure #1 in DOCDefaultSourceUIManager.getMainICloudSourceIfEnabled(completion:)(unint64_t a1, void (*a2)(void *))
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v9)
      {
        v11 = v7;
        v10 = [v9 isMainiCloudDriveDomain];
        v7 = v11;
        if (v10)
        {
          goto LABEL_17;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v7 = 0;
LABEL_17:
  v12 = v7;
  a2(v7);
}

void DOCDefaultSourceUIManager.updateAlertState()()
{
  v1 = v0;
  v2 = [v0 configuration];
  v3 = [v2 hostIdentifier];

  v19 = v3;
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = MEMORY[0x24C1FAD20](v4);
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
    }

    else
    {
      v11 = [objc_opt_self() defaultSourceIdentifierForBundleIdentifier_];

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.UI);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2493AC000, v13, v14, "[Default Source UI]: Updating Alert State", v15, 2u);
        MEMORY[0x24C1FE850](v15, -1, -1);
      }

      v16 = swift_allocObject();
      v16[2] = v1;
      v16[3] = v11;
      v16[4] = v5;
      v16[5] = v7;
      v17 = v1;
      v18 = v11;
      DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(partial apply for closure #1 in DOCDefaultSourceUIManager.updateAlertState(), v16);
    }
  }
}

uint64_t closure #1 in DOCDefaultSourceUIManager.updateAlertState()(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v14 = *(v26 - 8);
  v16 = MEMORY[0x28223BE20](v26, v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 queue];
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCDefaultSourceUIManager.updateAlertState();
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_55_1;
  v21 = _Block_copy(aBlock);
  v22 = a3;

  v23 = a2;
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v18, v13, v21);
  _Block_release(v21);

  (*(v27 + 8))(v13, v10);
  (*(v14 + 8))(v18, v26);
}

void closure #1 in closure #1 in DOCDefaultSourceUIManager.updateAlertState()(unint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v201 = __CocoaSet.count.getter();
  }

  else
  {
    v201 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  DOCDefaultSourceUIManager.mostRelevantiCloudSource(from:)(a1);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 identifier];
  }

  else
  {
    v17 = DOCDocumentSourceIdentifierICloud_Current();
    if (!v17)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }
  }

  v195 = a4;
  v196 = a5;
  v200 = v10;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v198 = v14;
  v199 = v11;
  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.UI);
  v20 = a3;
  v21 = v17;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v197 = v19;
  if (!v24)
  {

    v36 = &unk_27EEE8000;
    if (a3)
    {
      goto LABEL_18;
    }

LABEL_23:
    v42 = *MEMORY[0x277D05DA8];
    if (v201 > 0)
    {
      v42 = v21;
    }

    v43 = v42;
    v41 = v196;

    v44 = v43;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v205[0] = v201;
      *v47 = 136315394;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v195, v41, v205);
      *(v47 + 12) = 2080;
      v48 = v44;
      v49 = v21;
      v50 = [v48 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = a2;
      v54 = v53;

      v55 = v51;
      v41 = v196;
      v21 = v49;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v205);
      a2 = v52;

      *(v47 + 14) = v56;
      v36 = &unk_27EEE8000;
      _os_log_impl(&dword_2493AC000, v45, v46, "[Default Source UI] (nil, _): First launch of %s, setting default provider to %s", v47, 0x16u);
      v57 = v201;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v57, -1, -1);
      MEMORY[0x24C1FE850](v47, -1, -1);
    }

    v58 = v195;
    v59 = objc_opt_self();
    v60 = MEMORY[0x24C1FAD20](v58, v41);
    [v59 setDefaultSourceIdentifier:v44 forBundleIdentifier:v60];

    v61 = v36[509];
    swift_beginAccess();
    v62 = a2[v61];
    v63 = [a2 queue];
    a3 = v198;
    v64 = v199;
    *v198 = v63;
    v65 = v200;
    (*(v64 + 13))(a3, *MEMORY[0x277D85200], v200);
    LOBYTE(v59) = _dispatchPreconditionTest(_:)();
    (*(v64 + 1))(a3, v65);
    if (v59)
    {
      a2[v61] = 0;
      if (v62)
      {
        *(swift_allocObject() + 16) = a2;
        v66 = a2;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }

      goto LABEL_78;
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v194 = a2;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v205[0] = v27;
  *v25 = 138412802;
  v28 = v20;
  v193 = a3;
  if (!a3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSString);
    v28 = NSString.init(stringLiteral:)();
  }

  *(v25 + 4) = v28;
  *v26 = v28;
  *(v25 + 12) = 2080;
  if (v201 <= 0)
  {
    v29 = 20302;
  }

  else
  {
    v29 = 5457241;
  }

  if (v201 <= 0)
  {
    v30 = 0xE200000000000000;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  v31 = v20;
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v205);

  *(v25 + 14) = v32;
  *(v25 + 22) = 2080;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v205);

  *(v25 + 24) = v35;
  _os_log_impl(&dword_2493AC000, v22, v23, "[Default Source UI] Default provider: %@ iCloud Drive enabled: %s, relevantiCloudSourceIdentifier: %s", v25, 0x20u);
  outlined destroy of NSObject?(v26);
  MEMORY[0x24C1FE850](v26, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v27, -1, -1);
  MEMORY[0x24C1FE850](v25, -1, -1);

  a2 = v194;
  a3 = v193;
  v36 = &unk_27EEE8000;
  if (!v193)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v201 <= 0)
  {
    v196 = v20;
    v67 = v20;
    v68 = DOCDocumentSourceIdentifierICloud_Current();
    if (!v68)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v69 = v68;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
    if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
    {
    }

    else
    {
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v85 & 1) == 0)
      {
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;
        if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v98 == v99)
        {
        }

        else
        {
          v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v100 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&dword_2493AC000, v101, v102, "[Default Source UI] (DOCDocumentSourceIdentifier.localAutomatic?, false): iCloud Drive is not available, but we're already in localAuto, so no alert", v103, 2u);
          MEMORY[0x24C1FE850](v103, -1, -1);
        }

        v104 = v36[509];
        swift_beginAccess();
        v105 = a2[v104];
        v106 = [a2 queue];
        v108 = v198;
        v107 = v199;
        *v198 = v106;
        v109 = v200;
        (*(v107 + 13))(v108, *MEMORY[0x277D85200], v200);
        v110 = _dispatchPreconditionTest(_:)();
        (*(v107 + 1))(v108, v109);
        if (v110)
        {
          a2[v104] = 0;
          if (v105)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        goto LABEL_112;
      }
    }

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2493AC000, v86, v87, "[Default Source UI] (.iCloudCurrent?, false): iCloud Drive is no longer available, showing prompt saying we've switched to local storage", v88, 2u);
      MEMORY[0x24C1FE850](v88, -1, -1);
    }

    v89 = v36[509];
    swift_beginAccess();
    v90 = a2[v89];
    v91 = [a2 queue];
    v93 = v198;
    v92 = v199;
    *v198 = v91;
    v94 = v200;
    (*(v92 + 13))(v93, *MEMORY[0x277D85200], v200);
    v95 = _dispatchPreconditionTest(_:)();
    (*(v92 + 1))(v93, v94);
    if (v95)
    {
      a2[v89] = 2;
      if (v90 != 2)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
    v41 = a3;
    a3 = v21;

    goto LABEL_36;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v196 = v20;
  v75 = v20;

  if (v74)
  {
    v41 = a3;
    a3 = v21;

LABEL_36:
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2493AC000, v76, v77, "[Default Source UI] (DOCDocumentSourceIdentifier.localAutomatic?, true): iCloud Drive is available, showing prompt to select between iCloud Drive and local storage", v78, 2u);
      MEMORY[0x24C1FE850](v78, -1, -1);
    }

    v79 = v36[509];
    swift_beginAccess();
    v80 = a2[v79];
    v81 = [a2 queue];
    v62 = v198;
    v82 = v199;
    *v198 = v81;
    v83 = v200;
    (*(v82 + 13))(v62, *MEMORY[0x277D85200], v200);
    v84 = _dispatchPreconditionTest(_:)();
    (*(v82 + 1))(v62, v83);
    if (v84)
    {
      a2[v79] = 1;
      v36 = &unk_27EEE8000;
      v21 = a3;
      if (v80 != 1)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    goto LABEL_104;
  }

LABEL_58:
  v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v113 = v112;
  if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
  {

    goto LABEL_63;
  }

  v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v115)
  {

LABEL_63:
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_2493AC000, v116, v117, "[Default Source UI] (DOCDocumentSourceIdentifier.local?, _): iCloud Drive is not available, but we're already in local, so no alert", v118, 2u);
      MEMORY[0x24C1FE850](v118, -1, -1);
    }

    v119 = v36[509];
    swift_beginAccess();
    v120 = a2[v119];
    v121 = [a2 queue];
    v123 = v198;
    v122 = v199;
    *v198 = v121;
    v124 = v200;
    (*(v122 + 13))(v123, *MEMORY[0x277D85200], v200);
    v125 = _dispatchPreconditionTest(_:)();
    (*(v122 + 1))(v123, v124);
    if (v125)
    {
      a2[v119] = 0;
      if (v120)
      {
LABEL_67:
        *(swift_allocObject() + 16) = a2;
        v126 = a2;
        DOCRunInMainThread(_:)();
      }

LABEL_68:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v36[509];
      swift_beginAccess();
      if (a2[v127])
      {

LABEL_70:
        v44 = v21;
LABEL_78:

        return;
      }

      v128 = DOCDocumentSourceIdentifierICloud_Current();
      if (v128)
      {
        v129 = v128;
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;

        v133._countAndFlagsBits = v130;
        v133._object = v132;
        LOBYTE(v129) = String.hasPrefix(_:)(v133);

        if (v129)
        {
        }

        else
        {
          v134._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v135 = String.hasPrefix(_:)(v134);

          if (!v135)
          {
            goto LABEL_70;
          }
        }

        v44 = v21;
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v203 = v44;
          v204 = v139;
          *v138 = 136315138;
          type metadata accessor for DOCDocumentSourceIdentifier(0);
          v140 = v44;
          v141 = String.init<A>(describing:)();
          v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v204);

          *(v138 + 4) = v143;
          _os_log_impl(&dword_2493AC000, v136, v137, "[Default Source UI] Updating saved identifier with a real iCloud Domain: %s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v139);
          MEMORY[0x24C1FE850](v139, -1, -1);
          MEMORY[0x24C1FE850](v138, -1, -1);
        }

        [a2 updateAlertStateFor_];
        goto LABEL_78;
      }

      goto LABEL_115;
    }

    goto LABEL_111;
  }

  if (v201 < 1)
  {
    goto LABEL_107;
  }

  v41 = v196;
  v144 = DOCDocumentSourceIdentifierICloud_Current();
  if (!v144)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v145 = v144;
  v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v148 = v147;
  if (v146 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v148 == v149)
  {

LABEL_85:

    goto LABEL_86;
  }

  v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v150)
  {
    goto LABEL_85;
  }

  v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v162;
  if (v161 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v163 == v164)
  {

    goto LABEL_86;
  }

  v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v165)
  {
    goto LABEL_85;
  }

  v62 = v41;
  v166 = DOCDocumentSourceIdentifierICloud_CurrentManaged();
  if (v166)
  {
    v167 = v166;
    v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v170 = v169;
    if (v168 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v170 == v171)
    {
    }

    else
    {
      v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v172 & 1) == 0)
      {
        v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v175 = v174;
        if (v173 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v175 != v176)
        {
LABEL_105:
          v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v36 = &unk_27EEE8000;
          if (v177)
          {

            goto LABEL_86;
          }

LABEL_107:
          v178 = v196;
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v199 = v181;
            v200 = swift_slowAlloc();
            v205[0] = v200;
            *v181 = 136315138;
            v182 = v178;
            v183 = [v182 description];
            v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v185 = v21;
            v186 = v184;
            v201 = v185;
            v188 = v187;

            v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, v205);
            v21 = v201;

            v190 = v199;
            *(v199 + 1) = v189;
            v36 = &unk_27EEE8000;
            _os_log_impl(&dword_2493AC000, v179, v180, "[Default Source UI] Verifying %s is still available", v190, 0xCu);
            v191 = v200;
            __swift_destroy_boxed_opaque_existential_0(v200);
            MEMORY[0x24C1FE850](v191, -1, -1);
            MEMORY[0x24C1FE850](v190, -1, -1);
          }

          [a2 updateAlertStateFor_];
          goto LABEL_68;
        }

        v36 = &unk_27EEE8000;
LABEL_86:
        v151 = v41;
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v205[0] = v155;
          *v154 = 136315138;
          v202 = a3;
          v156 = v151;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
          v157 = String.init<A>(describing:)();
          v159 = v36;
          v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, v205);

          *(v154 + 4) = v160;
          v36 = v159;
          _os_log_impl(&dword_2493AC000, v152, v153, "[Default Source UI] Should update saved identifier with a real iCloud Domain: %s", v154, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v155);
          MEMORY[0x24C1FE850](v155, -1, -1);
          MEMORY[0x24C1FE850](v154, -1, -1);
        }

        goto LABEL_68;
      }
    }

    v36 = &unk_27EEE8000;
    goto LABEL_86;
  }

LABEL_117:
  __break(1u);
}