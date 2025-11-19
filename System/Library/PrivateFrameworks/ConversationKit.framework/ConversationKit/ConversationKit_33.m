ConversationKit::MultiwayViewController::LayoutStyle __swiftcall ParticipantGridView.effectiveLayoutStyle(for:)(Swift::Int a1)
{
  v3 = v2;
  v5 = v1;
  result = ParticipantGridView.mediaPipIsVisible.getter();
  if ((result & 1) != 0 && a1 < 3)
  {
    v7 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v8 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
      OUTLINED_FUNCTION_3_5();
      *(v2 + v8) = a1 > 3;
    }

    v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
    result = OUTLINED_FUNCTION_4_0();
    v7 = *(v3 + v9);
  }

  *v5 = v7;
  return result;
}

uint64_t ParticipantGridView.transformModelIfNeeded(_:for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  if ([*(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled] && (ParticipantGridView.shouldShowLastFrameUI.getter() & 1) != 0)
  {
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    if (!swift_getEnumCaseMultiPayload())
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      memcpy(__dst, &v8[v10], 0xACuLL);
      ParticipantVideoView.ViewModel.contentsRect.getter();
      if (v11 == v12 && (ParticipantGridView.isOneToOneMode.getter() & 1) != 0)
      {
        v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        Participant.contactDetails.getter();
        outlined destroy of ParticipantVideoView.ViewModel(__dst);
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v14 = v19[2];
        v15 = v20;
        v16 = v19[1];
        *v13 = v19[0];
        *(v13 + 16) = v16;
        *(v13 + 32) = v14;
        *(v13 + 48) = v15;
        v17 = *&v5[*(v3 + 32)];

        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        *(v13 + 56) = v17;
        *(v13 + 64) = 0;
        *(v13 + 72) = 0u;
        *(v13 + 88) = 0u;
        return swift_storeEnumTagMultiPayload();
      }

      outlined destroy of ParticipantVideoView.ViewModel(__dst);
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  return outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
}

uint64_t closure #1 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of IDSLookupManager(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  type metadata accessor for RemoteParticipantVideoProvider();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v24) + 0x158))())
  {

    return 0;
  }

  v5 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (*(v6 + 16) && (type metadata accessor for Participant(0), v7 = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 80 * v7;
    v10 = *v9;
    v11 = *(v9 + 16);
    v22 = *(v9 + 24);
    v23 = *(v9 + 8);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    v15 = *(v9 + 48);
    v14 = *(v9 + 56);
    v16 = *(v9 + 64);
    v17 = *(v9 + 74);
    v18 = *(v9 + 72) | (*(v9 + 74) << 16);
    swift_endAccess();
    outlined copy of ParticipantGridView.FrozenFrameOverlayState(v10, v23, v11, v22, v12, v13, v15, v14, v16, v18);

    if (v17 >> 6)
    {
      v20 = v11;
      v19 = v10;
      v21 = v17 >> 6 == 3 && (v23 | v10 | v11 | v22 | v12 | v13 | v15 | v14 | v16) == 0;
      v3 = v21 && v18 == 12582912;
    }

    else
    {
      v3 = 1;
      v20 = v11;
      v19 = v10;
    }

    outlined consume of ParticipantGridView.FrozenFrameOverlayState(v19, v23, v20, v22, v12, v13, v15, v14, v16, v18);
  }

  else
  {
    swift_endAccess();

    return 1;
  }

  return v3;
}

uint64_t ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a2;
  v32 = a4;
  v28 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participant(0);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = type metadata accessor for DispatchTime();
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v29 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v12 + 8);
  v30(v14, v11);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 24) = v27;
  swift_unknownObjectWeakInit();
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  v20 = ((*(v26 + 80) + 32) & ~*(v26 + 80)) + v10;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
  *(v21 + v20) = v32;
  aBlock[4] = partial apply for closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_85;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v23 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v29;
  MEMORY[0x1BFB21510](v17, v8, v5, v22);
  _Block_release(v22);

  (*(v36 + 8))(v5, v23);
  (*(v34 + 8))(v8, v35);
  return (v30)(v17, v31);
}

uint64_t closure #2 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  Participant.videoInfo.getter();
  if (v7[0] && (v4 = v8, outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd), (v4 & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = ParticipantGridView.orientation(for:default:)(a2, 1);
  }

  Participant.videoInfo.getter();
  if (v9[0])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  return static ParticipantGridView.remoteParticipantRotationAngle(localOrientation:remoteOrientation:shouldReverse:)(a1, v5);
}

void closure #3 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = type metadata accessor for ParticipantView();
  v9.receiver = a1;
  v9.super_class = v6;
  v7 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v7;
  v11 = v4;
  v12 = v5;
  objc_msgSendSuper2(&v9, sel_setTransform_, v10);
  v8.receiver = a1;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_transform);
  ParticipantView.updateOverlayTransforms(with:)(v10);
}

void closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20.i8[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + 24);
      if (ParticipantGridView.shouldShowLastFrameUI.getter())
      {
        v15 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
        swift_beginAccess();
        v16 = *&v11[v15];
        if (*(v16 + 16))
        {
          type metadata accessor for Participant(0);
          v17 = specialized __RawDictionaryStorage.find<A>(_:)();
          if (v18)
          {
            memcpy(v27, (*(v16 + 56) + 80 * v17), 0x4BuLL);
            v19 = LOWORD(v27[9]) | (BYTE2(v27[9]) << 16);
            if (v19 < 0x400000)
            {
              v23 = v27[0];
              v24 = v27[4] & 3;
              v25 = v27[3];
              v22 = *&v27[5];
              v20 = vandq_s8(*&v27[1], xmmword_1BC4CDBC0);
              v21 = *&v27[7];
              swift_endAccess();
              v28 = v20;
              v27[16] = v23;
              v29 = v25;
              v30 = v24;
              v32 = v21;
              v31 = v22;
              v33 = v19 & 0x101;
              v34 = (v19 & 0x1010101 | 0x400000) >> 16;
              swift_beginAccess();
              outlined init with copy of ParticipantGridView.FrozenFrameOverlayState(v27, v26);
              swift_isUniquelyReferenced_nonNull_native();
              v26[0] = *&v11[v15];
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
              *&v11[v15] = v26[0];
              swift_endAccess();
              ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v13, v14, a3, a4 & 1, 0, 0);

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit20ParticipantViewModelOSgMd);
              return;
            }
          }
        }

        swift_endAccess();
      }
    }

    else
    {
    }
  }
}

void closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:)(char a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a2)
  {
    a2(a1 & 1);
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v16 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v17 = v6;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_106;
  v7 = _Block_copy(&v12);
  v8 = a4;

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #2 in closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
  v17 = v9;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v15 = &block_descriptor_112;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v5 animateWithDuration:v7 animations:v10 completion:0.5];
  _Block_release(v10);
  _Block_release(v7);
}

uint64_t closure #2 in ParticipantGridView.startAnimations(_:animationStyle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex);
  if (v6 != a3)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = String.init<A>(reflecting:)();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = swift_beginAccess();
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = *(a4 + 24);

    v12(v6 == a3);
    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v12, v13);
  }

  return result;
}

id closure #1 in ParticipantGridView.tile(for:ofAClass:)(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  (*(v6 + 32))(v8, v4, v5);
  v9 = static UUID.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + *(type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0) + 20));
  return [v10 isKindOfClass_];
}

id ParticipantGridView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ParticipantGridView.updateMediaPipDodgingFrame(withAnimationStyle:)(ConversationKit::ParticipantGridView::AnimationStyle withAnimationStyle)
{
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize];
  OUTLINED_FUNCTION_3_5();
  *v3 = 0;
  *(v3 + 1) = 0;
  [v1 setNeedsLayout];
  v4 = swift_allocObject();
  v4[2] = v1;
  v5 = v1;
  ParticipantGridView.startAnimations(_:animationStyle:completion:)(partial apply for closure #1 in CallControlsMenuViewController.updateDogingState(animated:), v4, withAnimationStyle, 0, 0);
}

double ParticipantGridView.centeredFrame(for:isFullScreen:)(unint64_t a1, char a2)
{
  [v2 safeAreaInsetFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ParticipantGridView.effectiveLayoutStyle(for:)(a1);
  v13 = &v2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 112))(ObjectType, v14);
    v18 = v17;
    swift_unknownObjectRelease();
    if ((v18 & 1) == 0 && !v16)
    {
      v19 = [v2 superview];
      if (v19)
      {
        v20 = v19;
        if (v10 >= v12 || (a2 & 1) != 0 || a1 < 1)
        {
          goto LABEL_20;
        }

        if (v37[0])
        {
          if (a1 >= 5)
          {
            goto LABEL_20;
          }
        }

        else if (a1 >= 3)
        {
LABEL_20:

          return v6;
        }

        if (a1 > 3)
        {
          v21 = v37[0];
        }

        else
        {
          v21 = 0;
        }

        if (a1 == 1 || v21)
        {
          [v2 frame];
          MinX = CGRectGetMinX(v40);
          [v20 bounds];
          MinY = CGRectGetMinY(v41);
          [v2 frame];
          Width = CGRectGetWidth(v42);
          [v20 bounds];
          Height = CGRectGetHeight(v43);
          [v2 convertRect:v20 fromCoordinateSpace:{ParticipantGridView.frameForSingleParticipantView(in:)(MinX, MinY, Width, Height)}];
          recta = v44.origin.x;
          y = v44.origin.y;
          v28 = v44.size.width;
          v29 = v44.size.height;
          v30 = CGRectGetMinY(v44);
          v45.origin.x = v6;
          v45.origin.y = v8;
          v45.size.width = v10;
          v45.size.height = v12;
          rect_8 = v30 - CGRectGetMinY(v45) + -1.0;
          v46.origin.x = v6;
          v46.origin.y = v8;
          v46.size.width = v10;
          v46.size.height = v12;
          CGRectGetMaxY(v46);
          v47.origin.x = recta;
          v47.origin.y = y;
          v47.size.width = v28;
          v47.size.height = v29;
          CGRectGetMaxY(v47);
          UIEdgeInsetsInsetRect(v6, v8, v10, v12, rect_8, 0.0);
        }

        else
        {
          Layout.MultiwayFaceTime.init()(v35);
          v22 = v36 * 0.5;
          Layout.MultiwayFaceTime.init()(v37);
          v39.origin.x = v6;
          v39.origin.y = v8;
          v39.size.width = v10;
          v39.size.height = v12;
          CGRectInset(v39, v22, v38 * 0.5);
        }

        UIRectRoundToViewScale();
        v6 = v31;
        goto LABEL_20;
      }
    }
  }

  return v6;
}

uint64_t ParticipantGridView.participantViewDidTapToggleFocus(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v0);
  if (v4)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
  }

  v6 = OUTLINED_FUNCTION_15_32();
  v7(v6);
  OUTLINED_FUNCTION_20_28();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_74_5();
    v8 = OUTLINED_FUNCTION_17_41();
    v9(v8);
    swift_unknownObjectRelease();
  }

  v10 = OUTLINED_FUNCTION_41_14();
  return v11(v10);
}

uint64_t ParticipantGridView.identifier(for:)@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v18 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v17[1] = v17 - v6;
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  v8 = *(v7 + 16);

  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      v11 = type metadata accessor for UUID();
      v12 = v19;
      v13 = 1;
      return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
    }

    if (i >= *(v7 + 16))
    {
      break;
    }

    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    if (static NSObject.== infix(_:_:)())
    {

      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      v14 = v18;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v15 = type metadata accessor for UUID();
      v16 = v19;
      (*(*(v15 - 8) + 32))(v19, v14, v15);
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v12 = v16;
      v13 = 0;
      v11 = v15;
      return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
    }

    result = outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  __break(1u);
  return result;
}

uint64_t ParticipantGridView.participantViewDidTapShutter(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v0);
  if (v4)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
  }

  v6 = OUTLINED_FUNCTION_15_32();
  v7(v6);
  OUTLINED_FUNCTION_20_28();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_74_5();
    v8 = OUTLINED_FUNCTION_17_41();
    v9(v8);
    swift_unknownObjectRelease();
  }

  v10 = OUTLINED_FUNCTION_41_14();
  return v11(v10);
}

uint64_t ParticipantGridView.participantViewDidTapRing(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v0);
  if (v4)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
  }

  v6 = OUTLINED_FUNCTION_15_32();
  v7(v6);
  OUTLINED_FUNCTION_20_28();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_74_5();
    v8 = OUTLINED_FUNCTION_17_41();
    v9(v8);
    swift_unknownObjectRelease();
  }

  v10 = OUTLINED_FUNCTION_41_14();
  return v11(v10);
}

uint64_t ParticipantGridView.participantViewDidTapKickMember(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v0);
  if (v4)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
  }

  v6 = OUTLINED_FUNCTION_15_32();
  v7(v6);
  OUTLINED_FUNCTION_20_28();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_74_5();
    v8 = OUTLINED_FUNCTION_17_41();
    v9(v8);
    swift_unknownObjectRelease();
  }

  v10 = OUTLINED_FUNCTION_41_14();
  return v11(v10);
}

void ParticipantGridView.participantView(_:didUpdateSashVisibility:)()
{
  OUTLINED_FUNCTION_29();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  ParticipantGridView.identifier(for:)(v8);
  OUTLINED_FUNCTION_115(v8, 1, v9);
  if (v13)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    (*(v11 + 32))(v0, v8, v9);
    OUTLINED_FUNCTION_4_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      (*(v11 + 16))(v5, v0, v9);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
      v14 = OUTLINED_FUNCTION_15_14();
      v15(v14);
      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd);
    }

    (*(v11 + 8))(v0, v9);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ParticipantGridView.VideoInfoCache.cacheKey(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Participant(0);
  specialized Collection.first.getter(*(a1 + *(v5 + 44)), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
    goto LABEL_7;
  }

  v6 = *&v4[*(v5 + 28)];
  if (!v6)
  {
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_7:
    v11 = *(a1 + *(v5 + 28));
    if (v11)
    {
      return outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v11);
    }

    return 0;
  }

  v7 = v6;
  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  v8 = [v7 normalizedValue];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t ParticipantGridView.VideoInfoCache.setVideoInfo(_:for:)(const void *a1, uint64_t a2)
{
  result = ParticipantGridView.VideoInfoCache.cacheKey(for:)(a2);
  if (v4)
  {
    memcpy(__dst, a1, sizeof(__dst));
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMd);
    Cache.subscript.setter();
    return swift_endAccess();
  }

  return result;
}

uint64_t ParticipantGridView.VideoInfoCache.update(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    return outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  v6 = *(v5 + 48);
  outlined consume of Participant.CopresenceInfo?(*&v4[*(v5 + 64)], *&v4[*(v5 + 64) + 8]);
  memcpy(v10, &v4[v6], sizeof(v10));
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4, v7);
  memcpy(__dst, &v10[16], 0x4BuLL);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  result = outlined destroy of Participant.MediaInfo(v10);
  if (__dst[0])
  {
    ParticipantGridView.VideoInfoCache.setVideoInfo(_:for:)(__dst, a1);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  return result;
}

uint64_t ParticipantGridView.VideoInfoCache.info(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  result = ParticipantGridView.VideoInfoCache.cacheKey(for:)(a1);
  if (v10)
  {
    v11 = result;
    v12 = v10;
    v13 = OBJC_IVAR____TtCC15ConversationKit19ParticipantGridViewP33_C3C0D7D8F62A84253427EC61D899943E14VideoInfoCache_videoInfoCache;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v13, v5);
    v20[0] = v11;
    v20[1] = v12;
    Cache.subscript.getter();

    result = (*(v6 + 8))(v8, v5);
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26 | (v27 << 16);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 74) = BYTE2(v19);
  return result;
}

uint64_t ParticipantGridView.VideoInfoCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit19ParticipantGridViewP33_C3C0D7D8F62A84253427EC61D899943E14VideoInfoCache_videoInfoCache;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id @nonobjc UIViewPropertyAnimator.init(duration:curve:animations:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = &block_descriptor_115;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDuration:a1 curve:v7 animations:a4];
  _Block_release(v7);
  return v8;
}

uint64_t outlined init with copy of ParticipantGridView.IdentifiableParticipantTile()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined init with take of ParticipantGridView.IdentifiableParticipantTile()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of ParticipantGridView.IdentifiableParticipantTile()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

id partial apply for closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:)()
{
  v1 = *(type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:)(v0 + v2, v3);
}

unint64_t lazy protocol witness table accessor for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle()
{
  result = lazy protocol witness table cache variable for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle;
  if (!lazy protocol witness table cache variable for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle);
  }

  return result;
}

void type metadata completion function for ParticipantGridView()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for ParticipantGridView.FullScreenFocusedParticipantInfo?, type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for ParticipantGridView.AnimationInfo?, type metadata accessor for ParticipantGridView.AnimationInfo);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ParticipantGridView.AnimationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ParticipantGridView.ParticipantTileInfo()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for CNKDeviceOrientation?, type metadata accessor for CNKDeviceOrientation);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ParticipantGridView.FullScreenFocusedParticipantInfo()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CNKDeviceOrientation(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t storeEnumTagSinglePayload for ParticipantGridView.Traits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t type metadata completion function for ParticipantGridView.AnimationInfo()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantGridView.MediaPipInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[24])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 4)
      {
        v4 = 4;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 5;
      if (v3 < 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantGridView.MediaPipInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void type metadata completion function for ParticipantGridView.VideoInfoCache()
{
  type metadata accessor for Cache<String, Participant.VideoInfo>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Cache<String, Participant.VideoInfo>()
{
  if (!lazy cache variable for type metadata for Cache<String, Participant.VideoInfo>)
  {
    v0 = type metadata accessor for Cache();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Cache<String, Participant.VideoInfo>);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit19ParticipantGridViewC23FrozenFrameOverlayState33_C3C0D7D8F62A84253427EC61D899943ELLO(uint64_t a1)
{
  if (*(a1 + 74) >> 6 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 74) >> 6;
  }
}

uint64_t getEnumTagSinglePayload for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
    {
      v5 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      v3 = vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1BC4CDBD0), xmmword_1BC4CDBE0);
      *v3.i8 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
      v4 = v3.i32[0] | (v2 >> 6) & 0xF8000000 | v3.i32[1];
      if (v4 > 0x80000000)
      {
        v5 = ~v4;
      }

      else
      {
        v5 = -1;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double storeEnumTagSinglePayload for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 75) = 1;
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
      *a1 = 0;
      *(a1 + 8) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFC10301FFFFLL | (((-a2 >> 14) & 0x7F) << 17) & 0xFFFFFFC103FFFFFFLL | (((-a2 >> 21) & 0x3F) << 26) & 0xFFFFFFC1FFFFFFFFLL | ((-a2 >> 27) << 33);
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 59) = 0u;
      return result;
    }

    *(a1 + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveProjectEnumData for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1)
{
  v2 = *(a1 + 72);
  result = a1 + 72;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

int8x16_t destructiveInjectEnumTag for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, unsigned int a2)
{
  if (a2 < 3)
  {
    v4 = *(a1 + 72);
    v3 = a1 + 72;
    v5 = *(v3 - 40) & 3;
    v6 = (v4 | (*(v3 + 2) << 16)) & 0x1010101;
    result = vandq_s8(*(v3 - 64), xmmword_1BC4CDBC0);
    *(v3 - 64) = result;
    *(v3 - 40) = v5;
    *v3 = v6;
    *(v3 + 2) = (v6 | (a2 << 22)) >> 16;
  }

  else
  {
    *a1 = a2 - 3;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 74) = -64;
    *(a1 + 72) = 0;
  }

  return result;
}

unint64_t type metadata completion function for ParticipantGridView.IdentifiableParticipantTile()
{
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ParticipantTile();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ParticipantTile()
{
  result = lazy cache variable for type metadata for ParticipantTile;
  if (!lazy cache variable for type metadata for ParticipantTile)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ParticipantTile);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(void *a1)
{
  v2 = [a1 normalizedValue];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

void partial apply for closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)()
{
  v1 = *(type metadata accessor for Participant(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v4 + *(v1 + 64));

  closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(v2, v3, v4, v5);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  if (((a10 >> 22) & 3) != 3)
  {
  }

  return result;
}

uint64_t outlined consume of ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  if (((a10 >> 22) & 3) != 3)
  {
  }

  return result;
}

uint64_t outlined assign with copy of ParticipantGridView.AnimationInfo?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return type metadata accessor for ParticipantView();
}

id UIButton.updateContentAlpha(_:)(double a1)
{
  v3 = v1;
  type metadata accessor for UIBackgroundConfiguration();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  UIButton.configuration.getter();
  v10 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    outlined destroy of TapInteractionHandler?(v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    return [v1 setAlpha_];
  }

  UIButton.Configuration.background.getter();
  UIBackgroundConfiguration.customView.getter();
  v12 = OUTLINED_FUNCTION_11_55();
  v13(v12);
  outlined destroy of TapInteractionHandler?(v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  if (!v2)
  {
    return [v1 setAlpha_];
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    return [v1 setAlpha_];
  }

  v15 = v14;
  [v1 setAlpha_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB990;
  *(inited + 32) = v15;
  v17 = v2;
  *(inited + 40) = [v3 imageView];
  *(inited + 48) = [v3 subtitleLabel];
  *(inited + 56) = [v3 titleLabel];
  for (i = 32; i != 64; i += 8)
  {
    [*(inited + i) setAlpha_];
  }

  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo6UIViewCSgMd);
}

void static UIButton.Configuration.base(title:symbol:shape:style:context:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v74) = a4;
  v78 = a2;
  v68 = a1;
  v11 = *(a5 + 24);
  v70 = *(a5 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v65 - v14;
  v15 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v65 - v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  v73 = &v65 - v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  v76 = &v65 - v28;
  outlined init with copy of SymbolImageDescribing?(a3, v82, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  v29 = v83;
  if (v83)
  {
    v30 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(v30 + 8))(v85, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v82);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v71 = static UIImage.symbolImage(for:)(v85);
    outlined destroy of SymbolImageDescription(v85);
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v82, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
    v71 = 0;
  }

  v79 = a7;
  v80 = a6;
  if (v11)
  {
    v69 = v11;
    v66 = v17;
    v67 = v15;
    v31 = *a5;
    v32 = *(a5 + 8);
    v33 = *(a5 + 16);
    v35 = *(a5 + 32);
    v34 = *(a5 + 40);
    v36 = *(a5 + 48);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v37 = (*static Defaults.shared + 336);
    v38 = *v37;
    v39 = (*v37)();
    if (v39)
    {
      v32 = v34;
    }

    else
    {
      v35 = v31;
    }

    if (v39)
    {
      v40 = v36;
    }

    else
    {
      v40 = v33;
    }

    v81 = v40;
    v41 = outlined copy of ButtonBackgroundStyle(v35, v32, v40);
    v42 = (v38)(v41);
    v43 = v69;
    if (v42)
    {
      v43 = v70;
    }

    v69 = v43;
    v44 = v80;
    v15 = v67;
    v45 = v66;
    v46 = v74;
  }

  else
  {
    v47 = objc_opt_self();
    v44 = a6;
    v35 = [v47 systemGrayColor];
    v69 = [v47 labelColor];
    v32 = 0;
    v81 = 64;
    v46 = v74;
    v45 = v17;
  }

  static UIButton.Configuration.filled()();
  v48 = v72;
  UIButton.Configuration.withShape(_:)(v46, v72);
  v49 = *(v45 + 8);
  v49(v22, v15);
  v50 = v73;
  v74 = v35;
  UIButton.Configuration.withBackgroundStyle(_:)(v35, v32, v81, v73);
  v51 = v48;
  v52 = v49;
  v49(v51, v15);
  v53 = v45;
  v54 = v75;
  v55 = v15;
  (*(v45 + 16))(v75, v50, v15);
  v70 = v32;
  if (v44)
  {
    OUTLINED_FUNCTION_6_66();
    UIButton.Configuration.imagePadding.setter();
  }

  else
  {
    OUTLINED_FUNCTION_5_75();
  }

  v56 = v52;
  v52(v50, v15);
  v57 = *(v53 + 32);
  v58 = v76;
  v57(v76, v54, v55);
  v59 = v71;
  UIButton.Configuration.image.setter();
  v60 = swift_allocObject();
  v61 = v69;
  *(v60 + 16) = v69;
  v62 = v61;
  v63 = v77;
  UIConfigurationColorTransformer.init(_:)();
  v64 = type metadata accessor for UIConfigurationColorTransformer();
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v64);
  UIButton.Configuration.imageColorTransformer.setter();
  if (v78)
  {
    UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)(v62, v80, v79);
    OUTLINED_FUNCTION_13_46();

    v56(v58, v55);
  }

  else
  {

    OUTLINED_FUNCTION_13_46();
    v57(v79, v58, v55);
  }
}

void UIButton.Configuration.withBackgroundStyle(_:)(id a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for _Glass._GlassVariant();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v12 = type metadata accessor for UIBackgroundConfiguration();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  (*(v14 + 16))(a4, v5);
  switch(a3 >> 6)
  {
    case 1:
      static UIBackgroundConfiguration.clear()();
      UIButton.Configuration.background.setter();
      v17 = a1;
      UIButton.Configuration.baseBackgroundColor.setter();
      break;
    case 2:
      if (_UISolariumEnabled())
      {
        v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        static _Glass._GlassVariant.controlCenter.getter();
        v39[3] = type metadata accessor for _Glass();
        v39[4] = MEMORY[0x1E69DC388];
        __swift_allocate_boxed_opaque_existential_1(v39);
        _Glass.init(_:smoothness:)();
        UIView._background.setter();
        v19 = [v18 layer];
        [v19 setMasksToBounds_];

        v20 = v18;
        v21 = OUTLINED_FUNCTION_14_36();
        UIBackgroundConfiguration.customView.setter();
        v22 = OUTLINED_FUNCTION_10_49();
        v21(v22);
        if (!a1)
        {
          v23 = [objc_opt_self() clearColor];
        }

        v24 = a1;
        v25 = OUTLINED_FUNCTION_14_36();
        UIBackgroundConfiguration.backgroundColor.setter();
        v26 = OUTLINED_FUNCTION_10_49();
        v25(v26);
        goto LABEL_16;
      }

      break;
    case 3:
      return;
    default:
      switch(a3)
      {
        case 1u:
          a1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          v31 = [a1 contentView];
          v32 = [objc_opt_self() tintColor];
          [v31 setBackgroundColor_];

          v33 = objc_allocWithZone(MEMORY[0x1E69DD298]);
          v28 = a2;
          v29 = [v33 initWithEffect_];
          [v29 setAutoresizingMask_];
          v30 = [a1 contentView];
          [v30 addSubview_];
          goto LABEL_14;
        case 2u:
          outlined copy of ButtonBackgroundBlurStyle(a1, a2, 2);
          break;
        case 3u:
          v27 = objc_opt_self();
          if (one-time initialization token for backgroundBlurEffect != -1)
          {
            swift_once();
          }

          v28 = [v27 _effectForBlurEffect_vibrancyStyle_];
          a1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          v29 = [a1 contentView];
          v30 = [objc_opt_self() tintColor];
          [v29 setBackgroundColor_];
LABEL_14:

          break;
        default:
          a1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          v15 = [a1 contentView];
          v16 = [objc_opt_self() tintColor];
          [v15 setBackgroundColor_];

          break;
      }

      v20 = a1;
      v34 = OUTLINED_FUNCTION_14_36();
      UIBackgroundConfiguration.customView.setter();
      v35 = OUTLINED_FUNCTION_10_49();
      v34(v35);
      v36 = [objc_opt_self() clearColor];
      v37 = OUTLINED_FUNCTION_14_36();
      UIBackgroundConfiguration.backgroundColor.setter();
      v38 = OUTLINED_FUNCTION_10_49();
      v37(v38);
LABEL_16:

      break;
  }
}

id UIButton.init(imageNamed:supressesHairlineThickening:)(uint64_t a1, char a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = specialized UIButton.init(imageNamed:supressesHairlineThickening:)(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t UIButton.add(target:action:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of SymbolImageDescribing?(a1, v13, &_sypSgMd);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_8();
    (*(v7 + 16))(v9 - v8);
    _bridgeAnythingToObjectiveC<A>(_:)();
    v10 = OUTLINED_FUNCTION_11_55();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v3 = 0;
  }

  [v2 addTarget:v3 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t UIButton.title.getter()
{
  v1 = [v0 titleForState_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void key path setter for UIButton.title : UIButton(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  UIButton.title.setter(v1, v2);
}

void (*UIButton.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = UIButton.title.getter();
  a1[1] = v3;
  return UIButton.title.modify;
}

void UIButton.title.modify(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_9_55();
    outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v2, v3, v4, v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_55();

    outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v6, v7, v8, v9);
  }
}

id UIButton.image.getter()
{
  v1 = [v0 imageForState_];

  return v1;
}

void key path setter for UIButton.image : UIButton(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UIButton.image.setter(v1);
}

void UIButton.image.setter(void *a1)
{
  [v1 setImage:a1 forState:0];
}

void (*UIButton.image.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 imageForState_];
  return UIButton.image.modify;
}

void UIButton.image.modify(id *a1)
{
  v1 = *a1;
  [a1[1] setImage_forState_];
}

uint64_t UIButton.Configuration.withShape(_:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1;
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  (*(v13 + 16))(a2, v3);
  v14 = *(v8 + 104);
  if (v5)
  {
    v14(v12, *MEMORY[0x1E69DC508], v6);
    return UIButton.Configuration.cornerStyle.setter();
  }

  else
  {
    v14(v12, *MEMORY[0x1E69DC4F0], v6);
    UIButton.Configuration.cornerStyle.setter();
    v16 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    return v16(v17, 0);
  }
}

uint64_t UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)@<X0>(void *a1@<X2>, unsigned __int8 a2@<W3>, uint64_t a3@<X8>)
{
  v43 = a1;
  v5 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v45 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_1();
  v44 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  v23 = *(v22 + 16);
  v46 = a3;
  v23(a3, v3);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  if (v5 == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    v25 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v26 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
    v27 = *MEMORY[0x1E69DDD80];
    v28 = v25;
    *(inited + 40) = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(v27, 0x403E000000000000, 0);
    v29 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v26;
    *(inited + 72) = v29;
    *(inited + 104) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    v30 = v43;
    *(inited + 80) = v43;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v33 = swift_initStackObject();
    v34 = MEMORY[0x1E69DB648];
    *(v33 + 16) = xmmword_1BC4BA940;
    v35 = *v34;
    *(v33 + 32) = *v34;
    v36 = objc_opt_self();
    v37 = *MEMORY[0x1E69DDD80];
    v38 = v35;
    v39 = [v36 preferredFontForTextStyle_];
    isa = UIFont.withTraits(_:)(0x8002u).super.isa;

    v41 = UIFont.caseSensitive()().super.isa;
    *(v33 + 64) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
    *(v33 + 40) = v41;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  }

  Dictionary.init(dictionaryLiteral:)();
  AttributeContainer.init(_:)();
  AttributedString.setAttributes(_:)();
  (*(v44 + 8))(v14, v45);
  (*(v17 + 16))(v9, v21, v15);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  UIButton.Configuration.attributedTitle.setter();
  return (*(v17 + 8))(v21, v15);
}

uint64_t UIButton.Configuration.withPadding(shape:context:)@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  (*(v6 + 16))(a2, v3);
  if (!v5)
  {
    return OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_6_66();
  return UIButton.Configuration.imagePadding.setter();
}

uint64_t static UIButton.Configuration.base(title:image:shape:style:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v68 = a6;
  v63 = a3;
  v66 = a2;
  v58 = a1;
  v10 = *(a5 + 24);
  v11 = *(a5 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v56[-v14];
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v70 = v15;
  v71 = v16;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v56[-v24];
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  v67 = a7;
  v64 = &v56[-v26];
  v60 = v27;
  if (v10)
  {
    v59 = v11;
    v61 = v10;
    LODWORD(v62) = a4;
    v28 = *a5;
    v29 = *(a5 + 8);
    v57 = *(a5 + 16);
    v31 = *(a5 + 32);
    v30 = *(a5 + 40);
    v32 = *(a5 + 48);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v33 = (*static Defaults.shared + 336);
    v34 = *v33;
    if ((*v33)())
    {
      v28 = v31;
      v29 = v30;
    }

    else
    {
      v32 = v57;
    }

    v35 = outlined copy of ButtonBackgroundStyle(v28, v29, v32);
    v36 = (v34)(v35);
    v37 = v61;
    if (v36)
    {
      v37 = v59;
    }

    v59 = v37;
    LOBYTE(a4) = v62;
  }

  else
  {
    v38 = objc_opt_self();
    v28 = [v38 systemGrayColor];
    v59 = [v38 labelColor];
    v29 = 0;
    v32 = 64;
  }

  static UIButton.Configuration.filled()();
  UIButton.Configuration.withShape(_:)(a4, v22);
  v39 = v71;
  v40 = *(v71 + 8);
  v41 = v19;
  v42 = v70;
  v40(v41, v70);
  v43 = v69;
  v61 = v29;
  UIButton.Configuration.withBackgroundStyle(_:)(v28, v29, v32, v69);
  v40(v22, v42);
  v44 = v60;
  (*(v39 + 16))(v60, v43, v42);
  v45 = v32;
  v62 = v28;
  if (v68)
  {
    OUTLINED_FUNCTION_6_66();
    UIButton.Configuration.imagePadding.setter();
  }

  else
  {
    OUTLINED_FUNCTION_5_75();
  }

  v46 = v70;
  v40(v69, v70);
  v47 = *(v71 + 32);
  v48 = v64;
  v47(v64, v44, v46);
  v49 = v63;
  UIButton.Configuration.image.setter();
  v50 = swift_allocObject();
  v51 = v59;
  *(v50 + 16) = v59;
  v52 = v51;
  v53 = v65;
  UIConfigurationColorTransformer.init(_:)();
  v54 = type metadata accessor for UIConfigurationColorTransformer();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
  UIButton.Configuration.imageColorTransformer.setter();
  if (v66)
  {
    UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)(v52, v68, v67);
    outlined consume of ButtonBackgroundStyle(v62, v61, v45);

    return (v40)(v48, v46);
  }

  else
  {

    outlined consume of ButtonBackgroundStyle(v62, v61, v45);
    return (v47)(v67, v48, v46);
  }
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSaySo18NSLayoutConstraintCGMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit014CallControlsInC15ButtonViewModel_pSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo18NSLayoutConstraintCSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo6UIViewCSgMd);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit26ParticipantsViewController_pMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(type metadata accessor for Participant);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo18NSAttributedStringCSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit0A12ControlsTypeOSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(MEMORY[0x1E69695A8]);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8NSStringCSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo9CNContactCSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit015CallControlsPreC15ButtonViewModel_pMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8TUHandleCSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(type metadata accessor for RecentsCallItem);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo18UIFocusEnvironment_pSgMd);
}

{
  type metadata accessor for NSNotificationName(0);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_SStMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo16UIViewControllerCSgMd);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8UIActionCSgMd);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(void (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

void outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0]();

  [a4 setTitle:v6 forState:a3];
}

id specialized UIButton.init(imageNamed:supressesHairlineThickening:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v11, v9);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v14 = v12;
  v15 = specialized static UIImage.image(named:)(v11, v13, a4, a5);
  v16 = v15;
  if (a2)
  {
    v17 = [v15 _imageThatSuppressesAccessibilityHairlineThickening];

    v16 = v17;
  }

  [v14 setImage:v16 forState:0];

  (*(v8 + 8))(v11, a4);
  return v14;
}

uint64_t outlined init with copy of SymbolImageDescribing?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_20_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id LinkDetailActionCollectionViewCell.accessoryImageView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t key path getter for LinkDetailActionCollectionViewCell.linkDetailImage : LinkDetailActionCollectionViewCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LinkDetailActionCollectionViewCell.linkDetailImage : LinkDetailActionCollectionViewCell(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void *LinkDetailActionCollectionViewCell.linkDetailImage.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LinkDetailActionCollectionViewCell.linkDetailImage.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  LinkDetailActionCollectionViewCell.applyValues()();
}

uint64_t (*LinkDetailActionCollectionViewCell.linkDetailImage.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return LinkDetailActionCollectionViewCell.linkDetailImage.modify;
}

uint64_t LinkDetailActionCollectionViewCell.linkDetailImage.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return LinkDetailActionCollectionViewCell.applyValues()();
  }

  return result;
}

Swift::Void __swiftcall LinkDetailActionCollectionViewCell.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LinkDetailActionCollectionViewCell();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(0);
}

uint64_t LinkDetailActionCollectionViewCell.applyValues()()
{
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_1();
  v65 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v64 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v55 - v7;
  type metadata accessor for UICellAccessory.Placement();
  OUTLINED_FUNCTION_1();
  v58 = v9;
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  type metadata accessor for UICellAccessory.CustomViewConfiguration();
  OUTLINED_FUNCTION_1();
  v62 = v14;
  v63 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v61 = v16 - v15;
  v17 = type metadata accessor for UIListContentConfiguration.TextProperties();
  OUTLINED_FUNCTION_1();
  v55 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v55 - v24;
  v26 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (v33)
  {
    v56 = v33;
    v57 = v1;
    v34 = [v0 tintColor];
    MEMORY[0x1BFB216D0](v66);
    if (v67)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
      v35 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v25, v35 ^ 1u, 1, v26);
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
      {
        (*(v28 + 32))(v32, v25, v26);
        UIListContentConfiguration.textProperties.getter();
        v36 = UIListContentConfiguration.TextProperties.color.getter();

        (*(v55 + 8))(v22, v17);
        UIListContentConfiguration.directionalLayoutMargins.setter();
        v67 = v26;
        v68 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
        (*(v28 + 16))(boxed_opaque_existential_1, v32, v26);
        MEMORY[0x1BFB216E0](v66);
        (*(v28 + 8))(v32, v26);
        v34 = v36;
LABEL_10:
        v39 = LinkDetailActionCollectionViewCell.accessoryImageView.getter();
        v40 = v56;
        [v39 setImage_];

        v41 = *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView);
        v42 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48));
        v43 = *MEMORY[0x1E69DBF28];
        v44 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v44 - 8) + 104))(v12, v43, v44);
        *v42 = OUTLINED_FUNCTION_14_0;
        v42[1] = 0;
        (*(v58 + 104))(v12, *MEMORY[0x1E69DBF60], v59);
        v45 = type metadata accessor for UICellAccessory.LayoutDimension();
        __swift_storeEnumTagSinglePayload(v60, 1, 1, v45);
        v46 = v41;
        v47 = v34;
        v48 = v61;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        v49 = v64;
        static UICellAccessory.customView(configuration:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
        v50 = v65;
        v51 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1BC4BA940;
        v53 = v52 + v51;
        v54 = v57;
        (*(v50 + 16))(v53, v49, v57);
        UICollectionViewListCell.accessories.setter();

        (*(v50 + 8))(v49, v54);
        return (*(v62 + 8))(v48, v63);
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v66, &_s5UIKit22UIContentConfiguration_pSgMd);
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
    }

    outlined destroy of TapInteractionHandler?(v25, &_s5UIKit26UIListContentConfigurationVSgMd);
    goto LABEL_10;
  }

  return UICollectionViewListCell.accessories.setter();
}

id LinkDetailActionCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id LinkDetailActionCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage) = 0;
  v5 = type metadata accessor for LinkDetailActionCollectionViewCell();
  v1 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id LinkDetailActionCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LinkDetailActionCollectionViewCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LinkDetailActionCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LinkDetailActionCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkDetailActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LocalParticipantView.controlsBottomAnchor.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView) bottomAnchor];

  return v1;
}

id LocalParticipantView.addIndicatorView(_:)(void *a1)
{
  [a1 removeFromSuperview];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);

  return [v3 addSubview_];
}

Swift::Int LocalParticipantLongPressAction.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalParticipantLongPressAction()
{
  Hasher.init(_seed:)();
  LocalParticipantLongPressAction.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LocalParticipantView.zoomButtonLayoutGuide.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 568))();
}

void *LocalParticipantView.buttonShelfHost.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LocalParticipantView.buttonShelfHost.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for LocalParticipantView.delegate : LocalParticipantView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for LocalParticipantView.delegate : LocalParticipantView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t LocalParticipantView.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate);
  OUTLINED_FUNCTION_3_5();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t LocalParticipantView.delegate.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_28_3();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalParticipantAction(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t LocalParticipantView.dragEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t LocalParticipantView.dragEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled;
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LocalParticipantView.blurEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for LocalParticipantView.blurEnabled : LocalParticipantView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LocalParticipantView.blurEnabled.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled;
  OUTLINED_FUNCTION_4_5();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x300))(*(v1 + v3));
  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(*(v1 + v3), 8);
}

uint64_t LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ButtonShelfView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2 + v11, v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  }

  (*(v8 + 32))(v10, v6, v7);
  switch(a2)
  {
    case 7:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.memojiIsEnabled.setter();
      goto LABEL_10;
    case 8:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.cameraBlurIsEnabled.setter();
      goto LABEL_10;
    case 10:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.cinematicFramingIsEnabled.setter();
      goto LABEL_10;
    case 14:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.reactionEffectGestureIsEnabled.setter();
      goto LABEL_10;
    case 15:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.studioLightIsEnabled.setter();
      goto LABEL_10;
    case 16:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.backgroundReplacementIsEnabled.setter();
LABEL_10:

      break;
    default:
      return (*(v8 + 8))(v10, v7);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t LocalParticipantView.blurEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.backgroundReplacementEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for LocalParticipantView.backgroundReplacementEnabled : LocalParticipantView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LocalParticipantView.backgroundReplacementEnabled.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled;
  OUTLINED_FUNCTION_19_1();
  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(*(v0 + v1), 16);
}

uint64_t LocalParticipantView.backgroundReplacementEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.shouldAddOverlayBlur.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for LocalParticipantView.shouldAddOverlayBlur : LocalParticipantView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void LocalParticipantView.shouldAddOverlayBlur.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 != v2)
  {
    v5 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView, closure #1 in LocalParticipantView.overlayBlurView.getter);
    isa = v5;
    if (v4)
    {
      [v1 addSubview_];

      v7 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BC4BA7F0;
      v9 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView;
      v10 = [*&v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView] topAnchor];
      v11 = [v1 topAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v8 + 32) = v12;
      v13 = [*&v1[v9] bottomAnchor];
      v14 = [v1 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      *(v8 + 40) = v15;
      v16 = [*&v1[v9] trailingAnchor];
      v17 = [v1 trailingAnchor];
      v18 = [v16 constraintEqualToAnchor_];

      *(v8 + 48) = v18;
      v19 = [*&v1[v9] leadingAnchor];
      v20 = [v1 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v8 + 56) = v21;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 activateConstraints_];
    }

    else
    {
      [(objc_class *)v5 removeFromSuperview];
    }
  }
}

uint64_t LocalParticipantView.shouldAddOverlayBlur.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

id closure #1 in LocalParticipantView.overlayBlurView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD370]) initWithPrivateStyle_];
  if (!v0)
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

uint64_t LocalParticipantView.shouldAddGlassDimmingView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for LocalParticipantView.shouldAddGlassDimmingView : LocalParticipantView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void LocalParticipantView.shouldAddGlassDimmingView.didset(char a1)
{
  if (_UISolariumEnabled())
  {
    v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
    swift_beginAccess();
    if (*(v1 + v3) != (a1 & 1))
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      aBlock[4] = partial apply for closure #1 in LocalParticipantView.shouldAddGlassDimmingView.didset;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_95;
      v6 = _Block_copy(aBlock);
      v7 = v1;

      [v4 animateWithDuration:v6 animations:0.3];
      _Block_release(v6);
    }
  }
}

void closure #1 in LocalParticipantView.shouldAddGlassDimmingView.didset(uint64_t a1)
{
  v2 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, closure #1 in LocalParticipantView.glassDimmingView.getter);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  swift_beginAccess();
  v4 = 0.0;
  if (*(a1 + v3))
  {
    v4 = 1.0;
  }

  [v2 setAlpha_];
}

id LocalParticipantView.overlayBlurView.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t LocalParticipantView.shouldAddGlassDimmingView.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void LocalParticipantView.shouldAddOverlayBlur.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

id closure #1 in LocalParticipantView.glassDimmingView.getter()
{
  type metadata accessor for GlassDimmingView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static GlassDimmingView.videoMatrix.getter();
  dispatch thunk of GlassDimmingView.colorMatrix.setter();
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setUserInteractionEnabled_];

  return v0;
}

uint64_t LocalParticipantView.requiresControlsHidden.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for LocalParticipantView.requiresControlsHidden : LocalParticipantView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void LocalParticipantView.requiresControlsHidden.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  OUTLINED_FUNCTION_4_5();
  v3 = 1.0;
  if (*(v0 + v2))
  {
    v3 = 0.0;
  }

  [v1 setAlpha_];
  v4 = LocalParticipantView.hidesGradientOverlayView.getter();
  ParticipantView.updateGradientOverlayView(isHidden:alpha:)(v4 & 1, 0, 1);
}

uint64_t LocalParticipantView.hidesGradientOverlayView.getter()
{
  v1 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))() != 3)
  {
    return 1;
  }

  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t LocalParticipantView.requiresControlsHidden.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.requiresViewHidden.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for LocalParticipantView.requiresViewHidden : LocalParticipantView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LocalParticipantView.blurEnabled.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_6_0();
  *(v3 + v6) = a1;
  return a3(v7);
}

Swift::Void __swiftcall LocalParticipantView.updateHiding()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
  OUTLINED_FUNCTION_4_0();
  if (v1[v2])
  {
    v3 = 1;
  }

  else
  {
    v4 = &v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate];
    OUTLINED_FUNCTION_4_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      v3 = (*(v5 + 40))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
    }
  }

  [v1 setHidden_];
}

uint64_t LocalParticipantView.requiresViewHidden.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

BOOL LocalParticipantView.canSetControlButtonAlphaDuringRotation.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v3 + 592))() == 2;
}

void LocalParticipantView.controlsStyle.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GlassDimmingView.GradientValues();
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x250);
  if ((v10)(v7) != a1)
  {
    (*((*v9 & *v8) + 0x258))(a1);
    v11 = LocalParticipantView.hidesGradientOverlayView.getter();
    v12 = 1;
    ParticipantView.updateGradientOverlayView(isHidden:alpha:)(v11 & 1, 0, 1);
    if ((*(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) & 1) == 0)
    {
      v12 = v10() == 3;
    }

    v13 = LocalParticipantView.shouldAddGlassDimmingView.setter(v12);
    v14 = (v10)(v13);
    if (v14 == 2)
    {
      v19 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, closure #1 in LocalParticipantView.glassDimmingView.getter);
      static GlassDimmingView.GradientValues.bottomExpandedMePip.getter();
      dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

      v20 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView);
      static GlassDimmingView.GradientValues.topExpandedMePip.getter();
    }

    else
    {
      if (v14 != 3)
      {
        return;
      }

      v15 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, closure #1 in LocalParticipantView.glassDimmingView.getter);
      v16 = objc_opt_self();
      v17 = [v16 currentDevice];
      v18 = [v17 userInterfaceIdiom];

      if (v18)
      {
        static GlassDimmingView.GradientValues.bottomLargeVideo.getter();
      }

      else
      {
        static GlassDimmingView.GradientValues.topSmallVideo.getter();
      }

      dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

      v20 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView);
      v21 = [v16 currentDevice];
      v22 = [v21 userInterfaceIdiom];

      if (v22)
      {
        static GlassDimmingView.GradientValues.topLargeVideo.getter();
      }

      else
      {
        static GlassDimmingView.GradientValues.bottomSmallVideo.getter();
      }
    }

    dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
  }
}

unint64_t LocalParticipantView.supportsRotation.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 32) & 1;
}

uint64_t LocalParticipantView.supportsRotation.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if ((BYTE4(result) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

uint64_t (*LocalParticipantView.supportsRotation.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 32) & 1;
  return LocalParticipantView.supportsRotation.modify;
}

unint64_t LocalParticipantView.supportsCameraBlur.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 8) & 1;
}

unint64_t LocalParticipantView.supportsCameraBlur.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if (((result >> 8) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

unint64_t (*LocalParticipantView.supportsCameraBlur.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 8) & 1;
  return LocalParticipantView.supportsCameraBlur.modify;
}

unint64_t LocalParticipantView.capabilitiesSupportsEffects.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 16) & 1;
}

uint64_t key path setter for LocalParticipantView.hudRecipe : LocalParticipantView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v6 - v3, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  return LocalParticipantView.hudRecipe.setter(v4);
}

uint64_t LocalParticipantView.hudRecipe.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v8 - v4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v6) + 0x1B0))(v5);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit0A14ControlsRecipeVSgMd);
}

uint64_t LocalParticipantView.hudRecipe.modify(void *a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  (*(v5 + 424))();
  return OUTLINED_FUNCTION_28_3();
}

void LocalParticipantView.hudRecipe.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(*(a1 + 16), v2, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    LocalParticipantView.hudRecipe.setter(v2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  else
  {
    LocalParticipantView.hudRecipe.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t LocalParticipantView.isInComingCall.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 664))() & 1;
}

uint64_t LocalParticipantView.isInComingCall.setter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 672))();
}

uint64_t (*LocalParticipantView.isInComingCall.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 664))();
  OUTLINED_FUNCTION_18_2(v3);
  return LocalParticipantView.isInComingCall.modify;
}

uint64_t LocalParticipantView.isInComingCall.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_2(a1);
  OUTLINED_FUNCTION_5_18();
  return (*(v1 + 672))();
}

uint64_t LocalParticipantView.isOutgoingCall.getter()
{
  v0 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  (*(v5 + 712))();
  v6 = *(v4 + 9);
  outlined destroy of LocalParticipantControlsView.ViewModel(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  return v6;
}

uint64_t LocalParticipantView.isOutgoingCall.setter(char a1)
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 728))(v6);
  *(v4 + 9) = a1;
  return v3(v6, 0);
}

uint64_t (*LocalParticipantView.isOutgoingCall.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  v1 = LocalParticipantView.isOutgoingCall.getter();
  OUTLINED_FUNCTION_18_2(v1);
  return LocalParticipantView.isOutgoingCall.modify;
}

uint64_t LocalParticipantView.isInRoster.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for LocalParticipantView.isInRoster : LocalParticipantView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LocalParticipantView.shouldAddOverlayBlur.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t LocalParticipantView.isInRoster.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    return LocalParticipantView.isInRosterDidChange()();
  }

  return result;
}

uint64_t LocalParticipantView.isInRosterDidChange()()
{
  v1 = v0;
  v2 = type metadata accessor for _UICornerMaskingConfiguration();
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v0 layer];
  closure #1 in LocalParticipantView.isInRosterDidChange()(v6, v1);

  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
  LocalParticipantView.participantViewCornerRadius.getter();
  v9 = v8;
  v10 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  swift_beginAccess();
  *(v7 + v10) = v9;
  ParticipantView.customCornerRadius.didset();
  LocalParticipantView.participantViewConcentricCornerStyle.getter();
  ParticipantView.concentricCornerStyle.setter(v5);
  v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  return ParticipantView.isInRoster.setter(*(v1 + v11));
}

uint64_t LocalParticipantView.isInRoster.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t LocalParticipantView.cinematicFramingIsAvailable.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 640))() & 1;
}

uint64_t LocalParticipantView.cinematicFramingIsAvailable.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v3 += 80;
  v4 = *v3;
  result = (*v3)();
  if ((result & 1) != v2)
  {
    v4();
    OUTLINED_FUNCTION_137();
    return (*(v6 + 648))(v7 & 0x1010101010100 | a1 & 1);
  }

  return result;
}

uint64_t (*LocalParticipantView.cinematicFramingIsAvailable.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = (*(v2 + 640))() & 1;
  return LocalParticipantView.cinematicFramingIsAvailable.modify;
}

uint64_t LocalParticipantView.cinematicFramingIsEnabled.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 784))() & 1;
}

uint64_t LocalParticipantView.cinematicFramingIsEnabled.setter()
{
  OUTLINED_FUNCTION_9_56();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 792))();
  OUTLINED_FUNCTION_13_2();
  v3 = (*((*v0 & v2) + 0x310))() & 1;

  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(v3, 10);
}

uint64_t (*LocalParticipantView.cinematicFramingIsEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 784))();
  OUTLINED_FUNCTION_18_2(v2);
  return LocalParticipantView.cinematicFramingIsEnabled.modify;
}

unint64_t LocalParticipantView.supportsReactionGestures.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 40) & 1;
}

unint64_t LocalParticipantView.supportsReactionGestures.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if (((result >> 40) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

unint64_t (*LocalParticipantView.supportsReactionGestures.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = (((*(v2 + 640))() >> 32) >> 8) & 1;
  return LocalParticipantView.supportsReactionGestures.modify;
}

unint64_t LocalParticipantView.supportsStudioLight.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 48) & 1;
}

unint64_t LocalParticipantView.supportsStudioLight.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if ((HIWORD(result) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

unint64_t (*LocalParticipantView.supportsStudioLight.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 48) & 1;
  return LocalParticipantView.supportsStudioLight.modify;
}

uint64_t LocalParticipantView.reactionEffectGestureIsEnabled.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 808))() & 1;
}

uint64_t LocalParticipantView.reactionEffectGestureIsEnabled.setter()
{
  OUTLINED_FUNCTION_9_56();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 816))();
  OUTLINED_FUNCTION_13_2();
  v3 = (*((*v0 & v2) + 0x328))() & 1;

  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(v3, 14);
}

uint64_t (*LocalParticipantView.reactionEffectGestureIsEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 808))();
  OUTLINED_FUNCTION_18_2(v2);
  return LocalParticipantView.reactionEffectGestureIsEnabled.modify;
}

uint64_t LocalParticipantView.studioLightIsEnabled.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 832))() & 1;
}

uint64_t LocalParticipantView.studioLightIsEnabled.setter()
{
  OUTLINED_FUNCTION_9_56();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 840))();
  OUTLINED_FUNCTION_13_2();
  v3 = (*((*v0 & v2) + 0x340))() & 1;

  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(v3, 15);
}

uint64_t (*LocalParticipantView.studioLightIsEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 832))();
  OUTLINED_FUNCTION_18_2(v2);
  return LocalParticipantView.studioLightIsEnabled.modify;
}

unint64_t LocalParticipantView.cameraFlipButtonIsAvailable.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 24) & 1;
}

unint64_t LocalParticipantView.cameraFlipButtonIsAvailable.setter(char a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  result = (*(v2 + 920))();
  if (result)
  {
    OUTLINED_FUNCTION_137();
    v4 += 80;
    v5 = *v4;
    result = (*v4)();
    if (((result >> 24) & 1) != (a1 & 1))
    {
      v5();
      OUTLINED_FUNCTION_137();
      v7 = OUTLINED_FUNCTION_38_17(v6);
      return v8(v7);
    }
  }

  return result;
}

unint64_t (*LocalParticipantView.cameraFlipButtonIsAvailable.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 24) & 1;
  return LocalParticipantView.cameraFlipButtonIsAvailable.modify;
}

__n128 LocalParticipantView.aspectRatio.getter@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio);
  OUTLINED_FUNCTION_4_0();
  v3 = *(v1 + 32);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 LocalParticipantView.aspectRatio.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio);
  OUTLINED_FUNCTION_3_5();
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t LocalParticipantView.localParticipantVideoOrientation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t LocalParticipantView.localParticipantVideoOrientation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation;
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return result;
}

double LocalParticipantView.shelfPiPControlsAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

double key path getter for LocalParticipantView.shelfPiPControlsAlpha : LocalParticipantView@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void LocalParticipantView.shelfPiPControlsAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  LocalParticipantView.shelfPiPControlsAlpha.didset();
}

void LocalParticipantView.shelfPiPControlsAlpha.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  OUTLINED_FUNCTION_4_5();
  [v2 setAlpha_];
  [*(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText) setAlpha_];
  if (_UISolariumEnabled())
  {
    OUTLINED_FUNCTION_2_96();
    v6 = LocalParticipantView.overlayBlurView.getter(v4, v5);
    [v6 setAlpha_];
  }
}

uint64_t LocalParticipantView.shelfPiPControlsAlpha.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.blurEnabled.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t LocalParticipantView.shouldUseConcentricRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return Features.isICUIRedesignEnabled.getter() & 1;
}

uint64_t LocalParticipantView.videoMessagingState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for LocalParticipantView.videoMessagingState : LocalParticipantView@<X0>(_BYTE *a1@<X8>)
{
  result = LocalParticipantView.videoMessagingState.getter();
  *a1 = result;
  return result;
}

uint64_t LocalParticipantView.videoMessagingState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*LocalParticipantView.videoMessagingState.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = static Published.subscript.modify();
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t LocalParticipantView.$videoMessagingState.getter()
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LocalParticipantView.$videoMessagingState : LocalParticipantView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return LocalParticipantView.$videoMessagingState.setter(v5);
}

uint64_t LocalParticipantView.$videoMessagingState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*LocalParticipantView.$videoMessagingState.modify())(uint64_t a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_18_7(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  v0[4] = v2;
  v3 = *(v2 - 8);
  v0[5] = v3;
  v4 = *(v3 + 64);
  v0[6] = __swift_coroFrameAllocStub(v4);
  v0[7] = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocalParticipantView.$videoMessagingState.modify;
}

void LocalParticipantView.$videoMessagingState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    LocalParticipantView.$videoMessagingState.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    LocalParticipantView.$videoMessagingState.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

char *LocalParticipantView.init(isInRoster:supportsRotation:supportsCameraBlur:supportsReactions:supportsReactionGestures:supportsStudioLight:supportsCameraFlip:supportsMemojiPicker:)(char a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8)
{
  v9 = v8;
  v89 = a7;
  v90 = a3;
  v86 = a6;
  v87 = a5;
  v95 = a4;
  v88 = a2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  OUTLINED_FUNCTION_1();
  v93 = v14;
  v94 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_15(v16, v84);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  v27 = objc_allocWithZone(type metadata accessor for ParticipantView());
  *&v8[v26] = OUTLINED_FUNCTION_32_15();
  v28 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  *&v9[v28] = [objc_allocWithZone(type metadata accessor for LocalParticipantControlsView(0)) init];
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost] = 0;
  v29 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  v30 = type metadata accessor for ButtonShelfView();
  __swift_storeEnumTagSinglePayload(&v9[v29], 1, 1, v30);
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel] = 0;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur] = 0;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView] = 0;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel] = 0;
  v31 = &v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[32] = 1;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation] = 1;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha] = 0x3FF0000000000000;
  v32 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState;
  LOBYTE(v96[0]) = 0;
  Published.init(initialValue:)();
  v33 = *(v22 + 32);
  v92 = v20;
  v33(&v9[v32], v25, v20);
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster] = a1;
  v97.receiver = v9;
  v97.super_class = ObjectType;
  v85 = ObjectType;
  v34 = objc_msgSendSuper2(&v97, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v35 = one-time initialization token for shared;
  v36 = v34;
  if (v35 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v37 = static Defaults.shared;
  v38 = (*(*static Defaults.shared + 208))();
  if (static Platform.current.getter() == 2)
  {
    a8 = (*(*v37 + 200))();
  }

  v39 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  v40 = *&v36[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView];
  v41 = MEMORY[0x1E69E7D40];
  v42 = *((*MEMORY[0x1E69E7D40] & *v40) + 0x288);
  v43 = 0x1000000000000;
  if ((v86 & 1) == 0)
  {
    v43 = 0;
  }

  v44 = 0x10000000000;
  if ((v87 & 1) == 0)
  {
    v44 = 0;
  }

  v45 = 0x100000000;
  if ((v88 & 1) == 0)
  {
    v45 = 0;
  }

  v46 = 0x1000000;
  if ((v89 & 1) == 0)
  {
    v46 = 0;
  }

  if (a8)
  {
    v47 = 0x10000;
  }

  else
  {
    v47 = 0;
  }

  v48 = 256;
  if ((v90 & 1) == 0)
  {
    v48 = 0;
  }

  v49 = (v48 | v45 | v44 | v43 | v46) & 0xFFFFFFFFFFFFFFFELL | v38 & 1;
  v50 = v40;
  v42(v49 | v47);

  v51 = [v36 layer];
  [v51 setShadowPathIsBounds_];

  v52 = [objc_opt_self() clearColor];
  [v36 setBackgroundColor_];

  LocalParticipantView.isInRosterDidChange()();
  v53 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  if ((*(*v37 + 592))([v36 addSubview_]))
  {
    v54 = *&v36[v53] + OBJC_IVAR____TtC15ConversationKit15ParticipantView_delegate;
    OUTLINED_FUNCTION_3_5();
    *(v54 + 8) = &protocol witness table for LocalParticipantView;
    swift_unknownObjectWeakAssign();
  }

  if (_UISolariumEnabled())
  {
    v55 = *&v36[v53];
    OUTLINED_FUNCTION_2_96();
    v57 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, v56);
    [v55 addSubview_];

    v58 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView;
    v59 = *&v36[v53];
    v60 = *MEMORY[0x1E69DC5C0];
    v61 = *(MEMORY[0x1E69DC5C0] + 8);
    v62 = *(MEMORY[0x1E69DC5C0] + 16);
    v63 = *(MEMORY[0x1E69DC5C0] + 24);
    v64 = *&v36[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView];
    v65 = v59;
    v98.top = v60;
    v98.leading = v61;
    v98.bottom = v62;
    v98.trailing = v63;
    UIView.addConstraintsToFill(_:insets:)(v65, v98);

    [*&v36[v58] setAlpha_];
    LOBYTE(v64) = LocalParticipantView.shouldUseConcentricRadius.getter();
    v66 = *&v36[v58];
    if (v64)
    {
      v67 = v84;
      LocalParticipantView.participantViewConcentricCornerStyle.getter();
      v68 = type metadata accessor for _UICornerMaskingConfiguration();
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
      UIView.cornerMaskingConfiguration.setter();
    }

    else
    {
      LocalParticipantView.participantViewCornerRadius.getter();
      [v66 _setContinuousCornerRadius_];
    }
  }

  v69 = *&v36[v39];
  OUTLINED_FUNCTION_5_18();
  v71 = *(v70 + 552);
  v72 = v36;
  v73 = v69;
  v71(v36, &protocol witness table for LocalParticipantView);

  [v72 addSubview_];
  LocalParticipantView.initializeButtonShelfView()();
  UIView.addTapInteraction(withTapCount:)(1);
  OUTLINED_FUNCTION_30_2();
  v74 = v41;
  v75 = v91;
  Published.projectedValue.getter();
  swift_endAccess();
  v76 = *&v36[v39];
  v77 = *((*v74 & *v76) + 0x3E8);
  v78 = v76;
  v79 = v77(v96);
  lazy protocol witness table accessor for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher();
  v80 = v94;
  Publisher<>.assign(to:)();
  (*(v93 + 8))(v75, v80);
  v79(v96, 0);

  if (v95)
  {
    v96[3] = v85;
    v96[0] = v72;
    objc_allocWithZone(MEMORY[0x1E69DCC48]);
    v81 = v72;
    v82 = @nonobjc UILongPressGestureRecognizer.init(target:action:)(v96, sel_handleLongPress_);
    [v81 addGestureRecognizer_];
  }

  return v72;
}

uint64_t LocalParticipantView.participantViewConcentricCornerStyle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) == 1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationKit);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BBC58000, v5, v6, "[LocalParticipantView] Since isExpanded, not concentric", v7, 2u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    swift_beginAccess();
    return static _UICornerMaskingConfiguration.fixed(_:)();
  }

  v8 = v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio;
  v9 = swift_beginAccess();
  v11 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v8 + 32);
  v13 = *v8 == 1.0;
  if (v10 != 1.0)
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1E69E7D40];
  if ((v12 & 1) == 0 && !v13)
  {
    goto LABEL_16;
  }

  v15 = *(v8 + 16) == 1.0;
  if (*(v8 + 24) != 1.0)
  {
    v15 = 0;
  }

  if ((v12 | v15) == 1)
  {
    if (!(*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))(v9))
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.conversationKit);
      v26 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1BBC58000, v26, v30, "[LocalParticipantView] Since square me-Pip and controls are not showing, not concentric", v31, 2u);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
      }

      goto LABEL_39;
    }

    v11 = *v8;
    v10 = *(v8 + 8);
    v16 = *(v8 + 32);
  }

  else
  {
LABEL_16:
    v16 = 0;
  }

  v17 = v11 == 1.0;
  if (v10 != 1.0)
  {
    v17 = 0;
  }

  if ((v16 & 1) == 0 && !v17)
  {
    goto LABEL_24;
  }

  v18 = *(v8 + 16) == 1.0;
  if (*(v8 + 24) != 1.0)
  {
    v18 = 0;
  }

  if (((v16 | v18) & 1) == 0)
  {
LABEL_24:
    if (!(*((*v14 & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))())
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.conversationKit);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1BBC58000, v26, v27, "[LocalParticipantView] Since non-square me-Pip and controls are not showing, not concentric", v28, 2u);
        MEMORY[0x1BFB23DF0](v28, -1, -1);
      }

LABEL_39:

      return static _UICornerMaskingConfiguration.fixed(_:)();
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationKit);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, v20, v21, "[LocalParticipantView] Since controls are showing, concentric", v22, 2u);
    MEMORY[0x1BFB23DF0](v22, -1, -1);
  }

  static Layout.ParticipantViews.localParticipantCornerRadius.getter();
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v23 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v23);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd);
}

void LocalParticipantView.participantViewCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    static Layout.Roster.iOS.getter(v2);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static Defaults.shared + 400))();
  }
}

Swift::Void __swiftcall LocalParticipantView.initializeButtonShelfView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_49_15(v2, v92[0]);
  type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_1();
  v94 = v4;
  v95 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v98 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v97 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v93 = v92 - v10;
  v11 = type metadata accessor for ButtonShelfViewModel.ActionType();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v101 = type metadata accessor for ButtonShelfViewModel.ButtonConfig();
  OUTLINED_FUNCTION_1();
  v105 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v102 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v100 = v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v107 = v30;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v106 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v108 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v109 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v110 = v38;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v39);
  v103 = v92 - v40;
  v41 = objc_opt_self();
  v42 = [v41 conversationKit];
  v111._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v44._countAndFlagsBits = v43 | 0xE;
  v44._object = 0x80000001BC504310;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v111._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v46, v42, v45, v111);

  v47 = *(v13 + 104);
  v48 = OUTLINED_FUNCTION_8_12();
  v47(v48);
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v49 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v50, v51, v52, v53);
  OUTLINED_FUNCTION_34_21();
  v54 = OUTLINED_FUNCTION_8_12();
  v47(v54);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v55 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v56, v57, v58, v59);
  OUTLINED_FUNCTION_34_21();
  v60 = OUTLINED_FUNCTION_8_12();
  v47(v60);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v61 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v62, v63, v64, v65);
  OUTLINED_FUNCTION_34_21();
  v66 = OUTLINED_FUNCTION_8_12();
  v47(v66);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v99 = v41;
  v67 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_3_92(0xD000000000000017, 0x80000001BC5043A0, 0x61737265766E6F43);
  OUTLINED_FUNCTION_34_21();
  (v47)(v17, *MEMORY[0x1E6995AC8], v11);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v68 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_3_92(0xD000000000000019, 0x80000001BC5043C0, 0x61737265766E6F43);
  OUTLINED_FUNCTION_34_21();
  (v47)(v17, *MEMORY[0x1E6995AD0], v11);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v69 = [v99 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v70, v71, v72, v73);

  (v47)(v17, *MEMORY[0x1E6995AF8], v11);
  v74 = v100;
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  OUTLINED_FUNCTION_20();
  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = *(v105 + 16);
  v76 = v101;
  v75(v102, v103, v101);
  v75(v92[0], v110, v76);
  v75(v92[1], v109, v76);
  v75(v92[2], v108, v76);
  v75(v92[3], v106, v76);
  v75(v92[4], v107, v76);
  v75(v92[5], v74, v76);
  type metadata accessor for ButtonShelfViewModel();
  swift_allocObject();

  ButtonShelfViewModel.init(cameraEffects:cinematicFraming:cameraBlur:studioLight:memoji:reactionGestures:backgroundReplacement:tapHandler:)();
  v77 = v93;
  ButtonShelfView.init(viewModel:)();
  v79 = v94;
  v78 = v95;
  v80 = *(v94 + 16);
  v81 = v96;
  v80(v96, v77, v95);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v78);
  v82 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  v83 = v104;
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of ButtonShelfView?(v81, v83 + v82);
  swift_endAccess();
  v84 = v97;
  v80(v97, v77, v78);
  v85 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25UISecureHostingControllerCy16CommunicationsUI15ButtonShelfViewVGMd));
  v80(v98, v84, v78);
  v86 = UIHostingController.init(rootView:)();
  v87 = *(v79 + 8);
  v87(v84, v78);
  v88 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_3_5();
  v89 = *(v83 + v88);
  *(v83 + v88) = v86;

  LocalParticipantView.updateButtonShelfCapabilities()();

  v87(v77, v78);
  v90 = *(v105 + 8);
  v91 = v101;
  v90(v100, v101);
  v90(v107, v91);
  v90(v106, v91);
  v90(v108, v91);
  v90(v109, v91);
  v90(v110, v91);
  v90(v103, v91);
}

id LocalParticipantView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LocalParticipantView.init(coder:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  v9 = objc_allocWithZone(type metadata accessor for ParticipantView());
  *(v0 + v8) = OUTLINED_FUNCTION_32_15();
  v10 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for LocalParticipantControlsView(0)) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost) = 0;
  v11 = type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_13_6(v11);
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = 0;
  v12 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha) = 0x3FF0000000000000;
  v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState;
  v14[15] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v13, v7, v2);
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id LocalParticipantView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void LocalParticipantView.init(frame:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  v9 = objc_allocWithZone(type metadata accessor for ParticipantView());
  *(v0 + v8) = OUTLINED_FUNCTION_32_15();
  v10 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for LocalParticipantControlsView(0)) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost) = 0;
  v11 = type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_13_6(v11);
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = 0;
  v12 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha) = 0x3FF0000000000000;
  v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState;
  v14[15] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v13, v7, v2);
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

Swift::Void __swiftcall LocalParticipantView.handleLongPress(_:)(UILongPressGestureRecognizer *a1)
{
  if ([(UILongPressGestureRecognizer *)a1 state]== 1)
  {
    OUTLINED_FUNCTION_30_19();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall LocalParticipantView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v2 + 656))())
  {
    v3 = objc_opt_self();
    [v3 begin];
    v4.receiver = v0;
    v4.super_class = ObjectType;
    objc_msgSendSuper2(&v4, sel_layoutSubviews);
    LocalParticipantView._layout()();
    [v3 commit];
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, sel_layoutSubviews);
    LocalParticipantView._layout()();
  }
}

uint64_t LocalParticipantView._layout()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for ButtonShelfView();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  result = CGRectIsInfinite(v17);
  if ((result & 1) == 0)
  {
    [v0 bounds];
    result = CGRectIsEmpty(v18);
    if ((result & 1) == 0)
    {
      if (static Platform.current.getter() == 2 || v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded] != 1)
      {
        v12 = *&v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView];
        [v0 bounds];

        return [v12 setFrame_];
      }

      else
      {
        v10 = *&v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView];
        [v10 setFrame_];
        v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
        swift_beginAccess();
        outlined init with copy of (CGFloat, AutoplayCandidate)(&v0[v11], v3, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
        if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
        {
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
        }

        else
        {
          (*(v5 + 32))(v8, v3, v4);
          v13 = [objc_opt_self() currentDevice];
          v14 = [v13 userInterfaceIdiom];

          if (!v14)
          {
            [v0 bounds];
            [v10 frame];
            CGRectGetMaxY(v19);
            [v0 safeAreaInsets];
            ButtonShelfView.viewModel.getter();
            ButtonShelfViewModel.phoneLandscapeMaxWidth.setter();
          }

          return (*(v5 + 8))(v8, v4);
        }
      }
    }
  }

  return result;
}

CGFloat LocalParticipantView.participantViewFrameForButtonShelf()()
{
  v1 = &v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio];
  swift_beginAccess();
  v2 = *(v1 + 1);
  v5[0] = *v1;
  v5[1] = v2;
  v6 = v1[32];
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation;
  swift_beginAccess();
  return static Layout.LocalParticipantView.participantViewFrame(in:aspectRatio:videoOrientation:)(v0, v5, *&v0[v3]);
}

uint64_t LocalParticipantView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  OUTLINED_FUNCTION_4_0();
  if (*(v2 + v16) == 1)
  {
    ParticipantViewModel.compatibleWithRoster.getter();
    ParticipantView.configure(with:isOneToOneMode:)(v15, 0);
    outlined destroy of LocalParticipantControlsView.ViewModel(v15, type metadata accessor for ParticipantViewModel);
  }

  else
  {
    ParticipantView.configure(with:isOneToOneMode:)(a1, 0);
  }

  outlined init with copy of ParticipantViewModel(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
      memcpy(__dst, (v12 + *(v18 + 64)), 0x69uLL);
      UIView.addTapInteraction(withTapCount:)(1);
      outlined init with copy of ParticipantVideoOverlayView.ViewModel(__dst, v34);
      v19 = v35 != 5;
      v20 = v35 == 5;
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v34);
      (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x360))(v20);
      outlined destroy of ParticipantVideoOverlayView.ViewModel(__dst);
      *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = v19;
      outlined destroy of ParticipantVideoView.ViewModel(v12 + *(v18 + 48));
    }

    else
    {
      v26 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
      v33 = *v26;
      v27 = *(v26 + 72);
      v28 = *(v26 + 80);

      outlined consume of (title: String, subtitle: String?)?(v27, v28);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9();
      }

      OUTLINED_FUNCTION_0_1();
      if (((*(v29 + 592))() & 1) == 0)
      {
        UIView.removeTapInteractions(withTapCount:)(1);
      }

      OUTLINED_FUNCTION_5_18();
      (*(v30 + 864))(0);
      *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = 1;
    }

    OUTLINED_FUNCTION_25_28();
    return outlined destroy of LocalParticipantControlsView.ViewModel(v12, v31);
  }

  else
  {
    outlined init with take of ParticipantViewModel.ParticipantDetails(v12, v8);
    UIView.addTapInteraction(withTapCount:)(1);
    OUTLINED_FUNCTION_5_18();
    (*(v21 + 864))(0);
    v22 = *(v8 + *(v4 + 40));
    OUTLINED_FUNCTION_25_28();
    outlined destroy of LocalParticipantControlsView.ViewModel(v8, v23);
    *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd);
    return outlined destroy of ParticipantVideoView.ViewModel(v12 + *(v24 + 48));
  }
}

Swift::Void __swiftcall LocalParticipantView.addEffectsView(effectsView:)(UIView *effectsView)
{
  [v1 addSubview_];
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_4_5();
  v4 = *&v1[v3];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    [v1 bringSubviewToFront_];

LABEL_4:
    [(UIView *)effectsView setUserInteractionEnabled:0];
    [v1 bringSubviewToFront_];
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall LocalParticipantView.updateControlsAlpha(animated:)(Swift::Bool animated)
{
  if (animated)
  {
    v2 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    *(swift_allocObject() + 16) = v1;
    OUTLINED_FUNCTION_19_27();
    OUTLINED_FUNCTION_22_31();
    v6[2] = v3;
    v6[3] = &block_descriptor_44;
    v4 = _Block_copy(v6);
    v5 = v1;

    [v2 animateWithDuration:v4 animations:0.25];
    _Block_release(v4);
  }

  else
  {
    LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  }
}

Swift::Void __swiftcall LocalParticipantView.updateBackgroundColor(_:)(Swift::Bool a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_22_31();
  v8[2] = v5;
  v8[3] = &block_descriptor_29_0;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v3 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];
  _Block_release(v6);
}

void closure #1 in LocalParticipantView.updateBackgroundColor(_:)(void *a1, char a2)
{
  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_clearColor;
  }

  v6 = [v4 *v5];
  [a1 setBackgroundColor_];
}

void LocalParticipantView.configureControls(_:)(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = a1;
  v6 = type metadata accessor for _UICornerMaskingConfiguration();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) = v5 == 128;
  if (v5 == 128)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))();
  v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel;
  v14 = v12;
  v15 = a1 >> 6;
  if (v4 < 0)
  {
    v15 = v11;
  }

  if (*(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel))
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  LocalParticipantView.controlsStyle.setter(v16);
  v17 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
  LocalParticipantView.participantViewCornerRadius.getter();
  v19 = v18;
  v20 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  OUTLINED_FUNCTION_3_5();
  *(v17 + v20) = v19;
  ParticipantView.customCornerRadius.didset();
  LocalParticipantView.participantViewConcentricCornerStyle.getter();
  ParticipantView.concentricCornerStyle.setter(v10);
  if (v14 == 3)
  {
    LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v21 + 592))())
  {
    ParticipantView.setInfoViewIsVisible(_:animated:)((a1 == 128) & ~*(v2 + v13), 1);
  }
}

Swift::Void __swiftcall LocalParticipantView.configureWithRecordingLocalVideo(_:)(Swift::Bool a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v2 + 592))())
  {
    ParticipantView.configureWithRecordingLocalVideo(_:)(a1);
  }
}

Swift::Void __swiftcall LocalParticipantView.configureWithEffectsAvailable(_:effectsSelected:)(Swift::Bool _, Swift::Bool effectsSelected)
{
  v4 = _;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  if ((((*(v9 + 640))() >> 16) & 1) != v4)
  {
    OUTLINED_FUNCTION_5_18();
    v11 = OUTLINED_FUNCTION_38_17(v10);
    v12(v11);
  }

  v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2 + v13, v8, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  v14 = type metadata accessor for ButtonShelfView();
  LODWORD(v13) = __swift_getEnumTagSinglePayload(v8, 1, v14);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  if (v13 == 1)
  {
    OUTLINED_FUNCTION_5_18();
    (*(v15 + 744))(effectsSelected);
  }

  else
  {
    LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(effectsSelected, 7);
  }
}

uint64_t LocalParticipantView.handleButtonShelfAction(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ButtonShelfViewModel.ActionType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result != *MEMORY[0x1E6995AE8])
  {
    if (result == *MEMORY[0x1E6995AF0])
    {
      v9 = 10;
    }

    else if (result == *MEMORY[0x1E6995AD8])
    {
      v9 = 8;
    }

    else if (result == *MEMORY[0x1E6995AE0])
    {
      v9 = 15;
    }

    else if (result == *MEMORY[0x1E6995AC8])
    {
      v9 = 7;
    }

    else if (result == *MEMORY[0x1E6995AD0])
    {
      v9 = 14;
    }

    else
    {
      if (result != *MEMORY[0x1E6995AF8])
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v9 = 16;
    }

    v10 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v9, v1, ObjectType, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void closure #1 in LocalParticipantView.initializeButtonShelfView()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    LocalParticipantView.handleButtonShelfAction(_:)(a1);
  }
}

uint64_t LocalParticipantView.updateButtonShelfCapabilities()()
{
  v1 = type metadata accessor for ButtonShelfViewModel.Capabilities();
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ButtonShelfView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v11, v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  }

  v13 = (*(v8 + 32))(v10, v6, v7);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x280))(v13);
  v15 = v1;
  ButtonShelfView.viewModel.getter();
  ButtonShelfViewModel.Capabilities.init(cinematicFraming:cameraBlur:studioLight:memoji:reactionGestures:backgroundReplacement:)();
  ButtonShelfViewModel.update(_:)();

  (*(v16 + 8))(v3, v15);
  return (*(v8 + 8))(v10, v7);
}

uint64_t LocalParticipantView.updateButtonShelfRotation(for:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - v3;
  v5 = type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v12, v4, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  }

  (*(v7 + 32))(v11, v4, v5);
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (!v15)
  {
    ButtonShelfView.viewModel.getter();
    ButtonShelfViewModel.rotationAngle.setter();
  }

  return (*(v7 + 8))(v11, v5);
}

double LocalParticipantView.controlRotation(for:)(uint64_t a1)
{
  result = -1.57079633;
  if (a1 != 2)
  {
    result = 0.0;
  }

  if (!a1)
  {
    return 1.57079633;
  }

  return result;
}

void LocalParticipantView.updateShelfPiPControls(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GlassDimmingView.GradientValues();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v1[v10], v9, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  v11 = type metadata accessor for ButtonShelfView();
  LODWORD(v10) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s16CommunicationsUI15ButtonShelfViewVSgMd);
  if (v10 != 1)
  {
    v12 = objc_opt_self();
    v13 = [v12 currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (!v14)
    {
      v15 = [v12 currentDevice];
      v16 = [v15 userInterfaceIdiom];

      if (v16)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_4_0();
      if (static AmbientState.isPresented != 1)
      {
        goto LABEL_8;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
LABEL_8:
        v17 = -1.57079633;
        if (a1 != 2)
        {
          v17 = 0.0;
        }

        if (!a1)
        {
          v17 = 1.57079633;
        }

        LocalParticipantControlsView.updateConstraints(for:angle:)(a1, v17);
        if (_UISolariumEnabled())
        {
          v18 = [v12 currentDevice];
          v19 = [v18 userInterfaceIdiom];

          if (!v19)
          {
            switch(a1)
            {
              case 0:
              case 2:
                OUTLINED_FUNCTION_2_96();
                v20 = v2;
                LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, v21);
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.trailingExpandedMePip.getter();
                dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

                v22 = *&v2[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView];
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.leadingExpandedMePip.getter();
                break;
              default:
                OUTLINED_FUNCTION_2_96();
                v20 = v2;
                LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, v23);
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.bottomExpandedMePip.getter();
                dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

                v24 = *&v2[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView];
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.topExpandedMePip.getter();
                break;
            }

            dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
          }
        }
      }
    }
  }
}

id closure #1 in LocalParticipantView.isInRosterDidChange()(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  if (*(a2 + v4) == 1)
  {
    if (one-time initialization token for shadow != -1)
    {
      swift_once();
    }

    v5 = [static Colors.LocalParticipantView.shadow CGColor];
    [a1 setShadowColor_];

    LODWORD(v6) = 1062501089;
    [a1 setShadowOpacity_];
    [a1 setShadowOffset_];
    return [a1 setShadowRadius_];
  }

  else
  {
    v8 = [objc_opt_self() clearColor];
    v9 = [v8 CGColor];

    [a1 setShadowColor_];
    return [a1 setShadowOpacity_];
  }
}

id LocalParticipantView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall LocalParticipantView.didTap(_:)(ConversationKit::LocalParticipantAction a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  OUTLINED_FUNCTION_4_0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, v1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void __swiftcall LocalParticipantView.hostingController()(UIViewController_optional *__return_ptr retstr)
{
  v2 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  OUTLINED_FUNCTION_4_0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

uint64_t LocalParticipantView.participantViewDidTapShutter(_:)()
{
  OUTLINED_FUNCTION_30_19();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(5, v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LocalParticipantView.layoutIdiom.getter@<X0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_30_19();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(v7, ObjectType, v4);
    result = swift_unknownObjectRelease();
    v6 = v7[0];
  }

  else
  {
    v6 = 2;
  }

  *a1 = v6;
  return result;
}

void LocalParticipantView.showCountdownLabelIfNeeded()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel;
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel])
  {
    v2 = v0;
    v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v4 = [v3 fontDescriptorWithDesign_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    v6 = *MEMORY[0x1E69DDCF0];
    *(inited + 32) = *MEMORY[0x1E69DDCF0];
    *(inited + 40) = 6;
    v7 = *MEMORY[0x1E69DDCE8];
    *(inited + 48) = *MEMORY[0x1E69DDCE8];
    *(inited + 56) = 0;
    type metadata accessor for UIFontDescriptorFeatureKey(0);
    lazy protocol witness table accessor for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
    v8 = v6;
    v9 = v7;
    v10 = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_SaySDySo0dE10FeatureKeyaSiGGtGMd);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1BC4BA940;
    v12 = *MEMORY[0x1E69DB8B0];
    *(v11 + 32) = *MEMORY[0x1E69DB8B0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BC4BA940;
    *(v13 + 32) = v10;
    *(v11 + 40) = v13;
    type metadata accessor for UIFontDescriptorAttributeName(0);
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
    lazy protocol witness table accessor for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
    v15 = Dictionary.init(dictionaryLiteral:)();
    if (v4)
    {
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = [v4 fontDescriptorByAddingAttributes_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
      if (v17)
      {
        v18 = [objc_opt_self() fontWithDescriptor:v17 size:200.0];
LABEL_7:
        v19 = v18;
        v39.value.super.isa = [objc_opt_self() whiteColor];
        UILabel.init(font:textColor:)(v20, v19, v39);
        v22 = v21;
        [v22 setTranslatesAutoresizingMaskIntoConstraints_];
        [v22 setTextAlignment_];
        [v2 insertSubview:v22 belowSubview:*&v2[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView]];
        v23 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1BC4BA7F0;
        v25 = [v22 topAnchor];
        v26 = [v2 topAnchor];
        v27 = [v25 constraintEqualToAnchor_];

        *(v24 + 32) = v27;
        v28 = [v22 bottomAnchor];
        v29 = [v2 bottomAnchor];
        v30 = [v28 constraintEqualToAnchor_];

        *(v24 + 40) = v30;
        v31 = [v22 leadingAnchor];
        v32 = [v2 leadingAnchor];
        v33 = [v31 constraintEqualToAnchor_];

        *(v24 + 48) = v33;
        v34 = [v22 trailingAnchor];

        v35 = [v2 trailingAnchor];
        v36 = [v34 constraintEqualToAnchor_];

        *(v24 + 56) = v36;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        v37 = Array._bridgeToObjectiveC()().super.isa;

        [v23 activateConstraints_];

        v38 = *&v2[v1];
        *&v2[v1] = v22;

        return;
      }
    }

    else
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
    }

    v18 = [objc_opt_self() systemFontOfSize_];
    v17 = 0;
    goto LABEL_7;
  }
}

Swift::Void __swiftcall LocalParticipantView.updateCountdownWith(_:)(Swift::Int a1)
{
  LocalParticipantView.showCountdownLabelIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel);
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v4, v5, v3);
  }
}

Swift::Void __swiftcall LocalParticipantView.endCountdown()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

id @nonobjc UILongPressGestureRecognizer.init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

unint64_t lazy protocol witness table accessor for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t outlined assign with take of ButtonShelfView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ParticipantViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ParticipantViewModel.ParticipantDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LocalParticipantControlsView.ViewModel(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction()
{
  result = lazy protocol witness table cache variable for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction;
  if (!lazy protocol witness table cache variable for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantAction and conformance LocalParticipantAction()
{
  result = lazy protocol witness table cache variable for type LocalParticipantAction and conformance LocalParticipantAction;
  if (!lazy protocol witness table cache variable for type LocalParticipantAction and conformance LocalParticipantAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantAction and conformance LocalParticipantAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType()
{
  result = lazy protocol witness table cache variable for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType;
  if (!lazy protocol witness table cache variable for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalParticipantLongPressAction(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LocalParticipantAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocalParticipantAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for LocalParticipantView()
{
  result = type metadata singleton initialization cache for LocalParticipantView;
  if (!type metadata singleton initialization cache for LocalParticipantView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LocalParticipantView()
{
  type metadata accessor for ButtonShelfView?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<VideoMessageController.State>();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for ButtonShelfView?()
{
  if (!lazy cache variable for type metadata for ButtonShelfView?)
  {
    type metadata accessor for ButtonShelfView();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonShelfView?);
    }
  }
}

void type metadata accessor for Published<VideoMessageController.State>()
{
  if (!lazy cache variable for type metadata for Published<VideoMessageController.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<VideoMessageController.State>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LocalParticipantView.DragEventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL static CallScreeningScreeningState.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[6];
  v6 = a2[6];

  return _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v5, v6);
}

uint64_t CallScreeningScreeningState.callUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallScreeningScreeningState.onEnterState.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallScreeningScreeningState.onLeaveState.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CallScreeningScreeningState.init(prevState:onEnterState:onLeaveState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *a1;
  v14 = a1[1];

  *a6 = v13;
  a6[1] = v14;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  a6[6] = v12;
  return result;
}

void CallScreeningScreeningState.willExit(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(v2 + 1);
  v35[0] = *v2;
  v35[1] = v8;
  v35[2] = *(v2 + 2);
  v36 = v2[6];
  OUTLINED_FUNCTION_0_118();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(a2, WitnessTable))
  {
    OUTLINED_FUNCTION_7_64();
    v10();
    v33 = v2[1];
    v34 = *v2;
    v32 = v2[4];
    v11 = v2[5];

    v37 = v11;

    outlined init with copy of CallScreening.State(a1, v35);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    outlined destroy of CallScreening.State(v12);
    if (os_log_type_enabled(v13, v14))
    {
      v31 = v6;
      v15 = swift_slowAlloc();
      *&v35[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = CallScreeningScreeningState.description.getter();
      v18 = v17;

      v19 = v33;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v35);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v21 = CallScreening.State.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v35);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1BBC58000, v13, v14, "%{public}s Exiting to %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      v24 = OUTLINED_FUNCTION_3_93();
      v26 = v31;
    }

    else
    {

      v19 = v33;

      v24 = OUTLINED_FUNCTION_3_93();
      v26 = v6;
    }

    v25(v24, v26);
    v32(v3, v34, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for answeringMachine != -1)
    {
      OUTLINED_FUNCTION_2_97();
    }

    __swift_project_value_buffer(v6, static Logger.answeringMachine);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v29, v30, "StateMachine is nil in willExit");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningScreeningState.enteredState()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(v1 + 1);
  v30[0] = *v1;
  v30[1] = v6;
  v30[2] = *(v1 + 2);
  v31 = v1[6];
  OUTLINED_FUNCTION_0_118();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(v3, WitnessTable))
  {
    OUTLINED_FUNCTION_7_64();
    v8();
    v28 = v1[1];
    v29 = *v1;
    v9 = v1[3];
    v27 = v1[2];

    v32 = v9;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v26 = v4;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v30[0] = v13;
      *v12 = 136446210;
      v25 = CallScreeningScreeningState.description.getter();
      v15 = v14;

      v16 = v28;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v15, v30);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1BBC58000, v10, v11, "EnteredState %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      v18 = OUTLINED_FUNCTION_3_93();
      v20 = v26;
    }

    else
    {

      v16 = v28;

      v18 = OUTLINED_FUNCTION_3_93();
      v20 = v4;
    }

    v19(v18, v20);
    v27(v2, v29, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for answeringMachine != -1)
    {
      OUTLINED_FUNCTION_2_97();
    }

    __swift_project_value_buffer(v4, static Logger.answeringMachine);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v23, v24, "StateMachine is nil in enteredState");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

uint64_t CallScreeningScreeningState.update(with:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = type metadata accessor for AnsweringMachineCallStatus();
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for CallScreeningStatus();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static CKStateMachineActor.shared;
  v3[21] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreeningScreeningState.update(with:), v6, 0);
}

uint64_t CallScreeningScreeningState.update(with:)()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = v1[1];
  v3 = v1[2];
  v5 = *v1;
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_0_118();
  WitnessTable = swift_getWitnessTable();
  v7 = CallScreeningState.stateMachine.getter(v2, WitnessTable);
  *(v0 + 176) = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *v8;
  v10 = *(v8 + 1);
  if (*(v9 + 16) != *v8 || *(v9 + 24) != v10)
  {
    OUTLINED_FUNCTION_77();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v20 = *(v0 + 144);
      v19 = *(v0 + 152);
      v21 = *(v0 + 136);
      (*(v20 + 104))(v19, *MEMORY[0x1E6995E98], v21);
      v22 = CallScreeningStatus.isBaseCase(_:)();
      (*(v20 + 8))(v19, v21);
      if (v22)
      {
LABEL_11:
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = *(v0 + 104);
        v25 = *(v0 + 72);
        OUTLINED_FUNCTION_7_64();
        v26();
        outlined init with copy of AnsweringMachineCallStatus(v25, v50);

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 120);
        v31 = *(v0 + 128);
        v32 = *(v0 + 104);
        v33 = *(v0 + 112);
        if (v29)
        {
          v51 = *(v0 + 128);
          v34 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v34 = 136446466;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v55);
          *(v34 + 12) = 2082;
          v35 = *(v32 + 16);
          v36 = *(v32 + 24);

          outlined destroy of AnsweringMachineCallStatus(v32);
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v55);

          *(v34 + 14) = v37;
          _os_log_impl(&dword_1BBC58000, v27, v28, "Found a call in screening that does not match the one we are tracking! Tracked: %{public}s new: %{public}s", v34, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          swift_unknownObjectRelease();

          (*(v30 + 8))(v51, v33);
        }

        else
        {
          swift_unknownObjectRelease();

          outlined destroy of AnsweringMachineCallStatus(v32);
          (*(v30 + 8))(v31, v33);
        }
      }

      goto LABEL_12;
    }

    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
  }

  v13 = *(v0 + 80);
  v14 = swift_allocObject();
  *(v0 + 184) = v14;
  *(v14 + 16) = *(v13 + 16);
  v15 = *(v13 + 24);
  *(v14 + 24) = v15;
  v16 = *v8;
  v17 = v8[1];
  v18 = v8[2];
  *(v14 + 80) = *(v8 + 6);
  *(v14 + 48) = v17;
  *(v14 + 64) = v18;
  *(v14 + 32) = v16;
  switch(*(v9 + 32))
  {
    case 1:
      (*(*(v0 + 144) + 16))(*(v0 + 160), v9 + *(*(v0 + 96) + 28), *(v0 + 136));
      v38 = OUTLINED_FUNCTION_77();
      if (v39(v38) == *MEMORY[0x1E6995E98])
      {
        v40 = *(*(v0 + 144) + 8);

        v41 = OUTLINED_FUNCTION_77();
        v40(v41);
        v52 = (*(v15 + 32) + **(v15 + 32));
        v42 = swift_task_alloc();
        *(v0 + 192) = v42;
        *v42 = v0;
        v42[1] = CallScreeningScreeningState.update(with:);
        OUTLINED_FUNCTION_1_100();
        OUTLINED_FUNCTION_12_48();
        v43 = v52;
LABEL_22:

        __asm { BRAA            X8, X16 }
      }

      swift_unknownObjectRelease();
      v48 = OUTLINED_FUNCTION_77();
      v49(v48);
      break;
    case 5:
      v44 = *(v15 + 32);

      v53 = v44 + *v44;
      v45 = swift_task_alloc();
      *(v0 + 208) = v45;
      *v45 = v0;
      v45[1] = CallScreeningScreeningState.update(with:);
      OUTLINED_FUNCTION_1_100();
      OUTLINED_FUNCTION_77();
      goto LABEL_21;
    case 6:
      v46 = *(v15 + 32);

      v53 = v46 + *v46;
      v47 = swift_task_alloc();
      *(v0 + 224) = v47;
      *v47 = v0;
      v47[1] = CallScreeningScreeningState.update(with:);
      OUTLINED_FUNCTION_1_100();
      OUTLINED_FUNCTION_12_48();
LABEL_21:
      v43 = v53;
      goto LABEL_22;
    default:

      goto LABEL_11;
  }

LABEL_12:

  OUTLINED_FUNCTION_13();

  return v23();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  else
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_9();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  else
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 232) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  else
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_5_76();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_5_76();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_5_76();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

void closure #1 in CallScreeningScreeningState.update(with:)(void *a1, void *a2)
{
  if (a1[6] >> 61 == 4)
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v4 = swift_allocError();
  if (v3)
  {
  }

  else
  {
    swift_willThrow();
  }
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningScreeningState<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningScreeningState<A>;

  return CallScreeningScreeningState.update(with:)(a1, a2);
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningScreeningState<A>()
{

  OUTLINED_FUNCTION_13();

  return v0();
}

unint64_t CallScreeningScreeningState.description.getter()
{
  _StringGuts.grow(_:)(28);

  MEMORY[0x1BFB20B10](*v0, v0[1]);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t instantiation function for generic protocol witness table for CallScreeningScreeningState<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for CallScreeningScreeningState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void __swiftcall UIActivityIndicatorView.init(style:size:)(UIActivityIndicatorView *__return_ptr retstr, ConversationKit::PlatformActivityIndicatorStyle style, ConversationKit::PlatformActivityIndicatorSize size)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (size)
  {
    v5 = 101;
  }

  else
  {
    v5 = 100;
  }

  [v4 setActivityIndicatorViewStyle_];
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlatformActivityIndicatorSize(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize()
{
  result = lazy protocol witness table cache variable for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize;
  if (!lazy protocol witness table cache variable for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle()
{
  result = lazy protocol witness table cache variable for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle;
  if (!lazy protocol witness table cache variable for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatformActivityIndicatorSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Void __swiftcall UIView.setCHCRPriority(_:)(__C::UILayoutPriority a1)
{
  [v1 setContentCompressionResistancePriority:1 forAxis:?];
  LODWORD(v3) = a1;
  [v1 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = a1;
  [v1 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = a1;

  [v1 setContentHuggingPriority:0 forAxis:v5];
}

uint64_t static UIView.animate(with:delay:animations:completion:)(void *a1, uint64_t a2, char a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  return specialized static UIView.animate(with:delay:animations:completion:)(v16, a2, a3 & 1, a4, a5, a6, a7, v7, v14, v15);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

BOOL ContextMenuNotificationUserInfoKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContextMenuNotificationUserInfoKey.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ContextMenuNotificationUserInfoKey@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContextMenuNotificationUserInfoKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContextMenuNotificationUserInfoKey@<X0>(void *a1@<X8>)
{
  result = ContextMenuNotificationUserInfoKey.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t UIView.contextMenuUserInfo.getter()
{
  v5 = MEMORY[0x1E69E7CC8];
  v1 = [v0 SBUISA_layoutMode];
  type metadata accessor for SBUISystemApertureLayoutMode(0);
  v4[3] = v2;
  v4[0] = v1;
  specialized Dictionary.subscript.setter(v4);
  return v5;
}

void _sSo6UIViewC15ConversationKitE7animate4with5delay10animations10completionyAC15AnimationTiming_p_SdSgyycySbcSgtFZTf4ennnn_nAC06SpringI10ParametersV_Tt3g5(double *a1, uint64_t a2, char a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:a1[1] stiffness:a1[2] damping:a1[3] initialVelocity:{a1[4], a1[5]}];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v14 timingParameters:v13];

  v24 = a4;
  v25 = a5;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed () -> ();
  v23 = &block_descriptor_45;
  v16 = _Block_copy(&v20);

  [v15 addAnimations_];
  _Block_release(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  v24 = partial apply for closure #1 in static UIView.animate(with:delay:animations:completion:);
  v25 = v17;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v23 = &block_descriptor_7_0;
  v18 = _Block_copy(&v20);
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, a7);

  [v15 addCompletion_];
  _Block_release(v18);
  if ((a3 & 1) != 0 || (v19 = *&a2, *&a2 <= 0.0))
  {
    [v15 startAnimation];
  }

  else
  {
    [v15 startAnimationAfterDelay_];
  }
}

void _sSo6UIViewC15ConversationKitE7animate4with5delay10animations10completionyAC15AnimationTiming_p_SdSgyycySbcSgtFZTf4ennnn_nAC05CubicI10ParametersV_Tt3g5(double *a1, uint64_t a2, char a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:a1[1] controlPoint2:{a1[2], a1[3], a1[4]}];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v14 timingParameters:v13];

  v24 = a4;
  v25 = a5;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed () -> ();
  v23 = &block_descriptor_10_0;
  v16 = _Block_copy(&v20);

  [v15 addAnimations_];
  _Block_release(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  v24 = closure #1 in static UIView.animate(with:delay:animations:completion:)partial apply;
  v25 = v17;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v23 = &block_descriptor_17_0;
  v18 = _Block_copy(&v20);
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, a7);

  [v15 addCompletion_];
  _Block_release(v18);
  if ((a3 & 1) != 0 || (v19 = *&a2, *&a2 <= 0.0))
  {
    [v15 startAnimation];
  }

  else
  {
    [v15 startAnimationAfterDelay_];
  }
}

uint64_t specialized static UIView.animate(with:delay:animations:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = *&a2;
  v28 = a7;
  v29 = a3;
  v14 = *(a9 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  v18 = (*(a10 + 8))(a9, a10);
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:(*(a10 + 16))(a9 timingParameters:{a10), v18}];
  swift_unknownObjectRelease();
  v34 = a4;
  v35 = a5;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_20_1;
  v20 = _Block_copy(&aBlock);

  [v19 addAnimations_];
  _Block_release(v20);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = a6;
  *(v21 + 24) = v22;
  v34 = closure #1 in static UIView.animate(with:delay:animations:completion:)partial apply;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v33 = &block_descriptor_27;
  v23 = _Block_copy(&aBlock);
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, v22);

  [v19 addCompletion_];
  _Block_release(v23);
  if ((v29 & 1) != 0 || (v24 = v27, v27 <= 0.0))
  {
    [v19 startAnimation];
  }

  else
  {
    [v19 startAnimationAfterDelay_];
  }

  return (*(v14 + 8))(v17, a9);
}

_BYTE *storeEnumTagSinglePayload for ContextMenuNotificationUserInfoKey(_BYTE *result, int a2, int a3)
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

uint64_t partial apply for closure #1 in static UIView.animate(with:delay:animations:completion:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result == 0);
  }

  return result;
}

uint64_t ConversationControlsMicMenuButtonProvider.__allocating_init(controlsManager:context:shape:menuHostViewController:)()
{
  OUTLINED_FUNCTION_3_1();
  swift_allocObject();
  OUTLINED_FUNCTION_5_77();
  return ConversationControlsMicMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
}

uint64_t ConversationControlsMicMenuButtonProvider.routeCallbackCancellable.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t ConversationControlsMicMenuButtonProvider.routeCallbackCancellable.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5();
  *(v1 + 192) = a1;
}

uint64_t ConversationControlsMicMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 routeController];

  *(v0 + 184) = v2;
  *(v0 + 192) = 0;
  OUTLINED_FUNCTION_5_77();

  return ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
}

uint64_t ConversationControlsMicMenuButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(a1);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  UIConfigurationColorTransformer.init(_:)();
  v5 = type metadata accessor for UIConfigurationColorTransformer();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return UIButton.Configuration.imageColorTransformer.setter();
}

id closure #1 in ConversationControlsMicMenuButtonProvider.buttonConfiguration.getter(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if (static Platform.current.getter() == 2)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v3 = Features.isICUIRedesignEnabled.getter();
        v4 = objc_opt_self();
        v5 = &selRef_orangeColor;
        if ((v3 & 1) == 0)
        {
          v5 = &selRef_whiteColor;
        }

        v6 = [v4 *v5];
        if (![v2 isSelected])
        {
          v7 = [objc_opt_self() systemRedColor];

          return v7;
        }

        goto LABEL_17;
      }

      if (![v2 isSelected])
      {
        v6 = [objc_opt_self() systemRedColor];
LABEL_17:

        return v6;
      }
    }
  }

  return a1;
}

Swift::Void __swiftcall ConversationControlsMicMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v35 = v4;
    v36 = v2;
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000013, 0x80000001BC4F7950, Strong);
    [v15 addTarget:v0 action:sel_toggleMicButtonTapped forControlEvents:0x2000];
    type metadata accessor for ConversationControlsButton();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v18 = objc_opt_self();
      v34 = v15;
      v19 = [v18 conversationKit];
      OUTLINED_FUNCTION_5_5();
      v20.super.isa = v19;
      v23 = OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC504760, v21, v22, v20);
      v25 = v24;

      v26 = (v17 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      OUTLINED_FUNCTION_3_5();
      *v26 = v23;
      v26[1] = v25;

      ConversationControlsButton.localizedName.didset();
    }

    v27 = v1[20];
    v28 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v27) + 0x6C8))();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    v29 = Publisher<>.sink(receiveValue:)();

    (*(v10 + 8))(v13, v8);
    OUTLINED_FUNCTION_3_5();
    v1[6] = v29;

    (*((*v28 & *v27) + 0x668))(v30);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd);
    v31 = v36;
    v32 = Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v7, v31);
    OUTLINED_FUNCTION_3_5();
    v1[24] = v32;
  }
}

uint64_t closure #1 in ConversationControlsMicMenuButtonProvider.buttonChanged()(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;

      [v4 setSelected_];
      v5 = v4;
      [v5 setShowsMenuAsPrimaryAction_];

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        v6 = v1 == 0;
        if (v1)
        {
          v7 = &type metadata for SymbolImageDescribers.EphemeralAlerts;
        }

        else
        {
          v7 = &type metadata for SymbolImageDescribers.ConversationControls;
        }

        if (v6)
        {
          v8 = &protocol witness table for SymbolImageDescribers.ConversationControls;
        }

        else
        {
          v8 = &protocol witness table for SymbolImageDescribers.EphemeralAlerts;
        }

        if (v6)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        v11[3] = v7;
        v11[4] = v8;
        LOBYTE(v11[0]) = v9;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
        __swift_project_boxed_opaque_existential_1(v11, v7);
        (v8[1])(v12, v7, v8);
        v10 = static UIImage.symbolImage(for:)(v12);
        outlined destroy of SymbolImageDescription(v12);
        ControlsButtonProvider.image.setter(v10);

        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t ConversationControlsMicMenuButtonProvider.shouldEnableMenu(localAudioEnabled:audioRoute:)(char a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    result = [*(v3 + 184) pickedRoute];
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  v8 = a2;
  if ([v6 isBluetooth] && (objc_msgSend(v6, sel_isPartnerRouteRoutable) & 1) != 0 || objc_msgSend(v6, sel_isBluetoothLE) && (objc_msgSend(v6, sel_isSiblingRoutePresent) & 1) != 0)
  {
    v9 = MEMORY[0x1E69E7D40];
    if (a1 == 2)
    {
      if (((*((*MEMORY[0x1E69E7D40] & **(v3 + 160)) + 0x6B0))() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((a1 & 1) == 0)
    {
LABEL_11:
      v10 = *(v3 + 160);
      v11 = (*((*v9 & *v10) + 0x988))();
      v12 = v11;
      if (v11)
      {
      }

      v13 = (*((*v9 & *v10) + 0x680))();
      v15 = v14;

      if (v15)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else if (!v12)
      {
        return v13 == 1;
      }

      return 1;
    }
  }

  return 0;
}

void closure #2 in ConversationControlsMicMenuButtonProvider.buttonChanged()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [v3 setShowsMenuAsPrimaryAction_];
    }

    else
    {
    }
  }
}

Class ConversationControlsMicMenuButtonProvider.menu(for:)()
{
  v1 = v0;
  v2 = [*(v0 + 184) pickedRoute];
  if (!v2)
  {
    return 0;
  }

  v88 = v2;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Displaying Mic menu", v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  v7 = *(v1 + 160);
  v8 = ((*((*MEMORY[0x1E69E7D40] & *v7) + 0x6B0))() & 1) == 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  v9 = objc_opt_self();
  v10 = [v9 conversationKit];
  v11.super.isa = v10;
  OUTLINED_FUNCTION_17_0(0x4F48504F5243494DLL, 0xEE0046464F5F454ELL, 0x61737265766E6F43, 0xEF74694B6E6F6974, v11);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  @nonobjc UIImage.__allocating_init(systemName:)();
  OUTLINED_FUNCTION_20();
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_3_0();
  v87 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 model];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [v9 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v19.super.isa = v18;
  OUTLINED_FUNCTION_17_0(v20, v21, v22, v23, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC4BA940;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v15;
  *(v24 + 40) = v17;
  String.init(format:_:)();
  v25 = MEMORY[0x1E69E7D40];

  v27 = *((*v25 & *v7) + 0x518);
  v28 = v27(v26);
  if (v28)
  {
    v29 = [v28 audioRouteGlyphForDevice];
    v28 = swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
  }

  v31 = *((*v25 & *v7) + 0x2A0);
  v31(v28);
  v33 = v32;
  ObjectType = swift_getObjectType();
  v35 = (*(v33 + 296))(ObjectType, v33);
  swift_unknownObjectRelease();
  v86 = v29;
  v36 = [v9 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v37.super.isa = v36;
  OUTLINED_FUNCTION_17_0(v38, v39, v40, v41, v37);
  v43 = v42;

  OUTLINED_FUNCTION_20();
  v44 = swift_allocObject();
  swift_weakInit();
  v84 = v43;
  OUTLINED_FUNCTION_3_0();
  v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50 = (v27)(v45, v46, v47, v48, v49);
  if (v50)
  {
    v51 = v88;
    v52 = [v50 audioRouteGlyphFor_];
    v50 = swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0;
    v51 = v88;
  }

  v31(v50);
  v54 = v53;
  v55 = swift_getObjectType();
  (*(v54 + 296))(v55, v54);
  swift_unknownObjectRelease();
  v56 = [v51 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  v57 = v52;
  OUTLINED_FUNCTION_3_0();
  v58 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1BC4BA930;
  *(v59 + 32) = v45;
  *(v59 + 40) = v58;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v60 = v51;
  v61 = v45;
  v62 = v58;
  OUTLINED_FUNCTION_3_0();
  isa = OUTLINED_FUNCTION_8_63(v63, v64, v65, v66, v67, v68, v69, v70, v59, 0).super.super.isa;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1BC4BA930;
  *(v72 + 32) = v87;
  *(v72 + 40) = isa;
  v73 = v87;
  v74 = isa;
  OUTLINED_FUNCTION_3_0();
  v30 = OUTLINED_FUNCTION_8_63(v75, v76, v77, v78, v79, v80, v81, v82, v72, v85).super.super.isa;

  return v30;
}

uint64_t ConversationControlsMicMenuButtonProvider.__ivar_destroyer()
{
}

uint64_t ConversationControlsMicMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsMicMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsMicMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2)
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

id specialized Array<A>.preferredDevice(at:previousDevice:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a2)
  {
    v3 = a2;
    v7 = specialized Array<A>.camera(_:matchesPosition:)(v3, a1);
    if (v7)
    {
      v52 = v3;
      MEMORY[0x1EEE9AC00](v7);
      v46[2] = &v52;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v46, a3))
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1BC4BA940;
        v52 = v3;
        type metadata accessor for AVCaptureDevice();
        v9 = v3;
        v10 = String.init<A>(reflecting:)();
        v12 = v11;
        *(v8 + 56) = MEMORY[0x1E69E6158];
        *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v8 + 32) = v10;
        *(v8 + 40) = v12;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        return v5;
      }
    }

    v47 = 0;
    v48 = v5;
    v50 = a1;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v50 = a1;
  }

  v13 = specialized Array.count.getter(a3);
  v14 = 0;
  v51 = a3 & 0xC000000000000001;
  v15 = a3 & 0xFFFFFFFFFFFFFF8;
  v49 = 2 - v50;
  while (v13 != v14)
  {
    if (v51)
    {
      v16 = MEMORY[0x1BFB22010](v14, a3);
    }

    else
    {
      if (v14 >= *(v15 + 16))
      {
        goto LABEL_36;
      }

      v16 = *(a3 + 8 * v14 + 32);
    }

    v3 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BC4BAA20;
      v52 = v3;
      type metadata accessor for AVCaptureDevice();
      v28 = v3;
      v29 = String.init<A>(reflecting:)();
      v31 = v30;
      v32 = MEMORY[0x1E69E6158];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v33 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 64) = v33;
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      if (v48)
      {
        v52 = v48;
        v34 = v48;
        v35 = String.init<A>(reflecting:)();
      }

      else
      {
        v36 = 0xE300000000000000;
        v35 = 7104878;
      }

      *(v27 + 96) = v32;
      *(v27 + 104) = v33;
      *(v27 + 72) = v35;
      *(v27 + 80) = v36;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return v3;
    }

    v17 = a3;
    v18 = [v16 deviceType];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        v25 = [v3 position];
        v26 = v25 == v49;
        goto LABEL_23;
      }
    }

    v26 = (v50 | 2) == 2;
LABEL_23:
    a3 = v17;
    if (v26)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    ++v14;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BC4BAA20;
  LOBYTE(v52) = v50;
  v38 = String.init<A>(reflecting:)();
  v40 = v39;
  v41 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v42 = lazy protocol witness table accessor for type String and conformance String();
  *(v37 + 64) = v42;
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v52 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15AVCaptureDeviceCGMd);
  v43 = String.init<A>(reflecting:)();
  *(v37 + 96) = v41;
  *(v37 + 104) = v42;
  *(v37 + 72) = v43;
  *(v37 + 80) = v44;
  os_log(_:dso:log:type:_:)();

  return 0;
}

BOOL specialized Array<A>.camera(_:matchesPosition:)(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = [a1 deviceType];
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
      return [a1 position] == (2 - v3);
    }
  }

  return (v3 & 0xFD) == 0;
}

id TUVideoDeviceController.cameraPosition.getter()
{
  result = [v0 currentInputDevice];
  if (result)
  {
    v2 = result;
    if (CameraPosition.init(avDevicePosition:)([result position]).value == ConversationKit_CameraPosition_unknownDefault)
    {
      goto LABEL_3;
    }

    v3 = [v2 deviceType];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {

      return 0;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
LABEL_3:

      return 0;
    }

    LOBYTE(v10) = CameraPosition.init(avDevicePosition:)([v2 position]);
    v11 = v10;
    v12 = v10;

    if (v12 == 3)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void TUVideoDeviceController.startCamera(at:deviceOrientation:shouldUpdateLayers:)(uint64_t a1, unint64_t a2, char a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BAA20;
  v8 = String.init<A>(reflecting:)();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  type metadata accessor for CNKDeviceOrientation(0);
  v13 = String.init<A>(reflecting:)();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v15 = [v3 inputDevices];
  type metadata accessor for AVCaptureDevice();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [v3 currentInputDevice];
  v18 = specialized Array<A>.preferredDevice(at:previousDevice:)(a1, v17, v16);

  if (v18)
  {
    [v3 setCurrentInputDevice_];
    [v3 setCurrentVideoOrientation_];
    [v3 startPreview];
    if (a3)
    {
      TUVideoDeviceController.updateVideoLayers(for:)(a1);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t TUVideoDeviceController.tuVideoDeviceOrientationFor(_:)(unint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ([v1 currentInputIsExternal])
  {
    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationKit);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v6 = 2;
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Forcing device orientation to be landscapeLeft due to ipad external camera", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  else if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1BC4CE7F0[a1];
  }

  return v6;
}

Swift::Void __swiftcall TUVideoDeviceController.updateVideoLayers(for:)(ConversationKit::CameraPosition a1)
{
  if (a1 == ConversationKit_CameraPosition_front)
  {
    v5 = [v2 localBackLayer];
    if (v5)
    {
      OUTLINED_FUNCTION_2_98(v5);
    }

    goto LABEL_8;
  }

  if (a1 != ConversationKit_CameraPosition_back)
  {
LABEL_8:
    v4 = [v2 localFrontLayer];
    goto LABEL_9;
  }

  v3 = [v2 localFrontLayer];
  if (v3)
  {
    OUTLINED_FUNCTION_2_98(v3);
  }

  v4 = [v2 localBackLayer];
LABEL_9:
  v6 = v4;
  if (v6)
  {
    v7 = v6;
    [v6 setHidden_];
  }
}

id TUVideoDeviceController.updateCurrentVideoOrientation(_:)(unint64_t a1)
{
  v2 = TUVideoDeviceController.tuVideoDeviceOrientationFor(_:)(a1);

  return [v1 setCurrentVideoOrientation_];
}

Swift::Void __swiftcall TUVideoDeviceController.stopCamera()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v1 = static OS_os_log.conversationKit;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  [v0 stopPreview];
  v2 = [v0 localFrontLayer];
  if (v2)
  {
    OUTLINED_FUNCTION_2_98(v2);
  }

  v3 = [v0 localBackLayer];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];
  }
}

Swift::Void __swiftcall TUVideoDeviceController.pauseCamera()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [v0 pausePreview];
}

Swift::Void __swiftcall TUVideoDeviceController.setCameraBlurEnabled(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94();

  TUVideoDeviceController.setCurrentBackgroundBlurControlMode(mode:)(2);
  [v1 setCameraBlurEnabled_];
}

id TUVideoDeviceController.setCurrentBackgroundBlurControlMode(mode:)(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  type metadata accessor for TUVideoDeviceBackgroundBlurControlMode(0);
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94();

  return [v1 setCurrentBackgroundBlurControlMode_];
}

Swift::Void __swiftcall TUVideoDeviceController.setBackgroundReplacementEnabled(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94();

  [v1 setBackgroundReplacementEnabled_];
}

id TonePlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t TonePlayer.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8AA0]) init];
  v4[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallSoundPlayer);
  v4[4] = &protocol witness table for TUCallSoundPlayer;
  v4[0] = v1;
  v2 = (*(ObjectType + 184))(v4);
  swift_deallocPartialClassInstance();
  return v2;
}

char *TonePlayer.__allocating_init(soundPlayer:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_28_0();
  return TonePlayer.init(soundPlayer:)(v2);
}

char *TonePlayer.init(soundPlayer:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedConnectedToneUUID;
  v4 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundDate;
  v6 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(&v1[v5], 1, 1, v6);
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType];
  *v7 = 0;
  v7[8] = 1;
  outlined init with copy of IDSLookupManager(a1, &v1[OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer]);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TonePlayer();
  objc_msgSendSuper2(&v10, sel_init);
  v8 = OUTLINED_FUNCTION_28_0();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v1;
}

uint64_t type metadata accessor for TonePlayer()
{
  result = type metadata singleton initialization cache for TonePlayer;
  if (!type metadata singleton initialization cache for TonePlayer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TonePlayer.playOutgoingGFTRingtone(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 504))(ObjectType, a2);
  if (result)
  {
    v7 = result;
    v10[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    v10[4] = &protocol witness table for TUConversation;
    v10[0] = v7;
    v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC8);
    v9 = v7;
    v8(v10);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t TonePlayer.playOutgoingGFTRingtone(for:)(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v87 = v4;
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v85 = v9;
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v84 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v79 - v19;
  v21 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v23 = OUTLINED_FUNCTION_3_95();
  v25 = v24(v23);
  v26 = specialized Set.count.getter(v25);

  if (v26 < 2)
  {
    return result;
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer), *(v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 24));
  v28 = OUTLINED_FUNCTION_3_95();
  result = v29(v28);
  if (result)
  {
    return result;
  }

  v30 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v32 = OUTLINED_FUNCTION_3_95();
  result = v33(v32);
  if ((result & 1) == 0)
  {
    return result;
  }

  v34 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v36 = OUTLINED_FUNCTION_3_95();
  result = v37(v36);
  if ((result & 1) == 0)
  {
    return result;
  }

  v83 = v1;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v38 = (*(*static Defaults.shared + 904))();
    v40 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v41 = (*(v39 + 120))(v40, v39);
    v42 = v41;
    if ((v38 & 1) == 0)
    {
      v55 = specialized Set.isEmpty.getter(v41);

      if ((v55 & 1) == 0)
      {
        return result;
      }

      goto LABEL_44;
    }

    if ((v41 & 0xC000000000000001) == 0)
    {
      break;
    }

    v43 = MEMORY[0x1E69E7CD0];
    aBlock[0] = MEMORY[0x1E69E7CD0];
    a1 = __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        v44 = __CocoaSet.Iterator.next()();
        if (!v44)
        {

          goto LABEL_43;
        }

        v89 = v44;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
        swift_dynamicCast();
        v45 = [v90 audioVideoMode];
        v46 = v90;
        if (v45)
        {
          break;
        }
      }

      if (v43[3] <= v43[2])
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v43 = aBlock[0];
      v47 = NSObject._rawHashValue(seed:)(*(aBlock[0] + 40)) & ~(-1 << *(v43 + 32));
      if (((-1 << v47) & ~v43[(v47 >> 6) + 7]) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_23:
      OUTLINED_FUNCTION_5_78(v48);
      *(v43[6] + 8 * v54) = v46;
      ++v43[2];
    }

    OUTLINED_FUNCTION_15_33();
    while (++v50 != v52 || (v51 & 1) == 0)
    {
      v53 = v50 == v52;
      if (v50 == v52)
      {
        v50 = 0;
      }

      v51 |= v53;
      if (*(v49 + 8 * v50) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v56 = *(v41 + 32);
  v57 = v56 & 0x3F;
  v58 = (1 << v56) + 63;
  v59 = 8 * (v58 >> 6);
  if (v57 <= 0xD)
  {
LABEL_28:
    v79[0] = v79;
    MEMORY[0x1EEE9AC00](v41);
    v79[1] = v60;
    v80 = v79 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v60, v80);
    v81 = 0;
    v82 = v42;
    v61 = 0;
    v62 = v42 + 56;
    v63 = 1 << *(v42 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(v42 + 56);
    a1 = ((v63 + 63) >> 6);
    while (v65)
    {
      v66 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
LABEL_38:
      v69 = v66 | (v61 << 6);
      if ([*(*(v82 + 48) + 8 * v69) audioVideoMode])
      {
        *(v80 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
        if (__OFADD__(v81++, 1))
        {
          __break(1u);
LABEL_42:
          specialized _NativeSet.extractSubset(using:count:)();
          v43 = v71;
          goto LABEL_43;
        }
      }
    }

    v67 = v61;
    while (1)
    {
      v61 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_49;
      }

      if (v61 >= a1)
      {
        goto LABEL_42;
      }

      v68 = *(v62 + 8 * v61);
      ++v67;
      if (v68)
      {
        v66 = __clz(__rbit64(v68));
        v65 = (v68 - 1) & v68;
        goto LABEL_38;
      }
    }
  }

  v77 = v58 >> 6;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_28;
  }

  v78 = swift_slowAlloc();

  v43 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo25TUConversationParticipantCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So25iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v78, v77, v42, closure #1 in TonePlayer.playOutgoingGFTRingtone(for:), 0);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1BFB23DF0](v78, -1, -1);
LABEL_43:
  v72 = specialized Set.isEmpty.getter(v43);

  if (v72)
  {
LABEL_44:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    TonePlayer.playTone(_:)(1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v73 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v84 = *(v84 + 8);
    (v84)(v17, v13);
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #2 in TonePlayer.playOutgoingGFTRingtone(for:);
    aBlock[5] = v74;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_46;
    v75 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v76 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB21510](v20, v12, v7, v75);
    _Block_release(v75);

    (*(v87 + 8))(v7, v76);
    (*(v85 + 8))(v12, v86);
    return (v84)(v20, v13);
  }

  return result;
}

void closure #2 in TonePlayer.playOutgoingGFTRingtone(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    if ((*(v4 + 16))(v3, v4) == 1)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      v5 = os_log(_:dso:log:type:_:)();
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v5);
    }
  }
}

uint64_t TonePlayer.playConnectedTone(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 504))(ObjectType, a2);
  if (result)
  {
    v7 = result;
    v10[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    v10[4] = &protocol witness table for TUConversation;
    v10[0] = v7;
    v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8);
    v9 = v7;
    v8(v10);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t TonePlayer.playConnectedTone(for:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v56 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v55 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53[-v21];
  v23 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedConnectedToneUUID;
  OUTLINED_FUNCTION_10_50();
  v64 = v1;
  v60 = v23;
  outlined init with copy of Participant?(v1 + v23, v22, &_s10Foundation4UUIDVSgMd);
  v24 = a1[3];
  v25 = a1[4];
  v63 = a1;
  v26 = __swift_project_boxed_opaque_existential_1(a1, v24);
  v27 = *(v25 + 8);
  v57 = v26;
  v58 = v25;
  v59 = v24;
  v28 = v25;
  v29 = v27;
  v27(v24, v28);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
  v30 = *(v8 + 56);
  outlined init with copy of Participant?(v22, v11, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of Participant?(v19, &v11[v30], &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_29_0(v11);
  if (v33)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_29_0(&v11[v30]);
    if (v33)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v32 = v62;
    outlined init with copy of Participant?(v11, v62, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_29_0(&v11[v30]);
    if (!v33)
    {
      v49 = v56;
      v50 = &v11[v30];
      v51 = v55;
      (*(v56 + 32))(v55, v50, v3);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v49 + 8);
      v52(v51, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd);
      v52(v62, v3);
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSgMd);
      v39 = v63;
      v38 = v64;
      if (v54)
      {
        return result;
      }

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, v35);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, v37);
    (*(v56 + 8))(v32, v3);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSg_ADtMd);
  v39 = v63;
  v38 = v64;
LABEL_10:
  v40 = v61;
  v29(v59, v58);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v3);
  v41 = v60;
  swift_beginAccess();
  outlined assign with take of Participant?(v40, v38 + v41, &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  v42 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v43 = OUTLINED_FUNCTION_28_0();
  v45 = v44(v43, v42);
  specialized Set.count.getter(v45);
  OUTLINED_FUNCTION_28_0();

  if (v41 == 1)
  {
    return TonePlayer.playTone(_:)(2);
  }

  v46 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v47 = OUTLINED_FUNCTION_28_0();
  result = v48(v47, v46);
  if ((result & 1) == 0)
  {
    return TonePlayer.playTone(_:)(2);
  }

  return result;
}

Swift::Void __swiftcall TonePlayer.playParticipantJoinedTone()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_14_37();
  outlined init with copy of Participant?(v5, v6, v7);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4DateVSgMd);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_88();
  v9(v8);
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType + 8) & 1) != 0 || ((v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType), v10 != 8) ? (v11 = v10 == 2) : (v11 = 1), !v11))
  {
    v16 = OUTLINED_FUNCTION_4_83();
    v17(v16);
    goto LABEL_12;
  }

  Date.timeIntervalSinceNow.getter();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_4_83();
  v15(v14);
  if (v13 >= 2.0)
  {
LABEL_12:
    TonePlayer.playTone(_:)(8);
  }
}

Swift::Void __swiftcall TonePlayer.playParticipantLeftTone()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_14_37();
  outlined init with copy of Participant?(v5, v6, v7);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4DateVSgMd);
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_88();
  v9(v8);
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType) != 9)
  {
    v14 = OUTLINED_FUNCTION_4_83();
    v15(v14);
    goto LABEL_8;
  }

  Date.timeIntervalSinceNow.getter();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_83();
  v13(v12);
  if (v11 >= 2.0)
  {
LABEL_8:
    TonePlayer.playTone(_:)(9);
  }
}

Swift::Void __swiftcall TonePlayer.stopPlaying()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer), *(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 24));
  v2 = OUTLINED_FUNCTION_62_0();
  if (v3(v2))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BC4BA940;
    v5 = v1[3];
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v5);
    (*(v6 + 16))(v5, v6);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v4 + 32) = v7;
    *(v4 + 40) = v9;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v10 = OUTLINED_FUNCTION_62_0();
    v11(v10);
  }
}

uint64_t TonePlayer.playTone(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = swift_allocObject();
  v27 = xmmword_1BC4BA940;
  *(v8 + 16) = xmmword_1BC4BA940;
  v28 = a1;
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 providerManager];

  v16 = [v15 faceTimeProvider];
  v17 = [objc_allocWithZone(MEMORY[0x1E69D8AA8]) initWithSoundType:a1 provider:v16 video:1 region:0];

  if (v17)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
    v18 = *(v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 24);
    v19 = *(v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer), v18);
    (*(v19 + 32))(v17, v18, v19);
    static Date.now.getter();

    v20 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v20);
    v21 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundDate;
    swift_beginAccess();
    outlined assign with take of Participant?(v7, v2 + v21, &_s10Foundation4DateVSgMd);
    result = swift_endAccess();
    v23 = v2 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType;
    *v23 = a1;
    v23[8] = 0;
  }

  else
  {
    static os_log_type_t.error.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    v28 = a1;
    v25 = String.init<A>(reflecting:)();
    *(v24 + 56) = v12;
    *(v24 + 64) = v13;
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    os_log(_:dso:log:type:_:)();
  }

  return result;
}

id TonePlayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized Set._Variant.filter(_:)(uint64_t (*a1)(id *), void *a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CD0];
    v18 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {

          return;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
        swift_dynamicCast();
        v6 = a1(&v17);
        if (v3)
        {

          v16 = v17;

          return;
        }

        v7 = v17;
        if (v6)
        {
          break;
        }
      }

      if (*(v5 + 24) <= *(v5 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v5 = v18;
      v8 = NSObject._rawHashValue(seed:)(*(v18 + 40)) & ~(-1 << *(v5 + 32));
      if (((-1 << v8) & ~*(v5 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_18:
      OUTLINED_FUNCTION_5_78(v9);
      *(*(v5 + 48) + 8 * v15) = v7;
      ++*(v5 + 16);
    }

    OUTLINED_FUNCTION_15_33();
    while (++v11 != v13 || (v12 & 1) == 0)
    {
      v14 = v11 == v13;
      if (v11 == v13)
      {
        v11 = 0;
      }

      v12 |= v14;
      if (*(v10 + 8 * v11) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    specialized _NativeSet.filter(_:)(a1, a2, a3);
  }
}

void *specialized _NativeSet.filter(_:)(uint64_t (*a1)(id *), void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v30 = a1;
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v4;
    v28 = &v26;
    MEMORY[0x1EEE9AC00](a1);
    v26 = v8;
    v27 = &v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v27);
    v29 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v32[0] = *(*(v5 + 48) + 8 * v17);
      v18 = v32[0];
      v19 = v31;
      v20 = v30(v32);
      v31 = v19;
      if (v19)
      {

        swift_willThrow();
        return a2;
      }

      v21 = v20;

      v5 = v4;
      if (v21)
      {
        *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          specialized _NativeSet.extractSubset(using:count:)();
          return v23;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  a2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo25TUConversationParticipantCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So25iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v25, v8, v5, v30, a2);

  MEMORY[0x1BFB23DF0](v25, -1, -1);
  return a2;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo25TUConversationParticipantCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So25iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void type metadata completion function for TonePlayer()
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TonePlayer.playOutgoingGFTRingtone(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
}

uint64_t dispatch thunk of TonePlayer.playConnectedTone(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ConversationKit::InCallControlsView::ConfigurationCapabilities __swiftcall InCallControlsView.ConfigurationCapabilities.init(supportsCinematicFraming:supportsEffects:supportsVideo:isLegacyCall:)(Swift::Bool supportsCinematicFraming, Swift::Bool supportsEffects, Swift::Bool supportsVideo, Swift::Bool isLegacyCall)
{
  if (supportsVideo || isLegacyCall)
  {
    v4 = ConversationKit_InCallControlsView_ConfigurationCapabilities_videoNoEffects;
  }

  else
  {
    v4 = ConversationKit_InCallControlsView_ConfigurationCapabilities_audioOnly;
  }

  if (supportsCinematicFraming || supportsEffects)
  {
    return !supportsCinematicFraming;
  }

  else
  {
    return v4;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InCallControlsView.JoinLeaveConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t key path getter for InCallControlsView.dataSource : InCallControlsView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for InCallControlsView.dataSource : InCallControlsView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsView.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsView.dataSource.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t InCallControlsView.joinLeaveConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  OUTLINED_FUNCTION_4_0();
  return *(v0 + v1);
}

uint64_t key path getter for InCallControlsView.joinLeaveConfiguration : InCallControlsView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t InCallControlsView.joinLeaveConfiguration.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return InCallControlsView.joinLeaveConfiguration.didset(v4);
}

uint64_t InCallControlsView.joinLeaveConfiguration.didset(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != a1)
  {
    return InCallControlsView.JoinLeaveConfiguration.configure(_:)(*(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton), v5);
  }

  return result;
}

uint64_t InCallControlsView.JoinLeaveConfiguration.configure(_:)(void *a1, char a2)
{
  if (!a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v12 = *MEMORY[0x1E69DDDC8];
    v32 = 0;
    v41 = 0x69662E6F65646976;
    v42 = 0xEA00000000006C6CLL;
    v43 = 3;
    v44 = v12;
    v45 = 0;
    v46 = 4;
    v47 = 0;
    v48 = 0;
    v33 = 0x69662E6F65646976;
    v34 = 0xEA00000000006C6CLL;
    v35 = 3;
    v36 = v12;
    v37 = 0;
    v38 = 4;
    v39 = 0;
    v40 = 0;
    v13 = v12;
    outlined init with copy of SymbolImageDescription(&v41, v31);
    outlined destroy of SymbolImageDescription(&v33);
    v14 = static UIImage.symbolImage(for:)(&v41);
    outlined destroy of SymbolImageDescription(&v41);
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x150))(v14);
    v7 = "DRAWER_JOIN_CALL_BUTTON";
    v8 = [objc_opt_self() conversationKit];
    v30 = 0xE000000000000000;
    v9 = 0x61737265766E6F43;
    v10 = 0xEF74694B6E6F6974;
    v11 = 0xD00000000000001FLL;
LABEL_5:
    v15 = v7 | 0x8000000000000000;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v8, v16, *(&v30 - 1));

    (*((*v6 & *a1) + 0x1B8))(v18._countAndFlagsBits, v18._object);
    if (one-time initialization token for joinButton == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v3 = *MEMORY[0x1E69DDDC8];
    v32 = 0;
    v41 = 0x69662E6F65646976;
    v42 = 0xEA00000000006C6CLL;
    v43 = 3;
    v44 = v3;
    v45 = 0;
    v46 = 4;
    v47 = 0;
    v48 = 0;
    v33 = 0x69662E6F65646976;
    v34 = 0xEA00000000006C6CLL;
    v35 = 3;
    v36 = v3;
    v37 = 0;
    v38 = 4;
    v39 = 0;
    v40 = 0;
    v4 = v3;
    outlined init with copy of SymbolImageDescription(&v41, v31);
    outlined destroy of SymbolImageDescription(&v33);
    v5 = static UIImage.symbolImage(for:)(&v41);
    outlined destroy of SymbolImageDescription(&v41);
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x150))(v5);
    v7 = "buttonLabelWidthConstraints";
    v8 = [objc_opt_self() conversationKit];
    v30 = 0xE000000000000000;
    v9 = 0x61737265766E6F43;
    v10 = 0xEF74694B6E6F6974;
    v11 = 0xD000000000000017;
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v19 = *MEMORY[0x1E69DDDC0];
  v32 = 0;
  v41 = 0x6B72616D78;
  v42 = 0xE500000000000000;
  v43 = 3;
  v44 = v19;
  v45 = 0;
  v46 = 6;
  v47 = 0;
  v48 = 0;
  v33 = 0x6B72616D78;
  v34 = 0xE500000000000000;
  v35 = 3;
  v36 = v19;
  v37 = 0;
  v38 = 6;
  v39 = 0;
  v40 = 0;
  v20 = v19;
  outlined init with copy of SymbolImageDescription(&v41, v31);
  outlined destroy of SymbolImageDescription(&v33);
  v21 = static UIImage.symbolImage(for:)(&v41);
  outlined destroy of SymbolImageDescription(&v41);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x150))(v21);
  v22 = [objc_opt_self() conversationKit];
  v49._object = 0xE000000000000000;
  v23.value._countAndFlagsBits = 0x61737265766E6F43;
  v23.value._object = 0xEF74694B6E6F6974;
  v24._object = 0x80000001BC504C40;
  v24._countAndFlagsBits = 0xD000000000000016;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, v49);

  (*((*v6 & *a1) + 0x1B8))(v26._countAndFlagsBits, v26._object);
  if (one-time initialization token for leaveButton != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v27 = *((*v6 & *a1) + 0x1D0);

  return v27(v28);
}

void (*InCallControlsView.joinLeaveConfiguration.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  OUTLINED_FUNCTION_4_0();
  *(v3 + 32) = *(v1 + v4);
  return InCallControlsView.joinLeaveConfiguration.modify;
}

void InCallControlsView.joinLeaveConfiguration.modify(uint64_t a1)
{
  v1 = *a1;
  InCallControlsView.joinLeaveConfiguration.setter(*(*a1 + 32));

  free(v1);
}

uint64_t InCallControlsView.__allocating_init(frame:capabilities:)(char a1)
{
  OUTLINED_FUNCTION_20_2();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_18_1();
  return InCallControlsView.init(frame:capabilities:)(a1);
}

uint64_t InCallControlsView.init(frame:capabilities:)(char a1)
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton;
  type metadata accessor for InCallControlButton();
  String.localized.getter();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_9_57();
  v441 = v4;
  *(v1 + v4) = OUTLINED_FUNCTION_1_102(0, v5, v6, v7, v8, v9, v10, v11, 1, 0);
  v12 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton;
  OUTLINED_FUNCTION_10_51();
  String.localized.getter();
  OUTLINED_FUNCTION_6_67();
  v434 = v12;
  *(v1 + v12) = OUTLINED_FUNCTION_1_102(0, v13, v14, v15, v16, v17, v18, v19, v394, v398);
  v20 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton;
  String.localized.getter();
  OUTLINED_FUNCTION_6_67();
  v440 = v20;
  *(v1 + v20) = OUTLINED_FUNCTION_1_102(3, v21, v22, v23, v24, v25, v26, v27, v395, v399);
  v28 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton;
  String.localized.getter();
  OUTLINED_FUNCTION_6_67();
  v432 = v28;
  *(v1 + v28) = OUTLINED_FUNCTION_1_102(0, v29, v30, v31, v32, v33, v34, v35, v396, v400);
  v36 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton;
  v37 = &type metadata for SymbolImageDescribers.DrawerPill;
  v450 = &type metadata for SymbolImageDescribers.DrawerPill;
  v451 = &protocol witness table for SymbolImageDescribers.DrawerPill;
  LOBYTE(v449[0]) = 1;
  String.localizedHidden.getter();
  OUTLINED_FUNCTION_6_67();
  *(v1 + v36) = OUTLINED_FUNCTION_1_102(5, v38, v39, v40, v41, v42, v43, v44, v397, v401);
  v428 = v1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration) = 2;
  switch(a1)
  {
    case 1:
      v450 = &type metadata for SymbolImageDescribers.DrawerPill;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerPill;
      LOBYTE(v449[0]) = 0;
      OUTLINED_FUNCTION_10_51();
      v113 = v112;
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v121 = OUTLINED_FUNCTION_1_102(5, v114, v115, v116, v117, v118, v119, v120, 1, 0);
      v122 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = v121;
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v70 = OUTLINED_FUNCTION_1_102(5, v449, v123, v124, v125, v126, v127, v128, 1, 0);
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v37 = swift_allocObject();
      *(v37 + 16) = *(v113 + 2032);
      v129 = *(v1 + v441);
      v130 = *(v1 + v434);
      *(v37 + 32) = v129;
      *(v37 + 40) = v130;
      v65 = *(v1 + v432);
      v68 = *(v440 + v1);
      *(v37 + 48) = v65;
      *(v37 + 56) = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd);
      v66 = OUTLINED_FUNCTION_3_6();
      *(v66 + 16) = xmmword_1BC4BAA20;
      *(v66 + 32) = v37;
      v131 = OUTLINED_FUNCTION_3_6();
      *(v131 + 16) = xmmword_1BC4BA930;
      v61 = *(v428 + v122);
      *(v131 + 32) = v61;
      *(v131 + 40) = v70;
      *(v66 + 40) = v131;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v66;
      v132 = v129;
      v133 = v130;
      v134 = v65;
      goto LABEL_6;
    case 2:
      v450 = &type metadata for SymbolImageDescribers.DrawerDisc;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
      LOBYTE(v449[0]) = 2;
      OUTLINED_FUNCTION_10_51();
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v82 = OUTLINED_FUNCTION_1_102(0, v75, v76, v77, v78, v79, v80, v81, 1, 0);
      v83 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = v82;
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v70 = OUTLINED_FUNCTION_1_102(5, v449, v84, v85, v86, v87, v88, v89, 1, 0);
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v90 = swift_allocObject();
      v91 = *(v1 + v83);
      v65 = *(v1 + v441);
      *(v90 + 16) = xmmword_1BC4BA920;
      v92 = *(v1 + v434);
      v68 = *(v1 + v432);
      *(v90 + 32) = v91;
      *(v90 + 40) = v65;
      *(v90 + 48) = v92;
      *(v90 + 56) = v68;
      v61 = *(v440 + v428);
      *(v90 + 64) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd);
      v66 = OUTLINED_FUNCTION_3_6();
      *(v66 + 16) = xmmword_1BC4BAA20;
      *(v66 + 32) = v90;
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1BC4BAC30;
      *(v93 + 32) = v70;
      *(v66 + 40) = v93;
      v37 = &unk_1EBCAE000;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v66;
      v94 = v91;
      v95 = v65;
      v96 = v92;
      goto LABEL_6;
    case 3:
      v450 = &type metadata for SymbolImageDescribers.DrawerDisc;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
      LOBYTE(v449[0]) = 2;
      OUTLINED_FUNCTION_10_51();
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v65 = v1;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = OUTLINED_FUNCTION_1_102(0, v97, v98, v99, v100, v101, v102, v103, 1, 0);
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v68 = OUTLINED_FUNCTION_1_102(0, v449, v104, v105, v106, v107, v108, v109, 1, 0);
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1BC4BA940;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_1BC4BC370;
      v61 = *(v428 + v441);
      v70 = *(v440 + v428);
      *(v110 + 32) = v68;
      *(v110 + 40) = v61;
      *(v110 + 48) = v70;
      *(v66 + 32) = v110;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v66;
      v111 = &unk_1EBCAE000;
      goto LABEL_7;
    default:
      v450 = &type metadata for SymbolImageDescribers.DrawerPill;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerPill;
      LOBYTE(v449[0]) = 0;
      OUTLINED_FUNCTION_10_51();
      v46 = v45;
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v54 = OUTLINED_FUNCTION_1_102(5, v47, v48, v49, v50, v51, v52, v53, 1, 0);
      v427 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = v54;
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v61 = OUTLINED_FUNCTION_1_102(5, v449, v55, v56, v57, v58, v59, v60, 1, 0);
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v62 = swift_allocObject();
      *(v62 + 16) = *(v46 + 2032);
      v63 = *(v428 + v441);
      v64 = *(v428 + v434);
      *(v62 + 32) = v63;
      *(v62 + 40) = v64;
      v37 = *(v428 + v432);
      v65 = *(v440 + v428);
      *(v62 + 48) = v37;
      *(v62 + 56) = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1BC4BB980;
      *(v66 + 32) = v62;
      v67 = OUTLINED_FUNCTION_3_6();
      *(v67 + 16) = xmmword_1BC4BA930;
      v68 = *(v428 + v427);
      *(v67 + 32) = v68;
      *(v67 + 40) = v61;
      *(v66 + 40) = v67;
      v69 = swift_allocObject();
      v70 = *(v428 + v36);
      *(v69 + 16) = xmmword_1BC4BAC30;
      *(v69 + 32) = v70;
      *(v66 + 48) = v69;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v66;
      v71 = v63;
      v72 = v64;
      v73 = v37;
      v74 = v65;
LABEL_6:
      v111 = &unk_1EBCAE000;
LABEL_7:
      v135 = v68;
      v136 = v61;
      v137 = v70;
      v138 = protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v138, v139, v66);
      v140 = *(v66 + 32);
      v141 = specialized Array.count.getter(v140);
      if (!v141)
      {
        goto LABEL_18;
      }

      v142 = v141;
      if (v141 < 1)
      {
        goto LABEL_334;
      }

      v143 = 0;
      v37 = &selRef_isRecordingAllowed;
      do
      {
        if ((v140 & 0xC000000000000001) != 0)
        {
          v144 = MEMORY[0x1BFB22010](v143, v140);
        }

        else
        {
          v144 = *(v140 + 8 * v143 + 32);
        }

        v145 = v144;
        v146 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label;
        v147 = *&v144[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
        if (v147)
        {
          [v147 setTextAlignment_];
          v148 = *&v145[v146];
          if (v148)
          {
            [v148 setNumberOfLines_];
          }
        }

        ++v143;

        v111 = &unk_1EBCAE000;
      }

      while (v142 != v143);

LABEL_18:
      v65 = *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow);
      v149 = *(v65 + 16);
      v140 = MEMORY[0x1E69E7CC0];
      v424 = MEMORY[0x1E69E7CC0];
      if (v149)
      {
        v419 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow;
        v449[0] = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v149, 0);
        v150 = 0;
        v151 = v449[0];
        v435 = v65;
        v440 = (v65 + 32);
        v433 = v149;
        do
        {
          if (v150 >= *(v65 + 16))
          {
            goto LABEL_304;
          }

          v37 = v440[v150];
          if (v37 >> 62)
          {
            v163 = __CocoaSet.count.getter();
            if (v163 < 0)
            {
              goto LABEL_305;
            }

            v152 = v163;
          }

          else
          {
            v152 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v153 = (v152 + 1);
          if (__OFADD__(v152, 1))
          {
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
            goto LABEL_311;
          }

          v448[0] = v140;

          v154 = v448;
          specialized ContiguousArray.reserveCapacity(_:)();
          if ((v153 & 0x8000000000000000) != 0)
          {
            goto LABEL_307;
          }

          v155 = v150;
          v156 = 0;
          v157 = 0;
          v158 = 0;
          v442 = v155 + 1;
          do
          {
            v65 = v156 + 1;
            if (__OFADD__(v156, 1))
            {
              __break(1u);
LABEL_279:
              __break(1u);
LABEL_280:
              __break(1u);
              goto LABEL_281;
            }

            if (v158)
            {
              goto LABEL_333;
            }

            v140 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
            v154 = v448;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v158 = v157 == v152;
            if (v157 == v152)
            {
              v157 = 0;
            }

            else
            {
              v159 = __OFADD__(v157++, 1);
              if (v159)
              {
                __break(1u);
                goto LABEL_284;
              }
            }

            v156 = (v156 + 1);
          }

          while (v65 != v153);

          v160 = v448[0];
          v449[0] = v151;
          v162 = *(v151 + 16);
          v161 = *(v151 + 24);
          if (v162 >= v161 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1);
            v151 = v449[0];
          }

          *(v151 + 16) = v162 + 1;
          *(v151 + 8 * v162 + 32) = v160;
          v65 = v435;
          v150 = v442;
          v111 = &unk_1EBCAE000;
          v140 = MEMORY[0x1E69E7CC0];
        }

        while (v442 != v433);
        v427 = v151;

        v65 = *(v428 + v419);
      }

      else
      {
        v427 = MEMORY[0x1E69E7CC0];
      }

      v164 = protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v164, v165, v65);
      v166 = *(v65 + 32);
      v449[0] = v140;
      v167 = specialized Array.count.getter(v166);

      v168 = 0;
      v65 = &selRef_isRecordingAllowed;
      break;
  }

  while (v167 != v168)
  {
    if ((v166 & 0xC000000000000001) != 0)
    {
      v169 = MEMORY[0x1BFB22010](v168, v166);
    }

    else
    {
      if (v168 >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_293;
      }

      v169 = *(v166 + 8 * v168 + 32);
    }

    v37 = v169;
    if (__OFADD__(v168, 1))
    {
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v170 = *&v169[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
    if (v170)
    {
      v140 = [v170 widthAnchor];
      v171 = [v140 constraintEqualToConstant_];

      if (!v171)
      {
        goto LABEL_51;
      }

      MEMORY[0x1BFB20CC0]();
      v140 = *((v449[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v140 >= *((v449[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_11_56();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v424 = v449[0];
      ++v168;
      v111 = &unk_1EBCAE000;
    }

    else
    {

LABEL_51:
      ++v168;
      v111 = &unk_1EBCAE000;
    }
  }

  *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonLabelWidthConstraints) = v424;
  v448[3] = v428;
  v448[4] = ObjectType;
  v172 = OUTLINED_FUNCTION_18_1();
  v175 = objc_msgSendSuper2(v173, v174, v172);
  v402 = v111[336];
  v176 = *&v402[v175];
  v177 = *((*MEMORY[0x1E69E7D40] & *v176) + 0x200);
  v178 = v175;
  v179 = v176;
  v403 = v175;
  v177(v175, &protocol witness table for InCallControlsView);

  v180 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  OUTLINED_FUNCTION_4_0();
  v404 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton;
  LOBYTE(v180) = v178[v180];
  v181 = *&v178[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton];
  InCallControlsView.JoinLeaveConfiguration.configure(_:)(v181, v180);

  v447 = *&v178[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonLabelWidthConstraints];
  v182 = objc_allocWithZone(MEMORY[0x1E69DCC20]);

  v183 = [(SEL *)v182 init];
  [v178 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_24_28(inited, xmmword_1BC4BC370);
  v186 = [v183 v185];
  v187 = [v178 v182[478]];
  v37 = &off_1E7FE9000;
  v188 = OUTLINED_FUNCTION_205();
  v190 = [v188 v189];

  inited[2].n128_u64[0] = v190;
  v191 = [(SEL *)v183 trailingAnchor];
  v192 = [v178 trailingAnchor];

  v193 = OUTLINED_FUNCTION_205();
  v195 = [v193 v194];

  inited[2].n128_u64[1] = v195;
  v405 = v183;
  v196 = [(SEL *)v183 heightAnchor];
  v197 = [v196 &selRef_fillColor + 1];

  inited[3].n128_u64[0] = v197;
  specialized Array.append<A>(contentsOf:)(inited);
  v440 = v178;
  v407 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow;
  v140 = *&v178[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow];
  v198 = protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v198, v199, v140);
  v200 = *(v140 + 32);
  v201 = specialized Array.count.getter(v200);
  v65 = 0x1E7FE9000;
  v202 = &off_1E7FE9000;
  if (v201)
  {
    v203 = v201;
    if (v201 < 1)
    {
      goto LABEL_335;
    }

    for (i = 0; i != v203; ++i)
    {
      if ((v200 & 0xC000000000000001) != 0)
      {
        v205 = MEMORY[0x1BFB22010](i, v200);
      }

      else
      {
        v205 = *(v200 + 8 * i + 32);
      }

      v206 = v205;
      [v206 setTranslatesAutoresizingMaskIntoConstraints_];
      [v440 addSubview_];
      v207 = [v206 topAnchor];
      v208 = [v440 topAnchor];
      v209 = OUTLINED_FUNCTION_2_52();
      v211 = [v209 v210];

      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_2_99();
      if (v212)
      {
        OUTLINED_FUNCTION_5_79();
      }

      OUTLINED_FUNCTION_28_27();
      v213 = [(SEL *)v405 topAnchor];
      v214 = [v206 bottomAnchor];
      v215 = OUTLINED_FUNCTION_2_52();
      v217 = [v215 v216];

      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_2_99();
      if (v212)
      {
        OUTLINED_FUNCTION_5_79();
      }

      OUTLINED_FUNCTION_28_27();
      v218 = [(SEL *)v405 topAnchor];
      v219 = [v206 bottomAnchor];

      v220 = OUTLINED_FUNCTION_205();
      v222 = [v220 v221];

      LODWORD(v223) = 1144750080;
      MEMORY[0x1BFB20CC0]([v222 setPriority_]);
      OUTLINED_FUNCTION_7_65();
      if (v212)
      {
        OUTLINED_FUNCTION_11_56();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v65 = &off_1E7FE9000;
    v202 = &off_1E7FE9000;
  }

  v140 = *(v440 + v407);
  v224 = *(v140 + 16);
  v37 = &stru_1BC4BA000;
  if (v224 > 1)
  {
    v225 = v140 + 32;
    v429 = v405;

    v226 = 0;
    while (v226 != v224)
    {
      v227 = v226;
      if (v226 >= *(v140 + 16))
      {
        goto LABEL_308;
      }

      v226 = 1;
      if (v227)
      {
        v414 = v224;
        v416 = v140;
        v412 = v225;
        v37 = *(v225 + 8 * v227);
        v140 = objc_allocWithZone(MEMORY[0x1E69DCC20]);

        v228 = [v140 init];
        OUTLINED_FUNCTION_22_32();
        if (v229 != v159)
        {
          [v440 addLayoutGuide_];
          v230 = swift_initStackObject();
          OUTLINED_FUNCTION_24_28(v230, xmmword_1BC4BC370);
          v232 = [v228 v231];
          v233 = [v440 *(v224 + 3824)];
          v234 = OUTLINED_FUNCTION_205();
          v236 = [v234 v235];

          v230[2].n128_u64[0] = v236;
          v237 = [v228 trailingAnchor];
          v238 = [v440 trailingAnchor];
          v239 = OUTLINED_FUNCTION_205();
          v241 = [v239 v240];

          v230[2].n128_u64[1] = v241;
          v140 = [v228 heightAnchor];
          v242 = [v140 constraintEqualToConstant_];

          v230[3].n128_u64[0] = v242;
          v243 = v230;
          v202 = &off_1E7FE9000;
          v65 = &off_1E7FE9000;
          specialized Array.append<A>(contentsOf:)(v243);
        }

        v425 = v228;
        v244 = 0;
        v226 = v227 + 1;
        v443 = v37 & 0xFFFFFFFFFFFFFF8;
        v420 = v37;
        v436 = v37 & 0xC000000000000001;
        if (v227 == 1)
        {
          v245 = 28.0;
        }

        else
        {
          v245 = 12.0;
        }

        while (1)
        {
          v246 = v37 >> 62 ? __CocoaSet.count.getter() : *(v443 + 16);
          if (v244 == v246)
          {
            break;
          }

          if (v436)
          {
            v247 = MEMORY[0x1BFB22010](v244, v37);
          }

          else
          {
            if (v244 >= *(v443 + 16))
            {
              goto LABEL_310;
            }

            v247 = *(v37 + 8 * v244 + 32);
          }

          if (__OFADD__(v244, 1))
          {
            goto LABEL_309;
          }

          v248 = v247;
          [v248 setTranslatesAutoresizingMaskIntoConstraints_];
          [v440 addSubview_];
          v249 = [v248 v202[476]];
          v250 = [v429 *(v65 + 3840)];
          v251 = OUTLINED_FUNCTION_2_52();
          v253 = [v251 v252];

          MEMORY[0x1BFB20CC0]();
          OUTLINED_FUNCTION_2_99();
          if (v212)
          {
            OUTLINED_FUNCTION_5_79();
          }

          OUTLINED_FUNCTION_28_27();
          v254 = [v248 heightAnchor];
          v140 = [v254 constraintGreaterThanOrEqualToConstant_];

          MEMORY[0x1BFB20CC0]();
          OUTLINED_FUNCTION_2_99();
          if (v212)
          {
            OUTLINED_FUNCTION_5_79();
          }

          OUTLINED_FUNCTION_28_27();
          OUTLINED_FUNCTION_22_32();
          if (v229 != v159)
          {
            v255 = [v425 v202[476]];
            v256 = [v248 (v65 + 3365)];
            v257 = OUTLINED_FUNCTION_2_52();
            v259 = [v257 v258];

            MEMORY[0x1BFB20CC0]();
            OUTLINED_FUNCTION_2_99();
            if (v212)
            {
              OUTLINED_FUNCTION_5_79();
            }

            OUTLINED_FUNCTION_28_27();
            v140 = [v425 v202[476]];
            v260 = [v248 (v65 + 3365)];
            v261 = OUTLINED_FUNCTION_205();
            v263 = [v261 v262];

            LODWORD(v264) = 1144750080;
            MEMORY[0x1BFB20CC0]([v263 setPriority_]);
            OUTLINED_FUNCTION_7_65();
            if (v212)
            {
              OUTLINED_FUNCTION_11_56();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v65 = 0x1E7FE9000;
            v202 = &off_1E7FE9000;
            v37 = v420;
          }

          if (v244)
          {
            if (v436)
            {
              v265 = MEMORY[0x1BFB22010](0, v37);
            }

            else
            {
              if (!*(v443 + 16))
              {
                goto LABEL_332;
              }

              v265 = *(v37 + 32);
            }

            v266 = v265;
            v267 = [v265 widthAnchor];

            v268 = [v248 widthAnchor];
            v269 = OUTLINED_FUNCTION_2_52();
            v140 = [v269 v270];

            MEMORY[0x1BFB20CC0]();
            OUTLINED_FUNCTION_2_99();
            if (v212)
            {
              OUTLINED_FUNCTION_5_79();
            }

            OUTLINED_FUNCTION_28_27();
          }

          else
          {
          }

          ++v244;
        }

        v429 = v425;
        v37 = 0x1BC4BA000;
        v224 = v414;
        v140 = v416;
        v225 = v412;
      }
    }

    v279 = specialized BidirectionalCollection.last.getter(*(v440 + v407));
    if (!v279)
    {
      goto LABEL_340;
    }

    v280 = v279;
    if (!specialized Array.count.getter(v279))
    {

      goto LABEL_340;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v280 & 0xC000000000000001) == 0, v280);
    if ((v280 & 0xC000000000000001) != 0)
    {
      v281 = MEMORY[0x1BFB22010](0, v280);
    }

    else
    {
      v281 = *(v280 + 32);
    }

    v274 = v281;

    v140 = [v440 *(v65 + 3840)];
    v282 = [v274 *(v65 + 3840)];
    v283 = OUTLINED_FUNCTION_205();
    v285 = [v283 v284];

    MEMORY[0x1BFB20CC0]();
    OUTLINED_FUNCTION_7_65();
    if (v212)
    {
      OUTLINED_FUNCTION_11_56();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v151 = v447;

LABEL_124:
    v65 = 0;
    v286 = MEMORY[0x1E69E7CC0];
    v287 = v427;
    v413 = *(v427 + 16);
    v426 = (v427 + 32);
    v437 = v151;
    while (v65 != v413)
    {
      if (v65 >= *(v287 + 16))
      {
        goto LABEL_294;
      }

      v288 = v426[v65];
      v140 = v288 >> 62;
      if (v288 >> 62)
      {
        v289 = __CocoaSet.count.getter();
      }

      else
      {
        v289 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v290 = v286 >> 62;
      if (v286 >> 62)
      {
        v291 = __CocoaSet.count.getter();
      }

      else
      {
        v291 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v292 = v291 + v289;
      if (__OFADD__(v291, v289))
      {
        goto LABEL_295;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v290)
        {
          v293 = v286 & 0xFFFFFFFFFFFFFF8;
          if (v292 <= *((v286 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_139;
          }

          goto LABEL_138;
        }

LABEL_137:
        __CocoaSet.count.getter();
        OUTLINED_FUNCTION_33_5();
        goto LABEL_138;
      }

      if (v290)
      {
        goto LABEL_137;
      }

LABEL_138:
      v286 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v293 = v286 & 0xFFFFFFFFFFFFFF8;
LABEL_139:
      v444 = v65 + 1;
      v294 = *(v293 + 16);
      v65 = (*(v293 + 24) >> 1) - v294;
      v295 = v293 + 8 * v294;
      if (v140)
      {
        if (v288 < 0)
        {
          v140 = v288;
        }

        else
        {
          v140 = v288 & 0xFFFFFFFFFFFFFF8;
        }

        v297 = __CocoaSet.count.getter();
        if (v297)
        {
          v298 = v297;
          v430 = __CocoaSet.count.getter();
          if (v65 < v430)
          {
            goto LABEL_329;
          }

          if (v298 < 1)
          {
            goto LABEL_330;
          }

          v408 = v286;
          v299 = v295 + 32;
          v140 = lazy protocol witness table accessor for type [UILayoutGuide] and conformance [A]();
          for (j = 0; j != v298; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13UILayoutGuideCGMd);
            v301 = specialized protocol witness for Collection.subscript.read in conformance [A](v449, j, v288);
            v303 = *v302;
            v301(v449, 0);
            *(v299 + 8 * j) = v303;
          }

          v37 = 0x1BC4BA000;
          v286 = v408;
          v296 = v430;
          goto LABEL_152;
        }
      }

      else
      {
        v140 = v288 & 0xFFFFFFFFFFFFFF8;
        v296 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v296)
        {
          if (v65 < v296)
          {
            goto LABEL_328;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILayoutGuide);
          swift_arrayInitWithCopy();
LABEL_152:

          v287 = v427;
          v151 = v437;
          v65 = v444;
          if (v296 < v289)
          {
            goto LABEL_296;
          }

          if (v296 > 0)
          {
            v304 = *(v293 + 16);
            v159 = __OFADD__(v304, v296);
            v305 = v304 + v296;
            if (v159)
            {
              goto LABEL_315;
            }

            *(v293 + 16) = v305;
          }

          continue;
        }
      }

      v287 = v427;
      v151 = v437;
      v65 = v444;
      if (v289 > 0)
      {
        goto LABEL_296;
      }
    }

    v445 = specialized Array.count.getter(v286);
    v306 = 0;
    *v431 = *(v37 + 2352);
    while (v445 != v306)
    {
      if ((v286 & 0xC000000000000001) != 0)
      {
        v307 = MEMORY[0x1BFB22010](v306, v286);
      }

      else
      {
        if (v306 >= *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_298;
        }

        v307 = *(v286 + 8 * v306 + 32);
      }

      v308 = v307;
      if (__OFADD__(v306, 1))
      {
        goto LABEL_297;
      }

      [v440 addLayoutGuide_];
      v309 = swift_initStackObject();
      *(v309 + 16) = *v431;
      v65 = v151;
      v310 = [v308 topAnchor];
      v311 = [v440 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
      v312 = OUTLINED_FUNCTION_26_25();
      v314 = [v312 v313];

      *(v309 + 32) = v314;
      v315 = [v308 bottomAnchor];
      v316 = [v440 bottomAnchor];
      v317 = OUTLINED_FUNCTION_26_25();
      v37 = [v317 v318];

      *(v309 + 40) = v37;
      v140 = v65 >> 62;
      if (v65 >> 62)
      {
        v319 = __CocoaSet.count.getter();
      }

      else
      {
        v319 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v320 = v319 + 2;
      if (__OFADD__(v319, 2))
      {
        goto LABEL_299;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v140)
        {
          v140 = v65 & 0xFFFFFFFFFFFFFF8;
          if (v320 <= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_176;
          }

          goto LABEL_175;
        }

LABEL_174:
        __CocoaSet.count.getter();
        OUTLINED_FUNCTION_33_5();
        goto LABEL_175;
      }

      if (v140)
      {
        goto LABEL_174;
      }

LABEL_175:
      OUTLINED_FUNCTION_15_34();
      v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v140 = v65 & 0xFFFFFFFFFFFFFF8;
LABEL_176:
      OUTLINED_FUNCTION_8_64();
      if (v229 != v159)
      {
        goto LABEL_300;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      OUTLINED_FUNCTION_13_47();

      OUTLINED_FUNCTION_31_21();
      if (v159)
      {
        goto LABEL_301;
      }

      *(v140 + 16) = v321;
      v447 = v65;
      if (v306)
      {
        if (!*(v427 + 16))
        {
          goto LABEL_302;
        }

        v322 = *v426;
        if ((*v426 & 0xC000000000000001) != 0)
        {

          v323 = MEMORY[0x1BFB22010](0, v322);
        }

        else
        {
          if (!*((v322 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_303;
          }

          v323 = *(v322 + 32);
        }

        v324 = [v323 widthAnchor];

        v325 = [v308 widthAnchor];
        v326 = OUTLINED_FUNCTION_2_52();
        v140 = [v326 v327];

        MEMORY[0x1BFB20CC0]();
        OUTLINED_FUNCTION_2_99();
        if (v212)
        {
          OUTLINED_FUNCTION_5_79();
        }

        OUTLINED_FUNCTION_28_27();

        v151 = v65;
      }

      else
      {
        v151 = v65;
      }

      ++v306;
    }

    v328 = 0;
LABEL_192:

    if (v328 == v413)
    {

      objc_opt_self();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v383 = OUTLINED_FUNCTION_26_25();
      [v383 v384];

      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x7661654C6E696F4ALL, 0xEF6E6F7474754265, *(v440 + v404));
      v385 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton;
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x696475416574754DLL, 0xEF6E6F747475426FLL, *(v440 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton));
      v140 = *MEMORY[0x1E69DD9B8];
      v151 = *MEMORY[0x1E69DDA30];
      v154 = *(v440 + v385);
      if (v140)
      {
        v386 = v140;
        v157 = &unk_1EBCAE000;
        v156 = &unk_1EBCAE000;
        v152 = v402;
        v37 = v403;
        if ((v151 & ~v140) == 0)
        {
LABEL_285:
          [v154 setAccessibilityTraits_];

          outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x75426172656D6143, 0xEC0000006E6F7474, *(v440 + *(v157 + 333)));
          outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x7475426574756F52, 0xEB000000006E6F74, *&v152[v37]);
          v387 = v156[337];
          outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000012, 0x80000001BC504D50, *(v440 + v387));
          v388 = *(v440 + v387);
          v389 = v388;
          if (v140)
          {
            v390 = v405;
            if ((v151 & ~v140) == 0)
            {
              goto LABEL_291;
            }

LABEL_289:
            v140 |= v151;
          }

          else
          {
            v390 = v405;
            if (v151)
            {
              goto LABEL_289;
            }

            v140 = 0;
          }

LABEL_291:
          [v388 setAccessibilityTraits_];

          return v440;
        }

LABEL_282:
        v386 = v151 | v140;
        goto LABEL_285;
      }

LABEL_281:
      v157 = &unk_1EBCAE000;
      v156 = &unk_1EBCAE000;
      v152 = v402;
      v37 = v403;
      if (v151)
      {
        goto LABEL_282;
      }

LABEL_284:
      v386 = 0;
      goto LABEL_285;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v328, 1, v427);
    v329 = v426[v328];
    v330 = v329 + 32;
    v406 = v328 + 1;
    v331 = *(v440 + v407);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v328, 1, v331);
    v332 = *(v331 + 8 * v328 + 32);
    v418 = (v332 + 32);
    v140 = specialized Array.count.getter(v329);
    v446 = v329 & 0xFFFFFFFFFFFFFF8;
    v421 = v332 & 0xC000000000000001;
    v423 = v329 & 0xC000000000000001;
    v409 = v329;

    v333 = 0;
    v415 = v140;
    v417 = v329 + 32;
    while (1)
    {
LABEL_194:
      v154 = v423;
      while (1)
      {
        if (v140 == v333)
        {

          v328 = v406;
          goto LABEL_192;
        }

        if (v423)
        {
          v334 = MEMORY[0x1BFB22010](v333, v409);
        }

        else
        {
          if (v333 >= *(v446 + 16))
          {
            goto LABEL_280;
          }

          v334 = *(v330 + 8 * v333);
        }

        v335 = v334;
        v37 = v333 + 1;
        if (__OFADD__(v333, 1))
        {
          goto LABEL_279;
        }

        v65 = v151 >> 62;
        if (!v333)
        {
          v37 = v151;
          v337 = swift_initStackObject();
          OUTLINED_FUNCTION_24_28(v337, *v431);
          v140 = [v335 v338];
          v339 = [v440 *(v423 + 3824)];
          v340 = OUTLINED_FUNCTION_26_25();
          v342 = [v340 v341];

          v337[2].n128_u64[0] = v342;
          v343 = [v335 trailingAnchor];
          if (!v421)
          {
            if (*((v332 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v344 = *v418;
              goto LABEL_211;
            }

LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
            goto LABEL_314;
          }

          v344 = MEMORY[0x1BFB22010](0, v332);
LABEL_211:
          v345 = v344;
          v346 = *&v344[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

          v140 = [v346 leadingAnchor];
          v348 = OUTLINED_FUNCTION_34_22(v347, sel_constraintEqualToAnchor_);

          v337[2].n128_u64[1] = v348;
          v151 = v37;
          if (v65)
          {
            v349 = __CocoaSet.count.getter();
          }

          else
          {
            v349 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v330 = v417;
          if (__OFADD__(v349, 2))
          {
            goto LABEL_312;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v65)
            {
LABEL_253:
              OUTLINED_FUNCTION_15_34();
              v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v140 = v151 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_254;
            }

LABEL_252:
            OUTLINED_FUNCTION_20_29();
            OUTLINED_FUNCTION_33_5();
            goto LABEL_253;
          }

          if (v65)
          {
            goto LABEL_252;
          }

          OUTLINED_FUNCTION_23_31();
          if (!(v229 ^ v159 | v350))
          {
            goto LABEL_253;
          }

LABEL_254:
          OUTLINED_FUNCTION_8_64();
          if (v229 != v159)
          {
            goto LABEL_313;
          }

          v65 = v151;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          OUTLINED_FUNCTION_13_47();

          OUTLINED_FUNCTION_31_21();
          if (!v159)
          {
            *(v140 + 16) = v378;

            v333 = 1;
            v140 = v415;
            goto LABEL_194;
          }

LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:

          v392 = MEMORY[0x1BFB22010](0, v140);

          v393 = *(v392 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
          v274 = v393;
          swift_unknownObjectRelease();
          if (!v393)
          {
            goto LABEL_340;
          }

LABEL_114:
          v140 = [v440 *(v65 + 3840)];
          v275 = [v274 *(v65 + 3840)];
          v276 = OUTLINED_FUNCTION_205();
          v278 = [v276 v277];

          MEMORY[0x1BFB20CC0]();
          OUTLINED_FUNCTION_7_65();
          if (v212)
          {
            OUTLINED_FUNCTION_11_56();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v151 = v447;
          goto LABEL_124;
        }

        v336 = v332 >> 62 ? __CocoaSet.count.getter() : *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v333 == v336)
        {
          break;
        }

        if (v333 < v336)
        {
          v411 = swift_initStackObject();
          *(v411 + 16) = *v431;
          v364 = [v335 leadingAnchor];
          v365 = v333 - 1;
          if (__OFSUB__(v333, 1))
          {
            goto LABEL_322;
          }

          v439 = v151;
          if (v421)
          {
            v366 = MEMORY[0x1BFB22010](v365, v332);
          }

          else
          {
            if ((v365 & 0x8000000000000000) != 0)
            {
              goto LABEL_323;
            }

            if (v365 >= *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_324;
            }

            v366 = v418[v365];
          }

          v367 = v366;
          v368 = *&v366[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

          v140 = [v368 trailingAnchor];
          v370 = OUTLINED_FUNCTION_34_22(v369, sel_constraintEqualToAnchor_);

          *(v411 + 32) = v370;
          v371 = [v335 trailingAnchor];
          if (v421)
          {
            v372 = MEMORY[0x1BFB22010](v333, v332);
          }

          else
          {
            if (v333 >= *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_331;
            }

            v372 = v418[v333];
          }

          v373 = v372;
          v374 = *&v372[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

          v140 = [v374 leadingAnchor];
          v376 = OUTLINED_FUNCTION_34_22(v375, sel_constraintEqualToAnchor_);

          *(v411 + 40) = v376;
          if (v65)
          {
            v377 = OUTLINED_FUNCTION_20_29();
          }

          else
          {
            v377 = *((v439 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v330 = v417;
          if (__OFADD__(v377, 2))
          {
            goto LABEL_325;
          }

          v447 = v439;
          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v65)
            {
              OUTLINED_FUNCTION_23_31();
              if (!(v229 ^ v159 | v350))
              {
                goto LABEL_264;
              }

LABEL_265:
              OUTLINED_FUNCTION_8_64();
              if (v229 != v159)
              {
                goto LABEL_326;
              }

              v381 = OUTLINED_FUNCTION_27_26();
              type metadata accessor for NSObject(v381, &lazy cache variable for type metadata for NSLayoutConstraint);
              OUTLINED_FUNCTION_13_47();

              OUTLINED_FUNCTION_31_21();
              if (v159)
              {
                goto LABEL_327;
              }

              goto LABEL_267;
            }
          }

          else if (!v65)
          {
LABEL_264:
            OUTLINED_FUNCTION_15_34();
            v447 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v140 = v447 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_265;
          }

          OUTLINED_FUNCTION_20_29();
          OUTLINED_FUNCTION_33_5();
          goto LABEL_264;
        }

        ++v333;
      }

      v410 = swift_initStackObject();
      *(v410 + 16) = *v431;
      v351 = [v335 leadingAnchor];
      v352 = v333 - 1;
      if (__OFSUB__(v333, 1))
      {
        goto LABEL_316;
      }

      v438 = v151;
      if (v421)
      {
        v353 = MEMORY[0x1BFB22010](v352, v332);
      }

      else
      {
        if ((v352 & 0x8000000000000000) != 0)
        {
          goto LABEL_317;
        }

        if (v352 >= *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_319;
        }

        v353 = v418[v352];
      }

      v354 = v353;
      v355 = *&v353[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

      v356 = [v355 trailingAnchor];
      v358 = OUTLINED_FUNCTION_34_22(v357, sel_constraintEqualToAnchor_);

      *(v410 + 32) = v358;
      v140 = [v335 trailingAnchor];
      v359 = [v440 trailingAnchor];
      v360 = OUTLINED_FUNCTION_26_25();
      v362 = [v360 v361];

      *(v410 + 40) = v362;
      if (v65)
      {
        v363 = OUTLINED_FUNCTION_20_29();
      }

      else
      {
        v363 = *((v438 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v330 = v417;
      if (__OFADD__(v363, 2))
      {
        goto LABEL_318;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v65)
        {
LABEL_258:
          OUTLINED_FUNCTION_15_34();
          v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)() & 0xFFFFFFFFFFFFFF8;
          goto LABEL_259;
        }

LABEL_257:
        OUTLINED_FUNCTION_20_29();
        OUTLINED_FUNCTION_33_5();
        goto LABEL_258;
      }

      if (v65)
      {
        goto LABEL_257;
      }

      OUTLINED_FUNCTION_23_31();
      if (!(v229 ^ v159 | v350))
      {
        goto LABEL_258;
      }

LABEL_259:
      OUTLINED_FUNCTION_8_64();
      if (v229 != v159)
      {
        goto LABEL_320;
      }

      v379 = OUTLINED_FUNCTION_27_26();
      type metadata accessor for NSObject(v379, &lazy cache variable for type metadata for NSLayoutConstraint);
      OUTLINED_FUNCTION_13_47();

      OUTLINED_FUNCTION_31_21();
      if (v159)
      {
        goto LABEL_321;
      }

LABEL_267:
      *(v140 + 16) = v380;

      v151 = v65;
      v447 = v65;
      ++v333;
      v140 = v415;
    }
  }

  if (v224)
  {
    v271 = protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v271, v272, v140);
    v140 = *(v140 + 32);
    if (specialized Array.count.getter(v140))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v140 & 0xC000000000000001) == 0, v140);
      if ((v140 & 0xC000000000000001) != 0)
      {
        goto LABEL_336;
      }

      v273 = *(*(v140 + 32) + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v273)
      {
        v274 = v273;
        goto LABEL_114;
      }
    }
  }

LABEL_340:
  result = OUTLINED_FUNCTION_29_20();
  __break(1u);
  return result;
}