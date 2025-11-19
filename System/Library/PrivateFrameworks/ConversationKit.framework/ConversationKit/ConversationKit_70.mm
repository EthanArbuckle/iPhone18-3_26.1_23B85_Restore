uint64_t MultiwayViewController.stopTipStateObserver()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask;
  v2 = MEMORY[0x1E69E7CA8];
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask))
  {

    MEMORY[0x1BFB21000](v3, v2 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask))
  {

    MEMORY[0x1BFB21000](v5, v2 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v0 + v4) = 0;
}

void *MultiwayViewController.avcEffects.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MultiwayViewController.avcEffects.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MultiwayViewController.didExpandIncomingCallBanner.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t key path getter for MultiwayViewController.didExpandIncomingCallBanner : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id MultiwayViewController.didExpandIncomingCallBanner.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    return MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  }

  return result;
}

uint64_t MultiwayViewController.didExpandIncomingCallBanner.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.didExpandActiveVideoCallFromBanner.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner;
  LODWORD(v0) = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner);
  if (v0 == 2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(v3 + v4, v17);
    v5 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v7 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v8 = *(v7 + 8);
    v9 = *(v6 + 104);
    v10 = swift_unknownObjectRetain();
    v9(&v15, v10, v8, v5, v6);
    swift_unknownObjectRelease();
    if (v16)
    {
      outlined init with take of TapInteractionHandler(&v15, v20);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v11 = v21;
      v12 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      if ((*(v12 + 288))(v11, v12) == 2)
      {
        v0 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
        swift_beginAccess();
        LOBYTE(v0) = *(v1 + v0);
      }

      else
      {
        LOBYTE(v0) = 0;
      }

      v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
      swift_beginAccess();
      if (*(v1 + v13) == 1)
      {
        *(v1 + v2) = v0;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v15, &_s15ConversationKit0A0_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v17);
      LOBYTE(v0) = 0;
    }
  }

  return v0 & 1;
}

void MultiwayViewController.ViewContent.callControlsViewController.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

void *MultiwayViewController.ViewContent.localParticipantViewButtonShelfView.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.effectsViewController.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.effectsBrowserContainerViewController.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.effectsBrowserViewController.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.floatingControlsView.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.participantLabelsView.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.bottomControlsView.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.oneToOneShutterButton.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.oneToOneLivePhotoAlertView.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t MultiwayViewController.ViewContent.localParticipantDragController.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t MultiwayViewController.ViewContent.captionsViewDragController.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

void *MultiwayViewController.ViewContent.screenSharingSnapshotView.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.changeLayoutButton.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.changeLayoutButtonBackgroundView.getter()
{
  v1 = *(v0 + 184);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.deskViewButton.getter()
{
  v1 = *(v0 + 192);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.topCornerButtonsStackView.getter()
{
  v1 = *(v0 + 200);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.reactionsViewController.getter()
{
  v1 = *(v0 + 208);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.reactionPickerTipView.getter()
{
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.sensitiveContentShield.getter()
{
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

uint64_t MultiwayViewController.ViewContent.participantsViewControllers.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BE790;
  v2 = *(v0 + 8);
  *(v1 + 56) = type metadata accessor for ParticipantGridViewController();
  *(v1 + 64) = &protocol witness table for ParticipantGridViewController;
  *(v1 + 32) = v2;
  v3 = *v0;
  *(v1 + 96) = type metadata accessor for ParticipantListViewController();
  *(v1 + 104) = &protocol witness table for ParticipantListViewController;
  *(v1 + 72) = v3;
  v4 = *(v0 + 24);
  *(v1 + 136) = type metadata accessor for InCallBannerHostViewController();
  *(v1 + 144) = &protocol witness table for InCallBannerHostViewController;
  *(v1 + 112) = v4;
  v5 = *(v0 + 104);
  *(v1 + 176) = type metadata accessor for MostActiveParticipantViewController();
  *(v1 + 184) = &protocol witness table for MostActiveParticipantViewController;
  *(v1 + 152) = v5;
  v6 = *(v0 + 144);
  *(v1 + 216) = type metadata accessor for CaptionsViewController();
  *(v1 + 224) = &protocol witness table for CaptionsViewController;
  *(v1 + 192) = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return v1;
}

uint64_t MultiwayViewController.ViewContent.allViews.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  OUTLINED_FUNCTION_37_0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BAC30;
  v3 = *(v0 + 56);
  *(v2 + 32) = v3;
  v67 = v2;
  v4 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = v3;
    do
    {
      outlined init with copy of IDSLookupManager(v6, v66);
      v8 = OUTLINED_FUNCTION_43_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8);
      v9 = OUTLINED_FUNCTION_24_1();
      type metadata accessor for NSObject(v9, &lazy cache variable for type metadata for UIViewController);
      if (swift_dynamicCast())
      {
        v10 = [v64 view];
        if (v10)
        {
          v11 = v10;
          OUTLINED_FUNCTION_229_3();
          OUTLINED_FUNCTION_140_6();
          v14 = *(v12 + 16);
          v13 = *(v12 + 24);
          if (v14 >= v13 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v13);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          OUTLINED_FUNCTION_1_5();
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v2 = v67;
        }

        else
        {
        }
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v15 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16UIViewControllerCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BE790;
  v17 = *(v0 + 72);
  v78[0] = *(v0 + 80);
  v18 = v78[0];
  v78[1] = v17;
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  v19 = *(v0 + 88);
  v77 = *(v0 + 208);
  v20 = v77;
  *(inited + 48) = v19;
  *(inited + 56) = v20;
  v66[0] = *(v0 + 32);
  v21 = *&v66[0];
  *(inited + 64) = *&v66[0];
  if (v17)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v22 = v19;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v23 = v17;
    v24 = [v23 view];
    if (v24)
    {
      v25 = v24;
      OUTLINED_FUNCTION_229_3();
      OUTLINED_FUNCTION_140_6();
      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v27);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_2_40();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = v67;
      v1 = v0;
      if (!v18)
      {
        goto LABEL_25;
      }
    }

    else
    {

      if (!v18)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v29 = v19;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  v30 = [v18 view];
  if (!v30)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit37EffectsBrowserContainerViewControllerCSgMd);
    if (!v19)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v31 = v30;
  OUTLINED_FUNCTION_229_3();
  OUTLINED_FUNCTION_117_3();
  if (v33)
  {
    OUTLINED_FUNCTION_59_3(v32);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_206();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit37EffectsBrowserContainerViewControllerCSgMd);

  v2 = v67;
LABEL_25:
  if (!v19)
  {
    goto LABEL_33;
  }

LABEL_26:
  v34 = v19;
  v35 = [v34 view];
  if (v35)
  {
    v36 = v1;
    v37 = v35;
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_140_6();
    v40 = *(v38 + 16);
    v39 = *(v38 + 24);
    if (v40 >= v39 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v39);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_2_40();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v2 = v67;
    v1 = v36;
  }

  else
  {
  }

LABEL_33:
  if (!v20)
  {
    goto LABEL_38;
  }

  v41 = [v20 view];
  if (v41)
  {
    v42 = v41;
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_117_3();
    if (v33)
    {
      OUTLINED_FUNCTION_59_3(v43);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_206();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v77, &_s15ConversationKit33VideoReactionPickerViewControllerCSgMd);

    v2 = v67;
LABEL_38:
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v77, &_s15ConversationKit33VideoReactionPickerViewControllerCSgMd);
  if (!v21)
  {
    goto LABEL_46;
  }

LABEL_39:
  v44 = [v21 view];
  if (v44)
  {
    v45 = v44;
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_117_3();
    if (v33)
    {
      OUTLINED_FUNCTION_59_3(v46);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_206();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit30CallControlsPlatformController_pSgMd);

    v2 = v67;
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit30CallControlsPlatformController_pSgMd);
  }

LABEL_46:
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1BC4D2600;
  v65 = v1[12];
  v48 = v1[14];
  v75 = v1[15];
  v49 = v75;
  v76 = v48;
  *(v47 + 32) = v65;
  *(v47 + 40) = v48;
  v50 = v1[16];
  v73 = v1[17];
  v51 = v73;
  v74 = v50;
  *(v47 + 48) = v49;
  *(v47 + 56) = v50;
  v52 = v1[21];
  v71 = v1[22];
  v53 = v71;
  v72 = v52;
  *(v47 + 64) = v51;
  *(v47 + 72) = v52;
  v70 = v1[23];
  v54 = v70;
  *(v47 + 80) = v53;
  *(v47 + 88) = v54;
  v55 = v1[27];
  v68 = v1[28];
  v56 = v68;
  v69 = v55;
  *(v47 + 96) = v55;
  *(v47 + 104) = v56;
  OUTLINED_FUNCTION_93_8();
  OUTLINED_FUNCTION_93_8();
  OUTLINED_FUNCTION_93_8();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_93_8();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_93_8();
  OUTLINED_FUNCTION_93_8();
  OUTLINED_FUNCTION_93_8();
  for (i = 32; i != 112; i += 8)
  {
    v58 = *(v47 + i);
    if (v58)
    {
      v59 = v58;
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_140_6();
      v62 = *(v60 + 16);
      v61 = *(v60 + 24);
      if (v62 >= v61 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v61);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_45_1();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = v67;
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v2;
}

__n128 MultiwayViewController.ViewContent.init(listViewController:gridViewController:controlsViewController:inCallBannerHostViewController:callControlsViewController:constraintController:floatingLocalParticipantView:localParticipantViewButtonShelfView:effectsViewController:effectsBrowserContainerViewController:effectsBrowserViewController:floatingControlsView:mostActiveParticipantViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:oneToOneLivePhotoAlertView:captionsViewController:localParticipantDragController:captionsViewDragController:screenSharingSnapshotView:changeLayoutButton:changeLayoutButtonBackgroundView:deskViewButton:topCornerButtonsStackView:reactionsViewController:reactionPickerTipView:sensitiveContentShield:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  return result;
}

uint64_t MultiwayViewController.controlsMode.getter()
{
  v1 = MultiwayViewController.call.getter();
  v2 = [v1 isConversation];

  if (v2 && (v3 = [objc_opt_self() sharedInstance], v4 = MultiwayViewController.call.getter(), v5 = objc_msgSend(v3, sel_activeConversationForCall_, v4), v3, v4, v6 = objc_msgSend(v5, sel_link), v5, v6) && (v6, v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController), v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState, swift_beginAccess(), v9 = *(v7 + v8), (v9 - 1) <= 1))
  {
    if (v9 == 2)
    {
      return 65;
    }

    else
    {
      return 64;
    }
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    if ((*(v11 + v12) - 1) > 1)
    {
      return 0;
    }

    else
    {
      v13 = MultiwayViewController.call.getter();
      v14 = [v13 isConversation];

      if (v14)
      {
        v15 = *(v11 + v12) == 1;
      }

      else
      {
        v15 = 0;
      }

      return v15 | 0x20u;
    }
  }
}

uint64_t MultiwayViewController.call.getter()
{
  v0 = OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  objc_opt_self();
  OUTLINED_FUNCTION_235();
  swift_dynamicCastObjCClassUnconditional();
  OUTLINED_FUNCTION_28_0();
  swift_unknownObjectRetain();
  return v0;
}

uint64_t MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter()
{
  ConversationController.lookupActiveConversation()();
  v0 = v3;
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v0 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A0_pSgMd);
  }

  return v0 & 1;
}

uint64_t MultiwayViewController.ConversationSnapshot.remoteParticipants.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void *MultiwayViewController.viewContent.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(__src);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return memcpy(a1, __src, 0xE8uLL);
}

uint64_t MultiwayViewController.viewContent.setter()
{
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_178_1(v3);
  v0 = OUTLINED_FUNCTION_75_1();
  memcpy(v0, v1, 0xE8uLL);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

uint64_t MultiwayViewController.isModallyPresentingCallDetails.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v3 = v1;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

void *MultiwayViewController.sensitiveContentController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in MultiwayViewController.sensitiveContentController.getter(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;

    outlined consume of TranslationTextView??(v4);
  }

  outlined copy of TranslationTextView??(v2);
  return v3;
}

uint64_t MultiwayViewController.sensitiveContentController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController) = a1;
  return outlined consume of TranslationTextView??(v2);
}

void *closure #1 in MultiwayViewController.sensitiveContentController.getter(char *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.nudityDetectionEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = *&a1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  type metadata accessor for SensitiveContentController();
  swift_allocObject();
  return SensitiveContentController.init(multiwayViewController:conversationController:)(a1, v2);
}

uint64_t MultiwayViewController.sensitiveContentController.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.sensitiveContentController.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t MultiwayViewController.sensitiveContentController.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController) = *a1;
  if (a2)
  {

    outlined consume of TranslationTextView??(v3);
  }

  else
  {

    return outlined consume of TranslationTextView??(v3);
  }
}

void *MultiwayViewController.inCallControlsDismissTimer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer);
  v2 = v1;
  return v1;
}

void MultiwayViewController.inCallControlsDismissTimer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer) = a1;
}

id MultiwayViewController.pipZoomControl.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void MultiwayViewController.pipZoomControl.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void MultiwayViewController.shouldShowZoomControls.didset(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) != (a1 & 1))
  {
    MultiwayViewController.updateZoomControls(for:)(0xFCu);
  }
}

void MultiwayViewController.updateZoomControls(for:)(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(v20, (v2 + v4), sizeof(v20));
  if (getEnumTag for TapInteraction.EventType(v20) != 1)
  {
    v9 = a1;
    if (a1 >= 0xFCu)
    {
      v10 = v20[6];
      v11 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      swift_beginAccess();
      v9 = *(v10 + v11);
    }

    if (*(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) == 1 && v9 >> 6 >= 2 && v9 == 128)
    {
      v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
      swift_beginAccess();
      v13 = *(v2 + v12);
      v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x228);
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v15 = v13;
      v16 = v14();

      if (v16)
      {
        MultiwayViewController.showZoomControl()();
LABEL_16:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        return;
      }
    }

    else
    {
      memcpy(v18, __dst, sizeof(v18));
      outlined init with copy of MultiwayViewController.ViewContent(v18, &v17);
    }

    MultiwayViewController.hideZoomControl()();
    goto LABEL_16;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Log.default);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BBC58000, v6, v7, "PipZoomControl: Not able to update because of missing view content", v8, 2u);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }
}

void MultiwayViewController.shouldShowZoomControls.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) = a1;
  MultiwayViewController.shouldShowZoomControls.didset(v2);
}

uint64_t MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter()
{
  if (MultiwayViewController.isCaptioningEnabled.getter())
  {
    return [objc_opt_self() allowsPortraitBlurWhenCaptionsEnabled];
  }

  else
  {
    return 1;
  }
}

uint64_t MultiwayViewController.isCaptioningEnabled.getter()
{

  CaptioningStateManager.isCaptioningEnabled.getter();
  OUTLINED_FUNCTION_247();

  return v0 & 1;
}

uint64_t MultiwayViewController.captionsPausedState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState;
  result = OUTLINED_FUNCTION_9_67();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MultiwayViewController.captionsPausedState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = v2;
  return result;
}

uint64_t MultiwayViewController.isScreenSharing.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_201_3();
  OUTLINED_FUNCTION_3_0();
  v2 = swift_beginAccess();
  OUTLINED_FUNCTION_135_3(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_46_26(v21);
  if (v10)
  {
    return 0;
  }

  v11 = *(v1 + 16);
  v12 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v11 + v12);
}

id MultiwayViewController.mutedBannerViewController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void MultiwayViewController.mutedBannerViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MultiwayViewController.deviceOrientation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for MultiwayViewController.deviceOrientation : MultiwayViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t MultiwayViewController.deviceOrientation.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, &static Log.default);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
    swift_beginAccess();
    v21[1] = *&v10[v15];
    type metadata accessor for CNKDeviceOrientation(0);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Device Orientation has changed: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  ConversationController.deviceOrientation.setter(*&v10[v19]);
  if (*&v10[v19] != a1)
  {
    MultiwayViewController.updatePhoneLocalParticipantControlOrientation()();
  }

  MultiwayViewController.updateViewConstraints()();
  result = MultiwayViewController.didUpdateLocalParticipantOrientation(_:)(*&v10[v19]);
  if (*&v10[v19] != a1 && v10[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState] == 1)
  {
    return MultiwayViewController.toggleReactionsView()();
  }

  return result;
}

void MultiwayViewController.updatePhoneLocalParticipantControlOrientation()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = [v2 currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6)
    {
      goto LABEL_7;
    }

    swift_beginAccess();
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_7;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
LABEL_7:
      v7 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
      swift_beginAccess();
      memcpy(__dst, v7, sizeof(__dst));
      if (getEnumTag for TapInteraction.EventType(__dst) != 1)
      {
        v8 = *(v7 + 7);
        v9 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
        swift_beginAccess();
        if (*&v8[v9])
        {
          v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
          swift_beginAccess();
          v11 = v8;
          LocalParticipantView.updateButtonShelfRotation(for:)();
          v12 = swift_allocObject();
          *(v12 + 16) = v1;
          *(v12 + 24) = v11;
          v13 = v11;
          v14 = v1;
          if (LocalParticipantView.canSetControlButtonAlphaDuringRotation.getter())
          {
            v15 = objc_opt_self();
            v16 = swift_allocObject();
            *(v16 + 16) = v14;
            *(v16 + 24) = v13;
            v36 = partial apply for closure #2 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation();
            v37 = v16;
            aBlock = MEMORY[0x1E69E9820];
            v33 = 1107296256;
            v34 = thunk for @escaping @callee_guaranteed () -> ();
            v35 = &block_descriptor_724;
            v17 = _Block_copy(&aBlock);
            v18 = v13;
            v19 = v14;

            v20 = swift_allocObject();
            *(v20 + 16) = partial apply for closure #1 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation();
            *(v20 + 24) = v12;
            v36 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
            v37 = v20;
            aBlock = MEMORY[0x1E69E9820];
            v33 = 1107296256;
            v34 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
            v35 = &block_descriptor_730;
            v21 = _Block_copy(&aBlock);

            [v15 animateWithDuration:v17 animations:v21 completion:0.1];
            _Block_release(v21);
            _Block_release(v17);
            v22 = swift_allocObject();
            *(v22 + 16) = v19;
            *(v22 + 24) = v18;
            v36 = partial apply for closure #4 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation();
            v37 = v22;
            aBlock = MEMORY[0x1E69E9820];
            v33 = 1107296256;
            v34 = thunk for @escaping @callee_guaranteed () -> ();
            v35 = &block_descriptor_736;
            v23 = _Block_copy(&aBlock);
            v24 = v18;
            v25 = v19;

            [v15 animateWithDuration:0 delay:v23 options:0 animations:0.1 completion:0.3];

            _Block_release(v23);
          }

          else
          {
            v26 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
            swift_beginAccess();
            v27 = *&v14[v26];
            v28 = LocalParticipantView.controlRotation(for:)(*&v1[v10]);
            v29 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x1D0);
            v30 = v27;
            v29(v28);

            LocalParticipantView.updateShelfPiPControls(for:)(*&v1[v10]);
            v31 = [v13 superview];
            [v31 layoutIfNeeded];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.updateViewConstraints()()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, sel_updateViewConstraints);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(__src);
  OUTLINED_FUNCTION_150_1(v59);
  OUTLINED_FUNCTION_46_26(v59);
  if (!v2)
  {
    v3 = memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_217_4(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, __dst[0]);
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      v13 = v59[6];
      [v11 safeAreaInsetFrame];
      OUTLINED_FUNCTION_40_1();

      MultiwayViewController.localParticipantOrientation.getter();
      v14 = OUTLINED_FUNCTION_35();
      MultiwayViewConstraintsController.update(for:deviceOrientation:)(v15, v14, v16, v17, v18);
      v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
      OUTLINED_FUNCTION_113_4();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v20 = v1[v19];
      v21 = [v1 view];
      if (v21)
      {
        v22 = v21;
        v23 = (v13 + OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout);
        v24 = *(v13 + OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 24);
        v25 = v23[4];
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v25 + 48))(v20, v22, v24, v25);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__src, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t MultiwayViewController.didUpdateLocalParticipantOrientation(_:)(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for Participant(0);
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v58, (v2 + v11), sizeof(v58));
  memcpy(v59, (v2 + v11), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v59);
  if (result == 1)
  {
    return result;
  }

  v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  swift_beginAccess();
  if (!*(v2 + v12) && !MultiwayViewController.isPipped.getter())
  {
    memcpy(v57, v58, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v57, v56);
    result = ConversationController.visibleParticipants.getter();
    v46 = *(result + 16);
    if (!v46)
    {

      goto LABEL_6;
    }

    v37 = v2;
    v13 = 0;
    v44 = result + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v42 = v59[0];
    v43 = v59[1];
    v40 = v59[13];
    v41 = v59[3];
    v39 = v59[18];
    v38 = xmmword_1BC4BE790;
    v45 = result;
    while (v13 < *(result + 16))
    {
      v54 = v13 + 1;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = v38;
      v15 = type metadata accessor for ParticipantGridViewController();
      *(v14 + 56) = v15;
      v50 = v15;
      *(v14 + 64) = &protocol witness table for ParticipantGridViewController;
      v16 = v43;
      *(v14 + 32) = v43;
      *(v14 + 96) = type metadata accessor for ParticipantListViewController();
      *(v14 + 104) = &protocol witness table for ParticipantListViewController;
      v17 = v42;
      *(v14 + 72) = v42;
      *(v14 + 136) = type metadata accessor for InCallBannerHostViewController();
      *(v14 + 144) = &protocol witness table for InCallBannerHostViewController;
      v18 = v41;
      *(v14 + 112) = v41;
      v51 = (v14 + 112);
      *(v14 + 176) = type metadata accessor for MostActiveParticipantViewController();
      *(v14 + 184) = &protocol witness table for MostActiveParticipantViewController;
      v19 = v40;
      *(v14 + 152) = v40;
      v52 = (v14 + 152);
      *(v14 + 216) = type metadata accessor for CaptionsViewController();
      *(v14 + 224) = &protocol witness table for CaptionsViewController;
      v20 = v39;
      *(v14 + 192) = v39;
      v53 = (v14 + 192);
      __swift_project_boxed_opaque_existential_1((v14 + 32), v15);
      v49 = off_1F3ADF178[0];
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v55;
      v27 = v47;
      (v49)(v55, v47, v50, &protocol witness table for ParticipantGridViewController);
      v29 = *(v14 + 96);
      v28 = *(v14 + 104);
      __swift_project_boxed_opaque_existential_1((v14 + 72), v29);
      (*(v28 + 56))(v26, v27, v29, v28);
      v30 = *(v14 + 136);
      v31 = *(v14 + 144);
      __swift_project_boxed_opaque_existential_1(v51, v30);
      (*(v31 + 56))(v26, v27, v30, v31);
      v32 = *(v14 + 176);
      v33 = *(v14 + 184);
      __swift_project_boxed_opaque_existential_1(v52, v32);
      (*(v33 + 56))(v26, v27, v32, v33);
      v34 = *(v14 + 216);
      v35 = *(v14 + 224);
      __swift_project_boxed_opaque_existential_1(v53, v34);
      (*(v35 + 56))(v26, v27, v34, v35);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      _s15ConversationKit11ParticipantVWOhTm_17();
      result = v45;
      v13 = v54;
      if (v46 == v54)
      {

        v2 = v37;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  memcpy(v57, v58, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v57, v56);
LABEL_6:
  MultiwayViewController.updatePresentationSize()();
  MultiwayViewController.needsUpdatePresentationContexts.setter(1);
  MultiwayViewController.notifyLocalParticipantAspectRatioChanged()();
  if ([*(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) afbEnabled])
  {
    MultiwayViewController.updateLocalParticipantVideoOrientation()();
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

uint64_t MultiwayViewController.toggleReactionsView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState);
  if (v1 & 1) != 0 || (result = MultiwayViewController.canShowReactionsView()(), (result))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BC4BA940;
    v7[1] = v1 ^ 1;
    v4 = String.init<A>(reflecting:)();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:type:_:)();

    v7[0] = v1 ^ 1;
    return MultiwayViewController.reactionsState.setter(v7, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState, MultiwayViewController.reactionsState.didset);
  }

  return result;
}

uint64_t MultiwayViewController.deviceOrientation.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_47(v3) + 32) = v0;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.localParticipantOrientation.getter()
{
  v1 = (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation);
  swift_beginAccess();
  if (v1[8] == 1)
  {
    v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation);
    swift_beginAccess();
  }

  return *v1;
}

uint64_t MultiwayViewController.frontBoardInterfaceOrientation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.frontBoardInterfaceOrientation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return MultiwayViewController.frontBoardInterfaceOrientation.didset();
}

uint64_t key path getter for MultiwayViewController.frontBoardInterfaceOrientation : MultiwayViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t MultiwayViewController.frontBoardInterfaceOrientation.didset()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  result = getEnumTag for TapInteraction.EventType(__dst);
  if (result != 1)
  {
    v3 = v1[13];
    v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_frontBoardInterfaceOrientation;
    result = swift_beginAccess();
    *(v3 + v6) = v5;
  }

  return result;
}

uint64_t MultiwayViewController.frontBoardInterfaceOrientation.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

BOOL MultiwayViewController.wantsPIPRotationForLocalPreview.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_159();
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  if (!MultiwayViewController.isPipped.getter())
  {
    return 0;
  }

  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  OUTLINED_FUNCTION_190_1(v11);
  OUTLINED_FUNCTION_46_26(v11);
  if (v6)
  {
    return 0;
  }

  v7 = *(v5 + 104);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_97();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  type metadata accessor for Participant(0);
  v8 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_115(v8, 1, v7);
  if (v6)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    return 0;
  }

  v10 = *(v1 + *(v7 + 28)) == 0;
  _s15ConversationKit11ParticipantVWOhTm_17();
  return v10;
}

BOOL MultiwayViewController.isPipped.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1) == 2;
}

uint64_t MultiwayViewController.supportedDeviceOrientations.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.supportedDeviceOrientations.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MultiwayViewController.isOnScreen.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  static Published.subscript.getter();

  return v1;
}

void MultiwayViewController.isOnScreen.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  MultiwayViewController.isOnScreen.didset(v2);
}

uint64_t key path getter for MultiwayViewController.isOnScreen : MultiwayViewController@<X0>(_BYTE *a1@<X8>)
{
  result = MultiwayViewController.isOnScreen.getter();
  *a1 = result & 1;
  return result;
}

void MultiwayViewController.isOnScreen.didset(char a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationKit);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = MultiwayViewController.isOnScreen.getter() & 1;

    _os_log_impl(&dword_1BBC58000, v5, v6, "isOnScreen oldvalue: %{BOOL}d, newValue: %{BOOL}d", v7, 0xEu);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  if ((MultiwayViewController.isOnScreen.getter() & 1) != (a1 & 1))
  {
    if (MultiwayViewController.isOnScreen.getter())
    {
      v8 = CFNotificationCenterGetDarwinNotifyCenter();
      if (one-time initialization token for ICSIsOnScreenNotification != -1)
      {
        swift_once();
      }

      CFNotificationCenterPostNotification(v8, static MultiwayViewController.ICSIsOnScreenNotification, 0, 0, 1u);

      MultiwayViewController.resumeUserInterface()();
    }

    else if (MultiwayViewController.isFrontmostMultiway.getter())
    {
      v9 = CFNotificationCenterGetDarwinNotifyCenter();
      if (one-time initialization token for ICSIsOffScreenNotification != -1)
      {
        swift_once();
      }

      CFNotificationCenterPostNotification(v9, static MultiwayViewController.ICSIsOffScreenNotification, 0, 0, 1u);

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v10 = (*(*static ConversationHUDMenuController.shared + 88))();
      if (v10)
      {
        (*(*v10 + 648))(0xD00000000000001DLL, 0x80000001BC51D4F0);
      }

      MultiwayViewController.pauseUserInterface()();
    }

    MultiwayViewController.updateScreenSharingBlurIfNeeded()();
    MultiwayViewController.showCallDetailsIfNecessary()();
  }
}

void MultiwayViewController.resumeUserInterface()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForegroundCollaborationState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  MultiwayViewController.updateStatusBarHidden()();
  v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  ConversationController.deviceOrientation.setter(*(v0 + v10));
  MultiwayViewController.updateFloatingLocalParticpantView()();
  v11 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v36, v11, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v36) != 1)
  {
    v12 = v11[7];
    LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  }

  MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(0);
  v13 = MultiwayViewController.conversationControlsManager.getter();
  v14 = MEMORY[0x1E69E7D40];
  if (v13)
  {
    v15 = v13;
    (*((*MEMORY[0x1E69E7D40] & *v13) + 0xA48))();
  }

  MultiwayViewController.restartAutoHideInCallControlsTimer()();
  if (MultiwayViewController.isOnScreen.getter())
  {
    MultiwayViewController.setForegroundOrPiPRemoteVideoPresentationState()();
    if (!MultiwayViewController.isPipped.getter())
    {
      v16 = MultiwayViewController.conversationControlsManager.getter();
      if (v16)
      {
        v17 = v16;
        swift_storeEnumTagMultiPayload();
        (*((*v14 & *v17) + 0x8C8))(v8);
      }
    }

    v18 = MultiwayViewController.conversationControlsManager.getter();
    if (v18)
    {
      v19 = v18;
      ConversationControlsManager.showInCallHUD()();
    }

    if (MultiwayViewController.sensitiveContentController.getter())
    {

      swift_beginAccess();
      v20 = static SensitiveContentController.shieldState ^ 1;
    }

    else
    {
      v20 = 0;
    }

    if (MultiwayViewController.stoppedSendingVideoDueToOffscreen.getter())
    {
      v21 = MultiwayViewController.call.getter();
      v22 = [v21 wantsHoldMusic];

      if (((v22 | v20) & 1) == 0)
      {
        v23 = MultiwayViewController.call.getter();
        [v23 setIsSendingVideo_];

        MultiwayViewController.stoppedSendingVideoDueToOffscreen.setter(0);
      }
    }

    v24 = v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if (*(v24 + 16) < 0)
    {
      v25 = *(v24 + 1);
      if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) == 0)
      {
        if (ConversationController.shouldDeferStartCameraAction.getter())
        {
          ConversationController.didDeferStartCameraAction.setter(1);
        }

        else
        {
          MultiwayViewController.localVideoProvider.getter();
          v26 = v35[3];
          v27 = v35[4];
          __swift_project_boxed_opaque_existential_1(v35, v35[3]);
          (*(v27 + 32))(v25, *(v1 + v10), 1, v26, v27);
          __swift_destroy_boxed_opaque_existential_1(v35);
        }

        memcpy(v35, v11, 0xE8uLL);
        if (getEnumTag for TapInteraction.EventType(v35) != 1)
        {
          v28 = v11[7];
          if (!MultiwayViewController.isPipped.getter())
          {
            swift_beginAccess();
            v29 = v33;
            _s15ConversationKit11ParticipantVWOcTm_16();
            v30 = v28;
            v31 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
            v32 = v34;
            ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v29, 2u, 0, 0, 0, 0, v31 & 1, v34, 1u, 0, 1u, 1u);
            ParticipantView.registerVideoLayers(with:)(v32);
            _s15ConversationKit11ParticipantVWOhTm_17();
          }
        }
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void MultiwayViewController.pauseUserInterface()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v1 = [v0 navigationController];
  v2 = [v1 topViewController];

  if (v2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v3 = v0;
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      if (MultiwayViewController.sensitiveContentController.getter())
      {
        SensitiveContentController.setLocalStreamSettingsBeforeBackgroundedPause()();
      }

      if (MultiwayViewController.isPipped.getter() && (MultiwayViewController.isOnScreen.getter() & 1) != 0 && !MultiwayViewController.shouldPauseForRingingCall.getter())
      {
        v22 = MultiwayViewController.call.getter();
        [v22 setRemoteVideoPresentationState_];
      }

      else if (MultiwayViewController.isFrontmostMultiway.getter())
      {
        v5 = MultiwayViewController.call.getter();
        [v5 setRemoteVideoPresentationState_];

        v6 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
        ConversationController.lookupActiveConversation()();
        if (v27)
        {
          outlined init with take of TapInteractionHandler(&v26, v23);
          v7 = v24;
          v8 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          if ((*(v8 + 200))(v7, v8))
          {
            v9 = MultiwayViewController.call.getter();
            v10 = [v9 isSendingVideo];

            if (v10)
            {
              v11 = 1;
            }

            else
            {
              v11 = MultiwayViewController.stoppedSendingVideoDueToOffscreen.getter();
            }

            MultiwayViewController.stoppedSendingVideoDueToOffscreen.setter(v11 & 1);
            v12 = MultiwayViewController.call.getter();
            [v12 setIsSendingVideo_];
          }

          __swift_destroy_boxed_opaque_existential_1(v23);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v26, &_s15ConversationKit0A0_pSgMd);
        }

        v13 = v6 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
        swift_beginAccess();
        v14 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        v16 = *(v14 + 208);
        swift_unknownObjectRetain();
        LODWORD(v13) = v16(ObjectType, v14);
        swift_unknownObjectRelease();
        MultiwayViewController.localVideoProvider.getter();
        v17 = v24;
        v18 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        if (v13 == 1)
        {
          (*(v18 + 64))(v17, v18);
        }

        else
        {
          (*(v18 + 56))(v17, v18);
        }

        __swift_destroy_boxed_opaque_existential_1(v23);
        v19 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator];
        if (v19)
        {
          v20 = *((*MEMORY[0x1E69E7D40] & *v19) + 0xC8);
          v21 = v19;
          v20(0xD000000000000016, 0x80000001BC51CE20, 0);
        }
      }
    }
  }
}

void MultiwayViewController.updateScreenSharingBlurIfNeeded()()
{
  v0 = MultiwayViewController.call.getter();
  v1 = [v0 isSharingScreen];

  if (v1)
  {
    v2 = MultiwayViewController.call.getter();
    v3 = [v2 isSharingScreen];

    MultiwayViewController.updateScreenSharingSnapshotView(_:)(v3);
  }
}

Swift::Void __swiftcall MultiwayViewController.showCallDetailsIfNecessary()()
{
  v1 = v0;
  if (MultiwayViewController.conversationControlsManager.getter())
  {
    OUTLINED_FUNCTION_3_52();
    v10 = v3;
    v4 = v3;
    if (((*(v2 + 912))() & 1) != 0 && *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
    {
      OUTLINED_FUNCTION_244_2();
      OUTLINED_FUNCTION_4_137();
      v6 = *(v5 + 184);
      v8 = v7;
      OUTLINED_FUNCTION_262_2();
      v6(0xD00000000000003DLL);

      v9 = v4;
    }

    else
    {
      v9 = v10;
    }
  }
}

void (*MultiwayViewController.isOnScreen.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = MultiwayViewController.isOnScreen.getter() & 1;
  return MultiwayViewController.isOnScreen.modify;
}

uint64_t MultiwayViewController.$isOnScreen.getter()
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MultiwayViewController.$isOnScreen : MultiwayViewController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return MultiwayViewController.$isOnScreen.setter(v5);
}

uint64_t MultiwayViewController.$isOnScreen.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(v1, a1, v3);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_44_0();
  return v8(v7);
}

void (*MultiwayViewController.$isOnScreen.modify())(uint64_t a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_18_7(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v0[4] = v2;
  OUTLINED_FUNCTION_9_0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = __swift_coroFrameAllocStub(v5);
  v0[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultiwayViewController.$isOnScreen.modify;
}

void MultiwayViewController.$isOnScreen.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_62_0();
    v6(v5);
    MultiwayViewController.$isOnScreen.setter(v3);
    v7 = OUTLINED_FUNCTION_40_2();
    v8(v7);
  }

  else
  {
    MultiwayViewController.$isOnScreen.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

void MultiwayViewController.isOnScreenPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v6, v7);
  OUTLINED_FUNCTION_235();
  Publisher.eraseToAnyPublisher()();
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_49();
}

uint64_t MultiwayViewController.isVisibleForStartingCamera.getter()
{
  if ((MultiwayViewController.isOnScreen.getter() & 1) != 0 && (v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner, swift_beginAccess(), (*(v0 + v1) & 1) == 0))
  {
    v2 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MultiwayViewController.stoppedSendingVideoDueToOffscreen.getter()
{
  v0 = qword_1EDDB9BE8;
  if (!qword_1EDDB9BE8)
  {
    goto LABEL_7;
  }

  v1 = static MultiwayViewController._stoppedSendingVideoDueToOffscreen;
  v2 = byte_1EDDB9BF0;
  v3 = MultiwayViewController.call.getter();

  v4 = [v3 uniqueProxyIdentifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == v1 && v0 == v7)
  {

    return v2 & 1;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MultiwayViewController.stoppedSendingVideoDueToOffscreen.setter(char a1)
{
  v2 = MultiwayViewController.call.getter();
  v3 = [v2 uniqueProxyIdentifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  static MultiwayViewController._stoppedSendingVideoDueToOffscreen = v4;
  qword_1EDDB9BE8 = v6;
  byte_1EDDB9BF0 = a1;
}

uint64_t MultiwayViewController.hasParticipantVideo.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for MultiwayViewController.hasParticipantVideo : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void *MultiwayViewController.hasParticipantVideo.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    LOBYTE(v9) = *(v1 + v3);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result updateBackgroundStartPipAuthorizationState];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id closure #1 in MultiwayViewController.dimmingLayer.getter()
{
  v0 = type metadata accessor for GlassDimmingView.GradientValues();
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for GlassDimmingView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    static GlassDimmingView.GradientValues.bottomLargeVideo.getter();
  }

  else
  {
    static GlassDimmingView.GradientValues.topSmallVideo.getter();
  }

  dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();
  v7 = [v3 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    static GlassDimmingView.GradientValues.topLargeVideo.getter();
  }

  else
  {
    static GlassDimmingView.GradientValues.bottomSmallVideo.getter();
  }

  dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
  v9 = v4;
  static GlassDimmingView.videoMatrix.getter();
  dispatch thunk of GlassDimmingView.colorMatrix.setter();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setUserInteractionEnabled_];

  return v9;
}

uint64_t MultiwayViewController.isDisplayedInBanner.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for MultiwayViewController.isDisplayedInBanner : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void MultiwayViewController.isDisplayedInBanner.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  swift_beginAccess();
  if (v2[v8] == v3)
  {
    return;
  }

  v9 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memcpy(v23, v9, sizeof(v23));
  if (getEnumTag for TapInteraction.EventType(v23) == 1)
  {
    return;
  }

  v10 = v9[6];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = v10;
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v12)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BA940;
  v22[0] = v2[v8];
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v17 = [v2 view];
  if (v17)
  {
    v18 = v17;
    if (v2[v8] == 1)
    {
      v19 = [objc_opt_self() clearColor];
    }

    else
    {
      if (one-time initialization token for background != -1)
      {
        swift_once();
      }

      v19 = static Colors.MultiwayViewController.background;
    }

    v20 = v19;
    [v18 setBackgroundColor_];

    MultiwayViewController.updateViewConstraints()();
    v21 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    MultiwayViewController.updateViewVisibility(localParticipantState:)(v11[v21]);
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.updateViewVisibility(localParticipantState:)(int a1)
{
  v62 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v62);
  v4 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v57 - v6;
  v63 = type metadata accessor for Participant(0);
  v8 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v57 - v17;
  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v67, (v1 + v19), sizeof(v67));
  memcpy(v68, (v1 + v19), 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v68) == 1)
  {
    return;
  }

  LODWORD(v59) = a1;
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  swift_beginAccess();
  v21 = v20;
  v22 = 0.0;
  if ((*(v1 + v20) & 1) == 0)
  {
    v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive;
    swift_beginAccess();
    if (*(v1 + v23))
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 1.0;
    }
  }

  v57[2] = v15;
  v57[3] = v10;
  v58 = v7;
  v61 = v1;
  memcpy(v66, v67, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v66, v65);
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_41:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC4BA940;
  *v65 = v22;
  v25 = String.init<A>(reflecting:)();
  v27 = v26;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [v68[7] setAlpha_];
  [v68[15] setAlpha_];
  v28 = [v68[2] view];
  if (!v28)
  {
    __break(1u);
    goto LABEL_43;
  }

  v29 = v28;
  [v28 setAlpha_];

  v30 = *(v61 + v21);
  v31 = v59 > 0x80u;
  v32 = [v68[1] view];
  if (!v32)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = v30 | v31;
  v35 = 1.0;
  v22 = 0.0;
  if (v34)
  {
    v35 = 0.0;
  }

  [v32 setAlpha_];

  v36 = [v68[0] view];
  if (!v36)
  {
    goto LABEL_44;
  }

  v37 = v36;
  if ((v34 & 1) == 0)
  {
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 1.0;
    }
  }

  [v37 setAlpha_];

  active = MultiwayViewController.mostActiveParticipants.getter();
  v39 = 0;
  v40 = *(active + 16);
  v59 = MEMORY[0x1E69E7CC0];
  while (v40 != v39)
  {
    if (v39 >= *(active + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v21 = *(v8 + 72);
    _s15ConversationKit11ParticipantVWOcTm_16();
    if (*&v18[*(v63 + 28)])
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_28;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v42 = *(v41 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v4[*(v41 + 64)], *&v4[*(v41 + 64) + 8]);
      memcpy(v65, &v4[v42], sizeof(v65));
      v43 = type metadata accessor for Date();
      (*(*(v43 - 8) + 8))(v4, v43);
      LOBYTE(v42) = v65[0];
      outlined destroy of Participant.MediaInfo(v65);
      if (v42)
      {
        goto LABEL_28;
      }

      _s15ConversationKit11ParticipantVWObTm_7();
      v44 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v44 = v64;
      }

      v46 = *(v44 + 16);
      v47 = v46 + 1;
      if (v46 >= *(v44 + 24) >> 1)
      {
        v59 = v46 + 1;
        v57[1] = v46;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = v59;
        v44 = v64;
      }

      ++v39;
      *(v44 + 16) = v47;
      v59 = v44;
      _s15ConversationKit11ParticipantVWObTm_7();
    }

    else
    {
LABEL_28:
      _s15ConversationKit11ParticipantVWOhTm_17();
      ++v39;
    }
  }

  v48 = v58;
  specialized Collection.first.getter(v59, v58);

  if (__swift_getEnumTagSinglePayload(v48, 1, v63) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit11ParticipantVSgMd);
    v49 = v61;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_16();
    MostActiveParticipantViewController.focus(on:)();
  }

  else
  {
    _s15ConversationKit11ParticipantVWObTm_7();
    MostActiveParticipantViewController.focus(on:)();
    v49 = v61;
  }

  _s15ConversationKit11ParticipantVWOhTm_17();
  v50 = *(v49 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v51 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if (*(*(v50 + v51) + 16) >= 2uLL)
  {
    MostActiveParticipantViewController.toggleRingButtonIfNecessary(isPipped:)(1);
  }

  v52 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  if ((*(v49 + v52) == 1 || (v53 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen, swift_beginAccess(), (*(v49 + v53) & 1) == 0)) && (v54 = *(v49 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator)) != 0)
  {
    v55 = *((*MEMORY[0x1E69E7D40] & *v54) + 0xC8);
    v56 = v54;
    v55(0xD000000000000018, 0x80000001BC51D300, 1);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }
}

uint64_t MultiwayViewController.isDisplayedInBanner.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.isInVideoMessageFlow.getter()
{
  OUTLINED_FUNCTION_198_4();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 408);
  v3 = v2;
  LOBYTE(v1) = v1();

  return v1 & 1;
}

uint64_t key path getter for MultiwayViewController.deskViewTapHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for MultiwayViewController.deskViewTapHandler : MultiwayViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t MultiwayViewController.deskViewTapHandler.getter()
{
  return MultiwayViewController.deskViewTapHandler.getter();
}

{
  OUTLINED_FUNCTION_6_11();
  v0 = OUTLINED_FUNCTION_38_2();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0);
  return OUTLINED_FUNCTION_38_2();
}

uint64_t MultiwayViewController.deskViewTapHandler.setter()
{
  return MultiwayViewController.deskViewTapHandler.setter();
}

{
  OUTLINED_FUNCTION_55();
  v4 = (v1 + *v3);
  OUTLINED_FUNCTION_73();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t MultiwayViewController.mostRecentFullScreenFocusedAspectRatio.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio;
  result = OUTLINED_FUNCTION_73();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t MultiwayViewController.mostRecentGridIsFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.mostRecentGridIsFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

BOOL MultiwayViewController.localParticipantIsFullScreen.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_201_3();
  OUTLINED_FUNCTION_3_0();
  v2 = swift_beginAccess();
  OUTLINED_FUNCTION_135_3(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_46_26(v21);
  if (v10)
  {
    return 0;
  }

  v11 = *(v1 + 48);
  v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v11 + v12) > 0x80u;
}

uint64_t key path getter for MultiwayViewController.windowAspectRatioHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for MultiwayViewController.windowAspectRatioHandler : MultiwayViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t key path getter for MultiwayViewController.captionsLayoutChangeHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for MultiwayViewController.captionsLayoutChangeHandler : MultiwayViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t key path getter for MultiwayViewController.unansweredCallDismissalHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for MultiwayViewController.unansweredCallDismissalHandler : MultiwayViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

BOOL MultiwayViewController.isShowingHUD.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_146_3(v11);
  OUTLINED_FUNCTION_46_26(v11);
  if (v2)
  {
    return 0;
  }

  v3 = *(v1 + 48);
  v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!v3[v4])
  {
    return 0;
  }

  v5 = v3;
  ConversationController.lookupActiveConversation()();
  if (v10[3])
  {
    OUTLINED_FUNCTION_82_0(v10);
    v6 = OUTLINED_FUNCTION_2_14();
    v8 = v7(v6);

    __swift_destroy_boxed_opaque_existential_1(v10);
    return v8 != 0;
  }

  else
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit0A0_pSgMd);
    return 1;
  }
}

uint64_t MultiwayViewController.isFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for MultiwayViewController.isFullScreen : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void MultiwayViewController.isFullScreen.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
  swift_beginAccess();
  if (*(v2 + v8) != v3)
  {
    v9 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v19, v9, sizeof(v19));
    if (getEnumTag for TapInteraction.EventType(v19) != 1)
    {
      v10 = v9[6];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v11 = v10;
      *v7 = static OS_dispatch_queue.main.getter();
      (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
      v12 = _dispatchPreconditionTest(_:)();
      (*(v5 + 8))(v7, v4);
      if (v12)
      {
        if (one-time initialization token for conversationKit == -1)
        {
LABEL_5:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_1BC4BA940;
          v18[0] = *(v2 + v8);
          v14 = String.init<A>(reflecting:)();
          v16 = v15;
          *(v13 + 56) = MEMORY[0x1E69E6158];
          *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v13 + 32) = v14;
          *(v13 + 40) = v16;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v17 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
          swift_beginAccess();
          MultiwayViewController.updateViewVisibility(localParticipantState:)(v11[v17]);
          specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(*(v2 + v8));
          MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_5;
    }
  }
}

void MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()()
{
  v1 = v0;
  if (Features.isNameAndPhotoC3Enabled.getter())
  {
    v2 = MultiwayViewController.call.getter();
    v3 = [v2 isConnected];

    if (v3)
    {
      v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
      swift_beginAccess();
      if (*(v1 + v4) == 1)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v5 = static NameAndPhotoUtilities.shared + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate;
        swift_beginAccess();
        *(v5 + 8) = &protocol witness table for MultiwayViewController;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakInit();
        specialized MultiwayViewController.getSuggestedBannerType(completion:)();
        MEMORY[0x1BFB23F10](v6);
      }

      else
      {
        MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
      }
    }

    else
    {

      MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(0);
    }
  }
}

uint64_t MultiwayViewController.isFullScreen.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.isAmbient.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.isAmbient.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

id MultiwayViewController.isShownAboveCoverSheet.getter()
{
  OUTLINED_FUNCTION_19_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong isShownAboveCoverSheet];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t MultiwayViewController.isPipStashed.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for MultiwayViewController.isPipStashed : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t MultiwayViewController.didRequestMemojiPicker.didset(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1 & 1;
  v6 = *a2;
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  if (*(v3 + v6) != v5)
  {
    return a3(result);
  }

  return result;
}

void MultiwayViewController.updateCanPostReactionNotice()()
{
  v1 = v0;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BAA20;
  MultiwayViewController.isPipped.getter();
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
  swift_beginAccess();
  v9 = String.init<A>(reflecting:)();
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  *(v2 + 72) = v9;
  *(v2 + 80) = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v11 = MultiwayViewController.conversationControlsManager.getter();
  v12 = MEMORY[0x1E69E7D40];
  if (v11)
  {
    v13 = v11;
    v14 = MultiwayViewController.isPipped.getter();
    (*((*v12 & *v13) + 0x448))(v14);
  }

  v15 = MultiwayViewController.conversationControlsManager.getter();
  if (v15)
  {
    v16 = v15;
    if (*(v1 + v8))
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    (*((*v12 & *v16) + 0x430))(v17);
  }
}

uint64_t MultiwayViewController.isPipStashed.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.isInCallEndedBlockAndReportFlow.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t MultiwayViewController.pipState.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.deviceOrientation.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t key path getter for MultiwayViewController.pipState : MultiwayViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void MultiwayViewController.pipState.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  if (*(v2 + v8) == a1)
  {
    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_21:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BAA20;
  v23 = *(v2 + v8);
  type metadata accessor for CNKPiPState(0);
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  LOBYTE(v23) = MultiwayViewController.isPipped.getter();
  v16 = String.init<A>(reflecting:)();
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = v17;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (*(v2 + v8) == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v18 = (*(*static ConversationHUDMenuController.shared + 88))();
    if (v18)
    {
      (*(*v18 + 648))(0xD000000000000016, 0x80000001BC51D360);
    }
  }

  MultiwayViewController.updateTileVisibilityForPiPState()();
  switch(*(v2 + v8))
  {
    case 0:
    case 2:
      if (!MultiwayViewController.shouldPauseForRingingCall.getter())
      {
        MultiwayViewController.setForegroundOrPiPRemoteVideoPresentationState()();
      }

      break;
    case 1:
    case 3:
      MultiwayViewController.updateViewsForPiPStateChange()();
      specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(*(v2 + v8) != 1);
      break;
    default:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, &static Log.default);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1BBC58000, v20, v21, "Unknown enum case", v22, 2u);
        MEMORY[0x1BFB23DF0](v22, -1, -1);
      }

      break;
  }

  MultiwayViewController.showCallDetailsIfNecessary()();
  MultiwayViewController.updateCanPostReactionNotice()();
}

void MultiwayViewController.updateTileVisibilityForPiPState()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  v3 = 0.0;
  v4 = 0;
  v5 = 1.0;
  v6 = 1;
  switch(*(v1 + v2))
  {
    case 0:
    case 2:
      goto LABEL_13;
    case 1:
      goto LABEL_12;
    case 3:
      if (ConversationController.isOneToOneModeEnabled.getter())
      {
        v3 = 0.0;
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v3 = (*(*static Defaults.shared + 400))();
      }

LABEL_12:
      v6 = 0;
      v5 = 0.0;
      v4 = *&v3;
LABEL_13:
      MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:)(v4, v6, v5);
      break;
    default:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, &static Log.default);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1BBC58000, v8, v9, "Unknown enum case", v10, 2u);
        MEMORY[0x1BFB23DF0](v10, -1, -1);
      }

      break;
  }
}

Swift::Void __swiftcall MultiwayViewController.updateViewsForPiPStateChange()()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_159_3();
  v4 = type metadata accessor for ParticipantViewModel(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_286_1(v61);
  OUTLINED_FUNCTION_46_26(v61);
  if (!v18)
  {
    v19 = v17[6];
    LOWORD(v60[0]) = 513;
    v20 = v19;
    MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v60);
    v21 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    MultiwayViewController.updateViewVisibility(localParticipantState:)(v20[v21]);
    OUTLINED_FUNCTION_286_1(v60);
    OUTLINED_FUNCTION_46_26(v60);
    if (!v18)
    {
      v57 = v20;
      v22 = v17[13];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_115(v9, 1, v10);
      if (!v18)
      {
        OUTLINED_FUNCTION_1_184();
        v56 = v16;
        _s15ConversationKit11ParticipantVWObTm_7();
        v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v24 = (*(v1 + v23) - 1) < 2;
        v25 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP;
        OUTLINED_FUNCTION_3_5();
        v22[v25] = v24;
        v26 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_7_5();
        v55 = v26;
        _s15ConversationKit11ParticipantVWOcTm_16();
        v27 = v22;
        v28 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
        ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v13, 2u, 0, 0, 0, 0, v28 & 1, v2, 1u, 0, 1u, 1u);
        v29 = *(v1 + v23);
        v30 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
        v20 = v57;
        if (v29 == 1)
        {
          if (!*&v56[*(v10 + 28)])
          {
            v31 = MostActiveParticipantViewController.localParticipantView.getter();
            ParticipantView.registerVideoLayers(with:)(v2);

            v32 = v55 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
            OUTLINED_FUNCTION_25_54();
            swift_beginAccess();
            v30 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
            if (*(v32 + 16) < 0)
            {
              v33 = *&v27[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView];
              v54 = v27;
              v34 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
              v53 = *(v32 + 1);
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v35 = *(v1 + v34);
              v27 = v54;
              v36 = v33;
              v20 = v57;
              v52 = v36;
              ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v53, v35, 1, 0);

              v30 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
            }
          }

          v29 = *(v1 + v23);
        }

        if (v29 == 3)
        {
          v37 = v30;
          v38 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          if (*(v1 + v38))
          {
            if (one-time initialization token for conversationKit != -1)
            {
              OUTLINED_FUNCTION_2_9();
            }

            v39 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v39, static Logger.conversationKit);
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_18_0(v41))
            {
              v42 = OUTLINED_FUNCTION_33();
              *v42 = 0;
              _os_log_impl(&dword_1BBC58000, v40, v41, "Not registering fullScreenMultiwayViewController local layers as splitViewMultiwayViewController is active", v42, 2u);
              OUTLINED_FUNCTION_27();
            }

            else
            {
            }

            OUTLINED_FUNCTION_22_52();
LABEL_23:
            OUTLINED_FUNCTION_0_220();
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_286_1(v59);
          if (getEnumTag for TapInteraction.EventType(v59) != 1)
          {
            v43 = *(v17[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
            ParticipantView.registerVideoLayers(with:)(v2);
          }

          v44 = (v55 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
          OUTLINED_FUNCTION_25_54();
          swift_beginAccess();
          if (v44[2] < 0)
          {
            v45 = *v44;
            swift_beginAccess();
            OUTLINED_FUNCTION_286_1(v58);
            OUTLINED_FUNCTION_46_26(v58);
            if (v18)
            {
              OUTLINED_FUNCTION_22_52();
              OUTLINED_FUNCTION_0_220();
              _s15ConversationKit11ParticipantVWOhTm_17();
              swift_endAccess();

              goto LABEL_25;
            }

            v55 = v45 >> 8;
            v46 = v17[7];
            swift_endAccess();
            v47 = *(v46 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
            v48 = v37[204];
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v49 = *(v1 + v48);
            v50 = v47;
            v20 = v57;
            v51 = v50;
            ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v55, v49, 1, 0);

            OUTLINED_FUNCTION_22_52();
            goto LABEL_23;
          }
        }

        OUTLINED_FUNCTION_22_52();

        OUTLINED_FUNCTION_0_220();
LABEL_24:
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_25;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantVSgMd);
      v20 = v57;
    }

LABEL_25:
    MultiwayViewController.updateScreenSharingBlurIfNeeded()();
  }

  OUTLINED_FUNCTION_30_0();
}

void MultiwayViewController.setForegroundOrPiPRemoteVideoPresentationState()()
{
  if (MultiwayViewController.isPipped.getter())
  {
    v0 = 1;
  }

  else
  {
    if ((MultiwayViewController.isOnScreen.getter() & 1) == 0)
    {
      return;
    }

    v0 = 0;
  }

  v1 = MultiwayViewController.call.getter();
  [v1 setRemoteVideoPresentationState_];
}

uint64_t MultiwayViewController.pipState.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_47(v3) + 32) = v0;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.deviceOrientation.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 24));

  free(v3);
}

uint64_t MultiwayViewController.isCaptioningEnabled.setter(Swift::Bool a1)
{

  CaptioningStateManager.setCaptioningEnabled(_:)(a1);
}

uint64_t (*MultiwayViewController.isCaptioningEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = MultiwayViewController.isCaptioningEnabled.getter() & 1;
  return MultiwayViewController.isCaptioningEnabled.modify;
}

uint64_t MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 56);
  v8 = *a1;
  v9 = a1[1];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v41, (v2 + v11), sizeof(v41));
    memcpy(v42, (v2 + v11), sizeof(v42));
    result = getEnumTag for TapInteraction.EventType(v42);
    if (result != 1)
    {
      memcpy(v40, v42, sizeof(v40));
      memcpy(v39, v41, 0xE8uLL);
      v38 = MEMORY[0x1E69E7CC0];
      outlined init with copy of MultiwayViewController.ViewContent(v39, v35);
      MultiwayViewController.mostActiveParticipants.getter();
      MultiwayViewController.activeRemoteParticipants(in:)();

      v12 = v8 | (v9 << 8);
      v13 = v42[1];
      specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)();

      v14 = v42[13];
      specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)();

      MultiwayViewController.updateFullScreenFocus(changeSource:defocusAnimationStyle:)(2, 1);
      v15 = v42[0];
      swift_beginAccess();
      v16 = v15;

      Array<A>.participants(notIn:)();

      specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)();

      v17 = ParticipantListViewController.participantCount.getter() > 0;
      MultiwayViewController.setParticipantListState(_:animated:)(v17, 1);
      v18 = v42[4];
      if (v42[4])
      {
        v19 = v42[5];
        ObjectType = swift_getObjectType();
        v21 = v18;
        v22 = ParticipantListViewController.participantCount.getter();
        (*(v19 + 88))(v22, ObjectType, v19);
      }

      v23 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      v24 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
      swift_beginAccess();
      v25 = *(v23 + v24);
      swift_beginAccess();
      v35[0] = v25;

      specialized Array.append<A>(contentsOf:)(v26);
      v27 = v35[0];
      v28 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v28 + 32;
        do
        {
          outlined init with copy of IDSLookupManager(v30, v35);
          v31 = v36;
          v32 = v37;
          v33 = __swift_project_boxed_opaque_existential_1(v35, v36);
          specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v33, v27, &v38, v12, v31, v32);
          __swift_destroy_boxed_opaque_existential_1(v35);
          v30 += 40;
          --v29;
        }

        while (v29);
      }

      MultiwayViewController.updatePresentationSize()();
      MultiwayViewController.needsUpdatePresentationContexts.setter(1);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *MultiwayViewController.effectsViewController.getter()
{
  v2 = OUTLINED_FUNCTION_33_42();
  OUTLINED_FUNCTION_112_7(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16[0]);
  getEnumTag for TapInteraction.EventType(v16);
  OUTLINED_FUNCTION_204_2();
  if (!v10)
  {
    v1 = *(v0 + 72);
    v11 = v1;
  }

  return v1;
}

void key path setter for MultiwayViewController.effectsViewController : MultiwayViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MultiwayViewController.effectsViewController.setter(v1);
}

void MultiwayViewController.effectsViewController.setter(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_190_1(v6);
  OUTLINED_FUNCTION_46_26(v6);
  if (!v4)
  {
    v5 = *(v3 + 72);
    *(v3 + 72) = a1;
    a1 = v5;
  }
}

uint64_t MultiwayViewController.effectsViewController.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.effectsViewController.getter();
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.effectsViewController.modify(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = OUTLINED_FUNCTION_200_2();
    MultiwayViewController.effectsViewController.setter(v3);
  }

  else
  {
    MultiwayViewController.effectsViewController.setter(*a1);
  }
}

uint64_t MultiwayViewController.effectsBrowserViewController.getter()
{
  v1 = OUTLINED_FUNCTION_33_42();
  OUTLINED_FUNCTION_112_7(v1, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19[0]);
  OUTLINED_FUNCTION_46_26(v19);
  if (v9 || !*(v0 + 80))
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_137();
  v11 = *(v10 + 120);
  v13 = v12;
  v14 = v11();

  return v14;
}

void key path setter for MultiwayViewController.effectsBrowserViewController : MultiwayViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MultiwayViewController.effectsBrowserViewController.setter(v1);
}

void MultiwayViewController.effectsBrowserViewController.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_190_1(v13);
  OUTLINED_FUNCTION_46_26(v13);
  if (!v4)
  {
    v5 = v3[11];
    v3[11] = a1;
    v6 = a1;
  }

  swift_endAccess();
  OUTLINED_FUNCTION_190_1(v12);
  OUTLINED_FUNCTION_46_26(v12);
  if (!v4 && v3[10])
  {
    OUTLINED_FUNCTION_4_137();
    v8 = *(v7 + 128);
    v10 = v9;
    v11 = OUTLINED_FUNCTION_28_0();
    v8(v11);
    a1 = v3;
  }
}

uint64_t MultiwayViewController.effectsBrowserViewController.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.effectsBrowserViewController.getter();
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.effectsBrowserViewController.modify(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = OUTLINED_FUNCTION_200_2();
    MultiwayViewController.effectsBrowserViewController.setter(v3);
  }

  else
  {
    MultiwayViewController.effectsBrowserViewController.setter(*a1);
  }
}

void *MultiwayViewController.effectsBrowserContainerViewController.getter()
{
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_146_3(v5);
  OUTLINED_FUNCTION_46_26(v5);
  if (v1)
  {
    return 0;
  }

  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = v2;
  }

  return v2;
}

void *MultiwayViewController.captionsViewController.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = 0;
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[18];
    v3 = v2;
  }

  return v2;
}

void *MultiwayViewController.inCallControlsViewController.getter()
{
  v2 = OUTLINED_FUNCTION_33_42();
  OUTLINED_FUNCTION_112_7(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16[0]);
  getEnumTag for TapInteraction.EventType(v16);
  OUTLINED_FUNCTION_204_2();
  if (!v10)
  {
    v1 = *(v0 + 16);
    v11 = v1;
  }

  return v1;
}

uint64_t MultiwayViewController.delegate.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_delegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_30_2();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for MultiwayViewController.delegate : MultiwayViewController()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_67();
  result = swift_unknownObjectWeakLoadStrong();
  *v0 = result;
  return result;
}

uint64_t key path setter for MultiwayViewController.delegate : MultiwayViewController()
{
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_75_1();
  return swift_unknownObjectWeakAssign();
}

uint64_t MultiwayViewController.iOSDelegate.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_iOSDelegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_30_2();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.effectsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.effectsEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

double MultiwayViewController.preferredPIPContentAspectRatio.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_246_3();
  v6 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v21, v6, sizeof(v21));
  OUTLINED_FUNCTION_46_26(v21);
  if (v11)
  {
    v7 = OUTLINED_FUNCTION_60_16();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v4);
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v9 = OUTLINED_FUNCTION_60_16();
  OUTLINED_FUNCTION_115(v9, v10, v4);
  if (v11)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_91_2();
  _s15ConversationKit11ParticipantVWObTm_7();
  Participant.videoInfo.getter();
  if (v18[0])
  {
    v14 = *&v18[5];
    v13 = *&v18[7];
    v15 = v19;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    if (v15)
    {
      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
      return 100.0;
    }

    Participant.videoInfo.getter();
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
    if (v20[0])
    {
      v17 = v20[3];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v17 == 1)
      {
        return v14;
      }

      else if (v17 == 3)
      {
        return v14;
      }
    }

    return v13;
  }

  OUTLINED_FUNCTION_0_220();
  _s15ConversationKit11ParticipantVWOhTm_17();
LABEL_7:
  if ((ConversationController.isOneToOneModeEnabled.getter() & 1) == 0)
  {
    return 100.0;
  }

  MultiwayViewController.pipContentAspectRatioForOneToOneLocalPreview.getter();
  return v12;
}

void MultiwayViewController.pipContentAspectRatioForOneToOneLocalPreview.getter()
{
  v1 = v0;
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 frame];
      v5 = v4;

      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 frame];
        v9 = v8;

        v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
        swift_beginAccess();
        IsPortrait = UIInterfaceOrientationIsPortrait(*&v1[v10]);
        v12 = [v1 view];
        v13 = v12;
        if (v9 >= v5 == IsPortrait)
        {
          if (v12)
          {
            [v12 frame];

            v14 = [v1 view];
            if (v14)
            {
              v15 = v14;
              [v14 frame];

              return;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          return;
        }

        if (v12)
        {
          [v12 frame];

          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t MultiwayViewController.fullScreenFocusedParticipantOrientation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v13, (v0 + v6), sizeof(v13));
  OUTLINED_FUNCTION_46_26(v13);
  if (v7)
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v8 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v8, v9, v4);
  if (v7)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    return 1;
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_206();
  _s15ConversationKit11ParticipantVWObTm_7();
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_220();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if (!v12[0])
  {
    return 1;
  }

  v10 = v12[3];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  return v10;
}

uint64_t MultiwayViewController.shouldShowLastFrameUI.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()();
  return *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff);
}

uint64_t MultiwayViewController.shouldDisconnectOnDismissal.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_276_1(v108);
  OUTLINED_FUNCTION_276_1(v109);
  v0 = OUTLINED_FUNCTION_46_26(v109);
  if (v8)
  {
    goto LABEL_5;
  }

  v9 = OUTLINED_FUNCTION_111_8(v0, v1, v2, v3, v4, v5, v6, v7, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83);
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
LABEL_5:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v109[2];
  v18 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v19 = *(v17 + v18);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  switch(v19 >> 5)
  {
    case 1u:
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2u:
      v20 = v19 ^ 1;
      return v20 & 1;
    case 3u:
      if (v19 != 96)
      {
        goto LABEL_5;
      }

LABEL_11:
      v20 = 1;
      break;
    default:
      goto LABEL_5;
  }

  return v20 & 1;
}

void *MultiwayViewController.effectsBrowserIsOpaque.getter()
{
  result = MultiwayViewController.effectsBrowserViewController.getter();
  if (result)
  {
    v1 = result;
    v2 = [result viewIfLoaded];

    if (v2)
    {
      [v2 alpha];
      v4 = v3;

      return (v4 > 0.5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiwayViewController.needsUpdatePresentationContexts.didset(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts) == 1 && (a1 & 1) == 0)
    {
      v15 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in MultiwayViewController.needsUpdatePresentationContexts.didset;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_366;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v8, v5, v17);
      _Block_release(v17);

      (*(v21 + 8))(v5, v3);
      return (*(v19 + 8))(v8, v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in MultiwayViewController.needsUpdatePresentationContexts.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MultiwayViewController.needsUpdatePresentationContexts.setter(0);
    MultiwayViewController.updateAllParticipantPresentationContexts(forceUpdate:)(0);
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        [v3 participantsDidChangeLocationIn_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t MultiwayViewController.needsUpdatePresentationContexts.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts) = a1;
  return MultiwayViewController.needsUpdatePresentationContexts.didset(v2);
}

uint64_t MultiwayViewController.updateAllParticipantPresentationContexts(forceUpdate:)(int a1)
{
  LODWORD(v2) = a1;
  v3 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Participant(0);
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v33[1] = v9;
    v34 = v2;
    v13 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v33[0] = v11;

    v2 = MEMORY[0x1E69E7CC0];
    for (i = v12 - 1; ; --i)
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      _s15ConversationKit11ParticipantVWOcTm_16();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v36 = v2;
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v18 = *(v17 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v5[*(v17 + 64)], *&v5[*(v17 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v5[v18]);
          v19 = type metadata accessor for Date();
          (*(*(v19 - 8) + 8))(v5, v19);
          v20 = MultiwayViewController.videoVisibility(for:)(&v8[*(v35 + 20)]);
          v22 = v21;
          v23 = MultiwayViewController.prominenceIndex(for:)(v8);
          MultiwayViewController.spatialPosition(for:)();
          MultiwayViewController.presentationContext(for:withVideoVisibility:withProminence:withSpatialPosition:)(v8, v20, v22 & 1, v23, __src, v24, v25, v26, v27);
          _s15ConversationKit11ParticipantVWOhTm_17();
          if (__src[64] == 2)
          {
            v2 = v36;
          }

          else
          {
            memcpy(__dst, __src, sizeof(__dst));
            v2 = v36;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v2 = v29;
            }

            v28 = v2[2];
            if (v28 >= v2[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v2 = v30;
            }

            memcpy(v37, __dst, sizeof(v37));
            v2[2] = v28 + 1;
            memcpy(&v2[9 * v28 + 4], v37, 0x41uLL);
          }

          break;
        case 6u:
          goto LABEL_5;
        default:
          v16 = type metadata accessor for Date();
          (*(*(v16 - 8) + 8))(v5, v16);
LABEL_5:
          _s15ConversationKit11ParticipantVWOhTm_17();
          break;
      }

      if (!i)
      {
        break;
      }

      v13 += v14;
    }

    v31._rawValue = v2;
    LOBYTE(v2) = v34;
  }

  else
  {
    v31._rawValue = MEMORY[0x1E69E7CC0];
  }

  ConversationController.update(presentationContexts:forceUpdate:)(v31, v2 & 1);
}

id MultiwayViewController.flashView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  }

  else
  {
    v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
    OUTLINED_FUNCTION_3_12();
    *(v0 + v4) = 1;
    type metadata accessor for FlashView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void MultiwayViewController.flashView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView) = a1;
}

uint64_t MultiwayViewController.flashView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.flashView.getter();
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.flashView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView) = v2;
}

id MultiwayViewController.insulatingView.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView);
  v4 = v3;
  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v5 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v5) = 1;
  result = OUTLINED_FUNCTION_184_1();
  if (result)
  {
    v7 = result;
    [result bounds];
    OUTLINED_FUNCTION_40_1();

    v8 = objc_allocWithZone(type metadata accessor for MomentsIndicatorView());
    v9 = OUTLINED_FUNCTION_35();
    [v10 v11];
    OUTLINED_FUNCTION_82_11();
    OUTLINED_FUNCTION_3_52();
    (*(v12 + 104))(1);
    result = OUTLINED_FUNCTION_184_1();
    if (result)
    {
      v13 = result;
      [result bounds];
      OUTLINED_FUNCTION_40_1();

      v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14InsulatingViewCyAA016MomentsIndicatorD0CGMd));
      v15 = OUTLINED_FUNCTION_35();
      v4 = specialized InsulatingView.init(frame:content:forwardHits:)(v7, 0, v15, v16, v17, v18);
      v19 = *(v1 + v2);
      *(v1 + v2) = v4;
      v20 = v4;
      outlined consume of IMAccount??(v19);
LABEL_5:
      outlined copy of IMAccount??(v3);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void key path setter for MultiwayViewController.insulatingView : MultiwayViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MultiwayViewController.insulatingView.setter(v1);
}

void MultiwayViewController.insulatingView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView) = a1;
  outlined consume of IMAccount??(v2);
}

uint64_t MultiwayViewController.insulatingView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.insulatingView.getter();
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.insulatingView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView);
  *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView) = *a1;
  if (a2)
  {
    v5 = v2;
    v6 = OUTLINED_FUNCTION_200_2();
    outlined consume of IMAccount??(v6);
  }

  else
  {

    outlined consume of IMAccount??(v4);
  }
}

uint64_t MultiwayViewController.hasInitializedMomentsViews.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.hasInitializedMomentsViews.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

void *MultiwayViewController.localLivePhotoAlertView.getter()
{
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_146_3(v5);
  OUTLINED_FUNCTION_46_26(v5);
  if (v1)
  {
    return 0;
  }

  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = v2;
  }

  return v2;
}

uint64_t MultiwayViewController.cachedMediaPipSafeAreaFrame.didset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = (v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    result = CGRectEqualToRect(*(v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame), v19);
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v17 = result;
        if ([result respondsToSelector_])
        {
          [v17 viewController:v5 mediaPipSafeAreaFrameChanged:{*v16, v16[1], v16[2], v16[3]}];
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.cachedMediaPipSafeAreaFrame.setter(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
  v6 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
  v7 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame + 8);
  v8 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame + 16);
  v9 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame + 24);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return MultiwayViewController.cachedMediaPipSafeAreaFrame.didset(v6, v7, v8, v9);
}

double MultiwayViewController.mediaPipFrameInWindowScene.getter()
{
  return MultiwayViewController.mediaPipFrameInWindowScene.getter();
}

{
  OUTLINED_FUNCTION_6_11();
  return *v0;
}

uint64_t MultiwayViewController.mediaPipFrameInWindowScene.setter()
{
  OUTLINED_FUNCTION_20_2();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
  OUTLINED_FUNCTION_3_5();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  *v5 = v4;
  *(v5 + 1) = v3;
  *(v5 + 2) = v2;
  *(v5 + 3) = v1;
  return MultiwayViewController.mediaPipFrameInWindowScene.didset(v6, v7, v8, v9);
}

__n128 key path getter for MultiwayViewController.mediaPipFrameInWindowScene : MultiwayViewController@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t MultiwayViewController.mediaPipFrameInWindowScene.didset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = (v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
    swift_beginAccess();
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    result = CGRectEqualToRect(*v16, v20);
    if ((result & 1) == 0)
    {
      MultiwayViewController.updateMediaPipInfo()();
      if (CGRectIsEmpty(*v16))
      {
        IsEmpty = 1;
      }

      else
      {
        v19.origin.x = a1;
        v19.origin.y = a2;
        v19.size.width = a3;
        v19.size.height = a4;
        IsEmpty = CGRectIsEmpty(v19);
      }

      return MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(IsEmpty);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.updateMediaPipInfo()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    MultiwayViewController.mediaPipFrame.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v1 viewIfLoaded];
    if (v16)
    {
      v17 = v16;
      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      if (!CGRectIsEmpty(v23))
      {
        v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
        swift_beginAccess();
        if (*&v1[v18] == 2 && (v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation, swift_beginAccess(), LODWORD(v19) = (*&v1[v19] & 0xFFFFFFFFFFFFFFFDLL) == 1, [v17 bounds], v19 == v20 >= v21))
        {
          v28.origin.x = v9;
          v28.origin.y = v11;
          v28.size.width = v13;
          v28.size.height = v15;
          CGRectGetHeight(v28);
          v29.origin.x = v9;
          v29.origin.y = v11;
          v29.size.width = v13;
          v29.size.height = v15;
          CGRectGetWidth(v29);
          swift_beginAccess();
        }

        else
        {
          swift_beginAccess();
          MultiwayViewController.mediaPipInfo.setter();
          v24.origin.x = v9;
          v24.origin.y = v11;
          v24.size.width = v13;
          v24.size.height = v15;
          CGRectGetMidX(v24);
          MultiwayViewController.mediaPipSafeAreaFrame.getter();
          CGRectGetMidX(v25);
          v26.origin.x = v9;
          v26.origin.y = v11;
          v26.size.width = v13;
          v26.size.height = v15;
          CGRectGetMidY(v26);
          MultiwayViewController.mediaPipSafeAreaFrame.getter();
          CGRectGetMidY(v27);
        }

        MultiwayViewController.mediaPipInfo.setter();

        return MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(0);
      }
    }

    swift_beginAccess();
    MultiwayViewController.mediaPipInfo.setter();
    return MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(0);
  }

  __break(1u);
  return result;
}

uint64_t MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v17, (v2 + v10), sizeof(v17));
    memcpy(v18, (v2 + v10), sizeof(v18));
    result = getEnumTag for TapInteraction.EventType(v18);
    if (result != 1)
    {
      v11 = v18[6];
      v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      result = swift_beginAccess();
      if ((*(v11 + v12) & 0xFE) != 0x80)
      {
        memcpy(v16, v17, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v16, v15);
        if (a1)
        {
          MultiwayViewController.mostActiveParticipants.getter();
          v14 = MultiwayViewController.activeRemoteParticipants(in:)();
        }

        else
        {
          v14 = 0;
        }

        v13.value._rawValue = v14;
        ParticipantGridViewController.dodgeMediaPip(with:)(v13);

        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.mediaPipFrameInWindowScene.modify()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 56) = v0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  v4 = v3[1];
  *v1 = *v3;
  v1[1] = v4;
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.mediaPipFrameInWindowScene.modify(void **a1)
{
  v1 = *a1;
  MultiwayViewController.mediaPipFrameInWindowScene.setter();

  free(v1);
}

uint64_t MultiwayViewController.isScreenSharingFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.isScreenSharingFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

__n128 key path getter for MultiwayViewController.mediaPipInfo : MultiwayViewController@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
  swift_beginAccess();
  *a2 = *v3;
  result = *(v3 + 8);
  *(a2 + 8) = result;
  return result;
}

void MultiwayViewController.mediaPipInfo.setter()
{
  OUTLINED_FUNCTION_0_91();
  v4 = v3;
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *v5;
  *v5 = v4;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  MultiwayViewController.mediaPipInfo.didset(v8, v6, v7);
}

void MultiwayViewController.mediaPipInfo.didset(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = &v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
    swift_beginAccess();
    if (!static ParticipantGridView.MediaPipInfo.== infix(_:_:)(*v13, a1, *(v13 + 1), *(v13 + 2), a2, a3))
    {
      v14 = [v4 viewIfLoaded];
      [v14 setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }
}

char *MultiwayViewController.__allocating_init(activeCall:)()
{
  OUTLINED_FUNCTION_77_2();
  v0 = objc_allocWithZone(type metadata accessor for BannerPresentationManager());
  OUTLINED_FUNCTION_24_1();
  BannerPresentationManager.init(delegate:)();
  OUTLINED_FUNCTION_108_0();

  return MultiwayViewController.__allocating_init(activeCall:bannerPresentationManager:)();
}

char *MultiwayViewController.__allocating_init(activeCall:bannerPresentationManager:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_6_7();
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static PlaceholderCallCenter.shared;
  v7 = objc_allocWithZone(type metadata accessor for CallCenter());
  v8 = v6;
  v9 = OUTLINED_FUNCTION_170();
  v11 = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v9, v10, 1, 1);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  swift_unknownObjectWeakInit();
  v34 = 0;
  swift_unknownObjectWeakInit();
  v12 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v13 = swift_allocObject();
  v31 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v32 = &protocol witness table for TUIDSLookupManager;
  v30[0] = v12;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_82();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v14, v15);
  v16 = MEMORY[0x1E69E7CC0];
  v13[2] = Dictionary.init(dictionaryLiteral:)();
  v13[3] = Dictionary.init(dictionaryLiteral:)();
  v13[5] = 0;
  swift_unknownObjectWeakInit();
  v13[6] = v16;
  outlined init with copy of IDSLookupManager(v30, (v13 + 7));
  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v13 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v12];

  __swift_destroy_boxed_opaque_existential_1(v30);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v18 = static Defaults.shared;
  v19 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(&v35, &v29);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v33, v30);
  v20 = v11;
  swift_retain_n();
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v4, v20, &v29, v30, 0, v36, 1, v13, v18, v19, v28, v29, v30[0], v30[1], v30[2], v31, v32, v33, v34, v35, *&v36[0], *(&v36[0] + 1));

  outlined destroy of DefaultParticipantCaptionsProviderCreator(&v33);
  outlined destroy of DefaultParticipantMediaProviderCreator(&v35);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = static Features.shared;
  v22 = objc_allocWithZone(v2);
  v23 = v21;
  v24 = OUTLINED_FUNCTION_91_2();
  return specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(v24, v25, v0, v18, v26, v22);
}

char *MultiwayViewController.__allocating_init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_4_32();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_246();
  swift_getObjectType();
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_49();

  return specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

char *MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_4_32();
  swift_getObjectType();
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_49();

  return specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t MultiwayViewController.conversationControllerDidAddParticipant(_:)(uint64_t a1)
{
  MultiwayViewController.scheduleUpdate(for:)(a1);
  v1 = MultiwayViewController.captionsViewController.getter();
  if (v1)
  {
    v2 = v1;
    v3 = ConversationController.conversationDisplayName.getter();
    CaptionsViewController.callName.setter(v3, v4);
  }

  v6 = 514;
  return MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v6);
}

void closure #4 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      HIWORD(v9) = 514;
      MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(a1, &v9 + 6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v114 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Date();
  v100 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = v93 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v98 = v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v93 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v93 - v18;
  v106 = type metadata accessor for Participant(0);
  v112 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v96 = v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = v93 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v108) = *a2;
  v27 = a2[1];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v26, v23);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v29 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v125, (v3 + v29), sizeof(v125));
  memcpy(v126, (v3 + v29), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v126);
  if (result != 1)
  {
    memcpy(v124, v126, sizeof(v124));
    v30 = v106;
    v99 = *(v106 + 28);
    if (*(a1 + v99))
    {
      v111 = 0;
      v110 = 0;
      v109 = 0x7FFFFFCFELL;
    }

    else
    {
      v31 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
      swift_beginAccess();
      v32 = *(v31 + 8);
      v109 = *v31;
      v111 = v32;
      v110 = *(v31 + 16);
    }

    memcpy(v122, v125, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v122, v121);
    if ((Participant.isActive.getter() & 1) == 0)
    {
      specialized MostActiveParticipantsController.markParticipantAsOffline(_:)();
    }

    v115 = v3;
    v33 = v126[13];
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v19, 1, v30) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit11ParticipantVSgMd);
      v34 = v27;
    }

    else
    {
      _s15ConversationKit11ParticipantVWObTm_7();
      Participant.videoInfo.getter();
      v34 = v27;
      if (v123[0])
      {
        v35 = v123[3];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v106);
        v37 = v108;
        if (EnumTagSinglePayload == 1)
        {
          _s15ConversationKit11ParticipantVWOhTm_17();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit11ParticipantVSgMd);
        }

        else
        {
          Participant.videoInfo.getter();
          _s15ConversationKit11ParticipantVWOhTm_17();
          if (v121[0] && (v90 = v121[3], outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd), (static UUID.== infix(_:_:)() & 1) != 0) && v35 != v90 && MultiwayViewController.isPipped.getter())
          {
            v91 = ConversationController.isOneToOneModeEnabled.getter();
            _s15ConversationKit11ParticipantVWOhTm_17();
            if (v91)
            {
              v92 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
              swift_beginAccess();
              *(v33 + v92) = 1;
            }
          }

          else
          {
            _s15ConversationKit11ParticipantVWOhTm_17();
          }
        }

        goto LABEL_15;
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    v37 = v108;
LABEL_15:
    v38 = v115;
    if (*(a1 + v99))
    {
      MultiwayViewController.updateFullScreenFocus(changeSource:defocusAnimationStyle:)(2, 1);
    }

    MultiwayViewController.mostActiveParticipants.getter();
    v39 = MultiwayViewController.activeRemoteParticipants(in:)();

    v40 = v126[1];
    LOBYTE(v118[0]) = v37;
    BYTE1(v118[0]) = v34;
    v41._rawValue = v39;
    ParticipantGridViewController.update(with:updateReason:)(v41, v118);
    LOBYTE(v118[0]) = v37;
    BYTE1(v118[0]) = v34;
    v42._rawValue = v39;
    MostActiveParticipantViewController.update(with:updateReason:)(v42);
    swift_beginAccess();
    v95 = v40;

    Array<A>.participants(notIn:)();
    v44 = v43;

    LOBYTE(v118[0]) = v37;
    BYTE1(v118[0]) = v34;
    ParticipantListViewController.update(with:updateReason:)(v44);

    v45 = ParticipantListViewController.participantCount.getter() > 0;
    MultiwayViewController.setParticipantListState(_:animated:)(v45, 1);
    v46 = v126[4];
    v47 = v38;
    if (v126[4])
    {
      v48 = v126[5];
      ObjectType = swift_getObjectType();
      v50 = v46;
      v51 = ParticipantListViewController.participantCount.getter();
      (*(v48 + 88))(v51, ObjectType, v48);

      v47 = v115;
    }

    v52 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (MultiwayViewController.sensitiveContentController.getter())
    {
      SensitiveContentController.saveStreamSettingsForRestore(_:)(a1);
    }

    v53 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController;
    v54 = *(v47 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController);
    v55 = v97;
    if (v54)
    {

      SensitiveContentController.configureShieldForJoiningParticipant(_:)();
      outlined consume of TranslationTextView??(v54);
      v56 = *(v47 + v53);
      if (v56)
      {

        SensitiveContentController.configureShieldforLeavingParticipant(_:)();
        outlined consume of TranslationTextView??(v56);
      }
    }

    v57 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
    v58 = *(v57 + 16);
    if (v58)
    {
      v93[0] = v57;
      v93[1] = v52;
      v59 = v57 + 32;
      v107 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
      swift_beginAccess();
      v101 = (v100 + 4);
      v102 = a1 + 3;
      ++v100;
      v108 = xmmword_1BC4BA940;
      v103 = a1;
      while (1)
      {
        outlined init with copy of IDSLookupManager(v59, v118);
        v60 = v119;
        v61 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        (*(v61 + 48))(a1, v109, v111, v110, v60, v61);
        outlined init with copy of IDSLookupManager(v118, &v117);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ParticipantsViewController_pMd);
        type metadata accessor for MostActiveParticipantViewController();
        if (!swift_dynamicCast() || (v116, !MultiwayViewController.isPipped.getter()))
        {
          v62 = v119;
          v63 = v120;
          __swift_project_boxed_opaque_existential_1(v118, v119);
          (*(v63 + 56))(a1, *&v107[v47], v62, v63);
        }

        v64 = v119;
        v65 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
        v66 = swift_allocObject();
        *(v66 + 16) = v108;
        _s15ConversationKit11ParticipantVWOcTm_16();
        v67 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
        (*(v65 + 96))(v66, v67 & 1, v64, v65);

        v69 = v119;
        v68 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        v70 = v113;
        _s15ConversationKit11ParticipantVWOcTm_16();
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v72 = *(v71 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v70[*(v71 + 64)], *&v70[*(v71 + 64) + 8]);
          v73 = v104;
          v74 = v105;
          (*v101)(v104, v70, v105);
          outlined destroy of Participant.MediaInfo(&v70[v72]);
          Date.timeIntervalSinceNow.getter();
          if (v75 <= 0.0)
          {
            Date.timeIntervalSinceNow.getter();
            v78 = v77;
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v79 = (*(*static Defaults.shared + 720))();
            (*v100)(v73, v74);
            v76 = -v78 <= v79;
            a1 = v103;
            if (*(v102 + *(v106 + 24)))
            {
              goto LABEL_40;
            }
          }

          else
          {
            (*v100)(v73, v74);
            a1 = v103;
            if (*(v102 + *(v106 + 24)) == 1)
            {
              v76 = 0;
LABEL_40:
              if (*(a1 + v99))
              {
                goto LABEL_35;
              }
            }
          }
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_17();
        }

        v76 = 0;
LABEL_35:
        (*(v68 + 64))(a1, v76, v69, v68);
        __swift_destroy_boxed_opaque_existential_1(v118);
        v59 += 40;
        --v58;
        v47 = v115;
        if (!v58)
        {

          v55 = v97;
          goto LABEL_43;
        }
      }
    }

LABEL_43:
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v80 = v106;
    if (__swift_getEnumTagSinglePayload(v55, 1, v106) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      _s15ConversationKit11ParticipantVWObTm_7();
      if (static UUID.== infix(_:_:)())
      {
        v81 = v94;
        _s15ConversationKit11ParticipantVWOcTm_16();
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v80);
        MultiwayViewController.notifyFullScreenFocusedParticipantChanged(oldFullScreenFocusedParticipant:newFullScreenFocusedParticipant:)(v98, v81);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v81, &_s15ConversationKit11ParticipantVSgMd);
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    MultiwayViewController.updateLocalParticipantState()();
    if (*(a1 + *(v80 + 24)) == 1)
    {
      Participant.hasReducedQualityVideo.getter();
      v83 = v82 ^ 1;
    }

    else
    {
      v83 = 0;
    }

    MultiwayViewController.updateOneToOneShutterButtonTapability(for:isMomentsAvailable:)(a1 + *(v80 + 20), v83 & 1);
    MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
    MultiwayViewController.updateHasParticipantVideo()();
    MultiwayViewController.scheduleUpdate(for:)(a1);
    specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(2);
    v84 = MultiwayViewController.captionsViewController.getter();
    if (v84)
    {
      v85 = v84;
      v86 = ConversationController.conversationDisplayName.getter();
      CaptionsViewController.callName.setter(v86, v87);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v125, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      v88 = &_s15ConversationKit11ParticipantVSgMd;
      v89 = v98;
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s15ConversationKit11ParticipantVSgMd);
      v88 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
      v89 = v125;
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, v88);
  }

  return result;
}

void closure #2 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_34();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_26_30();
  v8(v7);
  if (v4)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = OUTLINED_FUNCTION_6_4();
      v2(v9);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidRemoveRemoteParticipant(_:)()
{
  v0 = MultiwayViewController.captionsViewController.getter();
  if (v0)
  {
    v1 = v0;
    v2 = ConversationController.conversationDisplayName.getter();
    CaptionsViewController.callName.setter(v2, v3);
  }

  v5 = 513;
  return MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v5);
}

void closure #6 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        HIWORD(v9) = 513;
        MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(a1, &v9 + 6);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22[-v1];
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memmove(v24, v16, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v24) == 1)
      {

        return;
      }

      v17 = *(v16 + 56);
      if (ConversationController.supportsCameraBlur.getter())
      {
        MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter();
      }

      LocalParticipantView.supportsCameraBlur.setter();
      MultiwayViewController.updateCameraFlipButtonAvailability()();
      MultiwayViewController.updateButtonShelfMemojiButton()();
      ConversationController.supportsReactionGestures.getter();
      LocalParticipantView.supportsReactionGestures.setter();
      ConversationController.supportsStudioLight.getter();
      LocalParticipantView.supportsStudioLight.setter();
      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v18 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
      ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v5, 2u, 0, 0, 0, 0, v18 & 1, v8, 1u, 0, 1u, 1u);
      if (!MultiwayViewController.isPipped.getter())
      {
        ParticipantView.registerVideoLayers(with:)(v8);

        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_11;
      }

      swift_beginAccess();
      memmove(v23, v16, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v23) == 1)
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
        swift_endAccess();

LABEL_11:
        return;
      }

      v19 = *(v16 + 104);
      swift_endAccess();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
      }

      else if (*&v2[*(v3 + 28)])
      {

        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      else
      {
        v20 = v19;
        _s15ConversationKit11ParticipantVWOhTm_17();
        v21 = MostActiveParticipantViewController.localParticipantView.getter();
        ParticipantView.registerVideoLayers(with:)(v8);
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.updateCameraFlipButtonAvailability()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 624))(ObjectType, v2))
  {
    v4 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(__dst, v4, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) != 1)
    {
      v5 = v4[7];
      v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      v7 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
      swift_beginAccess();
      LOBYTE(v6) = *(v6 + v7);
      v8 = v5;
      LocalParticipantView.cameraFlipButtonIsAvailable.setter((v6 & 1) == 0);
    }
  }
}

uint64_t MultiwayViewController.updateButtonShelfMemojiButton()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v13, (v0 + v1), sizeof(v13));
  result = getEnumTag for TapInteraction.EventType(v13);
  if (result != 1)
  {
    v3 = v13[7];
    v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
    result = swift_beginAccess();
    if (*(v3 + v4))
    {
      memcpy(v11, __dst, sizeof(v11));
      outlined init with copy of MultiwayViewController.ViewContent(v11, &v10);
      ConversationController.supportsMemojiPicker.getter();
      v6 = v5;
      if (v13[10])
      {
        v7 = *((*MEMORY[0x1E69E7D40] & *v13[10]) + 0x90);
        v8 = v13[10];
        v9 = v7();
      }

      else
      {
        v9 = 0;
      }

      LocalParticipantView.configureWithEffectsAvailable(_:effectsSelected:)(v6 & 1, v9 & 1);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  return result;
}

void closure #8 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if ((a1 & 1) == 0)
      {
        v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
        v16 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
        v17 = ConversationController.isOneToOneModeEnabled.getter();

        if (v17)
        {
          v18 = *&v14[v15];
          v19 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
          swift_beginAccess();
          if (*(*(v18 + v19) + 16) == 1)
          {
            ConversationController.remoteOneToOneParticipant.getter();
            if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
            {
              _s15ConversationKit11ParticipantVWObTm_7();
              v14[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation] = Participant.isReceivingVideoFrames.getter() & 1;
              v21 = 513;
              MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(v7, &v21);

              _s15ConversationKit11ParticipantVWOhTm_17();
              return;
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
          }
        }

        MultiwayViewController.updateLocalParticipantState()();
        MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #9 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      MultiwayViewController.updateLocalParticipantState()();
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        if ([v10 respondsToSelector_])
        {
          [v11 updateCallParticipantLabelsViewForViewController_];
        }

        swift_unknownObjectRelease();
      }

      MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
      MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()();
      ObjectType = swift_getObjectType();
      v13 = (*(a2 + 208))(ObjectType, a2);
      MultiwayViewController.testing_callStatusDidChange(_:)(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #10 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      MultiwayViewController.conversationControllerDidUpdateLocalParticipant(_:broadcastingState:)(a1, a2, a3, a4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidUpdateLocalParticipant(_:broadcastingState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v29, (v5 + v16), sizeof(v29));
    memcpy(v30, (v5 + v16), 0xE8uLL);
    result = getEnumTag for TapInteraction.EventType(v30);
    if (result != 1)
    {
      memcpy(v28, v30, sizeof(v28));
      if ((a2 & 1) == 0)
      {
        *(v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller) = 0;
      }

      memcpy(v27, v29, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v27, v24);
      MultiwayViewController.updateMutedTalkerUI(mutedTalker:)(a2 & 1);
      v17 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v18 = *(v17 + 16);
      if (v18)
      {
        v23[1] = v17;
        v23[2] = v5;
        v19 = v17 + 32;
        do
        {
          outlined init with copy of IDSLookupManager(v19, v24);
          v21 = v25;
          v20 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          (*(v20 + 48))(a1, a2, a3, a4, v21, v20);
          __swift_destroy_boxed_opaque_existential_1(v24);
          v19 += 40;
          --v18;
        }

        while (v18);
      }

      if (MultiwayViewController.sensitiveContentController.getter())
      {
        SensitiveContentController.saveStreamSettingsForRestore(_:)(a1);
      }

      MultiwayViewController.updateLocalParticipantVideoOrientation()();
      v22 = Participant.isActiveWithVideo.getter();
      specialized EffectsHandler.updateEffectsViews(localVideoEnabled:)(v22 & 1);
      MultiwayViewController.updateFloatingLocalParticpantView()();
      MultiwayViewController.updateLocalParticipantAspectRatio()();
      MultiwayViewController.updateHasParticipantVideo()();
      MultiwayViewController.updateLocalParticipantState()();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #11 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = MultiwayViewController.sensitiveContentController.getter();

      if (v7)
      {
        SensitiveContentController.configureShield(for:analysis:)();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #12 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memcpy(v15, &v8[v9], sizeof(v15));
      memmove(v16, &v8[v9], 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v16) != 1)
      {
        v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
        swift_beginAccess();
        v11 = *&v8[v10];
        memcpy(v14, v15, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v14, &v13);
        ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(a1, v11, 1, 1);
        MultiwayViewController.showButtonShelfIfFrontCamera(_:)(1);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id MultiwayViewController.showButtonShelfIfFrontCamera(_:)(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  result = getEnumTag for TapInteraction.EventType(__dst);
  if (result != 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    result = swift_beginAccess();
    if (*(v5 + 16) < 0 && !(*(v5 + 1) << 8))
    {
      result = __dst[8];
      if (__dst[8])
      {
        v6 = 0.0;
        if (a1)
        {
          v6 = 1.0;
        }

        return [__dst[8] setAlpha_];
      }
    }
  }

  return result;
}

void closure #13 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memcpy(v18, &v12[v13], sizeof(v18));
      memmove(v19, &v12[v13], 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v19) != 1)
      {
        ObjectType = swift_getObjectType();
        v15 = *(a4 + 312);
        memcpy(v17, v18, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v17, v16);
        if (v15(ObjectType, a4))
        {
          LocalParticipantView.configureWithRecordingLocalVideo(_:)(a1 & 1);
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.conversationControllerDidUpdateLocalParticipantScreenSharing(_:)(char a1)
{
  MultiwayViewController.updateScreenSharingSnapshotView(_:)(a1);
  specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)((a1 & 1) == 0);

  MultiwayViewController.updateVideoState()();
}

uint64_t closure #15 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    *v22 = 514;
    MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v22);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v19, &_s15ConversationKit0A0_pSgMd);
  }

  v9 = v8;
  v10 = *(v8 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

  ConversationController.lookupActiveConversation()();
  if (!*(&v20 + 1))
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v19, &_s15ConversationKit0A0_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&v19, v22);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v13 = (*(v12 + 88))(v11, v12);
  v14 = specialized Set.count.getter(v13);

  if (v14 != 1)
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *(v15 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v17) + 0xE0))();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void closure #16 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24[-v3];
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    LOBYTE(v11) = ConversationController.shouldPlayToneForAVModeChange(for:)(a1);
    if ((v11 & 1) == 0)
    {
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1BC4BA940;
        _s15ConversationKit11ParticipantVWOcTm_16();
        v19 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v19);
        specialized >> prefix<A>(_:)();
        v21 = v20;
        v23 = v22;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v18 + 32) = v21;
        *(v18 + 40) = v23;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        return;
      }

LABEL_14:
      swift_once();
      goto LABEL_11;
    }
  }

  if (Participant.isActiveWithAV.getter())
  {
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v13 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v15) + 0xE0))();
LABEL_9:
    }
  }

  else
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v15 = *(v16 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v15) + 0xE8))();
      goto LABEL_9;
    }
  }
}

uint64_t closure #17 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    *v22 = 514;
    MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v22);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v19, &_s15ConversationKit0A0_pSgMd);
  }

  v9 = v8;
  v10 = *(v8 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

  ConversationController.lookupActiveConversation()();
  if (!*(&v20 + 1))
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v19, &_s15ConversationKit0A0_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&v19, v22);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v13 = (*(v12 + 88))(v11, v12);
  v14 = specialized Set.count.getter(v13);

  if (v14 != 1)
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *(v15 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v17) + 0xE8))();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t MultiwayViewController.conversationControllerDidUpdateRemoteParticipantKickableStatus(_:)(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v40 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Date();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v45, (v2 + v14), sizeof(v45));
    memcpy(v46, (v2 + v14), 0xE8uLL);
    result = getEnumTag for TapInteraction.EventType(v46);
    if (result != 1)
    {
      memcpy(v44, v46, sizeof(v44));
      v15 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v16 = *(v15 + 16);
      if (v16)
      {
        v37 = v7;
        v33 = v15;
        v17 = v15 + 32;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v18 = v39;
        v35 = (v5 + 32);
        v36 = v39 + 3;
        v34 = (v5 + 8);
        while (1)
        {
          outlined init with copy of IDSLookupManager(v17, v41);
          v20 = v42;
          v19 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          _s15ConversationKit11ParticipantVWOcTm_16();
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
            v22 = *(v21 + 48);
            outlined consume of Participant.CopresenceInfo?(*&v4[*(v21 + 64)], *&v4[*(v21 + 64) + 8]);
            v23 = v37;
            v24 = v38;
            (*v35)(v37, v4, v38);
            outlined destroy of Participant.MediaInfo(&v4[v22]);
            Date.timeIntervalSinceNow.getter();
            if (v25 <= 0.0)
            {
              Date.timeIntervalSinceNow.getter();
              v30 = v29;
              if (one-time initialization token for shared != -1)
              {
                swift_once();
              }

              v31 = (*(*static Defaults.shared + 720))();
              (*v34)(v23, v24);
              v28 = -v30 <= v31;
              v32 = type metadata accessor for Participant(0);
              v18 = v39;
              if (*(v36 + *(v32 + 24)))
              {
                v27 = v32;
LABEL_17:
                type metadata accessor for Participant(0);
                if (*(v18 + *(v27 + 28)))
                {
                  goto LABEL_11;
                }
              }
            }

            else
            {
              (*v34)(v23, v24);
              v26 = type metadata accessor for Participant(0);
              v18 = v39;
              if (*(v36 + *(v26 + 24)) == 1)
              {
                v27 = v26;
                v28 = 0;
                goto LABEL_17;
              }
            }
          }

          else
          {
            _s15ConversationKit11ParticipantVWOhTm_17();
          }

          v28 = 0;
LABEL_11:
          (*(v19 + 64))(v18, v28, v20, v19);
          __swift_destroy_boxed_opaque_existential_1(v41);
          v17 += 40;
          if (!--v16)
          {
            goto LABEL_20;
          }
        }
      }

      outlined init with copy of [CaptionSectioner.SpeakerSection]();
LABEL_20:

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #19 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      MultiwayViewController.conversationControllerConversationStateDidChange(_:)(a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.conversationControllerConversationStateDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v22 = 1;
LABEL_16:
    specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(v22);
    goto LABEL_17;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      goto LABEL_17;
    }

    MultiwayViewController.removeAllEffectsObjects()();
    v8 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v38, v8, sizeof(v38));
    Enum = getEnumTag for TapInteraction.EventType(v38);
    v10 = MEMORY[0x1E69E7D40];
    if (Enum != 1)
    {
      v11 = v8[7];
      v12 = *((*MEMORY[0x1E69E7D40] & **&v11[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView]) + 0x280);
      v13 = v11;
      v14 = v12();
      LocalParticipantView.configureWithEffectsAvailable(_:effectsSelected:)(v14 & 0x10000, 0);
    }

    memcpy(v37, v8, sizeof(v37));
    if (getEnumTag for TapInteraction.EventType(v37) != 1)
    {
      v15 = v8[10];
      if (v15)
      {
        v16 = *((*v10 & *v15) + 0x98);
        v17 = v15;
        v16(0);
      }
    }

    v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
    swift_beginAccess();
    *(v2 + v18) = 0;
    MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(0, 0);
    v19 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);
    v20 = *((*v10 & *v19) + 0xF0);
    v21 = v19;
    v20();

    v22 = 0;
    goto LABEL_16;
  }

  specialized MomentsBackedViewControllerProtocol.setupMomentsViewsIfNecessary()();
  specialized MomentsBackedViewControllerProtocol.setupFlashViewsIfNecessary()();
  v23 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v24 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v25 = *(v23 + v24);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);

    do
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      MultiwayViewController.scheduleUpdate(for:)(v7);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v29 = MultiwayViewController.call.getter();
  v30 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(v23 + v30, v38);
  v31 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  _s15ConversationKit17BroadcastingStateO4call0E6Center17deviceOrientation28shouldMaintainCameraPositionAcA4Call_p_AA0mF8Provider_pSo09CNKDeviceH0VSbtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v29, v38, *(v2 + v31), 1);
  ConversationController.broadcastingState.setter();
  MultiwayViewController.scheduleLinkEducationFirstTimeAlert()();
  MultiwayViewController.resetDidExpandIncomingCallBanner()();
LABEL_17:
  MultiwayViewController.updateLocalParticipantState()();
  MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  MultiwayViewController.updateShouldShowReactionPickerTipView()();
  MultiwayViewController.updateCornerButtonsVisibility()();
  v32 = MultiwayViewController.captionsViewController.getter();
  if (v32)
  {
    v33 = v32;
    v34 = ConversationController.conversationDisplayName.getter();
    CaptionsViewController.callName.setter(v34, v35);
  }

  if (a1 == 1)
  {
    LOBYTE(v38[0]) = 1;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v38, 0xFCu, 1);
  }
}

uint64_t MultiwayViewController.participantsMediaPrioritiesDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v43 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v59, (v2 + v17), sizeof(v59));
  memcpy(v60, (v2 + v17), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v60);
  if (result != 1)
  {
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v18 = v43;
    if (__swift_getEnumTagSinglePayload(v10, 1, v43) != 1)
    {
      v34 = &_s15ConversationKit11ParticipantVSgMd;
      v35 = v10;
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, v34);
    }

    memcpy(v55, v59, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v55, v54);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd);
    v19 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    v47 = (*(v19 + 288))(ObjectType, v19);
    v46 = (*(v19 + 296))(ObjectType, v19);
    v21 = *(a1 + 16);
    v44 = v2;
    if (v21)
    {
      v42 = v7;
      *&v54[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = *&v54[0];
      v23 = (a1 + 76);
      do
      {
        v24 = *(v23 - 11);
        v25 = *(v23 - 9);
        v49 = *(v23 - 28);
        v48 = *(v23 - 5);
        v26 = *(v23 - 3);
        if (v47)
        {
          v27 = *(v23 - 1);
        }

        else
        {
          v27 = 0.0;
        }

        if (v46)
        {
          v28 = *v23;
        }

        else
        {
          v28 = 0.0;
        }

        *&v54[0] = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        v31 = v30 + 1;
        v32 = v24;

        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
          v22 = *&v54[0];
        }

        *(v22 + 16) = v31;
        v33 = v22 + 48 * v30;
        *(v33 + 32) = v32;
        *(v33 + 40) = v25;
        *(v33 + 48) = v49;
        *(v33 + 56) = v48;
        *(v33 + 64) = v26;
        *(v33 + 72) = v27;
        *(v33 + 76) = v28;
        v23 += 12;
        --v21;
      }

      while (v21);
      v18 = v43;
      v7 = v42;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
      v31 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v31)
      {
LABEL_23:

        v34 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
        v35 = v59;
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, v34);
      }
    }

    v36 = 32;
    do
    {
      v37 = *(v22 + v36);
      v38 = *(v22 + v36 + 32);
      v54[1] = *(v22 + v36 + 16);
      v54[2] = v38;
      v54[0] = v37;
      v39 = *(v22 + v36);
      v40 = *(v22 + v36 + 16);
      v58 = *(v22 + v36 + 32);
      v56 = v39;
      v57 = v40;
      v51 = v39;
      v52 = v40;
      v53 = v58;
      outlined init with copy of ParticipantMediaPriorities(v54, v50);
      outlined init with copy of ParticipantMediaPriorities(v54, v50);
      ConversationController.participant(with:)();

      if (__swift_getEnumTagSinglePayload(v7, 1, v18) == 1)
      {
        outlined destroy of ParticipantMediaPriorities(v54);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        _s15ConversationKit11ParticipantVWObTm_7();
        specialized MostActiveParticipantsController.update(_:mediaPriorities:)();
        outlined destroy of ParticipantMediaPriorities(v54);
        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      v36 += 48;
      --v31;
    }

    while (v31);
    goto LABEL_23;
  }

  return result;
}

void closure #21 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      MultiwayViewController.participant(_:didReact:)(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.participant(_:didReact:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  if (*(a1 + *(v11 + 28)))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationKit);
    _s15ConversationKit11ParticipantVWOcTm_16();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      HIDWORD(v42) = v14;
      v16 = v15;
      v43 = swift_slowAlloc();
      v47 = v43;
      *v16 = 136315394;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      specialized >> prefix<A>(_:)();
      v18 = v17;
      v44 = a1;
      v19 = a2;
      v21 = v20;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit11ParticipantVSgMd);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, &v47);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      v45 = v19;
      v46 = a3;
      a1 = v44;

      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v47);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1BBC58000, v13, BYTE4(v42), "Remote Participant %s didReact with %s", v16, 0x16u);
      v26 = v43;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v26, -1, -1);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    return specialized MostActiveParticipantsController.markParticipantAsReacting(_:)(a1 + *(v9 + 20));
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationKit);
    _s15ConversationKit11ParticipantVWOcTm_16();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = a2;
      v32 = v31;
      v47 = v31;
      *v30 = 136315394;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      specialized >> prefix<A>(_:)();
      v34 = v33;
      v36 = v35;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit11ParticipantVSgMd);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v47);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      v45 = v44;
      v46 = a3;

      v38 = String.init<A>(reflecting:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v47);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_1BBC58000, v28, v29, "Local Participant %s didReact with %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v32, -1, -1);
      MEMORY[0x1BFB23DF0](v30, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    return MultiwayViewController.isLocalReactionActive.setter(1);
  }
}

void closure #3 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_34();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_26_30();
  v8(v7);
  if (v4)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = OUTLINED_FUNCTION_6_4();
      v2(v9);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.participantDidStopReacting(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  if (!*(a1 + *(v6 + 28)))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationKit);
    _s15ConversationKit11ParticipantVWOcTm_16();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      specialized >> prefix<A>(_:)();
      v13 = v12;
      v15 = v14;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Local Participant %s didStopReacting", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    MultiwayViewController.isLocalReactionActive.setter(0);
  }
}

void closure #14 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_23_34();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_26_30();
  v10(v9);
  if (v6)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v2(v4 & 1);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void closure #24 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
      swift_beginAccess();
      v12 = *&v10[v11];
      v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x230);
      v14 = v12;
      v15 = v13(a1, a2);

      MultiwayViewController.updateCameraFlipButtonAvailability()();
      v16 = &v10[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
      swift_beginAccess();
      memmove(v19, v16, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v19) != 1)
      {
        v17 = v16[7];
        if (ConversationController.supportsCameraBlur.getter())
        {
          MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter();
        }

        LocalParticipantView.supportsCameraBlur.setter();
      }

      MultiwayViewController.updateButtonShelfMemojiButton()();
      if (v15)
      {
        MultiwayViewController.updateZoomControls(for:)(0xFCu);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #25 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  v2 = *&Strong[v1];

  return v2;
}

void closure #26 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = MultiwayViewController.inCallControlsViewController.getter();

    if (v11)
    {
      v12 = *a3;
      v13 = OUTLINED_FUNCTION_6_0();
      v11[v12] = a1 & 1;
      a4(v13);
    }
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = v14 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_35_30();
    swift_beginAccess();
    OUTLINED_FUNCTION_142_4();
    memmove(v17, v18, v19);
    OUTLINED_FUNCTION_46_26(v22);
    if (v20)
    {
    }

    else
    {
      v21 = *(v16 + 56);

      a5(a1 & 1);
    }
  }
}

void closure #28 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_35_30();
    swift_beginAccess();
    OUTLINED_FUNCTION_142_4();
    memmove(v8, v9, v10);
    OUTLINED_FUNCTION_46_26(v13);
    if (v11)
    {
    }

    else
    {
      v12 = *(v7 + 56);

      a3(a1 & 1);
    }
  }
}

uint64_t closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if (a1)
    {
      v12 = MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter();
    }

    else
    {
      v12 = 0;
    }

    v22 = v7;
    v23 = v6;
    v24 = v3;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BC4BA940;
    v14 = v12 & 1;
    LOBYTE(aBlock[0]) = v12 & 1;
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v14;
    aBlock[4] = partial apply for closure #1 in closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_549;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v9, v5, v21);
    _Block_release(v21);

    (*(v24 + 8))(v5, v2);
    return (*(v22 + 8))(v9, v23);
  }

  return result;
}

uint64_t closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v18 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1 & 1;
    aBlock[4] = partial apply for closure #1 in closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_542;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v17 = v6;
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v18;
    MEMORY[0x1BFB215C0](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v17);
  }

  return result;
}

void closure #1 in closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, char a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_95_3(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_205_5();
    memmove(v10, v11, v12);
    OUTLINED_FUNCTION_46_26(v17);
    if (!v13)
    {
      v14 = *(v9 + 56);
      v15 = *a3;
      OUTLINED_FUNCTION_3_5();
      v14[v15] = a2 & 1;
      v16 = v14;
      a4();
    }
  }
}

void closure #33 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, Swift::Float a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memcpy(v32, &v14[v15], sizeof(v32));
      outlined init with copy of [CaptionSectioner.SpeakerSection]();

      memcpy(v33, v32, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v33) != 1)
      {
        memcpy(v34, v33, sizeof(v34));
        swift_beginAccess();
        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v17 = v16;
          v18 = *(v16 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

          v19 = type metadata accessor for Participant(0);
          v20 = &v18[OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant];
          swift_beginAccess();
          (*(v5 + 16))(v7, &v20[*(v19 + 20)], v4);
          LOBYTE(v19) = static UUID.== infix(_:_:)();
          (*(v5 + 8))(v7, v4);
          if (v19)
          {
            v21 = *(v33[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
            v22 = ParticipantView.monogramView.getter();
            ParticipantMonogramView.updateAudioVisualization(with:)(a2);

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
          }

          else
          {
            v23 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
            v24 = *(v23 + 16);
            if (v24)
            {
              v25 = v23 + 32;
              do
              {
                outlined init with copy of IDSLookupManager(v25, v29);
                v26 = v30;
                v27 = v31;
                __swift_project_boxed_opaque_existential_1(v29, v30);
                (*(v27 + 80))(a1, v26, v27, a2);
                __swift_destroy_boxed_opaque_existential_1(v29);
                v25 += 40;
                --v24;
              }

              while (v24);
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #34 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (a1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        MultiwayViewController.showMutedTalkerBanner()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.showMutedTalkerBanner()()
{
  if (MultiwayViewController.isPipped.getter())
  {
    v1 = 0;
  }

  else
  {
    v2 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memcpy(__dst, v2, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(__dst) == 1)
    {
      v1 = 1;
    }

    else
    {
      v3 = *(v2 + 6);
      v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      v1 = *(v3 + v4) - 1 < 3;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  p_superclass = (&OBJC_METACLASS____TtC15ConversationKit24InCallControlsStatusCell + 8);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136315650;
    LOBYTE(__dst[0]) = MultiwayViewController.isPipped.getter();
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v33);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = &v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memcpy(__dst, v15, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(__dst) == 1)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      swift_beginAccess();
      v17 = String.init<A>(reflecting:)();
      v16 = v18;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v33);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    p_superclass = &OBJC_METACLASS____TtC15ConversationKit24InCallControlsStatusCell.superclass;
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v33);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1BBC58000, v7, v8, "MutedTalker: isPipped:%s, inCallConversationBannerState:%s, didNotifyMutedCaller:%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v11, -1, -1);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  if (MultiwayViewController.sensitiveContentController.getter())
  {

    swift_beginAccess();
    v23 = static SensitiveContentController.shieldState ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = p_superclass[492];
  if (((v1 | *(&v24->isa + v6)) & 1) == 0 && (v23 & 1) == 0)
  {
    v25 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
    swift_beginAccess();
    v26 = *&v6[v25];
    v27 = MEMORY[0x1E69E7D40];
    v28 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x170);
    v29 = v26;
    v28();

    *(&v24->isa + v6) = 1;
    v30 = *&v6[v25];
    v31 = *((*v27 & *v30) + 0x168);
    v32 = v30;
    v31();
  }
}

void closure #20 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_34();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_26_30();
  v8(v7);
  if (v4)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = OUTLINED_FUNCTION_6_4();
      v2(v9);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.updateAudioRouteButton(for:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v10, v7, sizeof(v10));
    if (getEnumTag for TapInteraction.EventType(v10) != 1)
    {
      v8 = v7[2];
      InCallControlsViewController.updateAudioRouteButton(for:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #36 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (static Platform.current.getter() == 3)
  {
    v7 = &v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memmove(v23, v7, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v23) != 1)
    {
      v8 = [v7[1] view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;

        v14 = &v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
        v16 = *&v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
        v15 = *&v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize + 8];
        if (v16 == v11 && v15 == v13)
        {
          goto LABEL_29;
        }

        if (v16 < v15 || v11 >= v13)
        {
          if (v15 >= v16)
          {
            if ((v15 != 0.0 || v16 != 0.0) && v13 >= v11)
            {
              goto LABEL_28;
            }
          }

          else if (v16 != 0.0 || v15 != 0.0)
          {
            goto LABEL_28;
          }
        }

        memmove(v22, v7, 0xE8uLL);
        if (getEnumTag for TapInteraction.EventType(v22) != 1)
        {
          v21 = v7[6];
          MultiwayViewConstraintsController.updateLocalPreviewConstraintWhenExpanded()();
        }

LABEL_28:
        *v14 = v11;
        v14[1] = v13;
        goto LABEL_29;
      }

LABEL_32:
      __break(1u);
      return;
    }
  }

LABEL_29:
  MultiwayViewController.updatePresentationSize()();
  MultiwayViewController.needsUpdatePresentationContexts.setter(1);
}

id MultiwayViewController.updatePresentationSize()()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;

    v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
    swift_beginAccess();
    if (!*&v0[v7])
    {
      v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
      swift_beginAccess();
      MultiwayViewController.rotate(portraitRect:for:)(*&v0[v8]);
      v4 = v9;
      v6 = v10;
    }

    v11 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize];
    *v11 = v4;
    v11[1] = v6;
    v12 = MultiwayViewController.call.getter();
    [v12 setRemoteVideoPresentationSize_];

    return MultiwayViewController.updateMediaPipInfo()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #37 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      MultiwayViewController.updateVideoState()();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MultiwayViewController.updateVideoState()()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v107);
  OUTLINED_FUNCTION_150_1(v108);
  v0 = OUTLINED_FUNCTION_46_26(v108);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_111_8(v0, v1, v2, v3, v4, v5, v6, v7, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82);
    v17 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter();
    OUTLINED_FUNCTION_113_4();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = [Strong isMultiwayViewControllerShowingInMiniWindow];
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
    }

    ConversationController.updateVideoStateForExternalFactors(isShowingInMiniWindow:)(v19);
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = [objc_opt_self() supportsDisplayingFaceTimeAudioCalls];
    }

    InCallControlsViewController.videoButtonIsEnabled.setter(v20);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }
}

void closure #38 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, char a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      MultiwayViewController.conversationControllerOneToOneModeDidChange(_:_:)(a1 & 1, a2 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerOneToOneModeDidChange(_:_:)(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v26, (v3 + v11), sizeof(v26));
  memcpy(v27, (v3 + v11), sizeof(v27));
  result = getEnumTag for TapInteraction.EventType(v27);
  if (result == 1)
  {
    return result;
  }

  if ((a1 & 1) == 0)
  {
    memcpy(v25, v26, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v25, v24);
    v13 = a2 & 1;
    goto LABEL_11;
  }

  if (a2)
  {
    memcpy(v25, v26, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v25, v24);
    v13 = 1;
    goto LABEL_11;
  }

  memcpy(v25, v26, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v25, v24);
  if ((MultiwayViewController.isOnScreen.getter() & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_7:
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      MultiwayViewController.pauseUserInterface()();
      goto LABEL_8;
    }

LABEL_22:
    swift_once();
    goto LABEL_7;
  }

LABEL_8:
  v13 = 0;
LABEL_11:
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  MultiwayViewController.updateFullScreenFocus(changeSource:defocusAnimationStyle:)(v13, v14);
  if (static Platform.current.getter() == 3)
  {
    v15 = v27[7];
    ConversationController.isOneToOneModeEnabled.getter();
    v16 = LocalParticipantView.supportsRotation.setter();
    if (((*((*MEMORY[0x1E69E7D40] & **(v15 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x280))(v16) & 0x100000000) != 0)
    {
      v17 = v15 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
      swift_beginAccess();
      *(v17 + 8) = &protocol witness table for MultiwayViewController;
      swift_unknownObjectWeakAssign();
    }
  }

  v18 = MultiwayViewController.captionsViewController.getter();
  if (v18)
  {
    v19 = v18;
    v20 = ConversationController.isOneToOneModeEnabled.getter();
    CaptionsViewController.isGroupCall.setter((v20 & 1) == 0);
  }

  MultiwayViewController.updateFloatingLocalParticpantView()();
  MultiwayViewController.updateLocalParticipantAspectRatio()();
  MultiwayViewController.updateLocalParticipantState()();
  v21 = v27[6];
  v22 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
  swift_beginAccess();
  MultiwayViewController.updateViewVisibility(localParticipantState:)(*(v21 + v22));
  MultiwayViewController.updateCornerButtonsVisibility()();
  MultiwayViewController.resetCaptionsViewDragState()();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

void MultiwayViewController.conversationControllerIsTrackingActiveConversationDidChange(_:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (a1)
    {
      ConversationController.lookupActiveConversation()();
      v7 = v15;
      if (v15)
      {
        v8 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v9 = (*(v8 + 56))(v7, v8);
        __swift_destroy_boxed_opaque_existential_1(v14);
        if (v9 == 1)
        {
          v10 = MultiwayViewController.conversationControlsManager.getter();
          if (v10)
          {
            v11 = v10;
            ConversationControlsManager.showInCallHUD()();
          }
        }
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A0_pSgMd);
      }

      MultiwayViewController.playOutgoingGFTRingtoneIfNeeded()();
      MultiwayViewController.updateLocalParticipantState()();
      MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
    }

    else
    {
      MultiwayViewController.updateLocalParticipantState()();
      MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
      MultiwayViewController.testing_transitionedToInactiveState()();
    }

    MultiwayViewController.setupCallTranslationIfNeeded()();
    v12 = MultiwayViewController.conversationControlsManager.getter();
    MultiwayViewController.setupMoreMenu(_:)(v12);
  }

  else
  {
    __break(1u);
  }
}

id MultiwayViewController.conversationControllerDidUpdateHasRingingCalls(_:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if ((ConversationController.isOneToOneModeEnabled.getter() & 1) == 0)
    {
      if (a1)
      {
        MultiwayViewController.pauseUserInterface()();
      }

      else
      {
        MultiwayViewController.resumeUserInterface()();
      }
    }

    MultiwayViewController.updateLocalParticipantState()();
    return MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.conversationControllerDidUpdateWantsHoldMusic(_:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  result = ConversationController.isOneToOneModeEnabled.getter();
  if ((result & 1) == 0)
  {
    return result;
  }

  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BC4BA940;
      v11 = v8 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
      swift_beginAccess();
      v12 = *(v11 + 16);
      v16 = *v11;
      v17 = v12;
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v10 + 32) = v13;
      *(v10 + 40) = v15;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
      goto LABEL_6;
    }

LABEL_9:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:
  MultiwayViewController.updateLocalParticipantState()();
  return MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
}

void closure #42 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      MultiwayViewController.conversationControllerDidRemoveAllVisibleParticipants()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidRemoveAllVisibleParticipants()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v19, (v1 + v8), sizeof(v19));
    memcpy(v20, (v1 + v8), sizeof(v20));
    result = getEnumTag for TapInteraction.EventType(v20);
    if (result != 1)
    {
      memcpy(v18, v20, sizeof(v18));
      v9 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 32;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        do
        {
          outlined init with copy of IDSLookupManager(v11, v15);
          v12 = v16;
          v13 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          (*(v13 + 104))(v12, v13);
          __swift_destroy_boxed_opaque_existential_1(v15);
          v11 += 40;
          --v10;
        }

        while (v10);
      }

      else
      {
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
      }

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
  v9 = *(*&v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController] + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v9) + 0xF0);
  v12 = v6;
  v13 = v9;
  LOBYTE(v11) = v11();

  if (VideoMessageController.State.rawValue.getter(v11) == 0x7964616552746F6ELL && v14 == 0xE800000000000000)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_15;
    }

    MultiwayViewController.cancelVideoRecording(completion:)();
    v17 = *(*&v6[v8] + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    v18 = *((*v10 & *v17) + 0xF0);
    v19 = v17;
    LOBYTE(v18) = v18();

    if (VideoMessageController.State.rawValue.getter(v18) == 0x6F4364726F636572 && v20 == 0xEE006574656C706DLL)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v28 = [v12 navigationController];
    if (v28)
    {
      v29 = v28;
    }
  }

LABEL_15:
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #1 in closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  *(v24 + 24) = v7;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in DropdownMenuButton.primaryButton(action:text:color:);
  *(v25 + 24) = v24;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_535;
  v26 = _Block_copy(aBlock);

  [v23 performWithoutAnimation_];

  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

void MultiwayViewController.cancelVideoRecording(completion:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_55();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_205_5();
  memcpy(v3, v4, v5);
  OUTLINED_FUNCTION_46_26(v17);
  if (!v6)
  {
    v7 = *(v2 + 56);
    LocalParticipantView.endCountdown()();
  }

  if (MultiwayViewController.isPresentingEffectsBrowser.getter())
  {
    OUTLINED_FUNCTION_205_5();
    memcpy(v8, v9, v10);
    OUTLINED_FUNCTION_46_26(v16);
    if (!v6 && *(v2 + 80))
    {
      OUTLINED_FUNCTION_4_137();
      v12 = *(v11 + 152);
      v14 = v13;
      v12(0);
    }

    v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
    OUTLINED_FUNCTION_3_5();
    *(v1 + v15) = 0;
    MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(0, 0);
  }

  OUTLINED_FUNCTION_45_1();
  ConversationController.resetRecordingVideoMessage(completion:)();
}

void closure #44 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      MultiwayViewController.conversationControllerDidUpdateParticipantCameraPosition(_:cameraPosition:)(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidUpdateParticipantCameraPosition(_:cameraPosition:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v18, (v3 + v12), sizeof(v18));
    memcpy(v19, (v3 + v12), sizeof(v19));
    result = getEnumTag for TapInteraction.EventType(v19);
    if (result != 1)
    {
      memcpy(v17, v18, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v17, &v16);
      if (ConversationController.isOneToOneModeEnabled.getter())
      {
        v13 = ParticipantGridViewController.gridView.getter();
        if (v13)
        {
          v14 = v13;
          ParticipantGridView.updateVisibleCameraPosition(for:visibleCameraPosition:animated:)(a1, a2, 0);
        }

        MostActiveParticipantViewController.update(participant:visibleCameraPosition:)();
      }

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #45 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      ShouldPauseOnFirstLocalVideo = MultiwayViewController.conversationControllerShouldPauseOnFirstLocalVideoFrame()();
    }

    else
    {
      ShouldPauseOnFirstLocalVideo = 0;
    }

    return ShouldPauseOnFirstLocalVideo & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.conversationControllerShouldPauseOnFirstLocalVideoFrame()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationKit);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315906;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001BC51D150, &v20);
    *(v11 + 12) = 1024;
    v13 = MultiwayViewController.call.getter();
    v14 = [v13 isConversation];

    *(v11 + 14) = v14;
    *(v11 + 18) = 1024;
    *(v11 + 20) = (MultiwayViewController.isVisibleForStartingCamera.getter() & 1) == 0;

    *(v11 + 24) = 1024;
    *(v11 + 26) = MultiwayViewController.isFrontmostMultiway.getter() & 1;

    _os_log_impl(&dword_1BBC58000, v9, v10, "%s,\ncall.isConversation : %{BOOL}d,\n!isVisibleForStartingCamera: %{BOOL}d,\nisFrontmostMultiway: %{BOOL}d", v11, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
    MEMORY[0x1BFB23DF0](v11, -1, -1);
  }

  else
  {
  }

  v15 = MultiwayViewController.call.getter();
  v16 = [v15 isConversation];

  if (v16 && (MultiwayViewController.isVisibleForStartingCamera.getter() & 1) == 0)
  {
    v17 = MultiwayViewController.isFrontmostMultiway.getter();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

Swift::Void __swiftcall MultiwayViewController.updateParticipantGridLayoutStyle(for:)(Swift::Int a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v84);
  OUTLINED_FUNCTION_178_1(&v85);
  v2 = OUTLINED_FUNCTION_46_26(&v85);
  if (!v10)
  {
    v11 = OUTLINED_FUNCTION_111_8(v2, v3, v4, v5, v6, v7, v8, v9, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    OUTLINED_FUNCTION_217_4(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v19, static Logger.conversationKit);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v21))
    {
      v22 = OUTLINED_FUNCTION_42();
      *v22 = 134217984;
      *(v22 + 4) = a1;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_18();
    }

    LOBYTE(v30) = a1 > 3;
    ParticipantGridViewController.updateLayout(_:)(&v30);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }
}

uint64_t MultiwayViewController.conversationControllerLetMeInRequestStateDidChange(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v9 = v8 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 120);
    swift_unknownObjectRetain();
    LOBYTE(v10) = v12(ObjectType, v10);
    result = swift_unknownObjectRelease();
    if (v10)
    {
      v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(v8 + v13, v28);
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v16 = *(v9 + 8);
      v17 = *(v15 + 104);
      v18 = swift_unknownObjectRetain();
      v17(&v26, v18, v16, v14, v15);
      swift_unknownObjectRelease();
      if (v27)
      {
        outlined init with take of TapInteractionHandler(&v26, v31);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v19 = v32;
        v20 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v21 = (*(v20 + 216))(v19, v20);
        if (v21)
        {

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v23 = Strong;
            if ([Strong respondsToSelector_])
            {
              [v23 updateCallParticipantLabelsViewForViewController_];
            }

            swift_unknownObjectRelease();
          }

          MultiwayViewController.updateViewConstraints()();
          MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
        }

        v24 = v31;
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v26, &_s15ConversationKit0A0_pSgMd);
        v24 = v28;
      }

      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #48 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      HIWORD(v7) = 514;
      MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v7 + 6);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #49 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 216))(v7, v8);
    if (v9)
    {

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        MultiwayViewController.scheduleLinkEducationFirstTimeAlert()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.scheduleLinkEducationFirstTimeAlert()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  result = (*(v12 + 424))(ObjectType, v12);
  if (result)
  {
    ConversationController.lookupActiveConversation()();
    if (v39)
    {
      v30 = v2;
      v31 = v1;
      outlined init with take of TapInteractionHandler(&aBlock, v43);
      v15 = v44;
      v16 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v17 = (*(v16 + 216))(v15, v16);
      if (v17)
      {

        v18 = v44;
        v19 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        if ((*(v19 + 56))(v18, v19) == 3)
        {
          (*(v12 + 432))(0, ObjectType, v12);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v29 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v32 = *(v32 + 8);
          v20 = v8;
          v21 = v33;
          (v32)(v20, v33);
          v22 = swift_allocObject();
          swift_unknownObjectWeakInit();
          outlined init with copy of IDSLookupManager(v43, v42);
          v23 = swift_allocObject();
          *(v23 + 16) = v22;
          outlined init with take of TapInteractionHandler(v42, v23 + 24);
          v40 = partial apply for closure #1 in MultiwayViewController.scheduleLinkEducationFirstTimeAlert();
          v41 = v23;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v38 = thunk for @escaping @callee_guaranteed () -> ();
          v39 = &block_descriptor_522;
          v24 = _Block_copy(&aBlock);

          static DispatchQoS.unspecified.getter();
          *&aBlock = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v25 = v35;
          v26 = v31;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v27 = v29;
          MEMORY[0x1BFB21510](v11, v5, v25, v24);
          _Block_release(v24);

          (*(v30 + 8))(v25, v26);
          (*(v34 + 8))(v5, v36);
          (v32)(v11, v21);
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&aBlock, &_s15ConversationKit0A0_pSgMd);
    }
  }

  return result;
}

void closure #50 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
    swift_beginAccess();
    v3 = *&v1[v2];

    if (v3 == 2)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (!v4)
      {
        return;
      }

      v5 = v4;
      v6 = (v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
      swift_beginAccess();
      memmove(__dst, v6, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(__dst) == 1)
      {

        return;
      }

      v16 = v6[13];

      v17 = MostActiveParticipantViewController.flashView.getter;
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState, swift_beginAccess(), v10 = *&v8[v9], v8, v10))
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = (v11 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
      swift_beginAccess();
      memmove(__dst, v13, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(__dst) == 1)
      {
      }

      else
      {
        v14 = v13[13];

        specialized MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(MostActiveParticipantViewController.flashView.getter);
      }
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = MultiwayViewController.flashView.getter;
LABEL_14:
    specialized MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(v17);
  }
}

void closure #51 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = MultiwayViewController.captionsViewController.getter();
      if (v9)
      {
        v10 = v9;
        CaptionsViewController.updateCaptions(for:)(a1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #52 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = MultiwayViewController.captionsViewController.getter();

      if (v9)
      {
        swift_beginAccess();
        v10 = swift_unknownObjectWeakLoadStrong();
        v11 = v10;
        if (v10)
        {
          v12 = *(v10 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

          v11 = ConversationController.conversationDisplayName.getter();
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        CaptionsViewController.callName.setter(v11, v14);
      }
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = MultiwayViewController.captionsViewController.getter();

      if (v17)
      {
        v18 = a1[3];
        v19 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v18);
        v20 = (*(v19 + 48))(v18, v19);
        CaptionsViewController.groupImage.setter(v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.conversationControllerDidUpdateVideoMessagingAvailable()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 600))(ObjectType, v1))
  {

    MultiwayViewController.updateVideoMessagingAvailableForCurrentState()();
  }
}

void closure #54 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1)
{
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.videoMessaging);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Encountered an error performing a video message action: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    MultiwayViewController.showUnrecoverableAlertFromError(_:)(a1);
  }
}

void MultiwayViewController.showUnrecoverableAlertFromError(_:)(char a1)
{
  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v3 = objc_opt_self();
  v4 = [v3 conversationKit];
  v19._object = 0xE000000000000000;
  v5._object = 0x80000001BC51D050;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v19);

  v17 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v8._countAndFlagsBits, v8._object, 0, 0xE000000000000000, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v9 = [v3 conversationKit];
  v20._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000030;
  v10._object = 0x80000001BC51D080;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v20);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  v15 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v17 addAction_];

  [v2 presentViewController:v17 animated:1 completion:0];
}

void closure #55 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      HIWORD(v9) = a1 & 1;
      MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v9 + 6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #56 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14[-v1];
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = result;
      v11 = *(result + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      ConversationController.participant(with:)();

      if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
      {

        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        _s15ConversationKit11ParticipantVWObTm_7();
        v12 = &v10[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
        swift_beginAccess();
        memmove(v15, v12, 0xE8uLL);
        if (getEnumTag for TapInteraction.EventType(v15) == 1)
        {
        }

        else
        {
          v13 = v12[1];
          ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:)();
        }

        return _s15ConversationKit11ParticipantVWOhTm_17();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #57 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_278(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    specialized EffectsHandler.automation_setEffectsMode(enabled:)(a2 & 1);
  }
}

id MultiwayViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void MultiwayViewController.init(coder:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager) = 0;
  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  type metadata accessor for UUID();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView);
  OUTLINED_FUNCTION_13_82();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v12, v13);
  v14 = MEMORY[0x1E69E7CC0];
  *(v0 + v11) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow) = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags;
  *(v2 + v15) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *(v2 + v16) = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible) = 2;
  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_sidebarStateStream;
  type metadata accessor for SidebarStateStream();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  *(v2 + v17) = SidebarStateStream.init(initial:)();
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask) = 0;
  type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects) = 0;
  v22 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0;
  v23 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator;
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner) = 2;
  v24 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  _s15ConversationKit22MultiwayViewControllerC0D7ContentVSgWOi0_(v39);
  memcpy((v2 + v24), v39, 0xE8uLL);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller) = 0;
  v25 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState) = 4;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations) = 2;
  v27 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen;
  Published.init(initialValue:)();
  (*(v5 + 32))(v2 + v27, v1, v3);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner) = 0;
  v28 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler);
  *v28 = 0;
  v28[1] = 0;
  v29 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen) = 2;
  v30 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler);
  *v32 = 0;
  v32[1] = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews) = 0;
  v33 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
  *v34 = 0u;
  v34[1] = 0u;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen) = 0;
  v35 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
  *v35 = 4;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill) = v14;
  v36 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer;
  *(v2 + v36) = [objc_allocWithZone(type metadata accessor for TonePlayer()) init];
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_subscriptions) = MEMORY[0x1E69E7CD0];
  v37 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets);
  v38 = *(MEMORY[0x1E69DDCE0] + 16);
  *v37 = *MEMORY[0x1E69DDCE0];
  v37[1] = v38;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MultiwayViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer];
  if (v5)
  {
    [v5 invalidate];
  }

  OUTLINED_FUNCTION_4_137();
  v7 = *(v6 + 240);
  v9 = v8;
  v7();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_4_137();
  v11 = *(v10 + 376);
  v13 = v12;
  v11();

  v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features;
  v15 = *&v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features];
  v16 = Features.isMoreMenuEnabled.getter();

  if (v16)
  {
    v17 = MultiwayViewController.call.getter();
    if (([v17 isActive] & 1) == 0)
    {
      type metadata accessor for FTMenuItemRegistry();
      v18 = static FTMenuItemRegistry.shared.getter();
      v19 = [v17 uniqueProxyIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_254();

      v20._countAndFlagsBits = OUTLINED_FUNCTION_43_0();
      FTMenuItemRegistry.clear(for:)(v20);
    }
  }

  v21 = *&v1[v14];
  v22 = Features.buttonRemoteControlEnabled.getter();

  if (v22)
  {
    v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
    OUTLINED_FUNCTION_6_0();
    if (*&v1[v23])
    {

      DockKitAccessoryManager.stop()();
    }

    *&v1[v23] = 0;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v24, static Logger.conversationKit);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v26))
    {
      v27 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v27);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_4_4();
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v33 = OUTLINED_FUNCTION_13_12();
  *(v33 + 16) = xmmword_1BC4BA940;
  v40 = v1;
  v34 = v1;
  v35 = String.init<A>(reflecting:)();
  v37 = v36;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v33 + 32) = v35;
  *(v33 + 40) = v37;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();

  v39.receiver = v34;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, sel_dealloc);
}

Swift::Void __swiftcall MultiwayViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_218_4();
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation3URLVSg_GMd);
  OUTLINED_FUNCTION_1();
  v657 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_1();
  v656 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy10Foundation3URLVSg_GGMd);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v638 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v655 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  OUTLINED_FUNCTION_1();
  v644 = v16;
  v645 = v15;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_1();
  v643 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd);
  OUTLINED_FUNCTION_1();
  v647 = v20;
  v648 = v19;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_1();
  v646 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGAP_APtGMd);
  OUTLINED_FUNCTION_1();
  v650 = v24;
  v651 = v23;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_1();
  v649 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGAR_ARtGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v653 = v28;
  v654 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_1();
  v652 = v30;
  OUTLINED_FUNCTION_4_24();
  v31 = type metadata accessor for ShutterButton();
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v695 = (v34 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_1();
  v705 = v37;
  OUTLINED_FUNCTION_4_24();
  v710 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_1();
  v701 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  v699 = (v41 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TelephonyUI22VideoReactionPickerTipVSgMd);
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  v708 = v44;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_32();
  v707 = v46;
  v47 = OUTLINED_FUNCTION_4_24();
  v704 = type metadata accessor for Participant(v47);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  *&v698 = v49;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v703 = v51;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v717 = v53;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_32();
  v697 = v55;
  v728.receiver = v0;
  v694 = ObjectType;
  v728.super_class = ObjectType;
  objc_msgSendSuper2(&v728, sel_viewDidLoad);
  MultiwayViewController.updateAdditionalSafeAreaInsets()();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.conversationKit);
  v57 = v0;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_42();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v57;
    *v61 = v57;
    v62 = v57;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_18();
  }

  v68 = [v57 view];
  if (!v68)
  {
    goto LABEL_230;
  }

  v69 = v68;
  v70 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v71 = v57[v70];
  v641 = v8;
  v642 = v6;
  if (v71 == 1)
  {
    v72 = [objc_opt_self() clearColor];
  }

  else
  {
    if (one-time initialization token for background != -1)
    {
      swift_once();
    }

    v72 = static Colors.MultiwayViewController.background;
  }

  v73 = v72;
  v639 = v2;
  v640 = v11;
  [v69 setBackgroundColor_];

  OUTLINED_FUNCTION_20();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  MultiwayViewController.mostActiveParticipants.getter();
  v75 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v727[1] = v57[v75];
  MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
  MultiwayViewController.captionsLayoutState.getter(v727);
  v76 = v727[0];
  if (v727[0] == 3)
  {
    v76 = 0;
  }

  LOBYTE(v737[0]) = v76;
  v77 = objc_allocWithZone(type metadata accessor for ParticipantGridViewController());
  ParticipantGridViewController.init(participants:layoutStyle:isLocalMemberAuthorizedToChangeGroupMembership:captionsLayoutState:)();
  v79 = v78;
  v80 = *&v57[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  v81 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_5();
  v706 = v81;
  v82 = v697;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v83 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v713 = v79;

  Array<A>.participants(notIn:)();
  v85 = v84;

  v86 = objc_allocWithZone(type metadata accessor for ParticipantListViewController());

  v683 = v74;
  v715 = ParticipantListViewController.init(localParticipant:remoteParticipants:participantIsShownInGrid:)(v82, v85, partial apply for closure #1 in MultiwayViewController.viewDidLoad(), v74);
  v87 = &v57[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_73();
  v692 = v87;
  OUTLINED_FUNCTION_190_1(v726);
  v88 = 0;
  if (getEnumTag for TapInteraction.EventType(v726) != 1)
  {
    v89 = *(v692 + 3);
    v90 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v88 = *(v89 + v90);
    v91 = v88;
  }

  OUTLINED_FUNCTION_7_5();
  v716 = v92;
  v93 = v717;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v94 = *&v83[v80];

  v95 = MultiwayViewController.controlsMode.getter();
  v711 = v80;
  LODWORD(v714) = v95;
  LOBYTE(v737[0]) = v57[v75];
  v96 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
  v97 = ConversationController.isLinkSharingSupported.getter();
  if (v88)
  {
    v98 = &protocol witness table for ConversationHUDViewController;
  }

  else
  {
    v98 = 0;
  }

  v99 = objc_allocWithZone(type metadata accessor for InCallControlsViewController());
  v682 = v88;
  v714 = InCallControlsViewController.init(localParticipant:remoteParticipants:mode:gridLayoutStyle:representedLegacyCallIdentifier:isLocalMemberAuthorizedToChangeGroupMembership:isLinkSharingSupported:menuHostViewController:)(v93, v94, v714, v737, 0, 0, v96 & 1, v97 & 1, v88, v98);
  v717 = v83;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v101 = *&v57[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults];
  v100 = *&v57[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];

  swift_unknownObjectRetain();
  MultiwayViewController.shouldShowActionTypePhotoCapture.getter();
  MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
  objc_allocWithZone(type metadata accessor for MostActiveParticipantViewController());
  swift_unknownObjectRetain();
  v102 = OUTLINED_FUNCTION_2_40();
  v690 = v101;
  v691 = v100;
  v689 = MostActiveParticipantViewController.init(remoteParticipants:localParticipant:defaults:shouldShowActionTypePhotoCapture:isLocalMemberAuthorizedToChangeGroupMembership:)(v102, v103, v101, v100, v104, v105);
  v106 = objc_allocWithZone(type metadata accessor for EffectsBrowserContainerViewController());
  v107 = v57;
  v702 = specialized EffectsBrowserContainerViewController.init(delegate:)(v107, v106);
  v108 = [v702 view];
  if (!v108)
  {
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v109 = v108;
  [v108 setAlpha_];

  ConversationController.conversationDisplayName.getter();
  v111 = v110;
  ConversationController.lookupActiveConversation()();
  v112 = v738;
  if (v738)
  {
    v113 = v739;
    __swift_project_boxed_opaque_existential_1(v737, v738);
    v112 = (*(v113 + 48))(v112, v113);
    __swift_destroy_boxed_opaque_existential_1(v737);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v737, &_s15ConversationKit0A0_pSgMd);
  }

  ConversationController.isOneToOneModeEnabled.getter();
  v114 = static Platform.current.getter() != 3;
  MultiwayViewController.layoutIdiom.getter(v737);
  LOBYTE(v734) = v737[0];
  v115 = objc_allocWithZone(type metadata accessor for CaptionsViewController());
  v637 = v691;
  v116 = OUTLINED_FUNCTION_33_0();
  v712 = CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(v116, v117, v111, v112, v118, v114, v119, v690, v637);
  v120 = *&v107[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags];
  v121 = [v120 reactionsEnabled];
  v700 = v120;
  if (v121)
  {
    v122 = TUPreferredFaceTimeBundleIdentifier();
    if (!v122)
    {
      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = MEMORY[0x1BFB209B0](v123);
    }

    OUTLINED_FUNCTION_208();
    IsEffectSupportedForBundleID = AVControlCenterVideoEffectsModuleIsEffectSupportedForBundleID();

    v125 = v711;
    v126 = v710;
    if (IsEffectSupportedForBundleID)
    {
      OUTLINED_FUNCTION_20();
      v127 = swift_allocObject();
      OUTLINED_FUNCTION_278(v127);
      swift_unknownObjectWeakInit();
      v128 = objc_allocWithZone(type metadata accessor for VideoReactionPickerViewController(0));
      v129 = OUTLINED_FUNCTION_107_4();
      v131 = VideoReactionPickerViewController.init(onReaction:)(v129, v130);
      OUTLINED_FUNCTION_3_52();
      (*(v132 + 128))(0);
      VideoReactionPickerTip.init()();
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v126);
      v136 = v107;
      OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_153_3();
      outlined assign with take of AttributedString?();
      swift_endAccess();
      v137 = v708;
      OUTLINED_FUNCTION_153_3();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v138 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v138, v139, v126);
      v709 = v131;
      if (v140)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v137, &_s11TelephonyUI22VideoReactionPickerTipVSgMd);
        v149 = 0;
      }

      else
      {
        v141 = v701;
        v142 = v699;
        v143 = OUTLINED_FUNCTION_138_3();
        v144(v143);
        v738 = v126;
        OUTLINED_FUNCTION_18_63();
        v739 = lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v145, v146);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v737);
        v141[2](boxed_opaque_existential_1, v142, v126);
        v148 = objc_allocWithZone(type metadata accessor for TipUIView());
        v149 = TipUIView.init(_:arrowEdge:actionHandler:)();
        (v141[1])(v142, v126);
      }

      v107 = v136;
    }

    else
    {
      v149 = 0;
      v709 = 0;
    }
  }

  else
  {
    v149 = 0;
    v709 = 0;
    v125 = v711;
  }

  v701 = v149;
  v150 = MultiwayViewController.setUpConversationControlsManagerIfNeeded()();
  v151 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  if (v150)
  {
    v152 = v150;
    v153 = v107;
    v154 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_3_52();
    v156 = *(v155 + 1120);
    v157 = v152;
    v158 = v125;
    v159 = v156(v125);
    (*((*v154 & *v157) + 0x488))(&v734, v159);
    if (v736)
    {
      outlined init with take of TapInteractionHandler(&v734, v737);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v160 = v153;
      if (Features.isMoreMenuEnabled.getter())
      {
        OUTLINED_FUNCTION_20();
        v161 = swift_allocObject();
        OUTLINED_FUNCTION_278(v161);
        swift_unknownObjectWeakInit();
        __swift_mutable_project_boxed_opaque_existential_1(v737, v738);
        v162 = OUTLINED_FUNCTION_107_4();
        v163(v162);
        OUTLINED_FUNCTION_20();
        v164 = swift_allocObject();
        OUTLINED_FUNCTION_278(v164);
        swift_unknownObjectWeakInit();
        __swift_mutable_project_boxed_opaque_existential_1(v737, v738);
        v165 = OUTLINED_FUNCTION_107_4();
        v166(v165);
        OUTLINED_FUNCTION_20();
        v167 = swift_allocObject();
        OUTLINED_FUNCTION_278(v167);
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_268_2();
        OUTLINED_FUNCTION_107_4();
        OUTLINED_FUNCTION_97_0();
        v168();
      }

      v151 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
      if (Features.isICUIRedesignEnabled.getter())
      {
        MultiwayViewController.isOnScreenPublisher.getter();
        OUTLINED_FUNCTION_268_2();
        OUTLINED_FUNCTION_158();
        v169();
      }

      outlined init with copy of IDSLookupManager(v737, &v734);
      v170 = *&v160[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_sidebarStateStream];
      v171 = objc_allocWithZone(type metadata accessor for CallControlsViewController());
      v172 = v160;
      v173 = v157;
      v174 = v715;

      v175 = specialized CallControlsViewController.init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(v172, v173, v174, &v734, v170, v171);
      v176 = v160;
      v177 = v175;
      __swift_destroy_boxed_opaque_existential_1(v737);
      v178 = &protocol witness table for CallControlsViewController;
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v734, &_s15ConversationKit19CallControlsService_pSgMd);
      v177 = 0;
      v178 = 0;
      v176 = v153;
      v151 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
    }

    v716 = v177;
    v684 = v178;
    v180 = v157;
    MultiwayViewController.setupMoreMenu(_:)(v152);

    v107 = v176;
  }

  else
  {
    v179 = MultiwayViewController.conversationControlsManager.getter();
    v180 = v179;
    MultiwayViewController.setupMoreMenu(_:)(v179);

    if (!v179)
    {
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

    v684 = 0;
    v716 = 0;
  }

  v181 = *&v107[v151[203]];
  OUTLINED_FUNCTION_20();
  v182 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v183 = objc_allocWithZone(type metadata accessor for InCallBannerHostViewController());
  OUTLINED_FUNCTION_288();

  v184 = v180;
  v185 = InCallBannerHostViewController.init(controlsManager:sidebarStateStream:shutterButtonDodging:)(v184, v181, partial apply for closure #6 in MultiwayViewController.viewDidLoad(), v182);
  v186 = objc_allocWithZone(type metadata accessor for CallDetailsCoordinator());
  v187 = v107;
  v681 = v184;
  v188 = specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(v187, v681, v187, v186);
  v189 = *&v187[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator];
  *&v187[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator] = v188;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16UIViewControllerCSgGMd);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1BC4CD550;
  v191 = v715;
  v192 = v713;
  *(v190 + 32) = v715;
  *(v190 + 40) = v192;
  v193 = v714;
  v194 = v702;
  *(v190 + 48) = v714;
  *(v190 + 56) = v194;
  v195 = MultiwayViewController.effectsViewController.getter();
  v196 = v716;
  *(v190 + 64) = v195;
  *(v190 + 72) = v196;
  v197 = v712;
  *(v190 + 80) = v185;
  *(v190 + 88) = v197;
  v198 = v709;
  *(v190 + 96) = v709;
  v688 = v198;
  v199 = v191;
  v200 = v192;
  v201 = v193;
  v202 = v185;
  v203 = v197;
  v714 = v199;
  v204 = v200;
  v205 = v187;
  v713 = v204;
  v708 = v201;
  v712 = v202;
  v710 = v203;
  v707 = v702;
  v715 = v196;
  v206 = 32;
  v717 = v187;
  do
  {
    v207 = *(v190 + v206);
    if (v207)
    {
      v208 = v207;
      [v205 addChildViewController_];
      v209 = [v208 view];
      if (!v209)
      {
        goto LABEL_228;
      }

      v210 = v209;
      [v209 setTranslatesAutoresizingMaskIntoConstraints_];

      if (!OUTLINED_FUNCTION_184_1())
      {
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
        goto LABEL_231;
      }

      OUTLINED_FUNCTION_210_2();
      v212 = [v208 v211];
      if (!v212)
      {
        goto LABEL_227;
      }

      v213 = v212;
      [v210 addSubview_];

      [v208 didMoveToParentViewController_];
      if (v716)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
        v214 = v715;
        v215 = static NSObject.== infix(_:_:)();

        v205 = v717;
      }

      else
      {
        v215 = 0;
      }

      if ((MultiwayViewController.wantsStandardControls.getter() & 1) == 0)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
        if ((static NSObject.== infix(_:_:)() & 1) == 0 && (static NSObject.== infix(_:_:)() & 1) == 0 && ((static NSObject.== infix(_:_:)() | v215) & 1) == 0)
        {
          v216 = [v208 view];
          if (!v216)
          {
            goto LABEL_229;
          }

          v217 = v216;
          [v216 setHidden_];
        }
      }
    }

    v206 += 8;
  }

  while (v206 != 104);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v218 = OUTLINED_FUNCTION_184_1();
  if (!v218)
  {
    goto LABEL_232;
  }

  v219 = v205;
  v220 = v218;
  MultiwayViewController.dimmingLayer.getter(&OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer, closure #1 in MultiwayViewController.dimmingLayer.getter);
  OUTLINED_FUNCTION_210_2();
  v222 = [v713 v221];
  v223 = v709;
  v224 = v714;
  if (!v222)
  {
    goto LABEL_233;
  }

  v225 = v222;
  OUTLINED_FUNCTION_153_3();
  [v226 v227];

  v228 = *&v219[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer];
  v229 = OUTLINED_FUNCTION_282_1();
  if (!v229)
  {
    goto LABEL_234;
  }

  v230 = v229;
  v744.top = OUTLINED_FUNCTION_35();
  UIView.addConstraintsToFill(_:insets:)(v231, v744);

  v232 = Features.isICUIRedesignEnabled.getter();
  v233 = v716;
  if ((v232 & 1) == 0 && [v700 videoCallTranslationEnabled])
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v234 = VideoCallTranslationController.hudViewModel.getter();
    CallTranslationHUDViewModel.createTranslationPresentationViewController()(v235);
    OUTLINED_FUNCTION_6_4();

    v236 = v717;
    [v717 addChildViewController_];
    v237 = OUTLINED_FUNCTION_50_3();
    if (!v237)
    {
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v238 = v237;
    [v237 setTranslatesAutoresizingMaskIntoConstraints_];

    v239 = [v236 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
    if (!v239)
    {
      goto LABEL_269;
    }

    v240 = v239;
    v241 = OUTLINED_FUNCTION_50_3();
    if (!v241)
    {
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

    v242 = v241;
    [v240 addSubview_];

    LODWORD(v242) = static Platform.current.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v243 = swift_allocObject();
    *(v243 + 16) = xmmword_1BC4BC370;
    v244 = OUTLINED_FUNCTION_3_64();
    v245 = v244;
    if (v242 == 1)
    {
      if (!v244)
      {
        goto LABEL_274;
      }

      v246 = [v244 topAnchor];

      if (!OUTLINED_FUNCTION_233_4())
      {
LABEL_276:
        __break(1u);
        goto LABEL_277;
      }

      OUTLINED_FUNCTION_259_0();
      v249 = [v247 v248];

      v250 = [v249 topAnchor];
      v252 = OUTLINED_FUNCTION_224_2(v251, sel_constraintEqualToAnchor_constant_);

      *(v243 + 32) = v252;
      v253 = OUTLINED_FUNCTION_4_1();
      if (!v253)
      {
        goto LABEL_278;
      }

      v254 = v253;
      v255 = [v253 leadingAnchor];

      if (!OUTLINED_FUNCTION_233_4())
      {
LABEL_280:
        __break(1u);
        goto LABEL_281;
      }

      OUTLINED_FUNCTION_259_0();
      v258 = [v256 v257];

      v259 = [v258 leadingAnchor];
      v261 = OUTLINED_FUNCTION_224_2(v260, sel_constraintEqualToAnchor_constant_);

      *(v243 + 40) = v261;
      v262 = OUTLINED_FUNCTION_4_1();
      if (!v262)
      {
        goto LABEL_282;
      }

      v263 = v262;
      v264 = objc_opt_self();
      v265 = [v263 widthAnchor];

      v266 = [v265 constraintEqualToConstant_];
      *(v243 + 48) = v266;
    }

    else
    {
      if (!v244)
      {
        goto LABEL_275;
      }

      v267 = [v244 topAnchor];

      v268 = [v712 view];
      if (!v268)
      {
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
        goto LABEL_280;
      }

      v269 = v268;
      v270 = [v268 bottomAnchor];

      v271 = OUTLINED_FUNCTION_138_3();
      v273 = [v271 v272];

      *(v243 + 32) = v273;
      v274 = OUTLINED_FUNCTION_4_1();
      if (!v274)
      {
        goto LABEL_279;
      }

      v275 = v274;
      v276 = [v274 leadingAnchor];

      if (!OUTLINED_FUNCTION_233_4())
      {
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
        goto LABEL_284;
      }

      OUTLINED_FUNCTION_259_0();
      v279 = [v277 v278];

      v280 = [v279 leadingAnchor];
      v282 = OUTLINED_FUNCTION_224_2(v281, sel_constraintEqualToAnchor_constant_);

      *(v243 + 40) = v282;
      v283 = OUTLINED_FUNCTION_4_1();
      if (!v283)
      {
        goto LABEL_283;
      }

      v264 = v283;
      v266 = [v283 trailingAnchor];

      v284 = OUTLINED_FUNCTION_233_4();
      if (!v284)
      {
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v285 = v284;
      objc_opt_self();
      OUTLINED_FUNCTION_259_0();
      v287 = [v285 v286];

      v288 = [v287 trailingAnchor];
      v289 = OUTLINED_FUNCTION_138_3();
      v291 = [v289 v290];

      *(v243 + 48) = v291;
      v224 = v714;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    OUTLINED_FUNCTION_108_0();
    Array._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_265_2();

    [v264 activateConstraints_];

    v223 = v709;
    v233 = v716;
  }

  v292 = MultiwayViewController.wantsStandardControls.getter();
  v293 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_requiresControlsHidden;
  v294 = v712;
  OUTLINED_FUNCTION_3_5();
  v294[v293] = (v292 & 1) == 0;
  InCallBannerHostViewController.hideOrShowRootView()();
  if (v233)
  {
    v295 = swift_getObjectType();
    v684[14]((v292 & 1) == 0, v295);
  }

  v296 = &v224[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantsViewControllerDelegate];
  OUTLINED_FUNCTION_73();
  *(v296 + 1) = &protocol witness table for MultiwayViewController;
  v297 = v717;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_108_5(&protocol witness table for MultiwayViewController);
  v298 = &v713[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate];
  OUTLINED_FUNCTION_73();
  *(v298 + 1) = &protocol witness table for MultiwayViewController;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_108_5(&protocol witness table for MultiwayViewController);
  v299 = v708;
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_108_5(&protocol witness table for MultiwayViewController);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_108_5(&protocol witness table for MultiwayViewController);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_108_5(&protocol witness table for MultiwayViewController);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_108_5(&protocol witness table for MultiwayViewController);
  MultiwayViewController.localVideoProvider.getter();
  OUTLINED_FUNCTION_61_13();
  v300 = OUTLINED_FUNCTION_2_14();
  LOBYTE(v298) = v301(v300);
  v302 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
  OUTLINED_FUNCTION_3_5();
  v299[v302] = v298 & 1;
  InCallControlsViewController.cinematicFramingIsEnabled.didset();
  __swift_destroy_boxed_opaque_existential_1(v737);
  v303 = MultiwayViewController.participantGridState.getter();
  v304 = v705;
  ConversationController.remoteOneToOneParticipant.getter();
  v305 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v305, v306, v704);
  LODWORD(v686) = v303;
  if (v140)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v304, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_1_184();
    v307 = v703;
    _s15ConversationKit11ParticipantVWObTm_7();
    if (!v303)
    {
      ParticipantGridViewController.fullScreenFocus(on:)(v307, v308, v309, v310, v311, v312, v313, v314, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649);
    }

    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  v315 = static Platform.current.getter();
  v316 = v224;
  v317 = ParticipantListViewController.participantCount.getter();
  v318 = v297;
  if (ConversationController.supportsCameraBlur.getter())
  {
    v319 = MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter();
  }

  else
  {
    v319 = 0;
  }

  v320 = v223 != 0;
  v321 = ConversationController.supportsReactionGestures.getter();
  v322 = ConversationController.supportsStudioLight.getter();
  ConversationController.supportsMemojiPicker.getter();
  v324 = v323;
  v325 = objc_allocWithZone(type metadata accessor for LocalParticipantView());
  v326 = LocalParticipantView.init(isInRoster:supportsRotation:supportsCameraBlur:supportsReactions:supportsReactionGestures:supportsStudioLight:supportsCameraFlip:supportsMemojiPicker:)(v317 > 0, 0, v319 & 1, v320, v321 & 1, v322 & 1, v315 < 2u, v324 & 1);
  MultiwayViewController.updateVideoMessagingAvailableForCurrentState()();
  MultiwayViewController.localVideoProvider.getter();
  OUTLINED_FUNCTION_61_13();
  v327 = OUTLINED_FUNCTION_2_14();
  v328(v327);
  LocalParticipantView.cinematicFramingIsEnabled.setter();
  __swift_destroy_boxed_opaque_existential_1(v737);
  MultiwayViewController.localVideoProvider.getter();
  OUTLINED_FUNCTION_61_13();
  v329 = OUTLINED_FUNCTION_2_14();
  v330(v329);
  LocalParticipantView.reactionEffectGestureIsEnabled.setter();
  __swift_destroy_boxed_opaque_existential_1(v737);
  MultiwayViewController.localVideoProvider.getter();
  OUTLINED_FUNCTION_61_13();
  v331 = OUTLINED_FUNCTION_2_14();
  v332(v331);
  LocalParticipantView.studioLightIsEnabled.setter();
  __swift_destroy_boxed_opaque_existential_1(v737);
  v333 = &v326[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate];
  OUTLINED_FUNCTION_73();
  *(v333 + 1) = &protocol witness table for MultiwayViewController;
  swift_unknownObjectWeakAssign();
  v334 = [v707 view];
  if (v334)
  {
    v333 = v334;

    v335 = [v318 view];
    if (!v335)
    {
      goto LABEL_243;
    }

    v336 = v335;
    [v335 insertSubview:v326 belowSubview:v333];
    v337 = v316;
    v338 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
  }

  else
  {
    if (![v318 view])
    {
      goto LABEL_263;
    }

    OUTLINED_FUNCTION_210_2();
    v339 = v708;
    v336 = [v708 v340];

    v338 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
    if (!v336)
    {
      goto LABEL_264;
    }

    v337 = v316;
    [v333 insertSubview:v326 belowSubview:v336];
  }

  v341 = v717;
  if ((MultiwayViewController.wantsStandardControls.getter() & 1) == 0)
  {
    v342 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
    OUTLINED_FUNCTION_3_5();
    v326[v342] = 1;
    v341 = v717;
    LocalParticipantView.requiresControlsHidden.didset();
  }

  v343 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v344 = *&v326[v343];
  if (v344)
  {
    v345 = v344;
    [v341 addChildViewController_];
    v346 = OUTLINED_FUNCTION_50_3();
    if (!v346)
    {
      goto LABEL_244;
    }

    v347 = v346;
    [v346 setTranslatesAutoresizingMaskIntoConstraints_];

    v348 = OUTLINED_FUNCTION_50_3();
    if (!v348)
    {
      goto LABEL_245;
    }

    v349 = [objc_opt_self() clearColor];
    [v348 setBackgroundColor_];

    v350 = [v345 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
    if (!v350)
    {
      goto LABEL_246;
    }

    [v326 addSubview_];

    v341 = v717;
    [v345 didMoveToParentViewController_];
    v704 = OUTLINED_FUNCTION_50_3();
  }

  else
  {
    v704 = 0;
  }

  v351 = [v341 view];
  if (!v351)
  {
    goto LABEL_235;
  }

  v352 = v351;
  v353 = MultiwayViewController.dimmingLayer.getter(&OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView, closure #1 in MultiwayViewController.mePipDimmingBackgroundView.getter);
  [v352 addSubview_];

  v354 = [v341 view];
  if (!v354)
  {
    goto LABEL_236;
  }

  v355 = v354;
  v356 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView;
  [v354 insertSubview:*&v341[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView] belowSubview:v326];

  v357 = *&v341[v356];
  OUTLINED_FUNCTION_210_2();
  v359 = [v341 v358];
  if (!v359)
  {
    goto LABEL_237;
  }

  v360 = v359;
  v745.top = OUTLINED_FUNCTION_35();
  UIView.addConstraintsToFill(_:insets:)(v361, v745);

  v362 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_delegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v364 = v341;
  if (Strong)
  {
    v365 = [Strong callParticipantLabelsViewForViewController_];
    swift_unknownObjectRelease();
    if (v365)
    {
      v366 = OUTLINED_FUNCTION_184_1();
      if (!v366)
      {
        goto LABEL_260;
      }

      v367 = v366;
      [v366 addSubview_];
    }
  }

  else
  {
    v365 = 0;
  }

  v368 = swift_unknownObjectWeakLoadStrong();
  if (v368 && (v369 = [v368 bottomControlsViewForViewController_], swift_unknownObjectRelease(), v369))
  {
    [v369 setTranslatesAutoresizingMaskIntoConstraints_];
    v370 = OUTLINED_FUNCTION_184_1();
    if (!v370)
    {
      goto LABEL_261;
    }

    v371 = v370;
    v700 = v369;
    [v370 addSubview_];
  }

  else
  {
    v700 = 0;
  }

  v372 = ParticipantListViewController.participantCount.getter();
  MultiwayViewController.createCornerButtonsViews(listViewControllerParticipantCount:)(v372);
  v699 = v375;
  v680 = v376;
  v687 = v365;
  v703 = v374;
  v705 = v373;
  if (v374)
  {
    v377 = v374;

    v378 = OUTLINED_FUNCTION_50_3();
    if (!v378)
    {
      goto LABEL_247;
    }

    v379 = v378;
    [v378 addSubview_];
  }

  else
  {
    v380 = v337;
    if (v373)
    {
      v381 = v705;
      v382 = OUTLINED_FUNCTION_184_1();
      if (!v382)
      {
        goto LABEL_271;
      }

      v383 = v382;
      v380 = [v337 view];

      if (!v380)
      {
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
        goto LABEL_276;
      }

      OUTLINED_FUNCTION_153_3();
      [v384 v385];
    }

    v386 = OUTLINED_FUNCTION_184_1();
    if (!v386)
    {
      goto LABEL_265;
    }

    v379 = v386;
    v377 = v705;
    if (v705)
    {
      v387 = v705;
    }

    else
    {
      v388 = [v337 view];
      if (!v388)
      {
        goto LABEL_273;
      }

      v377 = v388;
      v387 = 0;
    }

    v389 = v387;
    [v379 insertSubview:v699 aboveSubview:v377];
  }

  specialized MomentsBackedViewControllerProtocol.setupMomentsViewsIfNecessary()();
  specialized MomentsBackedViewControllerProtocol.setupFlashViewsIfNecessary()();
  v679 = v362;
  v390 = swift_unknownObjectWeakLoadStrong();
  if (v390)
  {
    v362 = v390;
    if ([v390 respondsToSelector_])
    {
      v391 = [v362 customOverrideOneToOneShutterButtonForViewController_];
      swift_unknownObjectRelease();
      v392 = v391;
      if (v391)
      {
        goto LABEL_148;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (MultiwayViewController.wantsStandardControls.getter())
  {
    v393 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    v394 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(0);
    [v393 setImage:v394 forState:0];
    v392 = v393;
  }

  else
  {
    v392 = 0;
  }

LABEL_148:
  if (v338[381] != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v395 = Features.isICUIRedesignEnabled.getter();
  v696 = v326;
  if ((v395 & 1) == 0)
  {
    goto LABEL_163;
  }

  if (!_UISolariumEnabled())
  {
    goto LABEL_163;
  }

  v396 = v717;
  if ((MultiwayViewController.wantsStandardControls.getter() & 1) == 0)
  {
    goto LABEL_163;
  }

  ShutterButton.init()();
  v397 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI27LockScreenHostingControllerCyAA13ShutterButtonVGMd));
  OUTLINED_FUNCTION_182();
  v398 = LockScreenHostingController.init(rootView:)();
  OUTLINED_FUNCTION_210_2();
  v401 = [v399 v400];
  if (!v401)
  {
    goto LABEL_285;
  }

  v402 = v401;
  v403 = [objc_opt_self() clearColor];
  [v402 setBackgroundColor_];

  v404 = OUTLINED_FUNCTION_4_1();
  if (!v404)
  {
    goto LABEL_286;
  }

  v405 = v404;
  [v404 setTranslatesAutoresizingMaskIntoConstraints_];

  v406 = OUTLINED_FUNCTION_4_1();
  v407 = v704;
  if (!v406)
  {
    goto LABEL_287;
  }

  v408 = v406;
  [v406 setUserInteractionEnabled_];

  v409 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v410 = v703;
  if (!v409)
  {
    v587 = v337;

    v566 = v710;

LABEL_224:
    OUTLINED_FUNCTION_216_3();
    return;
  }

  v695 = v409;
  v362 = v409;
  [v362 setTranslatesAutoresizingMaskIntoConstraints_];
  v411 = OUTLINED_FUNCTION_276();
  if (!v411)
  {
    goto LABEL_288;
  }

  v412 = v411;
  [v362 addSubview_];

  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000013, 0x80000001BC4F1AF0, v362);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  OUTLINED_FUNCTION_77_0();
  v413 = swift_allocObject();
  *(v413 + 16) = xmmword_1BC4BE4A0;
  v414 = [v362 widthAnchor];
  v415 = [v414 constraintEqualToConstant_];

  *(v413 + 32) = v415;
  v416 = [v362 heightAnchor];
  v417 = [v416 constraintEqualToConstant_];

  *(v413 + 40) = v417;
  v418 = OUTLINED_FUNCTION_276();
  if (!v418)
  {
    goto LABEL_289;
  }

  v419 = v418;
  v420 = [v418 leadingAnchor];

  v421 = [v362 leadingAnchor];
  v422 = OUTLINED_FUNCTION_221_2();

  *(v413 + 48) = v422;
  v423 = OUTLINED_FUNCTION_276();
  if (!v423)
  {
    goto LABEL_290;
  }

  v424 = v423;
  v425 = [v423 trailingAnchor];

  v426 = [v362 trailingAnchor];
  v427 = OUTLINED_FUNCTION_221_2();

  *(v413 + 56) = v427;
  v428 = OUTLINED_FUNCTION_276();
  if (v428)
  {
    v429 = v428;
    v430 = [v428 topAnchor];

    v431 = [v362 topAnchor];
    v432 = OUTLINED_FUNCTION_221_2();

    *(v413 + 64) = v432;
    v433 = OUTLINED_FUNCTION_276();

    if (!v433)
    {
      goto LABEL_292;
    }

    objc_opt_self();
    v434 = [v433 bottomAnchor];

    v435 = [v362 bottomAnchor];
    v436 = [v434 constraintEqualToAnchor_];

    *(v413 + 72) = v436;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v438 = OUTLINED_FUNCTION_138_3();
    [v438 v439];

    v392 = v695;
    v337 = v714;
LABEL_163:
    if (v392)
    {
      v362 = v392;
      [v362 setTranslatesAutoresizingMaskIntoConstraints_];
      v440 = Features.isICUIRedesignEnabled.getter();
      v441 = v717;
      if ((v440 & 1) == 0)
      {
        if (one-time initialization token for shutterButtonEnabled != -1)
        {
          swift_once();
        }

        [v362 setTintColor_];
        v442 = v362;
        [v442 setContentVerticalAlignment_];
        [v442 setContentHorizontalAlignment_];
      }

      v738 = v694;
      v737[0] = v441;
      v441;
      UIButton.add(target:action:)(v737, sel_didTapOneToOneShutterButton);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v737, &_sypSgMd);
      v443 = OUTLINED_FUNCTION_184_1();
      if (!v443)
      {
        goto LABEL_248;
      }

      v444 = v443;
      [v443 addSubview_];
    }

    v694 = [objc_allocWithZone(type metadata accessor for ParticipantAlertView()) init];
    v695 = v392;
    if (v694)
    {
      v445 = v337;
      v446 = v694;
      [v446 setHidden_];
      [v446 setAlpha_];
      v447 = v717;
      v448 = [v717 view];
      if (!v448)
      {
        goto LABEL_249;
      }

      v449 = v448;
      [v448 addSubview_];

      LODWORD(v450) = 1148846080;
      [v446 setContentHuggingPriority:0 forAxis:v450];
      LODWORD(v451) = 1148846080;
      [v446 setContentCompressionResistancePriority:0 forAxis:v451];
      [v446 setTranslatesAutoresizingMaskIntoConstraints_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v452 = swift_allocObject();
      *(v452 + 16) = xmmword_1BC4BA7F0;
      v453 = [v446 topAnchor];
      v454 = OUTLINED_FUNCTION_230_3();
      if (!v454)
      {
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      v455 = v454;
      v456 = [v454 topAnchor];

      v457 = OUTLINED_FUNCTION_138_3();
      v459 = [v457 v458];

      *(v452 + 32) = v459;
      v460 = [v446 bottomAnchor];
      v461 = OUTLINED_FUNCTION_230_3();
      if (!v461)
      {
        goto LABEL_251;
      }

      v462 = v461;
      v463 = [v461 bottomAnchor];

      v464 = OUTLINED_FUNCTION_138_3();
      v466 = [v464 v465];

      *(v452 + 40) = v466;
      v467 = [v446 widthAnchor];
      v468 = OUTLINED_FUNCTION_230_3();
      if (!v468)
      {
        goto LABEL_252;
      }

      v469 = v468;
      v470 = [v468 widthAnchor];

      v471 = OUTLINED_FUNCTION_138_3();
      v473 = [v471 v472];

      *(v452 + 48) = v473;
      v474 = [v446 centerXAnchor];

      v475 = [v447 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
      if (!v475)
      {
        goto LABEL_253;
      }

      v476 = v475;
      v362 = objc_opt_self();
      v477 = [v476 centerXAnchor];

      v478 = [v474 constraintEqualToAnchor_];
      *(v452 + 56) = v478;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      OUTLINED_FUNCTION_108_0();
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_265_2();

      [v362 activateConstraints_];

      v337 = v445;
      v392 = v695;
    }

    if (v701 && v717[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState] == 1)
    {
      v362 = v701;
      [v362 setTranslatesAutoresizingMaskIntoConstraints_];
      v479 = OUTLINED_FUNCTION_50_3();
      if (!v479)
      {
        goto LABEL_266;
      }

      v480 = v479;
      [v479 addSubview_];

      v481 = OUTLINED_FUNCTION_50_3();
      if (!v481)
      {
        goto LABEL_267;
      }

      v482 = v481;
      [v481 bringSubviewToFront_];
    }

    if (MultiwayViewController.sensitiveContentController.getter())
    {
      SensitiveContentController.shield.getter();
      OUTLINED_FUNCTION_288();
    }

    else
    {
      v362 = 0;
    }

    v483 = ParticipantListViewController.participantCount.getter() > 0;
    v484 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_isDismissed;
    v485 = v712;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v486 = v485[v484];
    MultiwayViewController.layoutIdiom.getter(v737);
    LOBYTE(v734) = v737[0];
    v487 = OUTLINED_FUNCTION_50_3();
    if (v487)
    {
      v685 = v487;
      v488 = v713;
      v489 = [v713 view];

      v678 = v489;
      if (!v489)
      {
        goto LABEL_239;
      }

      v490 = v392;
      v741[0] = (v486 & 1) == 0;
      v693 = v711;
      MultiwayViewController.ConversationSnapshot.init(of:)(v693, v729);
      v491 = v717;
      LODWORD(v676) = MultiwayViewController.localParticipantState(for:)(v729);
      outlined destroy of MultiwayViewController.ConversationSnapshot(v729);
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      Participant.videoInfo.getter();
      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
      v671 = v362;
      v677 = v483;
      if (v730)
      {
        v698 = v732;
        v675 = v731;
        v492 = v733;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v730, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        v493 = v698;
        v494 = v675;
      }

      else
      {
        v494 = 0uLL;
        v492 = 1;
        v493 = 0uLL;
      }

      v495 = v710;
      v742[0] = v494;
      v742[1] = v493;
      v743 = v492 & 1;
      v496 = v696;
      v658 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
      *&v675 = *&v696[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView];
      v674 = [v707 view];
      v497 = ParticipantListViewController.participantCount.getter();
      OUTLINED_FUNCTION_20();
      v498 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v499 = swift_allocObject();
      *(v499 + 16) = v498;
      *(v499 + 24) = v490;
      v673 = v499;
      v500 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v672 = *&v491[v500];
      v501 = v490;
      v669 = v703;
      v668 = v501;
      *&v698 = v498;

      v699 = v699;
      v670 = v705;
      v502 = [v495 view];
      if (v502)
      {
        v503 = v502;
        v725[0] = 0;
        v666 = v497 > 0;
        LOBYTE(v724[0]) = 0;
        LOBYTE(v723[0]) = 0;
        v664 = v688;
        v665 = MultiwayViewController.usesPaddingInsteadOfSafeArea.getter();
        v667 = objc_allocWithZone(type metadata accessor for MultiwayViewConstraintsController());
        v504 = v337;
        v505 = v708;
        v506 = v712;
        v659 = v715;
        v507 = v701;
        v660 = v701;
        v508 = v496;
        v509 = v700;
        v663 = v700;
        v510 = v687;
        v662 = v687;
        v511 = v704;
        v661 = v704;
        v700 = v509;
        v636 = v510;
        v704 = v511;
        v635 = v511;
        v634 = v676;
        v512 = v508;
        v633 = v508;
        v676 = v506;
        v632 = v506;
        v513 = v684;
        v514 = v504;
        v515 = v678;
        v678 = v505;
        v516 = v716;
        v686 = MultiwayViewConstraintsController.init(layoutIdiom:containingView:participantListViewController:participantListState:gridView:participantGridState:controlsViewController:callControlsViewController:inCallControlsState:inCallBannerHostViewController:inCallConversationBannerState:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsBrowserContainerView:effectsView:effectsBrowserViewController:floatingControlsView:floatingControlsState:participantLabelsView:bottomControlsView:oneToOneShutterButton:setShutterButtonHidden:deviceOrientation:changeLayoutButton:changeLayoutButtonBackground:topCornerButtonsStackView:captionsView:captionsState:reactionsViewController:reactionsState:reactionPickerTipView:reactionPickerTipState:isLocalReactionActive:usesPaddingInsteadOfSafeArea:)(&v734, v685, v504, v677, v515, v686 & 1, v505, v716, v684, 0, v632, v741, v633, v634, v742, v635, v675, v674, 0, 0, 0, v666, v636, v509, v695, partial apply for specialized closure #7 in MultiwayViewController.viewDidLoad(), v673, v672, v699, v705, v703, v503, v725, v709, v724, v507, v723, 0, (v665 & 0x100) >> 8);

        type metadata accessor for ParticipantViewDragController();
        v517 = swift_allocObject();
        v685 = v512;
        v518 = specialized ParticipantViewDragController.init(participantView:constraintIdentifier:)(v685, 0xD00000000000002ELL, 0x80000001BC51B980, v517);
        OUTLINED_FUNCTION_3_5();
        *(v518 + 32) = &protocol witness table for MultiwayViewController;
        *&v698 = v518;
        swift_unknownObjectWeakAssign();
        v519 = v710;
        v520 = [v710 view];

        if (!v520)
        {
          goto LABEL_241;
        }

        type metadata accessor for CaptionsViewDragController();
        OUTLINED_FUNCTION_77_0();
        swift_allocObject();
        v521 = OUTLINED_FUNCTION_170();
        v522 = CaptionsViewDragController.init(captionsView:)(v521);
        OUTLINED_FUNCTION_3_5();
        v522[4] = &protocol witness table for MultiwayViewController;
        swift_unknownObjectWeakAssign();
        v724[0] = v504;
        v523 = v713;
        v724[1] = v713;
        v524 = v678;
        v724[2] = v678;
        v525 = v676;
        v724[3] = v676;
        v724[4] = v516;
        v724[5] = v513;
        v724[6] = v686;
        v724[7] = v685;
        v724[8] = v704;
        v724[9] = 0;
        v724[10] = v702;
        v724[11] = 0;
        v724[12] = 0;
        v724[13] = v689;
        v724[14] = v687;
        v724[15] = v700;
        v724[16] = v695;
        v724[17] = v694;
        v724[18] = v519;
        v724[19] = v698;
        v724[20] = v522;
        v724[21] = 0;
        v526 = v519;
        v724[22] = v699;
        v724[23] = v705;
        v527 = v680;
        v724[24] = v680;
        v724[25] = v703;
        v724[26] = v709;
        v724[27] = v701;
        v528 = v671;
        v724[28] = v671;
        TPNumberPadCharacter.rawValue.getter(v724);
        memcpy(v725, v692, 0xE8uLL);
        memcpy(v692, v724, 0xE8uLL);
        v529 = v527;
        v530 = v528;
        v531 = v514;
        v532 = v523;
        v680 = v524;
        v533 = v525;
        v534 = v526;
        v535 = v707;
        v536 = v659;
        v537 = v664;
        v695 = v669;
        v702 = v668;
        v703 = v660;
        v687 = v699;
        v684 = v670;
        v685 = v685;
        v701 = v663;
        v700 = v662;
        v699 = v661;

        v709 = v522;

        v716 = v686;
        v689 = v689;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v725, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        v705 = v530;
        v704 = v529;
        if (v528)
        {
          v538 = v530;
          [v538 setTranslatesAutoresizingMaskIntoConstraints_];
          v539 = OUTLINED_FUNCTION_233_4();
          if (!v539)
          {
            goto LABEL_254;
          }

          v540 = v539;
          v541 = [(objc_class *)v533 view];

          if (!v541)
          {
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
            goto LABEL_257;
          }

          OUTLINED_FUNCTION_153_3();
          [v542 v543];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v544 = swift_allocObject();
          *(v544 + 16) = xmmword_1BC4BA7F0;
          v545 = [v538 topAnchor];
          v546 = [v717 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
          if (!v546)
          {
            goto LABEL_256;
          }

          v547 = v546;
          v548 = [v546 topAnchor];

          Layout.MultiwayFaceTime.init()(&v734);
          v549 = [v545 constraintEqualToAnchor:v548 constant:-v735];

          *(v544 + 32) = v549;
          v550 = [v538 leadingAnchor];
          v551 = OUTLINED_FUNCTION_282_1();
          if (!v551)
          {
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
            goto LABEL_262;
          }

          v552 = v551;
          v553 = [v551 leadingAnchor];

          v554 = [v550 constraintEqualToAnchor_];
          *(v544 + 40) = v554;
          v555 = [v538 bottomAnchor];
          v556 = OUTLINED_FUNCTION_282_1();
          if (!v556)
          {
            goto LABEL_258;
          }

          v557 = v556;
          v558 = [v556 bottomAnchor];

          Layout.MultiwayFaceTime.init()(v737);
          v559 = [v555 constraintEqualToAnchor:v558 constant:*&v737[1]];

          *(v544 + 48) = v559;
          v560 = [v538 trailingAnchor];

          v561 = OUTLINED_FUNCTION_282_1();
          if (!v561)
          {
            goto LABEL_259;
          }

          v562 = v561;
          v563 = objc_opt_self();
          v564 = [v562 trailingAnchor];

          v565 = [v560 constraintEqualToAnchor_];
          *(v544 + 56) = v565;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          OUTLINED_FUNCTION_108_0();
          v533 = Array._bridgeToObjectiveC()().super.isa;

          [v563 activateConstraints_];

          v566 = v710;
        }

        else
        {
          v566 = v526;
        }

        v567 = v692;
        OUTLINED_FUNCTION_172_2(v723);
        OUTLINED_FUNCTION_46_26(v723);
        if (!v140)
        {
          v568 = *(v567 + 6);
          static Layout.Roster.iOS.getter(v740);
          MultiwayViewConstraintsController.configure(rosterCellWidth:)(v740[7], 0);
        }

        OUTLINED_FUNCTION_172_2(v722);
        OUTLINED_FUNCTION_46_26(v722);
        if (!v140)
        {
          memcpy(v741, v722, sizeof(v741));
          v569 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
          v570 = *(v569 + 2);
          if (v570)
          {
            v571 = &v693[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
            v692 = v569;
            v572 = (v569 + 32);
            OUTLINED_FUNCTION_35_30();
            swift_beginAccess();
            v573 = v697;
            do
            {
              outlined init with copy of IDSLookupManager(v572, v719);
              v574 = v720;
              v575 = v721;
              OUTLINED_FUNCTION_179_2(v719, v720);
              OUTLINED_FUNCTION_7_5();
              _s15ConversationKit11ParticipantVWOcTm_16();
              (*(v575 + 48))(v573, *v571, *(v571 + 1), v571[16], v574, v575);
              OUTLINED_FUNCTION_0_220();
              _s15ConversationKit11ParticipantVWOhTm_17();
              __swift_destroy_boxed_opaque_existential_1(v719);
              v572 += 40;
              --v570;
            }

            while (v570);

            v566 = v710;
          }

          else
          {
          }

          v576 = ConversationController.messagesGroupName.getter();
          v578 = v577;
          v579 = &v680[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName];
          OUTLINED_FUNCTION_3_5();
          *v579 = v576;
          v579[1] = v578;

          v580 = ConversationController.audioRoute.getter();
          InCallControlsViewController.updateAudioRouteButton(for:)();

          v581 = v717;
          MultiwayViewController.updateVideoState()();
          v582 = ConversationController.audioRoute.getter();
          MultiwayViewController.updateAudioRouteButton(for:)();

          v583 = v581;
          MultiwayViewController.updateFloatingLocalParticpantView()();
          MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
          v584 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
          v585 = v716;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          MultiwayViewController.updateViewVisibility(localParticipantState:)(v585[v584]);
          LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
          v586 = swift_unknownObjectWeakLoadStrong();
          v587 = v714;
          if (v586)
          {
            v588 = v586;
            if ([v586 respondsToSelector_])
            {
              [v588 viewController:v717 pipSourceProviderNeedsUpdate:v717];
            }

            swift_unknownObjectRelease();
            v583 = v717;
          }

          if (MultiwayViewController.isOnScreen.getter())
          {
            v589 = CFNotificationCenterGetDarwinNotifyCenter();
            if (one-time initialization token for ICSIsOnScreenNotification != -1)
            {
              OUTLINED_FUNCTION_105_4();
            }

            v590 = OUTLINED_FUNCTION_25_54();
            CFNotificationCenterPostNotification(v590, v591, v592, v593, 1u);
          }

          MultiwayViewController.updateChangeLayoutButtonAppearanceState()();
          MultiwayViewController.updateCornerButtonsVisibility()();
          MultiwayViewController.updateScreenSharingBlurIfNeeded()();
          MultiwayViewController.registerCaptioningStateObservers()();
          MultiwayViewController.playOutgoingGFTRingtoneIfNeeded()();
          v594 = swift_getObjectType();
          if ((*(v691 + 600))(v594))
          {
            v706 = OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController;
            OUTLINED_FUNCTION_198_4();
            OUTLINED_FUNCTION_4_137();
            v596 = *(v595 + 264);
            v598 = v597;
            v596();

            OUTLINED_FUNCTION_6_10();
            v711 = v599;
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v600, v601);
            lazy protocol witness table accessor for type VideoMessageController.State and conformance VideoMessageController.State();
            Publisher<>.removeDuplicates()();
            v602 = OUTLINED_FUNCTION_2_40();
            v603(v602);
            OUTLINED_FUNCTION_20();
            swift_allocObject();
            swift_unknownObjectWeakInit();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22VideoMessageControllerC5StateO_AEtMd);
            v697 = MEMORY[0x1E695BD38];
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<VideoMessageController.State>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd);
            v604 = v649;
            Publisher.map<A>(_:)();

            v605 = OUTLINED_FUNCTION_1_5();
            v606(v605);
            v607 = [objc_opt_self() mainRunLoop];
            v718 = v607;
            type metadata accessor for NSRunLoop.SchedulerOptions();
            v608 = v655;
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v609, v610, v611, v612);
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.RemoveDuplicates<Published<VideoMessageController.State>.Publisher>, (VideoMessageController.State, VideoMessageController.State)> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGAP_APtGMd);
            lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
            v613 = v651;
            v614 = v652;
            OUTLINED_FUNCTION_41();
            v585 = v716;
            Publisher.receive<A>(on:options:)();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v608, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

            (*(v650 + 8))(v604, v613);
            OUTLINED_FUNCTION_20();
            v615 = swift_allocObject();
            OUTLINED_FUNCTION_278(v615);
            swift_unknownObjectWeakInit();
            OUTLINED_FUNCTION_24();
            v616 = swift_allocObject();
            *(v616 + 16) = partial apply for closure #9 in MultiwayViewController.viewDidLoad();
            *(v616 + 24) = v604;
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Map<Publishers.RemoveDuplicates<Published<VideoMessageController.State>.Publisher>, (VideoMessageController.State, VideoMessageController.State)>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGAR_ARtGSo9NSRunLoopCGMd);
            v617 = v654;
            Publisher<>.sink(receiveValue:)();
            OUTLINED_FUNCTION_182();

            (*(v653 + 8))(v614, v617);
            OUTLINED_FUNCTION_30_2();
            AnyCancellable.store(in:)();
            swift_endAccess();

            OUTLINED_FUNCTION_198_4();
            OUTLINED_FUNCTION_4_137();
            v619 = *(v618 + 552);
            v621 = v620;
            v622 = v656;
            v619();

            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Published<URL?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy10Foundation3URLVSg_GMd);
            lazy protocol witness table accessor for type URL? and conformance <A> A?();
            v623 = v639;
            v624 = v640;
            Publisher<>.removeDuplicates()();
            v625 = v622;
            v566 = v710;
            (*(v657 + 8))(v625, v623);
            OUTLINED_FUNCTION_20();
            v626 = swift_allocObject();
            OUTLINED_FUNCTION_95_3(v626);
            swift_unknownObjectWeakInit();
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<URL?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy10Foundation3URLVSg_GGMd);
            OUTLINED_FUNCTION_28_3();
            v627 = v642;
            Publisher<>.sink(receiveValue:)();
            OUTLINED_FUNCTION_6_4();
            v583 = v717;

            (*(v641 + 8))(v624, v627);
            OUTLINED_FUNCTION_30_2();
            AnyCancellable.store(in:)();
            swift_endAccess();
          }

          MultiwayViewController.setupCallTranslationIfNeeded()();
          v628 = objc_opt_self();
          v629 = v583;
          v630 = [v628 defaultCenter];
          if (one-time initialization token for MoreMenuRemoteAlertViewPresentAddParticipant != -1)
          {
            swift_once();
          }

          [v630 addObserver:v629 selector:sel_presentAddParticipantSheet name:static NSNotificationName.MoreMenuRemoteAlertViewPresentAddParticipant object:0];

          v631 = [v628 defaultCenter];
          if (one-time initialization token for MoreMenuRemoteAlertViewPresentContactCard != -1)
          {
            swift_once();
          }

          [v631 addObserver:v629 selector:sel_presentContactCard name:static NSNotificationName.MoreMenuRemoteAlertViewPresentContactCard object:0];

          goto LABEL_224;
        }

        goto LABEL_242;
      }

LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
}