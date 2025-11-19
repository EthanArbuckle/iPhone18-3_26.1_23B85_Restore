uint64_t type metadata accessor for PushToTalkTalkButtonGestureRecognizer()
{
  result = type metadata singleton initialization cache for PushToTalkTalkButtonGestureRecognizer;
  if (!type metadata singleton initialization cache for PushToTalkTalkButtonGestureRecognizer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UITouch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

id PushToTalkTalkButtonGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for PushToTalkTalkButtonGestureRecognizer();
  objc_msgSendSuper2(&v13, *a3, isa, a2);

  v7 = [v3 view];
  [v3 locationInView_];
  v9 = v8;
  v11 = v10;

  return PushToTalkTalkButtonGestureRecognizer.update(location:)(v9, v11);
}

uint64_t PushToTalkTalkButtonGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PushToTalkTalkButtonGestureRecognizer();
  objc_msgSendSuper2(&v10, *a3, isa, a2);

  result = [v4 state];
  if (result <= 2)
  {
    return [v4 setState_];
  }

  return result;
}

uint64_t @objc PushToTalkTalkButtonGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

Swift::Void __swiftcall PushToTalkTalkButtonGestureRecognizer.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for PushToTalkTalkButtonGestureRecognizer();
  v8.receiver = v0;
  v8.super_class = v4;
  objc_msgSendSuper2(&v8, sel_reset);
  [v0 setState_];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetMd);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_previous;
  swift_beginAccess();
  outlined assign with take of (location: CGPoint, time: Date)?(v3, &v0[v6]);
  swift_endAccess();
  if (*&v0[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_recognizedGestureWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }
}

id PushToTalkTalkButtonGestureRecognizer.update(location:)(double a1, double a2)
{
  v73 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_2_7();
  v76 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v74 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v75 = v70 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_17();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v70 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v70 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v70 - v31;
  *&v34 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
  v36 = (v70 - v35);
  result = [v2 state];
  if (!result)
  {
    v70[0] = v11;
    v70[1] = v15;
    v71 = v19;
    v38 = v77;
    *v36 = a1;
    v36[1] = a2;
    Date.init()();
    v39 = OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_previous;
    v40 = v2;
    swift_beginAccess();
    outlined init with copy of (CGFloat, AutoplayCandidate)(&v2[v39], v22, &_sSo7CGPointV8location_10Foundation4DateV4timetSgMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v38);
    v72 = v36;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_sSo7CGPointV8location_10Foundation4DateV4timetSgMd);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in PushToTalkTalkButtonGestureRecognizer.update(location:);
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_99;
      _Block_copy(aBlock);
      v78 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v43 = DispatchWorkItem.init(flags:block:)();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v44 = static OS_dispatch_queue.main.getter();
      v45 = v74;
      static DispatchTime.now()();
      v46 = v38;
      v47 = v39;
      v48 = v75;
      MEMORY[0x1BFB20700](v45, &v40[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_interval]);
      v49 = v40;
      v50 = *(v76 + 8);
      v51 = v73;
      v50(v45, v73);
      MEMORY[0x1BFB21520](v48, v43);

      v50(v48, v51);
      *&v49[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_recognizedGestureWorkItem] = v43;

      v52 = v71;
      outlined init with take of (location: CGPoint, time: Date)(v72, v71);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v46);
      OUTLINED_FUNCTION_4_138();
      v53 = &v49[v47];
      v54 = v52;
    }

    else
    {
      v76 = v39;
      v55 = v32;
      outlined init with take of (location: CGPoint, time: Date)(v22, v32);
      outlined init with copy of (CGFloat, AutoplayCandidate)(v32, v29, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
      v56 = *v29;
      v57 = v29[1];
      v58 = *(v38 + 48);
      outlined init with copy of (CGFloat, AutoplayCandidate)(v72, v26, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
      v59 = *(v38 + 48);
      PushToTalkTalkButtonGestureRecognizer.velocity(previous:current:)(v29 + v58, v26 + v59, v56, v57, *v26, v26[1]);
      v61 = v60;
      v62 = type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      v64 = *(v63 + 8);
      v64(v26 + v59, v62);
      v64(v29 + v58, v62);
      if (*&v40[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_maximumVerticalVelocity] >= fabs(v61))
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
        v68 = v71;
        outlined init with take of (location: CGPoint, time: Date)(v72, v71);
        __swift_storeEnumTagSinglePayload(v68, 0, 1, v77);
        v69 = v76;
        OUTLINED_FUNCTION_4_138();
        v53 = &v40[v69];
        v54 = v68;
      }

      else
      {
        v65 = v76;
        v66 = v77;
        v67 = v71;
        if (*&v40[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_recognizedGestureWorkItem])
        {

          dispatch thunk of DispatchWorkItem.cancel()();
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
        outlined init with take of (location: CGPoint, time: Date)(v72, v67);
        __swift_storeEnumTagSinglePayload(v67, 0, 1, v66);
        OUTLINED_FUNCTION_4_138();
        v53 = &v40[v65];
        v54 = v67;
      }
    }

    outlined assign with take of (location: CGPoint, time: Date)?(v54, v53);
    return swift_endAccess();
  }

  return result;
}

uint64_t outlined assign with take of (location: CGPoint, time: Date)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void closure #1 in PushToTalkTalkButtonGestureRecognizer.update(location:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setState_];
  }
}

double PushToTalkTalkButtonGestureRecognizer.velocity(previous:current:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v44 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v43 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v43 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v43 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v43 - v22);
  *v23 = a3;
  v23[1] = a4;
  v25 = *(v24 + 48);
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v23 + v25, a1, v26);
  *v20 = a5;
  v20[1] = a6;
  v28(v20 + *(v11 + 48), v44, v26);
  if (static Date.> infix(_:_:)())
  {
    Date.distance(to:)();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_48_0();
    outlined init with copy of (CGFloat, AutoplayCandidate)(v31, v32, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
    v33 = *v17;
    v34 = *(v11 + 48);
    v35 = v43;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v20, v43, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
    v36 = v33 - *v35;
    v37 = *(v27 + 8);
    v37(v35 + *(v11 + 48), v26);
    v37(v17 + v34, v26);
    v38 = v36 / v30;
    v39 = OUTLINED_FUNCTION_48_0();
    outlined init with take of (location: CGPoint, time: Date)(v39, v40);
    v41 = *(v11 + 48);
    outlined init with take of (location: CGPoint, time: Date)(v20, v35);
    v37(v35 + *(v11 + 48), v26);
    v37(v17 + v41, v26);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_sSo7CGPointV8location_10Foundation4DateV4timetMd);
    return 0.0;
  }

  return v38;
}

id PushToTalkTalkButtonGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  if (a1[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_2_7();
    v6 = v5;
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_8();
    (*(v6 + 16))(v9 - v8);
    OUTLINED_FUNCTION_48_0();
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    v11 = OUTLINED_FUNCTION_48_0();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v13 = [objc_allocWithZone(v2) initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v13;
}

id PushToTalkTalkButtonGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkTalkButtonGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for PushToTalkTalkButtonGestureRecognizer()
{
  type metadata accessor for DispatchTimeInterval();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (location: CGPoint, time: Date)?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for (location: CGPoint, time: Date)?()
{
  if (!lazy cache variable for type metadata for (location: CGPoint, time: Date)?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo7CGPointV8location_10Foundation4DateV4timetMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (location: CGPoint, time: Date)?);
    }
  }
}

uint64_t outlined init with take of (location: CGPoint, time: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SymbolImageDescribers.ConversationControls.symbolImageDescription.getter()
{
  OUTLINED_FUNCTION_48_18();
  switch(v1)
  {
    case 1:
    case 6:
    case 33:
      OUTLINED_FUNCTION_7_99();
      OUTLINED_FUNCTION_55_18();
      goto LABEL_20;
    case 2:
      OUTLINED_FUNCTION_34_35();
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_4_139();
      goto LABEL_16;
    case 4:
      OUTLINED_FUNCTION_26_50();
      goto LABEL_16;
    case 5:
      v2 = *MEMORY[0x1E69DDCF8];
      v3 = objc_opt_self();
      v4 = v2;
      v5 = [v3 labelColor];
      OUTLINED_FUNCTION_51_21();
      v8 = OUTLINED_FUNCTION_29_38(v6, v7);
      goto LABEL_41;
    case 7:
    case 34:
      goto LABEL_16;
    case 8:
      OUTLINED_FUNCTION_4_139();
      goto LABEL_38;
    case 9:
      OUTLINED_FUNCTION_17_64();
      OUTLINED_FUNCTION_50_21();
      goto LABEL_38;
    case 10:
      OUTLINED_FUNCTION_13_74();
      goto LABEL_38;
    case 11:
      OUTLINED_FUNCTION_9_98();
      goto LABEL_25;
    case 12:
      OUTLINED_FUNCTION_7_99();
      OUTLINED_FUNCTION_40_23();
LABEL_20:
      OUTLINED_FUNCTION_12_86();
      goto LABEL_43;
    case 13:
      OUTLINED_FUNCTION_35_27();
      goto LABEL_38;
    case 14:
      OUTLINED_FUNCTION_21_57();
      goto LABEL_38;
    case 15:
    case 16:
    case 36:
      OUTLINED_FUNCTION_13_74();
      goto LABEL_38;
    case 17:
      OUTLINED_FUNCTION_47_17();
      goto LABEL_38;
    case 18:
      OUTLINED_FUNCTION_25_46();
      goto LABEL_38;
    case 19:
      OUTLINED_FUNCTION_17_64();
LABEL_25:
      OUTLINED_FUNCTION_14_66();
      goto LABEL_26;
    case 20:
      OUTLINED_FUNCTION_13_74();
      goto LABEL_34;
    case 21:
      OUTLINED_FUNCTION_47_17();
      goto LABEL_34;
    case 22:
      OUTLINED_FUNCTION_25_46();
LABEL_34:
      OUTLINED_FUNCTION_49_21();
      goto LABEL_39;
    case 23:
      OUTLINED_FUNCTION_30_34();
      goto LABEL_39;
    case 24:
      OUTLINED_FUNCTION_54_17();
      goto LABEL_27;
    case 25:
    case 26:
    case 37:
      OUTLINED_FUNCTION_7_99();
      OUTLINED_FUNCTION_15_62();
LABEL_43:
      OUTLINED_FUNCTION_10_85();
      v20 = v19;
      v21 = v18;
      goto LABEL_40;
    case 27:
      OUTLINED_FUNCTION_17_64();
      goto LABEL_37;
    case 28:
      goto LABEL_38;
    case 29:
      OUTLINED_FUNCTION_9_98();
LABEL_37:
      OUTLINED_FUNCTION_14_66();
      goto LABEL_38;
    case 30:
    case 35:
      OUTLINED_FUNCTION_21_57();
      goto LABEL_38;
    case 31:
      OUTLINED_FUNCTION_17_64();
      OUTLINED_FUNCTION_50_21();
LABEL_38:
      OUTLINED_FUNCTION_15_62();
      goto LABEL_39;
    case 32:
      OUTLINED_FUNCTION_52_19();
LABEL_26:
      OUTLINED_FUNCTION_30_34();
      goto LABEL_27;
    default:
      OUTLINED_FUNCTION_37_32();
LABEL_16:
      OUTLINED_FUNCTION_49_21();
LABEL_27:
      OUTLINED_FUNCTION_12_86();
LABEL_39:
      OUTLINED_FUNCTION_10_85();
      v20 = v12;
      v21 = v13;
LABEL_40:
      v22 = v10;
      v23 = v9;
      v24 = 0;
      v25 = v11;
      v26 = 0;
      v27 = 0;
      v8 = v9;
LABEL_41:
      OUTLINED_FUNCTION_41_25(v8);
      outlined destroy of SymbolImageDescription(&v20);
      OUTLINED_FUNCTION_0_200();
      LOBYTE(v20) = v14;
      *v0 = v15;
      v0[1] = v16;
      OUTLINED_FUNCTION_1_164(v17);
      return;
  }
}

uint64_t static SymbolImageProviding.symbolImage(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v9, v5, v6);
  v7 = (*(a3 + 8))(v9, a2, a3);
  outlined destroy of SymbolImageDescription(v9);
  return v7;
}

__int128 *SymbolImageDescription.badConnectionTitle1.unsafeMutableAddressor()
{
  if (one-time initialization token for badConnectionTitle1 != -1)
  {
    OUTLINED_FUNCTION_32_28();
  }

  return &static SymbolImageDescription.badConnectionTitle1;
}

uint64_t static SymbolImageDescribers.ConversationControls.continueHandoff.getter()
{
  if (static Platform.current.getter() == 1)
  {
    return 26;
  }

  else
  {
    return 25;
  }
}

ConversationKit::SymbolImageDescribers::GameController_optional __swiftcall SymbolImageDescribers.GameController.init(symbolName:)(Swift::String_optional symbolName)
{
  if (!symbolName.value._object)
  {
    symbolName.value._countAndFlagsBits = 0;
  }

  result.value = symbolName;
  return result;
}

unint64_t SymbolImageDescribers.ConversationActivityIcon.symbolName.getter(char a1)
{
  result = 0x76742E79616C70;
  switch(a1)
  {
    case 1:
      result = 0x74656B636F72;
      break;
    case 2:
      result = 0x722E657275676966;
      break;
    case 3:
      result = 6775138;
      break;
    case 4:
      result = 1802465122;
      break;
    case 5:
      result = 0x65626F6C67;
      break;
    case 6:
      result = 0x65762E736B6F6F62;
      break;
    case 7:
      result = 0x656C626269726373;
      break;
    case 8:
      result = 0x6F6E2E636973756DLL;
      break;
    case 9:
      result = 0xD000000000000028;
      break;
    case 10:
      result = 6516580;
      break;
    case 11:
      result = 0x322E6E6F73726570;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0x6F746F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SymbolImageDescription.symbol(enabled:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (*(v2 + 33) == 1)
  {
    v33 = *v2;
    *&v26 = 0x6C6C69662ELL;
    *(&v26 + 1) = 0xE500000000000000;
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v8 = (a1 & 1) == 0;
    if (a1)
    {
      v9 = 0x6C6C69662ELL;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = 0xE000000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    *&v33 = v6;
    *(&v33 + 1) = v7;

    MEMORY[0x1BFB20B10](v9, v10);

    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    v39 = *(v2 + 56);
    v40[0] = v12;
    v13 = *(v2 + 32);
    *&v25[6] = *(v2 + 40);
    v25[14] = *(v2 + 48);
    v26 = v33;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    v30 = 1;
    *&v31[7] = *&v25[7];
    *v31 = *v25;
    v32 = v39;
    v34 = v11;
    v35 = v12;
    v36 = v13;
    v37 = 1;
    *(&v38[3] + 1) = *&v25[7];
    *v38 = *v25;
    *&v38[11] = v39;
    outlined init with copy of UIFontTextStyle(v40, v24);
    outlined init with copy of UIColor?(&v39, v24);
    outlined init with copy of SymbolImageDescription(&v26, v24);
    result = outlined destroy of SymbolImageDescription(&v33);
    v15 = v32;
    v16 = *&v31[6];
    v17 = v31[14];
    v18 = v30;
    v19 = v29;
    v21 = v27;
    v20 = v28;
    v23 = *(&v26 + 1);
    v22 = v26;
  }

  else
  {
    v15 = *(v2 + 56);
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    v19 = *(v3 + 32);
    v21 = *(v3 + 16);
    v20 = *(v3 + 24);
    v22 = *v3;
    v23 = *(v3 + 8);
    result = outlined init with copy of SymbolImageDescription(v3, &v33);
    v18 = 0;
  }

  *a2 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 33) = v18;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  *(a2 + 56) = v15;
  return result;
}

void SymbolImageDescribers.LocalParticipantView.symbolImageDescription.getter(char a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      goto LABEL_13;
    case 3:
    case 12:
      OUTLINED_FUNCTION_30_34();
      OUTLINED_FUNCTION_22_47();
      v31 = v14;
      v32 = v15;
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_189();
      OUTLINED_FUNCTION_28_49();
      OUTLINED_FUNCTION_15_62();
      goto LABEL_5;
    case 5:
      OUTLINED_FUNCTION_16_65();
      goto LABEL_14;
    case 6:
      OUTLINED_FUNCTION_28_49();
      OUTLINED_FUNCTION_10_85();
      v31 = v19;
      v32 = v18;
      goto LABEL_18;
    case 7:
      OUTLINED_FUNCTION_14_66();
      OUTLINED_FUNCTION_16_65();
      goto LABEL_14;
    case 8:
    case 9:
      OUTLINED_FUNCTION_10_85();
      v31 = v24;
      v32 = v25;
LABEL_18:
      v33 = v17;
      v34 = v16;
      OUTLINED_FUNCTION_8_99();
      v23 = v26;
      goto LABEL_19;
    case 10:
      OUTLINED_FUNCTION_4_139();
      goto LABEL_13;
    case 11:
      OUTLINED_FUNCTION_189();
      OUTLINED_FUNCTION_28_49();
      OUTLINED_FUNCTION_40_23();
      OUTLINED_FUNCTION_22_47();
      v31 = v8;
      v32 = v7;
LABEL_7:
      v33 = v4;
      v34 = v3;
      v35 = v5;
      v36 = v6;
      goto LABEL_16;
    case 13:
      OUTLINED_FUNCTION_33_39();
LABEL_13:
      OUTLINED_FUNCTION_30_34();
      OUTLINED_FUNCTION_12_86();
LABEL_14:
      OUTLINED_FUNCTION_10_85();
      v31 = v20;
      v32 = v21;
      break;
    default:
      OUTLINED_FUNCTION_189();
      OUTLINED_FUNCTION_28_49();
      OUTLINED_FUNCTION_40_23();
      OUTLINED_FUNCTION_12_86();
LABEL_5:
      OUTLINED_FUNCTION_10_85();
      v31 = v13;
      v32 = v12;
      break;
  }

  v33 = v10;
  v34 = v9;
  v35 = 0;
  v36 = v11;
LABEL_16:
  OUTLINED_FUNCTION_27_48();
  v23 = v22;
LABEL_19:
  OUTLINED_FUNCTION_41_25(v23);
  outlined destroy of SymbolImageDescription(&v31);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v31) = v27;
  *a2 = v28;
  a2[1] = v29;
  OUTLINED_FUNCTION_1_164(v30);
}

__n128 one-time initialization function for badConnectionTitle1()
{
  OUTLINED_FUNCTION_11_98();
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_2_155();
  v10[0] = v1;
  v10[1] = v0;
  v10[2] = v3;
  v10[3] = v2;
  v11 = 0;
  v12 = v4;
  v13 = 0;
  v14 = 0;
  OUTLINED_FUNCTION_41_25(v2);
  outlined destroy of SymbolImageDescription(v10);
  static SymbolImageDescription.badConnectionTitle1 = v6;
  unk_1EBCDB398 = v7;
  result = v8;
  xmmword_1EBCDB3A8 = v8;
  unk_1EBCDB3B8 = v9;
  return result;
}

double SymbolImageDescription.init(name:scale:textStyle:staticWeight:hierarchicalColor:isPrivate:fillWhenEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, char a9)
{
  LOBYTE(v28) = a6 & 1;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  LOBYTE(v31) = a8;
  BYTE1(v31) = a9;
  *(&v31 + 1) = a5;
  v32[0] = a1;
  v32[1] = a2;
  v32[2] = a3;
  v32[3] = a4;
  v33 = a8;
  v34 = a9;
  v35 = a5;
  v36 = a6 & 1;
  v37 = a7;
  OUTLINED_FUNCTION_41_25(a1);
  v9 = outlined destroy of SymbolImageDescription(v32);
  *&result = OUTLINED_FUNCTION_18_60(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v17, v31).n128_u64[0];
  return result;
}

uint64_t outlined init with copy of UIColor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIColorCSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SymbolImageDescription.badConnectionTitle1.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for badConnectionTitle1 != -1)
  {
    OUTLINED_FUNCTION_32_28();
  }

  return outlined init with copy of SymbolImageDescription(&static SymbolImageDescription.badConnectionTitle1, a1);
}

uint64_t SymbolImageDescription.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SymbolImageDescription.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolImageDescription.staticWeight.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void *SymbolImageDescription.hierarchicalColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

BOOL static SymbolImageDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)))
  {
    return 0;
  }

  v12 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = *(a1 + 56);
  v14 = *(a2 + 56);
  if (!v13)
  {
    return !v14;
  }

  if (!v14)
  {
    return 0;
  }

  type metadata accessor for UIColor();
  v15 = v14;
  v16 = v13;
  v17 = static NSObject.== infix(_:_:)();

  return (v17 & 1) != 0;
}

void SymbolImageDescription.hash(into:)()
{
  String.hash(into:)();
  MEMORY[0x1BFB22640](*(v0 + 16));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  Hasher._combine(_:)(*(v0 + 32) & 1);
  Hasher._combine(_:)(*(v0 + 33) & 1);
  if (*(v0 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    MEMORY[0x1BFB22640](v1);
  }

  v2 = *(v0 + 56);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int SymbolImageDescription.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  SymbolImageDescription.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SymbolImageDescription()
{
  Hasher.init(_seed:)();
  SymbolImageDescription.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SymbolImageDescribers.GameController.symbolName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SymbolImageDescribers.DrawerDisc(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SymbolImageDescribers.DrawerPill(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SymbolImageDescribers.BottomBar(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void SymbolImageDescribers.DrawerDisc.symbolImageDescription.getter()
{
  OUTLINED_FUNCTION_48_18();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_34_35();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_4_139();
LABEL_5:
      OUTLINED_FUNCTION_49_21();
      OUTLINED_FUNCTION_12_86();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_13_74();
      OUTLINED_FUNCTION_49_21();
      OUTLINED_FUNCTION_19_50();
LABEL_6:
      OUTLINED_FUNCTION_10_85();
      v13 = v4;
      v14 = v5;
      break;
    default:
      OUTLINED_FUNCTION_5_131();
      OUTLINED_FUNCTION_55_18();
      OUTLINED_FUNCTION_2_155();
      v13 = v7;
      v14 = v6;
      break;
  }

  v15 = v3;
  v16 = v2;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v8);
  outlined destroy of SymbolImageDescription(&v13);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v13) = v9;
  *v0 = v10;
  v0[1] = v11;
  OUTLINED_FUNCTION_1_164(v12);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.DrawerDisc()
{
  OUTLINED_FUNCTION_20_58();
  SymbolImageDescribers.DrawerDisc.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v8, v12).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.LocalParticipantView@<D0>(_OWORD *a1@<X8>)
{
  SymbolImageDescribers.LocalParticipantView.symbolImageDescription.getter(*v1, v6);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

void SymbolImageDescribers.DrawerPill.symbolImageDescription.getter(void *a1@<X8>)
{
  OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_3_146();
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v5;
  v11[3] = v4;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v6);
  outlined destroy of SymbolImageDescription(v11);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v11[0]) = v7;
  *a1 = v8;
  a1[1] = v9;
  OUTLINED_FUNCTION_1_164(v10);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.DrawerPill@<D0>(_OWORD *a1@<X8>)
{
  SymbolImageDescribers.DrawerPill.symbolImageDescription.getter(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

void SymbolImageDescribers.DrawerTable.symbolImageDescription.getter()
{
  OUTLINED_FUNCTION_48_18();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_16_65();
      goto LABEL_20;
    case 2:
      OUTLINED_FUNCTION_5_131();
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_9_98();
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_17_64();
LABEL_8:
      OUTLINED_FUNCTION_14_66();
      goto LABEL_18;
    case 5:
      OUTLINED_FUNCTION_52_19();
      goto LABEL_18;
    case 6:
      v8 = *MEMORY[0x1E69DDCF8];
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 labelColor];
      OUTLINED_FUNCTION_51_21();
      v14 = OUTLINED_FUNCTION_29_38(v12, v13);
      goto LABEL_23;
    case 7:
      OUTLINED_FUNCTION_35_27();
      goto LABEL_18;
    case 8:
      OUTLINED_FUNCTION_5_131();
      OUTLINED_FUNCTION_40_23();
      OUTLINED_FUNCTION_12_86();
LABEL_16:
      OUTLINED_FUNCTION_10_85();
      v25 = v18;
      v26 = v17;
      goto LABEL_21;
    case 9:
    case 12:
      OUTLINED_FUNCTION_13_74();
      OUTLINED_FUNCTION_16_65();
      goto LABEL_20;
    case 10:
      OUTLINED_FUNCTION_21_57();
      OUTLINED_FUNCTION_36_35();
      OUTLINED_FUNCTION_22_47();
      v25 = v3;
      v26 = v4;
      v27 = v5;
      v28 = v2;
      v29 = v6;
      v30 = v7;
      goto LABEL_22;
    case 11:
      OUTLINED_FUNCTION_35_27();
      goto LABEL_11;
    case 13:
      OUTLINED_FUNCTION_25_46();
LABEL_18:
      OUTLINED_FUNCTION_36_35();
      break;
    default:
      OUTLINED_FUNCTION_37_32();
LABEL_11:
      OUTLINED_FUNCTION_54_17();
      break;
  }

  OUTLINED_FUNCTION_12_86();
LABEL_20:
  OUTLINED_FUNCTION_10_85();
  v25 = v19;
  v26 = v20;
LABEL_21:
  v27 = v15;
  v28 = v2;
  v29 = 0;
  v30 = v16;
LABEL_22:
  v31 = 0;
  v32 = 0;
  v14 = v2;
LABEL_23:
  OUTLINED_FUNCTION_41_25(v14);
  outlined destroy of SymbolImageDescription(&v25);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v25) = v21;
  *v0 = v22;
  v0[1] = v23;
  OUTLINED_FUNCTION_1_164(v24);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.DrawerTable()
{
  OUTLINED_FUNCTION_20_58();
  SymbolImageDescribers.DrawerTable.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v8, v12).n128_u64[0];
  return result;
}

void SymbolImageDescribers.Captions.symbolImageDescription.getter(char a1@<W0>, void *a2@<X8>)
{
  if (!a1)
  {
    static Platform.current.getter();
LABEL_6:
    OUTLINED_FUNCTION_11_98();
    OUTLINED_FUNCTION_2_155();
    v14 = v8;
    v15 = v7;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_36_35();
  OUTLINED_FUNCTION_2_155();
  v14 = v5;
  v15 = v6;
LABEL_7:
  v16 = v4;
  v17 = v3;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v9);
  outlined destroy of SymbolImageDescription(&v14);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v14) = v10;
  *a2 = v11;
  a2[1] = v12;
  OUTLINED_FUNCTION_1_164(v13);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.Captions()
{
  v0 = OUTLINED_FUNCTION_20_58();
  SymbolImageDescribers.Captions.symbolImageDescription.getter(v0, v1);
  *&result = OUTLINED_FUNCTION_6_113(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v10, v14).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.ConversationControls()
{
  OUTLINED_FUNCTION_20_58();
  SymbolImageDescribers.ConversationControls.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v8, v12).n128_u64[0];
  return result;
}

double SymbolImageDescribers.GameController.symbolImageDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69DDDC8];
  LOBYTE(v26) = 0;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = 2;
  *(&v28 + 1) = *MEMORY[0x1E69DDDC8];
  LOWORD(v29) = 0;
  *(&v29 + 1) = 6;
  OUTLINED_FUNCTION_22_47();
  v30[0] = v3;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v2;
  v31 = 0;
  v32 = v6;
  OUTLINED_FUNCTION_27_48();

  OUTLINED_FUNCTION_41_25(v2);
  v7 = outlined destroy of SymbolImageDescription(v30);
  *&result = OUTLINED_FUNCTION_18_60(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v15, v29).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.GameController()
{
  v1.n128_f64[0] = SymbolImageDescribers.GameController.symbolImageDescription.getter(*v0, v0[1]);
  *&result = OUTLINED_FUNCTION_6_113(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v1, v13).n128_u64[0];
  return result;
}

void SymbolImageDescribers.ConversationControlsSubtitles.symbolImageDescription.getter()
{
  OUTLINED_FUNCTION_48_18();
  switch(v1)
  {
    case 9:
      OUTLINED_FUNCTION_11_98();
      OUTLINED_FUNCTION_2_155();
      v13 = v5;
      v14 = v4;
      goto LABEL_8;
    case 11:
      OUTLINED_FUNCTION_26_50();
      break;
    case 12:
      OUTLINED_FUNCTION_9_98();
      goto LABEL_6;
    case 13:
      OUTLINED_FUNCTION_17_64();
LABEL_6:
      OUTLINED_FUNCTION_14_66();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_54_17();
  OUTLINED_FUNCTION_2_155();
  v13 = v6;
  v14 = v7;
LABEL_8:
  v15 = v3;
  v16 = v2;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v8);
  outlined destroy of SymbolImageDescription(&v13);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v13) = v9;
  *v0 = v10;
  v0[1] = v11;
  OUTLINED_FUNCTION_1_164(v12);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.ConversationControlsSubtitles()
{
  OUTLINED_FUNCTION_20_58();
  SymbolImageDescribers.ConversationControlsSubtitles.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v8, v12).n128_u64[0];
  return result;
}

double SymbolImageDescribers.ConversationActivityIcon.symbolImageDescription.getter(char a1)
{
  v1 = *MEMORY[0x1E69DDD58];
  LOBYTE(v26) = 0;
  *&v27 = SymbolImageDescribers.ConversationActivityIcon.symbolName.getter(a1);
  *(&v27 + 1) = v2;
  *&v28 = 3;
  *(&v28 + 1) = v1;
  LOWORD(v29) = 0;
  *(&v29 + 1) = 4;
  OUTLINED_FUNCTION_22_47();
  v30[0] = v3;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v1;
  v31 = 0;
  v32 = v6;
  OUTLINED_FUNCTION_27_48();
  OUTLINED_FUNCTION_41_25(v1);
  v7 = outlined destroy of SymbolImageDescription(v30);
  *&result = OUTLINED_FUNCTION_18_60(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v15, v29).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.ConversationActivityIcon()
{
  v0 = OUTLINED_FUNCTION_20_58();
  v1.n128_f64[0] = SymbolImageDescribers.ConversationActivityIcon.symbolImageDescription.getter(v0);
  *&result = OUTLINED_FUNCTION_6_113(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v1, v13).n128_u64[0];
  return result;
}

void SymbolImageDescribers.EphemeralAlerts.symbolImageDescription.getter()
{
  OUTLINED_FUNCTION_48_18();
  switch(v1)
  {
    case 1:
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_4_139();
      goto LABEL_4;
    case 4:
      OUTLINED_FUNCTION_26_50();
LABEL_4:
      OUTLINED_FUNCTION_54_17();
      OUTLINED_FUNCTION_2_155();
      v13 = v4;
      v14 = v5;
      break;
    default:
      OUTLINED_FUNCTION_5_131();
      OUTLINED_FUNCTION_2_155();
      v13 = v7;
      v14 = v6;
      break;
  }

  v15 = v3;
  v16 = v2;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v8);
  outlined destroy of SymbolImageDescription(&v13);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v13) = v9;
  *v0 = v10;
  v0[1] = v11;
  OUTLINED_FUNCTION_1_164(v12);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.EphemeralAlerts()
{
  OUTLINED_FUNCTION_20_58();
  SymbolImageDescribers.EphemeralAlerts.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v8, v12).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.BottomBar()
{
  v0.n128_f64[0] = SymbolImageDescribers.BottomBar.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v0, v12).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.Roster@<D0>(_OWORD *a1@<X8>)
{
  SymbolImageDescribers.Roster.symbolImageDescription.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void SymbolImageDescribers.ParticipantView.symbolImageDescription.getter()
{
  OUTLINED_FUNCTION_48_18();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_33_39();
      OUTLINED_FUNCTION_49_21();
      OUTLINED_FUNCTION_19_50();
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_36_35();
      OUTLINED_FUNCTION_12_86();
LABEL_4:
      OUTLINED_FUNCTION_10_85();
      v13 = v4;
      v14 = v5;
      break;
    default:
      OUTLINED_FUNCTION_11_98();
      OUTLINED_FUNCTION_55_18();
      OUTLINED_FUNCTION_19_50();
      OUTLINED_FUNCTION_10_85();
      v13 = v7;
      v14 = v6;
      break;
  }

  v15 = v3;
  v16 = v2;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v8);
  outlined destroy of SymbolImageDescription(&v13);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v13) = v9;
  *v0 = v10;
  v0[1] = v11;
  OUTLINED_FUNCTION_1_164(v12);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.ParticipantView()
{
  OUTLINED_FUNCTION_20_58();
  SymbolImageDescribers.ParticipantView.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v8, v12).n128_u64[0];
  return result;
}

double SymbolImageDescribers.TVHandoff.symbolImageDescription.getter()
{
  LOBYTE(v24) = 0;
  strcpy(v25, "appletv.fill");
  BYTE13(v25[0]) = 0;
  HIWORD(v25[0]) = -5120;
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_85();
  v26[0] = v0;
  v26[1] = v1;
  v26[2] = v3;
  v26[3] = v2;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v4);
  v5 = outlined destroy of SymbolImageDescription(v26);
  *&result = OUTLINED_FUNCTION_18_60(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25[0], v25[1], v13, v25[2]).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.TVHandoff()
{
  v0.n128_f64[0] = SymbolImageDescribers.TVHandoff.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v0, v12).n128_u64[0];
  return result;
}

void SymbolImageDescribers.Recents.symbolImageDescription.getter(void *a1@<X8>)
{
  OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_3_146();
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v5;
  v11[3] = v4;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v6);
  outlined destroy of SymbolImageDescription(v11);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v11[0]) = v7;
  *a1 = v8;
  a1[1] = v9;
  OUTLINED_FUNCTION_1_164(v10);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.Recents@<D0>(_OWORD *a1@<X8>)
{
  SymbolImageDescribers.Recents.symbolImageDescription.getter(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

void SymbolImageDescribers.VideoMessaging.symbolImageDescription.getter(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      OUTLINED_FUNCTION_11_98();
      OUTLINED_FUNCTION_40_23();
      OUTLINED_FUNCTION_2_155();
      v14 = v8;
      v15 = v7;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_4_139();
    OUTLINED_FUNCTION_15_62();
  }

  else
  {
    OUTLINED_FUNCTION_30_34();
    OUTLINED_FUNCTION_12_86();
  }

  OUTLINED_FUNCTION_10_85();
  v14 = v5;
  v15 = v6;
LABEL_7:
  v16 = v4;
  v17 = v3;
  OUTLINED_FUNCTION_8_99();
  OUTLINED_FUNCTION_41_25(v9);
  outlined destroy of SymbolImageDescription(&v14);
  OUTLINED_FUNCTION_0_200();
  LOBYTE(v14) = v10;
  *a2 = v11;
  a2[1] = v12;
  OUTLINED_FUNCTION_1_164(v13);
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.VideoMessaging@<D0>(_OWORD *a1@<X8>)
{
  SymbolImageDescribers.VideoMessaging.symbolImageDescription.getter(*v1, v6);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

double SymbolImageDescribers.BottomBar.symbolImageDescription.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v29) = 0;
  *&v30 = a2;
  *(&v30 + 1) = a3;
  *&v31 = 3;
  *(&v31 + 1) = *a1;
  LOWORD(v32) = 0;
  *(&v32 + 1) = a4;
  OUTLINED_FUNCTION_22_47();
  v33[0] = v4;
  v33[1] = v5;
  v33[2] = v7;
  v33[3] = v6;
  v34 = 0;
  v35 = v8;
  OUTLINED_FUNCTION_27_48();
  OUTLINED_FUNCTION_41_25(v9);
  v10 = outlined destroy of SymbolImageDescription(v33);
  *&result = OUTLINED_FUNCTION_18_60(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v18, v32).n128_u64[0];
  return result;
}

double protocol witness for SymbolImageDescribing.symbolImageDescription.getter in conformance SymbolImageDescribers.FaceID()
{
  v0.n128_f64[0] = SymbolImageDescribers.FaceID.symbolImageDescription.getter();
  *&result = OUTLINED_FUNCTION_6_113(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v0, v12).n128_u64[0];
  return result;
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescription and conformance SymbolImageDescription()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescription and conformance SymbolImageDescription;
  if (!lazy protocol witness table cache variable for type SymbolImageDescription and conformance SymbolImageDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescription and conformance SymbolImageDescription);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.DrawerDisc and conformance SymbolImageDescribers.DrawerDisc()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerDisc and conformance SymbolImageDescribers.DrawerDisc;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerDisc and conformance SymbolImageDescribers.DrawerDisc)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerDisc and conformance SymbolImageDescribers.DrawerDisc);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.DrawerPill and conformance SymbolImageDescribers.DrawerPill()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerPill and conformance SymbolImageDescribers.DrawerPill;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerPill and conformance SymbolImageDescribers.DrawerPill)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerPill and conformance SymbolImageDescribers.DrawerPill);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.DrawerTable and conformance SymbolImageDescribers.DrawerTable()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerTable and conformance SymbolImageDescribers.DrawerTable;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerTable and conformance SymbolImageDescribers.DrawerTable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.DrawerTable and conformance SymbolImageDescribers.DrawerTable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.Captions and conformance SymbolImageDescribers.Captions()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.Captions and conformance SymbolImageDescribers.Captions;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.Captions and conformance SymbolImageDescribers.Captions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.Captions and conformance SymbolImageDescribers.Captions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.ConversationControls and conformance SymbolImageDescribers.ConversationControls()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationControls and conformance SymbolImageDescribers.ConversationControls;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationControls and conformance SymbolImageDescribers.ConversationControls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationControls and conformance SymbolImageDescribers.ConversationControls);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.ConversationControlsSubtitles and conformance SymbolImageDescribers.ConversationControlsSubtitles()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationControlsSubtitles and conformance SymbolImageDescribers.ConversationControlsSubtitles;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationControlsSubtitles and conformance SymbolImageDescribers.ConversationControlsSubtitles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationControlsSubtitles and conformance SymbolImageDescribers.ConversationControlsSubtitles);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.ConversationActivityIcon and conformance SymbolImageDescribers.ConversationActivityIcon()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationActivityIcon and conformance SymbolImageDescribers.ConversationActivityIcon;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationActivityIcon and conformance SymbolImageDescribers.ConversationActivityIcon)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.ConversationActivityIcon and conformance SymbolImageDescribers.ConversationActivityIcon);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.EphemeralAlerts and conformance SymbolImageDescribers.EphemeralAlerts()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.EphemeralAlerts and conformance SymbolImageDescribers.EphemeralAlerts;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.EphemeralAlerts and conformance SymbolImageDescribers.EphemeralAlerts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.EphemeralAlerts and conformance SymbolImageDescribers.EphemeralAlerts);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.BottomBar and conformance SymbolImageDescribers.BottomBar()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.BottomBar and conformance SymbolImageDescribers.BottomBar;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.BottomBar and conformance SymbolImageDescribers.BottomBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.BottomBar and conformance SymbolImageDescribers.BottomBar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.Roster and conformance SymbolImageDescribers.Roster()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.Roster and conformance SymbolImageDescribers.Roster;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.Roster and conformance SymbolImageDescribers.Roster)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.Roster and conformance SymbolImageDescribers.Roster);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.ParticipantView and conformance SymbolImageDescribers.ParticipantView()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.ParticipantView and conformance SymbolImageDescribers.ParticipantView;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.ParticipantView and conformance SymbolImageDescribers.ParticipantView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.ParticipantView and conformance SymbolImageDescribers.ParticipantView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.TVHandoff and conformance SymbolImageDescribers.TVHandoff()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.TVHandoff and conformance SymbolImageDescribers.TVHandoff;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.TVHandoff and conformance SymbolImageDescribers.TVHandoff)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.TVHandoff and conformance SymbolImageDescribers.TVHandoff);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.VideoMessaging and conformance SymbolImageDescribers.VideoMessaging()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.VideoMessaging and conformance SymbolImageDescribers.VideoMessaging;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.VideoMessaging and conformance SymbolImageDescribers.VideoMessaging)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.VideoMessaging and conformance SymbolImageDescribers.VideoMessaging);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.Recents and conformance SymbolImageDescribers.Recents()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.Recents and conformance SymbolImageDescribers.Recents;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.Recents and conformance SymbolImageDescribers.Recents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.Recents and conformance SymbolImageDescribers.Recents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolImageDescribers.FaceID and conformance SymbolImageDescribers.FaceID()
{
  result = lazy protocol witness table cache variable for type SymbolImageDescribers.FaceID and conformance SymbolImageDescribers.FaceID;
  if (!lazy protocol witness table cache variable for type SymbolImageDescribers.FaceID and conformance SymbolImageDescribers.FaceID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolImageDescribers.FaceID and conformance SymbolImageDescribers.FaceID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImageDescribers.ConversationControls(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SymbolImageDescribers.ConversationControls(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImageDescribers.DrawerDisc(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_25(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_25(v8);
}

_BYTE *storeEnumTagSinglePayload for SymbolImageDescribers.DrawerDisc(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_45_28(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_42_29(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_19(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_10_55(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImageDescribers.DrawerTable(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_25(-1);
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 14);
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

      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 14);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 14);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_25(v8);
}

_BYTE *storeEnumTagSinglePayload for SymbolImageDescribers.DrawerTable(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_45_28(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_42_29(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_19(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_10_55(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SymbolImageDescribers.ParticipantView(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImageDescribers.Captions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_25(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_25(v8);
}

_BYTE *storeEnumTagSinglePayload for SymbolImageDescribers.Captions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_45_28(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_42_29(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_19(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_10_55(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImageDescribers.DrawerPill(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_25(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_25((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_25(v8);
}

_BYTE *storeEnumTagSinglePayload for SymbolImageDescribers.DrawerPill(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_45_28(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_42_29(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_19(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_10_55(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SymbolImageDescribers.BottomBar(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of static SymbolImageProviding.symbolImage(for:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = *(a1 + 5);
  v8 = *(a1 + 48);
  v9 = *(a1 + 7);
  v10 = *(a3 + 8);
  v12 = *a1;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  return v10(&v12);
}

id ClarityUIContact.avatar.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v5 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v5;
  v3 = v2;

  return v5;
}

uint64_t ClarityUIContact.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static ClarityUIContact.requiredDescriptors(for:)(uint64_t a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v2 = static CNContact.requiredDescriptorsForClarityUIDisplayName.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA7F0;
  v4 = [objc_opt_self() settingsWithContactStore_];
  v5 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  v6 = [v5 descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C278];
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  v8 = *MEMORY[0x1E695C1E8];
  v9 = *MEMORY[0x1E695C298];
  *(inited + 48) = *MEMORY[0x1E695C1E8];
  *(inited + 56) = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  specialized Array.append<A>(contentsOf:)(inited);
  return v2;
}

ConversationKit::ClarityUIContact __swiftcall ClarityUIContact.init(cnContact:contactStore:)(CNContact cnContact, CNContactStore contactStore)
{
  v4 = v2;
  *v2 = cnContact;
  *(v2 + 8) = contactStore;
  v5 = cnContact.super.isa;
  v6 = contactStore.super.isa;
  v7 = [(objc_class *)v5 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v4 + 16) = v8;
  *(v4 + 24) = v10;
  result.id._object = v14;
  result.id._countAndFlagsBits = v13;
  result.contactStore.super.isa = v12;
  result.cnContact.super.isa = v11;
  return result;
}

uint64_t static ClarityUIContact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t static CNContact.requiredDescriptorsForClarityUIDisplayName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4CB3D0;
  v1 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v2 = *MEMORY[0x1E695C240];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C2F0];
  v4 = *MEMORY[0x1E695C230];
  *(v0 + 48) = *MEMORY[0x1E695C2F0];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C310];
  v6 = *MEMORY[0x1E695C208];
  *(v0 + 64) = *MEMORY[0x1E695C310];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C330];
  *(v0 + 80) = *MEMORY[0x1E695C330];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v0;
}

uint64_t CNContact.clarityUIDisplayName.getter()
{
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_19_42();

  v22 = v2;
  v23 = v1;

  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.trimmingCharacters(in:)();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v8, v4);

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    CNContact.shortName.getter();
    OUTLINED_FUNCTION_19_42();
  }

  v22 = v2;
  v23 = v1;

  static CharacterSet.whitespacesAndNewlines.getter();
  v15 = StringProtocol.trimmingCharacters(in:)();
  v17 = v16;
  v13(v8, v4);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    v19 = [objc_opt_self() stringFromContact:v3 style:0];
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_19_42();
    }

    else
    {
      CNContact.fallbackDisplayName.getter();
      OUTLINED_FUNCTION_19_42();
    }
  }

  return v2;
}

uint64_t CNContact.shortName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  v6 = [v1 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.givenName.setter();
  v7 = [v1 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.middleName.setter();
  v8 = [v1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.familyName.setter();
  v9 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v11 = [v9 localizedStringFromPersonNameComponents:isa style:1 options:0];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t CNContact.fallbackDisplayName.getter()
{
  v1 = [v0 tuHandlesForEmailAddresses];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB22010](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v4);
    if (v6)
    {
      return v5;
    }
  }

  else
  {
  }

  v7 = [v0 tuHandlesForPhoneNumbers];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v8))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB22010](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;

    v5 = outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v10);
    if (v11)
    {
      return v5;
    }
  }

  else
  {
  }

  v13 = [v0 handles];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v14 + 16))
  {
    v12 = *(v14 + 32);
  }

  else
  {

    return 0;
  }

  return v12;
}

uint64_t ClarityUIContact.fullImage.getter()
{
  v1 = *v0;
  outlined bridged method (pb) of @objc CNContact.imageData.getter(*v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v3 = OUTLINED_FUNCTION_45_1();
  outlined copy of Data._Representation(v3, v4);
  v5 = OUTLINED_FUNCTION_45_1();
  v7 = UIImage.__allocating_init(data:)(v5, v6);
  if (!v7)
  {
LABEL_8:
    v16 = OUTLINED_FUNCTION_45_1();
    outlined consume of Data?(v16, v17);
    return 0;
  }

  v8 = v7;
  v9 = [v7 CGImage];
  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = v9;
  [v1 cropRect];
  v11 = CGImageCreateWithImageInRect(v10, v19);
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v11;
  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  v13 = Image.init(uiImage:)();

  v14 = OUTLINED_FUNCTION_45_1();
  outlined consume of Data?(v14, v15);
  return v13;
}

BOOL ClarityUIContact.preferredContentMode.getter()
{
  v1 = [*v0 imageType];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {

    return 0;
  }

  if (v3 != v6 || v5 != v7)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v9 & 1) != 0;
  }

  return 1;
}

uint64_t protocol witness for Identifiable.id.getter in conformance ClarityUIContact@<X0>(uint64_t *a1@<X8>)
{
  result = ClarityUIContact.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int ClarityUIContact.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClarityUIContact()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined bridged method (pb) of @objc CNContact.imageData.getter(void *a1)
{
  v1 = [a1 imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type ClarityUIContact and conformance ClarityUIContact()
{
  result = lazy protocol witness table cache variable for type ClarityUIContact and conformance ClarityUIContact;
  if (!lazy protocol witness table cache variable for type ClarityUIContact and conformance ClarityUIContact)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIContact and conformance ClarityUIContact);
  }

  return result;
}

uint64_t AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *v1;
  v2[10] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScTyyts5Error_pGMd);
  v4 = *(v3 + 80);
  v2[12] = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2[13] = TupleTypeMetadata2;
  v6 = type metadata accessor for Optional();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = *(TupleTypeMetadata2 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for Optional();
  v2[22] = v7;
  v8 = swift_getTupleTypeMetadata2();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v9 = *(v4 - 8);
  v2[30] = v9;
  v2[31] = *(v9 + 64);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_25_3();
  }

  v10 = static CallScreeningActor.shared;
  v2[35] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](AnsweringMachineService.handleNewIncomingCall(_:), v10, 0);
}

uint64_t AnsweringMachineService.handleNewIncomingCall(_:)()
{
  v125 = v0;
  v2 = v0[30];
  v3 = *(v2 + 16);
  (v3)(v0[34], v0[8], v0[12]);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v122 = v2 + 16;
  v123 = v3;
  if (OUTLINED_FUNCTION_5_132(v5))
  {
    v6 = v0[33];
    v7 = v0[30];
    v8 = v0[12];
    OUTLINED_FUNCTION_42();
    v124 = OUTLINED_FUNCTION_38_3();
    v9 = OUTLINED_FUNCTION_10_86(4.8751e-34);
    v123(v9);
    v10 = *(v7 + 8);
    v11 = OUTLINED_FUNCTION_243();
    v10(v11);
    dispatch thunk of CustomStringConvertible.description.getter();
    v12 = OUTLINED_FUNCTION_17_65();
    v119 = v10;
    (v10)(v12, v8);
    v3 = v123;
    v13 = OUTLINED_FUNCTION_334();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
    OUTLINED_FUNCTION_20_59();
    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v16, v17, "New incoming call: %{public}s");
    OUTLINED_FUNCTION_0_201();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v119 = *(v0[30] + 8);
    (v119)(v0[34], v0[12]);
  }

  v18 = v0[29];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[9];
  (v3)(v18, v0[8], v20);
  v22 = 1;
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  v23 = v21 + *(*v21 + 144);
  swift_beginAccess();
  v121 = v23;
  if (!__swift_getEnumTagSinglePayload(v23, 1, v19))
  {
    (v3)(v0[28], v23 + *(v0[13] + 48), v0[12]);
    v22 = 0;
  }

  v25 = v0[28];
  v24 = v0[29];
  v26 = v0[25];
  v27 = v0[26];
  v28 = v0[22];
  v29 = v0[23];
  v30 = v0[12];
  __swift_storeEnumTagSinglePayload(v25, v22, 1, v30);
  v31 = *(v29 + 48);
  v32 = *(v27 + 16);
  v32(v26, v24, v28);
  v32(v26 + v31, v25, v28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v30);
  v34 = v0[22];
  v35 = v0[12];
  if (EnumTagSinglePayload == 1)
  {
    v36 = v0[29];
    v37 = *(v0[26] + 8);
    v37(v0[28], v0[22]);
    v37(v36, v34);
    if (__swift_getEnumTagSinglePayload(v26 + v31, 1, v35) == 1)
    {
      v37(v0[25], v0[22]);
      v38 = v123;
LABEL_17:
      (v38)(v0[32], v0[8], v0[12]);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_5_132(v74))
      {
        v76 = v0[32];
        v75 = v0[33];
        v77 = v0[12];
        OUTLINED_FUNCTION_42();
        v124 = OUTLINED_FUNCTION_38_3();
        v78 = OUTLINED_FUNCTION_2_74(4.8751e-34);
        v38(v78);
        (v119)(v76, v77);
        OUTLINED_FUNCTION_27_49();
        v79 = OUTLINED_FUNCTION_3_72();
        v119(v79);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v38, &v124);
        OUTLINED_FUNCTION_20_59();
        *(v122 + 4) = v75;
        OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v80, v81, "New incoming call already being handled: %{public}s");
        OUTLINED_FUNCTION_0_201();
        OUTLINED_FUNCTION_4_4();
      }

      else
      {
        (v119)(v0[32], v0[12]);
      }

      OUTLINED_FUNCTION_12_87();

      OUTLINED_FUNCTION_5_102();

      return v82();
    }

    goto LABEL_11;
  }

  v32(v0[27], v0[25], v0[22]);
  if (__swift_getEnumTagSinglePayload(v26 + v31, 1, v35) == 1)
  {
    v39 = v0[29];
    v40 = v0[27];
    v41 = v0[22];
    v42 = v0[12];
    v43 = *(v0[26] + 8);
    v43(v0[28], v41);
    v43(v39, v41);
    (v119)(v40, v42);
LABEL_11:
    (*(v0[24] + 8))(v0[25], v0[23]);
    goto LABEL_12;
  }

  v66 = v0[33];
  v67 = v0[27];
  v108 = v0[28];
  bufa = v0[29];
  v68 = v0[26];
  v114 = v0[25];
  v69 = v0[22];
  v70 = v0[12];
  (*(v0[30] + 32))(v66, v26 + v31, v70);
  v71 = dispatch thunk of static Equatable.== infix(_:_:)();
  (v119)(v66, v70);
  v72 = *(v68 + 8);
  v72(v108, v69);
  v72(bufa, v69);
  (v119)(v67, v70);
  v72(v114, v69);
  v38 = v123;
  if (v71)
  {
    goto LABEL_17;
  }

LABEL_12:
  v44 = v0[17];
  v45 = v0[13];
  (*(v0[15] + 16))(v44, v121, v0[14]);
  v46 = __swift_getEnumTagSinglePayload(v44, 1, v45);
  v47 = MEMORY[0x1E69E7CA8];
  if (v46 == 1)
  {
    (*(v0[15] + 8))(v0[17], v0[14]);
  }

  else
  {
    v48 = v0[20];
    v49 = v0[21];
    v50 = v0[18];
    v51 = v0[13];
    (*(v50 + 32))(v49, v0[17], v51);
    v52 = *(v50 + 16);
    v52(v48, v49, v51);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v0[30];
      v57 = v0[19];
      v56 = v0[20];
      v116 = v54;
      v58 = v0[18];
      v59 = v0[12];
      v60 = v0[13];
      v107 = v0[33];
      buf = OUTLINED_FUNCTION_42();
      v113 = swift_slowAlloc();
      v124 = v113;
      *buf = 136446210;
      v52(v57, v56, v60);

      (*(v55 + 32))(v107, v57 + *(v60 + 48), v59);
      v61 = *(v58 + 8);
      v61(v56, v60);
      v62 = OUTLINED_FUNCTION_27_49();
      v64 = v63;
      v65 = OUTLINED_FUNCTION_243();
      v119(v65);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v124);
      OUTLINED_FUNCTION_20_59();
      *(buf + 4) = v107;
      _os_log_impl(&dword_1BBC58000, v53, v116, "Removing call: %{public}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      OUTLINED_FUNCTION_27();
      v47 = MEMORY[0x1E69E7CA8];
      OUTLINED_FUNCTION_27();
    }

    else
    {
      v61 = *(v0[18] + 8);
      v61(v0[20], v0[13]);
    }

    v84 = v0[21];
    v85 = v0[13];
    v86 = *v84;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x1BFB21000](v86, v47 + 8, v87, MEMORY[0x1E69E7288]);
    v61(v84, v85);
  }

  v88 = v0[35];
  v89 = v0[33];
  v90 = v0[30];
  log = v0[15];
  v120 = v0[14];
  v115 = v0[16];
  v117 = v0[13];
  v92 = v0[11];
  v91 = v0[12];
  v93 = v0[9];
  v94 = v0[10];
  v95 = v0[8];
  v109 = v89;
  bufb = v95;
  static TaskPriority.userInitiated.getter();
  v96 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v92, 0, 1, v96);
  (v123)(v89, v95, v91);
  v97 = lazy protocol witness table accessor for type CallScreeningActor.ActorType and conformance CallScreeningActor.ActorType();
  v98 = (*(v90 + 80) + 72) & ~*(v90 + 80);
  v99 = swift_allocObject();
  *(v99 + 16) = v88;
  *(v99 + 24) = v97;
  *(v99 + 32) = v91;
  *(v99 + 40) = *(v94 + 88);
  *(v99 + 56) = *(v94 + 104);
  *(v99 + 64) = v93;
  (*(v90 + 32))(v99 + v98, v109, v91);

  v100 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  v0[36] = v100;
  v101 = *(v117 + 48);
  *v115 = v100;
  (v123)(v115 + v101, bufb, v91);
  __swift_storeEnumTagSinglePayload(v115, 0, 1, v117);
  swift_beginAccess();
  isa = log[5].isa;

  isa(v121, v115, v120);
  swift_endAccess();
  v103 = swift_task_alloc();
  v0[37] = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  *v103 = v0;
  v103[1] = AnsweringMachineService.handleNewIncomingCall(_:);
  v105 = MEMORY[0x1E69E7288];
  v106 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v104, v100, v106, v104, v105);
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = AnsweringMachineService.handleNewIncomingCall(_:);
  }

  else
  {
    v4 = AnsweringMachineService.handleNewIncomingCall(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_58_14();

  OUTLINED_FUNCTION_12_87();
  v26 = v16;
  v27 = v15;
  v28 = *(v14 + 88);

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_13_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, a12, a13, a14);
}

uint64_t AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_36_3();
  v26 = v16[19];
  v27 = v16[17];
  v28 = v16[16];
  v29 = v16[11];

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, v28, v29, a14, a15, a16);
}

uint64_t AnsweringMachineService.__allocating_init(shouldAutoScreenCall:requestToScreen:logger:)()
{
  OUTLINED_FUNCTION_3_1();
  v0 = swift_allocObject();
  AnsweringMachineService.init(shouldAutoScreenCall:requestToScreen:logger:)();
  return v0;
}

uint64_t AnsweringMachineService.currentCall.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 144);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScTyyts5Error_pGMd);
  v5 = *(v3 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = 1;
  if (!__swift_getEnumTagSinglePayload(v4, 1, TupleTypeMetadata2))
  {
    (*(*(v5 - 8) + 16))(a1, v4 + *(TupleTypeMetadata2 + 48), v5);
    v7 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v5);
}

char *AnsweringMachineService.init(shouldAutoScreenCall:requestToScreen:logger:)()
{
  OUTLINED_FUNCTION_3_1();
  v6 = [objc_allocWithZone(MEMORY[0x1E69D8AA0]) init];
  type metadata accessor for DeviceRingerStateObserver();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 20) = 0;
  type metadata accessor for ScreeningSoundAndHapticsManager();
  v8 = swift_allocObject();
  *(v1 + 6) = specialized ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)(v6, v7, &v14, v8);
  v9 = *(*v1 + 144);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScTyyts5Error_pGMd);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_storeEnumTagSinglePayload(&v1[v9], 1, 1, TupleTypeMetadata2);
  *(v1 + 2) = v5;
  *(v1 + 3) = v4;
  *(v1 + 4) = v3;
  *(v1 + 5) = v2;
  v11 = direct field offset for AnsweringMachineService.logger;
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 32))(&v1[v11], v0, v12);
  return v1;
}

uint64_t AnsweringMachineService.requestToScreen(call:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_25_3();
  }

  v5 = static CallScreeningActor.shared;
  v2[11] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](AnsweringMachineService.requestToScreen(call:), v5, 0);
}

uint64_t AnsweringMachineService.requestToScreen(call:)()
{
  OUTLINED_FUNCTION_58_14();
  v2 = v0[10];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v0[12] = direct field offset for AnsweringMachineService.logger;
  v6 = *(v4 + 16);
  v0[13] = v6;
  v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = OUTLINED_FUNCTION_5_132(v8);
  v10 = v0[10];
  if (v9)
  {
    v12 = v0[5];
    v11 = v0[6];
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_38_3();
    v13 = OUTLINED_FUNCTION_10_86(4.8751e-34);
    (v6)(v13);
    v14 = *(v11 + 8);
    v15 = OUTLINED_FUNCTION_243();
    v14(v15);
    OUTLINED_FUNCTION_25_47();
    v16 = OUTLINED_FUNCTION_17_65();
    (v14)(v16, v12);
    v17 = OUTLINED_FUNCTION_334();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v19);
    OUTLINED_FUNCTION_20_59();
    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v20, v21, "Requesting to screen call: %{public}s");
    OUTLINED_FUNCTION_0_201();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v14 = *(v0[6] + 8);
    (v14)(v0[10], v0[5]);
  }

  v0[15] = v14;
  v22 = v0[3];
  v0[16] = *(v22 + 32);
  v0[17] = *(v22 + 40);
  type metadata accessor for MainActor();
  v0[18] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

{
  v1 = v0[16];
  v2 = v0[2];

  v1(v2, 0);
  v0[19] = 0;
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](AnsweringMachineService.requestToScreen(call:), v3, 0);
}

{
  v23 = v0;
  v1 = *(v0 + 152);
  (*(v0 + 104))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v21 = *(v0 + 152);
    v5 = *(v0 + 120);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);
    v19 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = OUTLINED_FUNCTION_334();
    v19(v10);
    v5(v7, v8);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v5(v6, v8);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v21;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v20 = v16;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Failed to screen call: %{public}s with error %@", v9, 0x16u);
    outlined destroy of CallControlsService?(v20, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_201();
    OUTLINED_FUNCTION_27();
  }

  else
  {
    (*(v0 + 120))(*(v0 + 56), *(v0 + 40));
  }

  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t AnsweringMachineService.requestToScreen(call:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  (*(v24 + 104))(*(v24 + 64), *(v24 + 16), *(v24 + 40));
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = OUTLINED_FUNCTION_5_132(v29);
  v31 = *(v24 + 120);
  if (v30)
  {
    v33 = *(v24 + 64);
    v32 = *(v24 + 72);
    v34 = *(v24 + 40);
    v35 = *(v24 + 48);
    a10 = *(v24 + 104);
    a11 = *(v24 + 32);
    OUTLINED_FUNCTION_42();
    a12 = OUTLINED_FUNCTION_38_3();
    a13 = a12;
    v36 = OUTLINED_FUNCTION_2_74(4.8751e-34);
    a10(v36);
    v31(v33, v34);
    OUTLINED_FUNCTION_27_49();
    v37 = OUTLINED_FUNCTION_3_72();
    (v31)(v37);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &a13);
    OUTLINED_FUNCTION_20_59();
    *(v25 + 4) = v32;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v38, v39, "Screening call: %{public}s");
    OUTLINED_FUNCTION_0_201();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v31(*(v24 + 64), *(v24 + 40));
  }

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_12_4();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4;
  v5[4] = *a4;
  v7 = *(v6 + 80);
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CallScreeningActor.shared;
  v5[10] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineService.handleNewIncomingCall(_:), v8, 0);
}

uint64_t closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_58_14();
  v16 = v14[9];
  v17 = v14[5];
  v18 = v14[6];
  v19 = v14[3];
  v14[11] = direct field offset for AnsweringMachineService.logger;
  v20 = *(v18 + 16);
  v14[12] = v20;
  v14[13] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v16, v19, v17);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = OUTLINED_FUNCTION_5_132(v22);
  v24 = v14[9];
  if (v23)
  {
    v26 = v14[5];
    v25 = v14[6];
    a9 = v14[4];
    OUTLINED_FUNCTION_42();
    a11 = OUTLINED_FUNCTION_38_3();
    v27 = OUTLINED_FUNCTION_10_86(4.8751e-34);
    (v20)(v27);
    v28 = *(v25 + 8);
    v29 = OUTLINED_FUNCTION_243();
    v28(v29);
    OUTLINED_FUNCTION_25_47();
    v30 = OUTLINED_FUNCTION_17_65();
    (v28)(v30, v26);
    v31 = OUTLINED_FUNCTION_334();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v33);
    OUTLINED_FUNCTION_20_59();
    *(v15 + 4) = v24;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v34, v35, "Waiting to screen call: %{public}s");
    OUTLINED_FUNCTION_0_201();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v28 = *(v14[6] + 8);
    (v28)(v14[9], v14[5]);
  }

  v14[14] = v28;
  v46 = *(v14[2] + 16) + **(v14[2] + 16);
  v36 = swift_task_alloc();
  v14[15] = v36;
  *v36 = v14;
  v36[1] = closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
  OUTLINED_FUNCTION_13_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, a11, a12, a13, a14);
}

uint64_t closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(char a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 128) = v1;

  v7 = *(v4 + 80);
  if (v1)
  {
    v8 = closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
  }

  else
  {
    *(v5 + 152) = a1 & 1;
    v8 = closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  if (*(v24 + 152) == 1 && (static Task<>.isCancelled.getter() & 1) == 0)
  {
    v49 = swift_task_alloc();
    *(v24 + 136) = v49;
    *v49 = v24;
    v49[1] = closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
    OUTLINED_FUNCTION_12_4();

    return AnsweringMachineService.requestToScreen(call:)(v50);
  }

  else
  {
    (*(v24 + 96))(*(v24 + 56), *(v24 + 24), *(v24 + 40));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = OUTLINED_FUNCTION_5_132(v29);
    v31 = *(v24 + 112);
    if (v30)
    {
      v33 = *(v24 + 56);
      v32 = *(v24 + 64);
      v34 = *(v24 + 40);
      v35 = *(v24 + 48);
      a10 = *(v24 + 96);
      a11 = *(v24 + 32);
      OUTLINED_FUNCTION_42();
      a12 = OUTLINED_FUNCTION_38_3();
      a13 = a12;
      v36 = OUTLINED_FUNCTION_2_74(4.8751e-34);
      a10(v36);
      v31(v33, v34);
      OUTLINED_FUNCTION_27_49();
      v37 = OUTLINED_FUNCTION_3_72();
      (v31)(v37);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &a13);
      OUTLINED_FUNCTION_20_59();
      *(v25 + 4) = v32;
      OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v38, v39, "Will not screen call: %{public}s");
      OUTLINED_FUNCTION_0_201();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v31(*(v24 + 56), *(v24 + 40));
    }

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_12_4();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v2 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);

    return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineService.handleNewIncomingCall(_:), v4, 0);
  }

  else
  {

    OUTLINED_FUNCTION_5_102();

    return v5();
  }
}

{
  v1 = *(v0 + 128);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to handle new incoming call with error: %@");
    outlined destroy of CallControlsService?(v6, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v11();
}

{
  v1 = *(v0 + 144);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to handle new incoming call with error: %@");
    outlined destroy of CallControlsService?(v6, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t AnsweringMachineService.deinit()
{

  v1 = direct field offset for AnsweringMachineService.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScTyyts5Error_pGMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t AnsweringMachineService.__deallocating_deinit()
{
  AnsweringMachineService.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CallScreeningActor.ActorType and conformance CallScreeningActor.ActorType()
{
  result = lazy protocol witness table cache variable for type CallScreeningActor.ActorType and conformance CallScreeningActor.ActorType;
  if (!lazy protocol witness table cache variable for type CallScreeningActor.ActorType and conformance CallScreeningActor.ActorType)
  {
    type metadata accessor for CallScreeningActor.ActorType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreeningActor.ActorType and conformance CallScreeningActor.ActorType);
  }

  return result;
}

uint64_t partial apply for closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CallScreeningRTTHelper.callStatusChanged(_:);

  return closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(a1, v6, v4, v7, v1 + v5);
}

void *specialized ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallSoundPlayer);
  v13[4] = &protocol witness table for TUCallSoundPlayer;
  v13[0] = a1;
  v12[3] = type metadata accessor for DeviceRingerStateObserver();
  v12[4] = &protocol witness table for DeviceRingerStateObserver;
  v12[0] = a2;
  outlined init with copy of IDSLookupManager(v13, (a4 + 7));
  outlined init with copy of IDSLookupManager(v12, (a4 + 12));
  if (*(a3 + 24))
  {
    outlined init with copy of ShakyMaker?(a3, (a4 + 2));
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E69DCCF0]);
    v9 = [v8 init];
    v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UINotificationFeedbackGenerator);
    a4[2] = v9;
    a4[5] = v10;
    a4[6] = &protocol witness table for UINotificationFeedbackGenerator;
  }

  ScreeningSoundAndHapticsManager.registerForUpdates()();
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  outlined destroy of CallControlsService?(a3, &_s15ConversationKit10ShakyMaker_pSgMd);
  return a4;
}

uint64_t type metadata completion function for AnsweringMachineService()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScTyyts5Error_pGMd);
    swift_getTupleTypeMetadata2();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id ConversationControlsNoticeCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ConversationControlsNoticeCoordinator.noticeTapped(notice:completionHandler:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v76 = v2;
  v78 = v3;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v14, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v5, v84);
  v74 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v77 = v13;
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_23();
    *&v81 = v19;
    *v18 = 136315138;
    v73 = v5;
    v20 = v8;
    v21 = v6;
    v22 = v0;
    v23 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v24 = OUTLINED_FUNCTION_182();
    v26 = v25(v24, v23);
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(v84);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v81);
    OUTLINED_FUNCTION_182();
    v1 = v22;
    v6 = v21;
    v8 = v20;
    v5 = v73;

    *(v18 + 4) = v26;
    _os_log_impl(&dword_1BBC58000, v15, v16, "noticeTapped: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v29 = __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v30 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  v30(&v81, v29);
  if (v82)
  {
    v72 = v30;
    v73 = v1;
    outlined init with take of TapInteractionHandler(&v81, v84);
    OUTLINED_FUNCTION_11_99(v5);
    v31 = v77;
    v32 = OUTLINED_FUNCTION_4_38();
    v33(v32);
    OUTLINED_FUNCTION_11_99(v84);
    v34 = v75;
    v35 = OUTLINED_FUNCTION_4_38();
    v36(v35);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = *(v8 + 8);
    v38 = v8 + 8;
    v39 = v40;
    v40(v34, v6);
    v40(v31, v6);
    if ((v37 & 1) == 0)
    {
      v75 = v6;
      outlined init with copy of IDSLookupManager(v5, &v81);
      v41 = v73;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v71 = v42;
        LODWORD(v74) = v43;
        v44 = OUTLINED_FUNCTION_30_1();
        v73 = OUTLINED_FUNCTION_29_7();
        v80 = v73;
        *v44 = 136315394;
        v45 = v82;
        v46 = v83;
        __swift_project_boxed_opaque_existential_1(&v81, v82);
        v47 = v77;
        v48 = OUTLINED_FUNCTION_28_0();
        v49(v48, v46);
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_305();
        v50 = v75;
        v70 = v38;
        v39(v47, v75);
        __swift_destroy_boxed_opaque_existential_1(&v81);
        v51 = OUTLINED_FUNCTION_46();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v53);
        v54 = OUTLINED_FUNCTION_90();
        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        v72(v79, v54);
        if (v79[3])
        {
          OUTLINED_FUNCTION_11_99(v79);
          v55 = OUTLINED_FUNCTION_4_38();
          v56(v55);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v79, &_s15ConversationKit6Notice_pSgMd);
          v57 = UUID.uuidString.getter();
          v59 = v58;
          v39(v47, v50);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v79, &_s15ConversationKit6Notice_pSgMd);
          v59 = 0xE100000000000000;
          v57 = 45;
        }

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v80);
        OUTLINED_FUNCTION_28_0();

        *(v44 + 14) = v57;
        v60 = v71;
        _os_log_impl(&dword_1BBC58000, v71, v74, "Tapped notice:%s doesn't match activeNotice:%s", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v81);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v84);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v81, &_s15ConversationKit6Notice_pSgMd);
  }

  OUTLINED_FUNCTION_12_88();
  v61 = OUTLINED_FUNCTION_4_38();
  if (v62(v61))
  {
    OUTLINED_FUNCTION_12_88();
    v63 = OUTLINED_FUNCTION_4_38();
    if (v64(v63))
    {
      OUTLINED_FUNCTION_305();
      v65();
      v66 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v66);
    }
  }

  if (v78)
  {
    OUTLINED_FUNCTION_12_88();
    v67 = OUTLINED_FUNCTION_4_38();
    v69 = v68(v67);
    v78(v69 & 1);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsNoticeCoordinator.post(notice:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  specialized ConversationControlsNoticeCoordinator.post(notice:)();
}

Swift::Void __swiftcall ConversationControlsNoticeCoordinator.flushNotices(priority:)(ConversationKit::NoticePriority priority)
{
  ConversationControlsNoticeCoordinator.noticeQueue.modify(v7);
  OUTLINED_FUNCTION_305();
  v3 = specialized Dictionary.subscript.modify();
  v4 = *(v2 + 24);
  if (v4)
  {
    v5 = *(v2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
    (*(v5 + 40))(v4, v5);
  }

  (v3)(&v6, 0);
  v1(v7, 0);
}

void ConversationControlsNoticeCoordinator.dismissAndGetNextNotice(dismissContext:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v26 = v4;
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = MEMORY[0x1E69E7D40];
  if (v12)
  {
    v25 = v2;
    v14 = OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_23();
    *&v28 = v15;
    *v14 = 136315138;
    (*((*v13 & *v9) + 0x88))(v30);
    if (v31)
    {
      v13 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v16 = OUTLINED_FUNCTION_182();
      v17(v16, v13);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s15ConversationKit6Notice_pSgMd);
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v26 + 8))(v7, v27);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s15ConversationKit6Notice_pSgMd);
      v20 = 0xE600000000000000;
      v18 = 0x3E656E6F6E3CLL;
    }

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v28);
    OUTLINED_FUNCTION_90();
    *(v14 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v10, v11, "dismissing notice: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_27();

    v2 = v25;
    v13 = MEMORY[0x1E69E7D40];
  }

  else
  {
  }

  v21 = *((*v13 & *v9) + 0x88);
  v21(&v28);
  if (v29)
  {
    outlined init with take of TapInteractionHandler(&v28, v30);
    OUTLINED_FUNCTION_11_99(v30);
    v22 = OUTLINED_FUNCTION_4_38();
    v23(v22);
    ConversationControlsNoticeCoordinator.noticeDismissed(noticeUUID:dismissContext:)();
    v24 = (*(v26 + 8))(v7, v27);
    v21(v24);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v28, &_s15ConversationKit6Notice_pSgMd);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsNoticeCoordinator.noticeDismissed(noticeUUID:dismissContext:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v53 - v19;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(&v57, v18);
  if (v58)
  {
    v55 = v5;
    v56 = v3;
    outlined init with take of TapInteractionHandler(&v57, v59);
    v21 = v8;
    v23 = v60;
    v22 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v24 = *(v22 + 8);
    v25 = v22;
    v8 = v21;
    v24(v23, v25);
    v26 = static UUID.== infix(_:_:)();
    v27 = *(v10 + 8);
    v27(v20, v8);
    if (v26)
    {
      v54 = v27;
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v28, &static Logger.conversationControls);
      (*(v10 + 16))(v17, v7, v8);
      v29 = v56;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_30_1();
        v53 = OUTLINED_FUNCTION_29_7();
        *&v57 = v53;
        *v32 = 136315394;
        if (v29)
        {
          v33 = v55;
        }

        else
        {
          v33 = 4271950;
        }

        OUTLINED_FUNCTION_22_48(v34, v35, &v57);
        OUTLINED_FUNCTION_75_0();

        *(v32 + 4) = v33;
        *(v32 + 12) = 2080;
        v36 = UUID.uuidString.getter();
        v38 = v37;
        v54(v17, v8);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v57);

        *(v32 + 14) = v39;
        _os_log_impl(&dword_1BBC58000, v30, v31, "[%s] noticeDismissed: %s", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v54(v17, v8);
      }

      v52 = MEMORY[0x1E69E7D40];
      ConversationControlsNoticeCoordinator.pop()();
      (*((*v52 & *v1) + 0x90))(&v57);
      __swift_destroy_boxed_opaque_existential_1(v59);
      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v57, &_s15ConversationKit6Notice_pSgMd);
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v40, &static Logger.conversationControls);
  (*(v10 + 16))(v14, v7, v8);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_42();
    v44 = v8;
    v45 = OUTLINED_FUNCTION_23();
    v59[0] = v45;
    *v43 = 136315138;
    v46 = UUID.uuidString.getter();
    v48 = v47;
    (*(v10 + 8))(v14, v44);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v59);

    *(v43 + 4) = v49;
    OUTLINED_FUNCTION_25_48(&dword_1BBC58000, v50, v51, "Received request to dismiss previously dismissed notice: %s");
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

uint64_t key path getter for ConversationControlsNoticeCoordinator.unblockTimer : ConversationControlsNoticeCoordinator@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsNoticeCoordinator.unblockTimer : ConversationControlsNoticeCoordinator(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

void *ConversationControlsNoticeCoordinator.unblockTimer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator_unblockTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationControlsNoticeCoordinator.unblockTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator_unblockTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ConversationControlsNoticeCoordinator.activeNotice.didset()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  [v3 invalidate];

  (*((*v2 & *v1) + 0x88))(&aBlock);
  if (!v15)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&aBlock, &_s15ConversationKit6Notice_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&aBlock, v18);
  v4 = v19;
  v5 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v6 = (*(v5 + 48))(v4, v5);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = v6 + (*(*static Defaults.shared + 1040))();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #1 in ConversationControlsNoticeCoordinator.activeNotice.didset;
  v17 = v9;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v15 = &block_descriptor_100;
  v10 = _Block_copy(&aBlock);

  v11 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:v7];
  _Block_release(v10);
  (*((*v2 & *v1) + 0x78))(v11);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void closure #1 in ConversationControlsNoticeCoordinator.activeNotice.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, &static Logger.conversationControls);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "unblockTimer fired, pop next notice", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    ConversationControlsNoticeCoordinator.pop()();
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(&v6);
  }
}

void ConversationControlsNoticeCoordinator.pop()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(&v62);
  v59 = v3;
  if (*(&v63 + 1))
  {
    outlined init with take of TapInteractionHandler(&v62, &v65);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
    outlined init with copy of IDSLookupManager(&v65, &v62);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_42();
      v15 = OUTLINED_FUNCTION_23();
      v61[0] = v15;
      *v14 = 136315138;
      v17 = *(&v63 + 1);
      v16 = v64;
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      (*(v16 + 120))(v17, v16);
      OUTLINED_FUNCTION_305();
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v18 = OUTLINED_FUNCTION_46();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v20);
      OUTLINED_FUNCTION_90();
      *(v14 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v12, v13, "Popping next notice, dismiss active notice: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v1 = v0;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v62);
    }

    v21 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, v66);
    v22 = OUTLINED_FUNCTION_28_0();
    v24 = v23(v22, v21);
    if (v24)
    {
      v25 = v24;
      v24();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v25);
    }

    v26 = *(v1 + OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator_conversationManager);
    v27 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, v66);
    v28 = OUTLINED_FUNCTION_75_0();
    v29(v28, v27);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v10, v4);
    [v26 removeConversationNoticeWithUUID_];

    __swift_destroy_boxed_opaque_existential_1(&v65);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v62, &_s15ConversationKit6Notice_pSgMd);
  }

  v31 = ConversationControlsNoticeCoordinator.noticeQueue.getter();
  *&v65 = specialized _copyCollectionToContiguousArray<A>(_:)(v31);
  specialized MutableCollection<>.sort(by:)(&v65);

  v32 = v65;
  v33 = *(v65 + 16);
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      if (i >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v35 = v1;
      v36 = ConversationControlsNoticeCoordinator.noticeQueue.modify(v61);
      v38 = specialized Dictionary.subscript.modify();
      v39 = *(v37 + 24);
      if (v39)
      {
        v40 = *(v37 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v37, *(v37 + 24));
        (*(v40 + 32))(&v62, v39, v40);
        (v38)(v60, 0);
        (v36)(v61, 0);
        if (*(&v63 + 1))
        {

          outlined init with take of TapInteractionHandler(&v62, &v65);
          if (one-time initialization token for conversationControls != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v45 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v45, &static Logger.conversationControls);
          outlined init with copy of IDSLookupManager(&v65, &v62);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = OUTLINED_FUNCTION_42();
            v49 = OUTLINED_FUNCTION_23();
            v61[0] = v49;
            *v48 = 136315138;
            v50 = *(&v63 + 1);
            v51 = v64;
            __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
            v52 = OUTLINED_FUNCTION_28_0();
            v53(v52, v51);
            OUTLINED_FUNCTION_305();
            __swift_destroy_boxed_opaque_existential_1(&v62);
            v54 = OUTLINED_FUNCTION_46();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v56);
            OUTLINED_FUNCTION_90();
            *(v48 + 4) = v50;
            OUTLINED_FUNCTION_25_48(&dword_1BBC58000, v57, v58, "Popped next notice: %s");
            __swift_destroy_boxed_opaque_existential_1(v49);
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_27();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v62);
          }

          outlined init with take of TapInteractionHandler(&v65, v59);
          goto LABEL_29;
        }
      }

      else
      {
        (v38)(v60, 0);
        (v36)(v61, 0);
        v62 = 0u;
        v63 = 0u;
        v64 = 0;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v62, &_s15ConversationKit6Notice_pSgMd);
      v1 = v35;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_0_0();
  }

  v41 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v41, &static Logger.conversationControls);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1BBC58000, v42, v43, "No more notices to retrieve", v44, 2u);
    OUTLINED_FUNCTION_239();
  }

  *(v59 + 32) = 0;
  *v59 = 0u;
  *(v59 + 16) = 0u;
LABEL_29:
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationControlsNoticeCoordinator.activeNotice.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t ConversationControlsNoticeCoordinator.activeNotice.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Notice?(a1, v5, &_s15ConversationKit6Notice_pSgMd);
  v3 = v1;
  static Published.subscript.setter();
  ConversationControlsNoticeCoordinator.activeNotice.didset();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit6Notice_pSgMd);
}

void (*ConversationControlsNoticeCoordinator.activeNotice.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_158();
  static Published.subscript.getter();

  return ConversationControlsNoticeCoordinator.activeNotice.modify;
}

void ConversationControlsNoticeCoordinator.activeNotice.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of Notice?(*a1, v2 + 40, &_s15ConversationKit6Notice_pSgMd);
    ConversationControlsNoticeCoordinator.activeNotice.setter(v2 + 40);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit6Notice_pSgMd);
  }

  else
  {
    ConversationControlsNoticeCoordinator.activeNotice.setter(*a1);
  }

  free(v2);
}

uint64_t key path setter for ConversationControlsNoticeCoordinator.$activeNotice : ConversationControlsNoticeCoordinator(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA8))(v7);
}

uint64_t ConversationControlsNoticeCoordinator.$activeNotice.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*ConversationControlsNoticeCoordinator.$activeNotice.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConversationControlsNoticeCoordinator.$activeNotice.modify;
}

void ConversationControlsNoticeCoordinator.$activeNotice.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    OUTLINED_FUNCTION_158();
    v7();
    ConversationControlsNoticeCoordinator.$activeNotice.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ConversationControlsNoticeCoordinator.$activeNotice.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ConversationControlsNoticeCoordinator.noticeQueue.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator____lazy_storage___noticeQueue;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator____lazy_storage___noticeQueue))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator____lazy_storage___noticeQueue);
  }

  else
  {
    v2 = closure #1 in ConversationControlsNoticeCoordinator.noticeQueue.getter();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in ConversationControlsNoticeCoordinator.noticeQueue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit14NoticePriorityO_AC0F5Queue_ptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4E70;
  *(inited + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(inited + 64) = &type metadata for CoalescingNoticeQueue;
  *(inited + 72) = &protocol witness table for CoalescingNoticeQueue;
  *(inited + 40) = v1;
  *(inited + 80) = 1;
  *(inited + 112) = &type metadata for CoalescingNoticeQueue;
  *(inited + 120) = &protocol witness table for CoalescingNoticeQueue;
  *(inited + 88) = v1;
  *(inited + 128) = 2;
  *(inited + 160) = &type metadata for ReplacingNoticeQueue;
  *(inited + 168) = &protocol witness table for ReplacingNoticeQueue;
  *(inited + 136) = v1;
  *(inited + 176) = 3;
  *(inited + 208) = &type metadata for CoalescingNoticeQueue;
  *(inited + 216) = &protocol witness table for CoalescingNoticeQueue;
  *(inited + 184) = v1;
  *(inited + 224) = 4;
  *(inited + 256) = &type metadata for CoalescingNoticeQueue;
  *(inited + 264) = &protocol witness table for CoalescingNoticeQueue;
  *(inited + 232) = v1;
  *(inited + 272) = 5;
  *(inited + 304) = &type metadata for CoalescingNoticeQueue;
  *(inited + 312) = &protocol witness table for CoalescingNoticeQueue;
  *(inited + 280) = v1;
  *(inited + 320) = 6;
  *(inited + 352) = &type metadata for ReplacingNoticeQueue;
  *(inited + 360) = &protocol witness table for ReplacingNoticeQueue;
  *(inited + 328) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11NoticeQueue_pMd);
  lazy protocol witness table accessor for type NoticePriority and conformance NoticePriority();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t (*ConversationControlsNoticeCoordinator.noticeQueue.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = ConversationControlsNoticeCoordinator.noticeQueue.getter();
  return ConversationControlsNoticeCoordinator.noticeQueue.modify;
}

id ConversationControlsNoticeCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationControlsNoticeCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ConversationControlsNoticeCoordinator.peek()@<X0>(uint64_t a1@<X8>)
{
  v2 = ConversationControlsNoticeCoordinator.noticeQueue.getter();
  *&v15 = specialized _copyCollectionToContiguousArray<A>(_:)(v2);
  specialized MutableCollection<>.sort(by:)(&v15);

  v3 = v15;
  v4 = *(v15 + 16);
  if (v4)
  {
    v12 = a1;
    v5 = 0;
    while (v5 < v3[2])
    {
      v6 = ConversationControlsNoticeCoordinator.noticeQueue.modify(v14);
      v8 = specialized Dictionary.subscript.modify();
      v9 = *(v7 + 24);
      if (v9)
      {
        v10 = *(v7 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v7, *(v7 + 24));
        (*(v10 + 24))(&v15, v9, v10);
        (v8)(v13, 0);
        (v6)(v14, 0);
        if (*(&v16 + 1))
        {

          return outlined init with take of TapInteractionHandler(&v15, v12);
        }
      }

      else
      {
        (v8)(v13, 0);
        (v6)(v14, 0);
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
      }

      ++v5;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v15, &_s15ConversationKit6Notice_pSgMd);
      if (v4 == v5)
      {

        a1 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

LABEL_11:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v64), (*a3 + *v66), (*a3 + v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v77, *a1, a3);
LABEL_89:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v6;
      v13 = *v4;
      if (v12 >= v13)
      {
        v11 = v7 >= v4++;
        v15 = !v11 || v7 >= v4;
        LOBYTE(v12) = v13;
        if (v15)
        {
LABEL_18:
          *v7 = v12;
        }
      }

      else
      {
        v11 = v7 >= v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      ++v7;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_21:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (v18 < v19)
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(void *a1, char a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = specialized Dictionary._Variant.asNative.modify(v4);
  v4[9] = specialized _NativeDictionary.subscript.modify((v4 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x90uLL);
  *a1 = v8;
  v8[15] = v3;
  *(v8 + 136) = a2;
  v9 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v8 + 137) = v11 & 1;
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit14NoticePriorityOAC0E5Queue_pGMd);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v14))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[16] = v15;
  if (v16)
  {
    outlined init with take of TapInteractionHandler((*(*v4 + 56) + 40 * v15), v8);
  }

  else
  {
    v8[4] = 0;
    *v8 = 0u;
    *(v8 + 1) = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t *a1)
{
  v1 = *a1;
  outlined init with copy of Notice?(*a1, *a1 + 80, &_s15ConversationKit11NoticeQueue_pSgMd);
  v2 = *(v1 + 137);
  if (*(v1 + 104))
  {
    v3 = *(v1 + 120);
    outlined init with take of TapInteractionHandler((v1 + 80), v1 + 40);
    v4 = *v3;
    v5 = *(v1 + 128);
    if (v2)
    {
      outlined init with take of TapInteractionHandler((v1 + 40), *(v4 + 56) + 40 * v5);
    }

    else
    {
      v6 = *(v1 + 136);
      outlined init with take of TapInteractionHandler((v1 + 40), v1 + 80);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v6, v1 + 80, v4);
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1 + 80, &_s15ConversationKit11NoticeQueue_pSgMd);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11NoticeQueue_pMd);
      lazy protocol witness table accessor for type NoticePriority and conformance NoticePriority();
      _NativeDictionary._delete(at:)();
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11NoticeQueue_pSgMd);

  free(v1);
}

uint64_t (*specialized _NativeDictionary.subscript.modify(uint64_t a1, char a2, char a3))(uint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSDySSAC11ApplicationVGGMd);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v14;
  if (v15)
  {
    v18 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v18 = 0;
  }

  *a1 = v18;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

void type metadata completion function for ConversationControlsNoticeCoordinator()
{
  type metadata accessor for Published<Notice?>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Notice?>()
{
  if (!lazy cache variable for type metadata for Published<Notice?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit6Notice_pSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Notice?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType()
{
  result = lazy protocol witness table cache variable for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType;
  if (!lazy protocol witness table cache variable for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType;
  if (!lazy protocol witness table cache variable for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType);
  }

  return result;
}

id EffectsLayoutController.init(containingViewController:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EffectsLayoutController();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

BOOL EffectsLayoutController.shouldAlwaysPresentExpandedApps(for:)()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 1;
  }

  v4 = [v0 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return v5 == 5;
}

void EffectsLayoutController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)(void *a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = a2;
      EffectsLayoutController.effectsBrowserSize(with:)(a1);
      v14 = v13;
      v16 = v15;
      v17 = OUTLINED_FUNCTION_3_148();
      if (v17)
      {
        v18 = v17;
        [v17 setAlpha_];

        v19 = OUTLINED_FUNCTION_3_148();
        if (v19)
        {
          v20 = v19;
          [v19 setTranslatesAutoresizingMaskIntoConstraints_];

          [v11 addChildViewController_];
          v21 = [v11 view];
          if (v21)
          {
            v22 = v21;
            v23 = OUTLINED_FUNCTION_3_148();
            if (v23)
            {
              v24 = v23;
              [v22 addSubview_];

              [v12 didMoveToParentViewController_];
              v25 = OUTLINED_FUNCTION_3_148();
              if (v25)
              {
                v26 = v25;
                v89 = a3;
                v87 = a4;
                v88 = a5;
                v27 = [v25 centerXAnchor];

                v28 = [a1 view];
                if (v28)
                {
                  v29 = v28;
                  v30 = [v28 centerXAnchor];

                  v31 = [v27 constraintEqualToAnchor_];
                  type metadata accessor for UILayoutPriority(0);
                  LODWORD(aBlock) = 1148846080;
                  v97 = 1065353216;
                  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
                  static _UIKitNumericRawRepresentable.- infix(_:_:)();
                  LODWORD(v32) = v98[0];
                  [v31 setPriority_];
                  v33 = OUTLINED_FUNCTION_3_148();
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v33 trailingAnchor];

                    v36 = [v11 view];
                    if (v36)
                    {
                      v37 = v36;
                      v38 = [v36 trailingAnchor];

                      v39 = static Platform.current.getter();
                      v40 = 0.0;
                      if (v39 == 1)
                      {
                        static Layout.LocalParticipantViewCameraControls.iOS.getter(v98);
                        v40 = -v99;
                      }

                      v41 = [v35 constraintLessThanOrEqualToAnchor:v38 constant:v40];

                      LODWORD(v42) = 1148846080;
                      [v41 setPriority_];
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                      v43 = swift_allocObject();
                      *(v43 + 16) = xmmword_1BC4CB3D0;
                      *(v43 + 32) = v41;
                      *(v43 + 40) = v31;
                      v44 = v41;
                      v85 = v31;
                      v45 = OUTLINED_FUNCTION_3_148();
                      if (v45)
                      {
                        v46 = v45;
                        v47 = [v45 topAnchor];

                        v48 = [v11 view];
                        if (v48)
                        {
                          v49 = v48;
                          v50 = [v48 topAnchor];

                          if (one-time initialization token for browserVerticalPadding != -1)
                          {
                            OUTLINED_FUNCTION_1_165();
                          }

                          v51 = *&static Layout.EffectsBrowserContainerView.browserVerticalPadding;
                          v52 = [v47 constraintGreaterThanOrEqualToAnchor:v50 constant:{*&static Layout.EffectsBrowserContainerView.browserVerticalPadding, v85}];

                          *(v43 + 48) = v52;
                          v53 = OUTLINED_FUNCTION_3_148();
                          if (v53)
                          {
                            v54 = v53;
                            v55 = [v53 bottomAnchor];

                            v56 = [a1 view];
                            if (v56)
                            {
                              v57 = v56;
                              v58 = [v56 topAnchor];

                              v59 = [v55 constraintEqualToAnchor:v58 constant:-v51];
                              *(v43 + 56) = v59;
                              v60 = OUTLINED_FUNCTION_3_148();
                              if (v60)
                              {
                                v61 = v60;
                                v62 = [v60 widthAnchor];

                                v63 = [v62 constraintEqualToConstant_];
                                *(v43 + 64) = v63;
                                v64 = OUTLINED_FUNCTION_3_148();
                                if (v64)
                                {
                                  v65 = v64;
                                  v66 = [v64 heightAnchor];

                                  v67 = [v66 constraintLessThanOrEqualToConstant_];
                                  *(v43 + 72) = v67;
                                  v68 = OUTLINED_FUNCTION_3_148();
                                  if (v68)
                                  {
                                    v69 = v68;
                                    v70 = objc_opt_self();
                                    v71 = [v69 heightAnchor];

                                    v72 = [v71 constraintGreaterThanOrEqualToConstant_];
                                    *(v43 + 80) = v72;
                                    type metadata accessor for NSLayoutConstraint();
                                    isa = Array._bridgeToObjectiveC()().super.isa;

                                    [v70 activateConstraints_];

                                    if (v89)
                                    {
                                      v90 = objc_opt_self();
                                      OUTLINED_FUNCTION_20();
                                      v74 = swift_allocObject();
                                      *(v74 + 16) = v12;
                                      v95 = partial apply for closure #1 in EffectsLayoutController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:);
                                      v96 = v74;
                                      aBlock = MEMORY[0x1E69E9820];
                                      v92 = 1107296256;
                                      v93 = thunk for @escaping @callee_guaranteed () -> ();
                                      v94 = &block_descriptor_101;
                                      v75 = _Block_copy(&aBlock);
                                      v76 = v12;

                                      OUTLINED_FUNCTION_24();
                                      v77 = swift_allocObject();
                                      *(v77 + 16) = v87;
                                      *(v77 + 24) = v88;
                                      v95 = partial apply for closure #2 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:);
                                      v96 = v77;
                                      aBlock = MEMORY[0x1E69E9820];
                                      v92 = 1107296256;
                                      v93 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
                                      v94 = &block_descriptor_6_5;
                                      v78 = _Block_copy(&aBlock);
                                      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v87, v88);

                                      [v90 animateWithDuration:0x10000 delay:v75 options:v78 animations:0.3 completion:0.0];

                                      _Block_release(v78);
                                      _Block_release(v75);
LABEL_38:
                                      OUTLINED_FUNCTION_2_156();
                                      return;
                                    }

                                    v83 = OUTLINED_FUNCTION_3_148();
                                    if (v83)
                                    {
                                      v84 = v83;
                                      [v83 setAlpha_];

                                      if (a4)
                                      {
                                        a4();
                                      }

                                      goto LABEL_38;
                                    }

                                    goto LABEL_54;
                                  }

LABEL_53:
                                  __break(1u);
LABEL_54:
                                  __break(1u);
                                  return;
                                }

LABEL_52:
                                __break(1u);
                                goto LABEL_53;
                              }

LABEL_51:
                              __break(1u);
                              goto LABEL_52;
                            }

LABEL_50:
                            __break(1u);
                            goto LABEL_51;
                          }

LABEL_49:
                          __break(1u);
                          goto LABEL_50;
                        }

LABEL_48:
                        __break(1u);
                        goto LABEL_49;
                      }

LABEL_47:
                      __break(1u);
                      goto LABEL_48;
                    }

LABEL_46:
                    __break(1u);
                    goto LABEL_47;
                  }

LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    v80 = one-time initialization token for conversationKit;
    a2;
    if (v80 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    OUTLINED_FUNCTION_2_156();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_2_156();

    os_log(_:dso:log:type:_:)();
  }
}

void EffectsLayoutController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)(uint64_t a1, void *a2, char a3, uint64_t (*a4)(id), uint64_t a5)
{
  if (a2)
  {
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a4;
    v9[4] = a5;
    if (a3)
    {
      v10 = objc_opt_self();
      OUTLINED_FUNCTION_20();
      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      v23 = partial apply for closure #2 in EffectsLayoutController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:);
      v24 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = thunk for @escaping @callee_guaranteed () -> ();
      v22 = &block_descriptor_15_2;
      v12 = _Block_copy(&aBlock);
      v13 = a2;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a4, a5);

      OUTLINED_FUNCTION_24();
      v14 = swift_allocObject();
      *(v14 + 16) = partial apply for closure #1 in EffectsLayoutController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:);
      *(v14 + 24) = v9;
      v23 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v24 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v22 = &block_descriptor_21_1;
      v15 = _Block_copy(&aBlock);

      [v10 animateWithDuration:0x20000 delay:v12 options:v15 animations:0.3 completion:0.0];

      _Block_release(v15);
      _Block_release(v12);
    }

    else
    {
      v18 = a2;
      v16 = [v18 view];
      if (v16)
      {
        v17 = v16;
        [v16 setAlpha_];

        closure #1 in EffectsLayoutController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)(v18, a4);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id closure #1 in EffectsLayoutController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)(void *a1, uint64_t (*a2)(id))
{
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result removeFromSuperview];

    result = [a1 removeFromParentViewController];
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in EffectsLayoutController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)(void *a1, double a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void EffectsLayoutController.effectsBrowserSize(with:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [Strong view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [a1 view];
  v7 = [v5 containsView_];

  if (v7)
  {
    v8 = [a1 view];
    if (!v8)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = v8;
    v10 = [a1 view];
    if (!v10)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 frame];
    v13 = v12;
    v15 = v14;

    v16 = [v3 view];
    [v9 convertPoint:v16 toView:{v13, v15}];
  }

  v17 = [v3 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  [v17 safeAreaInsetFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27.origin.x = v20;
  v27.origin.y = v22;
  v27.size.width = v24;
  v27.size.height = v26;
  CGRectGetHeight(v27);
  if (one-time initialization token for browserVerticalPadding != -1)
  {
    OUTLINED_FUNCTION_1_165();
  }
}

id EffectsLayoutController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EffectsLayoutController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectsLayoutController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InCallControlsActivityCellViewModel.cellStyle.getter()
{
  OUTLINED_FUNCTION_7_100();
  v0 = OUTLINED_FUNCTION_2_14();
  v1(v0);
  if (v2)
  {

    OUTLINED_FUNCTION_16_66();
    if (v3)
    {
      LOBYTE(v3) = InCallControlsActivityCellViewModel.shouldBeSmallCell.getter() ^ 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

id InCallControlsActivityCellViewModel.activityMetadata.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v43 - v8;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  (*(v16 + 16))(&v44, v15, v16);
  if (v44 == 2)
  {
    v18 = OUTLINED_FUNCTION_13_75();
    if ((InCallControlsActivityCellViewModel.shouldCollaborationShowAppIcon.getter() & 1) == 0)
    {
      v19 = v0[5];
      v20 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
      (*(v20 + 112))(v19, v20);
      v21 = type metadata accessor for Collaboration(0);
      if (__swift_getEnumTagSinglePayload(v5, 1, v21) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit13CollaborationVSgMd);
      }

      else
      {
        v31 = *(v5 + 11);
        v30 = *(v5 + 12);

        OUTLINED_FUNCTION_5_133();
        outlined destroy of Collaboration(v5, v32);
        if (v30)
        {
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_8_5();
          }

          v33 = (*(*static CollaborationImageFetcher.shared + 136))(v31, v30);

          if (v33)
          {
LABEL_18:
            v39 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];
            [v18 setImage_];

            return v18;
          }
        }
      }
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
    v34 = v1[5];
    v35 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v34);
    v36 = (*(v35 + 32))(v34, v35);
    v38 = static UIImageView.appIcon(for:)(v36, v37);

    if (!v38)
    {
      return v18;
    }

    v33 = [v38 image];

    if (!v33)
    {
      return v18;
    }

    goto LABEL_18;
  }

  if (v44 != 6)
  {
    return OUTLINED_FUNCTION_13_75();
  }

  v17 = type metadata accessor for InCallControlsActivityCellViewModel();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + *(v17 + 32), v9, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantVSgMd);
    return [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  }

  else
  {
    outlined init with take of Participant(v9, v14);
    v18 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
    Participant.contactDetails.getter();
    v24 = v43[0];
    v23 = v43[1];
    v25 = v43[2];

    outlined bridged method (mbnn) of @objc UINavigationItem.title.setter(v23, v25, v18);
    v26 = v1 + *(v17 + 36);
    if ((v26[96] & 1) == 0)
    {
      v27 = TUScreenShareDeviceFamily.displayName.getter(*(v26 + 9));
      if (v28)
      {
        v29 = MEMORY[0x1BFB209B0](v27);
      }

      else
      {
        v29 = 0;
      }

      [v18 setSummary_];

      if ((v26[96] & 1) == 0)
      {
        v40 = TUScreenShareDeviceFamily.linkPresentationImage.getter(*(v26 + 9));
        if (v40)
        {
          v41 = v40;
          [v18 setImage_];
        }
      }
    }

    OUTLINED_FUNCTION_1_166();
    outlined destroy of Collaboration(v14, v42);
  }

  return v18;
}

uint64_t InCallControlsActivityCellViewModel.contacts.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - v4;
  v6 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  v13 = (*(v12 + 104))(v11, v12);
  v14 = v13;
  if (v13)
  {
    v15 = [v13 activity];
    v16 = [v15 isScreenSharingActivity];

    if (!v16)
    {
      return 0;
    }

    v17 = type metadata accessor for InCallControlsActivityCellViewModel();
    outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + *(v17 + 32), v5, &_s15ConversationKit11ParticipantVSgMd);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
      return 0;
    }

    outlined init with take of Participant(v5, v10);
    Participant.contactDetails.getter();
    v18 = v22[1];

    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BC4BAC30;
      *(v14 + 32) = v18;
    }

    else
    {
      v14 = *(v10 + *(v6 + 28));
      if (v14)
      {
        v19 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1BC4BAC30;
        *(v14 + 32) = v19;
      }
    }

    OUTLINED_FUNCTION_1_166();
    outlined destroy of Collaboration(v10, v20);
  }

  return v14;
}

uint64_t InCallControlsActivityCellViewModel.shouldShowActionButton.getter()
{
  OUTLINED_FUNCTION_7_100();
  v1 = OUTLINED_FUNCTION_2_14();
  v2(v1);
  if (v7 == 6)
  {
    v3 = *(v0 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 352))(ObjectType, v3) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

double InCallControlsActivityCellViewModel.activityCellHeight.getter()
{
  OUTLINED_FUNCTION_7_100();
  v0 = OUTLINED_FUNCTION_2_14();
  v1(v0);
  if (!v2)
  {
    return 60.0;
  }

  OUTLINED_FUNCTION_16_66();
  if (!v3)
  {
    return 60.0;
  }

  v4 = InCallControlsActivityCellViewModel.shouldBeSmallCell.getter();
  result = 173.0;
  if (v4)
  {
    return 60.0;
  }

  return result;
}

uint64_t InCallControlsActivitySectionHeaderViewModel.init(activity:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v39 - v4;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 104))(v6, v7);
  if (!v8)
  {
LABEL_4:
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 112))(v12, v13);
    v14 = type metadata accessor for Collaboration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v14);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit13CollaborationVSgMd);
    v16 = [objc_opt_self() conversationKit];
    if (EnumTagSinglePayload == 1)
    {
      v17 = 0x80000001BC517E20;
      v18 = 0xD000000000000025;
    }

    else
    {
      v18 = 0xD00000000000002BLL;
      v17 = 0x80000001BC509A10;
    }

    v19.super.isa = v16;
    OUTLINED_FUNCTION_17_0(v18, v17, 0x61737265766E6F43, 0xEF74694B6E6F6974, v19);

    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 activeRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
  lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v10) = specialized Set.isEmpty.getter(v11);

  if (v10)
  {

    goto LABEL_4;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 16))(v39, v20, v21);
  switch(LOBYTE(v39[0]))
  {
    case 1:
    case 2:
      v24 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      v28 = v27 + 6;
      v29 = 0x80000001BC509A10;
      goto LABEL_18;
    case 3:
    case 4:
    case 7:
      v22 = "_HEADER_TITLE_VIEWING";
      v23 = [objc_opt_self() conversationKit];
      goto LABEL_17;
    case 6:
      v30 = [v9 activity];
      v31 = [v30 originator];

      if (v31)
      {

        v32 = "ACTIVITY_SECTION_HEADER_TITLE_VIEWING";
      }

      else
      {
        v32 = "ACTIVITY_SECTION_HEADER_TITLE_SHARING";
      }

      v22 = (v32 - 32);
      v23 = [objc_opt_self() conversationKit];
      goto LABEL_17;
    case 0xD:
      v22 = "_HEADER_TITLE_GENERIC";
      v23 = [objc_opt_self() conversationKit];
      goto LABEL_17;
    default:
      v22 = "containingViewController";
      v23 = [objc_opt_self() conversationKit];
LABEL_17:
      v24 = v23;
      OUTLINED_FUNCTION_5_5();
      v29 = v22 | 0x8000000000000000;
      v28 = 0xD000000000000025;
LABEL_18:
      v33.super.isa = v24;
      OUTLINED_FUNCTION_17_0(v28, v29, v25, v26, v33);

      break;
  }

LABEL_19:
  v34 = String.init(format:_:)();
  v36 = v35;

  v39[0] = v34;
  v39[1] = v36;
  lazy protocol witness table accessor for type String and conformance String();
  v37 = StringProtocol.localizedUppercase.getter();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v37;
}

uint64_t InCallControlsActivityCellViewModel.init(call:activity:localParticipant:participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v101.i64[0] = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v95 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v83 - v15;
  v88 = type metadata accessor for Participant(0);
  v96 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_8();
  v102.i64[0] = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  v87 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v83 - v23;
  *a6 = a1;
  a6[1] = a2;
  v93 = a3;
  outlined init with copy of IDSLookupManager(a3, (a6 + 2));
  v25 = type metadata accessor for InCallControlsActivityCellViewModel();
  v100 = v25[6];
  v92 = a4;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a4, a6 + v100, &_s15ConversationKit11ParticipantVSgMd);
  v26 = v25[7];
  v97 = a6;
  *(a6 + v26) = a5;
  ObjectType = swift_getObjectType();
  v28 = *(a2 + 352);
  swift_unknownObjectRetain();
  v90 = ObjectType;
  v91 = a1;
  v89 = a2 + 352;
  if (v28(ObjectType, a2))
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(v97 + v100, v24, &_s15ConversationKit11ParticipantVSgMd);
    v29 = v88;
    goto LABEL_20;
  }

  v83 = v28;
  v84 = v24;
  v85 = a2;
  v86 = v25;
  v99 = *(a5 + 16);
  v100 = a5;
  v30 = v96;
  if (v99)
  {
    v31 = 0;
    v98 = v100 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    while (1)
    {
      if (v31 >= *(v100 + 16))
      {
        __break(1u);
LABEL_59:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25TUScreenShareDeviceFamilyVSgMd);
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v32 = v102.i64[0];
      _s15ConversationKit11ParticipantVWOcTm_6(v98 + *(v30 + 72) * v31, v102.i64[0], type metadata accessor for Participant);
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_6(v32, v16, v33);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v35 = *(v34 + 48);
      OUTLINED_FUNCTION_37(&v16[*(v34 + 64)]);
      memcpy(v105, &v16[v35], sizeof(v105));
      v36 = type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      v38 = *(v37 + 8);
      v38(v16, v36);
      outlined init with copy of (CGFloat, AutoplayCandidate)(&v105[12], v106, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      outlined destroy of Participant.MediaInfo(v105);
      if (v106[3] == 1)
      {
        goto LABEL_13;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      OUTLINED_FUNCTION_4_53();
      v39 = v95;
      _s15ConversationKit11ParticipantVWOcTm_6(v102.i64[0], v95, v40);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        OUTLINED_FUNCTION_6_115();
        outlined destroy of Collaboration(v39, v44);
        memset(v103, 0, 24);
        v103[3] = 1;
        bzero(&v103[4], 0xB1uLL);
LABEL_17:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
        v30 = v96;
        goto LABEL_14;
      }

      v94 = *(v34 + 48);
      OUTLINED_FUNCTION_37((v39 + *(v34 + 64)));
      memcpy(v105, (v39 + v94), sizeof(v105));
      v38(v39, v36);
      outlined init with copy of (CGFloat, AutoplayCandidate)(&v105[12], v103, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      outlined destroy of Participant.MediaInfo(v105);
      if (v103[3] == 1)
      {
        goto LABEL_17;
      }

      memcpy(v106, v103, 0xD1uLL);
      v41 = v106[5];
      outlined destroy of Participant.ScreenInfo(v106);
      v30 = v96;
      if (v41)
      {
        v24 = v84;
        outlined init with take of Participant(v102.i64[0], v84);
        v73 = v24;
        v74 = 0;
        goto LABEL_19;
      }

LABEL_14:
      ++v31;
      OUTLINED_FUNCTION_1_166();
      outlined destroy of Collaboration(v102.i64[0], v43);
      if (v99 == v31)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_6_115();
    outlined destroy of Collaboration(v16, v42);
    memset(v106, 0, 24);
    OUTLINED_FUNCTION_20_60(1);
LABEL_13:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    goto LABEL_14;
  }

LABEL_18:
  v24 = v84;
  v73 = v84;
  v74 = 1;
LABEL_19:
  v29 = v88;
  __swift_storeEnumTagSinglePayload(v73, v74, 1, v88);
  a2 = v85;
  v25 = v86;
  v28 = v83;
LABEL_20:
  v45 = v25[8];
  outlined init with take of Participant?(v24, v97 + v45);
  v46 = v90;
  if (v28(v90, a2))
  {
    v47 = (*(a2 + 200))(v46, a2);
    swift_unknownObjectRelease();
    if (v47)
    {
      _s15ConversationKit11ParticipantV21ScreenShareAttributesVyAESo08TUScreeneF0_pcfCTf4en_nSo06TUCalldeF0C_Tt0g5(v47, v105);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit11ParticipantVSgMd);
      __swift_destroy_boxed_opaque_existential_1(v93);
      LOBYTE(v106[0]) = 0;
      v48 = v97 + v25[9];
      result = memcpy(v48, v105, 0x60uLL);
      v48[96] = v106[0];
      return result;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v50 = v87;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v97 + v45, v87, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v50, 1, v29) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit11ParticipantVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v93);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit11ParticipantVSgMd);
    memset(v106, 0, 24);
    OUTLINED_FUNCTION_20_60(1);
LABEL_28:
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    LOBYTE(v103[0]) = 1;
    v52 = v97 + v25[9];
    *(v52 + 4) = 0u;
    *(v52 + 5) = 0u;
    *(v52 + 2) = 0u;
    *(v52 + 3) = 0u;
    *v52 = 0u;
    *(v52 + 1) = 0u;
    v52[96] = 1;
    return result;
  }

  Participant.screenInfo.getter();
  OUTLINED_FUNCTION_1_166();
  outlined destroy of Collaboration(v50, v51);
  if (v106[3] == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit11ParticipantVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v93);
    goto LABEL_28;
  }

  memcpy(v105, v106, 0xD1uLL);
  v53 = *&v105[14];
  v54 = v105[26];
  if (v105[26])
  {
LABEL_32:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit11ParticipantVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v93);
LABEL_33:
    v55 = 0x4024000000000000;
  }

  else if (v105[16])
  {
    switch(v105[23])
    {
      case 0:
      case 1:
      case 4:
        goto LABEL_32;
      case 2:
        v75 = *&v105[8];
        v76 = *&v105[9];
        if (LOBYTE(v105[12]))
        {
          v75 = 1.0;
          v76 = 1.0;
        }

        v77 = *&v105[13] * (v75 / *&v105[14]);
        v78 = *&v105[13] * (v76 / *&v105[14]);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        v79 = static UIView.screenScale.getter();
        v80 = round(v77 * v79) / v79;
        v81 = static UIView.screenScale.getter();
        v82 = fabs(v80 / (round(v78 * v81) / v81));
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit11ParticipantVSgMd);
        __swift_destroy_boxed_opaque_existential_1(v93);
        if (v82 < 0.01)
        {
          goto LABEL_33;
        }

        v55 = 0x4049000000000000;
        break;
      case 3:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit11ParticipantVSgMd);
        __swift_destroy_boxed_opaque_existential_1(v93);
        v55 = 0x4034000000000000;
        break;
      default:
        goto LABEL_59;
    }
  }

  else
  {
    v55 = v105[15];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit11ParticipantVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v93);
  }

  v56 = v105[26];
  v57 = v105[23];
  v58 = v105[24];
  v59 = v105[25];
  v101 = *&v105[17];
  v102 = *&v105[19];
  v60 = *&v105[21];
  v61 = *&v105[22];
  result = outlined destroy of Participant.ScreenInfo(v105);
  v62 = 1.0;
  if ((v54 & 1) == 0)
  {
    v62 = v53;
  }

  LOBYTE(v103[0]) = 0;
  v63 = 0.0;
  if (v56)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v60;
  }

  if (v56)
  {
    v65 = -1;
  }

  else
  {
    v63 = v61;
    v65 = 0;
  }

  v66 = vdupq_n_s64(v65);
  v67 = v97 + v25[9];
  *v67 = v62;
  if (v56)
  {
    v68 = 0;
  }

  else
  {
    v68 = v57;
  }

  v104 = 0;
  if (v56)
  {
    v69 = 0;
  }

  else
  {
    v69 = v58;
  }

  if (v56)
  {
    v70 = 0;
  }

  else
  {
    v70 = v59;
  }

  *(v67 + 1) = v55;
  v71 = vbslq_s8(v66, xmmword_1BC4C1E40, v101);
  v72 = vbslq_s8(v66, xmmword_1BC4BD490, v102);
  v67[16] = 0;
  *(v67 + 40) = v72;
  *(v67 + 24) = v71;
  *(v67 + 7) = v64;
  *(v67 + 8) = v63;
  *(v67 + 9) = v68;
  *(v67 + 10) = v69;
  *(v67 + 11) = v70;
  v67[96] = 0;
  return result;
}

uint64_t TUScreenShareDeviceFamily.displayName.getter(uint64_t a1)
{
  v2 = a1;
  switch(a1)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v3 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v6 = 6512973;
      v7 = 0xE300000000000000;
      goto LABEL_6;
    case 2:
      v9 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v7 = 0xE600000000000000;
      goto LABEL_6;
    case 3:
      v10 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v6 = 1684099177;
      v7 = 0xE400000000000000;
      goto LABEL_6;
    case 4:
      v8 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v7 = 0x80000001BC517F90;
      v6 = 0xD000000000000010;
LABEL_6:
      v11.super.isa = v1;
      v2 = OUTLINED_FUNCTION_17_0(v6, v7, v4, v5, v11);

LABEL_7:
      result = v2;
      break;
    default:
      OUTLINED_FUNCTION_18_61();
      MEMORY[0x1BFB20B10](0xD000000000000038, 0x80000001BC517F50);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v13);

      result = OUTLINED_FUNCTION_17_66();
      __break(1u);
      break;
  }

  return result;
}

Swift::Int InCallControlsActivityCellViewModel.CellStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InCallControlsActivityCellViewModel.CellStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InCallControlsActivityCellViewModel.CellStyle.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t InCallControlsActivityCellViewModel.participants.getter()
{
  type metadata accessor for InCallControlsActivityCellViewModel();
}

void *InCallControlsActivityCellViewModel.sharingAttributes.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InCallControlsActivityCellViewModel() + 36));

  return memcpy(a1, v3, 0x61uLL);
}

uint64_t TUScreenShareDeviceFamily.linkPresentationImage.getter(void *a1)
{
  v1 = a1;
  v2 = 0xE600000000000000;
  v3 = 0x656E6F687069;
  switch(a1)
  {
    case 0uLL:
      goto LABEL_8;
    case 1uLL:
      v2 = 0xE700000000000000;
      v3 = 0x79616C70736964;
      goto LABEL_5;
    case 2uLL:
      goto LABEL_5;
    case 3uLL:
      v2 = 0xEE00657061637364;
      v3 = 0x6E616C2E64617069;
      goto LABEL_5;
    case 4uLL:
      v2 = 0xEA00000000006F72;
      v3 = 0x702E6E6F69736976;
LABEL_5:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v4 = @nonobjc UIImage.init(_systemName:)(v3, v2);
      if (v4)
      {
        v5 = v4;
        v1 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];
      }

      else
      {
        v1 = 0;
      }

LABEL_8:
      result = v1;
      break;
    default:
      OUTLINED_FUNCTION_18_61();
      MEMORY[0x1BFB20B10](0xD000000000000038, 0x80000001BC517F50);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v7);

      result = OUTLINED_FUNCTION_17_66();
      __break(1u);
      break;
  }

  return result;
}

uint64_t InCallControlsActivityCellViewModel.shouldCollaborationShowAppIcon.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - v3;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v5 = OUTLINED_FUNCTION_2_14();
  v6(v5);
  v7 = type metadata accessor for Collaboration(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit13CollaborationVSgMd);
    return 0;
  }

  v9 = *(v4 + 11);
  v8 = *(v4 + 12);

  OUTLINED_FUNCTION_5_133();
  outlined destroy of Collaboration(v4, v10);
  if (!v8)
  {
    return 0;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_8_5();
  }

  v11 = (*(*static CollaborationImageFetcher.shared + 136))(v9, v8);

  if (v11)
  {

    return 0;
  }

  return 1;
}

uint64_t InCallControlsActivityCellViewModel.shouldBeSmallCell.getter()
{
  OUTLINED_FUNCTION_7_100();
  v0 = OUTLINED_FUNCTION_2_14();
  v2 = v1(v0);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 activity];
    v5 = [v4 isScreenSharingActivity];

    if (v5)
    {
      return 1;
    }
  }

  return InCallControlsActivityCellViewModel.shouldCollaborationShowAppIcon.getter();
}

uint64_t type metadata accessor for InCallControlsActivityCellViewModel()
{
  result = type metadata singleton initialization cache for InCallControlsActivityCellViewModel;
  if (!type metadata singleton initialization cache for InCallControlsActivityCellViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of Collaboration(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 _s15ConversationKit11ParticipantV21ScreenShareAttributesVyAESo08TUScreeneF0_pcfCTf4en_nSo06TUCalldeF0C_Tt0g5@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 displayScale];
  if (v4)
  {
    v5 = v4;
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [a1 cornerRadius];
  v9 = v8;
  v10 = 0;
  v11 = 0;
  if (v8)
  {
    [v8 doubleValue];
    v11 = v12;
  }

  v28 = v9 == 0;
  v13 = [a1 systemRootLayerTransform];
  if (v13)
  {
    v14 = v13;
    [v13 CGAffineTransformValue];
    v20 = v24;
    v22 = v25;
    v10 = v26;
    v15 = v27;
  }

  else
  {
    v22 = xmmword_1BC4BD490;
    v20 = xmmword_1BC4C1E40;
    v15 = 0;
  }

  v16 = [a1 deviceFamily];
  v17 = [a1 deviceHomeButtonType];
  v18 = [a1 style];

  *a2 = v7;
  *(a2 + 8) = v11;
  *(a2 + 16) = v28;
  result = v21;
  *(a2 + 40) = v23;
  *(a2 + 24) = v21;
  *(a2 + 56) = v10;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsActivityCellViewModel.CellStyle and conformance InCallControlsActivityCellViewModel.CellStyle()
{
  result = lazy protocol witness table cache variable for type InCallControlsActivityCellViewModel.CellStyle and conformance InCallControlsActivityCellViewModel.CellStyle;
  if (!lazy protocol witness table cache variable for type InCallControlsActivityCellViewModel.CellStyle and conformance InCallControlsActivityCellViewModel.CellStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsActivityCellViewModel.CellStyle and conformance InCallControlsActivityCellViewModel.CellStyle);
  }

  return result;
}

uint64_t type metadata completion function for InCallControlsActivityCellViewModel()
{
  v0 = type metadata accessor for Call(319, &lazy cache variable for type metadata for Call);
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for Call(319, &lazy cache variable for type metadata for Activity);
    if (v2 <= 0x3F)
    {
      _s15ConversationKit11ParticipantVSgMaTm_0(319, &lazy cache variable for type metadata for Participant?, MEMORY[0x1E69E6720]);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        _s15ConversationKit11ParticipantVSgMaTm_0(319, &lazy cache variable for type metadata for [Participant], MEMORY[0x1E69E62F8]);
        if (v6 > 0x3F)
        {
          return v5;
        }

        else
        {
          type metadata accessor for Participant.ScreenShareAttributes?();
          v0 = v7;
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t type metadata accessor for Call(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void _s15ConversationKit11ParticipantVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Participant(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for Participant.ScreenShareAttributes?()
{
  if (!lazy cache variable for type metadata for Participant.ScreenShareAttributes?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Participant.ScreenShareAttributes?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InCallControlsActivityCellViewModel.CellStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t SharePlayAppCell.init(app:onTap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  v6 = *(type metadata accessor for SharePlayAppCell() + 24);
  *(a4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for SharePlayAppCell()
{
  result = type metadata singleton initialization cache for SharePlayAppCell;
  if (!type metadata singleton initialization cache for SharePlayAppCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SharePlayAppCell.app.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;

  return v6;
}

double SharePlayAppCell.icon.getter@<D0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28[-v12 - 8];
  v14 = *(v1 + 32);
  Image.init(uiImage:)();
  (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v17 = [objc_opt_self() mainScreen];
  v18 = [v17 traitCollection];

  v19 = [v18 userInterfaceStyle];
  v20 = MEMORY[0x1E697DBA8];
  if (v19 != 2)
  {
    v20 = MEMORY[0x1E697DBB8];
  }

  (*(v3 + 104))(v5, *v20, v2);
  v21 = &v13[*(v11 + 44)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd);
  (*(v3 + 32))(v21 + *(v22 + 28), v5, v2);
  *v21 = KeyPath;
  *v13 = v15;
  *(v13 + 1) = 0x3FF0000000000000;
  *(v13 + 8) = 0;
  static Layout.SharePlayDiscoverabilityView.values.getter(v28);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = v27;
  outlined init with take of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>(v13, v27);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd) + 36));
  v25 = v30;
  *v24 = v29;
  v24[1] = v25;
  result = v31[0];
  v24[2] = *v31;
  return result;
}

uint64_t SharePlayAppCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for SharePlayAppCell();
  v45 = *(v3 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityTraits();
  OUTLINED_FUNCTION_1();
  v41 = v6;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AccessibilityChildBehavior();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6VStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameM0VG_AGyAGyAA0I0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeM0VGtGGAA05_FlextM0VGAA6HStackVyAKyAY_AGyAGyA3_ARySiSgGGA10_GtGGGGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedL0VyAA6VStackVyAA05TupleC0VyAMyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameS0VG_AMyAMyAcAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AXyAA13TextAlignmentOGGAA010_FixedSizeS0VGtGGAA05_FlexzS0VGAA6HStackVyAQyA3__AMyAMyA7_AXySiSgGGA14_GtGGGG_Qo_Md);
  OUTLINED_FUNCTION_1();
  v37 = v17;
  v38 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyAA012_ConditionalD0VyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameS0VG_ACyACyAeAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AXyAA13TextAlignmentOGGAA010_FixedSizeS0VGtGGAA05_FlexzS0VGAA6HStackVyAQyA3__ACyACyA7_AXySiSgGGA14_GtGGGG_Qo_AA0i10AttachmentW0VGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  closure #1 in SharePlayAppCell.body.getter(v1, v16);
  static AccessibilityChildBehavior.ignore.getter();
  v27 = lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>>> and conformance <A> Group<A>();
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v12, v39);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6VStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameM0VG_AGyAGyAA0I0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeM0VGtGGAA05_FlextM0VGAA6HStackVyAKyAY_AGyAGyA3_ARySiSgGGA10_GtGGGGMd);
  v28 = *(v1 + 24);
  v49 = *(v1 + 16);
  v50 = v28;
  v47 = v13;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v29 = v37;
  View.accessibilityLabel<A>(_:)();
  (*(v38 + 8))(v20, v29);
  v30 = v40;
  static AccessibilityTraits.isButton.getter();
  MEMORY[0x1BFB1E4A0](v30, v36);
  (*(v41 + 8))(v30, v42);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyAA012_ConditionalD0VyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameS0VG_ACyACyAeAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AXyAA13TextAlignmentOGGAA010_FixedSizeS0VGtGGAA05_FlexzS0VGAA6HStackVyAQyA3__ACyACyA7_AXySiSgGGA14_GtGGGG_Qo_AA0i10AttachmentW0VGMd);
  v31 = v43;
  outlined init with copy of SharePlayAppCell(v2, v43);
  v32 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v33 = swift_allocObject();
  outlined init with take of SharePlayAppCell(v31, v33 + v32);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  View.onTapGesture(count:perform:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyAA012_ConditionalD0VyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameS0VG_ACyACyAeAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AXyAA13TextAlignmentOGGAA010_FixedSizeS0VGtGGAA05_FlexzS0VGAA6HStackVyAQyA3__ACyACyA7_AXySiSgGGA14_GtGGGG_Qo_AA0i10AttachmentW0VGMd);
}

uint64_t closure #1 in SharePlayAppCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA4TextVANySiSgGGAA010_FixedSizeK0VGtGGMd);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v30 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameM0VG_AGyAGyAA0I0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeM0VGtGGAA05_FlextM0VGAA6HStackVyAKyAY_AGyAGyA3_ARySiSgGGA10_GtGG_GMd);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA0E0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_ACyACyAA0G0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGAA05_FlexrK0VGMd);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - v11;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  type metadata accessor for SharePlayAppCell();
  v19 = a1;
  specialized Environment.wrappedValue.getter(v18);
  (*(v13 + 104))(v15, *MEMORY[0x1E697E6D0], v12);
  LOBYTE(a1) = static DynamicTypeSize.< infix(_:_:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (a1)
  {
    v21 = v32;
    v22 = v34;
    static Layout.SharePlayDiscoverabilityView.values.getter(v37);
    v23 = v37[3];
    *v8 = static HorizontalAlignment.center.getter();
    *(v8 + 1) = v23;
    v8[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameG0VG_AKyAKyAA0D0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeG0VGtGGMd);
    closure #1 in closure #1 in SharePlayAppCell.body.getter(v19, &v8[*(v24 + 44)]);
    static Layout.SharePlayDiscoverabilityView.values.getter(&v38);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v25 = v30;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v8, v30, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA0E0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGMd);
    memcpy((v25 + *(v21 + 36)), __src, 0x70uLL);
    v26 = v31;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v25, v31, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_ACyACyAA0G0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGAA05_FlexrK0VGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v26, v22, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_ACyACyAA0G0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGAA05_FlexrK0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA4TextVANySiSgGGAA010_FixedSizeK0VGtGGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_ACyACyAA0G0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGAA05_FlexrK0VGMd);
  }

  else
  {
    static Layout.SharePlayDiscoverabilityView.values.getter(__src);
    v28 = __src[3];
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = v28;
    v4[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameG0VG_AKyAKyAA4TextVARySiSgGGAA010_FixedSizeG0VGtGGMd);
    closure #2 in closure #1 in SharePlayAppCell.body.getter(v19, &v4[*(v29 + 44)]);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v4, v34, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA4TextVANySiSgGGAA010_FixedSizeK0VGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA4TextVANySiSgGGAA010_FixedSizeK0VGtGGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA4TextVANySiSgGGAA010_FixedSizeK0VGtGGMd);
  }
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6VStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameM0VG_AGyAGyAA0I0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeM0VGtGGAA05_FlextM0VGAA6HStackVyAKyAY_AGyAGyA3_ARySiSgGGA10_GtGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameL0VG_AEyAEyAA0H0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_APyAA0X9AlignmentOGGAA010_FixedSizeL0VGtGGAA05_FlexsL0VGAA6HStackVyAIyAW_AEyAEyA1_APySiSgGGA8_GtGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA4TextVANySiSgGGAA010_FixedSizeK0VGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_ACyACyAA0G0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGAA05_FlexrK0VGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameK0VG_AGyAGyAA0E0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ANyAA0W9AlignmentOGGAA010_FixedSizeK0VGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in SharePlayAppCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAA16_FixedSizeLayoutVGMd) - 8;
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v37 - v14;
  SharePlayAppCell.icon.getter(&v37 - v14);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v42 = v15;
  v43 = v16;
  lazy protocol witness table accessor for type String and conformance String();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.caption2.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  outlined consume of Text.Storage(v17, v19, v21 & 1);

  v42 = v22;
  v43 = v24;
  v44 = v26 & 1;
  v45 = v28;
  View.lineLimit(_:reservesSpace:)();
  outlined consume of Text.Storage(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v30 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGMd) + 36)];
  *v30 = KeyPath;
  v30[8] = 1;
  v31 = v38;
  *&v10[*(v39 + 44)] = 256;
  v32 = v37;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v37, v31, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  v33 = v40;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v10, v40, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAA16_FixedSizeLayoutVGMd);
  v34 = v41;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v31, v41, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VG_ACyACyAA4ViewPAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AJyAA0U9AlignmentOGGAA010_FixedSizeH0VGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v33, v34 + *(v35 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAA16_FixedSizeLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAA16_FixedSizeLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAA16_FixedSizeLayoutVGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
}

uint64_t closure #2 in closure #1 in SharePlayAppCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  SharePlayAppCell.icon.getter(&v34 - v10);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v41 = v12;
  v42 = v13;
  lazy protocol witness table accessor for type String and conformance String();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.caption2.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v19 = Text.font(_:)();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v4) = v4 & 1;
  LOBYTE(v41) = v4;
  LOBYTE(v38) = 0;
  v26 = v36;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v11, v36, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  v27 = v26;
  v28 = v35;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v27, v35, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VG_ACyACyAA4TextVAJySiSgGGAA010_FixedSizeH0VGtMd) + 48);
  *&v38 = v19;
  *(&v38 + 1) = v21;
  LOBYTE(v39) = v4;
  *(&v39 + 1) = *v37;
  DWORD1(v39) = *&v37[3];
  *(&v39 + 1) = v24;
  *v40 = KeyPath;
  *&v40[8] = 2;
  v40[16] = 0;
  *&v40[17] = 256;
  v30 = v38;
  v31 = v39;
  v32 = *v40;
  *(v29 + 47) = *&v40[15];
  *(v29 + 16) = v31;
  *(v29 + 32) = v32;
  *v29 = v30;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v38, &v41, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_FixedSizeLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
  v41 = v19;
  v42 = v21;
  v43 = v4;
  *v44 = *v37;
  *&v44[3] = *&v37[3];
  v45 = v24;
  v46 = KeyPath;
  v47 = 2;
  v48 = 0;
  v49 = 256;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v41, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_FixedSizeLayoutVGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameH0VGMd);
}

uint64_t outlined init with copy of SharePlayAppCell(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayAppCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SharePlayAppCell(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayAppCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in SharePlayAppCell.body.getter()
{
  v1 = *(type metadata accessor for SharePlayAppCell() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 40);
  v4 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v4;
  v7 = *(v2 + 32);
  return v3(v6);
}

void type metadata completion function for SharePlayAppCell()
{
  type metadata accessor for ()();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<DynamicTypeSize>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<DynamicTypeSize>()
{
  if (!lazy cache variable for type metadata for Environment<DynamicTypeSize>)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<DynamicTypeSize>);
    }
  }
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ParticipantAvatar.init(_:colorStyle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = *a2;
  outlined init with copy of Participant?(a1, v18 - v7);
  v10 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    outlined destroy of Participant?(a1);
    result = outlined destroy of Participant?(v8);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
  }

  else
  {
    Participant.contactDetails.getter();
    outlined destroy of Participant?(a1);
    v18[0] = v18[1];
    v12 = v19;
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    result = outlined destroy of Participant(v8);
    v17 = v18[0];
  }

  *a3 = v17;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;
  *(a3 + 56) = v9;
  return result;
}

id ParticipantContactView.gradient.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView);
  v4 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  swift_beginAccess();
  *(v3 + v4) = a1;

  return GradientView.updateGradient()();
}

void ParticipantContactView.contactDetails.setter(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  *(v4 + 32) = v9;
  *(v4 + 48) = v3;
  outlined consume of ParticipantContactDetails?(v5, v6, v7);
  ParticipantContactView.contactDetails.didset();
}

void *ParticipantContactView.contactDetails.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_0_202();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return outlined copy of ParticipantContactDetails?(v2, v3, v4);
}

void *key path getter for ParticipantContactView.contactDetails : ParticipantContactView@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return outlined copy of ParticipantContactDetails?(v4, v5, v6);
}

void key path setter for ParticipantContactView.contactDetails : ParticipantContactView(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v7[6] = v6;
  outlined copy of ParticipantContactDetails?(v7[0], v1, v2);
  ParticipantContactView.contactDetails.setter(v7);
}

void ParticipantContactView.contactDetails.didset()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  outlined copy of ParticipantContactDetails?(v8, v2, v3);
  ParticipantContactView.updateViews(using:)(&v8);
  outlined consume of ParticipantContactDetails?(v8, v9, v10);
}

id ParticipantContactView.updateViews(using:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    v18 = *&v1[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactMonogram];
    MonogramView.text.setter(0, 0xE000000000000000);
    v19 = *&v1[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView];
    v20 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(6);
    [v19 setImage_];

    v21 = [v19 layer];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = CAFilter.__allocating_init(type:)(v22, v23);
    [v21 setCompositingFilter_];

    [v19 setHidden_];
    [v18 setHidden_];
LABEL_23:
    [*&v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView] setHidden_];
    goto LABEL_24;
  }

  v3 = *a1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = (*(*static Defaults.shared + 640))();
  if (v3 && (v7 = [v3 thumbnailImageData]) != 0)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if ((v6 & 1) == 0)
    {
LABEL_7:
      outlined consume of Data?(v9, v11);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (v11 >> 60 == 15)
  {
LABEL_10:
    v12 = *&v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactMonogram];
    if (v3)
    {

      v13 = String.count.getter() - 1;
      v14 = v4;
      v15 = v5;
      if (v13 < 2)
      {
        goto LABEL_14;
      }
    }

    v14 = 0;
    v15 = 0xE000000000000000;
LABEL_14:
    MonogramView.text.setter(v14, v15);
    v16 = *&v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView];
    if (v3 && (String.count.getter() - 1) < 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(6);
    }

    [v16 setImage_];

    v25 = [v16 layer];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = CAFilter.__allocating_init(type:)(v26, v27);
    [v25 setCompositingFilter_];

    if (v3)
    {
      [v16 setHidden_];
      v29 = (String.count.getter() - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      [v16 setHidden_];
      v29 = 1;
    }

    [v12 setHidden_];
    goto LABEL_23;
  }

  v31 = *&v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  outlined copy of Data?(v9, v11);
  outlined copy of Data._Representation(v9, v11);
  v32 = UIImage.__allocating_init(data:)(v9, v11);
  [v31 setImage_];

  v33 = [v31 layer];
  [v33 setCompositingFilter_];

  [v31 setHidden_];
  [*&v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactMonogram] setHidden_];
  [*&v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView] setHidden_];
  outlined consume of Data?(v9, v11);
  outlined consume of Data?(v9, v11);
LABEL_24:
  [v2 setNeedsLayout];

  return [v2 layoutIfNeeded];
}

void (*ParticipantContactView.contactDetails.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ParticipantContactView.contactDetails.modify;
}

void ParticipantContactView.contactDetails.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ParticipantContactView.contactDetails.didset();
  }
}

id (*ParticipantContactView.gradient.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ParticipantContactView.gradient.getter();
  return ParticipantContactView.gradient.modify;
}

id ParticipantContactView.gradient.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ParticipantContactView.gradient.setter(*a1);
  }

  ParticipantContactView.gradient.setter(v2);
}

char *ParticipantContactView.init(colorStyle:)(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v7 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v8 = &v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails];
  *(v8 + 6) = 0;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = 0u;
  v24 = v5;
  v9 = objc_allocWithZone(type metadata accessor for MonogramView());
  *&v2[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactMonogram] = MonogramView.init(colorStyle:)(&v24);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView;
  [*&v10[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView] setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView;
  v13 = *&v10[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView];
  v14 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(6);
  [v13 setImage_];

  if (v5)
  {
    OUTLINED_FUNCTION_3_149();
    if (one-time initialization token for overlayContent != -1)
    {
      swift_once();
    }

    [v10 setBackgroundColor_];
    v15 = *&v10[v12];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 whiteColor];
    [v17 setTintColor_];

    goto LABEL_11;
  }

  [v10 addSubview_];
  OUTLINED_FUNCTION_3_149();
  v19 = one-time initialization token for contactMonogramIcon;
  v20 = *&v10[v12];
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setTintColor_];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 336))() & 1) == 0)
  {
    v18 = [v10 layer];
    closure #1 in ParticipantContactView.init(colorStyle:)(v18);
LABEL_11:
  }

  [v10 addSubview_];
  v21 = [v10 layer];
  [v21 setShadowPathIsBounds_];

  return v10;
}

id closure #1 in ParticipantContactView.init(colorStyle:)(void *a1)
{
  if (one-time initialization token for shadow != -1)
  {
    swift_once();
  }

  v2 = [static Colors.ParticipantViews.shadow CGColor];
  [a1 setShadowColor_];

  [a1 setShadowRadius_];
  LODWORD(v3) = 1062501089;

  return [a1 setShadowOpacity_];
}

id ParticipantContactView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ParticipantContactView.init()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  OUTLINED_FUNCTION_2_157(v0 + OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ParticipantContactView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantContactView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  OUTLINED_FUNCTION_2_157(v0 + OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails);
  OUTLINED_FUNCTION_1_167();
  __break(1u);
}

id ParticipantContactView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantContactView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  OUTLINED_FUNCTION_2_157(v0 + OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails);
  OUTLINED_FUNCTION_1_167();
  __break(1u);
}

Swift::Void __swiftcall ParticipantContactView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantContactView._layout()();
}

void ParticipantContactView._layout()()
{
  v1 = v0;
  [v0 bounds];
  if (!CGRectIsInfinite(v20) || ([v0 bounds], !CGRectIsEmpty(v21)))
  {
    [v0 bounds];
    v3 = v2;
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView];
    v7 = [*&v1[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_gradientView] superview];
    if (v7)
    {

      v8 = [v6 layer];
    }

    else
    {
      v8 = [v1 layer];
    }

    v9 = v8;
    v10 = v9;
    if (v5 >= v3)
    {
      v11 = v3;
    }

    else
    {
      v11 = v5;
    }

    [v9 setCornerRadius_];

    [v6 setFrame_];
    [*&v1[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactMonogram] setFrame_];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (((*(*static Defaults.shared + 640))() & 1) != 0 && (v12 = &v1[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactDetails], swift_beginAccess(), *(v12 + 2)) && *v12)
    {
      v13 = *&v1[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView];
      [v13 setFrame_];
      v14 = [v13 layer];
      [v14 setMasksToBounds_];
      [v13 frame];
      [v14 setCornerRadius_];
    }

    else
    {
      v15 = *&v1[OBJC_IVAR____TtC15ConversationKit22ParticipantContactView_contactImageView];
      v23.origin.x = 0.0;
      v23.origin.y = 0.0;
      v23.size.width = v3;
      v23.size.height = v5;
      v16 = fmax(floor(v3 * 0.04), 1.0);
      v24 = CGRectInset(v23, v16, v16);
      width = v24.size.width;
      height = v24.size.height;
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = v3;
      v24.size.height = v5;
      v19 = CGRectGetMidX(v24) - width * 0.5;
      v25.origin.x = 0.0;
      v25.origin.y = 0.0;
      v25.size.width = v3;
      v25.size.height = v5;
      [v15 setFrame_];
      v14 = [v15 layer];
      [v14 setMasksToBounds_];
      [v14 setCornerRadius_];
    }
  }
}

id ParticipantContactView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ParticipantAvatar.contactDetails.getter()
{
  v0 = OUTLINED_FUNCTION_0_202();
  *v2 = v0;
  v2[1] = v1;
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  v2[6] = v7;
  return outlined copy of ParticipantContactDetails?(v0, v1, v3);
}

__n128 ParticipantAvatar.contactDetails.setter(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = OUTLINED_FUNCTION_0_202();
  outlined consume of ParticipantContactDetails?(v4, v5, v6);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = v9;
  *(v1 + 32) = v9;
  *(v1 + 48) = v3;
  return result;
}

__n128 ParticipantAvatar.init(contactDetails:colorStyle:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = v3;
  *(a3 + 56) = v4;
  return result;
}

void *outlined copy of ParticipantContactDetails?(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
  }

  return result;
}

char *ParticipantAvatar.makeUIView(context:)()
{
  v3 = *(v0 + 56);
  v1 = objc_allocWithZone(type metadata accessor for ParticipantContactView());
  return ParticipantContactView.init(colorStyle:)(&v3);
}

void ParticipantAvatar.updateUIView(_:context:)()
{
  v6[0] = OUTLINED_FUNCTION_0_202();
  v6[1] = v0;
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v5;
  outlined copy of ParticipantContactDetails?(v6[0], v0, v1);
  ParticipantContactView.contactDetails.setter(v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ParticipantAvatar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ParticipantAvatar and conformance ParticipantAvatar();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ParticipantAvatar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ParticipantAvatar and conformance ParticipantAvatar();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ParticipantAvatar()
{
  lazy protocol witness table accessor for type ParticipantAvatar and conformance ParticipantAvatar();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ParticipantAvatar and conformance ParticipantAvatar()
{
  result = lazy protocol witness table cache variable for type ParticipantAvatar and conformance ParticipantAvatar;
  if (!lazy protocol witness table cache variable for type ParticipantAvatar and conformance ParticipantAvatar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantAvatar and conformance ParticipantAvatar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantAvatar and conformance ParticipantAvatar;
  if (!lazy protocol witness table cache variable for type ParticipantAvatar and conformance ParticipantAvatar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantAvatar and conformance ParticipantAvatar);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit25ParticipantContactDetailsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ParticipantAvatar(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantAvatar(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t *CollaborationImageFetcher.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_8_5();
  }

  return &static CollaborationImageFetcher.shared;
}

void IMCoreCollaborationImageProvider.fetchCollaborationImage(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = MEMORY[0x1BFB209B0](a1, a2);
  static DispatchQoS.default.getter();
  DispatchQoS.qosClass.getter();
  (*(v17 + 8))(v21, v15);
  DispatchQoS.QoSClass.rawValue.getter();
  (*(v10 + 8))(v14, v8);
  type metadata accessor for OS_dispatch_queue();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v30 = partial apply for closure #1 in IMCoreCollaborationImageProvider.fetchCollaborationImage(for:completion:);
  v31 = v24;
  OUTLINED_FUNCTION_5_73();
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed [Any]?) -> ();
  v29 = &block_descriptor_102;
  v25 = _Block_copy(aBlock);

  IMSPIQueryMessageWithGUIDAndLoadAttachmentsWithQOS();

  _Block_release(v25);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [Any]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t static CollaborationImageFetcher.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_8_5();
  }
}

uint64_t CollaborationImageFetcher.__allocating_init(provider:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

UIImage_optional __swiftcall CollaborationImageFetcher.image(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = *(v1 + 56);
  *(v9 - v8) = v11;
  (*(v6 + 104))(v9 - v8, *MEMORY[0x1E69E8020], v4);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v13 = (*(v6 + 8))(v10, v4);
  if (v11)
  {
    swift_beginAccess();
    v15 = *(v1 + 64);

    v16 = specialized Dictionary.subscript.getter(countAndFlagsBits, object, v15);

    if (v16 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = v13;
  result.is_nil = v14;
  return result;
}

uint64_t CollaborationImageFetcher.startTrackingCollaborations(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  outlined init with copy of IDSLookupManager(a1, v27);
  v22 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v27, (v22 + 2));
  v22[7] = v4;
  v22[8] = a2;
  v22[9] = a3;
  aBlock[4] = partial apply for closure #1 in CollaborationImageFetcher.startTrackingCollaborations(with:completion:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  aBlock[2] = v23;
  aBlock[3] = &block_descriptor_6_6;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_5_134();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v21, v14, v24);
  _Block_release(v24);
  (*(v10 + 8))(v14, v8);
  (*(v17 + 8))(v21, v15);
}

uint64_t closure #1 in CollaborationImageFetcher.startTrackingCollaborations(with:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  Conversation.currentCollaboration.getter(v14, v15, v13);
  outlined init with copy of Collaboration?(v13, v10);
  v16 = type metadata accessor for Collaboration(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v16) == 1)
  {
    v17 = outlined destroy of Collaboration?(v10);
LABEL_6:
    (*(*a2 + 152))(v17);
    return outlined destroy of Collaboration?(v13);
  }

  v19 = *(v10 + 11);
  v18 = *(v10 + 12);

  v17 = outlined destroy of Collaboration(v10);
  if (!v18)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  v20 = a2[8];

  v21 = specialized Dictionary.subscript.getter(v19, v18, v20);

  if (v21 == 1)
  {
    (*(*a2 + 152))(v22);
    swift_beginAccess();
    v23 = specialized Dictionary._Variant.removeValue(forKey:)(v19, v18);
    swift_endAccess();
    outlined consume of IMAccount??(v23);
    v24 = a2[6];
    v30 = a2[5];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v30);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v19;
    v26[4] = v18;
    v26[5] = a3;
    v26[6] = a4;
    v27 = *(v24 + 8);

    v27(v19, v18, partial apply for closure #1 in closure #1 in CollaborationImageFetcher.startTrackingCollaborations(with:completion:), v26, v30, v24);

    outlined destroy of Collaboration?(v13);
  }

  outlined consume of IMAccount??(v21);
  return outlined destroy of Collaboration?(v13);
}

uint64_t closure #1 in closure #1 in CollaborationImageFetcher.startTrackingCollaborations(with:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + 56);

    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = a1;
    v18[6] = v23;
    v18[7] = a6;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in CollaborationImageFetcher.startTrackingCollaborations(with:completion:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_30_3;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    static DispatchQoS.unspecified.getter();
    v26 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    MEMORY[0x1BFB215C0](0, v16, v13, v19);
    _Block_release(v19);

    (*(v25 + 8))(v13, v11);
    (*(v14 + 8))(v16, v24);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in CollaborationImageFetcher.startTrackingCollaborations(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    v9 = a4;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + 64);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v8 + 64) = v10;
    swift_endAccess();
  }

  if (a4)
  {
    return a5(result);
  }

  return result;
}

Swift::Void __swiftcall CollaborationImageFetcher.stopTrackingAll()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v21 = partial apply for closure #1 in CollaborationImageFetcher.stopTrackingAll();
  v22 = v0;
  OUTLINED_FUNCTION_5_73();
  v18 = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v19 = v15;
  v20 = &block_descriptor_9_2;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_5_134();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v7, v16);
  _Block_release(v16);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

uint64_t closure #1 in CollaborationImageFetcher.stopTrackingAll()()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySSSo7UIImageCSg_GMd);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  return swift_endAccess();
}

uint64_t CollaborationImageFetcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t CollaborationImageFetcher.__deallocating_deinit()
{
  CollaborationImageFetcher.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized CollaborationImageFetcher.__allocating_init(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollaborationImageFetcher();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized CollaborationImageFetcher.init(provider:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t specialized CollaborationImageFetcher.init(provider:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for IMCoreCollaborationImageProvider();
  v7 = &protocol witness table for IMCoreCollaborationImageProvider;
  *&v5 = a1;
  type metadata accessor for OS_dispatch_queue();
  *(a2 + 56) = static OS_dispatch_queue.main.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd);
  *(a2 + 64) = Dictionary.init(dictionaryLiteral:)();
  outlined init with take of TapInteractionHandler(&v5, a2 + 16);
  return a2;
}

uint64_t specialized CollaborationImageFetcher.init(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for OS_dispatch_queue();
  *(a2 + 56) = static OS_dispatch_queue.main.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd);
  *(a2 + 64) = Dictionary.init(dictionaryLiteral:)();
  outlined init with take of TapInteractionHandler(&v9, a2 + 16);
  return a2;
}

uint64_t outlined init with copy of Collaboration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Collaboration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CHHandle.tuHandle.getter()
{
  v1 = [v0 type];
  if (v1 > 3)
  {
    v2 = 2;
  }

  else
  {
    v2 = qword_1BC4E53C8[v1];
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  v3 = [v0 value];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  return TUHandle.__allocating_init(type:value:)(v2, v4, v6);
}

void *SpamModelable.formattedInitiatorHandle.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = v4();
  if (!v5 || (v6 = v5, v7 = TUHandle.formattedPhoneNumber.getter(), v9 = v8, v6, !v9))
  {
    v10 = (v4)(a1, a2);
    v7 = v10;
    if (v10)
    {
      v11 = [v10 value];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }
  }

  return v7;
}

uint64_t TUCall.isGroupFaceTimeWithUnknownInitiator.getter()
{
  v1 = [v0 remoteParticipantHandles];
  OUTLINED_FUNCTION_41();
  type metadata accessor for NSObject(v2, v3);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
  OUTLINED_FUNCTION_76();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.count.getter(v6);
  OUTLINED_FUNCTION_72_12();

  if (v1 >= 2)
  {
    TUCall.unknownHandles.getter();
    v7 = OUTLINED_FUNCTION_6_116([v0 initiator]);
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_158();
    OUTLINED_FUNCTION_14_68(v8, v9);
  }

  return OUTLINED_FUNCTION_34_36();
}

void specialized SpamModelable.blockInitiator()()
{
  v0 = RecentsCallItem.initiator.getter();
  [v0 block];
}

Swift::Void __swiftcall SpamModelable.blockInitiator()()
{
  v1 = (*(v0 + 64))();
  [v1 block];
}

void specialized SpamModelable.blockUnknown()()
{
  RecentsCallItem.unknownHandles.getter();
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 16);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v2 + 1;
    [*(v1 + 8 * v2 + 32) block];
    v2 = v4;
  }
}

void *SpamModelable.unblockUnknown()(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = (*(a2 + 72))();
  v5 = result;
  v6 = 0;
  v7 = result[2];
  while (v7 != v6)
  {
    if (v6 >= v5[2])
    {
      __break(1u);
      return result;
    }

    v8 = v6 + 1;
    result = [v5[v6 + 4] *a3];
    v6 = v8;
  }
}

id specialized SpamModelable.pendingOrHandledNickname.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = specialized SpamModelable.formattedInitiatorHandle.getter();
  v2 = NameAndPhotoUtilities.pendingOrCurrentIMNickname(from:)(v0, v1);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static ReportSpamManager.logger);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10IMNicknameCSgMd);
    v9 = Optional.debugDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v5, v6, "reporting nickname: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  return v2;
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = specialized SpamModelable.formattedInitiatorHandle.getter();
  v2 = NameAndPhotoUtilities.pendingOrCurrentIMNickname(from:)(v0, v1);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static ReportSpamManager.logger);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10IMNicknameCSgMd);
    v9 = Optional.debugDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v5, v6, "reporting nickname: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  return v2;
}

void SpamModelable.pendingOrHandledNickname.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_272();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_18_4();
  }

  v24 = OUTLINED_FUNCTION_45_1();
  v26 = v25(v24);
  NameAndPhotoUtilities.pendingOrCurrentIMNickname(from:)(v26, v27);
  OUTLINED_FUNCTION_72_12();

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_203();
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static ReportSpamManager.logger);
  v29 = v23;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_42();
    v33 = OUTLINED_FUNCTION_23();
    a10 = v33;
    *v32 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10IMNicknameCSgMd);
    v34 = Optional.debugDescription.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &a10);

    *(v32 + 4) = v36;
    OUTLINED_FUNCTION_13_76(&dword_1BBC58000, v37, v38, "reporting nickname: %s");
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_194_0();
}

unint64_t specialized SpamModelable.unknownSenderRecordInfo.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0.value._countAndFlagsBits = specialized SpamModelable.formattedInitiatorHandle.getter();
  v1 = NameAndPhotoUtilities.unknownSenderRecordInfo(for:)(v0);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static ReportSpamManager.logger);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGSgMd);
    v7 = Optional.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "reporting unknownSenderRecordInfo: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  return v1;
}