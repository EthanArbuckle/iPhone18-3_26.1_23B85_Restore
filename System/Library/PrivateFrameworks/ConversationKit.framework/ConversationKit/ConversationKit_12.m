unint64_t lazy protocol witness table accessor for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>()
{
  result = lazy protocol witness table cache variable for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>;
  if (!lazy protocol witness table cache variable for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>);
  }

  return result;
}

uint64_t closure #2 in SyncedScreeningAlphaGradientView.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t objectdestroy_7Tm()
{

  outlined consume of StateObject<SyncedScreeningAlphaGradientView<A>.AnimatedState>.Storage<A>();

  return swift_deallocObject();
}

uint64_t closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in SyncedScreeningAlphaGradientView.gradient(for:), v7, v6);
}

uint64_t closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)()
{
  v3 = *(v0 + 24);

  *(swift_task_alloc() + 16) = vextq_s8(v3, v3, 8uLL);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)(a1, v6, v5, (v1 + 5), v4);
}

uint64_t outlined destroy of ListAnchor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10ListAnchorVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #2 in SyncedScreeningAlphaGradientView.body.getter(uint64_t a1, uint64_t a2, void (*a3)(double))
{
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState();
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  StateObject.wrappedValue.getter();
  a3(*(a1 + 48));
}

uint64_t type metadata instantiation function for SyncedScreeningAlphaGradientView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SyncedScreeningAlphaGradientView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SyncedScreeningAlphaGradientView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for SyncedScreeningAlphaGradientView.AnimatedState()
{
  type metadata accessor for Published<Double>();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for Published<Double>()
{
  if (!lazy cache variable for type metadata for Published<Double>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Double>);
    }
  }
}

uint64_t type metadata instantiation function for SyncedScreeningAlphaGradientView.GradientTracking()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for BackgroundView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BackgroundView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BackgroundView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance BackgroundView<A>()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient()
{
  result = lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient;
  if (!lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient);
  }

  return result;
}

void ConversationControlsAudioRouteMenuButtonProvider.shouldToggleBetweenSpeakerAndReceiver.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 routeController];

  v3 = objc_opt_self();
  v4 = [v0 sharedInstance];
  v5 = [v3 eligibleLagunaDevices_];

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbyDeviceHandle);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [v2 routes];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = specialized Array.count.getter(v8);

    if (v9 == 2)
    {
      v27 = v6;
      v10 = [v2 routes];
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = specialized Array.count.getter(v11);
      for (i = 0; ; ++i)
      {
        if (v12 == i)
        {

          specialized Array.count.getter(v27);

          return;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFB22010](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v14 isSpeaker])
        {
        }

        else
        {
          v16 = [v15 isReceiver];

          if ((v16 & 1) == 0)
          {

            return;
          }
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

LABEL_26:

LABEL_27:

    return;
  }

  v17 = [v2 routes];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = specialized Array.count.getter(v18);

  if (v19 != 2)
  {
    goto LABEL_27;
  }

  v20 = [v2 routes];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = specialized Array.count.getter(v21);
  for (j = 0; v22 != j; ++j)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1BFB22010](j, v21);
    }

    else
    {
      if (j >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v24 = *(v21 + 8 * j + 32);
    }

    v25 = v24;
    if (__OFADD__(j, 1))
    {
      goto LABEL_34;
    }

    if ([v24 isSpeaker])
    {
    }

    else
    {
      v26 = [v25 isReceiver];

      if ((v26 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }
}

void *ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:)()
{
  v0 = ControlsButtonProvider.makeButton(frame:)();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = v0;

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:), v1);

  return v0;
}

void closure #1 in ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ConversationControlsAudioRouteMenuButtonProvider.shouldToggleBetweenSpeakerAndReceiver.getter();
    if (v0)
    {
      v1 = [objc_opt_self() sharedInstance];
      v2 = [v1 routeController];

      v3 = [v2 routes];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = specialized Array.count.getter(v4);
      for (i = 0; ; ++i)
      {
        if (v5 == i)
        {

          return;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1BFB22010](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v8 = v7;
        v9 = [v2 pickedRoute];
        if (!v9)
        {

LABEL_16:

          [v2 pickRoute_];

          return;
        }

        v10 = v9;
        v11 = static NSObject.== infix(_:_:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ConversationControlsAudioRouteMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  ControlsButtonProvider.buttonChanged()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for ConversationControlsButton();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v24 = v3;
      v10 = objc_opt_self();
      v11 = v7;
      v12 = [v10 sharedInstance];
      v13 = [v12 routeController];

      LODWORD(v12) = [v13 areAuxiliaryRoutesAvailable];
      if (v12)
      {
        v14 = [objc_opt_self() conversationKit];
        v23 = 0xE000000000000000;
        v15 = 0x6F69647541;
        v16 = 0xE500000000000000;
      }

      else
      {
        v14 = [objc_opt_self() conversationKit];
        v23 = 0xE000000000000000;
        v15 = 0xD00000000000001ELL;
        v16 = 0x80000001BC4F4AB0;
      }

      v17.value._countAndFlagsBits = 0x61737265766E6F43;
      v17.value._object = 0xEF74694B6E6F6974;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = 0;
      v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, v17, v14, v18, *(&v23 - 1));

      v21 = (v9 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      swift_beginAccess();
      *v21 = v20;

      ConversationControlsButton.localizedName.didset();

      v3 = v24;
    }

    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD00000000000001ALL, 0x80000001BC4F4A90, v7);
    (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x668))();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher();
    v22 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    *(v1 + 48) = v22;
  }
}

uint64_t closure #1 in ConversationControlsAudioRouteMenuButtonProvider.buttonChanged()(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      if (v6)
      {
        v11 = *(v8 + 160);
        v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x518);

        v13 = v11;
        v14 = v6;
        v15 = v12();

        if (v15)
        {
          v16 = [v15 audioRouteGlyphFor_];
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0;
        }

        ControlsButtonProvider.image.setter(v16);

        [v10 setSelected_];
      }

      else
      {
        v17 = one-time initialization token for conversationControls;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, &static Logger.conversationControls);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1BBC58000, v19, v20, "ConversationControlsManager didn't have a route specified, falling back to Speaker.", v21, 2u);
          MEMORY[0x1BFB23DF0](v21, -1, -1);
        }

        UUID.init()();
        UUID.uuidString.getter();
        (*(v3 + 8))(v5, v2);
        v22 = objc_allocWithZone(MEMORY[0x1E69D8C78]);
        v14 = @nonobjc TUMutableRoute.init(uniqueIdentifier:name:)();
        [v14 setSpeaker_];
        v23 = *(v8 + 160);
        v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x518);
        v25 = v23;
        v26 = v24();

        if (v26)
        {
          v27 = [v26 audioRouteGlyphFor_];
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0;
        }

        ControlsButtonProvider.image.setter(v27);

        [v10 setSelected_];
      }
    }
  }

  return result;
}

id ConversationControlsAudioRouteMenuButtonProvider.menu(for:)()
{
  v1 = v0;
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
    _os_log_impl(&dword_1BBC58000, v3, v4, "Displaying Audio Routing menu", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x518))();
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 audioRouteMenu];
  swift_unknownObjectRelease();
  return v7;
}

uint64_t ConversationControlsAudioRouteMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

Swift::Int ParticipantVideoLayerType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoLayerType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ParticipantVideoLayerType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

id RemoteParticipantVideoProvider.token.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 256))();
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 streamToken];

  return v3;
}

id RemoteParticipantVideoProvider.hasReceivedVideoFrames.getter(SEL *a1)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 *a1];

  return v5;
}

unint64_t RemoteParticipantVideoProvider.videoAttributeOrientation.getter(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 *a2];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 | ((v4 == 0) << 32);
}

void RemoteParticipantVideoProvider.contentsRect.getter(uint64_t a1@<X8>)
{
  v2 = RemoteParticipantVideoProvider.remoteVideoAttributes.getter();
  v3 = v2;
  if (v2)
  {
    [v2 contentsRect];
    v11 = v4;
    v12 = v5;
    v10 = v6;
    v13 = v7;

    *&v9 = v10;
    *&v8 = v11;
    *(&v8 + 1) = v12;
    *(&v9 + 1) = v13;
  }

  else
  {
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3 == 0;
}

void RemoteParticipantVideoProvider.scaleFactor.getter()
{
  v0 = RemoteParticipantVideoProvider.remoteVideoAttributes.getter();
  if (v0)
  {
    v1 = v0;
    VideoAttributes.scaleFactor.getter();
  }
}

double VideoAttributes.scaleFactor.getter()
{
  v1 = MEMORY[0x1BFB209B0](0x636146656C616373, 0xEB00000000726F74);
  v2 = [v0 valueForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v7, &_sypSgMd);
  }

  return 1.0;
}

id RemoteParticipantVideoProvider.videoAspectRatio.getter()
{
  result = RemoteParticipantVideoProvider.remoteVideoAttributes.getter();
  v1 = result;
  if (result)
  {
    [result ratio];
    v3 = v2;

    return v3;
  }

  return result;
}

id RemoteParticipantVideoProvider.remoteVideoAttributes.getter(void *a1, SEL *a2)
{
  v4 = v2 + *a1;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 8);
  v6 = v5;
  os_unfair_lock_unlock(v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_5_18();
    v8 = (*(v7 + 256))();
    v5 = [v8 *a2];
  }

  return v5;
}

void *RemoteParticipantVideoProvider.portraitVideoAspectRatio.getter(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    if ([result orientation] && objc_msgSend(v2, sel_orientation) != 1)
    {

      return 0;
    }

    else
    {
      [v2 ratio];
      v4 = v3;

      return v4;
    }
  }

  return result;
}

void *RemoteParticipantVideoProvider.landscapeVideoAspectRatio.getter(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    if ([result orientation] == 2 || objc_msgSend(v2, sel_orientation) == 3)
    {
      [v2 ratio];
      v4 = v3;

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t key path getter for RemoteParticipantVideoProvider.avcRemoteVideoClient : RemoteParticipantVideoProvider@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

void key path setter for RemoteParticipantVideoProvider.avcRemoteVideoClient : RemoteParticipantVideoProvider(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RemoteParticipantVideoProvider.avcRemoteVideoClient.setter(v1);
}

void *RemoteParticipantVideoProvider.avcRemoteVideoClient.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RemoteParticipantVideoProvider.avcRemoteVideoClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RemoteParticipantVideoProvider.isOneToOneModeEnabled.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_oneToOneModeStateProvider;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

char *RemoteParticipantVideoProvider.init(streamToken:avcRemoteVideoClientDelegate:oneToOneModeStateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_features;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static Features.shared;
  *&v4[v7] = static Features.shared;
  v9 = &v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteVideoAttributes];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteScreenAttributes];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient] = 0;
  v11 = v8;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_oneToOneModeStateProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v29.receiver = v4;
  v29.super_class = type metadata accessor for RemoteParticipantVideoProvider();
  v12 = objc_msgSendSuper2(&v29, sel_init);
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_oneToOneModeStateProvider + 8] = a4;
  swift_unknownObjectWeakAssign();
  v13 = objc_allocWithZone(MEMORY[0x1E69865D0]);
  v14 = v12;
  v15 = [v13 initWithStreamToken:a1 delegate:v14];
  v16 = MEMORY[0x1E69E6158];
  if (!v15)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BC4BA940;
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v16 = v21;
    os_log(_:dso:log:type:_:)();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA940;
  v23 = String.init<A>(reflecting:)();
  v25 = v24;
  *(v22 + 56) = v16;
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v26 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient;
  swift_beginAccess();
  v27 = *&v14[v26];
  *&v14[v26] = v15;

  return v14;
}

id RemoteParticipantVideoProvider.__deallocating_deinit()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_5_18();
  (*(v2 + 128))();
  if (v3)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    v5 = String.init<A>(reflecting:)();
    v4 = v6;
  }

  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 32) = v5;
  *(v1 + 40) = v4;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v8.receiver = v0;
  v8.super_class = type metadata accessor for RemoteParticipantVideoProvider();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

Swift::Void __swiftcall RemoteParticipantVideoProvider.setLayer(_:for:)(CALayer *_, ConversationKit::ParticipantVideoLayerType a2)
{
  OUTLINED_FUNCTION_5_18();
  v5 = (*(v4 + 256))();
  if (v5)
  {
    v38 = v5;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    if (((*(*static Defaults.shared + 312))() & 1) != 0 && a2 == ConversationKit_ParticipantVideoLayerType_screen)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.conversationKit);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBC58000, v7, v8, "Using CALayerHost mode for screen", v9, 2u);
        MEMORY[0x1BFB23DF0](v9, -1, -1);
      }

      [v38 setVideoLayerHost:_ forMode:2];
    }

    else
    {
      v10 = objc_opt_self();
      [v10 begin];
      [(CALayer *)_ setContentsGravity:*MEMORY[0x1E6979DF0]];
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationKit);
      v12 = _;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v40[0] = v16;
        *v15 = 136315394;
        v17 = String.init<A>(reflecting:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v40);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        *&v39[0] = v12;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
        v20 = v12;
        v21 = String.init<A>(reflecting:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v40);

        *(v15 + 14) = v23;
        _os_log_impl(&dword_1BBC58000, v13, v14, "Connecting CALayer to AVCRemoteVideoClient type: %s layer: %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v16, -1, -1);
        MEMORY[0x1BFB23DF0](v15, -1, -1);
      }

      switch(a2)
      {
        case ConversationKit_ParticipantVideoLayerType_back:
        case ConversationKit_ParticipantVideoLayerType_unspecified:
          v24 = [v38 slotForMode_];
          if (!v24)
          {
            __break(1u);
            goto LABEL_33;
          }

          v25 = v24;
          v26 = objc_opt_self();
          v27 = [v25 unsignedIntValue];

          if ([v26 objectForSlot_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined init with take of Any(v39, v40);
            __swift_project_boxed_opaque_existential_1(v40, v41);
            [(CALayer *)v12 setContents:_bridgeAnythingToObjectiveC<A>(_:)()];
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v40);
          }

          v28 = 0xD00000000000001FLL;
          v29 = "tVideoLayerScreen";
          goto LABEL_30;
        case ConversationKit_ParticipantVideoLayerType_screen:
          v34 = [v38 slotForMode_];
          if (!v34)
          {
            goto LABEL_34;
          }

          v35 = v34;
          v36 = objc_opt_self();
          v37 = [v35 unsignedIntValue];

          if ([v36 objectForSlot_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined init with take of Any(v39, v40);
            __swift_project_boxed_opaque_existential_1(v40, v41);
            [(CALayer *)v12 setContents:_bridgeAnythingToObjectiveC<A>(_:)()];
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v40);
          }

          v29 = "VideoProvider with token %@";
          v28 = 0xD000000000000021;
          goto LABEL_30;
        default:
          v30 = [v38 slotForMode_];
          if (v30)
          {
            v31 = v30;
            v32 = objc_opt_self();
            v33 = [v31 unsignedIntValue];

            if ([v32 objectForSlot_])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              outlined init with take of Any(v39, v40);
              __swift_project_boxed_opaque_existential_1(v40, v41);
              [(CALayer *)v12 setContents:_bridgeAnythingToObjectiveC<A>(_:)()];
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v40);
            }

            v29 = "RemoteParticipantVideoLayerBack";
            v28 = 0xD000000000000020;
LABEL_30:
            outlined bridged method (mbnn) of @objc CALayer.name.setter(v28, v29 | 0x8000000000000000, v12);
            [(CALayer *)v12 setAllowsDisplayCompositing:1];
            [v10 commit];
          }

          else
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
          }

          break;
      }
    }
  }
}

uint64_t key path getter for RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled : RemoteParticipantVideoProvider@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result & 1;
  return result;
}

uint64_t RemoteParticipantVideoProvider.isPaused.getter(SEL *a1)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 *a1];

  return v5;
}

void RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.setter(char a1)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  [v3 setTransformForRemoteVideoOrientationEnabled_];
}

void (*RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.getter() & 1;
  return RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.modify;
}

void RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  [v3 setTransformForRemoteVideoOrientationEnabled_];
}

uint64_t RemoteParticipantVideoProvider.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of IDSLookupManager(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  type metadata accessor for RemoteParticipantVideoProvider();
  if (swift_dynamicCast())
  {
    v1 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_5_18();
    v3 = (*(v2 + 128))();
    v5 = v4;
    v6 = (*((*v1 & *v10) + 0x80))();
    v8 = v7;

    if ((v5 & 1) == 0)
    {
      v8 = (v3 == v6) & ~v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id RemoteParticipantVideoProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double protocol witness for ParticipantVideoProvider.contentsRect.getter in conformance RemoteParticipantVideoProvider@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **v1) + 0xB8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void *RemoteParticipantVideoProvider.remoteVideoClientDidReceiveFirstFrame(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 remoteVideoClientDidReceiveFirstFrame_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void RemoteParticipantVideoProvider.remoteVideoClient(_:networkQualityDidDegrade:info:)(uint64_t a1, char a2, uint64_t a3)
{
  if (Features.isPoorConnectionLabelsEnabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if ([Strong respondsToSelector_])
      {
        if (a3)
        {
          Dictionary._bridgeToObjectiveC()();
        }

        [v7 remoteVideoClient:a1 networkQualityDidDegrade:a2 & 1 info:?];
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_9_17();
      }

      else
      {
        OUTLINED_FUNCTION_9_17();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_17();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_17();

    os_log(_:dso:log:type:_:)();
  }
}

void *RemoteParticipantVideoProvider.remoteVideoClient(_:videoDidSuspend:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result respondsToSelector_])
    {
      v5 = OUTLINED_FUNCTION_8_30();
      [v5 v6];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *RemoteParticipantVideoProvider.remoteVideoClient(_:remoteVideoAttributesDidChange:)(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteVideoAttributes;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteVideoAttributes));

  *(v4 + 8) = a2;
  a2;
  os_unfair_lock_unlock(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result respondsToSelector_])
    {
      v6 = OUTLINED_FUNCTION_8_30();
      [v6 v7];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *RemoteParticipantVideoProvider.remoteVideoClient(_:remoteScreenAttributesDidChange:)(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteScreenAttributes;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteScreenAttributes));

  *(v4 + 8) = a2;
  a2;
  os_unfair_lock_unlock(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result respondsToSelector_])
    {
      v6 = OUTLINED_FUNCTION_8_30();
      [v6 v7];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void RemoteParticipantVideoProvider.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      if (a3 >> 60 != 15)
      {
        Data._bridgeToObjectiveC()();
      }

      [v6 remoteVideoClient:a1 didDetectSensitiveContentWithAnalysis:?];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_9_17();
    }

    else
    {
      OUTLINED_FUNCTION_9_17();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
  }
}

uint64_t RemoteParticipantVideoProvider.debugDescription.getter()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(73);
  v2 = MEMORY[0x1BFB20B10](0xD000000000000025, 0x80000001BC4F4CA0);
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(v2);
  if (v4)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = String.init<A>(reflecting:)();
    v5 = v7;
  }

  MEMORY[0x1BFB20B10](v6, v5);

  v8 = MEMORY[0x1BFB20B10](0xD000000000000018, 0x80000001BC4F4CD0);
  v9 = (*((*v3 & *v0) + 0x88))(v8);
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1BFB20B10](v11, v12);

  v13 = MEMORY[0x1BFB20B10](0x3D6376612CLL, 0xE500000000000000);
  if ((*((*v3 & *v0) + 0x100))(v13))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient);
    v1 = String.init<A>(reflecting:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  MEMORY[0x1BFB20B10](v1, v15);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0;
}

uint64_t TUVideoDeviceController.videoAttributeOrientationFor(_:)(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

__n128 TUVideoDeviceController.contentsRect.getter@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  a1[1] = result;
  a1[2].n128_u8[0] = 0;
  return result;
}

uint64_t TUVideoDeviceController.videoAspectRatio.getter()
{
  v1 = [v0 currentVideoOrientation];
  if (v1 >= 4)
  {
    _StringGuts.grow(_:)(62);
    MEMORY[0x1BFB20B10](0xD00000000000003CLL, 0x80000001BC4F4D20);
    [v0 currentVideoOrientation];
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v4);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    [v0 *off_1E7FE3478[v1]];
    return v2;
  }

  return result;
}

Swift::Void __swiftcall TUVideoDeviceController.setLayer(_:for:)(CALayer *_, ConversationKit::ParticipantVideoLayerType a2)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  if ((*(*static Defaults.shared + 656))())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  v3 = objc_opt_self();
  [v3 begin];
  [(CALayer *)_ setContentsGravity:*MEMORY[0x1E6979DF0]];
  v4 = OUTLINED_FUNCTION_8_30();
  [v4 v5];

  [v3 commit];
}

id TUVideoDeviceController.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of IDSLookupManager(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUVideoDeviceController);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v2 = v6;
  v5.receiver = v1;
  v5.super_class = MEMORY[0x1E69D8D18];
  v3 = objc_msgSendSuper2(&v5, sel_isEqual_, v6);

  return v3;
}

double protocol witness for ParticipantVideoProvider.contentsRect.getter in conformance TUVideoDeviceController@<D0>(__n128 *a1@<X8>)
{
  TUVideoDeviceController.contentsRect.getter(v4);
  result = v4[0].n128_f64[0];
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  a1[2].n128_u8[0] = v5;
  return result;
}

void outlined bridged method (mbnn) of @objc CALayer.name.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setName_];
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType;
  if (!lazy protocol witness table cache variable for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantVideoLayerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParticipantVideoLayerType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of RemoteParticipantVideoProvider.videoAttributeOrientation.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 160))();
  return OUTLINED_FUNCTION_1_40(v1);
}

uint64_t dispatch thunk of RemoteParticipantVideoProvider.screenAttributeOrientation.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 168))();
  return OUTLINED_FUNCTION_1_40(v1);
}

uint64_t dispatch thunk of RemoteParticipantVideoProvider.videoAttributeCamera.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 176))();
  return OUTLINED_FUNCTION_1_40(v1);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ButtonsStackView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd);
  Bindable.wrappedValue.getter();
  return v1;
}

void (*ButtonsStackView.viewModel.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd);
  v2[4] = Bindable.wrappedValue.modify();
  return ButtonsStackView.viewModel.modify;
}

uint64_t ButtonsStackView.$viewModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd);

  return MEMORY[0x1EEDE4B98](v0);
}

uint64_t ButtonsStackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit012ButtonsStackD5ModelC16LocalVideoButtonCG10Foundation4UUIDVAA15ModifiedContentVyAA0D0PAAE11buttonStyleyQrqd__AA0qW0Rd__lFQOyAA0Q0VyATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGG_014CommunicationsB004BlurqW0VQo_AA31AccessibilityAttachmentModifierVGGGMd);
  return closure #1 in ButtonsStackView.body.getter(v1);
}

uint64_t closure #1 in ButtonsStackView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ButtonsStackView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd);
  v5 = Bindable.wrappedValue.getter();
  v6 = (*(*v11 + 160))(v5);

  v11 = v6;
  outlined init with copy of ButtonsStackView(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  outlined init with take of ButtonsStackView(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ButtonsStackViewModel.LocalVideoButton] and conformance [A], &_sSay15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonCGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type ButtonsStackViewModel.LocalVideoButton and conformance ButtonsStackViewModel.LocalVideoButton, type metadata accessor for ButtonsStackViewModel.LocalVideoButton);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in ButtonsStackView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for AccessibilityTraits();
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BlurButtonStyle();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonsStackView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd);
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurfE0VQo_Md);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMd);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v41 - v23;
  v24 = *a1;
  outlined init with copy of ButtonsStackView(a2, v15);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  outlined init with take of ButtonsStackView(v15, v27 + v25);
  *(v27 + v26) = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  v28 = Button.init(action:label:)();
  v41 = *(*v24 + 152);
  v41(v28);
  BlurButtonStyle.init(isEnabled:)();
  v29 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd);
  v30 = lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type BlurButtonStyle and conformance BlurButtonStyle, MEMORY[0x1E69959F0]);
  v31 = v46;
  View.buttonStyle<A>(_:)();
  (*(v47 + 8))(v11, v31);
  v32 = (*(v43 + 8))(v18, v16);
  v57 = (*(*v24 + 176))(v32);
  v58 = v33;
  v53 = v16;
  v54 = v31;
  v55 = v29;
  v56 = v30;
  v34 = v42;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v35 = v44;
  View.accessibilityLabel<A>(_:)();

  v36 = (*(v45 + 8))(v22, v35);
  if ((v41)(v36))
  {
    v37 = v49;
    static AccessibilityTraits.isSelected.getter();
    v38 = v50;
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v37 = v49;
    v39 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v39;
  }

  MEMORY[0x1BFB1E4A0](v37, v48);
  (*(v51 + 8))(v37, v38);
  return sub_1BBCDD4DC(v34);
}

uint64_t closure #1 in closure #1 in closure #1 in ButtonsStackView.body.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd);
  Bindable.wrappedValue.getter();
  (*(*v4 + 256))(a2);
}

uint64_t closure #2 in closure #1 in closure #1 in ButtonsStackView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v5 = *MEMORY[0x1E69816C0];
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t ButtonsStackView.init(viewModel:)()
{
  type metadata accessor for ButtonsStackViewModel(0);
  lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type ButtonsStackViewModel and conformance ButtonsStackViewModel, type metadata accessor for ButtonsStackViewModel);

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t type metadata accessor for ButtonsStackView()
{
  result = type metadata singleton initialization cache for ButtonsStackView;
  if (!type metadata singleton initialization cache for ButtonsStackView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ButtonsStackView()
{
  type metadata accessor for Bindable<ButtonsStackViewModel>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Bindable<ButtonsStackViewModel>()
{
  if (!lazy cache variable for type metadata for Bindable<ButtonsStackViewModel>)
  {
    type metadata accessor for ButtonsStackViewModel(255);
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bindable<ButtonsStackViewModel>);
    }
  }
}

uint64_t outlined init with copy of ButtonsStackView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonsStackView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ButtonsStackView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonsStackView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ButtonsStackView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ButtonsStackView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in ButtonsStackView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd);
    type metadata accessor for BlurButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd);
    lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type BlurButtonStyle and conformance BlurButtonStyle, MEMORY[0x1E69959F0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd);
    type metadata accessor for VideoReactionButtonStyle(255);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd);
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle, type metadata accessor for VideoReactionButtonStyle);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ButtonsStackView.body.getter()
{
  v1 = type metadata accessor for ButtonsStackView();
  OUTLINED_FUNCTION_9_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in ButtonsStackView.body.getter(v0 + v6, v7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t ButtonsStackViewModel.LocalVideoButton.ButtonType.imageName.getter(char a1)
{
  v1 = 0x7669737275632E66;
  v2 = 0xD000000000000016;
  if (a1 == 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 4)
  {
    return 0xD000000000000027;
  }

  else
  {
    return v1;
  }
}

uint64_t ButtonsStackViewModel.LocalVideoButton.ButtonType.accessibilityLabel.getter(char a1)
{
  if (a1 == 4)
  {
    v1 = [objc_opt_self() conversationKit];
    v6 = 0x80000001BC4F4F60;
    v5 = 0xD000000000000011;
  }

  else if (a1 == 3)
  {
    v1 = [objc_opt_self() conversationKit];
    v5 = 0x5449415254524F50;
    v6 = 0xEE004C4542414C5FLL;
  }

  else
  {
    if (a1 == 2)
    {
      v2 = "CENTER_STAGE_LABEL";
      v3 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_14_10();
      v5 = v4 | 6;
    }

    else
    {
      v2 = "FLIP_CAMERA_LABEL";
      v7 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_14_10();
      v5 = v8 + 1;
    }

    v6 = v2 | 0x8000000000000000;
  }

  v9.super.isa = v1;
  OUTLINED_FUNCTION_17_0(v5, v6, 0x61737265766E6F43, 0xEF74694B6E6F6974, v9);

  return OUTLINED_FUNCTION_46();
}

id ButtonsStackViewModel.LocalVideoButton.ButtonType.notificationName.getter(char a1)
{
  v1 = 0;
  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v2 = MEMORY[0x1E69D9050];
      goto LABEL_6;
    }

    if (a1 != 4)
    {
      v2 = MEMORY[0x1E69D9060];
LABEL_6:
      v1 = *v2;
      v3 = *v2;
    }
  }

  return v1;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ButtonsStackViewModel.LocalVideoButton.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled;
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for ButtonsStackViewModel.LocalVideoButton.accessibilityLabel : ButtonsStackViewModel.LocalVideoButton(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t ButtonsStackViewModel.LocalVideoButton.accessibilityLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.__allocating_init(buttonType:)(char a1)
{
  v2 = swift_allocObject();
  ButtonsStackViewModel.LocalVideoButton.init(buttonType:)(a1);
  return v2;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.init(buttonType:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v34 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v35 = v15;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  UUID.init()();
  *(v1 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_cancellable) = MEMORY[0x1E69E7CD0];
  v19 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_videoDeviceController;
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 videoDeviceController];

  *(v2 + v19) = v21;
  *(v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled) = 0;
  *(v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType) = a1;
  v22 = ButtonsStackViewModel.LocalVideoButton.ButtonType.accessibilityLabel.getter(a1);
  v23 = (v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v20) = (*(*v2 + 208))();
  v25 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *(v2 + v25) = v20 & 1;
  v26 = ButtonsStackViewModel.LocalVideoButton.ButtonType.notificationName.getter(a1);
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v29 = static OS_dispatch_queue.main.getter();
    v36 = v29;
    v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v30);
    OUTLINED_FUNCTION_2_39();
    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v31, v32);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of OS_dispatch_queue.SchedulerOptions?(v7);

    (*(v34 + 8))(v13, v8);
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>();
    Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v18, v14);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v2;
}

uint64_t closure #1 in ButtonsStackViewModel.LocalVideoButton.init(buttonType:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 208))(result);
    (*(*v1 + 160))(v2 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>()
{
  result = lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>;
  if (!lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>);
  }

  return result;
}

Swift::Bool __swiftcall ButtonsStackViewModel.LocalVideoButton.getIsEnabled()()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType);
  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v1 = [*(v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_videoDeviceController) cameraBlurEnabled];
    }

    else if (v2 != 4)
    {
      v1 = *(v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType);
    }
  }

  return v1 & 1;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.deinit()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_id;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);

  return v0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance ButtonsStackViewModel.LocalVideoButton@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t ButtonsStackViewModel.LocalVideoButton.id.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  OUTLINED_FUNCTION_7_0();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t key path getter for ButtonsStackViewModel.buttons : ButtonsStackViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ButtonsStackViewModel.buttons : ButtonsStackViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t ButtonsStackViewModel.buttons.getter()
{
  return ButtonsStackViewModel.buttons.getter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 296))();

  OUTLINED_FUNCTION_19_1();
}

uint64_t ButtonsStackViewModel.buttons.setter(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 304))();
}

void (*ButtonsStackViewModel.buttons.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 296))(KeyPath);

  v3[5] = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_32();
  v3[6] = _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v5, v6);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[7] = ButtonsStackViewModel._buttons.modify();
  return ButtonsStackViewModel.buttons.modify;
}

void ButtonsStackViewModel.buttons.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t ButtonsStackViewModel.cancellable.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel__cancellable;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();

  _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5();
  v5 = v4;

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 304))(v8);
  }
}

uint64_t closure #1 in ButtonsStackViewModel.buttons.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t ButtonsStackViewModel.__allocating_init(isFrontFacingOrExternal:updateVideoLayers:)()
{
  OUTLINED_FUNCTION_17_6();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_8();
  ButtonsStackViewModel.init(isFrontFacingOrExternal:updateVideoLayers:)(v1, v2, v3, v4);
  return v0;
}

char *ButtonsStackViewModel.init(isFrontFacingOrExternal:updateVideoLayers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a1;
  v48 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v49 = v13;
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v51 = v18;
  v52 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_logger;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.conversationKit);
  (*(*(v23 - 8) + 16))(&v5[v22], v24, v23);
  v25 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 videoDeviceController];

  *&v5[v25] = v27;
  *&v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel__buttons] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel__cancellable] = MEMORY[0x1E69E7CD0];
  ObservationRegistrar.init()();
  v28 = &v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_isFrontFacingOrExternal];
  v29 = v48;
  *v28 = v47;
  *(v28 + 1) = a2;
  v30 = &v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_updateVideoLayers];
  *v30 = v29;
  *(v30 + 1) = a4;
  v31 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
  v32 = *&v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController];

  v33 = [v32 currentInputSupportsCinematicFraming];
  v48 = a4;
  if (v33)
  {
    v34 = [*&v5[v31] isCinematicFramingEnabled];
  }

  else
  {
    v34 = 2;
  }

  ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v34);
  v35 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v36 = static OS_dispatch_queue.main.getter();
  v53 = v36;
  v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v37);
  OUTLINED_FUNCTION_2_39();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v38, v39);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v40 = v50;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v11);

  (*(v49 + 8))(v16, v40);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>();
  v41 = v52;
  Publisher<>.sink(receiveValue:)();

  (*(v51 + 8))(v21, v41);
  KeyPath = swift_getKeyPath();
  (*(*v5 + 296))(KeyPath);

  v53 = v5;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_32();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v43, v44);
  OUTLINED_FUNCTION_23_12();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v53 = v5;
  swift_getKeyPath();
  OUTLINED_FUNCTION_23_12();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return v5;
}

uint64_t closure #1 in ButtonsStackViewModel.init(isFrontFacingOrExternal:updateVideoLayers:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = [*(v1 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController) currentInputSupportsCinematicFraming];

      _os_log_impl(&dword_1BBC58000, v2, v3, "CINEMATIC FRAMING: CinematicFramingAvailabilityChanged=%{BOOL}d", v4, 8u);
      MEMORY[0x1BFB23DF0](v4, -1, -1);
    }

    else
    {
    }

    v5 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
    if ([*(v1 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController) currentInputSupportsCinematicFraming])
    {
      v6 = [*(v1 + v5) isCinematicFramingEnabled];
    }

    else
    {
      v6 = 2;
    }

    ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v6);
  }

  return result;
}

void ButtonsStackViewModel.reloadButtons(centerStageStatus:)(unsigned __int8 a1)
{
  v3 = v1;
  v5 = a1;
  v44[6] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonC0L4TypeOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 772;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = OUTLINED_FUNCTION_18_10(v8);
  if (v5 == 2)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v7, v2, "CINEMATIC FRAMING: Center Stage feature is not available, so we're not adding centerStage button to view", v10, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (v9)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_15();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_27();
    }

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    inited = v16;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, a1 & 1);
  }

  v17 = *(inited + 16);
  if (v17)
  {
    v44[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
    type metadata accessor for ButtonsStackViewModel.LocalVideoButton(0);
    v19 = 32;
    do
    {
      v20 = *(inited + v19);
      v21 = swift_allocObject();
      ButtonsStackViewModel.LocalVideoButton.init(buttonType:)(v20);
      if (v20 == 4)
      {
        v22 = [*(v3 + v18) currentInputDevice];
        if (v22)
        {
          v23 = v22;
          [v22 position];

          v24 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_5_5();
          v25.super.isa = v24;
          v30 = OUTLINED_FUNCTION_17_0(v26, v27, v28, v29, v25);
          v32 = v31;

          (*(*v21 + 184))(v30, v32);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v19;
      --v17;
    }

    while (v17);

    v33 = v44[0];
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  (*(*v3 + 168))(v33);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_42();
    v37 = OUTLINED_FUNCTION_23();
    v44[0] = v37;
    *v36 = 136315138;
    v38 = (*(*v3 + 160))(v37);
    v39 = type metadata accessor for ButtonsStackViewModel.LocalVideoButton(0);
    v40 = MEMORY[0x1BFB20D10](v38, v39);
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v44);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_1BBC58000, v34, v35, "Reloaded buttons: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

uint64_t AVCaptureDevicePosition.buttonActionLabel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v2.super.isa = v0;
  v6 = OUTLINED_FUNCTION_17_0(v3, v1 | 0x8000000000000000, v4, v5, v2);

  return v6;
}

void ButtonsStackViewModel.didTap(button:)(uint64_t a1)
{
  v2 = (*(*a1 + 168))(v5);
  *v3 = !*v3;
  v2(v5, 0);
  v4 = *(a1 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType);
  if (v4 != 2)
  {
    if (v4 == 4)
    {
      ButtonsStackViewModel.flipCamera()();
    }

    else if (v4 == 3)
    {
      ButtonsStackViewModel.togglePortrait()();
    }

    else
    {
      ButtonsStackViewModel.toggleCinematicFraming()();
    }
  }
}

void ButtonsStackViewModel.togglePortrait()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController);
  v2 = [v1 cameraBlurEnabled];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_10(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = v2 ^ 1;
    v5[1] = v6;
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v6 = v2 ^ 1;
  }

  v12 = 2;
  [v1 setCurrentBackgroundBlurControlMode_];
  [v1 setCameraBlurEnabled_];
  if ([v1 currentInputSupportsCinematicFraming])
  {
    v12 = [v1 isCinematicFramingEnabled];
  }

  ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v12);
}

void ButtonsStackViewModel.toggleCinematicFraming()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController);
  v2 = [v1 isCinematicFramingEnabled];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_10(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = v2 ^ 1;
    v5[1] = v6;
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v6 = v2 ^ 1;
  }

  [v1 setCinematicFramingEnabled_];

  ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v6);
}

void ButtonsStackViewModel.flipCamera()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController);
  v3 = [v2 currentInputDevice];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 position];
    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 2;
    }

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v51 = v4;
    v52 = v1;
    oslog = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_42();
      v10 = OUTLINED_FUNCTION_23();
      v55 = v10;
      *v9 = 136315138;
      type metadata accessor for AVCaptureDevicePosition(0);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v55);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, v7, v8, "Flipping camera to position %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v50 = v2;
    v14 = [v2 inputDevices];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDevice);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = specialized Array.count.getter(v15);
    if (!v16)
    {
LABEL_24:

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_42();
        v33 = OUTLINED_FUNCTION_23();
        *v32 = 136315138;
        v55 = v33;
        type metadata accessor for AVCaptureDevicePosition(0);
        v34 = String.init<A>(reflecting:)();
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v55);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_1BBC58000, v30, v31, "Unable to find input device for position %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      return;
    }

    v17 = v16;
    v18 = 0;
    v19 = (v1 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_isFrontFacingOrExternal);
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB22010](v18, v15);
      }

      else
      {
        if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v23 = [v20 deviceType];
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
          goto LABEL_22;
        }
      }

      if ((*v19)(v21))
      {
        goto LABEL_32;
      }

LABEL_22:
      if ([v21 position] == oslog)
      {
LABEL_32:

        v39 = v21;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = OUTLINED_FUNCTION_42();
          v43 = OUTLINED_FUNCTION_23();
          v55 = v43;
          *v42 = 136315138;
          v44 = [v39 localizedName];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v55);

          *(v42 + 4) = v48;
          _os_log_impl(&dword_1BBC58000, v40, v41, "Setting input device to %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        [v50 setCurrentInputDevice:v39 isUserPreferred:1];
        [v50 startPreview];
        (*(v52 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_updateVideoLayers))(oslog);
        if ([v50 currentInputSupportsCinematicFraming])
        {
          v49 = [v50 isCinematicFramingEnabled];
        }

        else
        {
          v49 = 2;
        }

        ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v49);

        return;
      }

      ++v18;
      if (v22 == v17)
      {
        goto LABEL_24;
      }
    }
  }

  osloga = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1BBC58000, osloga, v37, "Unable to flip camera since there is not current input", v38, 2u);
    OUTLINED_FUNCTION_27();
  }
}

uint64_t ButtonsStackViewModel.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_32();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ButtonsStackViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_32();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ButtonsStackViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_isFrontFacingOrExternal);

  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_updateVideoLayers);

  v3 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

id ButtonsStackViewController.__allocating_init(isFrontFacingOrExternal:updateVideoLayers:)()
{
  OUTLINED_FUNCTION_17_6();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_15_8();
  return ButtonsStackViewController.init(isFrontFacingOrExternal:updateVideoLayers:)(v2, v3, v4, v5);
}

id ButtonsStackViewController.init(isFrontFacingOrExternal:updateVideoLayers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIHostingControllerSizingOptions();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v12 = type metadata accessor for ButtonsStackView();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v14 = (v5 + direct field offset for ButtonsStackViewController.isFrontFacingOrExternal);
  *v14 = a1;
  v14[1] = a2;
  v15 = (v5 + direct field offset for ButtonsStackViewController.updateVideoLayers);
  *v15 = a3;
  v15[1] = a4;
  type metadata accessor for ButtonsStackViewModel(0);
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  ButtonsStackViewModel.init(isFrontFacingOrExternal:updateVideoLayers:)(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_32();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v16, v17);
  Bindable<A>.init(wrappedValue:)();
  v18 = LockScreenHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v19 = static SafeAreaRegions.keyboard.getter();
  v20 = UIHostingController.safeAreaRegions.modify();
  _ss9OptionSetPs7ElementQzRszrlE6removeyxSgxF15ConversationKit0E14ControlsActionO13ButtonOptionsV_Tgq5_0(v19);
  v20(v22, 0);

  return v18;
}

unint64_t specialized OptionSet<>.remove(_:)(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

Swift::Void __swiftcall ButtonsStackViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setTranslatesAutoresizingMaskIntoConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void @objc ButtonsStackViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  ButtonsStackViewController.viewDidLoad()();
}

id ButtonsStackViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t ButtonsStackViewController.__ivar_destroyer()
{
  OUTLINED_FUNCTION_17_8(direct field offset for ButtonsStackViewController.isFrontFacingOrExternal);

  OUTLINED_FUNCTION_17_8(direct field offset for ButtonsStackViewController.updateVideoLayers);
}

id ButtonsStackViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ButtonsStackViewController.__ivar_destroyer()
{
}

uint64_t type metadata completion function for ButtonsStackViewModel()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for ButtonsStackViewModel.LocalVideoButton()
{
  result = type metadata accessor for UUID();
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

unsigned __int8 *getEnumTagSinglePayload for ButtonsStackViewModel.LocalVideoButton.ButtonType(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_17:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = (v6 + 2147483646) & 0x7FFFFFFF;
      result = (v7 - 2);
      if (v7 > 2)
      {
        return result;
      }
    }

    return 0;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 4);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonsStackViewModel.LocalVideoButton.ButtonType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *destructiveInjectEnumTag for ButtonsStackViewModel.LocalVideoButton.ButtonType(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t TapToRadarFeature.title.getter(char a1)
{
  v2 = [objc_opt_self() conversationKit];
  v3 = "TTR_HOLD_ASSIST_BANNER_TITLE";
  if (a1)
  {
    v3 = "ackViewController";
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  v5 = OUTLINED_FUNCTION_0_33(v4, v3, v7);

  return v5;
}

uint64_t TapToRadarFeature.subtitle.getter(char a1)
{
  v2 = [objc_opt_self() conversationKit];
  v3 = "TTR_HOLD_ASSIST_BANNER_SUBTITLE";
  if (a1)
  {
    v3 = "TTR_BANNER_TITLE";
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  v5 = OUTLINED_FUNCTION_0_33(v4, v3, v7);

  return v5;
}

uint64_t TapToRadarFeature.radarTitle.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6D6954656361465BLL;
  }
}

Swift::Int TapToRadarFeature.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TapToRadarFeature()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TapToRadarFeature.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TapToRadarFeature and conformance TapToRadarFeature()
{
  result = lazy protocol witness table cache variable for type TapToRadarFeature and conformance TapToRadarFeature;
  if (!lazy protocol witness table cache variable for type TapToRadarFeature and conformance TapToRadarFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TapToRadarFeature and conformance TapToRadarFeature);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TapToRadarFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static CallScreening.EndingAction.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a6 != 1)
    {
      return 0;
    }

LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t static CallScreening.StateTransition.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  switch(a3 >> 5)
  {
    case 1:
      if ((a6 & 0xE0) != 0x20)
      {
        return 0;
      }

      goto LABEL_17;
    case 2:
      if ((a6 & 0xE0) != 0x40)
      {
        return 0;
      }

      goto LABEL_17;
    case 3:
      if ((a6 & 0xE0) != 0x60)
      {
        return 0;
      }

      v6 = a6 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        if ((a3 & 0x1F) != 1)
        {
          return v6 == 2 && !(a5 | a4);
        }

        if (v6 != 1)
        {
          return 0;
        }
      }

      else if ((a6 & 0x1F) != 0)
      {
        return 0;
      }

      v11 = a1 == a4 && a2 == a5;
      return v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    case 4:
      if (a2 | a1 || a3 != 128)
      {
        if ((a6 & 0xE0) != 0x80 || a4 != 1 || a5 != 0)
        {
          return 0;
        }
      }

      else if ((a6 & 0xE0) != 0x80 || a5 | a4)
      {
        return 0;
      }

      return a6 == 128;
    default:
      if (a6 >= 0x20u)
      {
        return 0;
      }

LABEL_17:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t CallScreening.StateTransition.description.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = 0x69726577736E612ELL;
  switch(a3 >> 5)
  {
    case 1:
      return result;
    case 2:
      result = 0x696E65657263732ELL;
      break;
    case 3:
      result = 0x676E69646E652ELL;
      break;
    case 4:
      if ((a2 | a1) == 0 && a3 == 128)
      {
        result = 0x6C616974696E692ELL;
      }

      else
      {
        result = 0x696E657473696C2ELL;
      }

      break;
    default:
      _StringGuts.grow(_:)(25);

      MEMORY[0x1BFB20B10](a1, a2);
      MEMORY[0x1BFB20B10](10530, 0xE200000000000000);
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t CallScreening.State.stateTransition.getter()
{
  v1 = *v0;
  v2 = v0[2];
  result = v0[6] >> 61;
  switch(result)
  {
    case 1:
      result = 1;
      break;
    case 2:

      result = v2;
      break;
    case 3:
    case 4:

      goto LABEL_6;
    case 5:
      outlined copy of CallScreening.EndingAction(*v0, v0[1], v0[2]);
LABEL_6:
      result = v1;
      break;
    default:
      return result;
  }

  return result;
}

BOOL static CallScreening.State.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[6];
  switch(v6 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_5_19();
      return v30 == 1;
    case 2uLL:
      OUTLINED_FUNCTION_5_19();
      if (v15 == 2)
      {
        v16 = v14[2];
        v17 = v14[3];
        v18 = v14[5];
        v47 = v5;
        v48 = v4;
        v19 = v5 == v16 && v4 == v17;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v21 = _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v20, v18);

          outlined destroy of String(&v47);

          return v21;
        }
      }

      else
      {
        v47 = v5;
        v48 = v4;
      }

      goto LABEL_36;
    case 3uLL:
      OUTLINED_FUNCTION_5_19();
      if (v24 == 3)
      {
        v25 = *v23;
        v26 = v23[1];
        v27 = v23[2];
        v47 = v3;
        v48 = v2;
        v28 = v3 == v25 && v2 == v26;
        if (v28 || (OUTLINED_FUNCTION_2_40(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {

          v29 = _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v5, v27);
          outlined destroy of String(&v47);

          return v29;
        }
      }

      else
      {
        v47 = v3;
        v48 = v2;
      }

LABEL_36:

      outlined destroy of String(&v47);

      goto LABEL_49;
    case 4uLL:
      v9 = a2[6];
      if (v9 >> 61 == 4)
      {
        v10 = *a2;
        v11 = a2[1];
        v47 = *a1;
        v48 = v2;
        v12 = v3 == v10 && v2 == v11;
        if (v12 || (OUTLINED_FUNCTION_2_40(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {

          v13 = _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v6 & 0x1FFFFFFFFFFFFFFFLL, v9 & 0x1FFFFFFFFFFFFFFFLL);
          outlined destroy of String(&v47);

          goto LABEL_54;
        }
      }

      else
      {
        v47 = *a1;
        v48 = v2;
      }

      outlined destroy of String(&v47);

      goto LABEL_48;
    case 5uLL:
      OUTLINED_FUNCTION_5_19();
      if (v33 != 5)
      {
        v47 = v3;
        v48 = v2;
        v49 = v5;
        v39 = OUTLINED_FUNCTION_2_40();
        outlined copy of CallScreening.EndingAction(v39, v40, v5);

        v41 = &v47;
        goto LABEL_47;
      }

      v34 = v31;
      v35 = *v32;
      v36 = v32[1];
      v37 = v32[3];
      v38 = *(v32 + 16);
      v50[0] = v3;
      v50[1] = v2;
      v51 = v5;
      if (v5)
      {
        if (v5 != 1)
        {
          if (v38 != 2 || v36 | v35)
          {
            v45 = OUTLINED_FUNCTION_2_40();
            outlined copy of CallScreening.EndingAction(v45, v46, 2u);
            return 0;
          }

          goto LABEL_53;
        }

        if (v38 != 1)
        {
          goto LABEL_46;
        }
      }

      else if (v38)
      {
LABEL_46:
        outlined init with copy of CallScreening.State(v34, &v47);
        v41 = v50;
LABEL_47:
        outlined destroy of CallScreening.EndingAction(v41);
LABEL_48:

LABEL_49:

        return 0;
      }

      if (v3 != v35 || v2 != v36)
      {
        OUTLINED_FUNCTION_2_40();
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }
      }

LABEL_53:
      v43 = OUTLINED_FUNCTION_2_40();
      outlined copy of CallScreening.EndingAction(v43, v44, v5);

      v13 = _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v4, v37);
      outlined destroy of CallScreening.EndingAction(v50);
LABEL_54:

      return v13;
    default:
      OUTLINED_FUNCTION_5_19();
      return v7 == 0;
  }
}

uint64_t CallScreening.State.willExit(to:)(uint64_t a1)
{
  CallScreening.State.state.getter(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 48))(a1, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t CallScreening.State.state.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  switch(v8 >> 61)
  {
    case 1uLL:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27CallScreeningListeningStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd);
      OUTLINED_FUNCTION_1_41();
      a1[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v52, v53);
      *a1 = v3;
      a1[1] = v4;
      a1[2] = v5;
      goto LABEL_7;
    case 2uLL:
      v72 = v1[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26CallScreeningTrackingStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd);
      OUTLINED_FUNCTION_1_41();
      a1[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v25, v26);
      OUTLINED_FUNCTION_53_3();
      v27 = swift_allocObject();
      v28 = OUTLINED_FUNCTION_0_34(v27);
      v28[6] = v6;
      v28[7] = v7;

      v37 = OUTLINED_FUNCTION_8_31(v29, v30, v31, v32, v33, v34, v35, v36, v68, v69, v70, v72);
      outlined init with copy of String(v37, v38);
      goto LABEL_11;
    case 3uLL:
      v73 = *v1;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27CallScreeningAnsweringStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd);
      OUTLINED_FUNCTION_1_41();
      a1[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v39, v40);
      v41 = swift_allocObject();
      v42 = OUTLINED_FUNCTION_0_34(v41);
      v42[6] = v6;
      v50 = OUTLINED_FUNCTION_8_31(v42, v43, v44, v45, v46, v47, v48, v49, v68, v69, v70, v73);
      outlined init with copy of String(v50, v51);

    case 4uLL:
      v11 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v71 = *v1;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013CallScreeningD5StateVyAA14CKStateMachineCyAA0cD0O0E0OGGMd);
      OUTLINED_FUNCTION_1_41();
      a1[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v12, v13);
      v14 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_34(v14);
      v15[6] = v6;
      v15[7] = v7;
      v15[8] = v11;
      v23 = OUTLINED_FUNCTION_8_31(v15, v16, v17, v18, v19, v20, v21, v22, v68, v69, v70, v71);
      outlined init with copy of String(v23, v24);

    case 5uLL:
      v74 = *v1;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24CallScreeningEndingStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd);
      OUTLINED_FUNCTION_1_41();
      a1[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v54, v55);
      OUTLINED_FUNCTION_53_3();
      v56 = swift_allocObject();
      v57 = OUTLINED_FUNCTION_0_34(v56);
      v57[6] = v6;
      v57[7] = v7;
      v65 = OUTLINED_FUNCTION_8_31(v57, v58, v59, v60, v61, v62, v63, v64, v68, v69, v70, v74);
      outlined init with copy of CallScreening.EndingAction(v65, v66);
LABEL_11:

      break;
    default:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25CallScreeningInitialStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd);
      OUTLINED_FUNCTION_1_41();
      a1[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v9, v10);
      *a1 = v3;
      a1[1] = v4;
      a1[2] = v5;
LABEL_7:

      break;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreening.State.enteringState()()
{
  CallScreening.State.state.getter(v2);
  v0 = v3;
  v1 = v4;
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v1 + 56))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t CallScreening.State.stateMachine.getter()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v1[6];
  switch(v3 >> 61)
  {
    case 1uLL:
    case 3uLL:
      return (*(*v2 + 104))();
    case 2uLL:
      v2 = v1[5];
      break;
    case 4uLL:
      v2 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      break;
    case 5uLL:
      v2 = v1[3];
      break;
    default:
      v2 = *v1;
      break;
  }

  return (*(*v2 + 104))();
}

uint64_t protocol witness for CKStateMachineState.stateTransition.getter in conformance CallScreening.State@<X0>(uint64_t a1@<X8>)
{
  result = CallScreening.State.stateTransition.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t protocol witness for CKStateMachineState.willExit(to:) in conformance CallScreening.State(__n128 *a1)
{
  OUTLINED_FUNCTION_9_18(a1);
  v5[6] = *(v2 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = *(v1 + 6);
  return CallScreening.State.willExit(to:)(v5);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CallScreening.State(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return static CallScreening.State.== infix(_:_:)(v4, a2);
}

BOOL _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 104))();
  v4 = (*(*a2 + 104))();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {

      return v3 == v5;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:

    return 0;
  }

  return 1;
}

uint64_t specialized CallScreeningEndingState.description.getter()
{
  _StringGuts.grow(_:)(29);
  MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC4F5310);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0;
}

unint64_t specialized CallScreeningScreeningState.description.getter()
{
  _StringGuts.grow(_:)(28);

  MEMORY[0x1BFB20B10](*v0, v0[1]);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000019;
}

unint64_t specialized CallScreeningTrackingState.description.getter()
{
  _StringGuts.grow(_:)(27);

  MEMORY[0x1BFB20B10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t specialized CallScreeningAnsweringState.description.getter()
{
  _StringGuts.grow(_:)(28);

  MEMORY[0x1BFB20B10](*v0, v0[1]);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t outlined copy of CallScreening.EndingAction(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallScreening.StateTransition and conformance CallScreening.StateTransition()
{
  result = lazy protocol witness table cache variable for type CallScreening.StateTransition and conformance CallScreening.StateTransition;
  if (!lazy protocol witness table cache variable for type CallScreening.StateTransition and conformance CallScreening.StateTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreening.StateTransition and conformance CallScreening.StateTransition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallScreening.StateTransition and conformance CallScreening.StateTransition;
  if (!lazy protocol witness table cache variable for type CallScreening.StateTransition and conformance CallScreening.StateTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreening.StateTransition and conformance CallScreening.StateTransition);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CallScreening.State(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CallScreening.State and conformance CallScreening.State();
  result = lazy protocol witness table accessor for type CallScreening.State and conformance CallScreening.State();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CallScreening.State and conformance CallScreening.State()
{
  result = lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State;
  if (!lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State;
  if (!lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State;
  if (!lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreening.State and conformance CallScreening.State);
  }

  return result;
}

uint64_t dispatch thunk of CallScreeningState.willExit(to:)(__n128 *a1)
{
  v1 = OUTLINED_FUNCTION_9_18(a1);
  v5[6] = v2;
  return v3(v5, v1);
}

uint64_t dispatch thunk of CallScreeningStateMachine.transition(with:reason:validation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 32) + **(a9 + 32));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit13CallScreeningO12EndingActionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for CallScreening.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 56))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*(a1 + 48) >> 57) >> 4) | (8 * ((*(a1 + 48) >> 57) & 8 | *(a1 + 48) & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
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

uint64_t storeEnumTagSinglePayload for CallScreening.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallScreening.EndingAction(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for CallScreening.EndingAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t destructiveInjectEnumTag for CallScreening.EndingAction(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit13CallScreeningO15StateTransitionO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t getEnumTagSinglePayload for CallScreening.StateTransition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3C && *(a1 + 17))
    {
      v2 = *a1 + 59;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3B)
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

uint64_t storeEnumTagSinglePayload for CallScreening.StateTransition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 16) = 0;
    *result = a2 - 60;
    *(result + 8) = 0;
    if (a3 >= 0x3C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CallScreening.StateTransition(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 16) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t outlined consume of CallScreening.EndingAction(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t property wrapper backing initializer of AudioCallMiddleContainerView.viewModel()
{
  OUTLINED_FUNCTION_0_35();
  lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel(v0, v1);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t key path getter for AudioCallMiddleContainerView.viewModel : <A>AudioCallMiddleContainerView<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioCallMiddleContainerView();
  result = AudioCallMiddleContainerView.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for AudioCallMiddleContainerView.viewModel : <A>AudioCallMiddleContainerView<A>()
{
  v0 = type metadata accessor for AudioCallMiddleContainerView();

  return AudioCallMiddleContainerView.viewModel.setter(v1, v0);
}

uint64_t AudioCallMiddleContainerView.viewModel.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);

  *(v4 + 8) = a1;
  return result;
}

void AudioCallMiddleContainerView.$viewModel.getter()
{
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_0_35();
  lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel(v0, v1);

  JUMPOUT(0x1BFB1E3A0);
}

uint64_t AudioCallMiddleContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v32 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd);
  OUTLINED_FUNCTION_3_33();
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(a1 + 24);
  v29[1] = v11;
  v30 = v12;
  v13 = lazy protocol witness table accessor for type _AnimationModifier<[TranscriptionViewModel.Caption]> and conformance _AnimationModifier<A>();
  v34 = v12;
  v35 = v13;
  OUTLINED_FUNCTION_12_2();
  v29[0] = swift_getWitnessTable();
  v14 = type metadata accessor for AccessibilityCaptionsReader();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v29 - v21;
  AudioCallMiddleContainerView.viewModel.getter();
  (*(v5 + 16))(v9, v2, a1);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  (*(v5 + 32))(v24 + v23, v9, a1);
  AccessibilityCaptionsReader.init(viewModel:content:)(partial apply for closure #1 in AudioCallMiddleContainerView.body.getter, v24, v19);
  OUTLINED_FUNCTION_2_41();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v14, WitnessTable);
  v27 = *(v16 + 8);
  v27(v19, v14);
  static ViewBuilder.buildExpression<A>(_:)(v22, v14, WitnessTable);
  return (v27)(v22, v14);
}

unint64_t lazy protocol witness table accessor for type _AnimationModifier<[TranscriptionViewModel.Caption]> and conformance _AnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type _AnimationModifier<[TranscriptionViewModel.Caption]> and conformance _AnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type _AnimationModifier<[TranscriptionViewModel.Caption]> and conformance _AnimationModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnimationModifier<[TranscriptionViewModel.Caption]> and conformance _AnimationModifier<A>);
  }

  return result;
}

uint64_t closure #1 in AudioCallMiddleContainerView.body.getter()
{
  static Animation.easeInOut.getter();
  type metadata accessor for AudioCallMiddleContainerView();
  AudioCallMiddleContainerView.viewModel.getter();
  TranscriptionViewModel.captions.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd);
  lazy protocol witness table accessor for type [TranscriptionViewModel.Caption] and conformance <A> [A]();
  View.animation<A>(_:value:)();
}

uint64_t partial apply for closure #1 in AudioCallMiddleContainerView.body.getter()
{
  type metadata accessor for AudioCallMiddleContainerView();

  return closure #1 in AudioCallMiddleContainerView.body.getter();
}

uint64_t AudioCallMiddleContainerView.init(view:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  v4 = (a3 + *(type metadata accessor for AudioCallMiddleContainerView() + 36));
  result = property wrapper backing initializer of AudioCallMiddleContainerView.viewModel();
  *v4 = result;
  v4[1] = v6;
  return result;
}

void type metadata completion function for AudioCallMiddleContainerView()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservedObject<TranscriptionViewModel>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioCallMiddleContainerView(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for AudioCallMiddleContainerView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void type metadata accessor for ObservedObject<TranscriptionViewModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<TranscriptionViewModel>)
  {
    type metadata accessor for TranscriptionViewModel(255);
    lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel(&lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel, type metadata accessor for TranscriptionViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<TranscriptionViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [TranscriptionViewModel.Caption] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [TranscriptionViewModel.Caption] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [TranscriptionViewModel.Caption] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd);
    lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel(&lazy protocol witness table cache variable for type TranscriptionViewModel.Caption and conformance TranscriptionViewModel.Caption, type metadata accessor for TranscriptionViewModel.Caption);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TranscriptionViewModel.Caption] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static UIBackgroundConfiguration.plainInCallControlsBackground.getter()
{
  static UIBackgroundConfiguration.listPlainCell()();
  v0 = [objc_opt_self() clearColor];
  return UIBackgroundConfiguration.backgroundColor.setter();
}

uint64_t static UIBackgroundConfiguration.preferredInCallControlsBackground.getter()
{
  static UIBackgroundConfiguration.listGroupedCell()();
  v0 = [objc_opt_self() whiteColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  type metadata accessor for UIVibrancyEffect();
  static UIVibrancyEffect.inCallControlsEffect.getter();
  UIBackgroundConfiguration.visualEffect.setter();
  v1 = UIBackgroundConfiguration.backgroundColor.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 colorWithAlphaComponent_];
  }

  return UIBackgroundConfiguration.backgroundColor.setter();
}

uint64_t static UIBackgroundConfiguration.blurredInCallControlsBackground.getter()
{
  static UIBackgroundConfiguration.listGroupedCell()();
  v0 = [objc_opt_self() whiteColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  type metadata accessor for UIVibrancyEffect();
  static UIVibrancyEffect.inCallControlsEffect.getter();
  return UIBackgroundConfiguration.visualEffect.setter();
}

unint64_t type metadata accessor for UIVibrancyEffect()
{
  result = lazy cache variable for type metadata for UIVibrancyEffect;
  if (!lazy cache variable for type metadata for UIVibrancyEffect)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIVibrancyEffect);
  }

  return result;
}

uint64_t key path getter for CallScreeningInitialState.initialStateSetup : <A>CallScreeningInitialState<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CallScreeningInitialState<A>) -> ();
  a4[1] = v8;
}

uint64_t key path setter for CallScreeningInitialState.initialStateSetup : <A>CallScreeningInitialState<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallScreeningInitialState<A>) -> (@out ());
  *(a2 + 16) = v8;
  return result;
}

uint64_t CallScreeningInitialState.initialStateSetup.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CallScreeningInitialState.init(initialStateSetup:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  v0 = swift_allocObject();
  swift_weakInit();
  return v0;
}

uint64_t CallScreeningInitialState.willExit(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v28 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v17 = type metadata accessor for CallScreeningInitialState();
  OUTLINED_FUNCTION_0_36();
  WitnessTable = swift_getWitnessTable();
  result = CallScreeningState.stateMachine.getter(v17, WitnessTable);
  if (result)
  {
    (*(a6 + 16))(a5, a6);

    outlined init with copy of CallScreening.State(a1, v29);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    outlined destroy of CallScreening.State(a1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v22 = 136446466;

      v23 = OUTLINED_FUNCTION_3_34();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, 0xEC00000065746174, v29);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      v25 = CallScreening.State.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v29);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1BBC58000, v20, v21, "%{public}s Exiting to %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    return (*(v28 + 8))(v16, v30);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningInitialState.enteredState()()
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v0;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v23 = v11;
  v24 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = type metadata accessor for CallScreeningInitialState();
  OUTLINED_FUNCTION_0_36();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(v15, WitnessTable))
  {
    (*(v5 + 16))(v6, v5);
    swift_unknownObjectRelease();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v19 = 136446210;

      v20 = OUTLINED_FUNCTION_3_34();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, 0xEC00000065746174, &v25);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1BBC58000, v17, v18, "EnteredState %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    (*(v23 + 8))(v14, v24);
  }

  v8(v9, v8, v7);
}

uint64_t CallScreeningInitialState.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for AnsweringMachineCallStatus();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v30 = v14;
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for CallScreeningInitialState();
  OUTLINED_FUNCTION_0_36();
  WitnessTable = swift_getWitnessTable();
  result = CallScreeningState.stateMachine.getter(v18, WitnessTable);
  if (result)
  {
    (*(a6 + 16))(a5, a6);
    swift_unknownObjectRelease();
    outlined init with copy of AnsweringMachineCallStatus(a1, v12);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v23 = 136446466;

      v24 = OUTLINED_FUNCTION_3_34();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, 0xEC00000065746174, &v32);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2082;
      v26 = AnsweringMachineCallStatus.description.getter();
      v28 = v27;
      outlined destroy of AnsweringMachineCallStatus(v12);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v32);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_1BBC58000, v21, v22, "%{public}s recieved callStatus Update: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      outlined destroy of AnsweringMachineCallStatus(v12);
    }

    return (*(v30 + 8))(v17, v31);
  }

  return result;
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningInitialState<A>(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  v4 = static CKStateMachineActor.shared.getter();
  v3[5] = v4;

  return MEMORY[0x1EEE6DFA0](protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningInitialState<A>, v4, 0);
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningInitialState<A>()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  CallScreeningInitialState.update(with:)(v2, *v3, v3[1], v3[2], *(v1 + 16), *(v1 + 24));
  v4 = v0[1];

  return v4();
}

uint64_t instantiation function for generic protocol witness table for CallScreeningInitialState<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for CallScreeningInitialState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallScreeningInitialState<A>) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return v4(v6);
}

uint64_t CaptionsViewConstraintManager.__allocating_init(containingGuide:rosterCellLayoutGuide:containingView:captionsView:bannerView:gridView:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  CaptionsViewConstraintManager.init(containingGuide:rosterCellLayoutGuide:containingView:captionsView:bannerView:gridView:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *CaptionsViewConstraintManager.init(containingGuide:rosterCellLayoutGuide:containingView:captionsView:bannerView:gridView:)(void *a1, void *a2, void *a3, id a4, void *a5, void *a6)
{
  v6[26] = MEMORY[0x1E69E7CC0];
  v9 = [a4 widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  v6[17] = v10;
  v11 = [a4 heightAnchor];
  if (one-time initialization token for transcriptVerticalSize != -1)
  {
    swift_once();
  }

  v12 = [v11 constraintEqualToConstant_];

  v6[18] = v12;
  v13 = [a4 heightAnchor];
  v14 = [v13 constraintEqualToConstant_];

  v6[19] = v14;
  v15 = [a4 leftAnchor];
  v16 = [a1 leftAnchor];
  v17 = OUTLINED_FUNCTION_2_13();
  v19 = [v17 v18];

  v6[2] = v19;
  v20 = [a4 leftAnchor];
  v21 = [a5 rightAnchor];
  Layout.MultiwayFaceTime.init()(v102);
  v22 = OUTLINED_FUNCTION_2_13();
  v24 = [v22 v23];

  v6[3] = v24;
  v25 = [a4 rightAnchor];
  v26 = [a1 rightAnchor];
  v27 = OUTLINED_FUNCTION_2_13();
  v29 = [v27 v28];

  v6[5] = v29;
  v30 = [a4 rightAnchor];
  v31 = [a6 leftAnchor];
  Layout.MultiwayFaceTime.init()(v103);
  v32 = OUTLINED_FUNCTION_2_13();
  v34 = [v32 v33];

  v6[6] = v34;
  v35 = [a4 leftAnchor];
  v36 = [a6 rightAnchor];
  Layout.MultiwayFaceTime.init()(v104);
  v37 = OUTLINED_FUNCTION_2_13();
  v39 = [v37 v38];

  v6[4] = v39;
  v40 = [a6 rightAnchor];
  v41 = [a1 rightAnchor];
  v42 = OUTLINED_FUNCTION_2_13();
  v44 = [v42 v43];

  v6[7] = v44;
  v45 = [a6 leftAnchor];
  v46 = OUTLINED_FUNCTION_1_42([a1 leftAnchor]);

  v6[8] = v46;
  v47 = [a4 leadingAnchor];
  OUTLINED_FUNCTION_5_20();
  v49 = OUTLINED_FUNCTION_1_42([a1 v48]);

  v6[11] = v49;
  v50 = [a6 leadingAnchor];
  OUTLINED_FUNCTION_5_20();
  v52 = OUTLINED_FUNCTION_1_42([a1 v51]);

  v6[9] = v52;
  v53 = [a4 leadingAnchor];
  v54 = [a6 trailingAnchor];
  Layout.MultiwayFaceTime.init()(v105);
  v55 = OUTLINED_FUNCTION_2_13();
  v57 = [v55 v56];

  v6[12] = v57;
  v58 = [a4 leadingAnchor];
  v59 = OUTLINED_FUNCTION_1_42([a6 trailingAnchor]);

  v6[13] = v59;
  v60 = [a4 trailingAnchor];
  v61 = OUTLINED_FUNCTION_1_42([a1 trailingAnchor]);

  v6[14] = v61;
  v62 = [a4 trailingAnchor];
  OUTLINED_FUNCTION_5_20();
  v64 = [a6 v63];
  Layout.MultiwayFaceTime.init()(v106);
  v65 = OUTLINED_FUNCTION_2_13();
  v67 = [v65 v66];

  v6[15] = v67;
  v68 = [a4 trailingAnchor];
  OUTLINED_FUNCTION_5_20();
  v70 = OUTLINED_FUNCTION_1_42([a6 v69]);

  v6[16] = v70;
  v71 = [a6 trailingAnchor];
  v72 = OUTLINED_FUNCTION_1_42([a1 trailingAnchor]);

  v6[10] = v72;
  v73 = [a4 topAnchor];
  v74 = OUTLINED_FUNCTION_1_42([a1 topAnchor]);

  v6[20] = v74;
  v75 = [a4 bottomAnchor];
  v76 = OUTLINED_FUNCTION_1_42([a1 bottomAnchor]);

  v6[21] = v76;
  v77 = [a4 bottomAnchor];
  v78 = [a5 topAnchor];
  Layout.MultiwayFaceTime.init()(v107);
  v79 = OUTLINED_FUNCTION_2_13();
  v81 = [v79 v80];

  v6[22] = v81;
  v82 = [a4 bottomAnchor];
  v83 = [a2 topAnchor];
  v84 = OUTLINED_FUNCTION_2_13();
  v86 = [v84 v85];

  v6[25] = v86;
  v87 = [a4 centerXAnchor];
  v88 = [a1 centerXAnchor];
  v89 = OUTLINED_FUNCTION_2_13();
  v91 = [v89 v90];

  v6[23] = v91;
  v92 = [a4 centerYAnchor];
  v93 = [a6 centerYAnchor];
  v94 = OUTLINED_FUNCTION_2_13();
  v96 = [v94 v95];

  v6[24] = v96;
  return v6;
}

uint64_t CaptionsViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(uint64_t a1)
{
  if (*(a1 + 19))
  {
    if (*(a1 + 19) == 1)
    {
      OUTLINED_FUNCTION_6_26(a1);
      OUTLINED_FUNCTION_3_35();
      v4 = CaptionsViewConstraintManager.platformBubbleConstraints(for:deviceOrientation:)(v2, v3);
    }

    else
    {
      OUTLINED_FUNCTION_6_26(a1);
      OUTLINED_FUNCTION_3_35();
      v4 = CaptionsViewConstraintManager.platformTranscriptConstraints(for:deviceOrientation:)(v10, v11);
    }

    v1[26] = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA930;
    v6 = v1[17];
    v7 = v1[19];
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    v1[26] = v5;
    v8 = v6;
    v9 = v7;
  }
}

uint64_t CaptionsViewConstraintManager.platformTranscriptConstraints(for:deviceOrientation:)(uint64_t a1, uint64_t a2)
{
  v4 = static Platform.current.getter();
  if (v4 == 2)
  {

    return CaptionsViewConstraintManager.tvTranscriptConstraints(for:)(a1);
  }

  else
  {

    return CaptionsViewConstraintManager.defaultTranscriptConstraints(for:deviceOrientation:)(v4, a2);
  }
}

uint64_t CaptionsViewConstraintManager.tvTranscriptConstraints(for:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 18);
  v30 = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = Features.isICUIRedesignEnabled.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_4_23(inited, xmmword_1BC4BA7F0);
  if (v5)
  {
    v9 = v2[14];
    v7[3].n128_u64[0] = v9;
    v10 = v2[9];
    v7[3].n128_u64[1] = v10;
    v11 = v8;
    v12 = v5;
    v13 = v9;
    v14 = v10;
    OUTLINED_FUNCTION_9_19();
    v15 = v4 == 0;
    v16 = 104;
    v17 = 96;
  }

  else
  {
    v18 = v2[11];
    v7[3].n128_u64[0] = v18;
    v19 = v2[10];
    v7[3].n128_u64[1] = v19;
    v20 = v8;
    v21 = v5;
    v22 = v18;
    v23 = v19;
    OUTLINED_FUNCTION_9_19();
    v15 = v4 == 0;
    v16 = 128;
    v17 = 120;
  }

  if (!v15)
  {
    v16 = v17;
  }

  v24 = *(v2 + v16);
  MEMORY[0x1BFB20CC0]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  if (v3)
  {
    v25 = 20;
  }

  else
  {
    v25 = 24;
  }

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1BC4BAC30;
  v27 = v2[v25];
  *(v26 + 32) = v27;
  v28 = v27;
  OUTLINED_FUNCTION_9_19();
  return v30;
}

uint64_t CaptionsViewConstraintManager.defaultTranscriptConstraints(for:deviceOrientation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BE4A0;
    v6 = v3[17];
    v8 = v3[4];
    v7 = v3[5];
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    v9 = v3[20];
    *(v5 + 48) = v8;
    *(v5 + 56) = v9;
    v10 = v3[25];
    v11 = v3[8];
    *(v5 + 64) = v10;
    *(v5 + 72) = v11;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BAC30;
  v19 = v2[17];
  *(v18 + 32) = v19;
  v38 = v18;
  if ((a2 - 1) < 3)
  {
    v20 = 8;
    v21 = 4;
    v22 = 5;
LABEL_9:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA920;
    v24 = v2[v22];
    *(inited + 32) = v24;
    v25 = v3[v21];
    *(inited + 40) = v25;
    v26 = v3[20];
    *(inited + 48) = v26;
    v27 = v3[25];
    *(inited + 56) = v27;
    v28 = v3[v20];
    *(inited + 64) = v28;
    v29 = v19;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    specialized Array.append<A>(contentsOf:)(inited);
    return v38;
  }

  if (!a2)
  {
    v20 = 7;
    v21 = 6;
    v22 = 2;
    goto LABEL_9;
  }

  v36 = v19;
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_7_32();
  type metadata accessor for CNKDeviceOrientation(0);
  v37 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v37);

  result = OUTLINED_FUNCTION_8_32();
  __break(1u);
  return result;
}

uint64_t CaptionsViewConstraintManager.platformBubbleConstraints(for:deviceOrientation:)(uint64_t a1, uint64_t a2)
{
  if (static Platform.current.getter() == 2)
  {

    return CaptionsViewConstraintManager.tvBubbleConstraints(for:)(a1);
  }

  else
  {

    return CaptionsViewConstraintManager.defaultBubbleConstraints(for:deviceOrientation:)(a1, a2);
  }
}

uint64_t CaptionsViewConstraintManager.tvBubbleConstraints(for:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BAC30;
  v5 = *(v1 + 184);
  *(v4 + 32) = v5;
  v13 = v4;
  v6 = 176;
  if (!v2)
  {
    v6 = 168;
  }

  if (v3 == 128)
  {
    v7 = 160;
  }

  else
  {
    v7 = v6;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;
  v9 = *(v1 + v7);
  *(inited + 32) = v9;
  v10 = v5;
  v11 = v9;
  specialized Array.append<A>(contentsOf:)(inited);
  return v13;
}

uint64_t CaptionsViewConstraintManager.defaultBubbleConstraints(for:deviceOrientation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BC370;
    v7 = v3[17];
    v8 = v3[5];
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    v9 = v3[20];
    *(v6 + 48) = v9;
    v10 = v7;
    v11 = v8;
    v12 = v9;
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BAC30;
  v14 = *(v2 + 136);
  *(v13 + 32) = v14;
  v26 = v13;
  if ((a2 - 1) < 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA930;
    v16 = (v2 + 40);
LABEL_12:
    v17 = 20;
LABEL_13:
    v18 = *v16;
    *(inited + 32) = *v16;
    v19 = v3[v17];
    *(inited + 40) = v19;
    v20 = v14;
    v21 = v18;
    v22 = v19;
    OUTLINED_FUNCTION_9_19();
    return v26;
  }

  if (a2 == 3)
  {
    v16 = (v2 + 16);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA930;
    if (v5)
    {
      v17 = 22;
    }

    else
    {
      v17 = 21;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA930;
    v16 = (v2 + 16);
    goto LABEL_12;
  }

  v24 = v14;
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_7_32();
  type metadata accessor for CNKDeviceOrientation(0);
  v25 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v25);

  result = OUTLINED_FUNCTION_8_32();
  __break(1u);
  return result;
}

uint64_t CaptionsViewConstraintManager.__deallocating_deinit()
{
  CaptionsViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CaptionsViewConstraintManagerProtocol.init(containingGuide:rosterCellLayoutGuide:containingView:captionsView:bannerView:gridView:) in conformance CaptionsViewConstraintManager@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 304))();
  *a1 = result;
  return result;
}

uint64_t *Colors.InCallControls.tableViewCellTitleLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.tableViewCellTitleLabel;
}

uint64_t *Colors.InCallControls.collectionViewSectionHeaderTitleLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for collectionViewSectionHeaderTitleLabel != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.collectionViewSectionHeaderTitleLabel;
}

id one-time initialization function for separator()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.33 green:0.33 blue:0.35 alpha:1.0];
  static Colors.ShareView.separator = result;
  return result;
}

uint64_t *Colors.ShareView.separator.unsafeMutableAddressor()
{
  if (one-time initialization token for separator != -1)
  {
    swift_once();
  }

  return &static Colors.ShareView.separator;
}

id static Colors.ShareView.separator.getter()
{
  return static Colors.ShareView.separator.getter();
}

{
  OUTLINED_FUNCTION_19_7();
  if (!v1)
  {
    swift_once();
  }

  v2 = *v0;

  return v2;
}

id one-time initialization function for background()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  OUTLINED_FUNCTION_23_13();
  result = [v1 v2];
  static Colors.ParticipantViews.background = result;
  return result;
}

{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  OUTLINED_FUNCTION_23_13();
  result = [v1 v2];
  static Colors.InCallControls.background = result;
  return result;
}

{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.MultiwayViewController.background = result;
  return result;
}

uint64_t *Colors.ParticipantViews.background.unsafeMutableAddressor()
{
  if (one-time initialization token for background != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.background;
}

id one-time initialization function for titleLabel()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_6_27();
  result = [v2 v3];
  static Colors.ParticipantViews.titleLabel = result;
  return result;
}

uint64_t *Colors.ParticipantViews.titleLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for titleLabel != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.titleLabel;
}

id one-time initialization function for subtitleLabel()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  OUTLINED_FUNCTION_23_13();
  result = [v1 v2];
  static Colors.ParticipantViews.subtitleLabel = result;
  return result;
}

uint64_t *Colors.ParticipantViews.subtitleLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for subtitleLabel != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.subtitleLabel;
}

id one-time initialization function for alertText()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.ParticipantViews.alertText = result;
  return result;
}

uint64_t *Colors.ParticipantViews.alertText.unsafeMutableAddressor()
{
  if (one-time initialization token for alertText != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.alertText;
}

id one-time initialization function for bottomBarText()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_6_27();
  result = [v2 v3];
  static Colors.ParticipantViews.bottomBarText = result;
  return result;
}

uint64_t *Colors.ParticipantViews.bottomBarText.unsafeMutableAddressor()
{
  if (one-time initialization token for bottomBarText != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.bottomBarText;
}

id one-time initialization function for overlaySpinner()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  static Colors.ParticipantViews.overlaySpinner = result;
  return result;
}

uint64_t *Colors.ParticipantViews.overlaySpinner.unsafeMutableAddressor()
{
  if (one-time initialization token for overlaySpinner != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.overlaySpinner;
}

id one-time initialization function for overlayIcon()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
  static Colors.ParticipantViews.overlayIcon = result;
  return result;
}

uint64_t *Colors.ParticipantViews.overlayIcon.unsafeMutableAddressor()
{
  if (one-time initialization token for overlayIcon != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.overlayIcon;
}

id one-time initialization function for buttonIcon()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.ParticipantViews.buttonIcon = result;
  return result;
}

uint64_t *Colors.ParticipantViews.buttonIcon.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonIcon != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.buttonIcon;
}

id one-time initialization function for border()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  static Colors.ParticipantViews.border = result;
  return result;
}

uint64_t *Colors.ParticipantViews.border.unsafeMutableAddressor()
{
  if (one-time initialization token for border != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.border;
}

id one-time initialization function for bottomGradient()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA930;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.5];
  *(v0 + 40) = result;
  static Colors.ParticipantViews.bottomGradient = v0;
  return result;
}

uint64_t *Colors.ParticipantViews.bottomGradient.unsafeMutableAddressor()
{
  if (one-time initialization token for bottomGradient != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.bottomGradient;
}

uint64_t static Colors.ParticipantViews.bottomGradient.getter()
{
  return static Colors.ParticipantViews.bottomGradient.getter();
}

{
  OUTLINED_FUNCTION_19_7();
  if (!v0)
  {
    swift_once();
  }
}

id one-time initialization function for bottomShadow()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.5];
  static Colors.ParticipantViews.bottomShadow = result;
  return result;
}

uint64_t *Colors.ParticipantViews.bottomShadow.unsafeMutableAddressor()
{
  if (one-time initialization token for bottomShadow != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.bottomShadow;
}

id one-time initialization function for shutterButtonEnabled()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_6_27();
  result = [v2 v3];
  static Colors.ParticipantViews.shutterButtonEnabled = result;
  return result;
}

uint64_t *Colors.ParticipantViews.shutterButtonEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for shutterButtonEnabled != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.shutterButtonEnabled;
}

id one-time initialization function for shutterButtonDisabled()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_6_27();
  result = [v2 v3];
  static Colors.ParticipantViews.shutterButtonDisabled = result;
  return result;
}

uint64_t *Colors.ParticipantViews.shutterButtonDisabled.unsafeMutableAddressor()
{
  if (one-time initialization token for shutterButtonDisabled != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.shutterButtonDisabled;
}

id one-time initialization function for ringButtonColor()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  OUTLINED_FUNCTION_23_13();
  result = [v1 v2];
  static Colors.ParticipantViews.ringButtonColor = result;
  return result;
}

uint64_t *Colors.ParticipantViews.ringButtonColor.unsafeMutableAddressor()
{
  if (one-time initialization token for ringButtonColor != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.ringButtonColor;
}

id one-time initialization function for shadow()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.ParticipantViews.shadow = result;
  return result;
}

{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.LocalParticipantView.shadow = result;
  return result;
}

uint64_t *Colors.ParticipantViews.shadow.unsafeMutableAddressor()
{
  if (one-time initialization token for shadow != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.shadow;
}

void *Colors.ParticipantViews.screenShareNameLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for screenShareNameLabel != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.screenShareNameLabel;
}

void *Colors.ParticipantViews.screenShareInfoViewButton.unsafeMutableAddressor()
{
  if (one-time initialization token for screenShareInfoViewButton != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.screenShareInfoViewButton;
}

id one-time initialization function for contactMonogram()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.ParticipantViews.contactMonogram = result;
  return result;
}

uint64_t *Colors.ParticipantViews.contactMonogram.unsafeMutableAddressor()
{
  if (one-time initialization token for contactMonogram != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.contactMonogram;
}

id one-time initialization function for contactMonogramIcon()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.ParticipantViews.contactMonogramIcon = result;
  return result;
}

uint64_t *Colors.ParticipantViews.contactMonogramIcon.unsafeMutableAddressor()
{
  if (one-time initialization token for contactMonogramIcon != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.contactMonogramIcon;
}

id one-time initialization function for overlayContent()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.75];
  static Colors.ParticipantViews.overlayContent = result;
  return result;
}

uint64_t *Colors.ParticipantViews.overlayContent.unsafeMutableAddressor()
{
  if (one-time initialization token for overlayContent != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.overlayContent;
}

uint64_t one-time initialization function for expandButton()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit21ParticipantViewButtonC13ElementColorsVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BB990);
  OUTLINED_FUNCTION_16_21(objc_allocWithZone(MEMORY[0x1E69DC888]));
  OUTLINED_FUNCTION_35_4();
  v2 = OUTLINED_FUNCTION_10_13();
  v5 = [v3 v4];
  inited[2].n128_u64[1] = v0;
  inited[3].n128_u64[0] = 0x3FECCCCCCCCCCCCDLL;
  inited[3].n128_u64[1] = v5;
  inited[4].n128_u64[0] = 0x3FED70A3D70A3D71;
  inited[4].n128_u64[1] = 1;
  OUTLINED_FUNCTION_16_21(objc_allocWithZone(MEMORY[0x1E69DC888]));
  OUTLINED_FUNCTION_35_4();
  v6 = OUTLINED_FUNCTION_10_13();
  v9 = [v7 v8];
  inited[5].n128_u64[0] = v0;
  inited[5].n128_u64[1] = 0x3FECCCCCCCCCCCCDLL;
  inited[6].n128_u64[0] = v9;
  inited[6].n128_u64[1] = 0x3FED70A3D70A3D71;
  inited[7].n128_u64[0] = 4;
  OUTLINED_FUNCTION_16_21(objc_allocWithZone(MEMORY[0x1E69DC888]));
  OUTLINED_FUNCTION_35_4();
  v10 = OUTLINED_FUNCTION_10_13();
  v13 = [v11 v12];
  inited[7].n128_u64[1] = v0;
  inited[8].n128_u64[0] = 0x3FECCCCCCCCCCCCDLL;
  inited[8].n128_u64[1] = v13;
  inited[9].n128_u64[0] = 0x3FED70A3D70A3D71;
  inited[9].n128_u64[1] = 2;
  OUTLINED_FUNCTION_16_21(objc_allocWithZone(MEMORY[0x1E69DC888]));
  OUTLINED_FUNCTION_35_4();
  v14 = OUTLINED_FUNCTION_10_13();
  v17 = [v15 v16];
  inited[10].n128_u64[0] = v0;
  inited[10].n128_u64[1] = 0x3FECCCCCCCCCCCCDLL;
  inited[11].n128_u64[0] = v17;
  inited[11].n128_u64[1] = 0x3FED70A3D70A3D71;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = OUTLINED_FUNCTION_25_11();
  static Colors.ParticipantViews.expandButton = result;
  return result;
}

uint64_t *Colors.ParticipantViews.expandButton.unsafeMutableAddressor()
{
  if (one-time initialization token for expandButton != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantViews.expandButton;
}

uint64_t *Colors.MostActiveParticipantView.background.unsafeMutableAddressor()
{
  if (one-time initialization token for background != -1)
  {
    swift_once();
  }

  return &static Colors.MostActiveParticipantView.background;
}

id one-time initialization function for unfocusedOverlay()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_3_36();
  result = [v2 v3];
  static Colors.ParticipantGridView.unfocusedOverlay = result;
  return result;
}

uint64_t *Colors.ParticipantGridView.unfocusedOverlay.unsafeMutableAddressor()
{
  if (one-time initialization token for unfocusedOverlay != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantGridView.unfocusedOverlay;
}

uint64_t *Colors.LocalParticipantView.shadow.unsafeMutableAddressor()
{
  if (one-time initialization token for shadow != -1)
  {
    swift_once();
  }

  return &static Colors.LocalParticipantView.shadow;
}

uint64_t *Colors.InCallControls.background.unsafeMutableAddressor()
{
  if (one-time initialization token for background != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.background;
}

id one-time initialization function for flatHotdog()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v1 = OUTLINED_FUNCTION_6_27();
  result = [v2 v3];
  static Colors.InCallControls.flatHotdog = result;
  return result;
}

uint64_t *Colors.InCallControls.flatHotdog.unsafeMutableAddressor()
{
  if (one-time initialization token for flatHotdog != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.flatHotdog;
}

uint64_t *Colors.InCallControls.tableViewBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for tableViewBackground != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.tableViewBackground;
}

id one-time initialization function for actionButton()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  static Colors.InCallControls.actionButton = result;
  return result;
}

uint64_t *Colors.InCallControls.actionButton.unsafeMutableAddressor()
{
  if (one-time initialization token for actionButton != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.actionButton;
}

id one-time initialization function for actionButtonDisabled()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:0.698039216 blue:0.698039216 alpha:1.0];
  static Colors.InCallControls.actionButtonDisabled = result;
  return result;
}

uint64_t *Colors.InCallControls.actionButtonDisabled.unsafeMutableAddressor()
{
  if (one-time initialization token for actionButtonDisabled != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.actionButtonDisabled;
}

uint64_t *Colors.InCallControls.backgroundBlurEffect.unsafeMutableAddressor()
{
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  return &static Colors.InCallControls.backgroundBlurEffect;
}

id one-time initialization function for backgroundBlurEffect(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle_];
  *a3 = result;
  return result;
}

uint64_t *Colors.InCallControls.localCameraControlsBlurEffect.unsafeMutableAddressor()
{
  if (one-time initialization token for localCameraControlsBlurEffect != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.localCameraControlsBlurEffect;
}

uint64_t one-time initialization function for button()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BB990);
  objc_opt_self();
  OUTLINED_FUNCTION_22_11();
  v4 = [v2 v3];
  v5 = OUTLINED_FUNCTION_11_17();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v6 = static Colors.InCallControls.backgroundBlurEffect;
  objc_opt_self();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_12_16();
  v10 = [v8 v9];
  v11 = OUTLINED_FUNCTION_11_17();
  v12 = OUTLINED_FUNCTION_7_33();
  v13 = OUTLINED_FUNCTION_34_7(objc_allocWithZone(MEMORY[0x1E69DC888]), sel_initWithWhite_alpha_);
  OUTLINED_FUNCTION_2_42(v13);
  v14 = OUTLINED_FUNCTION_11_17();
  v15 = [v14 colorWithAlphaComponent_];

  v16 = OUTLINED_FUNCTION_11_17();
  v17 = [v16 &selRef:0.6 initWithNameComponents:? handle:?];

  v18 = static Colors.InCallControls.backgroundBlurEffect;
  v19 = OUTLINED_FUNCTION_12_16();
  v21 = [v19 v20];
  v22 = OUTLINED_FUNCTION_11_17();
  v23 = OUTLINED_FUNCTION_7_33();
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.3];
  OUTLINED_FUNCTION_30_6();
  *(inited + 152) = v0;
  *(inited + 160) = v23;
  *(inited + 168) = v24;
  *(inited + 176) = 4;
  v25 = OUTLINED_FUNCTION_11_17();
  v26 = OUTLINED_FUNCTION_17_16();
  v27 = OUTLINED_FUNCTION_11_17();
  v28 = OUTLINED_FUNCTION_17_16();
  v29 = OUTLINED_FUNCTION_17_16();
  v30 = OUTLINED_FUNCTION_7_33();
  *(inited + 184) = v25;
  *(inited + 192) = v26;
  *(inited + 200) = v27;
  *(inited + 208) = 0;
  *(inited + 216) = 0;
  *(inited + 224) = v28;
  *(inited + 232) = 0x1E7FEA000;
  *(inited + 240) = v30;
  *(inited + 248) = 2;
  v31 = OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_18_19();
  v34 = [v32 v33];

  v35 = OUTLINED_FUNCTION_11_17();
  v36 = OUTLINED_FUNCTION_26_11(v35);

  v37 = static Colors.InCallControls.backgroundBlurEffect;
  v38 = OUTLINED_FUNCTION_12_16();
  v40 = [v38 v39];
  v41 = OUTLINED_FUNCTION_11_17();
  v42 = OUTLINED_FUNCTION_26_11(v41);

  v43 = OUTLINED_FUNCTION_11_17();
  v44 = OUTLINED_FUNCTION_26_11(v43);

  OUTLINED_FUNCTION_34_7(objc_allocWithZone(MEMORY[0x1E69DC888]), sel_initWithWhite_alpha_);
  *(inited + 256) = v34;
  *(inited + 264) = v36;
  *(inited + 272) = v37;
  *(inited + 280) = v40;
  *(inited + 288) = 1;
  OUTLINED_FUNCTION_5_21((inited + 289));
  *(inited + 296) = v42;
  *(inited + 304) = v44;
  *(inited + 312) = v45;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = OUTLINED_FUNCTION_25_11();
  static Colors.InCallControls.button = result;
  return result;
}

uint64_t *Colors.InCallControls.button.unsafeMutableAddressor()
{
  if (one-time initialization token for button != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.button;
}

uint64_t one-time initialization function for brickButton()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BB990);
  objc_opt_self();
  OUTLINED_FUNCTION_22_11();
  v3 = [v1 v2];
  v4 = OUTLINED_FUNCTION_11_17();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v5 = static Colors.InCallControls.backgroundBlurEffect;
  v37 = objc_opt_self();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_12_16();
  v9 = [v7 v8];
  v10 = OUTLINED_FUNCTION_11_17();
  v11 = OUTLINED_FUNCTION_7_33();
  v12 = OUTLINED_FUNCTION_34_7(objc_allocWithZone(MEMORY[0x1E69DC888]), sel_initWithWhite_alpha_);
  OUTLINED_FUNCTION_2_42(v12);
  v13 = OUTLINED_FUNCTION_11_17();
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.85];
  v15 = OUTLINED_FUNCTION_11_17();
  v16 = OUTLINED_FUNCTION_11_17();
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.85];
  v17 = OUTLINED_FUNCTION_7_33();
  *(inited + 112) = v13;
  *(inited + 120) = v14;
  *(inited + 128) = v15;
  *(inited + 136) = 0;
  *(inited + 144) = 0;
  *(inited + 152) = v16;
  *(inited + 160) = &selRef_isRecordingAllowed;
  *(inited + 168) = v17;
  *(inited + 176) = 4;
  v18 = OUTLINED_FUNCTION_11_17();
  v19 = OUTLINED_FUNCTION_27_8(objc_allocWithZone(MEMORY[0x1E69DC888]));
  v20 = OUTLINED_FUNCTION_11_17();
  v21 = OUTLINED_FUNCTION_27_8(objc_allocWithZone(MEMORY[0x1E69DC888]));
  OUTLINED_FUNCTION_27_8(objc_allocWithZone(MEMORY[0x1E69DC888]));
  v22 = OUTLINED_FUNCTION_7_33();
  *(inited + 184) = v18;
  *(inited + 192) = v19;
  *(inited + 200) = v20;
  *(inited + 208) = 0;
  *(inited + 216) = 0;
  *(inited + 224) = v21;
  *(inited + 232) = &selRef_isRecordingAllowed;
  *(inited + 240) = v22;
  *(inited + 248) = 2;
  v23 = OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_18_19();
  v26 = [v24 v25];

  v27 = OUTLINED_FUNCTION_11_17();
  v28 = OUTLINED_FUNCTION_26_11(v27);

  v29 = static Colors.InCallControls.backgroundBlurEffect;
  v30 = [v37 _effectForBlurEffect_vibrancyStyle_];
  v31 = OUTLINED_FUNCTION_11_17();
  v32 = OUTLINED_FUNCTION_26_11(v31);

  v33 = OUTLINED_FUNCTION_11_17();
  v34 = OUTLINED_FUNCTION_26_11(v33);

  OUTLINED_FUNCTION_34_7(objc_allocWithZone(MEMORY[0x1E69DC888]), sel_initWithWhite_alpha_);
  *(inited + 256) = v26;
  *(inited + 264) = v28;
  *(inited + 272) = v29;
  *(inited + 280) = v30;
  *(inited + 288) = 1;
  OUTLINED_FUNCTION_5_21((inited + 289));
  *(inited + 296) = v32;
  *(inited + 304) = v34;
  *(inited + 312) = v35;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = OUTLINED_FUNCTION_25_11();
  static Colors.InCallControls.brickButton = result;
  return result;
}

uint64_t *Colors.InCallControls.brickButton.unsafeMutableAddressor()
{
  if (one-time initialization token for brickButton != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.brickButton;
}

uint64_t one-time initialization function for conversationControls()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BE790);
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  v3 = OUTLINED_FUNCTION_32_4();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v4 = static Colors.InCallControls.backgroundBlurEffect;
  v48 = objc_opt_self();
  v5 = [v48 _effectForBlurEffect_vibrancyStyle_];
  v6 = OUTLINED_FUNCTION_32_4();
  v7 = OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_2_42([v1 secondarySystemFillColor]);
  v8 = OUTLINED_FUNCTION_29_10();
  v9 = [v8 colorWithAlphaComponent_];

  v10 = OUTLINED_FUNCTION_29_10();
  v11 = [v10 &selRef:0.75 initWithNameComponents:? handle:?];

  v12 = [v48 _effectForBlurEffect_vibrancyStyle_];
  v13 = OUTLINED_FUNCTION_29_10();
  v14 = OUTLINED_FUNCTION_24_12(v13);

  v15 = OUTLINED_FUNCTION_29_10();
  v16 = [v15 &selRef:0.75 initWithNameComponents:? handle:?];

  v17 = [v1 secondarySystemFillColor];
  v18 = [v17 &selRef:0.75 initWithNameComponents:? handle:?];

  OUTLINED_FUNCTION_30_6();
  *(inited + 152) = v14;
  *(inited + 160) = v16;
  *(inited + 168) = v18;
  *(inited + 176) = 4;
  v19 = OUTLINED_FUNCTION_17_16();
  v20 = OUTLINED_FUNCTION_17_16();
  v21 = [v1 whiteColor];
  v22 = OUTLINED_FUNCTION_17_16();
  v23 = OUTLINED_FUNCTION_17_16();
  v24 = [v1 whiteColor];
  *(inited + 184) = v19;
  *(inited + 192) = v20;
  OUTLINED_FUNCTION_21_11(v24);
  v25 = OUTLINED_FUNCTION_17_16();
  v47 = OUTLINED_FUNCTION_14_11(v25);

  v26 = OUTLINED_FUNCTION_17_16();
  v27 = OUTLINED_FUNCTION_9_20(v26);

  v28 = OUTLINED_FUNCTION_9_20([v1 labelColor]);
  v29 = OUTLINED_FUNCTION_17_16();
  v30 = OUTLINED_FUNCTION_9_20(v29);

  v31 = OUTLINED_FUNCTION_17_16();
  v32 = OUTLINED_FUNCTION_9_20(v31);

  v33 = OUTLINED_FUNCTION_9_20([v1 labelColor]);
  *(inited + 256) = v47;
  *(inited + 264) = v27;
  *(inited + 272) = v28;
  *(inited + 280) = 0;
  *(inited + 288) = 0;
  OUTLINED_FUNCTION_5_21((inited + 289));
  *(inited + 296) = v30;
  *(inited + 304) = v32;
  *(inited + 312) = v33;
  *(inited + 320) = 2;
  v34 = [v1 labelColor];
  v35 = [v34 colorWithAlphaComponent_];

  v36 = [v1 labelColor];
  v37 = OUTLINED_FUNCTION_31_7(v36);

  v38 = static Colors.InCallControls.backgroundBlurEffect;
  v39 = [v48 _effectForBlurEffect_vibrancyStyle_];
  v40 = [v1 labelColor];
  v41 = OUTLINED_FUNCTION_31_7(v40);

  v42 = [v1 labelColor];
  v43 = OUTLINED_FUNCTION_31_7(v42);

  v44 = [v1 secondarySystemFillColor];
  v45 = OUTLINED_FUNCTION_31_7(v44);

  *(inited + 328) = v35;
  *(inited + 336) = v37;
  *(inited + 344) = v38;
  *(inited + 352) = v39;
  *(inited + 360) = 1;
  *(inited + 361) = *v49;
  *(inited + 364) = *&v49[3];
  *(inited + 368) = v41;
  *(inited + 376) = v43;
  *(inited + 384) = v45;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = OUTLINED_FUNCTION_25_11();
  static Colors.InCallControls.conversationControls = result;
  return result;
}

{
  return OUTLINED_FUNCTION_1_148();
}

{
  OUTLINED_FUNCTION_5_121();
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, v0);
  __swift_project_value_buffer(v1, v0);
  OUTLINED_FUNCTION_4_126();
  return Logger.init(subsystem:category:)();
}

uint64_t *Colors.InCallControls.conversationControls.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.conversationControls;
}

uint64_t one-time initialization function for joinButton(uint64_t a1)
{
  return one-time initialization function for joinButton(a1, &selRef_systemGreenColor, &static Colors.InCallControls.joinButton);
}

{
  return one-time initialization function for audioMuteMac(a1, static ImageResource.joinButton, 0x7475622D6E696F6ALL, 0xEB000000006E6F74);
}

id static UIColor.joinConversation.getter()
{
  v0 = [objc_opt_self() systemGreenColor];

  return v0;
}

uint64_t *Colors.InCallControls.joinButton.unsafeMutableAddressor()
{
  if (one-time initialization token for joinButton != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.joinButton;
}

uint64_t one-time initialization function for joinButton(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BAA20);
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v5 whiteColor];
  v8 = OUTLINED_FUNCTION_33_10();
  v9 = [v5 whiteColor];
  v10 = [v5 whiteColor];
  v11 = OUTLINED_FUNCTION_33_10();
  inited[2].n128_u64[1] = v6;
  inited[3].n128_u64[0] = v7;
  inited[3].n128_u64[1] = v8;
  inited[4].n128_u64[0] = 0;
  inited[4].n128_u8[8] = 0;
  inited[5].n128_u64[0] = v9;
  inited[5].n128_u64[1] = v10;
  inited[6].n128_u64[0] = v11;
  inited[6].n128_u64[1] = 1;
  OUTLINED_FUNCTION_22_11();
  v13 = [v5 v12];
  v14 = OUTLINED_FUNCTION_15_9(v13);

  v15 = [v5 *(v3 + 288)];
  v16 = OUTLINED_FUNCTION_15_9(v15);

  v17 = OUTLINED_FUNCTION_33_10();
  v18 = OUTLINED_FUNCTION_15_9(v17);

  v19 = [v5 *(v3 + 288)];
  v20 = OUTLINED_FUNCTION_15_9(v19);

  v21 = [v5 *(v3 + 288)];
  v22 = OUTLINED_FUNCTION_15_9(v21);

  v23 = OUTLINED_FUNCTION_33_10();
  v24 = OUTLINED_FUNCTION_15_9(v23);

  inited[7].n128_u64[0] = v14;
  inited[7].n128_u64[1] = v16;
  inited[8].n128_u64[0] = v18;
  inited[8].n128_u64[1] = 0;
  inited[9].n128_u8[0] = 0;
  inited[9].n128_u64[1] = v20;
  inited[10].n128_u64[0] = v22;
  inited[10].n128_u64[1] = v24;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = Dictionary.init(dictionaryLiteral:)();
  *a3 = result;
  return result;
}

id static UIColor.leaveConversation.getter()
{
  v0 = [objc_opt_self() systemRedColor];

  return v0;
}

uint64_t *Colors.InCallControls.leaveButton.unsafeMutableAddressor()
{
  if (one-time initialization token for leaveButton != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.leaveButton;
}

uint64_t one-time initialization function for viewLMIRequestsButton()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BA940);
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v1 blackColor];
  v4 = [v1 whiteColor];
  v5 = [v1 blackColor];
  v6 = [v1 blackColor];
  v7 = [v1 whiteColor];
  inited[2].n128_u64[1] = v2;
  inited[3].n128_u64[0] = v3;
  inited[3].n128_u64[1] = v4;
  inited[4].n128_u64[0] = 0;
  inited[4].n128_u8[8] = 0;
  inited[5].n128_u64[0] = v5;
  inited[5].n128_u64[1] = v6;
  inited[6].n128_u64[0] = v7;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = OUTLINED_FUNCTION_25_11();
  static Colors.InCallControls.viewLMIRequestsButton = result;
  return result;
}

uint64_t *Colors.InCallControls.viewLMIRequestsButton.unsafeMutableAddressor()
{
  if (one-time initialization token for viewLMIRequestsButton != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.viewLMIRequestsButton;
}

uint64_t one-time initialization function for localCameraControls()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BB990);
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  v3 = OUTLINED_FUNCTION_32_4();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v4 = static Colors.InCallControls.backgroundBlurEffect;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = OUTLINED_FUNCTION_12_16();
  v9 = [v7 v8];
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 56) = v6;
  *(inited + 64) = v9;
  *(inited + 72) = 1;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  v10 = OUTLINED_FUNCTION_32_4();
  v11 = OUTLINED_FUNCTION_24_12(v10);

  v12 = [v1 labelColor];
  v13 = OUTLINED_FUNCTION_24_12(v12);

  v14 = static Colors.InCallControls.backgroundBlurEffect;
  v15 = [v5 _effectForBlurEffect_vibrancyStyle_];
  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 128) = v14;
  *(inited + 136) = v15;
  *(inited + 144) = 1;
  *(inited + 152) = 0;
  *(inited + 160) = 0;
  *(inited + 168) = 0;
  *(inited + 176) = 4;
  v16 = OUTLINED_FUNCTION_20_13();
  v17 = OUTLINED_FUNCTION_20_13();
  v18 = OUTLINED_FUNCTION_11_17();
  v19 = OUTLINED_FUNCTION_20_13();
  v20 = OUTLINED_FUNCTION_20_13();
  v21 = OUTLINED_FUNCTION_11_17();
  *(inited + 184) = v16;
  *(inited + 192) = v17;
  OUTLINED_FUNCTION_21_11(v21);
  v22 = OUTLINED_FUNCTION_20_13();
  v23 = OUTLINED_FUNCTION_24_12(v22);

  v24 = OUTLINED_FUNCTION_20_13();
  v25 = OUTLINED_FUNCTION_24_12(v24);

  v26 = OUTLINED_FUNCTION_11_17();
  v27 = OUTLINED_FUNCTION_20_13();
  v28 = OUTLINED_FUNCTION_24_12(v27);

  v29 = OUTLINED_FUNCTION_20_13();
  v30 = OUTLINED_FUNCTION_24_12(v29);

  v31 = OUTLINED_FUNCTION_11_17();
  *(inited + 256) = v23;
  *(inited + 264) = v25;
  *(inited + 272) = v26;
  *(inited + 280) = 0;
  *(inited + 288) = 0;
  OUTLINED_FUNCTION_5_21((inited + 289));
  *(inited + 296) = v28;
  *(inited + 304) = v30;
  *(inited + 312) = v32;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = OUTLINED_FUNCTION_25_11();
  static Colors.InCallControls.localCameraControls = result;
  return result;
}

uint64_t *Colors.InCallControls.localCameraControls.unsafeMutableAddressor()
{
  if (one-time initialization token for localCameraControls != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.localCameraControls;
}

uint64_t one-time initialization function for localCameraCollapseControls()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 0;
  v1 = objc_opt_self();
  v2 = [v1 secondarySystemBackgroundColor];
  v3 = [v1 secondarySystemBackgroundColor];
  if (one-time initialization token for localCameraControlsBlurEffect != -1)
  {
    swift_once();
  }

  v4 = static Colors.InCallControls.localCameraControlsBlurEffect;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 _effectForBlurEffect_vibrancyStyle_];
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = 1;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  v8 = [v1 secondarySystemBackgroundColor];
  v9 = [v8 colorWithAlphaComponent_];

  v10 = [v1 secondarySystemBackgroundColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = static Colors.InCallControls.localCameraControlsBlurEffect;
  v13 = [v5 _effectForBlurEffect_vibrancyStyle_];
  *(inited + 112) = v9;
  *(inited + 120) = v11;
  *(inited + 128) = v12;
  *(inited + 136) = v13;
  *(inited + 144) = 1;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  *(inited + 160) = 0;
  *(inited + 168) = 0;
  *(inited + 152) = 0;
  result = Dictionary.init(dictionaryLiteral:)();
  static Colors.InCallControls.localCameraCollapseControls = result;
  return result;
}

uint64_t *Colors.InCallControls.localCameraCollapseControls.unsafeMutableAddressor()
{
  if (one-time initialization token for localCameraCollapseControls != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.localCameraCollapseControls;
}

uint64_t *Colors.InCallControls.pttLeaveButtonBanner.unsafeMutableAddressor()
{
  if (one-time initialization token for pttLeaveButtonBanner != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.pttLeaveButtonBanner;
}

uint64_t *Colors.InCallControls.pttLeaveButtonFullScreen.unsafeMutableAddressor()
{
  if (one-time initialization token for pttLeaveButtonFullScreen != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.pttLeaveButtonFullScreen;
}

uint64_t *Colors.InCallControls.pttTalkButtonBanner.unsafeMutableAddressor()
{
  if (one-time initialization token for pttTalkButtonBanner != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.pttTalkButtonBanner;
}

uint64_t one-time initialization function for pttLeaveButtonFullScreen(uint64_t a1, SEL *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BB980);
  v5 = objc_opt_self();
  v6 = [v5 *a2];
  v7 = OUTLINED_FUNCTION_13_22();
  v8 = OUTLINED_FUNCTION_28_13();
  v9 = OUTLINED_FUNCTION_13_22();
  inited[2].n128_u64[1] = v6;
  inited[3].n128_u64[0] = 0;
  inited[3].n128_u8[8] = 64;
  inited[4].n128_u64[0] = v7;
  inited[4].n128_u64[1] = v8;
  inited[5].n128_u64[0] = 0;
  inited[5].n128_u8[8] = 64;
  inited[6].n128_u64[0] = v9;
  inited[6].n128_u64[1] = 1;
  v10 = OUTLINED_FUNCTION_28_13();
  v11 = OUTLINED_FUNCTION_15_9(v10);

  v12 = OUTLINED_FUNCTION_13_22();
  v13 = OUTLINED_FUNCTION_15_9(v12);

  v14 = OUTLINED_FUNCTION_28_13();
  v15 = OUTLINED_FUNCTION_15_9(v14);

  v16 = OUTLINED_FUNCTION_13_22();
  v17 = OUTLINED_FUNCTION_15_9(v16);

  inited[7].n128_u64[0] = v11;
  inited[7].n128_u64[1] = 0;
  inited[8].n128_u8[0] = 64;
  inited[8].n128_u64[1] = v13;
  inited[9].n128_u64[0] = v15;
  inited[9].n128_u64[1] = 0;
  inited[10].n128_u8[0] = 64;
  inited[10].n128_u64[1] = v17;
  inited[11].n128_u64[0] = 2;
  v18 = [v5 darkGrayColor];
  v19 = [v18 colorWithAlphaComponent_];

  v20 = OUTLINED_FUNCTION_13_22();
  v21 = OUTLINED_FUNCTION_15_9(v20);

  v22 = [v5 darkGrayColor];
  v23 = [v22 colorWithAlphaComponent_];

  v24 = OUTLINED_FUNCTION_13_22();
  v25 = OUTLINED_FUNCTION_15_9(v24);

  inited[11].n128_u64[1] = v19;
  inited[12].n128_u64[0] = 0;
  inited[12].n128_u8[8] = 64;
  inited[13].n128_u64[0] = v21;
  inited[13].n128_u64[1] = v23;
  inited[14].n128_u64[0] = 0;
  inited[14].n128_u8[8] = 64;
  inited[15].n128_u64[0] = v25;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = Dictionary.init(dictionaryLiteral:)();
  *a3 = result;
  return result;
}

uint64_t *Colors.InCallControls.pttTalkButtonFullScreen.unsafeMutableAddressor()
{
  if (one-time initialization token for pttTalkButtonFullScreen != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.pttTalkButtonFullScreen;
}

uint64_t one-time initialization function for avLessButton()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 0;
  v1 = objc_opt_self();
  v2 = [v1 secondarySystemFillColor];
  v3 = [v1 labelColor];
  v4 = [v1 secondarySystemFillColor];
  v5 = [v1 labelColor];
  *(inited + 40) = v2;
  *(inited + 48) = 0;
  *(inited + 56) = 64;
  *(inited + 64) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0;
  *(inited + 88) = 64;
  *(inited + 96) = v5;
  *(inited + 104) = 1;
  v6 = [v1 secondarySystemFillColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v1 labelColor];
  v9 = [v1 secondarySystemFillColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v1 labelColor];
  *(inited + 112) = v7;
  *(inited + 120) = 0;
  *(inited + 128) = 64;
  *(inited + 136) = v8;
  *(inited + 144) = v10;
  *(inited + 152) = 0;
  *(inited + 160) = 64;
  *(inited + 168) = v11;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = Dictionary.init(dictionaryLiteral:)();
  static Colors.InCallControls.avLessButton = result;
  return result;
}

uint64_t *Colors.InCallControls.avLessButton.unsafeMutableAddressor()
{
  if (one-time initialization token for avLessButton != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.avLessButton;
}

uint64_t *Colors.InCallControls.greenTea3PDeclineButtonBanner.unsafeMutableAddressor()
{
  if (one-time initialization token for greenTea3PDeclineButtonBanner != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.greenTea3PDeclineButtonBanner;
}

uint64_t one-time initialization function for pttLeaveButtonBanner(uint64_t a1, SEL *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BB980);
  v5 = objc_opt_self();
  v6 = [v5 *a2];
  v7 = OUTLINED_FUNCTION_13_22();
  v8 = OUTLINED_FUNCTION_28_13();
  v9 = OUTLINED_FUNCTION_13_22();
  inited[2].n128_u64[1] = v6;
  inited[3].n128_u64[0] = 0;
  inited[3].n128_u8[8] = 64;
  inited[4].n128_u64[0] = v7;
  inited[4].n128_u64[1] = v8;
  inited[5].n128_u64[0] = 0;
  inited[5].n128_u8[8] = 64;
  inited[6].n128_u64[0] = v9;
  inited[6].n128_u64[1] = 1;
  v10 = OUTLINED_FUNCTION_28_13();
  v11 = OUTLINED_FUNCTION_14_11(v10);

  v12 = OUTLINED_FUNCTION_13_22();
  v13 = OUTLINED_FUNCTION_14_11(v12);

  v14 = OUTLINED_FUNCTION_28_13();
  v15 = OUTLINED_FUNCTION_14_11(v14);

  v16 = OUTLINED_FUNCTION_13_22();
  v17 = OUTLINED_FUNCTION_14_11(v16);

  inited[7].n128_u64[0] = v11;
  inited[7].n128_u64[1] = 0;
  inited[8].n128_u8[0] = 64;
  inited[8].n128_u64[1] = v13;
  inited[9].n128_u64[0] = v15;
  inited[9].n128_u64[1] = 0;
  inited[10].n128_u8[0] = 64;
  inited[10].n128_u64[1] = v17;
  inited[11].n128_u64[0] = 2;
  v18 = OUTLINED_FUNCTION_13_22();
  v19 = OUTLINED_FUNCTION_14_11(v18);

  v20 = OUTLINED_FUNCTION_13_22();
  v21 = OUTLINED_FUNCTION_9_20(v20);

  inited[11].n128_u64[1] = 0;
  inited[12].n128_u64[0] = 0;
  inited[12].n128_u8[8] = 3;
  inited[13].n128_u64[1] = 0;
  inited[14].n128_u64[0] = 0;
  inited[13].n128_u64[0] = v19;
  inited[14].n128_u8[8] = 3;
  inited[15].n128_u64[0] = v21;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = Dictionary.init(dictionaryLiteral:)();
  *a3 = result;
  return result;
}

uint64_t *Colors.InCallControls.greenTea3PAcceptButtonBanner.unsafeMutableAddressor()
{
  if (one-time initialization token for greenTea3PAcceptButtonBanner != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.greenTea3PAcceptButtonBanner;
}

uint64_t one-time initialization function for greenTea3PResumeButton()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit32InCallControlButtonConfigurationVtGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_8_33(inited, xmmword_1BC4BAA20);
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_22_11();
  v4 = [v2 v3];
  v5 = OUTLINED_FUNCTION_11_17();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v6 = static Colors.InCallControls.backgroundBlurEffect;
  objc_opt_self();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_12_16();
  v10 = [v8 v9];
  v11 = OUTLINED_FUNCTION_11_17();
  v12 = OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_2_42([v1 secondarySystemFillColor]);
  v13 = OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_18_19();
  v16 = [v14 v15];

  v17 = OUTLINED_FUNCTION_11_17();
  v18 = [v17 v12 + 376];

  v19 = static Colors.InCallControls.backgroundBlurEffect;
  v20 = OUTLINED_FUNCTION_12_16();
  v22 = [v20 v21];
  v23 = OUTLINED_FUNCTION_11_17();
  v24 = [v23 v12 + 376];

  v25 = OUTLINED_FUNCTION_11_17();
  v26 = [v25 v12 + 376];

  v27 = [v1 systemFillColor];
  inited[7].n128_u64[0] = v16;
  inited[7].n128_u64[1] = v18;
  inited[8].n128_u64[0] = v19;
  inited[8].n128_u64[1] = v22;
  inited[9].n128_u8[0] = 1;
  inited[9].n128_u64[1] = v24;
  inited[10].n128_u64[0] = v26;
  inited[10].n128_u64[1] = v27;
  type metadata accessor for UIControlState(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState();
  result = OUTLINED_FUNCTION_25_11();
  static Colors.InCallControls.greenTea3PResumeButton = result;
  return result;
}

uint64_t *Colors.InCallControls.greenTea3PResumeButton.unsafeMutableAddressor()
{
  if (one-time initialization token for greenTea3PResumeButton != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.greenTea3PResumeButton;
}

uint64_t *Colors.InCallControls.tableViewCellSubtitleLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for tableViewCellSubtitleLabel != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.tableViewCellSubtitleLabel;
}

uint64_t *Colors.InCallControls.tableViewHeaderTitleLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for tableViewHeaderTitleLabel != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.tableViewHeaderTitleLabel;
}

void *Colors.InCallControls.tableViewHeaderSubtitleLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for tableViewHeaderSubtitleLabel != -1)
  {
    swift_once();
  }

  return &static Colors.InCallControls.tableViewHeaderSubtitleLabel;
}

uint64_t *Colors.MultiwayViewController.background.unsafeMutableAddressor()
{
  if (one-time initialization token for background != -1)
  {
    swift_once();
  }

  return &static Colors.MultiwayViewController.background;
}

void *Colors.ParticipantControls.buttonDefaultBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonDefaultBackground != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantControls.buttonDefaultBackground;
}

void *Colors.ParticipantControls.buttonDefaultTint.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonDefaultTint != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantControls.buttonDefaultTint;
}

id one-time initialization function for buttonBlurBackground()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.35];
  static Colors.ParticipantControls.buttonBlurBackground = result;
  return result;
}

uint64_t *Colors.ParticipantControls.buttonBlurBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonBlurBackground != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantControls.buttonBlurBackground;
}

void *Colors.ParticipantControls.buttonBlurTint.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonBlurTint != -1)
  {
    swift_once();
  }

  return &static Colors.ParticipantControls.buttonBlurTint;
}

id one-time initialization function for participantBackground()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  static Colors.Roster.participantBackground = result;
  return result;
}

uint64_t *Colors.Roster.participantBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for participantBackground != -1)
  {
    swift_once();
  }

  return &static Colors.Roster.participantBackground;
}

id one-time initialization function for sashBackground()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.301960784 green:0.301960784 blue:0.301960784 alpha:1.0];
  static Colors.Roster.sashBackground = result;
  return result;
}

uint64_t *Colors.Roster.sashBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for sashBackground != -1)
  {
    swift_once();
  }

  return &static Colors.Roster.sashBackground;
}

void *Colors.Roster.sashSelectedBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for sashSelectedBackground != -1)
  {
    swift_once();
  }

  return &static Colors.Roster.sashSelectedBackground;
}

void *Colors.Roster.sashText.unsafeMutableAddressor()
{
  if (one-time initialization token for sashText != -1)
  {
    swift_once();
  }

  return &static Colors.Roster.sashText;
}

void *Colors.Roster.sashSelectedText.unsafeMutableAddressor()
{
  if (one-time initialization token for sashSelectedText != -1)
  {
    swift_once();
  }

  return &static Colors.Roster.sashSelectedText;
}

id one-time initialization function for actionCellTintColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.64 green:0.64 blue:0.64 alpha:1.0];
  static Colors.Roster.actionCellTintColor = result;
  return result;
}

uint64_t *Colors.Roster.actionCellTintColor.unsafeMutableAddressor()
{
  if (one-time initialization token for actionCellTintColor != -1)
  {
    swift_once();
  }

  return &static Colors.Roster.actionCellTintColor;
}

id one-time initialization function for actionCellBackgroundColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.21 green:0.21 blue:0.21 alpha:0.6];
  static Colors.Roster.actionCellBackgroundColor = result;
  return result;
}

uint64_t *Colors.Roster.actionCellBackgroundColor.unsafeMutableAddressor()
{
  if (one-time initialization token for actionCellBackgroundColor != -1)
  {
    swift_once();
  }

  return &static Colors.Roster.actionCellBackgroundColor;
}

uint64_t one-time initialization function for background()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  OUTLINED_FUNCTION_23_13();
  result = Color.init(_:red:green:blue:opacity:)();
  static Colors.Captions.background = result;
  return result;
}

uint64_t *Colors.Captions.background.unsafeMutableAddressor()
{
  if (one-time initialization token for background != -1)
  {
    swift_once();
  }

  return &static Colors.Captions.background;
}

uint64_t static Colors.Captions.background.getter()
{
  return static Colors.Captions.background.getter();
}

{
  OUTLINED_FUNCTION_19_7();
  if (!v0)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for divider()
{
  static Color.gray.getter();
  v0 = Color.opacity(_:)();

  static Colors.Captions.divider = v0;
  return result;
}

uint64_t *Colors.Captions.divider.unsafeMutableAddressor()
{
  if (one-time initialization token for divider != -1)
  {
    swift_once();
  }

  return &static Colors.Captions.divider;
}

uint64_t *Colors.Captions.lowConfidenceTermUnderline.unsafeMutableAddressor()
{
  if (one-time initialization token for lowConfidenceTermUnderline != -1)
  {
    swift_once();
  }

  return &static Colors.Captions.lowConfidenceTermUnderline;
}

uint64_t one-time initialization function for progressBar()
{
  result = static Color.white.getter();
  static Colors.Captions.progressBar = result;
  return result;
}

uint64_t *Colors.Captions.progressBar.unsafeMutableAddressor()
{
  if (one-time initialization token for progressBar != -1)
  {
    swift_once();
  }

  return &static Colors.Captions.progressBar;
}

id static Colors.clear.getter()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

float static Colors.AudioVisualization.reducedMotionAlpha(_:)(float a1)
{
  if (a1 <= 0.5)
  {
    return powf(a1 + a1, 3.0);
  }

  else
  {
    return 1.0;
  }
}

id one-time initialization function for uniqueGradients()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo7UIColorCGGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BE7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA930;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.345098039 green:0.925490196 blue:1.0 alpha:1.0];
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.156862745 green:0.737254902 blue:1.0 alpha:1.0];
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.356862745 green:0.968627451 blue:0.654901961 alpha:1.0];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0509803922 green:0.741176471 blue:0.17254902 alpha:1.0];
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA930;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.368627451 blue:0.533333333 alpha:1.0];
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.125490196 blue:0.290196078 alpha:1.0];
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA930;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.91372549 blue:0.247058824 alpha:1.0];
  *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.674509804 blue:0.00784313725 alpha:1.0];
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA930;
  *(v5 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.639215686 blue:1.0 alpha:1.0];
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.450980392 green:0.439215686 blue:1.0 alpha:1.0];
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA930;
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.266666667 green:0.674509804 blue:1.0 alpha:1.0];
  *(v6 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0274509804 green:0.435294118 blue:1.0 alpha:1.0];
  *(v0 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA930;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.996078431 green:0.678431373 blue:0.349019608 alpha:1.0];
  *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.325490196 blue:0.192156863 alpha:1.0];
  *(v0 + 80) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA930;
  *(v8 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.988235294 green:0.988235294 blue:0.345098039 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.925490196 blue:0.00784313725 alpha:1.0];
  *(v8 + 40) = result;
  *(v0 + 88) = v8;
  static Colors.ParticipantGradients.uniqueGradients = v0;
  return result;
}

void one-time initialization function for gradients()
{
  if (one-time initialization token for uniqueGradients != -1)
  {
    swift_once();
  }

  v0 = static Colors.ParticipantGradients.uniqueGradients;
  v1 = static Colors.ParticipantGradients.uniqueGradients;
  swift_bridgeObjectRetain_n();
  specialized Array.append<A>(contentsOf:)(v0);
  static Colors.ParticipantGradients.gradients = v1;
}

uint64_t *Colors.ParticipantGradients.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  return &static Colors.ParticipantGradients.default;
}

uint64_t static Colors.ParticipantGradients.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  swift_beginAccess();
}

uint64_t static Colors.ParticipantGradients.default.setter(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  swift_beginAccess();
  static Colors.ParticipantGradients.default = a1;
}

uint64_t (*static Colors.ParticipantGradients.default.modify())()
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

uint64_t key path getter for static Colors.ParticipantGradients.default : Colors.ParticipantGradients.Type@<X0>(void *a1@<X8>)
{
  Colors.ParticipantGradients.default.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static Colors.ParticipantGradients.default;
}

uint64_t key path setter for static Colors.ParticipantGradients.default : Colors.ParticipantGradients.Type(uint64_t *a1)
{
  v1 = *a1;

  Colors.ParticipantGradients.default.unsafeMutableAddressor();
  swift_beginAccess();
  static Colors.ParticipantGradients.default = v1;
}

void *Colors.AnnotationDisc.borderColor.unsafeMutableAddressor()
{
  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  return &static Colors.AnnotationDisc.borderColor;
}

void *Colors.AnnotationDisc.fillColor.unsafeMutableAddressor()
{
  if (one-time initialization token for fillColor != -1)
  {
    swift_once();
  }

  return &static Colors.AnnotationDisc.fillColor;
}

id one-time initialization function for inactiveButtonTintColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.3];
  static Colors.PeoplePickerViewController.inactiveButtonTintColor = result;
  return result;
}

id one-time initialization function for audioActiveBackgroundColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.19 green:0.25 blue:0.17 alpha:1.0];
  static Colors.PeoplePickerViewController.audioActiveBackgroundColor = result;
  return result;
}

id one-time initialization function for foregroundColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.509803922 alpha:1.0];
  static Colors.Notices.foregroundColor = result;
  return result;
}

uint64_t *Colors.Notices.foregroundColor.unsafeMutableAddressor()
{
  if (one-time initialization token for foregroundColor != -1)
  {
    swift_once();
  }

  return &static Colors.Notices.foregroundColor;
}

uint64_t *Colors.Notices.subjectColor.unsafeMutableAddressor()
{
  if (one-time initialization token for subjectColor != -1)
  {
    swift_once();
  }

  return &static Colors.Notices.subjectColor;
}

uint64_t *Colors.PTT.channelNameLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for channelNameLabel != -1)
  {
    swift_once();
  }

  return &static Colors.PTT.channelNameLabel;
}

id one-time initialization function for disclosureButtonLabel()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.5];
  static Colors.PTT.disclosureButtonLabel = result;
  return result;
}

uint64_t *Colors.PTT.disclosureButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for disclosureButtonLabel != -1)
  {
    swift_once();
  }

  return &static Colors.PTT.disclosureButtonLabel;
}

uint64_t *Colors.PTT.buttonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonLabel != -1)
  {
    swift_once();
  }

  return &static Colors.PTT.buttonLabel;
}

uint64_t *Colors.PTT.buttonLabelDisabled.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonLabelDisabled != -1)
  {
    swift_once();
  }

  return &static Colors.PTT.buttonLabelDisabled;
}

void one-time initialization function for pttButtonDisabledSymbol()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  static Colors.PTT.pttButtonDisabledSymbol = v1;
}

uint64_t *Colors.PTT.pttButtonDisabledSymbol.unsafeMutableAddressor()
{
  if (one-time initialization token for pttButtonDisabledSymbol != -1)
  {
    swift_once();
  }

  return &static Colors.PTT.pttButtonDisabledSymbol;
}

id one-time initialization function for screenShareNameLabel(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t *Colors.PTT.pttButtonSymbol.unsafeMutableAddressor()
{
  if (one-time initialization token for pttButtonSymbol != -1)
  {
    swift_once();
  }

  return &static Colors.PTT.pttButtonSymbol;
}

id static UIColor.lagunaHandoff.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id static UIColor.acceptVoIPCall.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

id static UIColor.incomingScreenShareBackground.getter()
{
  v0 = [objc_opt_self() systemIndigoColor];

  return v0;
}

id static UIColor.close.getter(double a1)
{
  v2 = [objc_opt_self() systemGrayColor];
  v3 = [v2 colorWithAlphaComponent_];

  return v3;
}

id static UIColor.remoteWaveform.getter()
{
  v0 = [objc_opt_self() greenColor];

  return v0;
}

id static UIColor.localWaveform.getter()
{
  v0 = [objc_opt_self() orangeColor];

  return v0;
}

uint64_t getEnumTagSinglePayload for Colors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Colors(_BYTE *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type UIControlState and conformance UIControlState()
{
  result = lazy protocol witness table cache variable for type UIControlState and conformance UIControlState;
  if (!lazy protocol witness table cache variable for type UIControlState and conformance UIControlState)
  {
    type metadata accessor for UIControlState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIControlState and conformance UIControlState);
  }

  return result;
}

BOOL static CallScreeningEndingState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      if (v7 != 2 || (v6 | v5) != 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v7 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v8 = v4 == v5 && v6 == a1[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v11 = a1[3];
  v12 = a2[3];

  return _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v11, v12);
}

uint64_t CallScreeningEndingState.endingAction.getter()
{
  v1 = *v0;
  outlined copy of CallScreening.EndingAction(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

void (*CallScreeningEndingState.validation.getter(uint64_t a1))(uint64_t *a1)
{
  v9 = *v1;
  v10 = *(v1 + 16);
  v3 = swift_allocObject();
  v4 = *v1;
  v5 = v1[1];
  v3[1] = *(a1 + 16);
  v3[2] = v4;
  v6 = v1[2];
  v3[3] = v5;
  v3[4] = v6;
  outlined init with copy of CallScreening.EndingAction(&v9, v8);

  return partial apply for closure #1 in CallScreeningEndingState.validation.getter;
}

void closure #1 in CallScreeningEndingState.validation.getter(uint64_t *a1, uint64_t *a2)
{
  if (a1[6] >> 61 <= 4)
  {
    goto LABEL_2;
  }

  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  if (!v8)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_2:
    v2 = 0;
    goto LABEL_3;
  }

  if (v8 != 1)
  {
    if (v11 != 2 || (v10 | v9) != 0)
    {
      goto LABEL_2;
    }

    goto LABEL_22;
  }

  if (v11 != 1)
  {
    goto LABEL_2;
  }

LABEL_11:
  v12 = v6 == v9 && v7 == v10;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_22:
  v2 = 1;
LABEL_3:
  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v3 = swift_allocError();
  if (v2)
  {
  }

  else
  {
    swift_willThrow();
  }
}

void CallScreeningEndingState.init(prevState:endingAction:endCall:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_6_28(a1, a2, a3, a4, a5, a6, a7, a8, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_23_14();
}

{
  OUTLINED_FUNCTION_6_28(a1, a2, a3, a4, a5, a6, a7, a8, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_23_14();
}

uint64_t CallScreeningEndingState.willExit(to:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[1];
  v29[0] = *v2;
  v29[1] = v11;
  v29[2] = v2[2];
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  result = CallScreeningState.stateMachine.getter(a2, WitnessTable);
  if (result)
  {
    v26 = v7;
    v27 = v5;
    v28 = v3;
    (*(*(a2 + 24) + 16))(*(a2 + 16));
    v30 = *v2;
    v31 = *(v2 + 16);
    outlined init with copy of CallScreening.EndingAction(&v30, v29);

    v14 = v32;
    outlined init with copy of CallScreening.State(v32, v29);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    outlined destroy of CallScreening.State(v14);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v29[0] = v25;
      *v17 = 136446466;
      v18 = CallScreeningEndingState.description.getter();
      v20 = v19;
      outlined destroy of CallScreening.EndingAction(&v30);

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v29);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v22 = CallScreening.State.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v29);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1BBC58000, v15, v16, "%{public}s Exiting to %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      outlined destroy of CallScreening.EndingAction(&v30);
    }

    return (*(v26 + 8))(v10, v27);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningEndingState.enteredState()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v100 - v5;
  v115 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v118 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v100 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  v20 = *(v1 + 16);
  v117[0] = *v1;
  v117[1] = v20;
  v117[2] = *(v1 + 32);
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  v22 = CallScreeningState.stateMachine.getter(v3, WitnessTable);
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v104 = v10;
  v101 = v16;
  v102 = v13;
  v107 = v6;
  v24 = *(v3 + 24);
  v25 = *(v24 + 16);
  v114 = *(v3 + 16);
  v109 = v25;
  v110 = v24 + 16;
  v25();
  v26 = *v1;
  v27 = *(v1 + 8);
  v28 = *(v1 + 24);
  v29 = *(v2 + 40);
  v30 = *v2;
  v31 = *(v2 + 8);
  LODWORD(v108) = *(v2 + 16);
  outlined copy of CallScreening.EndingAction(v30, v31, v108);
  v113 = v28;

  v116 = v29;

  v32 = Logger.logObject.getter();
  v33 = v2;
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v32, v34);
  v111 = v26;
  v112 = v27;
  v106 = v33;
  if (!v35)
  {
    v44 = v108;
    outlined consume of CallScreening.EndingAction(v26, v27, v108);

    v61 = OUTLINED_FUNCTION_11_18();
    (v32)(v61);
    if (v44)
    {
      goto LABEL_4;
    }

LABEL_8:
    v62 = v112;

    v63 = v102;
    v64 = OUTLINED_FUNCTION_13_23();
    v65(v64);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    v68 = v111;
    OUTLINED_FUNCTION_16_22();
    if (os_log_type_enabled(v66, v67))
    {
      OUTLINED_FUNCTION_13_10();
      v69 = v32;
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v71 = swift_slowAlloc();
      v103 = v23;
      v72 = v71;
      *&v117[0] = v71;
      *v70 = 136446210;
      v73 = v63;
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v62, v117);
      OUTLINED_FUNCTION_16_22();
      *(v70 + 4) = v74;
      OUTLINED_FUNCTION_25_12(&dword_1BBC58000, v75, v76, "Ending State EnteredState() will wait for %{public}s to disconnect");
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_10_14();
      (v69)(v73, v115);
    }

    else
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_16_22();

      OUTLINED_FUNCTION_10_14();
      (v32)(v63, v19);
    }

    return;
  }

  OUTLINED_FUNCTION_13_10();
  v36 = swift_slowAlloc();
  v103 = v23;
  v37 = v36;
  OUTLINED_FUNCTION_12_0();
  v38 = swift_slowAlloc();
  v105 = v24;
  v39 = v38;
  *&v117[0] = v38;
  *v37 = 136446210;
  v40 = CallScreeningEndingState.description.getter();
  v41 = v26;
  v43 = v42;
  v44 = v108;
  outlined consume of CallScreening.EndingAction(v41, v27, v108);

  v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v43, v117);

  *(v37 + 4) = v45;
  _os_log_impl(&dword_1BBC58000, v32, v34, "EnteredState %{public}s", v37, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v24 = v105;
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x1BFB23DF0]();
  v23 = v103;
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x1BFB23DF0]();

  v46 = OUTLINED_FUNCTION_11_18();
  (v32)(v46);
  if (!v44)
  {
    goto LABEL_8;
  }

LABEL_4:
  v108 = v32;
  if (v44 == 1)
  {
    v47 = v112;

    v48 = v101;
    v105 = v24;
    (v109)(v114, v24);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = v111;
    outlined consume of CallScreening.EndingAction(v111, v47, 1u);
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_13_10();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v53 = v47;
      v54 = v19;
      v55 = v23;
      v56 = swift_slowAlloc();
      *&v117[0] = v56;
      *v52 = 136446210;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v117);
      OUTLINED_FUNCTION_25_12(&dword_1BBC58000, v57, v58, "Ending State EnteredState() will end call %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v56);
      v23 = v55;
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      OUTLINED_FUNCTION_10_14();
      v59 = v48;
      v60 = v54;
      v47 = v53;
    }

    else
    {

      OUTLINED_FUNCTION_10_14();
      v59 = v48;
      v60 = v19;
    }

    (v108)(v59, v60);
    static TaskPriority.userInitiated.getter();
    v92 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_24_4(v92);
    outlined copy of CallScreening.EndingAction(v51, v47, 1u);
    v93 = one-time initialization token for shared;

    swift_unknownObjectRetain();
    v94 = v106;
    if (v93 != -1)
    {
      OUTLINED_FUNCTION_1_44();
      swift_once();
    }

    v95 = static CKStateMachineActor.shared;
    v96 = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType();
    v97 = swift_allocObject();
    *(v97 + 16) = v95;
    *(v97 + 24) = v96;
    v98 = v105;
    *(v97 + 32) = v114;
    *(v97 + 40) = v98;
    v99 = v94[1];
    *(v97 + 48) = *v94;
    *(v97 + 64) = v99;
    *(v97 + 80) = v94[2];
    *(v97 + 96) = v51;
    *(v97 + 104) = v47;
    *(v97 + 112) = v23;

    OUTLINED_FUNCTION_14_12();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    v77 = v104;
    v78 = OUTLINED_FUNCTION_13_23();
    v79(v78);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v112;
    if (v82)
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1BBC58000, v80, v81, "Ending State EnteredState() will passthrough to listening state", v84, 2u);
      v77 = v104;
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    OUTLINED_FUNCTION_10_14();
    (v108)(v77, v19);
    static TaskPriority.userInitiated.getter();
    v85 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_24_4(v85);
    outlined copy of CallScreening.EndingAction(v111, v83, 2u);
    v86 = one-time initialization token for shared;

    swift_unknownObjectRetain();
    if (v86 != -1)
    {
      OUTLINED_FUNCTION_1_44();
      swift_once();
    }

    v87 = static CKStateMachineActor.shared;
    v88 = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType();
    v89 = swift_allocObject();
    *(v89 + 16) = v87;
    *(v89 + 24) = v88;
    *(v89 + 32) = v114;
    *(v89 + 40) = v24;
    *(v89 + 48) = v23;
    v90 = v106;
    v91 = v106[1];
    *(v89 + 56) = *v106;
    *(v89 + 72) = v91;
    *(v89 + 88) = v90[2];

    OUTLINED_FUNCTION_14_12();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  }

  swift_unknownObjectRelease();
}

uint64_t closure #1 in CallScreeningEndingState.enteredState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v17;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v12 = type metadata accessor for Logger();
  v8[7] = v12;
  v8[8] = *(v12 - 8);
  v8[9] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8[10] = static CKStateMachineActor.shared;
  v15 = (*(a4 + 32) + **(a4 + 32));
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = closure #1 in CallScreeningEndingState.enteredState();

  return v15(a5, a6);
}

uint64_t closure #1 in CallScreeningEndingState.enteredState()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);

    return MEMORY[0x1EEE6DFA0](closure #1 in CallScreeningEndingState.enteredState(), v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v8();
  }
}

{
  v17 = v0;
  (*(*(v0 + 48) + 16))(*(v0 + 40));

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v15 = *(v0 + 72);
    v5 = *(v0 + 56);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    OUTLINED_FUNCTION_13_10();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);
    _os_log_impl(&dword_1BBC58000, v1, v2, "Ending State EnteredState() will end call %{public}s and wait for it to disconnect", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();

    (*(v4 + 8))(v15, v5);
  }

  else
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);

    (*(v11 + 8))(v10, v12);
  }

  OUTLINED_FUNCTION_13();

  return v13();
}

uint64_t closure #2 in CallScreeningEndingState.enteredState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CKStateMachineActor.shared;
  v7[6] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in CallScreeningEndingState.enteredState(), v8, 0);
}

void closure #2 in CallScreeningEndingState.enteredState()()
{
  v5 = v0[5];
  v1 = type metadata accessor for CallScreeningEndingState();
  CallScreeningEndingState.validation.getter(v1);
  v0[7] = v2;
  v4 = *(v5 + 32) + **(v5 + 32);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = closure #2 in CallScreeningEndingState.enteredState();
  OUTLINED_FUNCTION_20_14();

  __asm { BRAA            X8, X16 }
}

uint64_t closure #2 in CallScreeningEndingState.enteredState()()
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
    v7 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](closure #2 in CallScreeningEndingState.enteredState(), v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5()
{
  OUTLINED_FUNCTION_12_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15_10(v7, v13);
  v8 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_46_2(v8);
  if (v5 == 1)
  {
    outlined destroy of TaskPriority?(v1);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_49_1();
    (*(v9 + 8))(v1, v4);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v10)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of TaskPriority?(v3);
    return OUTLINED_FUNCTION_8_34();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();

  v11 = OUTLINED_FUNCTION_8_34();

  outlined destroy of TaskPriority?(v3);

  return v11;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCytSg_Tt2g5()
{
  OUTLINED_FUNCTION_12_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15_10(v7, v13);
  v8 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_46_2(v8);
  if (v5 == 1)
  {
    outlined destroy of TaskPriority?(v1);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_49_1();
    (*(v9 + 8))(v1, v4);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v10)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of TaskPriority?(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
    return OUTLINED_FUNCTION_8_34();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  v11 = OUTLINED_FUNCTION_8_34();

  outlined destroy of TaskPriority?(v3);

  return v11;
}

uint64_t CallScreeningEndingState.update(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_44();
    swift_once();
  }

  v4 = static CKStateMachineActor.shared;
  v1[11] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreeningEndingState.update(with:), v4, 0);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  v6 = CallScreeningState.stateMachine.getter(v2, WitnessTable);
  *(v0 + 96) = v6;
  if (v6)
  {
    v7 = *(v0 + 80);
    if (*(v7 + 16) <= 1u)
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v0 + 64);
      if (*(v10 + 16) == v8 && *(v10 + 24) == v9)
      {
LABEL_9:
        if (*(v10 + 32) == 6)
        {
          v12 = *(v0 + 72);
          CallScreeningEndingState.validation.getter(v12);
          *(v0 + 104) = v13;
          v17 = *(*(v12 + 24) + 32) + **(*(v12 + 24) + 32);
          v14 = swift_task_alloc();
          *(v0 + 112) = v14;
          *v14 = v0;
          v14[1] = CallScreeningEndingState.update(with:);
          OUTLINED_FUNCTION_20_14();

          __asm { BRAA            X8, X16 }
        }

        goto LABEL_13;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v10 = *(v0 + 64);
        goto LABEL_9;
      }
    }

LABEL_13:
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13();

  return v15();
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
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = *(v3 + 88);
    v8 = CallScreeningEndingState.update(with:);
  }

  else
  {
    v9 = *(v3 + 88);

    v8 = CallScreeningEndingState.update(with:);
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningEndingState<A>()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = v0[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningEndingState<A>;

  return CallScreeningEndingState.update(with:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t CallScreeningEndingState.description.getter()
{
  _StringGuts.grow(_:)(29);
  MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC4F5310);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType()
{
  result = lazy protocol witness table cache variable for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType;
  if (!lazy protocol witness table cache variable for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType)
  {
    type metadata accessor for CKStateMachineActor.ActorType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType);
  }

  return result;
}

uint64_t partial apply for closure #2 in CallScreeningEndingState.enteredState()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #2 in CallScreeningEndingState.enteredState()(a1, v6, v7, v8, (v1 + 7), v4, v5);
}

uint64_t partial apply for closure #1 in CallScreeningEndingState.enteredState()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #1 in CallScreeningEndingState.enteredState()(a1, v5, v6, (v1 + 6), v7, v8, v9, v4);
}

uint64_t instantiation function for generic protocol witness table for CallScreeningEndingState<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for CallScreeningEndingState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CallScreeningEndingState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for CallScreeningEndingState(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError()
{
  result = lazy protocol witness table cache variable for type CKStateMachineError and conformance CKStateMachineError;
  if (!lazy protocol witness table cache variable for type CKStateMachineError and conformance CKStateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKStateMachineError and conformance CKStateMachineError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKStateMachineError and conformance CKStateMachineError;
  if (!lazy protocol witness table cache variable for type CKStateMachineError and conformance CKStateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKStateMachineError and conformance CKStateMachineError);
  }

  return result;
}

uint64_t NoticeRecipeGenerator.noticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _UNKNOWN **a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a4;
  v105 = a1;
  v106 = a3;
  v107 = a5;
  v92 = type metadata accessor for FaceIDUnavailableNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32();
  v91 = v8;
  v9 = OUTLINED_FUNCTION_4_24();
  v95 = type metadata accessor for PushToTalkNotice(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v94 = v12;
  v13 = OUTLINED_FUNCTION_4_24();
  updated = type metadata accessor for SystemUpdateNotice(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v97 = v16;
  v17 = OUTLINED_FUNCTION_4_24();
  v101 = type metadata accessor for AppLaunchNotice(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  v100 = v20;
  v21 = OUTLINED_FUNCTION_4_24();
  v103 = type metadata accessor for SessionActionNotice(v21);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  v99 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_32();
  v102 = v26;
  v27 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for ReactionNotice(v27);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_17();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v89 - v33;
  type metadata accessor for AccountUpdateNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v89 - v40;
  type metadata accessor for SessionActivationRequestNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_17();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v89 - v47;
  outlined init with copy of Notice?(a2, &v108, &_s15ConversationKit6Notice_pSgMd);
  if (v109)
  {
    outlined init with take of TapInteractionHandler(&v108, v110);
    outlined init with copy of IDSLookupManager(v110, &v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
    if (swift_dynamicCast())
    {
      v49 = type metadata accessor for SessionActivationRequestNotice;
      outlined init with take of FaceIDUnavailableNotice(v48, v45, type metadata accessor for SessionActivationRequestNotice);
      NoticeRecipeGenerator.sessionActivationRequestNoticeRecipe(controlsManager:notice:)(v105, v45, v104, v107);
      v50 = v45;
    }

    else
    {
      if (swift_dynamicCast())
      {
        outlined init with take of FaceIDUnavailableNotice(v41, v38, type metadata accessor for AccountUpdateNotice);
        NoticeRecipeGenerator.accountUpdateNoticeRecipe(controlsManager:notice:)(v105, v38, v104, v107);
        v50 = OUTLINED_FUNCTION_46();
LABEL_25:
        outlined destroy of FaceIDUnavailableNotice(v50, v57);
        __swift_destroy_boxed_opaque_existential_1(v110);
        return __swift_destroy_boxed_opaque_existential_1(&v108);
      }

      if (swift_dynamicCast())
      {
        v49 = type metadata accessor for ReactionNotice;
        outlined init with take of FaceIDUnavailableNotice(v34, v31, type metadata accessor for ReactionNotice);
        v58 = OUTLINED_FUNCTION_2_43();
        NoticeRecipeGenerator.reactionNoticeRecipe(controlsManager:notice:)(v58, v59, v60, v61);
      }

      else
      {
        v62 = v102;
        OUTLINED_FUNCTION_6_29();
        if (swift_dynamicCast())
        {
          v49 = type metadata accessor for SessionActionNotice;
          v63 = v62;
          v31 = v99;
          outlined init with take of FaceIDUnavailableNotice(v63, v99, type metadata accessor for SessionActionNotice);
          v64 = OUTLINED_FUNCTION_2_43();
          NoticeRecipeGenerator.sessionActionNoticeRecipe(controlsManager:notice:)(v64, v65, v66, v67);
        }

        else
        {
          v68 = v100;
          OUTLINED_FUNCTION_6_29();
          if (swift_dynamicCast())
          {
            v49 = type metadata accessor for AppLaunchNotice;
            v69 = v68;
            v31 = v96;
            outlined init with take of FaceIDUnavailableNotice(v69, v96, type metadata accessor for AppLaunchNotice);
            v70 = OUTLINED_FUNCTION_2_43();
            NoticeRecipeGenerator.appLaunchNoticeRecipe(controlsManager:notice:)(v70, v71, v72, v73);
          }

          else
          {
            v74 = v97;
            OUTLINED_FUNCTION_6_29();
            if (swift_dynamicCast())
            {
              v49 = type metadata accessor for SystemUpdateNotice;
              v75 = v74;
              v31 = v93;
              outlined init with take of FaceIDUnavailableNotice(v75, v93, type metadata accessor for SystemUpdateNotice);
              v76 = OUTLINED_FUNCTION_2_43();
              NoticeRecipeGenerator.systemUpdateNoticeRecipe(controlsManager:notice:)(v76, v77, v78, v79);
            }

            else
            {
              v80 = v94;
              OUTLINED_FUNCTION_6_29();
              if (swift_dynamicCast())
              {
                v49 = type metadata accessor for PushToTalkNotice;
                v81 = v80;
                v31 = v90;
                outlined init with take of FaceIDUnavailableNotice(v81, v90, type metadata accessor for PushToTalkNotice);
                PushToTalkControlsRecipeGenerator.pttNoticeRecipe(controlsManager:notice:)(v105, v31, v106, v107);
              }

              else
              {
                v82 = v91;
                OUTLINED_FUNCTION_6_29();
                if (!swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v110);
                  v88 = type metadata accessor for ConversationControlsRecipe();
                  OUTLINED_FUNCTION_8_35(v88);
                  return __swift_destroy_boxed_opaque_existential_1(&v108);
                }

                v49 = type metadata accessor for FaceIDUnavailableNotice;
                v83 = v82;
                v31 = v89;
                outlined init with take of FaceIDUnavailableNotice(v83, v89, type metadata accessor for FaceIDUnavailableNotice);
                v84 = OUTLINED_FUNCTION_2_43();
                NoticeRecipeGenerator.faceIDUnavailableRecipe(controlsManager:notice:)(v84, v85, v86, v87);
              }
            }
          }
        }
      }

      v50 = v31;
    }

    v57 = v49;
    goto LABEL_25;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v108, &_s15ConversationKit6Notice_pSgMd);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, &static Logger.conversationControls);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1BBC58000, v52, v53, "noticeRecipe: No notice metadata", v54, 2u);
    MEMORY[0x1BFB23DF0](v54, -1, -1);
  }

  v55 = type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_8_35(v55);
}

uint64_t NoticeRecipeGenerator.sessionActivationRequestNoticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  v94 = a3;
  v103 = a2;
  v106 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v106);
  *&v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = &v93 - v12;
  v13 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v93 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v105 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v93 - v26;
  v28 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);
  v107 = a1;
  v29 = v28(v25);
  if (!v29)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, &static Logger.conversationControls);
    v70 = v107;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      __dst[0] = v74;
      *v73 = 136315138;
      v75 = (*((*MEMORY[0x1E69E7D40] & *v70) + 0x2A0))();
      v76 = a4;
      swift_getObjectType();
      __src[0] = v75;
      v77 = String.init<A>(describing:)();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, __dst);

      *(v73 + 4) = v79;
      a4 = v76;
      _os_log_impl(&dword_1BBC58000, v71, v72, "sessionActionNoticeRecipe: No active conversation, call: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1BFB23DF0](v74, -1, -1);
      MEMORY[0x1BFB23DF0](v73, -1, -1);
    }

    v80 = a4;
    return __swift_storeEnumTagSinglePayload(v80, 1, 1, v13);
  }

  v30 = v29;
  *&v97 = v7;
  v101 = v18;
  v100 = a4;
  type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 clearColor];
  v99 = v32;
  v34 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v32, 0, 0, 0, v33);
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v106);
  v35 = SBUIIsSystemApertureEnabled();
  v36 = v27;
  v37 = v103;
  if (v35)
  {
    SessionActivationRequestNotice.fullSentence.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s10Foundation16AttributedStringVSgMd);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v106);
    outlined init with take of AttributedString?(v23, v36);
  }

  __dst[3] = type metadata accessor for SessionActivationRequestNotice(0);
  __dst[4] = &protocol witness table for SessionActivationRequestNotice;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
  outlined init with copy of SessionActivationRequestNotice(v37, boxed_opaque_existential_1, type metadata accessor for SessionActivationRequestNotice);
  LOBYTE(__dst[5]) = 1;
  v96 = [v34 view];
  v39 = v107;
  v40 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v107) + 0x2A8))();
  v41 = *((*v40 & *v34) + 0x58);
  v98 = v34;
  v95 = v41(v10);
  (*(v8 + 8))(v10, v97);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v42 = [objc_opt_self() conversationKit];
  v114._object = 0xE000000000000000;
  v43.value._countAndFlagsBits = 0x61737265766E6F43;
  v43.value._object = 0xEF74694B6E6F6974;
  v44._object = 0x80000001BC4F5750;
  v44._countAndFlagsBits = 0xD000000000000016;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v114._countAndFlagsBits = 0;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v43, v42, v45, v114);

  isa = NSAttributedString.__allocating_init(string:)(v46).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1BC4BAC30;
  SessionActivationRequestNotice.attributedSubtitle.getter();
  *(v48 + 32) = NSAttributedString.init(_:)();
  v103 = v36;
  v49 = v105;
  outlined init with copy of Notice?(v36, v105, &_s10Foundation16AttributedStringVSgMd);
  ConversationControlsHelper.buttonShelfActions(controlsManager:)(v39, v111);
  v97 = v111[1];
  v102 = v111[0];
  v93 = v112;
  v50 = v113;
  v51 = v13[9];
  __swift_storeEnumTagSinglePayload(v15 + v51, 1, 1, v106);
  v52 = (v15 + v13[10]);
  v53 = v15 + v13[15];
  *(v53 + 4) = 0;
  *v53 = 0u;
  *(v53 + 1) = 0u;
  v53[40] = -2;
  *(v15 + v13[16]) = 0;
  v54 = v15 + v13[17];
  v55 = v15 + v13[18];
  *v55 = 1;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  *(v55 + 40) = 0u;
  *(v55 + 56) = 0u;
  v55[72] = 0;
  outlined init with copy of ConversationControlsType(__dst, v15);
  v56 = v96;
  v15[6] = 0;
  v15[7] = v56;
  v57 = v95;
  v15[8] = 0;
  v15[9] = v57;
  v15[10] = isa;
  v15[11] = v48;
  v52[1] = 0;
  v52[2] = 0;
  *v52 = 0;
  outlined assign with copy of AttributedString?(v49, v15 + v51);
  *(v15 + v13[11]) = 2;
  *(v15 + v13[12]) = 1;
  *(v15 + v13[13]) = 1;
  *(v15 + v13[14]) = 1;
  *v54 = 0;
  *(v54 + 1) = 0;
  v54[16] = -1;
  v58 = *(*&v111[0] + 16);
  if (v113 < 0)
  {
    v59 = v101;
    if (v58 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, &static Logger.conversationControls);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v111);
      if (!os_log_type_enabled(v61, v62))
      {
        goto LABEL_21;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      __src[0] = v64;
      *v63 = 136315138;
      v108 = v58;
      v82 = String.init<A>(reflecting:)();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, __src);

      *(v63 + 4) = v84;
      v68 = "Too many buttonShelf actions (%s)";
      goto LABEL_20;
    }
  }

  else
  {
    v59 = v101;
    if (v58 > 2)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, &static Logger.conversationControls);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v111);
      if (!os_log_type_enabled(v61, v62))
      {
        goto LABEL_21;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      __src[0] = v64;
      *v63 = 136315138;
      v108 = v58;
      v65 = String.init<A>(reflecting:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, __src);

      *(v63 + 4) = v67;
      v68 = "Too many trailing actions (%s)";
LABEL_20:
      _os_log_impl(&dword_1BBC58000, v61, v62, v68, v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1BFB23DF0](v64, -1, -1);
      v85 = v63;
      v59 = v101;
      MEMORY[0x1BFB23DF0](v85, -1, -1);
LABEL_21:

      outlined destroy of ConversationControlsRecipe.Actions(v111);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(__dst);
      v86 = v100;
      v87 = v104;
      outlined destroy of FaceIDUnavailableNotice(v15, type metadata accessor for ConversationControlsRecipe);
      __swift_storeEnumTagSinglePayload(v87, 1, 1, v13);
      goto LABEL_23;
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of ConversationControlsType(__dst);
  v88 = v97;
  *v53 = v102;
  *(v53 + 1) = v88;
  *(v53 + 4) = v93;
  v53[40] = v50;
  v87 = v104;
  outlined init with copy of SessionActivationRequestNotice(v15, v104, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v87, 0, 1, v13);
  outlined destroy of FaceIDUnavailableNotice(v15, type metadata accessor for ConversationControlsRecipe);
  v86 = v100;
LABEL_23:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v13);
  v90 = v107;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s10Foundation16AttributedStringVSgMd);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    v80 = v86;
    return __swift_storeEnumTagSinglePayload(v80, 1, 1, v13);
  }

  outlined init with take of FaceIDUnavailableNotice(v87, v59, type metadata accessor for ConversationControlsRecipe);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v90, 64, v94, __src);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s10Foundation16AttributedStringVSgMd);
    v92 = v13[18];
    memcpy(__dst, (v59 + v92), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
    memcpy((v59 + v92), __src, 0x49uLL);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s10Foundation16AttributedStringVSgMd);
  }

  outlined init with copy of SessionActivationRequestNotice(v59, v86, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v86, 0, 1, v13);
  return outlined destroy of FaceIDUnavailableNotice(v59, type metadata accessor for ConversationControlsRecipe);
}

uint64_t NoticeRecipeGenerator.accountUpdateNoticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  v80 = a3;
  v90 = a4;
  v93 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v93);
  *&v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = type metadata accessor for UUID();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v79 - v10;
  v11 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v91 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v79 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v79 - v25;
  v27 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v92 = a1;
  v27(v24);
  v29 = v28;
  ObjectType = swift_getObjectType();
  v31 = (*(v29 + 512))(ObjectType, v29);
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  specialized BidirectionalCollection.last.getter(*(a2 + 8));
  v33 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v33) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit11ParticipantVSgMd);
    v34 = 0;
  }

  else
  {
    v34 = *&v26[*(v33 + 28)];
    if (v34)
    {
      v35 = v34;
    }

    outlined destroy of FaceIDUnavailableNotice(v26, type metadata accessor for Participant);
  }

  type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v36 = ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:handle:badgeImage:)(v32, v34, 0);
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v93);
  v37 = SBUIIsSystemApertureEnabled();
  if (v37)
  {
    AccountUpdateNotice.fullSentence.getter();
    v38 = v94;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s10Foundation16AttributedStringVSgMd);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v93);
    v37 = outlined init with take of AttributedString?(v20, v38);
  }

  (v27)(v37);
  v40 = v39;
  v41 = swift_getObjectType();
  LOBYTE(v40) = (*(v40 + 352))(v41, v40);
  swift_unknownObjectRelease();
  v42 = 1;
  if ((v40 & 1) == 0)
  {
    v42 = 2 * (static Platform.current.getter() > 1u);
  }

  v83 = v42;
  __dst[3] = type metadata accessor for AccountUpdateNotice(0);
  __dst[4] = &protocol witness table for AccountUpdateNotice;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
  outlined init with copy of SessionActivationRequestNotice(a2, boxed_opaque_existential_1, type metadata accessor for AccountUpdateNotice);
  LOBYTE(__dst[5]) = 1;
  v82 = [v36 view];
  v44 = v92;
  v45 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v92) + 0x2A8))();
  v46 = *((*v45 & *v36) + 0x58);
  v87 = v36;
  v47 = v46(v8);
  (*(v84 + 8))(v8, v85);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  AccountUpdateNotice.title.getter();
  isa = NSAttributedString.__allocating_init(string:)(v48).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BC4BAC30;
  AccountUpdateNotice.attributedSubtitle.getter();
  *(v50 + 32) = NSAttributedString.init(_:)();
  v51 = v91;
  outlined init with copy of Notice?(v94, v91, &_s10Foundation16AttributedStringVSgMd);
  ConversationControlsHelper.buttonShelfActions(controlsManager:)(v44, v98);
  v85 = v98[1];
  v86 = v98[0];
  v84 = v99;
  v81 = v100;
  v52 = v11[9];
  __swift_storeEnumTagSinglePayload(v13 + v52, 1, 1, v93);
  v53 = (v13 + v11[10]);
  v54 = v13 + v11[15];
  *(v54 + 4) = 0;
  *v54 = 0u;
  *(v54 + 1) = 0u;
  v54[40] = -2;
  *(v13 + v11[16]) = 0;
  v55 = v13 + v11[17];
  v56 = v13 + v11[18];
  *v56 = 1;
  *(v56 + 8) = 0u;
  *(v56 + 24) = 0u;
  *(v56 + 40) = 0u;
  *(v56 + 56) = 0u;
  v56[72] = 0;
  outlined init with copy of ConversationControlsType(__dst, v13);
  v57 = v82;
  v13[6] = 0;
  v13[7] = v57;
  v13[8] = 0;
  v13[9] = v47;
  v13[10] = isa;
  v13[11] = v50;
  v53[1] = 0;
  v53[2] = 0;
  *v53 = 0;
  outlined assign with copy of AttributedString?(v51, v13 + v52);
  *(v13 + v11[11]) = v83;
  *(v13 + v11[12]) = 1;
  *(v13 + v11[13]) = 1;
  *(v13 + v11[14]) = 1;
  *v55 = 0;
  *(v55 + 1) = 0;
  v55[16] = -1;
  v58 = *(*&v98[0] + 16);
  if (v100 < 0)
  {
    if (v58 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, &static Logger.conversationControls);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v98);
      if (!os_log_type_enabled(v60, v61))
      {
        goto LABEL_22;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      __src[0] = v63;
      *v62 = 136315138;
      v95 = v58;
      v69 = String.init<A>(reflecting:)();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, __src);

      *(v62 + 4) = v71;
      v67 = "Too many buttonShelf actions (%s)";
      goto LABEL_21;
    }
  }

  else if (v58 > 2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, &static Logger.conversationControls);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();
    outlined destroy of ConversationControlsRecipe.Actions(v98);
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_22;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    __src[0] = v63;
    *v62 = 136315138;
    v95 = v58;
    v64 = String.init<A>(reflecting:)();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, __src);

    *(v62 + 4) = v66;
    v67 = "Too many trailing actions (%s)";
LABEL_21:
    _os_log_impl(&dword_1BBC58000, v60, v61, v67, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1BFB23DF0](v63, -1, -1);
    MEMORY[0x1BFB23DF0](v62, -1, -1);
LABEL_22:

    outlined destroy of ConversationControlsRecipe.Actions(v98);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(__dst);
    v72 = v89;
    v73 = v88;
    v74 = v87;
    outlined destroy of FaceIDUnavailableNotice(v13, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v11);
    goto LABEL_24;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of ConversationControlsType(__dst);
  v75 = v85;
  *v54 = v86;
  *(v54 + 1) = v75;
  *(v54 + 4) = v84;
  v54[40] = v81;
  v73 = v88;
  outlined init with copy of SessionActivationRequestNotice(v13, v88, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v11);
  outlined destroy of FaceIDUnavailableNotice(v13, type metadata accessor for ConversationControlsRecipe);
  v72 = v89;
  v74 = v87;
LABEL_24:
  if (__swift_getEnumTagSinglePayload(v73, 1, v11) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s10Foundation16AttributedStringVSgMd);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    return __swift_storeEnumTagSinglePayload(v90, 1, 1, v11);
  }

  else
  {
    outlined init with take of FaceIDUnavailableNotice(v73, v72, type metadata accessor for ConversationControlsRecipe);
    if (SBUIIsSystemApertureEnabled())
    {
      ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v92, 64, v80, __src);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s10Foundation16AttributedStringVSgMd);
      v77 = v11[18];
      memcpy(__dst, (v72 + v77), 0x49uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
      memcpy((v72 + v77), __src, 0x49uLL);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s10Foundation16AttributedStringVSgMd);
    }

    v78 = v90;
    outlined init with copy of SessionActivationRequestNotice(v72, v90, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v11);
    return outlined destroy of FaceIDUnavailableNotice(v72, type metadata accessor for ConversationControlsRecipe);
  }
}