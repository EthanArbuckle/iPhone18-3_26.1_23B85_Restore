id @nonobjc CNSocialProfile.init(urlString:username:userIdentifier:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v15 = MEMORY[0x1BFB209B0]();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
LABEL_3:
      v16 = MEMORY[0x1BFB209B0](a3, a4);

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v17 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v18 = 0;
      goto LABEL_10;
    }
  }

  v16 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v17 = MEMORY[0x1BFB209B0](a5, a6);

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = MEMORY[0x1BFB209B0](a7, a8);

LABEL_10:
  v19 = [v8 initWithUrlString:v15 username:v16 userIdentifier:v17 service:v18];

  return v19;
}

void TapInteraction.view.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t key path getter for TapInteraction.view : TapInteraction@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void (*TapInteraction.view.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit14TapInteraction_view;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return TapInteraction.view.modify;
}

void TapInteraction.view.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id (*TapInteraction.numberOfTapsRequired.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer);
  a1[1] = v3;
  *a1 = [v3 numberOfTapsRequired];
  return TapInteraction.numberOfTapsRequired.modify;
}

char *TapInteraction.__allocating_init(tapCount:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  [*&v3[OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer] setNumberOfTapsRequired_];
  return v3;
}

id TapInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TapInteraction.init()()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer;
  v5 = *&v3[OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer];
  v6 = v3;
  [v5 setDelegate_];
  [*&v3[v4] addTarget:v6 action:sel_handleRecognizer_];

  return v6;
}

Swift::Void __swiftcall TapInteraction.willMove(to:)(UIView_optional *to)
{
  v2 = v1;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = to;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    if (to)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      v10 = v5;
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v19);

    *(v8 + 4) = v14;
    OUTLINED_FUNCTION_2_24(&dword_1BBC58000, v15, v16, "TapInteraction: moving to view: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    [Strong removeGestureRecognizer_];
  }
}

Swift::Void __swiftcall TapInteraction.didMove(to:)(UIView_optional *to)
{
  v2 = v1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = to;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    if (to)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      v10 = v5;
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v15);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1BBC58000, v6, v7, "TapInteraction: moved to view: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if (to)
  {
    [(UIView_optional *)v5 addGestureRecognizer:*(v2 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer)];
  }
}

void TapInteraction.handleRecognizer(_:)(void *a1)
{
  v2 = v1;
  if ([a1 state] == 3 && (swift_beginAccess(), (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v5 = v4;
    v71[0] = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21TapInteractionHandler_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v75 = 0;
      memset(v74, 0, sizeof(v74));
    }

    outlined init with copy of TapInteractionHandler?(v74, v71);
    v7 = v72;
    if (v72)
    {
      v8 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v9 = (*(v8 + 24))(v2, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v71);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v6;
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v71, &_s15ConversationKit21TapInteractionHandler_pSgMd);
      v9 = 0;
      v10 = v6;
    }

    v26 = v10;
    [a1 locationInView_];
    v28 = v27;
    v30 = v29;
    TapInteraction.findHandler()(&v69);
    if (v70)
    {
      outlined init with take of TapInteractionHandler(&v69, v71);
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, &static Logger.conversationControls);
      v32 = v6;
      v33 = a1;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      v68 = v9;
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = v26;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v69 = v39;
        *v36 = 138412546;
        *(v36 + 4) = v33;
        *v38 = v33;
        *(v36 + 12) = 2080;
        v40 = v32;
        v41 = v33;
        v42 = String.init<A>(reflecting:)();
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v69);

        *(v36 + 14) = v44;
        _os_log_impl(&dword_1BBC58000, v34, v35, "TapInteraction: Sending tap for %@ on view: %s", v36, 0x16u);
        outlined destroy of TapInteractionHandler?(v38, &_sSo8NSObjectCSgMd);
        v45 = v38;
        v26 = v37;
        MEMORY[0x1BFB23DF0](v45, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1BFB23DF0](v39, -1, -1);
        MEMORY[0x1BFB23DF0](v36, -1, -1);
      }

      v46 = v72;
      v47 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v48 = *(v47 + 16);
      v49 = v26;
      v50 = v26;
      v51 = v49;
      v48(v2, v50, v28, v30, v46, v47);

      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      outlined destroy of TapInteractionHandler?(&v69, &_s15ConversationKit21TapInteractionHandler_pSgMd);
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, &static Logger.conversationControls);
      v53 = a1;
      v54 = v2;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v67 = v26;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v71[0] = v59;
        *v57 = 138412546;
        *(v57 + 4) = v53;
        *v58 = v53;
        *(v57 + 12) = 2080;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          *&v69 = Strong;
          v61 = v53;
          v62 = String.init<A>(reflecting:)();
          v64 = v63;
        }

        else
        {
          v62 = 7104878;
          v65 = v53;
          v64 = 0xE300000000000000;
        }

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v71);

        *(v57 + 14) = v66;
        _os_log_impl(&dword_1BBC58000, v55, v56, "TapInteraction: Ignoring tap %@ on view: %s because there is no handler", v57, 0x16u);
        outlined destroy of TapInteractionHandler?(v58, &_sSo8NSObjectCSgMd);
        MEMORY[0x1BFB23DF0](v58, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x1BFB23DF0](v59, -1, -1);
        MEMORY[0x1BFB23DF0](v57, -1, -1);
      }

      else
      {
      }
    }

    outlined destroy of TapInteractionHandler?(v74, &_s15ConversationKit21TapInteractionHandler_pSgMd);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, &static Logger.conversationControls);
    v12 = a1;
    v13 = v1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v71[0] = v18;
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *v17 = v12;
      *(v16 + 12) = 2080;
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        *&v69 = v19;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        v20 = v12;
        v21 = String.init<A>(reflecting:)();
        v23 = v22;
      }

      else
      {
        v21 = 7104878;
        v24 = v12;
        v23 = 0xE300000000000000;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v71);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1BBC58000, v14, v15, "TapInteraction: Ignoring tap %@ on view: %s", v16, 0x16u);
      outlined destroy of TapInteractionHandler?(v17, &_sSo8NSObjectCSgMd);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }
  }
}

uint64_t TapInteraction.findHandler()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  while (1)
  {
    outlined init with copy of TapInteractionHandler?(a1, &v13);
    if (*(&v14 + 1))
    {
      break;
    }

    result = outlined destroy of TapInteractionHandler?(&v13, &_s15ConversationKit21TapInteractionHandler_pSgMd);
    if (!Strong)
    {
      return result;
    }

    v10[0] = Strong;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIResponder);
    v6 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21TapInteractionHandler_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }

    outlined init with copy of TapInteractionHandler?(&v13, v10);
    v7 = v11;
    if (v11)
    {
      v8 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v9 = (*(v8 + 8))(v2, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v10);
      if (v9)
      {
        outlined destroy of TapInteractionHandler?(a1, &_s15ConversationKit21TapInteractionHandler_pSgMd);
        outlined init with copy of TapInteractionHandler?(&v13, a1);
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v10, &_s15ConversationKit21TapInteractionHandler_pSgMd);
    }

    Strong = [v6 nextResponder];

    outlined destroy of TapInteractionHandler?(&v13, &_s15ConversationKit21TapInteractionHandler_pSgMd);
  }

  return outlined destroy of TapInteractionHandler?(&v13, &_s15ConversationKit21TapInteractionHandler_pSgMd);
}

Swift::Void __swiftcall TapInteraction.triggerInteraction()()
{
  TapInteraction.findHandler()(&v3);
  if (v4)
  {
    outlined init with take of TapInteractionHandler(&v3, v5);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v2 + 16))(v0, 0, 0, 0, v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v3, &_s15ConversationKit21TapInteractionHandler_pSgMd);
  }
}

uint64_t TapInteraction.findSiblingTapInterations()()
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    return v1;
  }

  v7 = Strong;
  v2 = [Strong interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v1;
  result = specialized Array.count.getter(v3);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return v8;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB22010](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (swift_dynamicCastClass() && (static NSObject.== infix(_:_:)() & 1) == 0)
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v1;
      ++v6;
    }

    else
    {
      result = swift_unknownObjectRelease();
      ++v6;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

id TapInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall TapInteraction.gestureRecognizer(_:shouldRequireFailureOf:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRequireFailureOf)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && [v4 numberOfTapsRequired] == 1)
  {
    v22 = shouldRequireFailureOf;
    v5 = TapInteraction.findSiblingTapInterations()();
    v23 = MEMORY[0x1E69E7CC0];
    v6 = specialized Array.count.getter(v5);
    v7 = v6;
    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {

        v11 = v23;
        v12 = specialized Array.count.getter(v23);
        if (v12)
        {
          v13 = v12;
          v23 = MEMORY[0x1E69E7CC0];
          LOBYTE(v6) = specialized ContiguousArray.reserveCapacity(_:)();
          if (v13 < 0)
          {
            goto LABEL_28;
          }

          v14 = 0;
          do
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x1BFB22010](v14, v11);
            }

            else
            {
              v15 = *(v11 + 8 * v14 + 32);
            }

            v16 = v15;
            ++v14;
            v17 = *&v15[OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v13 != v14);

          v19 = v23;
        }

        else
        {

          v19 = MEMORY[0x1E69E7CC0];
        }

        v23 = v22;
        MEMORY[0x1EEE9AC00](v18);
        v21[2] = &v23;
        v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v21, v19);

        goto LABEL_25;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB22010](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v6 = *(v5 + 8 * i + 32);
      }

      v9 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([*&v6[OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer] numberOfTapsRequired] <= 1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        LOBYTE(v6) = specialized ContiguousArray._endMutation()();
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v10 = 0;
LABEL_25:
    LOBYTE(v6) = v10 & 1;
  }

  return v6;
}

Swift::Bool __swiftcall TapInteraction.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v2 = [(objc_class *)shouldReceive.super.isa view];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 == 0;

  return v4;
}

uint64_t UIView.tapInteractions(withTapCount:)(id a1)
{
  v3 = [v1 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v5 = specialized Array.count.getter(v4);
  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    type metadata accessor for TapInteraction();
    v7 = swift_dynamicCastClass();
    if (v7 && [*(v7 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer) numberOfTapsRequired] == a1)
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 = v20;
      ++v6;
    }

    else
    {
      swift_unknownObjectRelease();
      ++v6;
    }
  }

  if (one-time initialization token for conversationControls == -1)
  {
    goto LABEL_15;
  }

LABEL_20:
  OUTLINED_FUNCTION_0_0();
LABEL_15:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14TapInteractionCGMd);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v15;
    OUTLINED_FUNCTION_2_24(&dword_1BBC58000, v16, v17, "TapInteraction: Found tap interactions %s");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  return v19;
}

Swift::Void __swiftcall UIView.removeTapInteractions(withTapCount:)(Swift::Int withTapCount)
{
  v2 = UIView.tapInteractions(withTapCount:)(withTapCount);
  v3 = specialized Array.count.getter(v2);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB22010](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      [v1 removeInteraction_];
    }
  }
}

Swift::Void __swiftcall UIView.addTapInteraction(withTapCount:)(Swift::Int withTapCount)
{
  v3 = UIView.tapInteractions(withTapCount:)(withTapCount);
  v4 = specialized Array.count.getter(v3);

  if (!v4)
  {
    type metadata accessor for TapInteraction();
    v5 = TapInteraction.__allocating_init(tapCount:)(withTapCount);
    [v1 addInteraction_];
  }
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t getEnumTagSinglePayload for TapInteraction.EventType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TapInteraction.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for TapInteraction.EventType(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t outlined init with copy of TapInteractionHandler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21TapInteractionHandler_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id one-time initialization function for faceTimeTodayFormatter()
{
  result = closure #1 in variable initialization expression of static Date.faceTimeTodayFormatter();
  static Date.faceTimeTodayFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static Date.faceTimeTodayFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v5 = objc_opt_self();
  v6 = MEMORY[0x1BFB209B0](7158378, 0xE300000000000000);
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:isa];

  [v4 setDateFormat_];
  return v4;
}

uint64_t *Date.faceTimeTodayFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for faceTimeTodayFormatter != -1)
  {
    OUTLINED_FUNCTION_2_25();
  }

  return &static Date.faceTimeTodayFormatter;
}

uint64_t *Date.faceTimeOlderFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for faceTimeOlderFormatter != -1)
  {
    OUTLINED_FUNCTION_1_31();
  }

  return &static Date.faceTimeOlderFormatter;
}

Swift::String __swiftcall Date.faceTimeDateString()()
{
  v1 = static Date.faceTimeDateString(from:showToday:)(v0, 0);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Date.faceTimeLinkDateString()()
{
  v0 = static Date.faceTimeLinkDateString(from:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static Date.faceTimeLinkDateString(from:)()
{
  v1 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1();
  v47 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v46 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_8_18();
  static Calendar.current.getter();
  if (one-time initialization token for faceTimeTodayFormatter != -1)
  {
    OUTLINED_FUNCTION_2_25();
  }

  v15 = static Date.faceTimeTodayFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17 = [v15 stringFromDate_];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v19;
  v49 = v18;

  if (Calendar.isDateInToday(_:)())
  {
    v20 = [objc_opt_self() conversationKit];
    v21 = OUTLINED_FUNCTION_9_11();
    v22 = OUTLINED_FUNCTION_6_15(v21, 0xE500000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);
    v24 = v23;

    v25 = &off_1E7FE9000;
    v12 = 0x61737265766E6F43;
LABEL_14:
    v40 = [objc_opt_self() v25[465]];
    OUTLINED_FUNCTION_6_15(0xD000000000000013, 0x80000001BC4F2CD0, v12, 0xEF74694B6E6F6974);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1BC4BAA20;
    v42 = MEMORY[0x1E69E6158];
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v43 = lazy protocol witness table accessor for type String and conformance String();
    *(v41 + 32) = v22;
    *(v41 + 40) = v24;
    *(v41 + 96) = v42;
    *(v41 + 104) = v43;
    *(v41 + 64) = v43;
    *(v41 + 72) = v49;
    *(v41 + 80) = v48;
    v44 = String.init(format:_:)();

    (*(v50 + 8))(v0, v51);
    return v44;
  }

  if (Calendar.isDateInYesterday(_:)())
  {
    v26 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_4_10();
    v22 = OUTLINED_FUNCTION_6_15(v27, v28, v12, 0xEF74694B6E6F6974);
    v24 = v29;

    v25 = &off_1E7FE9000;
    goto LABEL_14;
  }

  Date.init()();
  v45 = *(v47 + 104);
  v45(v6, *MEMORY[0x1E6969A10], v1);
  v30 = Calendar.isDate(_:equalTo:toGranularity:)();
  v31 = *(v47 + 8);
  v31(v6, v1);
  (*(v46 + 8))(v12, v7);
  if ((v30 & 1) == 0)
  {
    if (one-time initialization token for faceTimeOlderFormatter == -1)
    {
LABEL_13:
      v36 = static Date.faceTimeOlderFormatter;
      v37 = Date._bridgeToObjectiveC()().super.isa;
      v38 = [v36 stringFromDate_];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v39;

      OUTLINED_FUNCTION_4_10();
      v25 = &off_1E7FE9000;
      goto LABEL_14;
    }

LABEL_16:
    OUTLINED_FUNCTION_1_31();
    goto LABEL_13;
  }

  v45(v6, *MEMORY[0x1E6969AB0], v1);
  v32 = Calendar.component(_:from:)();
  v31(v6, v1);
  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  result = Calendar.weekdaySymbols.getter();
  v25 = &off_1E7FE9000;
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    if (v33 < *(result + 16))
    {
      v35 = result + 16 * v33;
      v22 = *(v35 + 32);
      v24 = *(v35 + 40);

      OUTLINED_FUNCTION_4_10();
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id @objc NSDate.faceTimeDateString.getter(void *a1)
{
  v1 = a1;
  v2 = NSDate.faceTimeDateString.getter();
  v4 = v3;

  v5 = MEMORY[0x1BFB209B0](v2, v4);

  return v5;
}

uint64_t NSDate.faceTimeDateString.getter()
{
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_8_18();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static Date.faceTimeDateString(from:showToday:)(v0, 0);
  (*(v3 + 8))(v0, v1);
  return v5;
}

Swift::Int PresentationContext.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PresentationContext.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

id outlined copy of ButtonBackgroundStyle(id result, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 6)
  {
    case 1:
    case 2:
      result = result;
      break;
    case 3:
      return result;
    default:
      result = outlined copy of ButtonBackgroundBlurStyle(result, a2, a3);
      break;
  }

  return result;
}

id outlined copy of ButtonBackgroundBlurStyle(id result, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

void ButtonStyle.Configuration.backgroundStyle.setter()
{
  OUTLINED_FUNCTION_8_19();
  outlined consume of ButtonBackgroundStyle(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v3;
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
}

void outlined consume of ButtonBackgroundStyle(id a1, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 6)
  {
    case 1:
    case 2:

      break;
    case 3:
      return;
    default:
      outlined consume of ButtonBackgroundBlurStyle(a1, a2, a3);
      break;
  }
}

void outlined consume of ButtonBackgroundBlurStyle(void *a1, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t ButtonStyle.regular.getter()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_4_11();
  outlined copy of ButtonBackgroundStyle(v2, v3, v4);
  v5 = v1;
  return OUTLINED_FUNCTION_4_11();
}

void ButtonStyle.regular.setter()
{
  OUTLINED_FUNCTION_17_6();
  outlined consume of ButtonBackgroundStyle(*v1, *(v1 + 8), *(v1 + 16));

  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t ButtonStyle.flat.getter()
{
  v1 = *(v0 + 56);
  v2 = OUTLINED_FUNCTION_4_11();
  outlined copy of ButtonBackgroundStyle(v2, v3, v4);
  v5 = v1;
  return OUTLINED_FUNCTION_4_11();
}

void ButtonStyle.flat.setter()
{
  OUTLINED_FUNCTION_17_6();
  outlined consume of ButtonBackgroundStyle(*(v1 + 32), *(v1 + 40), *(v1 + 48));

  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t ButtonStyle.current.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    v1 = 56;
  }

  else
  {
    v1 = 24;
  }

  v2 = *(v0 + v1);
  v3 = OUTLINED_FUNCTION_7_23();
  outlined copy of ButtonBackgroundStyle(v3, v4, v5);
  v6 = v2;
  return OUTLINED_FUNCTION_7_23();
}

uint64_t ButtonStyle.init(regular:flat:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t key path getter for BaseButton.callbackCancellable : BaseButton@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BaseButton.callbackCancellable : BaseButton(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v2(v3);
}

uint64_t BaseButton.callbackCancellable.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit10BaseButton_callbackCancellable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double BaseButton.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit10BaseButton_cnkContentAlpha;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

id BaseButton.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit10BaseButton_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return UIButton.updateContentAlpha(_:)(a1);
}

void (*BaseButton.cnkContentAlpha.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit10BaseButton_cnkContentAlpha;
  v3[3] = v1;
  v3[4] = v4;
  swift_beginAccess();
  return BaseButton.cnkContentAlpha.modify;
}

void BaseButton.cnkContentAlpha.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    UIButton.updateContentAlpha(_:)(*(v3[3] + v3[4]));
  }

  free(v3);
}

void *BaseButton.init(title:symbol:shape:stateConfiguration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v15);
  v93 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v27);
  *&v6[OBJC_IVAR____TtC15ConversationKit10BaseButton_callbackCancellable] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit10BaseButton_cnkContentAlpha] = 0x3FF0000000000000;
  v28 = &v6[OBJC_IVAR____TtC15ConversationKit10BaseButton__title];
  v80 = a1;
  *v28 = a1;
  v28[1] = a2;
  outlined init with copy of SymbolImageDescribing?(a3, &v6[OBJC_IVAR____TtC15ConversationKit10BaseButton_symbol]);
  v6[OBJC_IVAR____TtC15ConversationKit10BaseButton_shape] = a4;
  *&v6[OBJC_IVAR____TtC15ConversationKit10BaseButton_stateConfiguration] = a5;
  v94 = a6;
  v6[OBJC_IVAR____TtC15ConversationKit10BaseButton_context] = a6;
  v29 = type metadata accessor for BaseButton();
  v98.receiver = v6;
  v98.super_class = v29;
  v91 = a2;

  v30 = objc_msgSendSuper2(&v98, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0xC8);
  v32 = v30;
  v33 = v31();
  v89 = v32;
  BaseButton.style(for:)(v33, v99);
  v34 = v101;
  v35 = v105;
  v92 = a3;
  outlined init with copy of SymbolImageDescribing?(a3, v95);
  v36 = v96;
  if (v96)
  {
    v37 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    (*(v37 + 8))(&v106, v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v95);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v38 = static UIImage.symbolImage(for:)(&v106);
    outlined destroy of SymbolImageDescription(&v106);
    v39 = v101;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v95, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
    v38 = 0;
    v39 = v34;
  }

  v87 = v24;
  v40 = v93;
  v83 = v38;
  if (v39)
  {
    v78 = v35;
    v82 = v34;
    v79 = a4;
    v81 = v17;
    v42 = v99[0];
    v41 = v99[1];
    v43 = v100;
    v44 = v102;
    v45 = v103;
    v46 = v104;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v47 = (*static Defaults.shared + 336);
    v48 = *v47;
    v49 = (*v47)();
    if (v49)
    {
      v50 = v44;
    }

    else
    {
      v50 = v42;
    }

    if (v49)
    {
      v41 = v45;
    }

    else
    {
      v46 = v43;
    }

    v51 = outlined copy of ButtonBackgroundStyle(v50, v41, v46);
    v52 = (v48)(v51);
    v53 = v82;
    if (v52)
    {
      v53 = v78;
    }

    v82 = v53;
    v17 = v81;
    v40 = v93;
    LOBYTE(a4) = v79;
  }

  else
  {
    v54 = objc_opt_self();
    v50 = [v54 systemGrayColor];
    v82 = [v54 labelColor];
    v41 = 0;
    v46 = 64;
  }

  v81 = v41;
  v55 = v84;
  static UIButton.Configuration.filled()();
  v56 = v85;
  UIButton.Configuration.withShape(_:)(a4, v85);
  v57 = v17[1];
  v57(v55, v40);
  v58 = v86;
  v93 = v50;
  LODWORD(v84) = v46;
  UIButton.Configuration.withBackgroundStyle(_:)(v50, v41, v46, v86);
  v57(v56, v40);
  v59 = v88;
  (v17[2])(v88, v58, v40);
  v60 = v17;
  if (v94)
  {
    OUTLINED_FUNCTION_18_16();
    UIButton.Configuration.contentInsets.setter();
    UIButton.Configuration.imagePadding.setter();
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    UIButton.Configuration.contentInsets.setter();
  }

  v61 = v57;
  v57(v58, v40);
  v62 = v60[4];
  v63 = v87;
  v62(v87, v59, v40);
  v64 = v83;
  UIButton.Configuration.image.setter();
  v65 = swift_allocObject();
  v66 = v82;
  *(v65 + 16) = v82;
  v67 = v40;
  v68 = v66;
  UIConfigurationColorTransformer.init(_:)();
  type metadata accessor for UIConfigurationColorTransformer();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  UIButton.Configuration.imageColorTransformer.setter();
  if (v91)
  {
    UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)(v68, v94, v90);
    OUTLINED_FUNCTION_9_12();

    v61(v63, v67);
  }

  else
  {

    OUTLINED_FUNCTION_9_12();
    v62(v90, v63, v67);
  }

  outlined destroy of TapInteractionHandler?(v99, &_s15ConversationKit11ButtonStyleVSgMd);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v67);
  v76 = v89;
  UIButton.configuration.setter();

  outlined destroy of TapInteractionHandler?(v92, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  return v76;
}

id BaseButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void BaseButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit10BaseButton_callbackCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit10BaseButton_cnkContentAlpha) = 0x3FF0000000000000;
  OUTLINED_FUNCTION_2_26();
  __break(1u);
}

uint64_t BaseButton.style(for:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit10BaseButton_stateConfiguration);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(result);
  if ((v6 & 1) == 0)
  {
    v5 = 0;
LABEL_5:
    v8 = 0;
    v17 = 0;
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v14 = 0;
    v19 = 0;
    v9 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  v7 = *(v4 + 56) + (result << 6);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v22 = *(v7 + 21) | (*(v7 + 23) << 16);
  v10 = *(v7 + 17);
  v12 = *(v7 + 24);
  v11 = *(v7 + 32);
  v13 = *(v7 + 40);
  v14 = *(v7 + 48);
  v20 = *v7;
  v21 = *(v7 + 53) | (*(v7 + 55) << 16);
  v15 = *(v7 + 49);
  v16 = *(v7 + 56);
  outlined copy of ButtonBackgroundStyle(*v7, v8, *(v7 + 16));
  v17 = v12;
  outlined copy of ButtonBackgroundStyle(v11, v13, v14);
  v18 = (v10 << 8) | (v22 << 40);
  v19 = (v15 << 8) | (v21 << 40);
  result = v16;
  v5 = v20;
LABEL_6:
  *a2 = v5;
  a2[1] = v8;
  a2[2] = v18 | v9;
  a2[3] = v17;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v19 | v14;
  a2[7] = v16;
  return result;
}

Swift::Void __swiftcall BaseButton.updateConfiguration()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v3);
  v4 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10(&v59 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v17);
  v18 = *(v0 + OBJC_IVAR____TtC15ConversationKit10BaseButton__title + 8);
  v62 = *(v0 + OBJC_IVAR____TtC15ConversationKit10BaseButton__title);
  v71 = v18;
  v19 = OBJC_IVAR____TtC15ConversationKit10BaseButton_symbol;
  v20 = *(v0 + OBJC_IVAR____TtC15ConversationKit10BaseButton_shape);
  v21 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
  BaseButton.style(for:)(v21, v79);
  v22 = v81;
  v23 = v85;
  v74 = *(v0 + OBJC_IVAR____TtC15ConversationKit10BaseButton_context);
  v66 = v0;
  outlined init with copy of SymbolImageDescribing?(v0 + v19, v76);
  v24 = v77;
  if (!v77)
  {
    outlined destroy of TapInteractionHandler?(v76, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
    v67 = 0;
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_18:
    v41 = objc_opt_self();
    v35 = [v41 systemGrayColor];
    v64 = [v41 labelColor];
    v63 = 0;
    v37 = 64;
    goto LABEL_19;
  }

  v25 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  (*(v25 + 8))(&v86, v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v76);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v67 = static UIImage.symbolImage(for:)(&v86);
  outlined destroy of SymbolImageDescription(&v86);
  if (!v81)
  {
    goto LABEL_18;
  }

LABEL_3:
  v59 = v23;
  v64 = v22;
  v60 = v20;
  v61 = v9;
  v75 = v6;
  v65 = v4;
  v27 = v79[0];
  v26 = v79[1];
  v28 = v80;
  v30 = v82;
  v29 = v83;
  v31 = v84;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v32 = (*static Defaults.shared + 336);
  v33 = *v32;
  v34 = (*v32)();
  if (v34)
  {
    v35 = v30;
  }

  else
  {
    v35 = v27;
  }

  if (v34)
  {
    v36 = v29;
  }

  else
  {
    v36 = v26;
  }

  if (v34)
  {
    v37 = v31;
  }

  else
  {
    v37 = v28;
  }

  v63 = v36;
  v38 = outlined copy of ButtonBackgroundStyle(v35, v36, v37);
  v39 = (v33)(v38);
  v40 = v64;
  if (v39)
  {
    v40 = v59;
  }

  v64 = v40;
  v4 = v65;
  v6 = v75;
  v9 = v61;
  LOBYTE(v20) = v60;
LABEL_19:
  v42 = v68;
  static UIButton.Configuration.filled()();
  v43 = v69;
  UIButton.Configuration.withShape(_:)(v20, v69);
  v44 = *(v6 + 8);
  v44(v42, v4);
  v45 = v70;
  v68 = v35;
  UIButton.Configuration.withBackgroundStyle(_:)(v35, v63, v37, v70);
  v44(v43, v4);
  (*(v6 + 16))(v9, v45, v4);
  LODWORD(v65) = v37;
  if (v74)
  {
    OUTLINED_FUNCTION_18_16();
    v46 = v9;
    UIButton.Configuration.contentInsets.setter();
    UIButton.Configuration.imagePadding.setter();
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    v46 = v9;
    UIButton.Configuration.contentInsets.setter();
  }

  v44(v45, v4);
  v47 = *(v6 + 32);
  v75 = v6 + 32;
  v48 = v72;
  v47(v72, v46, v4);
  v70 = v67;
  UIButton.Configuration.image.setter();
  v49 = swift_allocObject();
  v50 = v64;
  *(v49 + 16) = v64;
  v51 = v50;
  UIConfigurationColorTransformer.init(_:)();
  type metadata accessor for UIConfigurationColorTransformer();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  UIButton.Configuration.imageColorTransformer.setter();
  if (v71)
  {
    UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)(v51, v74, v73);
    OUTLINED_FUNCTION_20_10();

    v44(v48, v4);
  }

  else
  {

    OUTLINED_FUNCTION_20_10();
    v47(v73, v48, v4);
  }

  outlined destroy of TapInteractionHandler?(v79, &_s15ConversationKit11ButtonStyleVSgMd);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v4);
  UIButton.configuration.setter();
}

uint64_t BaseButton.computedState.getter()
{
  if (![v0 isEnabled])
  {
    return 2;
  }

  v1 = [v0 isHighlighted];
  v2 = [v0 isSelected];
  v3 = 4;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = 5;
  if (!v2)
  {
    v4 = 1;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

id BaseButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void (*protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

void protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *BrickButton.__allocating_init(title:symbol:stateConfiguration:context:)()
{
  OUTLINED_FUNCTION_3_1();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_6_16();
  return BrickButton.init(title:symbol:stateConfiguration:context:)();
}

void *BrickButton.init(title:symbol:stateConfiguration:context:)()
{
  OUTLINED_FUNCTION_3_1();
  outlined init with copy of SymbolImageDescribing?(v5, v8);
  v6 = BaseButton.init(title:symbol:shape:stateConfiguration:context:)(v4, v3, v8, 0, v1, v0);
  outlined destroy of TapInteractionHandler?(v2, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  return v6;
}

void *PillButton.__allocating_init(title:symbol:stateConfiguration:context:)()
{
  OUTLINED_FUNCTION_3_1();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_6_16();
  return PillButton.init(title:symbol:stateConfiguration:context:)(v2, v3, v4, v5, v6);
}

void *PillButton.init(title:symbol:stateConfiguration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = v5 + OBJC_IVAR____TtC15ConversationKit10PillButton_symbol;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC15ConversationKit10PillButton_context) = a5;
  swift_beginAccess();
  outlined assign with copy of SymbolImageDescribing?(a3, v11);
  swift_endAccess();
  outlined init with copy of SymbolImageDescribing?(a3, v14);
  v12 = BaseButton.init(title:symbol:shape:stateConfiguration:context:)(a1, a2, v14, 2, a4, a5);
  PillButton.setupConstraints()();

  outlined destroy of TapInteractionHandler?(a3, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  return v12;
}

void PillButton.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit10PillButton_symbol;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  OUTLINED_FUNCTION_2_26();
  __break(1u);
}

void PillButton.setupConstraints()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit10PillButton_symbol;
  swift_beginAccess();
  outlined init with copy of SymbolImageDescribing?(v0 + v1, v14);
  if (*&v14[3])
  {
    v2 = 1000.0;
  }

  else
  {
    v2 = 750.0;
  }

  outlined destroy of TapInteractionHandler?(v14, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit10PillButton_context))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA930;
    v7 = [v0 widthAnchor];
    v8 = [v7 constraintGreaterThanOrEqualToConstant_];

    *&v9 = v2;
    [v8 setPriority_];
    *(inited + 32) = v8;
    v4 = (inited + 40);
    v5 = [v0 heightAnchor];
    v6 = [v5 constraintGreaterThanOrEqualToConstant_];
    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit10PillButton_context) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAC30;
    v4 = (inited + 32);
    v5 = [v0 heightAnchor];
    static Layout.ConversationControls.values.getter(v14);
    v6 = [v5 constraintGreaterThanOrEqualToConstant_];
LABEL_8:
    v10 = v6;

    *&v11 = v2;
    [v10 setPriority_];
    *v4 = v10;
    specialized Array.append<A>(contentsOf:)(inited);
  }

  v12 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints_];
}

id CircularButton.squareConstraint.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit14CircularButton____lazy_storage___squareConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit14CircularButton____lazy_storage___squareConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit14CircularButton____lazy_storage___squareConstraint];
  }

  else
  {
    v4 = closure #1 in CircularButton.squareConstraint.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in CircularButton.squareConstraint.getter(void *a1)
{
  v2 = [a1 widthAnchor];
  v3 = [a1 heightAnchor];
  v4 = [v2 constraintEqualToAnchor_];

  LODWORD(v5) = 1148846080;
  [v4 setPriority_];
  return v4;
}

void *CircularButton.__allocating_init(symbol:stateConfiguration:context:)()
{
  OUTLINED_FUNCTION_8_19();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_7_23();
  return CircularButton.init(symbol:stateConfiguration:context:)();
}

void *CircularButton.init(symbol:stateConfiguration:context:)()
{
  OUTLINED_FUNCTION_8_19();
  *(v1 + OBJC_IVAR____TtC15ConversationKit14CircularButton____lazy_storage___squareConstraint) = 0;
  outlined init with copy of SymbolImageDescribing?(v4, v8);
  v5 = BaseButton.init(title:symbol:shape:stateConfiguration:context:)(0, 0, v8, 1, v2, v0);
  v6 = CircularButton.squareConstraint.getter();
  [v6 setActive_];

  outlined destroy of TapInteractionHandler?(v3, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  return v5;
}

void CircularButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit14CircularButton____lazy_storage___squareConstraint) = 0;
  OUTLINED_FUNCTION_2_26();
  __break(1u);
}

id BaseButton.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t outlined init with copy of SymbolImageDescribing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21SymbolImageDescribing_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of SymbolImageDescribing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21SymbolImageDescribing_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PresentationContext and conformance PresentationContext()
{
  result = lazy protocol witness table cache variable for type PresentationContext and conformance PresentationContext;
  if (!lazy protocol witness table cache variable for type PresentationContext and conformance PresentationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationContext and conformance PresentationContext);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit25ButtonBackgroundBlurStyleO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for ButtonBackgroundBlurStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonBackgroundBlurStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ButtonBackgroundBlurStyle(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit21ButtonBackgroundStyleO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ButtonBackgroundStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 17))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ButtonBackgroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ButtonBackgroundStyle(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = -64;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PresentationContext(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonStyle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonStyle.Configuration(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonStyle.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id static NSItemProvider.unknownError.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return @nonobjc NSError.init(domain:code:userInfo:)(v0, v2, -1, 0);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](_sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TY0_, 0, 0);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TY0_()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_13_14(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CKContainerSetupInfo);
  OUTLINED_FUNCTION_10_4();
  *v2 = v3;
  v2[1] = _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TQ1_;
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TQ1_()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TY3_()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](_sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TY0_, 0, 0);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TY0_()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_13_14(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _SWPendingCollaboration);
  OUTLINED_FUNCTION_10_4();
  *v2 = v3;
  v2[1] = _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TQ1_;
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TQ1_()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t NSItemProvider.loadObject<A>(ofClass:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = swift_getObjectType();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = NSItemProvider.loadObject<A>(ofClass:);
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x1EEE6DE38]();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

void _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFyScCyxs5Error_pGXEfU_So23_SWPendingCollaborationC_Tt1g5(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23_SWPendingCollaborationCs5Error_pGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _SWPendingCollaboration);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_20;
  v14 = _Block_copy(aBlock);

  v15 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v14];
  _Block_release(v14);
}

void _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFyScCyxs5Error_pGXEfU_So20CKContainerSetupInfoC_Tt1g5(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20CKContainerSetupInfoCs5Error_pGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CKContainerSetupInfo);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  v15 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v14];
  _Block_release(v14);
}

void closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  (*(v10 + 32))(v16 + v15, v13, v9);
  *(v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v17 = _Block_copy(aBlock);

  v18 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v17];
  _Block_release(v17);
}

uint64_t specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      static NSItemProvider.unknownError.getter();
    }

    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, id a2)
{
  if (a1 && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSItemProviderReading_pMd), (swift_dynamicCast() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      static NSItemProvider.unknownError.getter();
    }

    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = swift_getObjectType();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_10_4();
  *v4 = v5;
  v4[1] = NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DE38]();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

void closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = aBlock - v14;
  v16 = MEMORY[0x1BFB209B0](a3, a4, v13);
  (*(v11 + 16))(v15, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v15, v10);
  *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_26;
  v19 = _Block_copy(aBlock);

  v20 = [a2 loadInPlaceFileRepresentationForTypeIdentifier:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  outlined init with copy of URL?(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    if (URL.isFileURL.getter() & 1) != 0 && (a2)
    {
      (*(v10 + 16))(v12, v15, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd);
      CheckedContinuation.resume(returning:)();
      return (*(v10 + 8))(v15, v9);
    }

    (*(v10 + 8))(v15, v9);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = static NSItemProvider.unknownError.getter();
    goto LABEL_9;
  }

  outlined destroy of URL?(v8);
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v16 = a3;
LABEL_9:
  v19[1] = v16;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v13, 1, v12);

  v14 = a4;
  v11(v10, a3, a4);

  return outlined destroy of URL?(v10);
}

uint64_t NSItemProvider.collaborationInitiator.getter()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  OUTLINED_FUNCTION_9_0(v2);
  v1[5] = v3;
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v5, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CKContainerSetupInfo);
  if ([v1 canLoadObjectOfClass_])
  {
    v2 = OUTLINED_FUNCTION_16_11();
    *(v0 + 80) = v2;
    *v2 = v0;
    v3 = NSItemProvider.collaborationInitiator.getter;
LABEL_5:
    v2[1] = v3;

    return v17();
  }

  v4 = *(v0 + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _SWPendingCollaboration);
  if ([v4 canLoadObjectOfClass_])
  {
    v2 = OUTLINED_FUNCTION_16_11();
    *(v0 + 128) = v2;
    *v2 = v0;
    v3 = NSItemProvider.collaborationInitiator.getter;
    goto LABEL_5;
  }

  v6 = [*(v0 + 16) registeredTypeIdentifiersWithFileOptions_];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v7 + 16))
  {
    *(v0 + 152) = *(v7 + 40);

    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = NSItemProvider.collaborationInitiator.getter;

    return NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)();
  }

  else
  {
    v9 = *(v0 + 24);

    v10 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    v11 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
    OUTLINED_FUNCTION_5_6();
    @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(v12, v13, v14);

    v15 = OUTLINED_FUNCTION_8_20();

    return v16(v15);
  }
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  v5[11] = v3;
  v5[12] = v0;

  if (v0)
  {
    v9 = v5[8];
    v10 = v5[9];

    return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v5[13] = v11;
    *v11 = v7;
    v11[1] = NSItemProvider.collaborationInitiator.getter;

    return CKContainerSetupInfo.collaborationInitiator.getter();
  }
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  v5[14] = v0;

  if (v0)
  {
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  else
  {
    v5[15] = v3;
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 88);

  v2 = OUTLINED_FUNCTION_8_20();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  v5[17] = v0;

  if (v0)
  {
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  else
  {
    v5[18] = v3;
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 144);

  v2 = _SWPendingCollaboration.collaborationInitiator.getter();

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];

    return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v3[22] = v9;
    *v9 = v5;
    v9[1] = NSItemProvider.collaborationInitiator.getter;

    return URL.userNameAndEmail.getter();
  }
}

{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  PersonNameComponents.init(formattedName:)(v0[27], v0[26], v6);
  v7 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  v0[28] = @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(v6, v2, v1);
  (*(v4 + 8))(v3, v5);
  v8 = v0[8];
  v9 = v0[9];

  return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  v0 = OUTLINED_FUNCTION_8_20();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t NSItemProvider.collaborationInitiator.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_23_0();
  v11 = v10;
  OUTLINED_FUNCTION_1_2();
  *v12 = v11;
  v13 = *v5;
  OUTLINED_FUNCTION_4_6();
  *v14 = v13;
  v11[23] = v4;

  if (v4)
  {
    (*(v11[5] + 8))(v11[6], v11[4]);
    v15 = v11[8];
    v16 = v11[9];
    v17 = NSItemProvider.collaborationInitiator.getter;
  }

  else
  {
    v11[24] = a4;
    v11[25] = a3;
    v11[26] = a2;
    v11[27] = a1;
    OUTLINED_FUNCTION_5_6();
  }

  return MEMORY[0x1EEE6DFA0](v17, v15, v16);
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1BFB209B0]();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PersonNameComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v8) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  if (a3)
  {
    v10 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 initWithNameComponents:isa handle:v10];

  return v11;
}

uint64_t partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2)
{
  return partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2, &_sScCySo20CKContainerSetupInfoCs5Error_pGMd, &_sScCySo20CKContainerSetupInfoCs5Error_pGMR, 0x1E695B8B8);
}

{
  return partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2, &_sScCySo23_SWPendingCollaborationCs5Error_pGMd, &_sScCySo23_SWPendingCollaborationCs5Error_pGMR, 0x1E697B728);
}

uint64_t partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_9_0(v10);
  OUTLINED_FUNCTION_11_7();
  return specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2, v5 + v12, *(v5 + v11), a5, a3);
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd);
  OUTLINED_FUNCTION_9_0(v6);
  OUTLINED_FUNCTION_11_7();

  return closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(a1, a2, a3);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v4 = type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_9_0(v4);
  OUTLINED_FUNCTION_11_7();

  return closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2);
}

id one-time initialization function for systemApertureDurationTextColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.22745098 green:1.0 blue:0.42745098 alpha:1.0];
  static UIColor.systemApertureDurationTextColor = result;
  return result;
}

uint64_t *UIColor.systemApertureDurationTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    OUTLINED_FUNCTION_13_15();
  }

  return &static UIColor.systemApertureDurationTextColor;
}

id static UIColor.systemApertureDurationTextColor.getter()
{
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    OUTLINED_FUNCTION_13_15();
  }

  v1 = static UIColor.systemApertureDurationTextColor;

  return v1;
}

id one-time initialization function for statusTextColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.4];
  static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor = result;
  return result;
}

{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.4];
  static OngoingTelephonyControlsView.Constants.statusTextColor = result;
  return result;
}

uint64_t *SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_3_19();
    swift_once();
  }

  return &static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
}

id one-time initialization function for durationTextColor()
{
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    swift_once();
  }

  v1 = static UIColor.systemApertureDurationTextColor;
  static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor = static UIColor.systemApertureDurationTextColor;

  return v1;
}

{
  result = [objc_opt_self() systemGreenColor];
  static OngoingTelephonyControlsView.Constants.durationTextColor = result;
  return result;
}

uint64_t *SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for durationTextColor != -1)
  {
    OUTLINED_FUNCTION_11_8();
  }

  return &static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor;
}

void SystemApertureOngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v76 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView] = 0;
  v11 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v12 = objc_opt_self();
  v13 = [v12 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v79.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v14, v13, v79);
  v75 = v11;
  *&v0[v11] = v15;
  v16 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel;
  v17 = [v12 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_3_19();
    swift_once();
  }

  v18 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v19 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v80.value.super.isa = v18;
  UILabel.init(font:textColor:)(v20, v17, v80);
  *&v0[v16] = v21;
  v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_context] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  outlined init with copy of ConversationControlsRecipe(v6, &v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe]);
  *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_controlsManager] = v4;
  swift_storeEnumTagMultiPayload();
  v22 = one-time initialization token for conversationKit;
  v23 = v4;
  v73 = v16;
  v74 = v6;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = xmmword_1EDDCCEE8;
  v72.super.isa = static LocalizationSource.conversationKit;
  v25 = *(&xmmword_1EDDCCEE8 + 1);
  v81._object = 0xE000000000000000;
  v26._object = 0x80000001BC4F3040;
  v26._countAndFlagsBits = 0xD000000000000015;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v27, v81);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v30 = v29;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  v31 = v30;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v28._countAndFlagsBits, v28._object, v31);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_changeRouteButton] = v31;
  static ConversationControlsAction.rejectCall(controlsManager:)(v23, v10);
  v82._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x5F474E41485F5841;
  v32._object = 0xEA00000000005055;
  v33.value._countAndFlagsBits = v24;
  v33.value._object = v25;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v72, v34, v82);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v37 = v36;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  v38 = v37;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v35._countAndFlagsBits, v35._object, v38);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_hangUpButton] = v38;
  [*&v1[v75] setAttributedText_];
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView] = 0;
  v39 = type metadata accessor for DurationLabelController();
  v40 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x2A0))();
  v42 = v41;
  ObjectType = swift_getObjectType();
  v44 = *&v1[v73];
  v45 = one-time initialization token for durationTextColor;
  swift_unknownObjectRetain();
  v46 = v44;
  if (v45 != -1)
  {
    OUTLINED_FUNCTION_11_8();
  }

  v47 = static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor;
  v78[0] = v40;
  v48 = *(v42 + 8);
  v49 = static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor;
  v50 = specialized DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v78, v46, v47, 0, 0, 0, v39, ObjectType, v48);
  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_durationController] = v50;
  v51 = *(*v50 + 248);

  v51(v52);

  v77.receiver = v1;
  v77.super_class = type metadata accessor for SystemApertureOngoingTelephonyControlsView();
  v53 = objc_msgSendSuper2(&v77, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  SystemApertureOngoingTelephonyControlsView.updateLeadingView()();
  v54 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel;
  v55 = [*&v53[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel] layer];
  v56 = *(v74 + *(type metadata accessor for ConversationControlsRecipe() + 64));
  [v55 setAllowsHitTesting_];

  v57 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel;
  v58 = [*&v53[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel] layer];
  [v58 setAllowsHitTesting_];

  [*&v53[v54] setUserInteractionEnabled_];
  [*&v53[v57] setUserInteractionEnabled_];
  v59 = OUTLINED_FUNCTION_26_4();
  [v59 v60];
  v61 = OUTLINED_FUNCTION_26_4();
  [v61 v62];
  v63 = OUTLINED_FUNCTION_26_4();
  [v63 v64];
  v65 = OUTLINED_FUNCTION_26_4();
  [v65 v66];
  v67 = *&v53[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView];
  if (v67)
  {
    v68 = v67;
    v69 = OUTLINED_FUNCTION_26_4();
    [v69 v70];
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v74, v71);
  OUTLINED_FUNCTION_30_0();
}

unint64_t type metadata accessor for UILabel()
{
  result = lazy cache variable for type metadata for UILabel;
  if (!lazy cache variable for type metadata for UILabel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UILabel);
  }

  return result;
}

uint64_t outlined init with copy of ConversationControlsRecipe(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SystemApertureOngoingTelephonyControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureOngoingTelephonyControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v12.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v4, v3, v12);
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel;
  v7 = [v2 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_3_19();
    swift_once();
  }

  v8 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v9 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v13.value.super.isa = v8;
  UILabel.init(font:textColor:)(v10, v7, v13);
  *(v0 + v6) = v11;
  *(v0 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_context) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.didset()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView];
  if (v1)
  {
    v2 = v1;
    [v0 alpha];
    [v2 setAlpha_];
  }

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel];
  [v0 alpha];
  [v3 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel];
  [v0 alpha];
  [v4 setAlpha_];
  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_changeRouteButton];
  [v0 alpha];
  [v5 setAlpha_];
  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_hangUpButton];
  [v0 alpha];

  return [v6 setAlpha_];
}

double SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

id SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.didset();
}

uint64_t (*SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.modify;
}

uint64_t key path setter for SystemApertureOngoingTelephonyControlsView.recipe : SystemApertureOngoingTelephonyControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE8))(v6);
}

id SystemApertureOngoingTelephonyControlsView.recipe.didset()
{
  v1 = v0;
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44[0] = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v44);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "[%{public}s.recipe.didSet] Updating recipe on existing instance may not result in the expected experience.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v10 = &v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe];
  swift_beginAccess();
  outlined init with copy of ConversationControlsType(v10, v44);
  v40 = 6;
  v41 = 0u;
  v42 = 0u;
  v43 = 7;
  v11 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
  outlined destroy of ConversationControlsType(&v40);
  outlined destroy of ConversationControlsType(v44);
  if ((v11 & 1) == 0)
  {
    outlined init with copy of ConversationControlsType(v10, v44);
    v40 = 8;
    v41 = 0u;
    v42 = 0u;
    v43 = 7;
    v12 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
    outlined destroy of ConversationControlsType(&v40);
    outlined destroy of ConversationControlsType(v44);
    if ((v12 & 1) == 0)
    {
      v13 = v0;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v40 = v17;
        *v16 = 136446466;
        v18 = _typeName(_:qualified:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        outlined init with copy of ConversationControlsType(v10, v44);
        v21 = specialized >> prefix<A>(_:)(v44);
        v23 = v22;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s15ConversationKit0A12ControlsTypeOSgMd);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_1BBC58000, v14, v15, "[%{public}s.recipe.didSet] Applied invalid recipe type %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v17, -1, -1);
        MEMORY[0x1BFB23DF0](v16, -1, -1);
      }
    }
  }

  if (specialized Array.count.getter(*(v10 + 88)))
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44[0] = v39;
      *v27 = 136446210;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v44);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v25, v26, "[%{public}s.recipe.didSet] Ignoring recipe subtitles which is currently unsupported per design.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFB23DF0](v39, -1, -1);
      MEMORY[0x1BFB23DF0](v27, -1, -1);
    }
  }

  if (*(v10 + *(type metadata accessor for ConversationControlsRecipe() + 40)))
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136446210;
      v35 = _typeName(_:qualified:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1BBC58000, v31, v32, "[%{public}s.recipe.didSet] Ignoring recipe subtitleLeadingBadge which is unsupported per design", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }
  }

  [*&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel] setAttributedText_];
  SystemApertureOngoingTelephonyControlsView.updateLeadingView()();
  return [v1 setNeedsLayout];
}

uint64_t SystemApertureOngoingTelephonyControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t SystemApertureOngoingTelephonyControlsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  SystemApertureOngoingTelephonyControlsView.recipe.didset();
  OUTLINED_FUNCTION_1_11();
  return outlined destroy of ConversationControlsAction(a1, v4);
}

uint64_t (*SystemApertureOngoingTelephonyControlsView.recipe.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return SystemApertureOngoingTelephonyControlsView.recipe.modify;
}

uint64_t SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t SystemApertureOngoingTelephonyControlsView.systemAperturePreferredContentSize.getter()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    Width = CGRectGetWidth(v14);
  }

  else
  {
    Width = 1.79769313e308;
  }

  v12 = [v0 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
  [v12 layoutFrame];

  return *&Width;
}

Swift::Void __swiftcall SystemApertureOngoingTelephonyControlsView.layoutSubviews()()
{
  OUTLINED_FUNCTION_36_1();
  v138 = v1;
  v139 = v2;
  v3 = v0;
  swift_getObjectType();
  v4 = type metadata accessor for ConversationControlsRecipe();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v135.receiver = v0;
  v135.super_class = type metadata accessor for SystemApertureOngoingTelephonyControlsView();
  v9 = objc_msgSendSuper2(&v135, sel_layoutSubviews);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v9);
  v10 = v8 + *(v5 + 76);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  outlined copy of LeadingViewType?(*v10, v12, *(v10 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v8, v14);
  v15 = 16.0;
  if (v13 != 255)
  {
    outlined consume of LeadingViewType?(v11, v12, v13);
    if (v13)
    {
      v16 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView;
      v17 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView];
      v15 = 23.0;
      if (v17)
      {
        v18 = [v17 layer];
        [v18 setCornerRadius_];

        v19 = *&v3[v16];
        if (v19)
        {
          v20 = [v19 layer];
          [v20 setMasksToBounds_];
        }
      }
    }
  }

  OUTLINED_FUNCTION_24_8();
  MinY = (CGRectGetHeight(v140) + -50.0) * 0.5;
  v124 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView;
  v22 = 50.0;
  v23 = OUTLINED_FUNCTION_34_3();
  [v24 v25];
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_0();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, &static Logger.conversationControls);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v28))
  {
    v29 = OUTLINED_FUNCTION_30_1();
    v134 = OUTLINED_FUNCTION_29_7();
    *v29 = 136446466;
    v30 = OUTLINED_FUNCTION_12_10();
    v32 = OUTLINED_FUNCTION_28_9(v30, v31);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *v132 = v15;
    *&v132[1] = MinY;
    v133 = vdupq_n_s64(0x4049000000000000uLL);
    type metadata accessor for CGRect(0);
    v33 = String.init<A>(reflecting:)();
    v35 = OUTLINED_FUNCTION_28_9(v33, v34);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_1BBC58000, v27, v28, "[%{public}s][layout] leadingFrame is %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_24_8();
  CGRectGetWidth(v141);
  OUTLINED_FUNCTION_24_8();
  CGRectGetHeight(v142);
  OUTLINED_FUNCTION_20_11();
  OUTLINED_FUNCTION_41_3(sel_setCenter_, &v137);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v37))
  {
    v28 = OUTLINED_FUNCTION_30_1();
    v134 = OUTLINED_FUNCTION_29_7();
    *v28 = 136446466;
    v38 = OUTLINED_FUNCTION_12_10();
    v40 = OUTLINED_FUNCTION_28_9(v38, v39);

    *(v28 + 4) = v40;
    *(v28 + 12) = 2080;
    OUTLINED_FUNCTION_27_5();
    v41 = String.init<A>(reflecting:)();
    v43 = OUTLINED_FUNCTION_28_9(v41, v42);

    *(v28 + 14) = v43;
    _os_log_impl(&dword_1BBC58000, v36, v37, "[%{public}s][layout] hangUpCenter is %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_24_8();
  CGRectGetHeight(v143);
  OUTLINED_FUNCTION_20_11();
  OUTLINED_FUNCTION_41_3(sel_setCenter_, &v136);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v45))
  {
    v46 = OUTLINED_FUNCTION_30_1();
    v134 = OUTLINED_FUNCTION_29_7();
    *v46 = 136446466;
    v47 = OUTLINED_FUNCTION_12_10();
    v49 = OUTLINED_FUNCTION_28_9(v47, v48);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    OUTLINED_FUNCTION_27_5();
    v50 = String.init<A>(reflecting:)();
    v52 = OUTLINED_FUNCTION_28_9(v50, v51);

    *(v46 + 14) = v52;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v53, v54, "[%{public}s][layout] changeRouteCenter is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v144.origin.x = OUTLINED_FUNCTION_34_3();
  MaxX = CGRectGetMaxX(v144);
  OUTLINED_FUNCTION_24_8();
  Width = CGRectGetWidth(v145);
  v129 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel];
  v57 = [v129 font];
  if (v57)
  {
    v58 = v57;
    v59 = MaxX + 9.0;
    v60 = Width + -136.0 - (MaxX + 9.0);
    [v57 lineHeight];
    v62 = v61;

    v63 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView];
    v64 = 14.0;
    if (!v63)
    {
      v64 = 0.0;
    }

    if (v64 <= 0.0)
    {
      v65 = 0.0;
    }

    else
    {
      v65 = v64 + 4.0;
    }

    v126 = v60;
    OUTLINED_FUNCTION_24_8();
    Height = CGRectGetHeight(v146);
    v67 = (*(**&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_durationController] + 224))(v60 - v65, Height - v62);
    v130 = v68;
    v131 = v67;
    v69 = v65 + v67;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v71))
    {
      v72 = swift_slowAlloc();
      v73 = OUTLINED_FUNCTION_23();
      v132[0] = v73;
      *v72 = 136446722;
      v74 = OUTLINED_FUNCTION_12_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v132);
      OUTLINED_FUNCTION_32_1();
      *(v72 + 4) = v28;
      *(v72 + 12) = 1024;
      *(v72 + 14) = v69 < 56.0;
      *(v72 + 18) = 2048;
      *(v72 + 20) = v69;
      _os_log_impl(&dword_1BBC58000, v70, v71, "[%{public}s][layout] secondaryNextToSensor: %{BOOL}d, textWidth: %f", v72, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_9_13();
    }

    v125 = v22;
    if (v69 >= 56.0)
    {
      v128 = 38.0;
    }

    else
    {
      OUTLINED_FUNCTION_24_8();
      v128 = (CGRectGetHeight(v147) - v130 - v62) * 0.5;
    }

    v22 = MinY;
    v76 = v59 + v65;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    v127 = v15;
    if (OUTLINED_FUNCTION_18_0(v78))
    {
      v79 = OUTLINED_FUNCTION_30_1();
      v132[0] = OUTLINED_FUNCTION_29_7();
      *v79 = 136446466;
      v80 = OUTLINED_FUNCTION_12_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v132);
      OUTLINED_FUNCTION_32_1();
      *(v79 + 4) = v28;
      *(v79 + 12) = 2080;
      v82 = CGRect.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v132);
      OUTLINED_FUNCTION_32_1();
      *(v79 + 14) = v28;
      _os_log_impl(&dword_1BBC58000, v77, v78, "[%{public}s][layout] secondaryFrame: %s", v79, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_9_13();

      v84 = &selRef_isRecordingAllowed;
      v85 = &selRef_isRecordingAllowed;
    }

    else
    {

      v84 = &selRef_isRecordingAllowed;
      v85 = &selRef_isRecordingAllowed;
    }

    v86 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel];
    v87 = OUTLINED_FUNCTION_10_5();
    [v88 v89];
    if (v63)
    {
      v90 = v63;
      [v90 v85[64]];
      v148.origin.x = OUTLINED_FUNCTION_10_5();
      v91 = CGRectGetMinX(v148) + -4.0 + -7.0;
      [v86 center];
      [v90 setCenter_];
    }

    v149.origin.x = OUTLINED_FUNCTION_10_5();
    MaxY = CGRectGetMaxY(v149);
    if (v63)
    {
      [v63 frame];
      v93 = CGRectGetMaxY(v150);
    }

    else
    {
      v93 = 2.22507386e-308;
    }

    if (MaxY > v93)
    {
      v94 = MaxY;
    }

    else
    {
      v94 = v93;
    }

    [v129 v84[63]];
    v151.origin.x = v127;
    v151.origin.y = v22;
    v151.size.width = v125;
    v151.size.height = v125;
    v15 = CGRectGetMaxY(v151);
    v152.origin.x = v59;
    v152.origin.y = v94;
    v152.size.width = v126;
    v152.size.height = v62;
    v95 = CGRectGetMaxY(v152);
    MinY = 17.0;
    if (v69 < 56.0)
    {
      v153.origin.x = v76;
      v153.origin.y = v128;
      v153.size.width = v131;
      v153.size.height = v130;
      MinY = CGRectGetMinY(v153);
    }

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v97))
    {
      v98 = swift_slowAlloc();
      v99 = OUTLINED_FUNCTION_23();
      v132[0] = v99;
      *v98 = 136446978;
      v100 = OUTLINED_FUNCTION_12_10();
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v132);

      *(v98 + 4) = v102;
      *(v98 + 12) = 2048;
      *(v98 + 14) = v15 + 14.0;
      *(v98 + 22) = 2048;
      *(v98 + 24) = v95 + MinY;
      *(v98 + 32) = 2048;
      *(v98 + 34) = 0x4055000000000000;
      _os_log_impl(&dword_1BBC58000, v96, v97, "[%{public}s][layout] avatarMaxY: %f, textMaxY: %f, %f", v98, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v99);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BB450;
      v104 = *&v3[v124];
      *(inited + 32) = v104;
      *(inited + 40) = v86;
      *(inited + 48) = v129;
      *(inited + 56) = v122;
      *(inited + 64) = v123;
      *(inited + 72) = v63;
      v105 = MEMORY[0x1E69E7CC0];
      v132[0] = MEMORY[0x1E69E7CC0];
      v106 = v104;
      v107 = v86;
      v108 = v129;
      v109 = v122;
      v110 = v123;
      v111 = v63;
      for (i = 0; i != 6; ++i)
      {
        if (i > 5)
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v113 = *(inited + 8 * i + 32);
        if (v113)
        {
          v114 = v113;
          MEMORY[0x1BFB20CC0]();
          if (*((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v105 = v132[0];
        }
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v115 = specialized Array.count.getter(v105);
      for (j = 0; v115 != j; ++j)
      {
        if ((v105 & 0xC000000000000001) != 0)
        {
          v117 = MEMORY[0x1BFB22010](j, v105);
        }

        else
        {
          if (j >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v117 = *(v105 + 8 * j + 32);
        }

        v118 = v117;
        if (__OFADD__(j, 1))
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_24_8();
        v119 = CGRectGetWidth(v154);
        [v118 center];
        v121 = v119 - v120;
        [v118 center];
        [v118 setCenter_];
      }
    }

    OUTLINED_FUNCTION_35_3();
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall SystemApertureOngoingTelephonyControlsView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_36_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_getObjectType();
  v62 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (v4 <= 2.22507386e-308)
  {
    v4 = 1.79769313e308;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_30_1();
    v64 = OUTLINED_FUNCTION_29_7();
    *v14 = 136446466;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v64);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *&v63 = v6;
    *(&v63 + 1) = v4;
    type metadata accessor for CGSize(0);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v64);

    *(v14 + 14) = v20;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v21, v22, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v24))
  {
    v25 = OUTLINED_FUNCTION_30_1();
    v64 = OUTLINED_FUNCTION_29_7();
    *v25 = 136446466;
    v26 = _typeName(_:qualified:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v64);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v63 = xmmword_1BC4BB460;
    type metadata accessor for CGSize(0);
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v64);

    *(v25 + 14) = v31;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v32, v33, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))();
  v34 = v10 + *(v62 + 68);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  outlined copy of LeadingViewType?(*v34, v36, *(v34 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v10, v38);
  if (v37 == 255)
  {
    v39 = 75.0;
  }

  else
  {
    outlined consume of LeadingViewType?(v35, v36, v37);
    if (v37)
    {
      v39 = 82.0;
    }

    else
    {
      v39 = 75.0;
    }
  }

  v40 = 0.0;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView))
  {
    v41 = 14.0;
  }

  else
  {
    v41 = 0.0;
  }

  if (v41 > 0.0)
  {
    v40 = v41 + 4.0;
  }

  v42 = v6 + -136.0 - v39 - v40;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel) sizeThatFits_];
  v44 = v43;
  v46 = v45;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel) sizeThatFits_];
  if (v44 > v47)
  {
    v47 = v44;
  }

  if (v48 <= v41)
  {
    v48 = v41;
  }

  v49 = v46 + v48 + 38.0 + 17.0;
  if (v47 <= 156.0)
  {
    v47 = 156.0;
  }

  v50 = v39 + v47 + 136.0;
  specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], 78.0, v49, 84.0);
  v52 = v51;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v54))
  {
    v55 = OUTLINED_FUNCTION_23();
    v56 = OUTLINED_FUNCTION_23();
    *&v63 = v56;
    *v55 = 136446722;
    v57 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v63);
    OUTLINED_FUNCTION_32_1();
    *(v55 + 4) = v35;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v50;
    *(v55 + 22) = 2048;
    *(v55 + 24) = v52;
    _os_log_impl(&dword_1BBC58000, v53, v54, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v55, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_35_3();
  result.height = v60;
  result.width = v59;
  return result;
}

uint64_t specialized max<A>(_:_:_:_:)(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

CGSize __swiftcall SystemApertureOngoingTelephonyControlsView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  [v3 sizeThatFits_];
  result.height = v5;
  result.width = v4;
  return result;
}

void SystemApertureOngoingTelephonyControlsView.updateLeadingView()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = OUTLINED_FUNCTION_42();
    v30 = OUTLINED_FUNCTION_23();
    v11 = v30;
    *v10 = 136446210;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v30);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v15, v16, "[%{public}s] updateLeadingView");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v17 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) removeFromSuperview];
  v18 = *(v1 + v17);
  *(v1 + v17) = 0;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  v19 = v6 + *(v2 + 68);
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  outlined copy of LeadingViewType?(*v19, v20, *(v19 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v6, v23);
  if (v22 == 255)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v25))
    {
      v26 = OUTLINED_FUNCTION_42();
      v27 = OUTLINED_FUNCTION_23();
      v30 = v27;
      *v26 = 136446210;
      v28 = _typeName(_:qualified:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v30);
      OUTLINED_FUNCTION_32_1();
      *(v26 + 4) = &unk_1BC4BA000;
      _os_log_impl(&dword_1BBC58000, v24, v25, "[%{public}s] omitting leading view", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (v22)
    {
      SystemApertureOngoingTelephonyControlsView.updateBrandedImageIcon(using:)();
    }

    else
    {
      SystemApertureOngoingTelephonyControlsView.updateAvatarView(using:)();
    }

    outlined consume of LeadingViewType?(v21, v20, v22);
  }

  OUTLINED_FUNCTION_30_0();
}

void SystemApertureOngoingTelephonyControlsView.updateAvatarView(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v10))
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_23();
    v23 = v12;
    *v11 = 136446210;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v11 + 4) = v15;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v16, v17, "[%{public}s] showing avatar");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v18 = *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) = v3;
  v19 = v3;

  v20 = [v19 layer];
  v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  OUTLINED_FUNCTION_33_4();
  v21();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v7, v22);
  [v20 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v21();
  OUTLINED_FUNCTION_37_6();
  [v19 setUserInteractionEnabled_];
  [v1 addSubview_];
  [v1 setNeedsLayout];
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureOngoingTelephonyControlsView.updateBrandedImageIcon(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v10))
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_23();
    v24 = v12;
    *v11 = 136446210;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v11 + 4) = v15;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v16, v17, "[%{public}s] showing branded calling image");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v19 = *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) = v18;
  v20 = v18;

  v21 = [v20 layer];
  v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  OUTLINED_FUNCTION_33_4();
  v22();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v7, v23);
  [v21 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v22();
  OUTLINED_FUNCTION_37_6();
  [v20 setUserInteractionEnabled_];
  [v1 addSubview_];
  [v1 setNeedsLayout];

  OUTLINED_FUNCTION_30_0();
}

id SystemApertureOngoingTelephonyControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureOngoingTelephonyControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureOngoingTelephonyControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();
  [a3 setAccessibilityLabel_];
}

uint64_t specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_22_7();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_22_7();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized ()
{
}

{
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for SystemApertureOngoingTelephonyControlsView()
{
  result = type metadata singleton initialization cache for SystemApertureOngoingTelephonyControlsView;
  if (!type metadata singleton initialization cache for SystemApertureOngoingTelephonyControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with copy of ConversationControlsRecipe(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id outlined copy of LeadingViewType?(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of PreCallControlsContext(result);
  }

  return result;
}

void outlined consume of LeadingViewType?(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of PreCallControlsContext(a1);
  }
}

uint64_t type metadata completion function for SystemApertureOngoingTelephonyControlsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ShareCardStatusHeaderView.init(controlsManager:shouldHideDefaultStatusView:preserveProposedWidth:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  type metadata accessor for ShareCardStatusHeaderView(0);
  v14 = type metadata accessor for ConversationControlsRecipe();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  outlined init with copy of ConversationControlsRecipe?(v13, v10);
  State.init(wrappedValue:)();
  result = outlined destroy of ConversationControlsRecipe?(v13);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

uint64_t outlined init with copy of ConversationControlsRecipe?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConversationControlsRecipe?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShareCardStatusHeaderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ShareCardStatusHeaderView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *a1 = static Alignment.center.getter();
  a1[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVy15ConversationKit0j6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA08_PaddingG0VGSgGMd);
  closure #1 in ShareCardStatusHeaderView.body.getter(v1, a1 + *(v7 + 44));
  v8 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACy15ConversationKit0F10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGAKGMd) + 36);
  *v17 = v8;
  *(v17 + 1) = v10;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  v18 = *(*v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher);
  outlined init with copy of ShareCardStatusHeaderView(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareCardStatusHeaderView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  outlined init with take of ShareCardStatusHeaderView(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ShareCardStatusHeaderView);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA15ModifiedContentVyAA6ZStackVyAKy15ConversationKit0l6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGMd);
  *(a1 + *(v21 + 52)) = v18;
  v22 = (a1 + *(v21 + 56));
  *v22 = partial apply for closure #2 in ShareCardStatusHeaderView.body.getter;
  v22[1] = v20;
  outlined init with copy of ShareCardStatusHeaderView(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareCardStatusHeaderView);
  v23 = swift_allocObject();
  outlined init with take of ShareCardStatusHeaderView(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v19, type metadata accessor for ShareCardStatusHeaderView);
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGACyAA6ZStackVyACy15ConversationKit0l6StatusF033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGAA25_AppearanceActionModifierVGMd) + 36));
  *v24 = partial apply for closure #2 in ShareCardStatusHeaderView.body.getter;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
}

uint64_t closure #1 in ShareCardStatusHeaderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit0E10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v29 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShareCardStatusHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMd);
  State.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsRecipe?(v9);
    v13 = 1;
  }

  else
  {
    outlined init with take of ShareCardStatusHeaderView(v9, v12, type metadata accessor for ConversationControlsRecipe);
    v14 = *a1;
    v15 = type metadata accessor for ConversationStatusView(0);
    outlined init with copy of ShareCardStatusHeaderView(v12, v6 + *(v15 + 20), type metadata accessor for ConversationControlsRecipe);
    v16 = *(a1 + 9);
    *v6 = v14;
    *(v6 + *(v15 + 24)) = v16;
    v17 = v14;
    v18 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    outlined destroy of ConversationControlsRecipe(v12);
    v27 = v6 + *(v4 + 36);
    *v27 = v18;
    *(v27 + 1) = v20;
    *(v27 + 2) = v22;
    *(v27 + 3) = v24;
    *(v27 + 4) = v26;
    v27[40] = 0;
    outlined init with take of ModifiedContent<ConversationStatusView, _PaddingLayout>(v6, a2);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v4);
}

uint64_t ShareCardStatusHeaderView.updateRecipe()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *v15 = 11;
  memset(&v15[8], 0, 32);
  v16 = 7;
  v11 = *v0;
  ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)(0, v15, *v0, v10);
  outlined destroy of ConversationControlsType(v15);
  type metadata accessor for ShareCardStatusHeaderView(0);
  outlined init with copy of ConversationControlsRecipe?(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMd);
  State.wrappedValue.setter();
  outlined destroy of ConversationControlsRecipe?(v10);
  State.wrappedValue.getter();
  v12 = type metadata accessor for ConversationControlsRecipe();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v12);
  result = outlined destroy of ConversationControlsRecipe?(v4);
  if (EnumTagSinglePayload == 1 && (v1[1] & 1) == 0)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 7;
    ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)(0, v15, v11, v10);
    outlined destroy of ConversationControlsType(v15);
    outlined init with copy of ConversationControlsRecipe?(v10, v7);
    State.wrappedValue.setter();
    return outlined destroy of ConversationControlsRecipe?(v10);
  }

  return result;
}

void type metadata completion function for ShareCardStatusHeaderView()
{
  type metadata accessor for ConversationControlsManager(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<ConversationControlsRecipe?>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for State<ConversationControlsRecipe?>()
{
  if (!lazy cache variable for type metadata for State<ConversationControlsRecipe?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<ConversationControlsRecipe?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGACyAA6ZStackVyACy15ConversationKit0l6StatusF033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>()
{
  result = lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>;
  if (!lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA15ModifiedContentVyAA6ZStackVyAKy15ConversationKit0l6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ShareCardStatusHeaderView(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ConversationStatusView()
{
  result = type metadata accessor for ConversationControlsManager(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConversationControlsRecipe();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id ConversationStatusView.makeUIView(context:)()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConversationStatusView(0);
  outlined init with copy of ShareCardStatusHeaderView(v0 + *(v4 + 20), v3, type metadata accessor for ConversationControlsRecipe);
  v5 = *v0;
  v9 = 1;
  v6 = objc_allocWithZone(type metadata accessor for ConversationHUDControlsStatusView());
  return ConversationHUDControlsStatusView.init(recipe:controlsManager:menuHostViewController:context:presentationStyle:)(v3, v5, 0, 0, 2, &v9);
}

uint64_t ConversationStatusView.updateUIView(_:context:)(void *a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConversationStatusView(0);
  outlined init with copy of ShareCardStatusHeaderView(v1 + *(v6 + 20), v5, type metadata accessor for ConversationControlsRecipe);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(v5);
}

double ConversationStatusView.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5, double a6, double a7, double a8, double a9)
{
  v11 = *MEMORY[0x1E69DE090];
  v12 = *(MEMORY[0x1E69DE090] + 8);
  v13 = *&a1;
  if ((a2 & 1) == 0)
  {
    v11 = *&a1;
  }

  HIDWORD(v14) = HIDWORD(a3);
  if ((a4 & 1) == 0)
  {
    v12 = *&a3;
  }

  LODWORD(v14) = 1148846080;
  LODWORD(a9) = 1132068864;
  [a5 systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:v12 verticalFittingPriority:{v14, a9}];
  v16 = v15;
  if (a2)
  {
    v13 = v15;
  }

  if (*(v9 + *(type metadata accessor for ConversationStatusView(0) + 24)))
  {
    return v13;
  }

  else
  {
    return v16;
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ConversationStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(&lazy protocol witness table cache variable for type ConversationStatusView and conformance ConversationStatusView);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ConversationStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(&lazy protocol witness table cache variable for type ConversationStatusView and conformance ConversationStatusView);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ConversationStatusView()
{
  lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(&lazy protocol witness table cache variable for type ConversationStatusView and conformance ConversationStatusView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t outlined init with copy of ShareCardStatusHeaderView(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConversationStatusView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ShareCardStatusHeaderView(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ConversationControlsRecipe(uint64_t a1)
{
  v2 = type metadata accessor for ConversationControlsRecipe();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ConversationStatusView, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit0E10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15ConversationKit18CallGameControllerC0gH8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_AKs5NeverOTg504_s15d5Kit19ghi27_pAA04CallcD0C0cdE3Box33_27klmnopq16EELLVIegnr_A2Gs5S119OIegnrzr_TR04_s15a5Kit18fcd21C27removeAllEventsFore33TypeyyAA0deJ0_pXpFAC0deJ3Box33_27hijklmN14EELLVAaE_pcfu_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v30;
    v6 = specialized Set.startIndex.getter(v2);
    v7 = 0;
    v28 = v2 + 56;
    v23 = v2 + 64;
    v24 = v1;
    v25 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_25;
        }

        v27 = v5;
        v26 = v4;
        outlined init with copy of CallGameController.GameControllerEventBox(*(v2 + 48) + 40 * v6, v29);
        v9 = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
        v10 = swift_allocObject();
        outlined init with copy of CallGameController.GameControllerEventBox(v29, v10 + 16);
        outlined destroy of CallGameController.GameControllerEventBox(v29);
        v30 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
          v3 = v30;
        }

        *(v3 + 16) = v12 + 1;
        v13 = v3 + 40 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v29[0];
        *(v13 + 56) = &type metadata for CallGameController.GameControllerEventBox;
        *(v13 + 64) = v9;
        if (v27)
        {
          goto LABEL_29;
        }

        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v6 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v28 + 8 * v8);
        if ((v15 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v6 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v17 = v24;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v17 = v24;
          v20 = (v23 + 8 * v8);
          while (v19 < (v14 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v6, v26, 0);
              v14 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v6, v26, 0);
        }

LABEL_19:
        if (++v7 == v17)
        {
          return;
        }

        v5 = 0;
        v4 = *(v25 + 36);
        v6 = v14;
        if (v14 < 0)
        {
          break;
        }
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
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Sequence.forEach(_:)(a1, a2, a3, type metadata accessor for ConversationControlsAction);
}

{
  return specialized Sequence.forEach(_:)(a1, a2, a3, MEMORY[0x1E6969C28]);
}

{
  return specialized Sequence.forEach(_:)(a1, a2, a3, type metadata accessor for RecentsCallItem);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  for (i = a3; a4 != i; ++i)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    if (i >= a4)
    {
      goto LABEL_9;
    }

    v9 = i;
    result = v7(&v9);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v10 = *(a4(0) - 8);
    result = v7(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
  }

  while (!v4);
  return result;
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = a4(a3);
  for (i = 0; v7 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB22010](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    a1(&v11);

    if (v4)
    {
      return;
    }
  }
}

uint64_t CallGameController.GameControllerEventBox.actions.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

BOOL static CallGameController.GameControllerEventBox.== infix(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_6_4();
  v3 = dispatch thunk of Hashable.hashValue.getter();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return v3 == dispatch thunk of Hashable.hashValue.getter();
}

Swift::Int CallGameController.GameControllerEventBox.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallGameController.GameControllerEventBox()
{
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CallGameController.isActivated.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t CallGameController.__allocating_init()()
{
  v0 = swift_allocObject();
  CallGameController.init()();
  return v0;
}

uint64_t closure #1 in CallGameController.init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (*(v1 + 16) == 1)
    {
      CallGameController.attachAllControllers()();
    }
  }

  return result;
}

uint64_t CallGameController.addEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized CallGameController.addEvent(_:)(v4, v1, v2, v3);
}

uint64_t CallGameController.removeEvent(_:)(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of IDSLookupManager(a1, v8);
  OUTLINED_FUNCTION_30_2();
  specialized Set._Variant.remove(_:)(v8, v9);
  swift_endAccess();
  outlined destroy of CallGameController.GameControllerEventBox(v8);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit18CallGameControllerC0dE8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVSgMd);
  v4 = [objc_opt_self() controllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7[2] = v2;
  v7[3] = a1;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in CallGameController.removeEvent(_:), v7, v5, specialized Array.count.getter);
}

uint64_t closure #1 in CallGameController.removeEvent(_:)(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a3[3];
  v6 = a3[4];
  v7 = __swift_project_boxed_opaque_existential_1(a3, v5);
  return specialized CallGameController.detachEvent(event:fromController:)(v7, v4, a2, v5, v6);
}

void CallGameController.removeAllEventsForEventType(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v38[8] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v6 = *(v0 + 32);
  v35 = v5;
  v36 = v3;
  v7 = *(v6 + 32);
  LODWORD(v3) = v7 & 0x3F;
  v8 = ((1 << v7) + 63) >> 6;
  v9 = (8 * v8);

  if (v3 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33[0] = v33;
    MEMORY[0x1EEE9AC00](v10);
    v9 = v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    v33[1] = v8;
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v9);
    v34 = 0;
    v11 = 0;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(v6 + 56);
    v14 = (v12 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v19 = v15 | (v11 << 6);
      outlined init with copy of CallGameController.GameControllerEventBox(*(v6 + 48) + 40 * v19, v38);
      outlined init with copy of IDSLookupManager(v38, v37);
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v37);
      outlined destroy of CallGameController.GameControllerEventBox(v38);
      if (DynamicType == v5)
      {
        *&v9[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_16:
          specialized _NativeSet.extractSubset(using:count:)();
          v23 = v22;
          goto LABEL_17;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v14)
      {
        goto LABEL_16;
      }

      ++v16;
      if (*(v6 + 56 + 8 * v11))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v18 & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15ConversationKit18CallGameControllerC0lM8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i5Kit18klm5C0iJ8n8Box33_27pqrstuV9EELLV_TG5ANxSbs5Error_pRi_zRi0_zlyAMIsgndzo_Tf1nc_n(v32, v8, v6, partial apply for closure #1 in CallGameController.removeAllEventsForEventType(_:));

  MEMORY[0x1BFB23DF0](v32, -1, -1);
LABEL_17:
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15ConversationKit18CallGameControllerC0gH8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_AKs5NeverOTg504_s15d5Kit19ghi27_pAA04CallcD0C0cdE3Box33_27klmnopq16EELLVIegnr_A2Gs5S119OIegnrzr_TR04_s15a5Kit18fcd21C27removeAllEventsFore33TypeyyAA0deJ0_pXpFAC0deJ3Box33_27hijklmN14EELLVAaE_pcfu_Tf3nnnpf_nTf1cn_n(v23);
  v25 = v24;

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = objc_opt_self();
    v34 = v25;
    v28 = v25 + 32;
    do
    {
      outlined init with copy of CallGameController.GameControllerEventBox(v28, v38);
      OUTLINED_FUNCTION_30_2();
      specialized Set._Variant.remove(_:)(v38, v37);
      swift_endAccess();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit18CallGameControllerC0dE8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVSgMd);
      v29 = [v27 controllers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      MEMORY[0x1EEE9AC00](v31);
      v33[-2] = v1;
      v33[-1] = v38;
      specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #2 in CallGameController.removeAllEventsForEventType(_:), &v33[-4], v30, specialized Array.count.getter);

      outlined destroy of CallGameController.GameControllerEventBox(v38);
      v28 += 40;
      --v26;
    }

    while (v26);
  }

  OUTLINED_FUNCTION_30_0();
}

BOOL closure #1 in CallGameController.removeAllEventsForEventType(_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of IDSLookupManager(a1, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return DynamicType == a2;
}

uint64_t CallGameController.attachController(_:)(void *a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 56);
    v8 = (v5 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v7; result = outlined destroy of CallGameController.GameControllerEventBox(v12))
    {
      v10 = i;
LABEL_10:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      outlined init with copy of CallGameController.GameControllerEventBox(*(v4 + 48) + 40 * (v11 | (v10 << 6)), v12);
      specialized CallGameController.attachEvent(_:toController:)(v12, a1, v1);
    }

    while (1)
    {
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 56 + 8 * v10);
      ++i;
      if (v7)
      {
        i = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in CallGameController.attachEvent(_:toController:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController19GCButtonElementNameVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36[-1] - v8;
  v10 = type metadata accessor for GameControllerPressAction();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = *(v14 + 16);

    if (v15 == 1 && (a3 & 1) != 0)
    {
      (*(a5 + *(v10 + 20)))(v16);
      if (one-time initialization token for conversationControlsGaming != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.conversationControlsGaming);
      outlined init with copy of CountdownVoucher(a5, v12, type metadata accessor for GameControllerPressAction);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36[0] = v21;
        *v20 = 136315138;
        v22 = type metadata accessor for GCButtonElementName();
        (*(*(v22 - 8) + 16))(v9, v12, v22);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v22);
        specialized >> prefix<A>(_:)(v9, v23, v24, v25, v26, v27, v28, v29, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8]);
        v31 = v30;
        v33 = v32;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s14GameController19GCButtonElementNameVSgMd);
        outlined destroy of CountdownVoucher(v12, type metadata accessor for GameControllerPressAction);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v36);

        *(v20 + 4) = v34;
        _os_log_impl(&dword_1BBC58000, v18, v19, "%s button pressed", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1BFB23DF0](v21, -1, -1);
        MEMORY[0x1BFB23DF0](v20, -1, -1);
      }

      else
      {

        outlined destroy of CountdownVoucher(v12, type metadata accessor for GameControllerPressAction);
      }
    }
  }
}

void ConversationControlsManager.updateGameControllerForCallStatus(_:)(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController);
  if (a1 == 4)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_20();
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_20();
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(partial apply for closure #1 in ConversationControlsManager.updateGameControllerForCallStatus(_:), v3, partial apply for closure #2 in ConversationControlsManager.updateGameControllerForCallStatus(_:), v4);
      specialized CallGameController.addEvent(_:)(v5);
    }
  }

  else if (v2)
  {
    lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent();
    CallGameController.removeAllEventsForEventType(_:)();
  }
}

void closure #1 in ConversationControlsManager.updateGameControllerForCallStatus(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong acceptCallButtonTappedWithIgnoresSmartHoldingSession_];
  }
}

void closure #2 in ConversationControlsManager.updateGameControllerForCallStatus(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong rejectCallButtonTapped];
  }
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BC4BB7D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void specialized Set._Variant.remove(_:)()
{
  OUTLINED_FUNCTION_29();
  v25 = v1;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v24 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_0_20();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(v10, v11);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  OUTLINED_FUNCTION_16_7();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    if (((*(v9 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
    {
      v19 = 1;
      v20 = v25;
      goto LABEL_9;
    }

    v16 = *(v4 + 72) * v15;
    (*(v4 + 16))(v8, *(v9 + 48) + v16, v2);
    OUTLINED_FUNCTION_0_20();
    lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, v17);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v4 + 8))(v8, v2);
    if (v18)
    {
      break;
    }

    v12 = v15 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v24;
  v26 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v22 = v26;
  }

  v23 = *(v22 + 48) + v16;
  v20 = v25;
  (*(v4 + 32))(v25, v23, v2);
  specialized _NativeSet._delete(at:)(v15);
  v19 = 0;
  *v24 = v26;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v2);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v21 = v1;
  v2 = type metadata accessor for CountdownVoucher(0);
  OUTLINED_FUNCTION_1();
  v22 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = *v0;
  Hasher.init(_seed:)();
  v23 = v2;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_20();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(v9, v10);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v13 = ~v12;
  while (1)
  {
    v14 = v11 & v13;
    if (((*(v8 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
    {
      v17 = 1;
      v18 = v21;
      goto LABEL_9;
    }

    v15 = *(v22 + 72) * v14;
    outlined init with copy of CountdownVoucher(*(v8 + 48) + v15, v7, type metadata accessor for CountdownVoucher);
    v16 = static UUID.== infix(_:_:)();
    outlined destroy of CountdownVoucher(v7, type metadata accessor for CountdownVoucher);
    if (v16)
    {
      break;
    }

    v11 = v14 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;
  v24 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v20 = v24;
  }

  v18 = v21;
  outlined init with take of CountdownVoucher(*(v20 + 48) + v15, v21, type metadata accessor for CountdownVoucher);
  specialized _NativeSet._delete(at:)();
  v17 = 0;
  *v0 = v24;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v18, v17, 1, v23);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v28 = v3;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_20();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(v12, v13);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v16 = v15 & ~v14;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v14;
    v18 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of CountdownVoucher(*(v11 + 48) + v18 * v16, v10, type metadata accessor for Participant);
      static Participant.State.== infix(_:_:)();
      if ((v19 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v2 + *(v4 + 28)) == 0) == (*(v10 + *(v4 + 28)) == 0))
      {
        v20 = *(v4 + 24);
        v21 = (v10 + v20);
        v22 = *(v10 + v20);
        v23 = (v2 + v20);
        if (v22 == *v23 && ((v21[1] ^ v23[1]) & 1) == 0 && ((v21[2] ^ v23[2]) & 1) == 0 && ((v21[3] ^ v23[3]) & 1) == 0 && ((v21[4] ^ v23[4]) & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_11_9();
      v16 = (v16 + 1) & v17;
      if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_11_9();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v0;
    v29 = *v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v27 = v29;
    }

    outlined init with take of CountdownVoucher(*(v27 + 48) + v18 * v16, v28, type metadata accessor for Participant);
    specialized _NativeSet._delete(at:)();
    *v0 = v29;
    v24 = v28;
    v25 = 0;
  }

  else
  {
LABEL_12:
    v24 = v28;
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v4);
  OUTLINED_FUNCTION_30_0();
}

void specialized Set._Variant.remove(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    outlined init with copy of CallGameController.GameControllerEventBox(*(v5 + 48) + 40 * v8, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v9 = dispatch thunk of Hashable.hashValue.getter();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = dispatch thunk of Hashable.hashValue.getter();
    outlined destroy of CallGameController.GameControllerEventBox(v16);
    if (v9 == v10)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v15;
  v16[0] = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v16[0];
  }

  v13 = *(v12 + 48) + 40 * v8;
  v14 = *(v13 + 16);
  *a2 = *v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = *(v13 + 32);
  specialized _NativeSet._delete(at:)(v8);
  *v15 = v16[0];
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_23_10();
  if ((v13 & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v25;
  }

  v14 = *(*(v12 + 48) + 16 * v9);
  v15 = specialized _NativeSet._delete(at:)(v9);
  OUTLINED_FUNCTION_22_8(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
  return v14;
}

uint64_t specialized Set._Variant.remove(_:)()
{
  OUTLINED_FUNCTION_27_6();
  if (v2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    NSObject._rawHashValue(seed:)(*(v0 + 40));
    OUTLINED_FUNCTION_16_7();
    v8 = ~v7;
    while (1)
    {
      v9 = v6 & v8;
      if (((*(v0 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
      {
        break;
      }

      v10 = *(*(v0 + 48) + 8 * v9);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_10();
        if ((v13 & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v12 = v24;
        }

        v5 = *(*(v12 + 48) + 8 * v9);
        v14 = specialized _NativeSet._delete(at:)(v9);
        OUTLINED_FUNCTION_22_8(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
        return v5;
      }

      v6 = v9 + 1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_29_8();
  v3 = v1;
  v4 = __CocoaSet.contains(_:)();

  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = specialized Set._Variant._migrateToNative(_:removing:)();

  return v5;
}

{
  OUTLINED_FUNCTION_27_6();
  if (v3)
  {
    type metadata accessor for CoupledHUDActivity(0);
    Hasher.init(_seed:)();
    HUDActivity.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_16_7();
    v8 = ~v7;
    while (1)
    {
      v9 = v6 & v8;
      if (((*(v1 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
      {
        break;
      }

      v11 = static HUDActivity.== infix(_:_:)(v10, v2);

      if (v11)
      {
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_10();
        if ((v13 & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v12 = v24;
        }

        v5 = *(*(v12 + 48) + 8 * v9);
        v14 = specialized _NativeSet._delete(at:)(v9);
        OUTLINED_FUNCTION_22_8(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
        return v5;
      }

      v6 = v9 + 1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_29_8();

  v4 = __CocoaSet.contains(_:)();

  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = specialized Set._Variant._migrateToNative(_:removing:)(v0, v2);

  return v5;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  MEMORY[0x1BFB22620](*(*v2 + 40), a1);
  OUTLINED_FUNCTION_26_9();
  while (1)
  {
    v9 = v5 & v7;
    if (((v8 << (v5 & v7)) & *(v6 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v9) == a1)
    {
      break;
    }

    v5 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_23_10();
  if ((v12 & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v11 = v23;
  }

  v10 = *(*(v11 + 48) + 8 * v9);
  v13 = specialized _NativeSet._delete(at:)(v9);
  OUTLINED_FUNCTION_22_8(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
  return v10;
}

{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  Hasher._finalize()();
  OUTLINED_FUNCTION_26_9();
  while (1)
  {
    v8 = v4 & v6;
    if (((v7 << (v4 & v6)) & *(v5 + (((v4 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v3 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v4 = v8 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_23_10();
  if ((v11 & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v22;
  }

  v9 = *(*(v10 + 48) + 8 * v8);
  v12 = specialized _NativeSet._delete(at:)(v8);
  OUTLINED_FUNCTION_22_8(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
  return v9;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{

  v0 = __CocoaSet.count.getter();
  v1 = swift_unknownObjectRetain();
  v2 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo18CNComposeRecipientC_Tt1g5(v1, v0);
  v12 = v2;
  v3 = *(v2 + 40);

  v4 = NSObject._rawHashValue(seed:)(v3);
  v5 = ~(-1 << *(v2 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    v7 = *(*(v2 + 48) + 8 * v6);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {

      v9 = *(*(v2 + 48) + 8 * v6);
      specialized _NativeSet._delete(at:)(v6);
      if (static NSObject.== infix(_:_:)())
      {
        *v11 = v12;
        return v9;
      }

      __break(1u);
      break;
    }

    v4 = v6 + 1;
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLC_Tt1g5(v6, v5);
  v15 = v7;
  Hasher.init(_seed:)();

  HUDActivity.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for CoupledHUDActivity(0);

    v12 = static HUDActivity.== infix(_:_:)(v11, a2);

    if (v12)
    {

      v13 = *(*(v7 + 48) + 8 * v10);
      specialized _NativeSet._delete(at:)(v10);
      if (static HUDActivity.== infix(_:_:)(a2, v13))
      {
        *v3 = v15;
        return v13;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

void specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for GameControllerPressAction();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v33 = v7;
      v34 = v6;
      v36 = (v11 + 1) & v10;
      v37 = v10;
      do
      {
        outlined init with copy of CallGameController.GameControllerEventBox(*(v6 + 48) + 40 * v9, v39);
        Hasher.init(_seed:)();
        v12 = v40;
        v13 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v14 = (*(v13 + 16))(v12, v13);
        v15 = *(v14 + 16);
        if (v15)
        {
          v38 = a1;
          v16 = v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
          v17 = *(v35 + 72);
          do
          {
            outlined init with copy of CountdownVoucher(v16, v5, type metadata accessor for GameControllerPressAction);
            type metadata accessor for GCButtonElementName();
            lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170]);
            dispatch thunk of Hashable.hash(into:)();
            outlined destroy of CountdownVoucher(v5, type metadata accessor for GameControllerPressAction);
            v16 += v17;
            --v15;
          }

          while (v15);

          v7 = v33;
          v6 = v34;
          a1 = v38;
        }

        else
        {
        }

        v18 = Hasher._finalize()();
        outlined destroy of CallGameController.GameControllerEventBox(v39);
        v19 = v37;
        v20 = v18 & v37;
        if (a1 >= v36)
        {
          if (v20 >= v36 && a1 >= v20)
          {
LABEL_20:
            v23 = *(v6 + 48);
            v24 = v23 + 40 * a1;
            v25 = (v23 + 40 * v9);
            if (a1 != v9 || v24 >= v25 + 40)
            {
              v27 = *v25;
              v28 = v25[1];
              *(v24 + 32) = *(v25 + 4);
              *v24 = v27;
              *(v24 + 16) = v28;
              a1 = v9;
            }
          }
        }

        else if (v20 >= v36 || a1 >= v20)
        {
          goto LABEL_20;
        }

        v9 = (v9 + 1) & v19;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v6 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v31;
    ++*(v6 + 36);
  }
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
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

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x1BFB22620](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        HUDActivity.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void specialized _NativeSet._delete(at:)()
{
  OUTLINED_FUNCTION_29();
  v39 = v1;
  v3 = v2;
  v40 = v4(0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = *v0;
  v11 = *v0 + 56;
  v12 = -1 << *(*v0 + 32);
  v13 = (v3 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v16 = (v15 + 1) & v14;
      v41 = *(v6 + 72);
      v17 = v14;
      v38 = v11;
      do
      {
        v18 = v41 * v13;
        v19 = v16;
        v20 = v39;
        outlined init with copy of CountdownVoucher(*(v10 + 48) + v41 * v13, v9, v39);
        v21 = v10;
        Hasher.init(_seed:)();
        v22 = v17;
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_0_20();
        lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, v23);
        dispatch thunk of Hashable.hash(into:)();
        v24 = Hasher._finalize()();
        v25 = v20;
        v16 = v19;
        outlined destroy of CountdownVoucher(v9, v25);
        v26 = v24 & v22;
        v17 = v22;
        if (v3 >= v19)
        {
          if (v26 < v19 || v3 < v26)
          {
LABEL_20:
            v10 = v21;
            goto LABEL_24;
          }
        }

        else if (v26 < v19 && v3 < v26)
        {
          goto LABEL_20;
        }

        v10 = v21;
        v28 = *(v21 + 48);
        v29 = v41 * v3;
        v30 = v28 + v41 * v3;
        v31 = v28 + v18 + v41;
        if (v41 * v3 < v18 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v3 = v13;
          goto LABEL_24;
        }

        v3 = v13;
        if (v29 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v13 = (v13 + 1) & v17;
        v11 = v38;
      }

      while (((*(v38 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  else
  {
    *(v11 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  v34 = *(v10 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v36;
    ++*(v10 + 36);
    OUTLINED_FUNCTION_30_0();
  }
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15ConversationKit18CallGameControllerC0lM8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i5Kit18klm5C0iJ8n8Box33_27pqrstuV9EELLV_TG5ANxSbs5Error_pRi_zRi0_zlyAMIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void specialized _NativeSet.extractSubset(using:count:)()
{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_9();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
LABEL_25:

LABEL_26:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (*(v4 + 16) == v1)
  {
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_6_4();
  static _SetStorage.allocate(capacity:)();
  OUTLINED_FUNCTION_17_12();
  while (v7)
  {
    OUTLINED_FUNCTION_13_16();
    v23 = v8;
LABEL_13:
    v12 = OUTLINED_FUNCTION_10_6();
    v13(v12);
    OUTLINED_FUNCTION_0_20();
    lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, v14);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v15)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v15)
        {
          if (v17)
          {
            goto LABEL_28;
          }
        }

        if (v16 == v18)
        {
          v16 = 0;
        }

        if (*(v0 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_23;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_23:
    OUTLINED_FUNCTION_8_3();
    v20 = OUTLINED_FUNCTION_12_11(v19);
    v21(v20);
    OUTLINED_FUNCTION_25_8();
    if (v22)
    {
      goto LABEL_29;
    }

    v7 = v23;
  }

  v9 = v5;
  while (1)
  {
    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v5 >= v2)
    {
      goto LABEL_25;
    }

    ++v9;
    if (*(v3 + 8 * v5))
    {
      OUTLINED_FUNCTION_7_1();
      v23 = v11 & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for GameControllerPressAction();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (!v3)
  {

LABEL_34:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (*(v1 + 16) == v3)
  {
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd);
  v12 = static _SetStorage.allocate(capacity:)();
  if (v5 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v7;
  }

  v14 = 0;
  v15 = v12 + 56;
  v42 = v5;
  v40 = v1;
  v39 = v7;
  v41 = v12;
  while (v13)
  {
    OUTLINED_FUNCTION_13_16();
    v44 = v18;
LABEL_16:
    outlined init with copy of CallGameController.GameControllerEventBox(*(v1 + 48) + (v16 | (v14 << 6)) * v17, &v45);
    Hasher.init(_seed:)();
    v22 = *(&v46 + 1);
    v23 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    v24 = (*(v23 + 16))(v22, v23);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v27 = *(v43 + 72);
      do
      {
        outlined init with copy of CountdownVoucher(v26, v11, type metadata accessor for GameControllerPressAction);
        type metadata accessor for GCButtonElementName();
        lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170]);
        dispatch thunk of Hashable.hash(into:)();
        outlined destroy of CountdownVoucher(v11, type metadata accessor for GameControllerPressAction);
        v26 += v27;
        --v25;
      }

      while (v25);

      v1 = v40;
      v7 = v39;
    }

    else
    {
    }

    Hasher._finalize()();
    v5 = v42;
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v28)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v28)
        {
          if (v30)
          {
            goto LABEL_36;
          }
        }

        if (v29 == v31)
        {
          v29 = 0;
        }

        if (*(v15 + 8 * v29) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_31;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_31:
    OUTLINED_FUNCTION_8_3();
    *(v15 + v32) |= v33;
    v35 = *(v41 + 48) + 40 * v34;
    v36 = v45;
    v37 = v46;
    *(v35 + 32) = v47;
    *v35 = v36;
    *(v35 + 16) = v37;
    ++*(v41 + 16);
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_37;
    }

    v13 = v44;
    if (!v3)
    {
LABEL_33:

      goto LABEL_34;
    }
  }

  v19 = v14;
  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= v5)
    {
      goto LABEL_33;
    }

    ++v19;
    if (v7[v14])
    {
      OUTLINED_FUNCTION_7_1();
      v44 = v21 & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  OUTLINED_FUNCTION_29();
  v5 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v6 = v1;
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_6_4();
  v8 = static _SetStorage.allocate(capacity:)();
  v9 = v8;
  if (v6 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v7;
  }

  v11 = 0;
  v12 = v8 + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v17 = *(v9 + 40);
    v18 = *(*(v5 + 48) + 8 * (v13 | (v11 << 6)));
    NSObject._rawHashValue(seed:)(v17);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v19)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v19)
        {
          if (v21)
          {
            goto LABEL_29;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v12 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_26:
    OUTLINED_FUNCTION_8_3();
    *(v12 + v23) |= v24;
    *(*(v9 + 48) + 8 * v25) = v18;
    OUTLINED_FUNCTION_28_10();
    if (v26)
    {
      goto LABEL_30;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      goto LABEL_5;
    }

    ++v14;
    if (v7[v11])
    {
      OUTLINED_FUNCTION_7_1();
      v10 = v16 & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_9();
  type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
LABEL_25:

LABEL_26:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (*(v4 + 16) == v1)
  {
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd);
  OUTLINED_FUNCTION_6_4();
  static _SetStorage.allocate(capacity:)();
  OUTLINED_FUNCTION_17_12();
  while (v7)
  {
    OUTLINED_FUNCTION_13_16();
    v22 = v8;
LABEL_13:
    v12 = OUTLINED_FUNCTION_10_6();
    v13(v12);
    lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v14)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v14)
        {
          if (v16)
          {
            goto LABEL_28;
          }
        }

        if (v15 == v17)
        {
          v15 = 0;
        }

        if (*(v0 + 8 * v15) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_23;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_23:
    OUTLINED_FUNCTION_8_3();
    v19 = OUTLINED_FUNCTION_12_11(v18);
    v20(v19);
    OUTLINED_FUNCTION_25_8();
    if (v21)
    {
      goto LABEL_29;
    }

    v7 = v22;
  }

  v9 = v5;
  while (1)
  {
    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v5 >= v2)
    {
      goto LABEL_25;
    }

    ++v9;
    if (*(v3 + 8 * v5))
    {
      OUTLINED_FUNCTION_7_1();
      v22 = v11 & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
      OUTLINED_FUNCTION_6_4();
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v26 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v17 = *v16;
        v18 = v16[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_21_7();
        if (v19)
        {
          OUTLINED_FUNCTION_3_21();
          while (1)
          {
            OUTLINED_FUNCTION_19_2();
            if (v19)
            {
              if (v22)
              {
                goto LABEL_29;
              }
            }

            if (v21 == v23)
            {
              v21 = 0;
            }

            if (*(v11 + 8 * v21) != -1)
            {
              OUTLINED_FUNCTION_2_0();
              goto LABEL_26;
            }
          }
        }

        OUTLINED_FUNCTION_4_12();
LABEL_26:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v24 = (*(v8 + 48) + 16 * v20);
        *v24 = v17;
        v24[1] = v18;
        OUTLINED_FUNCTION_28_10();
        if (v25)
        {
          goto LABEL_30;
        }

        v4 = v26;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_7_1();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t specialized CallGameController.detachEvent(event:fromController:)(uint64_t a1, void *a2)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd);
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v34 - v4;
  v6 = type metadata accessor for GameControllerPressAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[3] = &type metadata for CallGameController.GameControllerEventBox;
  v40[4] = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
  v10 = swift_allocObject();
  v40[0] = v10;
  outlined init with copy of CallGameController.GameControllerEventBox(a1, (v10 + 2));
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationControlsGaming);
  outlined init with copy of IDSLookupManager(v40, v39);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v34 = v7;
    v15 = v3;
    v16 = v38;
    *v14 = 136315138;
    outlined init with copy of IDSLookupManager(v39, v37);
    v17 = specialized >> prefix<A>(_:)(v37);
    v19 = v18;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit19GameControllerEvent_pSgMd);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v38);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Disconnecting controller from event: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v21 = v16;
    v3 = v15;
    v7 = v34;
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v22 = v10[5];
  v23 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v22);
  v24 = (*(v23 + 16))(v22, v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v7 + 80);
    v34 = v24;
    v27 = v24 + ((v26 + 32) & ~v26);
    v28 = *(v7 + 72);
    v29 = (v3 + 8);
    do
    {
      outlined init with copy of CountdownVoucher(v27, v9, type metadata accessor for GameControllerPressAction);
      v30 = [v36 input];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput);
      GCDevicePhysicalInputState.buttons.getter();

      v31 = GCPhysicalInputElementCollection<>.subscript.getter();
      (*v29)(v5, v35);
      if (v31)
      {
        v32 = [v31 pressedInput];
        swift_unknownObjectRelease();
        [v32 setPressedDidChangeHandler_];
        swift_unknownObjectRelease();
      }

      outlined destroy of CountdownVoucher(v9, type metadata accessor for GameControllerPressAction);
      v27 += v28;
      --v25;
    }

    while (v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t specialized CallGameController.detachEvent(event:fromController:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd);
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v39 - v9;
  v11 = type metadata accessor for GameControllerPressAction();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = a4;
  v47[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationControlsGaming);
  outlined init with copy of IDSLookupManager(v47, v46);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a4;
    v41 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v12;
    v22 = v21;
    v45 = v21;
    *v20 = 136315138;
    outlined init with copy of IDSLookupManager(v46, v44);
    v23 = specialized >> prefix<A>(_:)(v44);
    v25 = v24;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s15ConversationKit19GameControllerEvent_pSgMd);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v45);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1BBC58000, v17, v18, "Disconnecting controller from event: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v27 = v22;
    v12 = v39;
    MEMORY[0x1BFB23DF0](v27, -1, -1);
    v28 = v20;
    a4 = v40;
    v8 = v41;
    MEMORY[0x1BFB23DF0](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v29 = (*(a5 + 16))(a4, a5);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = *(v12 + 80);
    v41 = v29;
    v32 = v29 + ((v31 + 32) & ~v31);
    v33 = *(v12 + 72);
    v34 = (v8 + 8);
    do
    {
      outlined init with copy of CountdownVoucher(v32, v14, type metadata accessor for GameControllerPressAction);
      v35 = [v43 input];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput);
      GCDevicePhysicalInputState.buttons.getter();

      v36 = GCPhysicalInputElementCollection<>.subscript.getter();
      (*v34)(v10, v42);
      if (v36)
      {
        v37 = [v36 pressedInput];
        swift_unknownObjectRelease();
        [v37 setPressedDidChangeHandler_];
        swift_unknownObjectRelease();
      }

      outlined destroy of CountdownVoucher(v14, type metadata accessor for GameControllerPressAction);
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t specialized CallGameController.addEvent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of IDSLookupManager(v10, v8);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v9, v8);
  swift_endAccess();
  outlined destroy of CallGameController.GameControllerEventBox(v9);
  CallGameController.attachAllControllers()();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t getEnumTagSinglePayload for CallGameController.GameControllerEventBox(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CallGameController.GameControllerEventBox(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox()
{
  result = lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox;
  if (!lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox;
  if (!lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox;
  if (!lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CallGameController.GameControllerEventBox(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized CallGameController.attachEvent(_:toController:)(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd);
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - v6;
  v7 = type metadata accessor for GameControllerPressAction();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v55[3] = &type metadata for CallGameController.GameControllerEventBox;
  v55[4] = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
  v13 = swift_allocObject();
  v55[0] = v13;
  outlined init with copy of CallGameController.GameControllerEventBox(a1, (v13 + 2));
  swift_beginAccess();
  v46 = a3;
  if (*(a3 + 16) == 1)
  {
    if (one-time initialization token for conversationControlsGaming != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationControlsGaming);
    outlined init with copy of IDSLookupManager(v55, aBlock);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52 = v18;
      *v17 = 136315138;
      outlined init with copy of IDSLookupManager(aBlock, v51);
      v19 = specialized >> prefix<A>(_:)(v51);
      v21 = v20;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s15ConversationKit19GameControllerEvent_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v52);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1BBC58000, v15, v16, "Attaching controller to event: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    v23 = v13[5];
    v24 = v13[6];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v23);
    v25 = (*(v24 + 16))(v23, v24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v8 + 80);
      v40 = v25;
      v28 = v25 + ((v27 + 32) & ~v27);
      v47 = *(v8 + 72);
      v29 = (v5 + 8);
      v43 = v27;
      v42 = (v27 + 24) & ~v27;
      v41 = v54;
      do
      {
        outlined init with copy of CountdownVoucher(v28, v12, type metadata accessor for GameControllerPressAction);
        v30 = [v50 input];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput);
        v31 = v48;
        GCDevicePhysicalInputState.buttons.getter();

        v32 = GCPhysicalInputElementCollection<>.subscript.getter();
        (*v29)(v31, v49);
        if (v32)
        {
          v33 = [v32 pressedInput];
          swift_unknownObjectRelease();
          v34 = swift_allocObject();
          swift_weakInit();
          v35 = v44;
          outlined init with copy of CountdownVoucher(v12, v44, type metadata accessor for GameControllerPressAction);
          v36 = v42;
          v37 = swift_allocObject();
          *(v37 + 16) = v34;
          outlined init with take of CountdownVoucher(v35, v37 + v36, type metadata accessor for GameControllerPressAction);
          v54[2] = partial apply for closure #1 in closure #1 in CallGameController.attachEvent(_:toController:);
          v54[3] = v37;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v54[0] = thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ();
          v54[1] = &block_descriptor_1;
          v38 = _Block_copy(aBlock);

          [v33 setPressedDidChangeHandler_];
          _Block_release(v38);
          swift_unknownObjectRelease();
        }

        outlined destroy of CountdownVoucher(v12, type metadata accessor for GameControllerPressAction);
        v28 += v47;
        --v26;
      }

      while (v26);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t outlined init with copy of CountdownVoucher(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of CountdownVoucher(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of CountdownVoucher(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void partial apply for closure #1 in closure #1 in CallGameController.attachEvent(_:toController:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for GameControllerPressAction() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  closure #1 in closure #1 in CallGameController.attachEvent(_:toController:)(a1, a2, a3, v8, v9);
}

uint64_t outlined init with copy of GameControllerEvent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19GameControllerEvent_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GreenTeaControlsRecipeGenerator.incomingGreenTea3PHUDRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v8 = OUTLINED_FUNCTION_16(v7);
  v190 = type metadata accessor for SystemApertureIcon(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  v191 = &v184 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  v204 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v18);
  v19 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v203 = &v184 - v25;
  v26 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1E69E7D40];
  v34 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v205 = a1;
  v35 = v34(v30);
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    v201 = v19;
    swift_unknownObjectRetain();
    v38 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v37);
    v192 = v39;
    v199 = v40;
    v206 = v35;
    swift_unknownObjectRelease();
    if (v38)
    {
      v41 = v38;
    }

    v42 = [objc_opt_self() clearColor];
    swift_unknownObjectRetain();
    v43 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v37, 0, v38, v42);
    v44 = [v37 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v195 = (*((*v33 & *v43) + 0x58))(v32);
    (*(v28 + 8))(v32, v26);
    v197 = v43;
    v45 = [v43 view];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v46 = [v37 displayName];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50._countAndFlagsBits = v47;
    v50._object = v49;
    v51.super.isa = NSAttributedString.__allocating_init(string:)(v50).super.isa;
    v52 = [v37 remoteParticipantHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v53 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.count.getter(v53);

    v198 = a3;
    v200 = v38;
    v54 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v212._countAndFlagsBits = 0;
    v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v54, v60, v212);

    __dst[0] = 23;
    memset(&__dst[1], 0, 32);
    LOBYTE(__dst[5]) = 7;
    v196 = v45;
    v64 = v51.super.isa;
    v194 = v45;
    v65 = v64;
    v193 = ConversationControlsStringProvider.callTypeSubtitles(for:)(v205);
    v66 = type metadata accessor for AttributedString();
    v67 = v204;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
    v71 = *(type metadata accessor for ConversationControlsAction() - 8);
    v72 = *(v71 + 72);
    v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1BC4BAA20;
    swift_storeEnumTagMultiPayload();
    *(v74 + v73 + v72) = v63;
    swift_storeEnumTagMultiPayload();
    static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v210);
    v184 = v210[1];
    v185 = v210[0];
    v75 = v211;
    v76 = v201;
    v77 = v201[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v66);
    v81 = (v23 + v76[10]);
    v82 = v23 + v76[15];
    *(v82 + 4) = 0;
    *v82 = 0u;
    *(v82 + 1) = 0u;
    v82[40] = -2;
    *(v23 + v76[16]) = 0;
    v83 = v23 + v76[17];
    OUTLINED_FUNCTION_20_5(v23 + v76[18], 0);
    outlined init with copy of ConversationControlsType(__dst, v23);
    v84 = v194;
    v23[6] = 0;
    v23[7] = v84;
    OUTLINED_FUNCTION_19_3();
    v23[8] = 0;
    v23[9] = v85;
    v195 = v65;
    v86 = v193;
    v23[10] = v65;
    v23[11] = v86;
    v81[1] = 0;
    v81[2] = 0;
    *v81 = 0;
    v87 = v67;
    outlined assign with copy of AttributedString?(v67, v23 + v77);
    *(v23 + v76[11]) = 2;
    *(v23 + v76[12]) = 0;
    *(v23 + v76[13]) = 1;
    *(v23 + v76[14]) = 1;
    *v83 = 0;
    *(v83 + 1) = 0;
    v83[16] = -1;
    v88 = *(v74 + 16);
    if (v88 <= 5)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(__dst);
      *v82 = v74;
      *(v82 + 24) = v184;
      *(v82 + 8) = v185;
      v82[40] = v75 | 0x80;
      OUTLINED_FUNCTION_8_21();
      v99 = v202;
      outlined init with copy of ConversationControlsRecipe(v23, v202, v100);
      OUTLINED_FUNCTION_5_8();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
      v105 = OUTLINED_FUNCTION_46();
      outlined destroy of ConversationControlsRecipe(v105, v106);
      v107 = v203;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v89 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v89, &static Logger.conversationControls);

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v90, v91))
      {
        swift_slowAlloc();
        v92 = OUTLINED_FUNCTION_37_7();
        v207 = v88;
        v208 = v92;
        *v87 = 136315138;
        v93 = String.init<A>(reflecting:)();
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v208);

        *(v87 + 4) = v95;
        OUTLINED_FUNCTION_45_4(&dword_1BBC58000, v96, v97, "Too many buttonShelf actions (%s)");
        __swift_destroy_boxed_opaque_existential_1(v92);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_27();

        v98 = v204;
      }

      else
      {

        v98 = v87;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(__dst);
      v107 = v203;
      v99 = v202;
      OUTLINED_FUNCTION_9_4();
      outlined destroy of ConversationControlsRecipe(v23, v108);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v76);
    }

    v112 = v206;
    if (__swift_getEnumTagSinglePayload(v99, 1, v76) == 1)
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_14_6(v200);
      OUTLINED_FUNCTION_19_3();

      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_31_5();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v114, v115, v116, v76);
LABEL_41:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    OUTLINED_FUNCTION_7_3();
    outlined init with take of ConversationControlsRecipe(v99, v107, v117);
    if (SBUIIsSystemApertureEnabled())
    {
      v118 = v189;
      SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, v205);
      v119 = v190;
      if (__swift_getEnumTagSinglePayload(v118, 1, v190) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v118, &_s15ConversationKit18SystemApertureIconVSgMd);
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v120 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v120, &static Logger.conversationControls);
        v112 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        v122 = OUTLINED_FUNCTION_25(v121);
        v123 = v198;
        v124 = v200;
        if (v122)
        {
          v125 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v125);
          OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v126, v127, "incomingGreenTea3PHUD: [SystemAperture] missing status icon");
          OUTLINED_FUNCTION_18();
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_14_6(v124);

        OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_36_6();
        OUTLINED_FUNCTION_31_5();
      }

      else
      {
        OUTLINED_FUNCTION_11_10();
        outlined init with take of ConversationControlsRecipe(v118, v191, v135);
        v136 = v200;
        if (v200)
        {
          v137 = one-time initialization token for conversationControls;
          v138 = v200;

          if (v137 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v139 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v139, &static Logger.conversationControls);
          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = OUTLINED_FUNCTION_33();
            *v142 = 0;
            _os_log_impl(&dword_1BBC58000, v140, v141, "incomingGreenTea3PHUD: [SystemAperture] showing content", v142, 2u);
            OUTLINED_FUNCTION_27();
          }

          v143 = *(v119 + 36);
          v144 = *MEMORY[0x1E6995E08];
          type metadata accessor for ActivitySymbol.Animation();
          OUTLINED_FUNCTION_7_0();
          v112 = v187;
          (*(v145 + 104))(v187 + v143, v144);
          *v112 = v136;
          OUTLINED_FUNCTION_42_6();
          v146 = v199;
          v112[6] = v192;
          v112[7] = v146;
          OUTLINED_FUNCTION_6_17();
          v148 = v147;
          outlined init with copy of ConversationControlsRecipe(v112, v186, v147);
          v149 = type metadata accessor for SystemApertureIconView(0);
          v150 = objc_allocWithZone(v149);
          v151 = v138;

          SystemApertureIconView.init(icon:isDetached:)();
          v205 = v152;
          v153 = v191;
          OUTLINED_FUNCTION_34_4();
          v154 = objc_allocWithZone(v149);
          SystemApertureIconView.init(icon:isDetached:)();
          v204 = v155;
          OUTLINED_FUNCTION_34_4();
          v156 = objc_allocWithZone(v149);
          SystemApertureIconView.init(icon:isDetached:)();
          v158 = v157;
          OUTLINED_FUNCTION_34_4();
          v159 = objc_allocWithZone(v149);
          SystemApertureIconView.init(icon:isDetached:)();
          v161 = v160;
          OUTLINED_FUNCTION_31_5();
          OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_19_3();

          outlined consume of (icon: UIImage, accessibilityLabel: String)?(v200);
          swift_unknownObjectRelease();
          v163 = OUTLINED_FUNCTION_29_6();
          outlined destroy of ConversationControlsRecipe(v163, v164);
          outlined destroy of ConversationControlsRecipe(v153, v148);
          v165 = v203;
          v166 = &v203[v201[18]];
          memcpy(__dst, v166, 0x49uLL);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
          v167 = v204;
          *v166 = v205;
          *(v166 + 1) = &protocol witness table for SystemApertureIconView;
          *(v166 + 2) = v167;
          *(v166 + 3) = &protocol witness table for SystemApertureIconView;
          *(v166 + 4) = v158;
          *(v166 + 5) = &protocol witness table for SystemApertureIconView;
          *(v166 + 6) = v161;
          *(v166 + 7) = &protocol witness table for SystemApertureIconView;
          *(v166 + 8) = 4;
          v166[72] = 1;
          OUTLINED_FUNCTION_1_28();
          outlined init with copy of ConversationControlsRecipe(v165, v198, v168);
          OUTLINED_FUNCTION_5_8();
          __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
          v173 = v165;
          goto LABEL_40;
        }

        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v174 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v174, &static Logger.conversationControls);
        v112 = Logger.logObject.getter();
        v175 = static os_log_type_t.default.getter();
        v176 = OUTLINED_FUNCTION_25(v175);
        v123 = v198;
        if (v176)
        {
          v177 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v177);
          OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v178, v179, "incomingGreenTea3PHUD: [SystemAperture] missing app badge icon");
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_31_5();
          OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_19_3();

          OUTLINED_FUNCTION_14_6(0);
        }

        else
        {

          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_31_5();
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_12_12();
        outlined destroy of ConversationControlsRecipe(v191, v182);
      }

      OUTLINED_FUNCTION_1_28();
      outlined init with copy of ConversationControlsRecipe(v107, v123, v183);
      v131 = v123;
      v132 = 0;
      v133 = 1;
      v134 = v201;
    }

    else
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_14_6(v200);
      OUTLINED_FUNCTION_19_3();

      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_1_28();
      outlined init with copy of ConversationControlsRecipe(v107, v198, v130);
      OUTLINED_FUNCTION_5_8();
    }

    __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
    v173 = v107;
LABEL_40:
    outlined destroy of ConversationControlsRecipe(v173, v112);
    goto LABEL_41;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
}

NSAttributedString __swiftcall NSAttributedString.__allocating_init(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);

  v5 = [v3 initWithString_];

  return v5;
}

void GreenTeaControlsRecipeGenerator.ongoingGreenTea3PHUDRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v11 = OUTLINED_FUNCTION_16(v10);
  v226 = type metadata accessor for SystemApertureIcon(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v217 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v217 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v239 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v24);
  v25 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  v240 = (v27 - v28);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v217 - v31;
  v33 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v224 = (*MEMORY[0x1E69E7D40] & *a1) + 672;
  v223 = v33;
  v34 = v33(v30);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v43 = v35;
    v234 = v34;
    v235 = v32;
    ConversationControlsManager.heldCalls()(v35, v36, v37, v38, v39, v40, v41, v42, v217, v18, v219, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226, isa, v228, *(&v228 + 1));
    v45 = v44;
    v46 = specialized Array.count.getter(v44);
    v237 = GreenTeaControlsRecipeGenerator.ongoingGreenTea3PLeadingAccessoryView(controlsManager:hasHeldCalls:)(a1, v46 > 0, a2, a3);
    v238 = v47;
    v241 = v48;
    v232 = a1;
    v229 = a2;
    v233 = a3;
    GreenTeaControlsRecipeGenerator.ongoingGreenTea3PActions(controlsManager:hasHeldCalls:)(a1, v46 > 0, v245);
    v221 = v245[1];
    v228 = v245[0];
    v220 = v246;
    HIDWORD(v219) = v247;
    v49 = [v43 status];
    v231 = a4;
    v230 = v25;
    v217 = v15;
    if (v49 == 2)
    {

      v50 = [v43 displayName];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = [v43 provider];
      v55 = [v54 localizedName];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      __dst[0] = v56;
      __dst[1] = v58;

      OUTLINED_FUNCTION_13_17();

      v59 = __dst[0];
      v60 = __dst[1];
      v61 = [objc_opt_self() 0x1FC567588];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v66 = OUTLINED_FUNCTION_21_8(v62, v63, v64, v65);
      v68 = v67;

      __dst[0] = v59;
      __dst[1] = v60;

      MEMORY[0x1BFB20B10](v66, v68);
    }

    else
    {
      if (v46 >= 1 && specialized Array.count.getter(v45))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v45 & 0xC000000000000001) == 0, v45);
        if ((v45 & 0xC000000000000001) != 0)
        {
          v74 = MEMORY[0x1BFB22010](0, v45);
        }

        else
        {
          v74 = *(v45 + 32);
        }

        v75 = v74;

        v76 = [v43 displayName];
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;

        __dst[0] = v77;
        __dst[1] = v79;

        OUTLINED_FUNCTION_13_17();

        v51 = __dst[0];
        v53 = __dst[1];
        v80 = [v75 displayName];
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;

        __dst[0] = v81;
        __dst[1] = v83;

        OUTLINED_FUNCTION_13_17();

        v84 = __dst[0];
        v85 = __dst[1];
        v86 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
        v91 = OUTLINED_FUNCTION_21_8(v87, v88, v89, v90);
        v93 = v92;

        __dst[0] = v84;
        __dst[1] = v85;

        MEMORY[0x1BFB20B10](v91, v93);

LABEL_14:
        v101 = __dst[0];
        v102 = __dst[1];
        __dst[0] = 24;
        memset(&__dst[1], 0, 32);
        LOBYTE(__dst[5]) = 7;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
        v103 = v237;
        v104 = v238;
        outlined copy of ConversationControlsRecipe.View?(v237, v238);
        v105._countAndFlagsBits = v51;
        v105._object = v53;
        isa = NSAttributedString.__allocating_init(string:)(v105).super.isa;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1BC4BAC30;
        v107._countAndFlagsBits = v101;
        v107._object = v102;
        *(v106 + 32) = NSAttributedString.__allocating_init(string:)(v107);
        v108 = type metadata accessor for AttributedString();
        v109 = v239;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v108);
        v113 = v230;
        v114 = v230[9];
        v115 = v240;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v116, v117, v118, v108);
        v119 = (v115 + v113[10]);
        v120 = v115 + v113[15];
        *(v120 + 4) = 0;
        *v120 = 0u;
        *(v120 + 1) = 0u;
        v120[40] = -2;
        *(v115 + v113[16]) = 0;
        v121 = v115 + v113[17];
        OUTLINED_FUNCTION_20_5(v115 + v113[18], 0);
        outlined init with copy of ConversationControlsType(__dst, v115);
        v115[6] = 0;
        v115[7] = v103;
        v122 = v241;
        v115[8] = v104;
        v115[9] = v122;
        v115[10] = isa;
        v115[11] = v106;
        v119[1] = 0;
        v119[2] = 0;
        *v119 = 0;
        outlined assign with copy of AttributedString?(v109, v115 + v114);
        *(v115 + v113[11]) = 2;
        *(v115 + v113[12]) = 0;
        *(v115 + v113[13]) = 1;
        *(v115 + v113[14]) = 1;
        *v121 = 0;
        *(v121 + 1) = 0;
        v121[16] = -1;
        v123 = *(*&v245[0] + 16);
        if (v247 < 0)
        {
          v124 = v231;
          v125 = v235;
          v126 = v233;
          v127 = v232;
          if (v123 > 5)
          {
            OUTLINED_FUNCTION_30_3();
            if (!v128)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v138 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v138, &static Logger.conversationControls);

            v130 = Logger.logObject.getter();
            v139 = static os_log_type_t.fault.getter();
            outlined destroy of ConversationControlsRecipe.Actions(v245);
            if (!os_log_type_enabled(v130, v139))
            {
              goto LABEL_26;
            }

            swift_slowAlloc();
            v132 = OUTLINED_FUNCTION_37_7();
            v242 = v123;
            v243 = v132;
            *v125 = 136315138;
            v140 = String.init<A>(reflecting:)();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, &v243);
            v127 = 0x1EDDC1000;

            OUTLINED_FUNCTION_41_4();
            v137 = "Too many buttonShelf actions (%s)";
            goto LABEL_25;
          }
        }

        else
        {
          v124 = v231;
          v125 = v235;
          v126 = v233;
          v127 = v232;
          if (v123 > 2)
          {
            OUTLINED_FUNCTION_30_3();
            if (!v128)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v129 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v129, &static Logger.conversationControls);

            v130 = Logger.logObject.getter();
            v131 = static os_log_type_t.fault.getter();
            outlined destroy of ConversationControlsRecipe.Actions(v245);
            if (!os_log_type_enabled(v130, v131))
            {
              goto LABEL_26;
            }

            swift_slowAlloc();
            v132 = OUTLINED_FUNCTION_37_7();
            v242 = v123;
            v243 = v132;
            *v125 = 136315138;
            v133 = String.init<A>(reflecting:)();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v243);
            v127 = 0x1EDDC1000;

            OUTLINED_FUNCTION_41_4();
            v137 = "Too many trailing actions (%s)";
LABEL_25:
            OUTLINED_FUNCTION_45_4(&dword_1BBC58000, v135, v136, v137);
            __swift_destroy_boxed_opaque_existential_1(v132);
            v126 = v233;
            OUTLINED_FUNCTION_27();
            v125 = v235;
            OUTLINED_FUNCTION_27();
LABEL_26:

            outlined destroy of ConversationControlsRecipe.Actions(v245);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v239, &_s10Foundation16AttributedStringVSgMd);
            outlined destroy of ConversationControlsType(__dst);
            OUTLINED_FUNCTION_9_4();
            outlined destroy of ConversationControlsRecipe(v240, v142);
            v143 = v236;
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v144, v145, v146, v113);
            goto LABEL_28;
          }
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v239, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(__dst);
        v147 = v221;
        *v120 = v228;
        *(v120 + 1) = v147;
        *(v120 + 4) = v220;
        v120[40] = BYTE4(v219);
        OUTLINED_FUNCTION_8_21();
        v148 = v240;
        v143 = v236;
        outlined init with copy of ConversationControlsRecipe(v240, v236, v149);
        OUTLINED_FUNCTION_5_8();
        __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
        outlined destroy of ConversationControlsRecipe(v148, v120);
LABEL_28:
        if (__swift_getEnumTagSinglePayload(v143, 1, v113) == 1)
        {
          OUTLINED_FUNCTION_4_13();
          swift_unknownObjectRelease();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v143, &_s15ConversationKit0A14ControlsRecipeVSgMd);
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v113);
LABEL_41:
          OUTLINED_FUNCTION_30_0();
          return;
        }

        OUTLINED_FUNCTION_7_3();
        outlined init with take of ConversationControlsRecipe(v143, v125, v157);
        if (SBUIIsSystemApertureEnabled())
        {
          v158 = v225;
          SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, v127);
          if (__swift_getEnumTagSinglePayload(v158, 1, v226) != 1)
          {
            OUTLINED_FUNCTION_11_10();
            v171 = outlined init with take of ConversationControlsRecipe(v158, v218, v170);
            v172 = (v223)(v171);
            v174 = v173;
            ObjectType = swift_getObjectType();
            v176 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v172, v126, ObjectType, v174);
            v178 = v177;
            v180 = v179;
            swift_unknownObjectRelease();
            if (v176)
            {
              OUTLINED_FUNCTION_30_3();
              if (!v128)
              {
                OUTLINED_FUNCTION_0_0();
              }

              v181 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v181, &static Logger.conversationControls);
              v182 = Logger.logObject.getter();
              v183 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v182, v183))
              {
                v184 = OUTLINED_FUNCTION_33();
                *v184 = 0;
                _os_log_impl(&dword_1BBC58000, v182, v183, "ongoingGreenTea3PHUD: [SystemAperture] showing content", v184, 2u);
                OUTLINED_FUNCTION_27();
              }

              v185 = *(v226 + 36);
              v186 = *MEMORY[0x1E6995E08];
              type metadata accessor for ActivitySymbol.Animation();
              OUTLINED_FUNCTION_7_0();
              v188 = v217;
              (*(v187 + 104))(v217 + v185, v186);
              *v188 = v176;
              OUTLINED_FUNCTION_42_6();
              v188[6] = v178;
              v188[7] = v180;
              OUTLINED_FUNCTION_6_17();
              v190 = v189;
              outlined init with copy of ConversationControlsRecipe(v188, v222, v189);
              v191 = type metadata accessor for SystemApertureIconView(0);
              v192 = objc_allocWithZone(v191);
              v193 = v176;

              SystemApertureIconView.init(icon:isDetached:)();
              v240 = v194;
              v195 = v218;
              OUTLINED_FUNCTION_33_8();
              v196 = objc_allocWithZone(v191);
              SystemApertureIconView.init(icon:isDetached:)();
              v239 = v197;
              OUTLINED_FUNCTION_33_8();
              v198 = objc_allocWithZone(v191);
              SystemApertureIconView.init(icon:isDetached:)();
              v200 = v199;
              OUTLINED_FUNCTION_33_8();
              v201 = objc_allocWithZone(v191);
              SystemApertureIconView.init(icon:isDetached:)();
              v203 = v202;

              OUTLINED_FUNCTION_28_11();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_4_13();
              outlined destroy of ConversationControlsRecipe(v188, v190);
              outlined destroy of ConversationControlsRecipe(v195, v190);
              v204 = v235;
              v127 = v235 + v113[18];
              memcpy(__dst, v127, 0x49uLL);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
              v205 = v239;
              *v127 = v240;
              *(v127 + 8) = &protocol witness table for SystemApertureIconView;
              *(v127 + 16) = v205;
              *(v127 + 24) = &protocol witness table for SystemApertureIconView;
              *(v127 + 32) = v200;
              *(v127 + 40) = &protocol witness table for SystemApertureIconView;
              *(v127 + 48) = v203;
              *(v127 + 56) = &protocol witness table for SystemApertureIconView;
              *(v127 + 64) = 4;
              *(v127 + 72) = 1;
              OUTLINED_FUNCTION_1_28();
              outlined init with copy of ConversationControlsRecipe(v204, v231, v206);
              OUTLINED_FUNCTION_5_8();
              __swift_storeEnumTagSinglePayload(v207, v208, v209, v210);
              v169 = v204;
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_30_3();
            if (!v128)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v211 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v211, &static Logger.conversationControls);
            v127 = Logger.logObject.getter();
            v212 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_25(v212))
            {
              v213 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_39_2(v213);
              OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v214, v215, "ongoingGreenTea3PHUD: [SystemAperture] missing app badge icon");
              OUTLINED_FUNCTION_18();

              OUTLINED_FUNCTION_28_11();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_4_13();
            }

            else
            {
              OUTLINED_FUNCTION_4_13();

              OUTLINED_FUNCTION_28_11();
              swift_unknownObjectRelease();
            }

            OUTLINED_FUNCTION_12_12();
            outlined destroy of ConversationControlsRecipe(v218, v216);
LABEL_39:
            OUTLINED_FUNCTION_1_28();
            outlined init with copy of ConversationControlsRecipe(v125, v124, v164);
            OUTLINED_FUNCTION_5_8();
            __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
            v169 = v125;
LABEL_40:
            outlined destroy of ConversationControlsRecipe(v169, v127);
            goto LABEL_41;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, &_s15ConversationKit18SystemApertureIconVSgMd);
          OUTLINED_FUNCTION_30_3();
          if (!v128)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v159 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v159, &static Logger.conversationControls);
          v127 = Logger.logObject.getter();
          v160 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_25(v160))
          {
            v161 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_39_2(v161);
            OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v162, v163, "ongoingGreenTea3PHUD: [SystemAperture] missing status icon");
            OUTLINED_FUNCTION_18();
          }

          OUTLINED_FUNCTION_4_13();

          OUTLINED_FUNCTION_28_11();
        }

        else
        {
          OUTLINED_FUNCTION_4_13();
        }

        swift_unknownObjectRelease();
        goto LABEL_39;
      }

      v94 = [v43 displayName];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v95;

      v96 = [v43 provider];
      v97 = [v96 localizedName];

      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;

      __dst[0] = v98;
      __dst[1] = v100;

      OUTLINED_FUNCTION_13_17();
    }

    goto LABEL_14;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
}

id GreenTeaControlsRecipeGenerator.ongoingGreenTea3PLeadingAccessoryView(controlsManager:hasHeldCalls:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v13 = v12(v9);
  v15 = v14;
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v17 = (*(v15 + 184))(ObjectType, v15);
    swift_unknownObjectRelease();
    v18 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v17);
    if (v19)
    {
      v20 = MEMORY[0x1BFB209B0](v18);
    }

    else
    {
      v20 = 0;
    }

    v37 = objc_opt_self();
    v38 = [objc_opt_self() mainScreen];
    [v38 scale];
    v40 = v39;

    v35 = [v37 _applicationIconImageForBundleIdentifier_format_scale_];
    if (!v35)
    {
      return 0;
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    NSObject.hashValue.getter();
  }

  else
  {
    v43 = v8;
    v44 = v7;
    v21 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v13, a4, ObjectType, v15);
    v42[1] = v22;
    v23 = swift_unknownObjectRelease();
    v24 = (v12)(v23);
    v26 = v25;
    if (v21)
    {
      v27 = v21;
    }

    v28 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v29 = [objc_opt_self() clearColor];
    v30 = swift_getObjectType();
    v31 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v24, 0, v21, v29, v28, v30, v26);
    (v12)();
    v33 = v32;
    v34 = swift_getObjectType();
    (*(v33 + 232))(v34, v33);
    swift_unknownObjectRelease();
    (*((*MEMORY[0x1E69E7D40] & *v31) + 0x58))(v11);
    (*(v43 + 8))(v11, v44);
    v35 = v31;
    v36 = [v35 view];
    outlined consume of (icon: UIImage, accessibilityLabel: String)?(v21);
  }

  return v36;
}

uint64_t GreenTeaControlsRecipeGenerator.ongoingGreenTea3PActions(controlsManager:hasHeldCalls:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 208))(ObjectType, v6);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  type metadata accessor for ConversationControlsAction();
  if (v8 == 2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BA940;
    result = swift_storeEnumTagMultiPayload();
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v9 = swift_allocObject();
    if (a2)
    {
      *(v9 + 16) = xmmword_1BC4BB990;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *(v9 + 16) = xmmword_1BC4BB980;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    result = static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v14);
    v12 = v14[0];
    v13 = v14[1];
    v11 = v15 | 0x80;
  }

  *a3 = v9;
  *(a3 + 8) = v12;
  *(a3 + 24) = v13;
  *(a3 + 40) = v11;
  return result;
}

uint64_t GreenTeaControlsRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static SystemApertureIconFactory.shared;
  v19[4] = &type metadata for ScreeningStatusOverride;
  v19[5] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();

  v19[1] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  v7 = type metadata accessor for Features();
  v8 = [objc_allocWithZone(v7) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E6995EE0];
  v11 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v11[3] = v0;
  v11[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v2 + 16))(boxed_opaque_existential_1, v5, v0);
  v13 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v13[3] = v7;
  v13[4] = &protocol witness table for Features;
  *v13 = v8;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  (*(v2 + 8))(v5, v0);
  return v6;
}

id _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(void *a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v8 = a2;

    v9 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v8, a3, 0, 0, a4);
    return v9;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 tu:v12 contactStoreConfigurationForCall:?];
    v14 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    v15 = [v12 remoteParticipantHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    OUTLINED_FUNCTION_46();
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = specialized Set.count.getter(v16);
    if (v17)
    {
      v18 = v17;
      v50 = v12;
      v51 = v14;
      v52 = a4;
      v57 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      result = specialized Set.startIndex.getter(v16);
      v54 = result;
      v55 = v19;
      v56 = v20 & 1;
      if ((v18 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        while (!__OFADD__(v21++, 1))
        {
          v23 = v54;
          v24 = v55;
          v25 = v56;
          v26 = OUTLINED_FUNCTION_29_6();
          specialized Set.subscript.getter(v26, v27, v25, v16);
          v29 = v28;
          v30 = [v28 shouldHideContact];
          v31 = objc_allocWithZone(MEMORY[0x1E695CF18]);
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v29;
          }

          v33 = &selRef_initWithContact_;
          if (!v30)
          {
            v33 = &selRef__initWithHandle_;
          }

          [v31 *v33];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          if ((v16 & 0xC000000000000001) != 0)
          {
            if (!v25)
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_29_6();
            if (__CocoaSet.Index.handleBitPattern.getter())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
            v38 = Set.Index._asCocoa.modify();
            __CocoaSet.formIndex(after:isUnique:)();
            result = v38(v53, 0);
          }

          else
          {
            if (v25)
            {
              goto LABEL_40;
            }

            if ((v23 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            v34 = 1 << *(v16 + 32);
            if (v23 >= v34)
            {
              goto LABEL_35;
            }

            v35 = v23 >> 6;
            v36 = *(v16 + 56 + 8 * (v23 >> 6));
            if (((v36 >> v23) & 1) == 0)
            {
              goto LABEL_36;
            }

            if (*(v16 + 36) != v24)
            {
              goto LABEL_37;
            }

            v37 = v36 & (-2 << (v23 & 0x3F));
            if (v37)
            {
              v34 = __clz(__rbit64(v37)) | v23 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v39 = v35 << 6;
              v40 = v35 + 1;
              v41 = (v16 + 64 + 8 * v35);
              while (v40 < (v34 + 63) >> 6)
              {
                v43 = *v41++;
                v42 = v43;
                v39 += 64;
                ++v40;
                if (v43)
                {
                  v44 = OUTLINED_FUNCTION_29_6();
                  result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v44, v45, 0);
                  v34 = __clz(__rbit64(v42)) + v39;
                  goto LABEL_29;
                }
              }

              v46 = OUTLINED_FUNCTION_29_6();
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v46, v47, 0);
            }

LABEL_29:
            v54 = v34;
            v55 = v24;
            v56 = 0;
          }

          if (v21 == v18)
          {

            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v54, v55, v56);
            v48 = v57;
            a4 = v52;
            v14 = v51;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v49 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
      return ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v14, v48, a3, a4);
    }
  }

  return result;
}