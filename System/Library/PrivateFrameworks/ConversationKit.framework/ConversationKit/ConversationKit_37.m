void EffectsBrowserContainerViewController.embedBrowserViewController(_:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v5 = [v2 view];
    if (v5)
    {
      [v1 addChildViewController_];
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];
      v3 = [v1 view];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      [v3 addSubview_];

      [v2 didMoveToParentViewController_];
      EffectsBrowserContainerViewController.updateViews()();
    }

    else
    {
      v5 = v2;
    }
  }
}

void EffectsBrowserContainerViewController.removeEmbeddedBrowserViewController(_:)(void *a1)
{
  if (a1)
  {
    v3 = a1;
    [v3 willMoveToParentViewController_];
    [v3 removeFromParentViewController];
    if ([v3 isViewLoaded])
    {
      v1 = [v3 view];
      if (!v1)
      {
        __break(1u);
        return;
      }

      v2 = v1;
      [v1 removeFromSuperview];
    }
  }
}

id EffectsBrowserContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EffectsBrowserContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectsBrowserContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized EffectsBrowserContainerViewController.init(delegate:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController] = 0;
  a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsEnabled] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight] = 0x404D000000000000;
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_constraintsToUpdate] = MEMORY[0x1E69E7CC0];
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = a2;
  v9.super_class = type metadata accessor for EffectsBrowserContainerViewController();
  v6 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  *&v6[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_delegate + 8] = a4;
  swift_unknownObjectWeakAssign();
  v7 = v6;
  EffectsBrowserContainerViewController.setupViews()();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t SmallMultiwayControllerLayoutFactory.init(containingView:participantListView:conversationBannerControlsAreaLayoutGuide:controlsView:gridView:localParticipantView:effectsBrowserContainerView:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:reactionsView:reactionPickerTipView:localParticipantLayoutGuide:usesPaddingInsteadOfSafeArea:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, char a12)
{
  *(v12 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
  lazy protocol witness table accessor for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState();
  *(v12 + 128) = Dictionary.init(dictionaryLiteral:)();
  lazy protocol witness table accessor for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation();
  *(v12 + 136) = Dictionary.init(dictionaryLiteral:)();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 80) = a9;
  *(v12 + 96) = a10;
  v19 = *(v12 + 112);
  *(v12 + 112) = a11;

  *(v12 + 120) = a12;
  return v12;
}

uint64_t SmallMultiwayControllerLayoutFactory.updateLocalParticipantLayoutGuilde(_:)(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = Features.isICUIRedesignEnabled.getter();
  if (result)
  {
    v3 = *(v1 + 112);
    *(v1 + 112) = a1;

    return a1;
  }

  return result;
}

uint64_t SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *a1;
  v79[0] = *(a1 + 1);
  *(v79 + 3) = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v9 = *(a1 + 18);
  v10 = *(a1 + 19);
  v11 = *(a1 + 20);
  v12 = *(a1 + 21);
  v13 = *(a1 + 22);
  v59 = v4;
  swift_beginAccess();
  v62 = v8;
  v64 = v12;
  v65 = v9;
  v14 = (v9 & 1) == 0;
  v15 = v7 | (v8 << 8);
  v16 = 0x10000;
  if (v14)
  {
    v16 = 0;
  }

  v63 = v11;
  v17 = 0x100000000;
  if ((v11 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x10000000000;
  if ((v12 & 1) == 0)
  {
    v18 = 0;
  }

  v66 = v13;
  v19 = 0x1000000000000;
  if ((v13 & 1) == 0)
  {
    v19 = 0;
  }

  v67 = v6;
  v20 = v5;
  v21 = specialized Dictionary.subscript.getter(v5 & 1, v6, (v16 | v17 | v18 | v19 | v15) & 0xFFFFFFFF00FFFFFFLL | (v10 << 24), v3[16]);
  if (v21)
  {
    v22 = v21;
    v61 = v7;
    swift_endAccess();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationKit);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68 = v27;
      *v26 = 136446466;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v68);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v69 = v5;
      *v70 = v79[0];
      *&v70[3] = *(v79 + 3);
      v71 = v67;
      v72 = v61;
      v73 = v62;
      v74 = v65;
      v75 = v10;
      v76 = v63;
      v77 = v12;
      v78 = v66;
      v31 = String.init<A>(reflecting:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v68);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_1BBC58000, v24, v25, "[%{public}s] using cached layout constraints for state: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v27, -1, -1);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v34 = v10;
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.conversationKit);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v68 = v57;
      *v38 = 136446466;
      v39 = _typeName(_:qualified:)();
      v60 = v7;
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v68);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v69 = v20;
      *v70 = v79[0];
      *&v70[3] = *(v79 + 3);
      v71 = v67;
      v72 = v7;
      LODWORD(v59) = v37;
      v42 = v62;
      v73 = v62;
      v74 = v65;
      v75 = v10;
      v76 = v11;
      v77 = v64;
      v78 = v66;
      v43 = String.init<A>(reflecting:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v68);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_1BBC58000, v36, v59, "[%{public}s] making layout constraints for state: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v57, -1, -1);
      v46 = v38;
      v34 = v10;
      MEMORY[0x1BFB23DF0](v46, -1, -1);
    }

    else
    {

      v42 = v62;
    }

    v69 = v20;
    *v70 = v79[0];
    *&v70[3] = *(v79 + 3);
    v71 = v67;
    v72 = v7;
    v73 = v42;
    v74 = v65;
    v75 = v34;
    v76 = v11;
    v77 = v64;
    v78 = v66;
    v22 = SmallMultiwayControllerLayoutFactory.makeConstraints(for:using:)(&v69, a2);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v3[16];
    v51 = 0x10000;
    if ((v65 & 1) == 0)
    {
      v51 = 0;
    }

    v52 = 0x100000000;
    if ((v11 & 1) == 0)
    {
      v52 = 0;
    }

    v53 = 0x10000000000;
    if ((v64 & 1) == 0)
    {
      v53 = 0;
    }

    v54 = 0x1000000000000;
    if ((v66 & 1) == 0)
    {
      v54 = 0;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v20 & 1, v67, v51 | v52 | v53 | v54 | v15 | (v10 << 24), isUniquelyReferenced_nonNull_native, v48, v49, v50, v56, v57, v10 << 24, a2, v59, v60);
    v3[16] = v68;
    swift_endAccess();
  }

  return v22;
}

uint64_t SmallMultiwayControllerLayoutFactory.makeConstraints(for:using:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  v298[0] = *(a1 + 1);
  *(v298 + 3) = *(a1 + 1);
  v262 = *(a1 + 1);
  v4 = a1[16];
  v263 = a1[17];
  v259 = v3;
  v260 = a1[18];
  v5 = a1[19];
  v256 = a1[20];
  v258 = *(a1 + 21);
  v272 = MEMORY[0x1E69E7CC0];
  v257 = v4;
  v261 = v5;
  if (v5 && v4)
  {
    v255 = [*(v2 + 32) bottomAnchor];
    v6 = 10.0;
  }

  else
  {
    v7 = [*(v2 + 16) safeAreaLayoutGuide];
    v255 = [v7 topAnchor];

    v6 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA930;
  v9 = *(v2 + 88);
  v10 = [v9 leadingAnchor];
  v11 = v2;
  v12 = *(v2 + 16);
  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13 constant:10.0];

  *(v8 + 32) = v14;
  v15 = [v9 trailingAnchor];
  v253 = v12;
  v16 = [v12 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-10.0];

  *(v8 + 40) = v17;
  specialized Array.append<A>(contentsOf:)(v8);
  v248 = v9;
  if (v261)
  {
    if (v261 == 1)
    {
      v18 = static Platform.current.getter();
      v19 = &off_1E7FE9000;
      v20 = [v9 bottomAnchor];
      v21 = v11;
      if (v18 == 2)
      {
        v22 = v253;
        if (v260)
        {
          v23 = [v253 safeAreaLayoutGuide];
          v24 = [v23 bottomAnchor];

          v25 = [v20 constraintEqualToAnchor:v24 constant:-3.0];
          MEMORY[0x1BFB20CC0]();
          if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_28;
        }

        v44 = [*(v11 + 56) topAnchor];
        v45 = [v20 constraintEqualToAnchor:v44 constant:-static Layout.MediaPip.padding.getter()];

        MEMORY[0x1BFB20CC0]();
        if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_29:
        v49 = [v22 topAnchor];
        v52 = [v22 v19[480]];
        v53 = 0.0;
        v50 = 0.0;
        v54 = 0.0;
        goto LABEL_45;
      }

      v22 = v253;
      v36 = [v253 safeAreaLayoutGuide];
      v37 = [v36 bottomAnchor];

      v38 = [v20 constraintLessThanOrEqualToAnchor_];
      MEMORY[0x1BFB20CC0]();
      if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v263 & 0x80) != 0)
      {
        v46 = [v9 topAnchor];
        v47 = [v46 constraintEqualToAnchor:v255 constant:v6];

        MEMORY[0x1BFB20CC0]();
        if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1BC4BA930;
        v40 = [v9 topAnchor];
        v41 = [v40 constraintGreaterThanOrEqualToAnchor:v255 constant:v6];

        v42 = *(a2 + 88);
        *(v39 + 32) = v41;
        *(v39 + 40) = v42;
        v43 = v42;
        specialized Array.append<A>(contentsOf:)(v39);
      }
    }

    else
    {
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BC4BA930;
      v32 = [v9 heightAnchor];
      v21 = v11;
      if (one-time initialization token for transcriptVerticalSize != -1)
      {
        swift_once();
      }

      v33 = [v32 constraintEqualToConstant_];

      *(v31 + 32) = v33;
      v34 = [v9 topAnchor];
      v35 = [v34 constraintEqualToAnchor:v255 constant:v6];

      *(v31 + 40) = v35;
      specialized Array.append<A>(contentsOf:)(v31);
      v19 = &off_1E7FE9000;
      v22 = v253;
    }
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BA930;
    v27 = [v9 topAnchor];
    v28 = [v27 constraintEqualToAnchor:v255 constant:v6];

    *(v26 + 32) = v28;
    v29 = [v9 heightAnchor];
    v30 = [v29 constraintEqualToConstant_];

    *(v26 + 40) = v30;
    specialized Array.append<A>(contentsOf:)(v26);
    v19 = &off_1E7FE9000;
    v22 = v12;
    v21 = v11;
  }

  if ((v260 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v261)
  {
LABEL_28:
    v48 = v258;
    v49 = [v9 v19[480]];
    v50 = 10.0;
    v51 = v257;
    goto LABEL_33;
  }

  v51 = v257;
  v48 = v258;
  if (v257)
  {
    v49 = [*(v21 + 32) v19[480]];
    Layout.MultiwayFaceTime.init()(v273);
    v50 = v274;
  }

  else
  {
    v55 = [v22 safeAreaLayoutGuide];
    v56 = [v55 topAnchor];

    v49 = v56;
    v50 = 0.0;
  }

LABEL_33:
  if ((v259 & 1) == 0)
  {
    LOBYTE(v290) = v259;
    *(&v290 + 1) = v298[0];
    DWORD1(v290) = *(v298 + 3);
    *(&v290 + 1) = v262;
    v291 = v51;
    v292 = v263;
    v293 = v260;
    v294 = v261;
    v295 = v256;
    v296 = v48;
    v58 = SmallMultiwayControllerLayoutFactory.safeReactionPickerTipView(for:)(&v290);
    if (v58)
    {
      v59 = v58;
      v60 = [v58 topAnchor];

      v61 = v60;
    }

    else
    {
      if ((v256 & 1) == 0 || (v152 = *(v21 + 96)) == 0)
      {
        if (!v51)
        {
          v235 = [v22 safeAreaLayoutGuide];
          v236 = [v235 v19[480]];

          v52 = v236;
          v53 = 0.0;
          goto LABEL_39;
        }

        v57 = [*(v21 + 72) topAnchor];
        goto LABEL_35;
      }

      v61 = [v152 topAnchor];
    }

    v52 = v61;
    v53 = 10.0;
    goto LABEL_39;
  }

  v57 = [*(v21 + 24) topAnchor];
LABEL_35:
  v52 = v57;
  Layout.MultiwayFaceTime.init()(v275);
  v53 = v276;
LABEL_39:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && v51)
  {
    Layout.MultiwayFaceTime.init()(v277);
    v54 = v279;
  }

  else
  {
    Layout.MultiwayFaceTime.init()(v277);
    v54 = v278;
  }

LABEL_45:
  v62 = v19;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1BC4BA7F0;
  v64 = *(v21 + 48);
  v65 = [v64 leadingAnchor];
  v66 = [v22 leadingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:v54];

  *(v63 + 32) = v67;
  v68 = [v64 trailingAnchor];
  v69 = [v22 trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:-v54];

  *(v63 + 40) = v70;
  v71 = [v64 topAnchor];
  v72 = [v71 constraintEqualToAnchor:v49 constant:v50];

  v252 = v49;
  *(v63 + 48) = v72;
  v73 = [v64 v62 + 3365];
  v74 = [v73 constraintEqualToAnchor:v52 constant:-v53];

  v251 = v52;
  *(v63 + 56) = v74;
  specialized Array.append<A>(contentsOf:)(v63);
  v75 = &stru_1BC4BA000;
  if (v259)
  {
    LOBYTE(v290) = v259;
    *(&v290 + 1) = v298[0];
    DWORD1(v290) = *(v298 + 3);
    *(&v290 + 1) = v262;
    v291 = v257;
    v292 = v263;
    v293 = v260;
    v294 = v261;
    v295 = v256;
    v296 = v258;
    v76 = SmallMultiwayControllerLayoutFactory.safeReactionPickerTipView(for:)(&v290);
    if (v76)
    {
      v77 = v76;
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1BC4BAC30;
      v79 = *(v21 + 24);
      v80 = [v79 v62 + 3365];
      v81 = &off_1E7FE9000;
      v82 = [v77 topAnchor];
      v83 = [v80 constraintEqualToAnchor:v82 constant:-10.0];

      *(v78 + 32) = v83;
      specialized Array.append<A>(contentsOf:)(v78);

      v22 = v253;
      goto LABEL_54;
    }

    v88 = *(v21 + 96);
    v81 = &off_1E7FE9000;
    v22 = v253;
    if (v88)
    {
      LOBYTE(v290) = v259;
      *(&v290 + 1) = v298[0];
      DWORD1(v290) = *(v298 + 3);
      *(&v290 + 1) = v262;
      v291 = v257;
      v292 = v263;
      v293 = v260;
      v294 = v261;
      v295 = v256;
      v296 = v258;
      if (SmallMultiwayControllerLayout.shouldConstrainListViewToRecationsView(for:)(&v290))
      {
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_1BC4BAC30;
        v79 = *(v21 + 24);
        v90 = v88;
        v91 = [v79 v62 + 3365];
        v92 = [v90 topAnchor];
        v93 = [v91 constraintEqualToAnchor:v92 constant:-10.0];

        *(v89 + 32) = v93;
        specialized Array.append<A>(contentsOf:)(v89);

        goto LABEL_54;
      }
    }

    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1BC4BAC30;
    v79 = *(v21 + 24);
    v94 = [v79 v62 + 3365];
    v95 = [v253 safeAreaLayoutGuide];
    v96 = [v95 v62 + 3365];

    v97 = [v94 constraintEqualToAnchor_];
    *(v84 + 32) = v97;
  }

  else
  {
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1BC4BAC30;
    v79 = *(v21 + 24);
    v81 = &off_1E7FE9000;
    v85 = [v79 topAnchor];
    v86 = [v22 v62 + 3365];
    v87 = [v85 constraintEqualToAnchor_];

    *(v84 + 32) = v87;
  }

  specialized Array.append<A>(contentsOf:)(v84);
LABEL_54:
  v271 = MEMORY[0x1E69E7CC0];
  v98 = &off_1E7FE9000;
  v254 = v263 >> 6;
  if (v263 >> 6)
  {
    if (v263 >> 6 != 1)
    {
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_1BC4BA7F0;
      v113 = *(v21 + 56);
      v114 = [v113 leadingAnchor];
      v115 = [v22 leadingAnchor];
      v109 = &off_1E7FE9000;
      v116 = [v114 constraintEqualToAnchor_];

      *(v112 + 32) = v116;
      v117 = [v113 trailingAnchor];
      v118 = [v22 trailingAnchor];
      v119 = [v117 constraintEqualToAnchor_];

      *(v112 + 40) = v119;
      v120 = [v113 topAnchor];
      v121 = [v22 topAnchor];
      if (v263 == 128)
      {
        v122 = [v120 constraintLessThanOrEqualToAnchor_];

        *(v112 + 48) = v122;
        v123 = [v113 bottomAnchor];
        v124 = [v22 bottomAnchor];
        v125 = [v123 constraintEqualToAnchor_];

        *(v112 + 56) = v125;
        v126 = v112;
LABEL_110:
        specialized Array.append<A>(contentsOf:)(v126);
LABEL_111:
        v146 = v258;
        v75 = &stru_1BC4BA000;
      }

      else
      {
        v142 = [v120 constraintEqualToAnchor_];

        *(v112 + 48) = v142;
        v143 = [v113 bottomAnchor];
        v144 = [v22 bottomAnchor];
        v145 = [v143 constraintEqualToAnchor_];

        *(v112 + 56) = v145;
        specialized Array.append<A>(contentsOf:)(v112);
        v146 = v258;
        v75 = &stru_1BC4BA000;
        if (v262 > 6 || ((1 << v262) & 0x6C) == 0)
        {
          v147 = swift_allocObject();
          *(v147 + 16) = xmmword_1BC4BAC30;
          v148 = [*&v113[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView] bottomAnchor];
          v149 = [v22 safeAreaLayoutGuide];
          v150 = [v149 bottomAnchor];

          v151 = [v148 constraintEqualToAnchor_];
          v98 = &off_1E7FE9000;
          *(v147 + 32) = v151;
          specialized Array.append<A>(contentsOf:)(v147);
        }
      }

      goto LABEL_123;
    }

    v99 = v263 & 0x3F;
    v100 = 56;
    v101 = 48;
  }

  else
  {
    v100 = 40;
    v101 = 32;
    v99 = v263;
  }

  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1BC4BC370;
  v103 = *(a2 + v101);
  v104 = *(a2 + v100);
  *(v102 + 32) = v103;
  *(v102 + 40) = v104;
  v105 = *(a2 + 80);
  *(v102 + 48) = v105;
  v106 = v103;
  v107 = v104;
  v108 = v105;
  specialized Array.append<A>(contentsOf:)(v102);
  switch(v99)
  {
    case 1:
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v109 = &off_1E7FE9000;
      if (Features.isICUIRedesignEnabled.getter())
      {
        v110 = -20.0;
      }

      else
      {
        Layout.MultiwayFaceTime.init()(&v280);
        v110 = -v289;
      }

      v111 = &selRef_rightAnchor;
      goto LABEL_97;
    case 2:
      v127 = *(v21 + 112);
      if (!v127)
      {
        goto LABEL_113;
      }

      v128 = one-time initialization token for shared;
      v129 = v127;
      if (v128 != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        v130 = v129;
        v131 = 0.0;
        if (v254 == 1)
        {
          type metadata accessor for AppUtilities();
          if (static AppUtilities.isRTL.getter())
          {
            v131 = 20.0;
          }

          else
          {
            v131 = 0.0;
          }
        }

        v132 = swift_allocObject();
        *(v132 + 16) = xmmword_1BC4BAC30;
        v133 = *(v21 + 56);
        v134 = [v133 leftAnchor];
        v135 = [v130 leftAnchor];
        v136 = [v134 constraintEqualToAnchor:v135 constant:v131];
        goto LABEL_83;
      }

LABEL_113:
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_1BC4BAC30;
      v133 = *(v21 + 56);
      v171 = [v133 leftAnchor];
      v172 = [v22 leftAnchor];
      Layout.MultiwayFaceTime.init()(&v290);
      v173 = [v171 constraintEqualToAnchor:v172 constant:v297];
      goto LABEL_116;
    case 3:
      v137 = *(v21 + 112);
      if (!v137)
      {
        goto LABEL_115;
      }

      v138 = one-time initialization token for shared;
      v139 = v137;
      if (v138 != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        v130 = v139;
        v140 = 0.0;
        if (v254 == 1)
        {
          type metadata accessor for AppUtilities();
          if (static AppUtilities.isRTL.getter())
          {
            v140 = 0.0;
          }

          else
          {
            v140 = -20.0;
          }
        }

        v132 = swift_allocObject();
        *(v132 + 16) = xmmword_1BC4BAC30;
        v133 = *(v21 + 56);
        v134 = [v133 rightAnchor];
        v135 = [v130 rightAnchor];
        v136 = [v134 constraintEqualToAnchor:v135 constant:v140];
LABEL_83:
        v141 = v136;

        *(v132 + 32) = v141;
        specialized Array.append<A>(contentsOf:)(v132);

        v81 = &off_1E7FE9000;
      }

      else
      {

LABEL_115:
        v170 = swift_allocObject();
        *(v170 + 16) = xmmword_1BC4BAC30;
        v133 = *(v21 + 56);
        v171 = [v133 rightAnchor];
        v172 = [v22 rightAnchor];
        Layout.MultiwayFaceTime.init()(&v290);
        v173 = [v171 constraintEqualToAnchor:v172 constant:-v297];
LABEL_116:
        v174 = v173;

        *(v170 + 32) = v174;
        specialized Array.append<A>(contentsOf:)(v170);
      }

      v98 = &off_1E7FE9000;
      if (v259)
      {
        v175 = swift_allocObject();
        *(v175 + 16) = xmmword_1BC4BAC30;
        v176 = [v133 bottomAnchor];
        v177 = [v79 bottomAnchor];
        static Layout.Roster.iOS.getter(&v280);
        v178 = [v176 constraintEqualToAnchor:v177 constant:-v282];

        *(v175 + 32) = v178;
        v98 = &off_1E7FE9000;
        v179 = v175;
LABEL_119:
        specialized Array.append<A>(contentsOf:)(v179);
LABEL_122:
        v146 = v258;
        v109 = &off_1E7FE9000;
        break;
      }

      v280 = v259;
      *v281 = v298[0];
      *&v281[3] = *(v298 + 3);
      v282 = *&v262;
      v283 = v257;
      v284 = v263;
      v285 = v260;
      v286 = v261;
      v287 = v256;
      v288 = v258;
      v180 = SmallMultiwayControllerLayoutFactory.safeReactionPickerTipView(for:)(&v280);
      if (v180)
      {
        v181 = v180;
        v182 = swift_allocObject();
        *(v182 + 16) = xmmword_1BC4BAC30;
        v183 = [v133 bottomAnchor];
        v184 = [v181 v81[476]];
        v185 = [v183 constraintGreaterThanOrEqualToAnchor:v184 constant:-10.0];

        v98 = &off_1E7FE9000;
        *(v182 + 32) = v185;
        v75 = &stru_1BC4BA000;
        specialized Array.append<A>(contentsOf:)(v182);

        goto LABEL_122;
      }

      v225 = *(v21 + 96);
      v109 = &off_1E7FE9000;
      if (v225 && (v256 & 1) != 0)
      {
        v226 = swift_allocObject();
        *(v226 + 16) = xmmword_1BC4BAC30;
        v227 = v225;
        v228 = [v133 bottomAnchor];
        v229 = [v227 v81[476]];
        v230 = [v228 constraintGreaterThanOrEqualToAnchor:v229 constant:-10.0];

        v98 = &off_1E7FE9000;
        *(v226 + 32) = v230;
        v75 = &stru_1BC4BA000;
        specialized Array.append<A>(contentsOf:)(v226);
      }

      else
      {
        if (static Platform.current.getter() == 2)
        {
          v231 = swift_allocObject();
          *(v231 + 16) = xmmword_1BC4BAC30;
          v232 = [v133 bottomAnchor];
          if (v261 == 1 && (v260 & 1) != 0)
          {
            v233 = [v248 v81[476]];
            v234 = [v232 constraintEqualToAnchor:v233 constant:-static Layout.MediaPip.padding.getter()];

            *(v231 + 32) = v234;
          }

          else
          {
            v242 = [v22 safeAreaLayoutGuide];
            v243 = [v242 bottomAnchor];

            v244 = [v232 constraintEqualToAnchor:v243 constant:-10.0];
            *(v231 + 32) = v244;
          }

          v179 = v231;
          goto LABEL_119;
        }

        v237 = *(v21 + 120);
        v238 = swift_allocObject();
        *(v238 + 16) = xmmword_1BC4BAC30;
        v239 = [v133 bottomAnchor];
        if (v237 == 1)
        {
          v240 = [v22 bottomAnchor];
          v241 = [v239 constraintEqualToAnchor:v240 constant:-20.0];

          *(v238 + 32) = v241;
          v98 = &off_1E7FE9000;
        }

        else
        {
          v245 = [v22 safeAreaLayoutGuide];
          v246 = [v245 bottomAnchor];

          v247 = [v239 constraintEqualToAnchor_];
          v98 = &off_1E7FE9000;
          *(v238 + 32) = v247;
        }

        specialized Array.append<A>(contentsOf:)(v238);
      }

      v146 = v258;
      break;
    default:
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v109 = &off_1E7FE9000;
      if (Features.isICUIRedesignEnabled.getter())
      {
        v110 = 20.0;
        v111 = &selRef_leftAnchor;
      }

      else
      {
        Layout.MultiwayFaceTime.init()(&v280);
        v111 = &selRef_leftAnchor;
        v110 = v289;
      }

LABEL_97:
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_1BC4BAC30;
      v154 = *(v21 + 56);
      v155 = [v154 *v111];
      v156 = [v22 *v111];
      v157 = [v155 constraintEqualToAnchor:v156 constant:v110];

      *(v153 + 32) = v157;
      specialized Array.append<A>(contentsOf:)(v153);
      v158 = *(v21 + 96);
      if (v158 && (v256 & 1) != 0)
      {
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_1BC4BAC30;
        v160 = v158;
        v161 = [v154 topAnchor];
        v162 = [v160 bottomAnchor];
        v163 = [v161 constraintGreaterThanOrEqualToAnchor:v162 constant:10.0];

        v98 = &off_1E7FE9000;
        *(v159 + 32) = v163;
        specialized Array.append<A>(contentsOf:)(v159);

        goto LABEL_111;
      }

      if (v257)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v164 = 10.0;
        if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          Layout.MultiwayFaceTime.init()(&v290);
          v164 = *(&v290 + 1);
        }

        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_1BC4BAC30;
        v166 = [v154 topAnchor];
        v167 = [*(v21 + 32) bottomAnchor];
        v168 = [v166 constraintEqualToAnchor:v167 constant:v164];
      }

      else
      {
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_1BC4BAC30;
        v166 = [v154 topAnchor];
        v167 = [*(v21 + 32) topAnchor];
        v168 = [v166 v109[477]];
      }

      v169 = v168;

      *(v165 + 32) = v169;
      v98 = &off_1E7FE9000;
      v126 = v165;
      goto LABEL_110;
  }

LABEL_123:
  specialized Array.append<A>(contentsOf:)(v271);
  v186 = *(v21 + 64);
  if (v186 && v262 <= 6 && ((1 << v262) & 0x6C) != 0)
  {
    v187 = v186;
    v188 = [v22 safeAreaLayoutGuide];
    v189 = [v188 v98[480]];

    v190 = [v187 v98[480]];
    v191 = [v189 v109[477]];

    MEMORY[0x1BFB20CC0]();
    if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (((1 << v262) & 0x6C) != 0)
    {
      v192 = [v187 v98[480]];
      v193 = [v22 safeAreaLayoutGuide];
      v194 = [v193 v98[480]];

      v195 = [v192 v109[477]];
      MEMORY[0x1BFB20CC0]();
      if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v75 = &stru_1BC4BA000;
  }

  v196 = *(v21 + 96);
  if (v196)
  {
    v197 = swift_allocObject();
    v250 = v75[195];
    *(v197 + 16) = v250;
    v198 = v196;
    v199 = [v198 centerXAnchor];
    v200 = [v22 centerXAnchor];
    v201 = [v199 constraintEqualToAnchor_];

    *(v197 + 32) = v201;
    v98 = &off_1E7FE9000;
    v264[0] = v197;
    v202 = v263;
    if (v254)
    {
      if (v254 != 1)
      {
LABEL_144:
        specialized Array.append<A>(contentsOf:)(v264[0]);

        goto LABEL_145;
      }

      v202 = v263 & 0x3F;
    }

    if ((v202 & 0xFE) == 2)
    {
      v203 = swift_allocObject();
      *(v203 + 16) = v250;
      v204 = [v198 bottomAnchor];
      v205 = [v22 &selRef_isHighlighted + 2];
      v206 = [v205 bottomAnchor];
    }

    else
    {
      v203 = swift_allocObject();
      *(v203 + 16) = v250;
      v204 = [v198 topAnchor];
      v207 = *(v21 + 32);
      if (v257)
      {
        v206 = [v207 bottomAnchor];
        v208 = [v204 constraintEqualToAnchor:v206 constant:13.0];
LABEL_143:
        v209 = v208;

        *(v203 + 32) = v209;
        specialized Array.append<A>(contentsOf:)(v203);
        v146 = v258;
        goto LABEL_144;
      }

      v206 = [v207 topAnchor];
    }

    v208 = [v204 constraintEqualToAnchor_];
    goto LABEL_143;
  }

LABEL_145:
  LOBYTE(v264[0]) = v259;
  *(v264 + 1) = v298[0];
  HIDWORD(v264[0]) = *(v298 + 3);
  v264[1] = v262;
  v265 = v257;
  v266 = v263;
  v267 = v260;
  v268 = v261;
  v269 = v256;
  v270 = v146;
  v210 = SmallMultiwayControllerLayoutFactory.safeReactionPickerTipView(for:)(v264);
  if (v210)
  {
    v211 = v210;
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_1BC4BC370;
    v213 = [v211 centerXAnchor];
    v214 = [v22 centerXAnchor];
    v215 = [v213 constraintEqualToAnchor_];

    *(v212 + 32) = v215;
    v216 = [v211 v98[480]];
    v217 = [v22 safeAreaLayoutGuide];
    v218 = [v217 v98[480]];

    v219 = [v216 constraintEqualToAnchor_];
    *(v212 + 40) = v219;
    v220 = [v211 widthAnchor];
    if (one-time initialization token for defaultTipWidth != -1)
    {
      swift_once();
    }

    v221 = [v220 constraintEqualToConstant_];

    *(v212 + 48) = v221;
    specialized Array.append<A>(contentsOf:)(v212);

    v223 = v251;
    v222 = v252;
  }

  else
  {
    v222 = v251;
    v211 = v252;
    v223 = v255;
  }

  return v272;
}

uint64_t SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:forceMakeLayoutConstraints:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v70[0] = *(a1 + 1);
  *(v70 + 3) = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v52 = *(a1 + 19);
  v9 = *(a1 + 20);
  v10 = *(a1 + 21);
  v11 = *(a1 + 22);
  v45 = *(a1 + 23);
  v12 = *(a1 + 24);
  swift_beginAccess();
  v47 = v3;
  v56 = v7;
  v50 = v9;
  v51 = v8;
  v13 = 0x10000;
  if ((v8 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x100000000;
  if ((v9 & 1) == 0)
  {
    v14 = 0;
  }

  v53 = v11;
  v15 = 0x10000000000;
  if ((v10 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = 0x1000000000000;
  if ((v11 & 1) == 0)
  {
    v16 = 0;
  }

  v54 = v12;
  v55 = v5;
  v17 = specialized Dictionary.subscript.getter(v4 & 1, v5, (v13 | v14 | v15 | v16 | v6 | (v7 << 8)) & 0xFFFFFFFF00FFFFFFLL | (v52 << 24), v12, *(v3 + 136));
  if (!v17)
  {
    swift_endAccess();
    goto LABEL_13;
  }

  v18 = v17;
  swift_endAccess();
  if (a3)
  {

LABEL_13:
    v19 = v7;
    v20 = v4;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationKit);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v69 = v44;
      *v24 = 136446466;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v69);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v57 = v4;
      *v58 = v70[0];
      *&v58[3] = *(v70 + 3);
      v59 = v55;
      v60 = v6;
      v61 = v56;
      v28 = v51;
      v62 = v51;
      v63 = v52;
      v64 = v9;
      v65 = v10;
      v66 = v53;
      v67 = v45;
      v68 = v54;
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v69);
      v19 = v56;

      *(v24 + 14) = v31;
      v20 = v4;
      _os_log_impl(&dword_1BBC58000, v22, v23, "[%{public}s] making layout constraints for state: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v44, -1, -1);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
    }

    else
    {

      v28 = v51;
    }

    v57 = v20;
    *v58 = v70[0];
    *&v58[3] = *(v70 + 3);
    v59 = v55;
    v60 = v6;
    v61 = v19;
    v62 = v28;
    v63 = v52;
    v64 = v9;
    v65 = v10;
    v66 = v53;
    v18 = SmallMultiwayControllerLayoutFactory.makeConstraints(for:using:)(&v57, a2);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v47 + 136);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v47 + 136) = v69;
    swift_endAccess();
    return v18;
  }

  v49 = v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.conversationKit);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v69 = v36;
    *v35 = 136446466;
    v37 = _typeName(_:qualified:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v69);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v57 = v49;
    *v58 = v70[0];
    *&v58[3] = *(v70 + 3);
    v59 = v5;
    v60 = v6;
    v61 = v56;
    v62 = v51;
    v63 = v52;
    v64 = v50;
    v65 = v10;
    v66 = v53;
    v67 = v45;
    v68 = v12;
    v40 = String.init<A>(reflecting:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v69);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_1BBC58000, v33, v34, "[%{public}s] using cached layout constraints for state: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v36, -1, -1);
    MEMORY[0x1BFB23DF0](v35, -1, -1);
  }

  return v18;
}

void *SmallMultiwayControllerLayoutFactory.safeReactionPickerTipView(for:)(uint64_t a1)
{
  if (*(a1 + 21) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 104);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 superview];
    if (!v4)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.conversationKit);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1BBC58000, v6, v7, "ReactionPickerTip: UI State is out of sync. Can't create constraints.", v8, 2u);
        MEMORY[0x1BFB23DF0](v8, -1, -1);
      }

      v2 = 0;
      v4 = v3;
    }
  }

  return v2;
}

BOOL SmallMultiwayControllerLayout.shouldConstrainListViewToRecationsView(for:)(__int128 *a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = *(a1 + 21);
    v5 = *a1;
    v6 = *(a1 + 4);
    v7 = v1;
    v8 = v2;
    return SmallMultiwayControllerLayout.localParticipantViewIsAtBottom(for:)(&v5);
  }

  else
  {
    return 0;
  }
}

id *SmallMultiwayControllerLayoutFactory.deinit()
{

  return v0;
}

uint64_t SmallMultiwayControllerLayoutFactory.__deallocating_deinit()
{
  SmallMultiwayControllerLayoutFactory.deinit();

  return swift_deallocClassInstance();
}

__n128 SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.overallLayoutState.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 15) = *(v1 + 15);
  return result;
}

__n128 SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.overallLayoutState.setter(uint64_t a1)
{
  result = *a1;
  *v1 = *a1;
  *(v1 + 15) = *(a1 + 15);
  return result;
}

uint64_t static SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *v6 = *a1;
  *&v6[15] = *(a1 + 15);
  v2 = *(a1 + 24);
  *v5 = *a2;
  *&v5[15] = *(a2 + 15);
  v3 = *(a2 + 24);
  return static MultiwayViewConstraintsController.OverallLayoutState.== infix(_:_:)(v6, v5) & (v2 == v3);
}

uint64_t SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.hash(into:)()
{
  OUTLINED_FUNCTION_17_45();
  v1 = *(v0 + 24);
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  return MEMORY[0x1BFB22640](v1);
}

Swift::Int SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.hashValue.getter()
{
  OUTLINED_FUNCTION_17_45();
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

__n128 SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.init(overallLayoutState:videoOrientation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  *(a3 + 15) = *(a1 + 15);
  *(a3 + 24) = a2;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation()
{
  Hasher.init(_seed:)();
  SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.hash(into:)();
  return Hasher._finalize()();
}

void SmallMultiwayControllerLayout.displayScale.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong displayScale];
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    static UIView.screenScale.getter();
  }
}

uint64_t SmallMultiwayControllerLayout.__allocating_init(containingView:participantListView:participantListState:gridView:participantGridState:controlsViewController:inCallControlsState:inCallBannerHostViewController:callControlsViewController:inCallBannerControlsAreaLayoutGuide:inCallBannerDodgingLayoutGuide:inCallConversationBannerState:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsBrowserContainerView:effectsView:effectsBrowserViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:usesPaddingInsteadOfSafeArea:)(uint64_t a1, int a2, char a3, int a4, char a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, char *a13, void *a14, char a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, char *a28, void *a29, char *a30, void *a31, unsigned __int8 *a32, unsigned __int8 a33)
{
  v37 = swift_allocObject();
  SmallMultiwayControllerLayout.init(containingView:participantListView:participantListState:gridView:participantGridState:controlsViewController:inCallControlsState:inCallBannerHostViewController:callControlsViewController:inCallBannerControlsAreaLayoutGuide:inCallBannerDodgingLayoutGuide:inCallConversationBannerState:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsBrowserContainerView:effectsView:effectsBrowserViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:usesPaddingInsteadOfSafeArea:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  return v37;
}

id SmallMultiwayControllerLayout.init(containingView:participantListView:participantListState:gridView:participantGridState:controlsViewController:inCallControlsState:inCallBannerHostViewController:callControlsViewController:inCallBannerControlsAreaLayoutGuide:inCallBannerDodgingLayoutGuide:inCallConversationBannerState:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsBrowserContainerView:effectsView:effectsBrowserViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:usesPaddingInsteadOfSafeArea:)(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, char *a13, void *a14, char a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, id a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, char *a28, void *a29, char *a30, void *a31, unsigned __int8 *a32, unsigned __int8 a33)
{
  MEMORY[0x1EEE9AC00](a1);
  v35 = v34;
  v356 = v36;
  v38 = v37;
  v342 = v39;
  v337 = v40;
  v343 = v41;
  v359 = v42;
  v44 = v43;
  v361 = *v33;
  v45 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v345 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_8();
  v319 = v49 - v48;
  v352 = *a13;
  v355 = *a28;
  v354 = *a30;
  v353 = *a32;
  v50 = MEMORY[0x1E69E7CC0];
  *(v33 + 200) = MEMORY[0x1E69E7CC0];
  *(v33 + 96) = 0u;
  *(v33 + 112) = 0u;
  *(v33 + 128) = 0u;
  *(v33 + 144) = 0u;
  *(v33 + 208) = 0;
  *(v33 + 216) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v33 + 248) = v50;
  *(v33 + 296) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v33 + 304) = 1;
  *(v33 + 312) = 0;
  v366 = v44;
  [v44 displayScale];
  v52 = v51;
  v321 = v38;
  result = [v38 view];
  v350 = result;
  if (!result)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v316 = v45;
  v318 = (v33 + 200);
  v297 = v33 + 208;
  v322 = v35;
  result = [v35 view];
  v348 = result;
  if (!result)
  {
    goto LABEL_61;
  }

  v54 = a17;
  v315 = a21;
  v340 = [a21 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v362 = a14;
  [v44 frame];
  *(v33 + 256) = v55;
  *(v33 + 264) = v56;
  *(v33 + 280) = a9;
  *(v33 + 288) = a10;
  v365 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1BC4D2600;
  *(v57 + 32) = v359;
  *(v57 + 40) = v337;
  *(v57 + 48) = v350;
  *(v57 + 56) = v348;
  *(v57 + 64) = a14;
  *(v57 + 72) = a17;
  *(v57 + 80) = a18;
  *(v57 + 88) = a27;
  *(v57 + 96) = a29;
  *(v57 + 104) = a31;
  v324 = a31;
  v58 = v362;
  v59 = a9;
  if (v359)
  {
    v60 = v359;
    v61 = v337;
    v62 = v350;
    v63 = v348;
    v64 = a17;
    v65 = a18;
    v66 = a27;
    v67 = a29;
    v68 = a29;
    v69 = v60;
    v54 = a17;
    [v69 setTranslatesAutoresizingMaskIntoConstraints_];
    v70 = v348;
  }

  else
  {
    v71 = v337;
    v72 = v350;
    v70 = v348;
    v73 = v348;
    v74 = a17;
    v75 = a18;
    v76 = a27;
    v67 = a29;
    v77 = a29;
  }

  [v337 setTranslatesAutoresizingMaskIntoConstraints_];
  [v350 setTranslatesAutoresizingMaskIntoConstraints_];
  [v70 setTranslatesAutoresizingMaskIntoConstraints_];
  [v362 setTranslatesAutoresizingMaskIntoConstraints_];
  if (v54)
  {
    [v54 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  [a18 setTranslatesAutoresizingMaskIntoConstraints_];
  [a27 setTranslatesAutoresizingMaskIntoConstraints_];
  if (v67)
  {
    [v67 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v79 = a19;
  if (a31)
  {
    [v324 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (a19)
  {
    [a19 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  type metadata accessor for MultiwayViewConstraintsController();
  [v44 bounds];
  CGRectGetWidth(v397);
  static MultiwayViewConstraintsController.listItemWidth(for:displayScale:configurableRosterCellWidth:)(0, 1);
  v81 = v80;
  v82 = static SmallMultiwayControllerLayout.localParticipantWidth(for:aspectRatio:displayScale:)(v80, *&v52);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    if (Features.isICUIRedesignEnabled.getter())
    {
      Layout.MultiwayFaceTime.init()(v384);
      v83 = *&v384[47];
      static Layout.Roster.iOS.getter(v383);
      v84 = v83 + v82 + v383[1];
    }

    else
    {
      Layout.MultiwayFaceTime.init()(v384);
      v84 = *&v384[3];
    }

    v331 = a16;
    v334 = v79;
    if (Features.isICUIRedesignEnabled.getter())
    {
      Layout.MultiwayFaceTime.init()(v385);
      v85 = v385[47];
    }

    else
    {
      Layout.MultiwayFaceTime.init()(v385);
      v85 = v81 + v385[3];
    }

    v86 = -v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v87 = OUTLINED_FUNCTION_20_33();
    *(v87 + 16) = xmmword_1BC4BA7F0;
    v88 = [v359 leadingAnchor];
    v89 = [v366 leadingAnchor];
    v90 = OUTLINED_FUNCTION_14_42();
    v92 = [v90 v91];

    *(v87 + 32) = v92;
    v93 = [v359 trailingAnchor];
    v94 = [v366 trailingAnchor];
    v95 = OUTLINED_FUNCTION_14_42();
    v97 = [v95 v96];

    *(v87 + 40) = v97;
    v98 = [v350 leadingAnchor];
    v99 = [v366 leadingAnchor];
    v100 = OUTLINED_FUNCTION_14_42();
    v102 = [v100 v101];

    *(v87 + 48) = v102;
    v103 = [v350 trailingAnchor];
    v104 = [v366 trailingAnchor];
    v105 = OUTLINED_FUNCTION_14_42();
    v107 = [v105 v106];

    *(v87 + 56) = v107;
    v382 = v87;
    swift_unknownObjectWeakAssign();
    if (a23)
    {
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_1BC4BA930;
      v109 = a23;
      v110 = [v109 bottomAnchor];
      v111 = OUTLINED_FUNCTION_18_40([v366 bottomAnchor]);

      *(v108 + 32) = v111;
      v112 = [v109 centerXAnchor];
      v113 = OUTLINED_FUNCTION_18_40([v366 centerXAnchor]);

      *(v108 + 40) = v113;
      v114 = OUTLINED_FUNCTION_11_66();
      specialized Array.append<A>(contentsOf:)(v114);
    }

    v115 = &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR;
    if (!a24)
    {
      break;
    }

    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1BC4BA930;
    v79 = a24;
    v117 = [v79 widthAnchor];
    Layout.MultiwayFaceTime.init()(v386);
    v118 = [v117 constraintEqualToConstant_];

    *(v116 + 32) = v118;
    v119 = [v79 heightAnchor];
    v120 = [v79 widthAnchor];
    v121 = [v119 constraintEqualToAnchor_];

    *(v116 + 40) = v121;
    v122 = OUTLINED_FUNCTION_11_66();
    specialized Array.append<A>(contentsOf:)(v122);
    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      v135 = [v79 leadingAnchor];
      v136 = [v366 leadingAnchor];
      Layout.MultiwayFaceTime.init()(v387);
      v137 = [v135 constraintEqualToAnchor:v136 constant:v388];

      v138 = [v79 bottomAnchor];
      v139 = [v366 safeAreaLayoutGuide];
      v140 = [v139 bottomAnchor];

      v141 = [v138 constraintEqualToAnchor_];
      v142 = [v79 bottomAnchor];
      v143 = [a27 topAnchor];
      Layout.MultiwayFaceTime.init()(v389);
      v144 = [v142 constraintEqualToAnchor:v143 constant:-v390];

      LODWORD(v145) = 1.0;
      [v144 setPriority_];
      v146 = *(v365 + 144);
      *(v365 + 144) = v137;
      v147 = v137;

      v148 = *(v365 + 96);
      *(v365 + 96) = v141;
      v149 = v141;

      v150 = *(v365 + 104);
      *(v365 + 104) = v144;
      v151 = v144;

      v152 = swift_allocObject();
      v115 = &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR;
      *(v152 + 16) = xmmword_1BC4BC370;
      *(v152 + 32) = v147;
      *(v152 + 40) = v149;
      *(v152 + 48) = v151;
      v153 = v147;
      v154 = v149;
      v155 = v151;
      specialized Array.append<A>(contentsOf:)(v152);

      break;
    }

    v123 = [v79 topAnchor];
    v124 = [v366 safeAreaLayoutGuide];
    v125 = [v124 topAnchor];

    v126 = [v123 constraintEqualToAnchor_];
    v127 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
    OUTLINED_FUNCTION_4_0();
    v128 = *&v322[v127];
    if (v128)
    {
      v129 = v128;
      v130 = [v79 topAnchor];
      result = [v129 view];
      if (!result)
      {
        goto LABEL_62;
      }

      v131 = result;
      v132 = [result bottomAnchor];

      v133 = [v130 constraintEqualToAnchor:v132 constant:10.0];
      if (v133)
      {
        LODWORD(v134) = 1.0;
        [v133 setPriority_];
      }
    }

    else
    {
      v133 = 0;
    }

    v156 = [v79 trailingAnchor];
    v157 = [v366 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v387);
    v158 = [v156 constraintEqualToAnchor:v157 constant:-v388];

    v159 = [v79 leadingAnchor];
    v160 = [v366 leadingAnchor];
    Layout.MultiwayFaceTime.init()(v389);
    v161 = [v159 constraintEqualToAnchor:v160 constant:v390];

    LODWORD(v162) = 1.0;
    [v161 setPriority_];
    v163 = *(v365 + 128);
    v164 = *(v365 + 136);
    *(v365 + 128) = v126;
    *(v365 + 136) = v133;
    v341 = v126;
    v339 = v133;

    v165 = *(v365 + 112);
    v166 = *(v365 + 120);
    *(v365 + 112) = v158;
    *(v365 + 120) = v161;
    v328 = v158;
    v167 = v161;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd);
    v168 = OUTLINED_FUNCTION_20_33();
    *(v168 + 16) = xmmword_1BC4BB990;
    v169 = *(v365 + 128);
    v170 = *(v365 + 136);
    *(v168 + 32) = v169;
    *(v168 + 40) = v170;
    v172 = *(v365 + 112);
    v171 = *(v365 + 120);
    *(v168 + 48) = v172;
    *(v168 + 56) = v171;
    a16 = MEMORY[0x1E69E7CC0];
    v396[0] = MEMORY[0x1E69E7CC0];
    v173 = v171;
    v174 = v169;
    v175 = v170;
    v176 = v172;
    for (i = 0; ; ++i)
    {
      if (i == 4)
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        specialized Array.append<A>(contentsOf:)(a16);

        v115 = &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR;
        goto LABEL_39;
      }

      if (i > 3)
      {
        break;
      }

      v178 = *(v168 + 8 * i + 32);
      if (v178)
      {
        v179 = v178;
        MEMORY[0x1BFB20CC0]();
        if (*((v396[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v396[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a16 = v396[0];
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

LABEL_39:
  v180 = swift_allocObject();
  *(v180 + 16) = v115[55];
  v181 = [a25 leadingAnchor];
  v182 = [v366 leadingAnchor];
  Layout.MultiwayFaceTime.init()(v391);
  v183 = [v181 constraintEqualToAnchor:v182 constant:v391[30]];

  *(v180 + 32) = v183;
  v184 = [a25 bottomAnchor];
  v185 = [v366 safeAreaLayoutGuide];
  v186 = [v185 bottomAnchor];

  Layout.MultiwayFaceTime.init()(v392);
  v187 = [v184 constraintEqualToAnchor:v186 constant:-v392[31]];

  *(v180 + 40) = v187;
  HIDWORD(v314) = HIDWORD(a25);
  v188 = [a25 heightAnchor];
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v393);
  v189 = [v188 constraintEqualToConstant_];

  *(v180 + 48) = v189;
  v190 = OUTLINED_FUNCTION_11_66();
  specialized Array.append<A>(contentsOf:)(v190);
  if (a26)
  {
    v191 = OUTLINED_FUNCTION_20_33();
    *(v191 + 16) = xmmword_1BC4BA7F0;
    v192 = a26;
    v193 = [v192 heightAnchor];
    v194 = [v359 heightAnchor];
    v195 = [v193 constraintEqualToAnchor_];

    *(v191 + 32) = v195;
    v196 = [v192 widthAnchor];
    v197 = OUTLINED_FUNCTION_7_71([v359 widthAnchor]);

    *(v191 + 40) = v197;
    v198 = [v192 bottomAnchor];
    v199 = OUTLINED_FUNCTION_7_71([v359 bottomAnchor]);

    *(v191 + 48) = v199;
    v200 = [v192 leadingAnchor];
    v201 = OUTLINED_FUNCTION_7_71([v359 leadingAnchor]);

    *(v191 + 56) = v201;
    v202 = OUTLINED_FUNCTION_11_66();
    specialized Array.append<A>(contentsOf:)(v202);
  }

  v344 = v343 & 1;
  v203 = [v359 heightAnchor];
  v204 = [v203 constraintEqualToConstant_];

  v205 = v204;
  MEMORY[0x1BFB20CC0]();
  if (*((v382 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v382 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_11_66();
  v310 = v205;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v206 = [v362 widthAnchor];
  v308 = [v206 &selRef_fillColor + 1];

  v207 = *(v331 + 16);
  *(v365 + 160) = *v331;
  *(v365 + 176) = v207;
  v208 = *(v331 + 32);
  *(v365 + 192) = v208;
  v209 = *v331;
  v210 = *(v331 + 8);
  if (v208)
  {
    v209 = 1.0;
    v210 = 1.0;
  }

  if (v209 > v210)
  {
    v211 = v209;
  }

  else
  {
    v211 = v210;
  }

  if (v210 < v209)
  {
    v209 = v210;
  }

  v212 = v211 / v209;
  v213 = [v362 heightAnchor];
  v214 = *(v345 + 104);
  v214(v319, *MEMORY[0x1E69E7040], v316);
  v215 = v214;
  v216 = CGFloat.rounded(_:toScale:)(v319, *&v52, v82 * v212 * 0.5);
  v217 = *(v345 + 8);
  v218 = OUTLINED_FUNCTION_59_0();
  v217(v218);
  v312 = [v213 &selRef_fillColor + 1];

  Layout.MultiwayFaceTime.init()(&v394);
  v219 = *MEMORY[0x1E69E7030];
  v215(v319, v219, v316);
  v220 = v215;
  v221 = OUTLINED_FUNCTION_3_90();
  v224 = CGFloat.rounded(_:toScale:)(v222, v221, v223);
  v225 = OUTLINED_FUNCTION_59_0();
  v217(v225);
  v226 = v217;
  v227 = [v362 widthAnchor];
  v305 = [v227 constraintEqualToConstant_];

  v228 = [v362 heightAnchor];
  v220(v319, v219, v316);
  v229 = OUTLINED_FUNCTION_3_90();
  v232 = CGFloat.rounded(_:toScale:)(v230, v229, v231);
  v233 = OUTLINED_FUNCTION_59_0();
  v226(v233);
  v326 = [v228 constraintEqualToConstant_];

  v234 = static SmallMultiwayControllerLayout.expandedLocalParticipantHeight(for:containingView:displayScale:)(v331, v366, v52, 0);
  v235 = [v362 heightAnchor];
  v332 = [v235 constraintEqualToConstant_];

  v236 = [v362 widthAnchor];
  v220(v319, *MEMORY[0x1E69E7048], v316);
  v237 = CGFloat.rounded(_:toScale:)(v319, *&v52, v234 / v212 * 0.5);
  v238 = OUTLINED_FUNCTION_59_0();
  v226(v238);
  v301 = [v236 constraintEqualToConstant_];

  v239 = [*&v362[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView] bottomAnchor];
  v240 = [v362 &off_1E7FE9D20 + 5];

  v303 = [v239 constraintEqualToAnchor_];
  v241 = [a27 centerYAnchor];
  v242 = [v366 safeAreaLayoutGuide];
  v243 = [v242 topAnchor];

  v244 = [v241 constraintEqualToAnchor_];
  LODWORD(v245) = 1132068864;
  [v244 setPriority_];
  *(v365 + 24) = v310;
  *(v365 + 32) = v308;
  *(v365 + 40) = v312;
  *(v365 + 48) = v305;
  *(v365 + 56) = v326;
  *(v365 + 64) = v301;
  *(v365 + 72) = v332;
  *(v365 + 80) = v303;
  *(v365 + 88) = v244;
  *(v365 + 272) = 1;
  type metadata accessor for SmallMultiwayControllerLayoutFactory();
  v299 = swift_allocObject();
  v320 = v334;
  v363 = v362;
  v346 = v359;
  v338 = v337;
  v360 = v350;
  v246 = a27;
  v351 = a29;
  v325 = v324;
  v317 = a26;
  v311 = v310;
  v313 = v312;
  v307 = v308;
  v309 = v305;
  v327 = v326;
  v333 = v332;
  v306 = v301;
  v304 = v303;
  v302 = v244;
  v247 = v366;
  *&v295 = a29;
  *(&v295 + 1) = a31;
  v357 = v246;
  *&v294 = a26;
  *(&v294 + 1) = v246;
  v329 = a11;
  v347 = a25;
  *(v365 + 16) = SmallMultiwayControllerLayoutFactory.init(containingView:participantListView:conversationBannerControlsAreaLayoutGuide:controlsView:gridView:localParticipantView:effectsBrowserContainerView:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:reactionsView:reactionPickerTipView:localParticipantLayoutGuide:usesPaddingInsteadOfSafeArea:)(v247, v346, v329, v360, v338, v363, v334, v347, v294, v295, 0, a33 & 1);
  v248 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [v247 addLayoutGuide_];
  v367 = objc_opt_self();
  v249 = OUTLINED_FUNCTION_20_33();
  *(v249 + 16) = xmmword_1BC4BA7F0;
  v250 = [v248 leadingAnchor];
  v251 = [v247 leadingAnchor];
  Layout.MultiwayFaceTime.init()(v395);
  v252 = [v250 constraintEqualToAnchor:v251 constant:v395[3]];

  *(v249 + 32) = v252;
  v253 = [v248 trailingAnchor];
  v254 = [v247 trailingAnchor];
  Layout.MultiwayFaceTime.init()(v396);
  v255 = [v253 constraintEqualToAnchor:v254 constant:-*&v396[3]];

  *(v249 + 40) = v255;
  v256 = [v248 topAnchor];
  v257 = [v247 safeAreaLayoutGuide];
  v258 = [v257 topAnchor];

  v259 = [v256 constraintEqualToAnchor_];
  *(v249 + 48) = v259;
  v335 = v248;
  v260 = [v248 bottomAnchor];
  v261 = [v247 safeAreaLayoutGuide];
  v262 = [v261 bottomAnchor];

  v263 = [v260 constraintEqualToAnchor_];
  *(v249 + 56) = v263;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v367 activateConstraints_];

  v265 = v344;
  v372 = v344;
  *v373 = *v381;
  *&v373[3] = *&v381[3];
  v374 = v356;
  v375 = v352;
  v266 = a15;
  v376 = a15;
  v377 = v342 & 1;
  v378 = v355;
  v379 = v354;
  v380 = v353;
  v267 = SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:)(&v372, v365);
  swift_beginAccess();
  *(v365 + 248) = v267;

  if (a9)
  {
    ObjectType = swift_getObjectType();
    v269 = *(a10 + 160);
    v270 = a9;
    v271 = v269(v247, 0, v363, a33 & 1, ObjectType, a10);
    swift_beginAccess();
    v272 = v270;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v273 = *(*(v365 + 200) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v273);
    v368[0] = v272;
    v265 = v344;
    v274 = v273;
    v266 = a15;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v274, v368, v318, ObjectType, *(a10 + 8));
    swift_endAccess();

    SmallMultiwayControllerLayoutFactory.updateLocalParticipantLayoutGuilde(_:)(v271);
  }

  v371[0] = 1;
  type metadata accessor for InCallBannerViewConstraintManager();
  swift_allocObject();
  v275 = v348;
  v276 = v247;
  v277 = v329;
  v323 = v335;
  v358 = v276;
  v336 = v277;
  v349 = v275;
  v330 = a12;
  v278 = InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(v371, v323, v276, v277, v275, v330);
  swift_beginAccess();
  *(v365 + 312) = v278;

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v279 = *(*v318 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v279);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v279, v278, v318);
  swift_endAccess();
  LOBYTE(v368[0]) = v265;
  OUTLINED_FUNCTION_0_128();
  v369 = v266;
  v370 = v342 & 1;
  OUTLINED_FUNCTION_1_113();

  v281 = static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v280, v368, 1, 0.0, 0.0);

  OUTLINED_FUNCTION_2_111();
  specialized Array.append<A>(contentsOf:)(v281);
  swift_endAccess();
  v282 = v363;
  v283 = v363;
  v284 = v340;
  if (a20)
  {
    v283 = v363;
    if (v340)
    {
      LOBYTE(v368[0]) = 1;
      v283 = a20;
      v285 = v340;
      LODWORD(v314) = a33 & 1;
      static ViewControllerLayout.effectsConstraintManagers(with:layoutIdiom:controlsView:localParticipantView:effectsView:effectsBrowserView:)(v358, v368, v360, a14, v283, v285, v361, &protocol witness table for SmallMultiwayControllerLayout, v296, a14, v297, a10, v299, v300, a33, 0, 0, v302, v304, v306, v307, v309, v311, v313, a11, v314, a12, a21, v317);
      v287 = v286;

      *v298 = v287;

      LOBYTE(v368[0]) = v344;
      OUTLINED_FUNCTION_0_128();
      v369 = v266;
      v370 = v342 & 1;
      OUTLINED_FUNCTION_1_113();
      v288 = static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v287, v368, 1, 0.0, 0.0);

      OUTLINED_FUNCTION_2_111();
      specialized Array.append<A>(contentsOf:)(v288);
      swift_endAccess();

      v284 = v340;
    }
  }

  v289 = a18;
  if (a17)
  {
    LOBYTE(v368[0]) = 0;
    v364 = a17;
    v290 = static ViewControllerLayout.buttonShelfConstraintManagers(with:localParticipantView:localParticipantButtonShelfView:localParticipantControlsView:layoutIdiom:)(v358, v282, v364, a18, v368);
    *(v365 + 216) = v290;

    LOBYTE(v368[0]) = v344;
    OUTLINED_FUNCTION_0_128();
    v369 = a15;
    v370 = v342 & 1;
    OUTLINED_FUNCTION_1_113();
    v291 = static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v290, v368, 1, *(v365 + 256), *(v365 + 264));
    v289 = a18;

    OUTLINED_FUNCTION_2_111();
    specialized Array.append<A>(contentsOf:)(v291);
    swift_endAccess();

    v284 = v340;
  }

  specialized Array.append<A>(contentsOf:)(v292);
  v293 = Array._bridgeToObjectiveC()().super.isa;

  [v367 activateConstraints_];

  return v365;
}

double static SmallMultiwayControllerLayout.localParticipantWidth(for:aspectRatio:displayScale:)(double a1, double a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Layout.Roster.iOS.getter(v11);
  v8 = a1 - v12;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7040], v4);
  v9 = CGFloat.rounded(_:toScale:)(v7, a2, v8 * 0.5);
  (*(v5 + 8))(v7, v4);
  return v9 + v9;
}

double static SmallMultiwayControllerLayout.expandedLocalParticipantHeight(for:containingView:displayScale:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a1 == 1.0;
  if (*(a1 + 8) != 1.0)
  {
    v13 = 0;
  }

  if ((*(a1 + 32) & 1) == 0 && !v13)
  {
    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  v14 = v12 == 1.0;
  if (*(a1 + 24) != 1.0)
  {
    v14 = 0;
  }

  if ((*(a1 + 32) & 1) != 0 || v14)
  {
    [a2 frame];
    Width = CGRectGetWidth(v27);
    Layout.MultiwayFaceTime.init()(v23);
    v17 = v24 + v24;
  }

  else
  {
LABEL_9:
    [a2 safeAreaInsetFrame];
    Height = CGRectGetHeight(v26);
    Layout.MultiwayFaceTime.init()(v22);
    Width = Height - v22[20];
    Layout.MultiwayFaceTime.init()(v23);
    v17 = v25;
  }

  v18 = Width - v17;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7048], v8);
  if (a4)
  {
    [a2 displayScale];
  }

  else
  {
    v19 = *&a3;
  }

  v20 = CGFloat.rounded(_:toScale:)(v11, v19, v18 * 0.5);
  (*(v9 + 8))(v11, v8);
  return v20 + v20;
}

void SmallMultiwayControllerLayout.update(for:with:deviceOrientation:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  *(v4 + 256) = a3;
  *(v4 + 264) = a4;
  type metadata accessor for MultiwayViewConstraintsController();
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetWidth(v34);
  SmallMultiwayControllerLayout.displayScale.getter();
  static MultiwayViewConstraintsController.listItemWidth(for:displayScale:configurableRosterCellWidth:)(0, 1);
  v18 = v17;
  [*(v4 + 24) setConstant_];
  v31 = *(v4 + 160);
  v32 = *(v4 + 176);
  LOBYTE(v33) = *(v4 + 192);
  v19 = *(v4 + 32);
  SmallMultiwayControllerLayout.displayScale.getter();
  [v19 setConstant_];

  v21 = *(v4 + 160);
  v22 = *(v4 + 168);
  if (*(v4 + 192))
  {
    v21 = 1.0;
    v22 = 1.0;
  }

  if (v21 > v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v22 < v21)
  {
    v21 = v22;
  }

  v24 = v23 / v21;
  v25 = *(v4 + 32);
  v26 = *(v5 + 40);
  [v25 constant];
  v28 = v24 * v27;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E7040], v10);
  SmallMultiwayControllerLayout.displayScale.getter();
  v30 = CGFloat.rounded(_:toScale:)(v16, v29, v28 * 0.5);
  (*(v12 + 8))(v16, v10);
  [v26 setConstant_];

  SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()();
}

void SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()()
{
  v1 = *(v0 + 176);
  v6[0] = *(v0 + 160);
  v6[1] = v1;
  v7 = *(v0 + 192);
  SmallMultiwayControllerLayout.updateEnlargedAndExpandedLocalParticipantConstraints(with:)(v6);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  if (*(v0 + 192))
  {
    v2 = 1.0;
    v3 = 1.0;
  }

  if (v2 > v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < v2)
  {
    v2 = v3;
  }

  v5 = v4 / v2;

  SmallMultiwayControllerLayout.updateRegularConstraintsForCurrentDeviceOrientation(with:)(v5);
}

void SmallMultiwayControllerLayout.update(localParticipantAspectRatio:layoutState:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v2;
  *(v1 + 192) = *(a1 + 32);
  SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()();
}

void SmallMultiwayControllerLayout.updateLocalParticipantVideoOrientation(videoOrientation:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 272);
  if (v4 == 1)
  {
    if ((a1 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      return;
    }

    goto LABEL_3;
  }

  if (a1 != 1)
  {
    if ((a1 != 3) != (v4 == 3))
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 != 3)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for CNKDeviceOrientation(0);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    v9 = MEMORY[0x1E69E6158];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v10 = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 64) = v10;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v11 = String.init<A>(reflecting:)();
    *(v5 + 96) = v9;
    *(v5 + 104) = v10;
    *(v5 + 72) = v11;
    *(v5 + 80) = v12;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log);
    v13 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v2 + 272) = a1;
    SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()();
  }
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.update(isDisplayedInBanner:containingView:)(Swift::Bool isDisplayedInBanner, UIView *containingView)
{
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v4);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v4);
  if (v11)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      [Strong setFrame_];
    }
  }

  else
  {
    __break(1u);
  }
}

void SmallMultiwayControllerLayout.updateLayoutWith(_:)(uint64_t a1)
{
  v2 = v1;
  v29[0] = *a1;
  *(v29 + 15) = *(a1 + 15);
  v3 = [*(v1 + 296) afbEnabled];
  v4 = objc_opt_self();
  swift_beginAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints_];

  if (v3)
  {
    v6 = *(v2 + 272);
    *v27 = v29[0];
    *&v27[15] = *(v29 + 15);
    v28 = v6;
    v7 = SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:forceMakeLayoutConstraints:)(v27, v2, 1);
  }

  else
  {
    *v27 = v29[0];
    *&v27[15] = *(v29 + 15);
    v7 = SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:)(v27, v2);
  }

  *(v2 + 248) = v7;

  OUTLINED_FUNCTION_4_0();
  v8 = OUTLINED_FUNCTION_13_50();
  v13 = OUTLINED_FUNCTION_9_64(v8, v9, v10, v11, v12);

  OUTLINED_FUNCTION_8_69();
  specialized Array.append<A>(contentsOf:)(v13);
  swift_endAccess();
  v14 = OUTLINED_FUNCTION_13_50();
  v19 = OUTLINED_FUNCTION_9_64(v14, v15, v16, v17, v18);

  OUTLINED_FUNCTION_8_69();
  specialized Array.append<A>(contentsOf:)(v19);
  swift_endAccess();
  v20 = *(v2 + 272);

  v21 = OUTLINED_FUNCTION_3_90();
  v25 = static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v22, v23, v20, v21, v24);

  OUTLINED_FUNCTION_8_69();
  specialized Array.append<A>(contentsOf:)(v25);
  swift_endAccess();

  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints_];
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.updateShutterButtonHorizontalConstraint(with:)(ConversationKit::MultiwayViewConstraintsController::ShutterButtonState with)
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    v7 = v1[18];
    if (with)
    {
      if (!v7)
      {
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v28 = v7;
      if (Strong)
      {
        [Strong frame];
        OUTLINED_FUNCTION_40_1();

        v33.origin.x = OUTLINED_FUNCTION_3_90();
        v33.size.width = v2;
        v33.size.height = v3;
        Width = CGRectGetWidth(v33);
      }

      else
      {
        Width = 0.0;
      }

      Layout.MultiwayFaceTime.init()(v29);
      v27 = Width - v30;
      Layout.MultiwayFaceTime.init()(v31);
      v26 = v27 - *&v31[35];
    }

    else
    {
      if (!v7)
      {
        return;
      }

      v28 = v7;
      Layout.MultiwayFaceTime.init()(v31);
      v26 = *&v31[29];
    }

    [v28 setConstant_];
  }

  else
  {
    v10 = v1[14];
    if (v10)
    {
      v11 = v1[15];
      if (v11)
      {
        v12 = one-time initialization token for conversationKit;
        v13 = v10;
        v14 = v11;
        if (v12 != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.conversationKit);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v31[0] = v19;
          *v18 = 136315138;
          v29[0] = with & 1;
          v20 = String.init<A>(reflecting:)();
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v31);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_1BBC58000, v16, v17, "updateShutterButtonHorizontalConstraint with state=%s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x1BFB23DF0](v19, -1, -1);
          MEMORY[0x1BFB23DF0](v18, -1, -1);
        }

        if (with)
        {
          LODWORD(v23) = 1148846080;
          [v13 setPriority_];
          v25 = 1132068864;
        }

        else
        {
          LODWORD(v23) = 1132068864;
          [v13 setPriority_];
          v25 = 1148846080;
        }

        LODWORD(v24) = v25;
        [v14 setPriority_];
      }
    }
  }
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.updateShutterButtonVerticalConstraint(_:)(Swift::Bool a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = *(v1 + 128);
    if (v5)
    {
      v6 = *(v1 + 136);
      if (v6)
      {
        v7 = one-time initialization token for conversationKit;
        v16 = v5;
        v8 = v6;
        if (v7 != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.conversationKit);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 67109120;
          *(v12 + 4) = a1;
          _os_log_impl(&dword_1BBC58000, v10, v11, "updateShutterButtonVerticalConstraint with shouldDodge=%{BOOL}d", v12, 8u);
          MEMORY[0x1BFB23DF0](v12, -1, -1);
        }

        if (a1)
        {
          *&v13 = 250.0;
        }

        else
        {
          *&v13 = 1000.0;
        }

        if (a1)
        {
          v14 = 1000.0;
        }

        else
        {
          v14 = 250.0;
        }

        [v16 setPriority_];
        *&v15 = v14;
        [v8 setPriority_];
      }
    }
  }
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(CGPoint forPosition, Swift::Bool withSnapping)
{
  y = forPosition.y;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (!withSnapping)
  {
LABEL_7:
    v15 = *(v2 + 88);
    v16 = OUTLINED_FUNCTION_21_31();
    [v16 layoutFrame];
    OUTLINED_FUNCTION_6_3();

    v27.origin.x = OUTLINED_FUNCTION_5_72();
    [v15 setConstant_];

    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_21_31();
  [v9 layoutFrame];
  OUTLINED_FUNCTION_6_3();

  v24.origin.x = OUTLINED_FUNCTION_5_72();
  MinY = CGRectGetMinY(v24);
  OUTLINED_FUNCTION_4_0();
  if (MinY + *&static Layout.Captions.bubbleSnapDistance <= y)
  {
    v11 = OUTLINED_FUNCTION_21_31();
    [v11 layoutFrame];
    OUTLINED_FUNCTION_6_3();

    v25.origin.x = OUTLINED_FUNCTION_5_72();
    if (CGRectGetMaxY(v25) - *&static Layout.Captions.bubbleSnapDistance < y)
    {
      v12 = *(v2 + 88);
      v13 = OUTLINED_FUNCTION_21_31();
      [v13 layoutFrame];
      OUTLINED_FUNCTION_40_1();

      v26.origin.x = OUTLINED_FUNCTION_3_90();
      v26.size.width = v3;
      v26.size.height = v4;
      [v12 setConstant_];

      v14 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  [*(v2 + 88) setConstant_];
LABEL_8:
  v14 = 0;
LABEL_9:
  v17 = *(v2 + 96);
  if (v17)
  {
    v18 = *(v2 + 104);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      if (v14)
      {
        *&v21 = 1.0;
      }

      else
      {
        *&v21 = 1000.0;
      }

      if (v14)
      {
        v22 = 1000.0;
      }

      else
      {
        v22 = 1.0;
      }

      [v19 setPriority_];
      *&v23 = v22;
      [v20 setPriority_];
    }
  }
}

uint64_t SmallMultiwayControllerLayout.calculateLocalParticipantEnlargedSize(aspectRatio:)(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && *(v1 + 280) && (v5 = *(v1 + 288), ObjectType = swift_getObjectType(), v16.origin.x = (*(v5 + 64))(ObjectType, v5), Height = CGRectGetHeight(v16), (*(a1 + 32) & 1) == 0))
  {
    v9 = Height;
    v10 = 1.0;
    v11 = 1.0;
    if ((*(v1 + 192) & 1) != 0 || (v11 = *(v1 + 160), v10 = *(v1 + 168), v12 = v11, v11 <= v10))
    {
      v12 = v11;
      v11 = v10;
    }

    if (v10 >= v12)
    {
      v10 = v12;
    }

    if (v11 / v10 < 2.0)
    {
      static IconButtonStyle.Defaults.phone.iconWidth.getter();
      v9 = v9 - v13 + -14.0;
    }

    if (v4 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = v4;
    }

    if (v3 > v4)
    {
      v15 = v3;
    }

    else
    {
      v15 = v4;
    }

    *&result = v14 / v15 * v9;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void SmallMultiwayControllerLayout.updateEnlargedAndExpandedLocalParticipantConstraints(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    SmallMultiwayControllerLayout.displayScale.getter();
    v12 = v11;
    v13 = 1.0;
    v14 = 1.0;
    if ((*(a1 + 32) & 1) == 0)
    {
      if (v4 > v5)
      {
        v14 = v4;
      }

      else
      {
        v14 = v5;
      }

      if (v5 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v5;
      }
    }

    v15 = v14 / v13;
    v16 = *(v1 + 72);
    [v16 setConstant_];

    v17 = *(v1 + 72);
    v18 = *(v2 + 64);
    [v17 constant];
    v19 = *(v7 + 104);
    v21 = v20 / v15;
    v22 = v93;
    v87 = *MEMORY[0x1E69E7048];
    v89 = v19;
    v90 = v7 + 104;
    (v19)(v93);
    v23 = CGFloat.rounded(_:toScale:)(v22, *&v12, v21 * 0.5);
    v24 = *(v7 + 8);
    v88 = v6;
    v91 = v24;
    v92 = v7 + 8;
    v24(v22, v6);
    [v18 setConstant_];

    v25 = *(v2 + 216);
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        v86 = v10;
        v27 = v25 + 32;

        do
        {
          outlined init with copy of IDSLookupManager(v27, v97);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd);
          type metadata accessor for LocalParticipantControlsViewConstraintManager();
          if (swift_dynamicCast())
          {
            v28 = v96;
            v29 = *(v2 + 192);
            v30 = *(v2 + 160);
            v94 = *(v2 + 176);
            v95 = v30;
            swift_beginAccess();
            v31 = v94;
            *(v28 + 16) = v95;
            *(v28 + 32) = v31;
            *(v28 + 48) = v29;
          }

          v27 += 40;
          --v26;
        }

        while (v26);

        v10 = v86;
        v22 = v93;
      }
    }

    Layout.MultiwayFaceTime.init()(v97);
    v32 = *&v97[7];
    v33 = *MEMORY[0x1E69E7030];
    v34 = v88;
    v89(v22, v33, v88);
    v35 = CGFloat.rounded(_:toScale:)(v22, *&v12, v32);
    v91(v22, v34);
    if ((*(v2 + 272) | 2) == 3)
    {
      *&v36 = COERCE_DOUBLE(SmallMultiwayControllerLayout.calculateLocalParticipantEnlargedSize(aspectRatio:)(a1));
      if ((v38 & 1) == 0)
      {
        v69 = *&v36;
        v70 = v37;
        v71 = swift_unknownObjectWeakLoadStrong();
        if (v71)
        {
          v72 = v71;
          v73 = [v71 widthAnchor];

          v74 = [v73 constraintEqualToConstant_];
          v75 = *(v2 + 48);
          *(v2 + 48) = v74;

          v76 = swift_unknownObjectWeakLoadStrong();
          if (v76)
          {
            v77 = v76;
            v78 = v70;
            v46 = [v76 heightAnchor];

            v50 = [v46 constraintEqualToConstant_];
            goto LABEL_27;
          }

LABEL_38:
          __break(1u);
          return;
        }

        goto LABEL_35;
      }

      v39 = swift_unknownObjectWeakLoadStrong();
      if (v39)
      {
        v40 = v39;
        v41 = [v39 widthAnchor];

        v42 = [v41 constraintEqualToConstant_];
        v43 = *(v2 + 48);
        *(v2 + 48) = v42;

        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          v46 = [v44 heightAnchor];

          v47 = v93;
          v48 = v88;
          v89(v93, v33, v88);
          v49 = CGFloat.rounded(_:toScale:)(v47, *&v12, v15 * v35);
          v91(v47, v48);
          v50 = [v46 constraintEqualToConstant_];
LABEL_27:
          v79 = v50;

          v80 = *(v2 + 56);
          *(v2 + 56) = v79;

          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          __swift_project_value_buffer(v81, static Logger.conversationKit);

          v65 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v65, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 134218240;
            [*(v2 + 48) constant];
            *(v83 + 4) = v84;
            *(v83 + 12) = 2048;
            [*(v2 + 56) constant];
            *(v83 + 14) = v85;
            _os_log_impl(&dword_1BBC58000, v65, v82, "Updated enlarged constraints to width=%f, height=%f", v83, 0x16u);
            MEMORY[0x1BFB23DF0](v83, -1, -1);
          }

          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v51 = swift_unknownObjectWeakLoadStrong();
      if (v51)
      {
        v52 = v51;
        v53 = [v51 widthAnchor];

        v54 = v93;
        v55 = v89;
        v89(v93, v33, v34);
        v56 = CGFloat.rounded(_:toScale:)(v54, *&v12, v15 * v35);
        v91(v54, v34);
        v57 = [v53 constraintEqualToConstant_];

        v58 = *(v2 + 48);
        *(v2 + 48) = v57;

        v59 = swift_unknownObjectWeakLoadStrong();
        if (v59)
        {
          v60 = v59;
          v61 = [v59 heightAnchor];

          v62 = [v61 constraintEqualToConstant_];
          v63 = *(v2 + 56);
          *(v2 + 56) = v62;

          v64 = *(v2 + 64);
          v65 = *(v2 + 72);
          [v64 constant];
          v67 = v66 / v15;
          v55(v54, v87, v34);
          v68 = CGFloat.rounded(_:toScale:)(v54, *&v12, v67 * 0.5);
          v91(v54, v34);
          [v65 setConstant:v68 + v68];
LABEL_31:

          return;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }
}

void SmallMultiwayControllerLayout.updateRegularConstraintsForCurrentDeviceOrientation(with:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 40) constant];
  v10 = v9;
  [*(v1 + 32) constant];
  if (v11 < v10)
  {
    v10 = v11;
  }

  if ((*(v1 + 272) | 2) != 3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = [Strong widthAnchor];

      (*(v5 + 104))(v8, *MEMORY[0x1E69E7040], v4);
      SmallMultiwayControllerLayout.displayScale.getter();
      v31 = CGFloat.rounded(_:toScale:)(v8, v30, v10 * a1 * 0.5);
      (*(v5 + 8))(v8, v4);
      v32 = [v29 constraintEqualToConstant_];

      v33 = *(v2 + 32);
      *(v2 + 32) = v32;

      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        v35 = v34;
        v36 = [v34 heightAnchor];

        v37 = [v36 constraintEqualToConstant_];
        v38 = *(v2 + 40);
        *(v2 + 40) = v37;
LABEL_25:

        return;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

  v12 = *(v1 + 176);
  v56[0] = *(v1 + 160);
  v56[1] = v12;
  v57 = *(v1 + 192);
  SmallMultiwayControllerLayout.calculateLocalParticipantEnlargedSize(aspectRatio:)(v56);
  v14 = v13;
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      v17 = [v15 widthAnchor];

      v18 = [v17 constraintEqualToConstant_];
      v19 = *(v2 + 32);
      *(v2 + 32) = v18;

      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 heightAnchor];

        (*(v5 + 104))(v8, *MEMORY[0x1E69E7040], v4);
        SmallMultiwayControllerLayout.displayScale.getter();
        v24 = CGFloat.rounded(_:toScale:)(v8, v23, v10 * a1 * 0.5);
        (*(v5 + 8))(v8, v4);
        v25 = [v22 constraintEqualToConstant_];

        v26 = *(v2 + 40);
        *(v2 + 40) = v25;
LABEL_21:

        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.conversationKit);

        v38 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 134218240;
          [*(v2 + 32) constant];
          *(v53 + 4) = v54;
          *(v53 + 12) = 2048;
          [*(v2 + 40) constant];
          *(v53 + 14) = v55;
          _os_log_impl(&dword_1BBC58000, v38, v52, "Updated regular constraints to width=%f, height=%f", v53, 0x16u);
          MEMORY[0x1BFB23DF0](v53, -1, -1);
        }

        goto LABEL_25;
      }

      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v39 = [v15 heightAnchor];

  [*(v2 + 56) constant];
  v41 = [v39 constraintEqualToConstant_];

  v42 = *(v2 + 40);
  *(v2 + 40) = v41;

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    v45 = [v43 widthAnchor];

    [*(v2 + 40) constant];
    v47 = *(v2 + 160);
    v48 = *(v2 + 168);
    if (*(v2 + 192))
    {
      v47 = 1.0;
      v48 = 1.0;
    }

    if (v48 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    if (v47 <= v48)
    {
      v47 = v48;
    }

    v50 = [v45 constraintEqualToConstant_];

    v26 = *(v2 + 32);
    *(v2 + 32) = v50;
    goto LABEL_21;
  }

LABEL_31:
  __break(1u);
}

BOOL SmallMultiwayControllerLayout.localParticipantViewIsAtBottom(for:)(uint64_t a1)
{
  v1 = *(a1 + 17);
  if (!(v1 >> 6))
  {
    return (v1 & 0xFE) == 2;
  }

  if (v1 >> 6 == 1)
  {
    LOBYTE(v1) = v1 & 0x3F;
    return (v1 & 0xFE) == 2;
  }

  return 0;
}

uint64_t SmallMultiwayControllerLayout.deinit()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 136);

  MEMORY[0x1BFB23F10](v0 + 224);
  MEMORY[0x1BFB23F10](v0 + 232);
  MEMORY[0x1BFB23F10](v0 + 240);

  return v0;
}

uint64_t SmallMultiwayControllerLayout.__deallocating_deinit()
{
  SmallMultiwayControllerLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for InCallBannerViewConstraintManager();
  v10 = &protocol witness table for InCallBannerViewConstraintManager;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v8, v6 + 40 * a1 + 32);
}

{
  v8 = type metadata accessor for ReactionNotice(0);
  v9 = &protocol witness table for ReactionNotice;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  outlined init with take of Collaboration();
  v5 = *a3;
  *(v5 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v7, v5 + 40 * a1 + 32);
}

unint64_t lazy protocol witness table accessor for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation()
{
  result = lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation;
  if (!lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation;
  if (!lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[32])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState()
{
  result = lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState;
  if (!lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState;
  if (!lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState);
  }

  return result;
}

uint64_t ConversationControlsMoreMenuButtonProvider.moreMenuButtonDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of ConversationControlsMoreMenuButtonDelegate?(a1, v1 + 192);
  return swift_endAccess();
}

Swift::Void __swiftcall ConversationControlsMoreMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  ControlsButtonProvider.buttonChanged()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    type metadata accessor for ConversationControlsButton();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v31 = v10;
      v18 = objc_opt_self();
      v30 = v4;
      v19 = v18;
      v29 = v15;
      v20 = [v19 conversationKit];
      v32._object = 0xE000000000000000;
      v21.value._countAndFlagsBits = 0x61737265766E6F43;
      v21.value._object = 0xEF74694B6E6F6974;
      v22._object = 0x80000001BC507B10;
      v22._countAndFlagsBits = 0xD00000000000001BLL;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v32);

      v25 = (v17 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      swift_beginAccess();
      *v25 = v24;
      v4 = v30;
      v10 = v31;

      ConversationControlsButton.localizedName.didset();
    }

    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x756E654D65726F6DLL, 0xEE006E6F74747542, v15);
    [v15 addTarget:v1 action:sel_moreMenuButtonPressed forControlEvents:64];
    v26 = ConversationControlsMoreMenuButtonProvider.setUpCountdownButton()();
    (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x878))(v26);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ForegroundApp?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd);
    lazy protocol witness table accessor for type ForegroundApp? and conformance <A> A?();
    Publisher<>.removeDuplicates()();
    (*(v4 + 8))(v7, v2);
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<ForegroundApp?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd);
    v27 = Publisher<>.sink(receiveValue:)();

    (*(v10 + 8))(v13, v8);
    *(v1 + 184) = v27;
  }
}

uint64_t ConversationControlsMoreMenuButtonProvider.setUpCountdownButton()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - v5;
  v9[1] = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x740))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState();
  Publisher<>.removeDuplicates()();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<ShareMenuActionState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
  v7 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v2);
  *(v1 + 232) = v7;
}

uint64_t closure #1 in ConversationControlsMoreMenuButtonProvider.buttonChanged()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40) <= 1u)
    {
      v1._object = 0x80000001BC5012A0;
      v1._countAndFlagsBits = 0xD000000000000016;
      ConversationControlsMenuButtonProvider.dismissMenu(context:)(v1);
    }
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsMoreMenuButtonProvider.shouldEnableMenu()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (Features.isMoreMenuEnabled.getter() & 1) == 0;
}

Swift::Void __swiftcall ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed()()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x2A0))();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && (v2 = v1, type metadata accessor for CallCenterFacade(), static CallCenterFacade.shared.getter(), v3 = [v2 uniqueProxyIdentifier], static String._unconditionallyBridgeFromObjectiveC(_:)(), v3, v4 = CallCenterFacade.call(with:)(), , , v4))
  {

    static CallCenterFacade.shared.getter();
    v5 = type metadata accessor for FTMenuItemStateProvider();
    swift_allocObject();
    v6 = FTMenuItemStateProvider.init(call:callCenter:)();
    v7 = *(v0 + 40);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v10[3] = v5;
    v10[4] = MEMORY[0x1E6995F68];
    v10[0] = v6;
    v9 = swift_allocObject();
    swift_weakInit();

    ConversationControlsManager.presentMoreMenu(isBannerView:source:arrowDirection:provider:alongsideTransition:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)(v7 != 2, Strong, 15, v10, 0, 0, TPNumberPadCharacter.rawValue.getter, 0, partial apply for closure #2 in ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed(), v9, TPNumberPadCharacter.rawValue.getter, 0, TPNumberPadCharacter.rawValue.getter, 0);

    swift_unknownObjectRelease();
    outlined destroy of TapInteractionHandler?(v10, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMd);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void closure #2 in ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 160);

    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(v2);

    if (v3)
    {
      swift_beginAccess();
      v4 = swift_weakLoadStrong();
      if (v4)
      {
        v5 = v4;
        swift_beginAccess();
        outlined init with copy of ConversationControlsMoreMenuButtonDelegate?(v5 + 192, &v12);

        if (*(&v13 + 1))
        {
          outlined init with take of TapInteractionHandler(&v12, v15);
          type metadata accessor for ConversationHUDDetailsViewController();
          v6 = v16;
          v7 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          (*(v7 + 8))(v6, v7);
          swift_getObjectType();
          specialized static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)();
          v9 = v8;
          swift_unknownObjectRelease();
          v10 = v16;
          v11 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          (*(v11 + 16))(v9, v10, v11);

          __swift_destroy_boxed_opaque_existential_1(v15);
          return;
        }
      }

      else
      {

        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }

      outlined destroy of TapInteractionHandler?(&v12, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
    }
  }
}

Swift::Void __swiftcall ConversationControlsMoreMenuButtonProvider.didLayoutSubviews(button:)(UIButton *button)
{
  ControlsButtonProvider.didLayoutSubviews(button:)(button);
  v2 = ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter();
  v3 = [v2 layer];

  [(UIButton *)button bounds];
  [v3 setCornerRadius_];
}

void *ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v0 + 240);
  }

  else
  {
    v3 = closure #1 in ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter(v0);
    v4 = *(v0 + 240);
    *(v0 + 240) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *closure #1 in ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CountdownLabelView()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setHidden_];

  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))(0, 0, 0);
  [v2 addTarget:a1 action:sel_screenSharingButtonPressed forControlEvents:64];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong addSubview_];
    v6 = *MEMORY[0x1E69DC5C0];
    v7 = *(MEMORY[0x1E69DC5C0] + 8);
    v8 = *(MEMORY[0x1E69DC5C0] + 16);
    v9 = *(MEMORY[0x1E69DC5C0] + 24);
    v10 = v5;
    v14.top = v6;
    v14.leading = v7;
    v14.bottom = v8;
    v14.trailing = v9;
    UIView.addConstraintsToFill(_:insets:)(v10, v14);
  }

  v11 = *(a1 + 160);
  v12 = ConversationControlsMoreMenuButtonProvider.countdownEphemeralAlert.getter();
  (*((*v3 & *v11) + 0x8E0))(v12);
  return v2;
}

Class ConversationControlsMoreMenuButtonProvider.countdownEphemeralAlert.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  v16._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x535F4E4545524353;
  v2._object = 0xEE00474E49524148;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v16);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);
  v6.super.isa = NSAttributedString.__allocating_init(string:)(v5).super.isa;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = (*(*static Defaults.shared + 192))();
  if (v7)
  {
    v8 = 0xD00000000000002ELL;
  }

  else
  {
    v8 = 0xD00000000000002FLL;
  }

  if (v7)
  {
    v9 = "RTED_SUBTITLE_NOTIFICATIONS_OFF";
  }

  else
  {
    v9 = "SCREEN_SHARING_STOP";
  }

  v10 = [v0 conversationKit];
  v17._object = 0xE000000000000000;
  v11._object = (v9 | 0x8000000000000000);
  v11._countAndFlagsBits = v8;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

  NSAttributedString.__allocating_init(string:)(v14);
  return v6.super.isa;
}

uint64_t closure #1 in ConversationControlsMoreMenuButtonProvider.setUpCountdownButton()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = Optional<A>.localizedString(style:)(0, v1, v2);
      v9 = v8;
      v10 = ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter();
      [v10 setHidden_];

      v11 = *(v4 + 240);
      v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x90);
      v13 = v11;
      v12(v2 ^ 1, v7, v9);

      v14 = [v6 imageView];
      if (v14)
      {
        v15 = v14;
        [v14 setHidden_];
      }
    }
  }

  return result;
}

uint64_t Optional<A>.localizedString(style:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v8 = [v6 localizedStringFromNumber:v7 numberStyle:a1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void ConversationControlsMoreMenuButtonProvider.screenSharingButtonPressed()()
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
    _os_log_impl(&dword_1BBC58000, v3, v4, "Stopped screen sharing countdown", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = *(v1 + 160);
  ConversationControlsManager.stopScreenShare()();
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x8E0))(0, 0, 0);
  v8 = ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter();
  [v8 setHidden_];

  v9 = *(v1 + 240);
  v10 = *((*v7 & *v9) + 0x90);
  v11 = v9;
  v10(0, 0, 0);
}

uint64_t @objc ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t ConversationControlsMoreMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)()
{
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  return ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
}

uint64_t outlined assign with take of ConversationControlsMoreMenuButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void ConversationControlsMoreMenuButtonProvider.__ivar_destroyer()
{

  outlined destroy of TapInteractionHandler?(v0 + 192, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);

  v1 = *(v0 + 240);
}

uint64_t ConversationControlsMoreMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  outlined destroy of TapInteractionHandler?(v0 + 192, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);

  return v0;
}

uint64_t ConversationControlsMoreMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsMoreMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AccessibilityVoiceOverModifier.voiceOverEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a3);
    (*(v7 + 8))(v9, v6);
    LOBYTE(a3) = v12[15];
  }

  return a3 & 1;
}

uint64_t AccessibilityVoiceOverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  v13 = a5 & 1;
  *(v12 + 40) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit022AccessibilityVoiceOverD0VGMd);
  (*(*(v14 - 8) + 16))(a6, a1, v14);
  v15 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit022AccessibilityVoiceOverF0VGAA017_AppearanceActionF0VGMd) + 36));
  *v15 = partial apply for closure #1 in AccessibilityVoiceOverModifier.body(content:);
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = 0;

  return outlined copy of Environment<Edge>.Content(a4, v13);
}

void closure #1 in AccessibilityVoiceOverModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a3);
    (*(v9 + 8))(v12, v8);
    if (v16[15] != 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    v14 = *MEMORY[0x1E69DD888];
    v15 = MEMORY[0x1BFB209B0](a1, a2, v10);
    UIAccessibilityPostNotification(v14, v15);
  }
}

uint64_t View.voiceOver(toSpeak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x1BFB1FAD0](v7, a3, &type metadata for AccessibilityVoiceOverModifier, a4);
}

uint64_t getEnumTagSinglePayload for AccessibilityVoiceOverModifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AccessibilityVoiceOverModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit022AccessibilityVoiceOverF0VGAA017_AppearanceActionF0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit022AccessibilityVoiceOverD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier);
  }

  return result;
}

uint64_t PreCallButtonsViewModel.currentPreCallContext.getter()
{
  PreCallButtonsViewModel.contextSubject.getter();
  CurrentValueSubject.value.getter();
}

uint64_t PreCallButtonsViewModel.preCallDelegate.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel();
  OUTLINED_FUNCTION_1_12();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t key path getter for PreCallButtonsViewModel.preCallDelegate : PreCallButtonsViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = PreCallButtonsViewModel.preCallDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t PreCallButtonsViewModel.preCallDelegate.setter()
{
  swift_getKeyPath();
  specialized PreCallButtonsViewModel.withMutation<A, B>(keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t PreCallButtonsViewModel.preCallDelegate.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t closure #1 in PreCallButtonsViewModel.preCallDelegate.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*PreCallButtonsViewModel.preCallDelegate.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit23PreCallButtonsViewModel___observationRegistrar;
  *v3 = v1;
  v3[5] = lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return PreCallButtonsViewModel.preCallDelegate.modify;
}

void PreCallButtonsViewModel.preCallDelegate.modify(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t PreCallButtonsViewModel.__allocating_init(preCallDelegate:)()
{
  v0 = swift_allocObject();
  PreCallButtonsViewModel.init(preCallDelegate:)();
  return v0;
}

void *PreCallButtonsViewModel.init(preCallDelegate:)()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  swift_allocObject();
  v0[5] = CurrentValueSubject.init(_:)();
  ObservationRegistrar.init()();
  PreCallButtonsViewModel.preCallDelegate.setter();
  return v0;
}

uint64_t PreCallButtonsViewModel.contextSubject.setter(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized PreCallButtonsViewModel.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t PreCallButtonsViewModel.contextSubject.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel();
  OUTLINED_FUNCTION_1_12();
}

unint64_t lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel()
{
  result = lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel;
  if (!lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel)
  {
    type metadata accessor for PreCallButtonsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel);
  }

  return result;
}

uint64_t type metadata accessor for PreCallButtonsViewModel()
{
  result = type metadata singleton initialization cache for PreCallButtonsViewModel;
  if (!type metadata singleton initialization cache for PreCallButtonsViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreCallButtonsViewModel.preCallContexts.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  v6[1] = PreCallButtonsViewModel.contextSubject.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  lazy protocol witness table accessor for type PreCallControlsContext? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<PreCallControlsContext?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void PreCallButtonsViewModel.setPreCallContext(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  PreCallButtonsViewModel.contextSubject.getter();
  outlined copy of PreCallControlsContext(v1);
  CurrentValueSubject.send(_:)();

  outlined consume of PreCallControlsContext?(v1, v2);
}

Swift::Void __swiftcall PreCallButtonsViewModel.clearPreCallContext()()
{
  PreCallButtonsViewModel.contextSubject.getter();
  CurrentValueSubject.send(_:)();
}

uint64_t closure #1 in PreCallButtonsViewModel.contextSubject.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

uint64_t PreCallButtonsViewModel.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15ConversationKit23PreCallButtonsViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PreCallButtonsViewModel.__deallocating_deinit()
{
  PreCallButtonsViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for PreCallButtonsViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

id IntelligenceRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_50_1();
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v8 = type metadata accessor for Features();
  v9 = [objc_allocWithZone(v8) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E6995EE0];
  v12 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v12[3] = v0;
  v12[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v0);
  v14 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v14[3] = v8;
  v14[4] = &protocol witness table for Features;
  *v14 = v9;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v2 + 8))(v6, v0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return v7;
}

uint64_t IntelligenceRecipeGenerator.liveVoicemailOngoingRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v102 = a2;
  v109 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_10(v100 - v5);
  v101 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v100[2] = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10(v100 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_10(v100 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = v100 - v13;
  v108 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10(v100 - v18);
  v19 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = v24 - v23;
  v26 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = *MEMORY[0x1E69E7D40] & *a1;
  v106 = *(v33 + 0x2A0);
  v107 = v33 + 672;
  v106();
  v35 = v34;
  ObjectType = swift_getObjectType();
  (*(v35 + 48))(v111, ObjectType, v35);
  swift_unknownObjectRelease();
  __dst[3] = &type metadata for ScreeningStatusOverride;
  __dst[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_50_1();
  __dst[0] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  CallScreeningService.screeningStatusForCall(_:)();
  (*(v21 + 8))(v25, v19);
  LODWORD(v35) = (*(v28 + 88))(v32, v26);
  v37 = *MEMORY[0x1E6995EA0];
  (*(v28 + 8))(v32, v26);
  if (v35 != v37)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v65 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v65, &static Logger.conversationControls);
    v66 = a1;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v108;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      __dst[0] = v72;
      *v71 = 136315138;
      v73 = (v106)();
      swift_getObjectType();
      __dst[10] = v73;
      v74 = String.init<A>(describing:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, __dst);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_1BBC58000, v67, v68, "liveVoicemailOngoingRecipe: No call with Live Voicemail screening status, call: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    __swift_destroy_boxed_opaque_existential_1(v111);
    OUTLINED_FUNCTION_10_0();
    v64 = v70;
    return __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  }

  if (!SBUIIsSystemApertureEnabled())
  {
    __swift_destroy_boxed_opaque_existential_1(v111);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v38 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v39.super.isa = v38;
  v42 = OUTLINED_FUNCTION_17_0(0xD000000000000019, 0x80000001BC507C50, v40, v41, v39);
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  v46.super.isa = NSAttributedString.__allocating_init(string:)(v45).super.isa;
  v47 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v51 = v108;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v47);
  v55 = &v16[v51[10]];
  v56 = &v16[v51[15]];
  v16[v51[16]] = 0;
  v57 = &v16[v51[17]];
  v58 = &v16[v51[18]];
  *v58 = 1;
  *(v58 + 8) = 0u;
  *(v58 + 24) = 0u;
  *(v58 + 40) = 0u;
  *(v58 + 56) = 0u;
  v58[72] = 0;
  *v16 = 20;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 7;
  v59 = MEMORY[0x1E69E7CC0];
  *(v16 + 3) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 10) = v46;
  *(v16 + 11) = v59;
  *v55 = 0;
  *(v55 + 1) = 0;
  *(v55 + 2) = 0;
  outlined assign with take of AttributedString?();
  v16[v51[11]] = 2;
  v16[v51[12]] = 0;
  *&v16[v51[13]] = 1;
  *&v16[v51[14]] = 1;
  *v57 = 0;
  *(v57 + 1) = 0;
  v57[16] = -1;
  *v56 = 0u;
  *(v56 + 1) = 0u;
  *(v56 + 4) = 0;
  v56[40] = -2;
  OUTLINED_FUNCTION_1_28();
  v60 = v105;
  _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
  OUTLINED_FUNCTION_26_29();
  outlined destroy of ConversationControlsRecipe(v16, v46.super.isa);
  if (__swift_getEnumTagSinglePayload(v60, 1, v51) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v111);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_10_0();
    v64 = v51;
    return __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  }

  v78 = v104;
  _s15ConversationKit0A14ControlsRecipeVWObTm_0();
  v79 = v103;
  SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, a1);
  if (__swift_getEnumTagSinglePayload(v79, 1, v101) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v111);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v79, &_s15ConversationKit18SystemApertureIconVSgMd);
  }

  else
  {
    v80 = v100[1];
    _s15ConversationKit0A14ControlsRecipeVWObTm_0();
    v81 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v82 = (v106)();
    v84 = v83;
    v85 = [objc_opt_self() clearColor];
    v86 = swift_getObjectType();
    v87 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v82, 0, 0, v85, v81, v86, v84);
    v88 = objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallLeadingView());
    v89 = SystemApertureIncomingCallLeadingView.init(avatar:)(v87);
    _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
    v90 = type metadata accessor for SystemApertureIconView(0);
    v91 = objc_allocWithZone(v90);
    SystemApertureIconView.init(icon:isDetached:)();
    v93 = v92;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
    v94 = objc_allocWithZone(v90);
    SystemApertureIconView.init(icon:isDetached:)();
    v96 = v95;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
    v97 = objc_allocWithZone(v90);
    SystemApertureIconView.init(icon:isDetached:)();
    v99 = v98;
    outlined destroy of ConversationControlsRecipe(v80, type metadata accessor for SystemApertureIcon);
    __swift_destroy_boxed_opaque_existential_1(v111);
    v46.super.isa = (v78 + v51[18]);
    memcpy(__dst, v46.super.isa, 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
    *v46.super.isa = v89;
    *(v46.super.isa + 1) = &protocol witness table for SystemApertureIncomingCallLeadingView;
    *(v46.super.isa + 2) = v93;
    *(v46.super.isa + 3) = &protocol witness table for SystemApertureIconView;
    *(v46.super.isa + 4) = v96;
    *(v46.super.isa + 5) = &protocol witness table for SystemApertureIconView;
    *(v46.super.isa + 6) = v99;
    *(v46.super.isa + 7) = &protocol witness table for SystemApertureIconView;
    *(v46.super.isa + 8) = 3;
    *(v46.super.isa + 72) = 0x80;
  }

  OUTLINED_FUNCTION_1_28();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
  OUTLINED_FUNCTION_26_29();
  return outlined destroy of ConversationControlsRecipe(v78, v46.super.isa);
}

uint64_t IntelligenceRecipeGenerator.callScreeningIncomingCallRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_14_43();
  v1 = v0;
  v2 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E6995EB0], v2);
  OUTLINED_FUNCTION_5_91();
  v13 = IntelligenceRecipeGenerator.getScreeningCall(with:controlsManager:)(v9, v10, v11, v12);
  (*(v4 + 8))(v8, v2, v13);
  v14 = v52;
  v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s20CommunicationsUICore9BasicCall_pSgMd);
  if (!v14)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v36, &static Logger.conversationControls);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_163(v38))
    {
      goto LABEL_13;
    }

    v39 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25_31(v39);
    v42 = "Fail to generate call screening recipe for incoming call because no screening call found with state .screening";
    goto LABEL_12;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v15);
  objc_opt_self();
  v16 = OUTLINED_FUNCTION_20_34();
  if (v16)
  {
    v17 = [v16 displayName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v22.super.isa = v21;
    v50 = OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC507C70, v23, v24, v22);
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    OUTLINED_FUNCTION_109();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BC4BA940;
    *(v27 + 32) = v18;
    *(v27 + 40) = v20;
    v52 = 22;
    v53 = 0u;
    v54 = 0u;
    v55 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
    type metadata accessor for ConversationControlsAction();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BC4BA940;
    swift_storeEnumTagMultiPayload();
    v51[0] = v50;
    v51[1] = v26;
    v51[2] = v27;
    v56 = v28;
    v57 = 254;
    v58 = 0;
    OUTLINED_FUNCTION_5_91();
    IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v29, v30, v31, v32, v33, v34);
    swift_unknownObjectRelease();
    return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v51);
  }

  swift_unknownObjectRelease();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v43 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v43, &static Logger.conversationControls);
  v37 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_163(v44))
  {
    v45 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25_31(v45);
    v42 = "Fail to generate call screening recipe for call because there was no call found";
LABEL_12:
    OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v40, v41, v42);
    OUTLINED_FUNCTION_27();
  }

LABEL_13:

  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_10_0();
  return __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
}

uint64_t IntelligenceRecipeGenerator.callScreeningRingingCallRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_14_43();
  v1 = v0;
  v2 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  static CallScreeningStatus.screened.getter();
  OUTLINED_FUNCTION_5_91();
  v13 = IntelligenceRecipeGenerator.getScreeningCall(with:controlsManager:)(v9, v10, v11, v12);
  (*(v4 + 8))(v8, v2, v13);
  v14 = v87;
  v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s20CommunicationsUICore9BasicCall_pSgMd);
  if (!v14)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v35, &static Logger.conversationControls);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_15;
    }

    v38 = OUTLINED_FUNCTION_33();
    *v38 = 0;
    v39 = "Fail to generate call screening recipe for ringing call because no screening call found with state .screened";
    goto LABEL_14;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v15);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v40, &static Logger.conversationControls);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_15;
    }

    v38 = OUTLINED_FUNCTION_33();
    *v38 = 0;
    v39 = "Fail to generate call screening recipe for call because there was no call found";
LABEL_14:
    _os_log_impl(&dword_1BBC58000, v36, v37, v39, v38, 2u);
    OUTLINED_FUNCTION_27();
LABEL_15:

    type metadata accessor for ConversationControlsRecipe();
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }

  v17 = v16;
  v18 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v16);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v23.super.isa = v22;
    OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC4FDAC0, v24, v25, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BA940;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v26 + 32) = v20;
    *(v26 + 40) = v21;
    v27 = String.init(format:_:)();
    OUTLINED_FUNCTION_21_32(v27, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA940;
    v30 = [v17 handle];
    if (v30)
    {
      v31 = v30;
      v32 = TUHandle.formattedValue.getter();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    *(inited + 32) = v32;
    *(inited + 40) = v34;
    v54 = MEMORY[0x1E69E7CC0];
    v55 = *(inited + 40);
    if (v55)
    {
      v56 = *(inited + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_32();
        v54 = v59;
      }

      v57 = v54[2];
      if (v57 >= v54[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v54 = v60;
      }

      v54[2] = v57 + 1;
      v58 = &v54[2 * v57];
      v58[4] = v56;
      v58[5] = v55;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v46 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v17);
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      v50 = [v17 handle];
      if (v50)
      {
        v51 = v50;
        v52 = TUHandle.formattedValue.getter();
        OUTLINED_FUNCTION_21_32(v52, v53);
      }

      else
      {
        OUTLINED_FUNCTION_15_40();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      OUTLINED_FUNCTION_109();
      v54 = swift_allocObject();
      *(v54 + 1) = xmmword_1BC4BA940;
      v54[4] = v48;
      v54[5] = v49;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd);
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_1BC4BA940;
      v62 = [v17 handle];
      if (v62)
      {
        v63 = v62;
        v64 = TUHandle.formattedValue.getter();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0;
      }

      *(v61 + 32) = v64;
      *(v61 + 40) = v66;
      v54 = MEMORY[0x1E69E7CC0];
      v67 = *(v61 + 40);
      if (v67)
      {
        v68 = *(v61 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_32();
          v54 = v71;
        }

        v69 = v54[2];
        if (v69 >= v54[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v72;
        }

        v54[2] = v69 + 1;
        v70 = &v54[2 * v69];
        v70[4] = v68;
        v70[5] = v67;
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      OUTLINED_FUNCTION_15_40();
    }
  }

  v87 = 21;
  v88 = 0u;
  v89 = 0u;
  v90 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  v73 = *(type metadata accessor for ConversationControlsAction() - 8);
  v74 = *(v73 + 72);
  v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1BC4BAA20;
  v77 = (v76 + v75);
  static ConversationControlsAction.rejectCall(controlsManager:)(v1, v77);
  static ConversationControlsAction.acceptCall(controlsManager:)(v1, &v77[v74]);
  v86[0] = v85;
  v86[1] = v84;
  v86[2] = v54;
  v91 = v76;
  v92 = 0;
  v93 = 0;
  OUTLINED_FUNCTION_5_91();
  IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v78, v79, v80, v81, v82, v83);
  swift_unknownObjectRelease();
  return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v86);
}

uint64_t IntelligenceRecipeGenerator.waitOnHoldRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  objc_opt_self();
  v10 = OUTLINED_FUNCTION_20_34();
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v13.super.isa = v12;
    v18 = OUTLINED_FUNCTION_17_0(v14, v15, v16, v17, v13);
    v36 = v19;
    v37 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    OUTLINED_FUNCTION_109();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BC4BA940;
    v21 = [v11 waitOnHoldSubtitle];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v39 = 0u;
    v40 = 0u;
    v41 = 7;
    v38[0] = v37;
    v38[1] = v36;
    v38[2] = v20;
    v38[3] = 28;
    v42 = MEMORY[0x1E69E7CC0];
    v43 = 128;
    v44 = 1;
    IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(a1, v38, a2, a3, a4, a5);
    swift_unknownObjectRelease();
    return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v38);
  }

  else
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v26, &static Logger.conversationControls);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v28))
    {
      v29 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v29);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v30, v31, "Fail to generate WOH recipe for call because there was no call found");
      OUTLINED_FUNCTION_27();
    }

    type metadata accessor for ConversationControlsRecipe();
    OUTLINED_FUNCTION_10_0();

    return __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  }
}

uint64_t IntelligenceRecipeGenerator.waitOnHoldRequiresUserAttentionRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_14_43();
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0);
  v2();
  objc_opt_self();
  v3 = OUTLINED_FUNCTION_20_34();
  v4 = swift_unknownObjectRelease();
  if (v3)
  {
    (v2)(v4);
    objc_opt_self();
    v5 = OUTLINED_FUNCTION_20_34();
    if (v5)
    {
      v6 = [v5 waitOnHoldSubtitle];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v28 = 7;
      v26 = 0u;
      v27 = 0u;
      v25[0] = v7;
      v25[1] = v9;
      v25[2] = MEMORY[0x1E69E7CC0];
      v25[3] = 29;
      v29 = MEMORY[0x1E69E7CC0];
      v30 = 1;
      v31 = 1;
      OUTLINED_FUNCTION_5_91();
      IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v10, v11, v12, v13, v14, v15);
      swift_unknownObjectRelease();
      return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v25);
    }

    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v19))
    {
      v20 = OUTLINED_FUNCTION_33();
      *v20 = 0;
      _os_log_impl(&dword_1BBC58000, v18, v0, "Fail to generate WOH recipe for call because there was no call found", v20, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_10_0();

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t IntelligenceRecipeGenerator.waitOnHoldHoldDetectedRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v10();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v12 = swift_unknownObjectRelease();
  if (v11)
  {
    (v10)(v12);
    objc_opt_self();
    if (OUTLINED_FUNCTION_20_34())
    {
      v39 = a5;
      v38 = a3;
      v13 = objc_opt_self();
      v14 = [v13 conversationKit];
      v37 = a2;
      v15.super.isa = v14;
      v16 = OUTLINED_FUNCTION_17_0(0xD000000000000012, 0x80000001BC507C90, 0x61737265766E6F43, 0xEF74694B6E6F6974, v15);
      v17 = a4;
      v19 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      OUTLINED_FUNCTION_109();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1BC4BA940;
      v21 = [v13 conversationKit];
      v22.super.isa = v21;
      v23 = OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC500610, 0x61737265766E6F43, 0xEF74694B6E6F6974, v22);
      v25 = v24;

      *(v20 + 32) = v23;
      *(v20 + 40) = v25;
      v41 = 0u;
      v42 = 0u;
      v43 = 7;
      v40[0] = v16;
      v40[1] = v19;
      v40[2] = v20;
      v40[3] = 30;
      v44 = MEMORY[0x1E69E7CC0];
      v45 = 257;
      v46 = 1;
      IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(a1, v40, v37, v38, v17, v39);
      swift_unknownObjectRelease();
      return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v40);
    }

    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v27, &static Logger.conversationControls);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v29))
    {
      v30 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v30);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v31, v32, "Fail to generate WOH recipe for call because there was no call found");
      OUTLINED_FUNCTION_27();
    }
  }

  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_10_0();

  return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
}

uint64_t IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v169 = a5;
  v178 = a4;
  v168 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v172 = &v153 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v173 = &v153 - v12;
  v13 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v165 = &v153 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v153 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  MEMORY[0x1EEE9AC00](v23);
  v159 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v153 - v26;
  v167 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v167);
  v157 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v163 = &v153 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v153 - v33;
  v35 = *MEMORY[0x1E69E7D40] & *a1;
  v36 = *(v35 + 0x2A0);
  v179 = a1;
  v156 = v35 + 672;
  v155 = v36;
  v37 = v36(v32);
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v162 = a6;
    v39 = *(a2 + 82) == 1;
    v158 = a2;
    v176 = v37;
    v180 = v38;
    v164 = v19;
    if (!v39)
    {
      v46 = v18;
      v47 = 0;
      goto LABEL_14;
    }

    v40 = v38;
    v41 = [v38 provider];
    v42 = [v41 isSystemProvider];

    if (v42)
    {
      v43 = [v40 provider];
      v44 = [v43 isTelephonyProvider];

      if (v44)
      {
        v46 = v18;
LABEL_12:
        a2 = v158;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = static UIImageView.appIcon(for:)(v50, v51);

        v47 = [v52 image];

        goto LABEL_14;
      }

      v48 = [v40 provider];
      v49 = [v48 isFaceTimeProvider];

      if (v49)
      {
        v46 = v18;
        goto LABEL_12;
      }
    }

    v46 = v18;
    v47 = 0;
    a2 = v158;
LABEL_14:
    v53 = objc_opt_self();
    swift_unknownObjectRetain();
    v153 = v53;
    v54 = [v53 clearColor];
    v166 = v47;
    v174 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v180, 0, v47, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgSgMd);
    v177 = swift_allocBox();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v23);
    v56 = 0;
    v57 = 0;
    v58 = v46;
    v59 = v164;
    if ((*(a2 + 81) & 1) == 0)
    {
      getter of statusIcon #1 in IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v179, v27);
      if (__swift_getEnumTagSinglePayload(v27, 1, v167) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s15ConversationKit18SystemApertureIconVSgMd);
        v56 = 0;
        v57 = 0;
      }

      else
      {
        _s15ConversationKit0A14ControlsRecipeVWObTm_0();
        _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
        v60 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
        SystemApertureIconView.init(icon:isDetached:)();
        v62 = v61;
        Hasher.init(_seed:)();
        v63 = v62;
        ConversationControlsType.hash(into:)();
        v56 = Hasher._finalize()();
        v57 = v62;
        outlined destroy of ConversationControlsRecipe(v34, type metadata accessor for SystemApertureIcon);
      }
    }

    v175 = v56;
    v64 = [v180 imageURL];
    if (!v64 || (v65 = v64, v66 = v170, static URL._unconditionallyBridgeFromObjectiveC(_:)(), v65, v67 = v171, (v59)[4](v171, v66, v58), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage), v68._countAndFlagsBits = URL.relativePath.getter(), v69 = UIImage.__allocating_init(contentsOfFile:)(v68), (v59[1])(v67, v58), !v69))
    {
      ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v179, v174);
      v72 = v73;
      v75 = v74;
      v77 = v76;
      outlined copy of PreCallControlsContext(v73);
LABEL_28:
      v170 = v75;
      v171 = v72;
      v164 = v57;
      outlined init with copy of ConversationControlsType(a2 + 24, v183);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v80 = *a2;
      v81 = *(a2 + 8);

      v82._countAndFlagsBits = v80;
      v82._object = v81;
      isa = NSAttributedString.__allocating_init(string:)(v82).super.isa;
      v83 = *(a2 + 16);
      v84 = *(v83 + 16);
      v85 = MEMORY[0x1E69E7CC0];
      if (v84)
      {
        __dst[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v86 = (v83 + 40);
        do
        {
          v87 = *(v86 - 1);
          v88 = *v86;

          v89._countAndFlagsBits = v87;
          v89._object = v88;
          NSAttributedString.__allocating_init(string:)(v89);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v86 += 2;
          --v84;
        }

        while (v84);
        v85 = __dst[0];
      }

      v160 = v85;
      v90 = type metadata accessor for AttributedString();
      v91 = v172;
      __swift_storeEnumTagSinglePayload(v172, 1, 1, v90);
      v154 = v77;
      v92 = v77 & 1;
      v93 = v13[9];
      __swift_storeEnumTagSinglePayload(v15 + v93, 1, 1, v90);
      v94 = (v15 + v13[10]);
      v95 = v13[15];
      *(v15 + v13[16]) = 0;
      v96 = v15 + v95;
      v97 = v15 + v13[17];
      v98 = v15 + v13[18];
      *v98 = 1;
      *(v98 + 8) = 0u;
      *(v98 + 24) = 0u;
      *(v98 + 40) = 0u;
      *(v98 + 56) = 0u;
      v98[72] = 0;
      outlined init with copy of ConversationControlsType(v183, v15);
      v99 = v164;
      v15[6] = 0;
      v15[7] = v99;
      v100 = v175;
      v15[8] = 0;
      v15[9] = v100;
      v101 = v160;
      v15[10] = isa;
      v15[11] = v101;
      v94[1] = 0;
      v94[2] = 0;
      *v94 = 0;
      v102 = v99;
      outlined copy of ConversationControlsRecipe.View?(v99, 0);
      outlined assign with copy of AttributedString?(v91, v15 + v93);
      *(v15 + v13[11]) = 2;
      *(v15 + v13[12]) = 1;
      *(v15 + v13[13]) = 1;
      *(v15 + v13[14]) = 1;
      v103 = v171;
      v104 = v170;
      *v97 = v171;
      *(v97 + 1) = v104;
      v97[16] = v92;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(v183);
      *v96 = MEMORY[0x1E69E7CC0];
      *(v96 + 8) = 0u;
      *(v96 + 24) = 0u;
      v96[40] = 0;
      v105 = v173;
      _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v13);
      outlined destroy of ConversationControlsRecipe(v15, type metadata accessor for ConversationControlsRecipe);
      if (__swift_getEnumTagSinglePayload(v105, 1, v13) == 1)
      {

        outlined consume of ConversationControlsRecipe.View?(v102, 0);
        outlined consume of PreCallControlsContext(v103);

        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        __swift_storeEnumTagSinglePayload(v162, 1, 1, v13);
      }

      else
      {
        v106 = v165;
        _s15ConversationKit0A14ControlsRecipeVWObTm_0();
        *(v106 + v13[16]) = 1;
        if (SBUIIsSystemApertureEnabled())
        {
          v107 = v159;
          getter of statusIcon #1 in IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v179, v159);
          if (__swift_getEnumTagSinglePayload(v107, 1, v167) == 1)
          {

            outlined consume of ConversationControlsRecipe.View?(v102, 0);
            outlined consume of PreCallControlsContext(v171);

            swift_unknownObjectRelease();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit18SystemApertureIconVSgMd);
          }

          else
          {
            v108 = v157;
            _s15ConversationKit0A14ControlsRecipeVWObTm_0();
            outlined init with copy of ConversationControlsType(v158 + 24, __dst);
            if (LOBYTE(__dst[5]) == 7 && __dst[0] == 30 && (v109 = vorrq_s8(*&__dst[1], *&__dst[3]), !*&vorr_s8(*v109.i8, *&vextq_s8(v109, v109, 8uLL))))
            {
              v110 = type metadata accessor for SystemApertureInCallLeadingView();
              v111 = v163;
              v112 = _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
              v113 = (v155)(v112);
              v115 = v114;
              ObjectType = swift_getObjectType();
              v181 = v113;
              v117 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v111, &v181, v110, ObjectType, *(v115 + 8));
              type metadata accessor for SystemApertureInCallWaveformTrailingView();
              swift_unknownObjectRetain();
              v118 = v117;
              static WaveformConfigurations.inCallNumberOfBands.getter();
              v119 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v180);
              v180 = &protocol witness table for SystemApertureInCallLeadingView;
              v120 = &protocol witness table for SystemApertureInCallWaveformTrailingView;
            }

            else
            {
              if (v102)
              {
                v180 = &protocol witness table for SystemApertureIconView;
                v121 = v102;
              }

              else
              {
                v122 = v179;
                v123 = *((*MEMORY[0x1E69E7D40] & *v179) + 0x2C0);
                v124 = swift_unknownObjectRetain();
                v125 = v123(v124);
                v126 = [v153 clearColor];
                v127 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v180, v125, 0, v126);
                ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v122, v127);
                v129 = v128;
                v131 = v130;
                v133 = v132;

                v134 = objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallLeadingView());
                v102 = SystemApertureIncomingCallLeadingView.init(leadingViewType:)(v129, v131, v133 & 1);
                v121 = 0;
                v180 = &protocol witness table for SystemApertureIncomingCallLeadingView;
              }

              type metadata accessor for SystemApertureEmptyTrailingView();
              v135 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v136 = v121;
              v118 = v102;
              v119 = [v135 init];
              outlined destroy of ConversationControlsType(__dst);
              v120 = &protocol witness table for SystemApertureEmptyTrailingView;
            }

            if (one-time initialization token for conversationControls != -1)
            {
              swift_once();
            }

            v137 = type metadata accessor for Logger();
            __swift_project_value_buffer(v137, &static Logger.conversationControls);
            v138 = Logger.logObject.getter();
            v139 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              *v140 = 0;
              _os_log_impl(&dword_1BBC58000, v138, v139, "IntelligenceRecipeGenerator: [SystemAperture] showing content", v140, 2u);
              MEMORY[0x1BFB23DF0](v140, -1, -1);
            }

            _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
            v141 = type metadata accessor for SystemApertureIconView(0);
            v142 = objc_allocWithZone(v141);
            SystemApertureIconView.init(icon:isDetached:)();
            v144 = v143;
            _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
            v145 = objc_allocWithZone(v141);
            SystemApertureIconView.init(icon:isDetached:)();
            v147 = v146;
            outlined consume of PreCallControlsContext(v171);

            v148 = v164;
            outlined consume of ConversationControlsRecipe.View?(v148, 0);
            swift_unknownObjectRelease();

            outlined destroy of ConversationControlsRecipe(v108, type metadata accessor for SystemApertureIcon);
            v149 = *(v158 + 80);
            v106 = v165;
            v150 = &v165[v13[18]];
            memcpy(__dst, v150, 0x49uLL);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
            v151 = v180;
            *v150 = v118;
            *(v150 + 1) = v151;
            *(v150 + 2) = v119;
            *(v150 + 3) = v120;
            *(v150 + 4) = v144;
            *(v150 + 5) = &protocol witness table for SystemApertureIconView;
            *(v150 + 6) = v147;
            *(v150 + 7) = &protocol witness table for SystemApertureIconView;
            *(v150 + 8) = 4;
            v150[72] = v149;
          }
        }

        else
        {

          outlined consume of ConversationControlsRecipe.View?(v102, 0);
          outlined consume of PreCallControlsContext(v171);

          swift_unknownObjectRelease();
        }

        v152 = v162;
        _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
        __swift_storeEnumTagSinglePayload(v152, 0, 1, v13);
        outlined destroy of ConversationControlsRecipe(v106, type metadata accessor for ConversationControlsRecipe);
      }
    }

    if (v47)
    {
      v70 = v166;
      v71 = v69;
      v72 = UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:)(v70, 50.0, 50.0, 12.0);

      if (!v72)
      {
        v72 = v71;
LABEL_27:
        v79 = v72;
        v75 = 0;
        v77 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v72 = v69;
      v78 = UIImage.roundedBrandedImage(size:cornerRadius:)(50.0, 50.0, 12.0);

      if (!v78)
      {
        goto LABEL_27;
      }

      v72 = v78;
    }

    goto LABEL_27;
  }

  swift_unknownObjectRelease();

  return __swift_storeEnumTagSinglePayload(a6, 1, 1, v13);
}

double IntelligenceRecipeGenerator.getScreeningCall(with:controlsManager:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CallScreeningStatus();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for CallScreeningService();
  v40 = *(v15 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 receptionistEnabled])
  {
    v39 = v15;
    v43 = &type metadata for ScreeningStatusOverride;
    v44 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    *&v42 = Defaults.init()();
    v19 = CallScreeningService.init(overrides:)();
    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2A0))(v19);
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 48))(&v42, ObjectType, v21);
    swift_unknownObjectRelease();
    CallScreeningService.screeningStatusForCall(_:)();
    v23 = CallScreeningStatus.isBaseCase(_:)();
    v24 = *(v9 + 8);
    v24(v14, v8);
    if (v23)
    {
      (*(v40 + 8))(v18, v39);
      outlined init with take of TapInteractionHandler(&v42, a4);
      return result;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, &static Logger.conversationControls);
    (*(v9 + 16))(v11, a1, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = v29;
      v38 = swift_slowAlloc();
      v41 = v38;
      *v29 = 136315138;
      lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v24(v11, v8);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v41);

      v34 = v37;
      *(v37 + 1) = v33;
      v35 = v34;
      _os_log_impl(&dword_1BBC58000, v27, v28, "CallScreeningRecipeGenerator: Call does not have status: %s", v34, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFB23DF0](v36, -1, -1);
      MEMORY[0x1BFB23DF0](v35, -1, -1);
    }

    else
    {

      v24(v11, v8);
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
    (*(v40 + 8))(v18, v39);
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t getter of statusIcon #1 in IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  swift_projectBox();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    return outlined init with take of SystemApertureIcon?(v9, a2);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit18SystemApertureIconVSgSgMd);
  SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, a1);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  swift_beginAccess();
  return outlined assign with take of AttributedString?();
}

uint64_t UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:)(void *a1, double a2, double a3, double a4)
{
  v7 = a2 + -2.0;
  v8 = a3 + -2.0;
  v9 = UIImage.roundedBrandedImage(size:cornerRadius:)(a2 + -2.0, a3 + -2.0, a4);
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  *(v11 + 56) = a3;
  *(v11 + 64) = 0x4032000000000000;
  v12 = OUTLINED_FUNCTION_50_1();
  *(v12 + 16) = partial apply for closure #1 in UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:);
  *(v12 + 24) = v11;
  v19[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  v19[5] = v12;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_6_76();
  v19[2] = v13;
  v19[3] = &block_descriptor_51;
  v14 = _Block_copy(v19);
  v15 = v9;
  v16 = a1;

  v17 = [v10 imageWithActions_];

  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t UIImage.roundedBrandedImage(size:cornerRadius:)(double a1, double a2, double a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  OUTLINED_FUNCTION_109();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = v3;
  v9 = OUTLINED_FUNCTION_50_1();
  *(v9 + 16) = partial apply for closure #1 in UIImage.roundedBrandedImage(size:cornerRadius:);
  *(v9 + 24) = v8;
  v15[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v15[5] = v9;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_6_76();
  v15[2] = v10;
  v15[3] = &block_descriptor_13;
  v11 = _Block_copy(v15);
  v12 = v3;

  v13 = [v7 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

id closure #1 in UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:)(int a1, id a2, id a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a2)
  {
    [a2 drawInRect_];
  }

  return [a3 drawInRect_];
}

void closure #1 in UIImage.roundedBrandedImage(size:cornerRadius:)(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a1, a2, a3}];
  [v8 addClip];
  [a5 drawInRect_];
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWObTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t getEnumTagSinglePayload for IntelligenceRecipeGenerator.IntelligenceConfiguration(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 83))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for IntelligenceRecipeGenerator.IntelligenceConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined assign with take of AttributedString?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined init with take of SystemApertureIcon?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle()
{
  result = lazy protocol witness table cache variable for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle;
  if (!lazy protocol witness table cache variable for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle);
  }

  return result;
}

Swift::Void __swiftcall UIActivityViewController.setHeader(_:)(UIViewController *a1)
{
  [v1 setCustomViewController_];

  [v1 setHideHeaderView_];
}

uint64_t UIHostingAutoResizableController.lastViewSize.setter(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for UIHostingAutoResizableController + 16);
  *v4 = result;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  return result;
}

id UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(uint64_t a1, char a2)
{
  v21 = a1;
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  v20[1] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(v5 + class metadata base offset for UIHostingAutoResizableController);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  v14 = v2 + *(v13 + 16);
  v14[16] = 1;
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + *(v15 + 4088) + 24)) = a2;
  (*(v8 + 16))(v12, a1, v7, v10);
  v16 = UIHostingController.init(rootView:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BAA20;
  v18 = v16;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v22 = v17;
  lazy protocol witness table accessor for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  (*(v8 + 8))(v21, v7);
  return v18;
}

unint64_t lazy protocol witness table accessor for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions()
{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A]);
  }

  return result;
}

void UIHostingAutoResizableController.init(coder:)()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for UIHostingAutoResizableController + 16);
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall UIHostingAutoResizableController.viewDidLayoutSubviews()()
{
  v1 = MEMORY[0x1E69E7D40];
  v22.receiver = v0;
  v22.super_class = type metadata accessor for UIHostingAutoResizableController();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;

  v8 = COERCE_DOUBLE(UIHostingAutoResizableController.lastViewSize.getter());
  if ((v10 & 1) != 0 || (v5 == v8 ? (v11 = v7 == v9) : (v11 = 0), !v11))
  {
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 frame];
      v15 = v14;
      v17 = v16;

      v18 = v0 + *((*v1 & *v0) + class metadata base offset for UIHostingAutoResizableController + 16);
      *v18 = v15;
      *(v18 + 1) = v17;
      v18[16] = 0;
      v19 = [v0 parentViewController];
      if (!v19)
      {
        return;
      }

      v20 = v19;
      v21 = [v19 view];

      if (v21)
      {
        [v21 setNeedsLayout];

        return;
      }

LABEL_14:
      __break(1u);
      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }
}

void @objc UIHostingAutoResizableController.viewDidLayoutSubviews()(void *a1)
{
  v1 = a1;
  UIHostingAutoResizableController.viewDidLayoutSubviews()();
}

Swift::Void __swiftcall SelfSizingHostingView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SelfSizingHostingView();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  [v0 invalidateIntrinsicContentSize];
}

void @objc SelfSizingHostingView.layoutSubviews()(void *a1)
{
  v1 = a1;
  SelfSizingHostingView.layoutSubviews()();
}

uint64_t SelfSizingHostingView.init(rootView:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for SelfSizingHostingView);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  v7 = _UIHostingView.init(rootView:)();
  (*(v4 + 8))(a1, v3);
  return v7;
}

id SelfSizingHostingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SelfSizingHostingView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelfSizingHostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id UIHostingAutoResizableController.__deallocating_deinit(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = a2(0, *((*MEMORY[0x1E69E7D40] & *v2) + *a1), *((*MEMORY[0x1E69E7D40] & *v2) + *a1 + 8));
  v5.receiver = v2;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Collection.prefix(_:)(a1, a2, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
}

{
  return specialized Collection.prefix(_:)(a1, a2, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    _CocoaArrayWrapper.subscript.getter();

    return OUTLINED_FUNCTION_40_2();
  }

  OUTLINED_FUNCTION_6_7();
  specialized Array.count.getter(v3);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_30_20();
  v7 = specialized Array.index(_:offsetBy:limitedBy:)(v4, v5, v6, v1);
  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    goto LABEL_15;
  }

  specialized Array._checkIndex(_:)(0);
  specialized Array._checkIndex(_:)(v9);
  if ((v1 & 0xC000000000000001) != 0 && v9)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNMutableContact);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      OUTLINED_FUNCTION_92_0();
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v10 = v11;
    }

    while (v9 != v11);
  }

  else
  {
  }

  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  return OUTLINED_FUNCTION_40_2();
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);

      return OUTLINED_FUNCTION_15_14();
    }
  }

  __break(1u);
  return result;
}

uint64_t ParticipantGridViewController.participants.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t ParticipantGridViewController.hasOtherInvitedParticipants.getter()
{
  v1 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v14)
    {

      v25 = *(v15 + 16);

      return v25 != 0;
    }

    if (v14 >= *(v11 + 16))
    {
      break;
    }

    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = *(v5 + 72);
    _s15ConversationKit11ParticipantVWOcTm_7();
    _s15ConversationKit11ParticipantVWOcTm_7();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        goto LABEL_5;
      case 4u:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v20 = *(v19 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v3[*(v19 + 64)], *&v3[*(v19 + 64) + 8]);
        outlined destroy of Participant.MediaInfo(&v3[v20]);
LABEL_5:
        v18 = type metadata accessor for Date();
        (*(*(v18 - 8) + 8))(v3, v18);
        goto LABEL_6;
      case 6u:
LABEL_6:
        result = _s15ConversationKit11ParticipantVWOhTm_9();
        ++v14;
        break;
      default:
        v21 = type metadata accessor for Date();
        (*(*(v21 - 8) + 8))(v3, v21);
        outlined init with take of Participant(v9, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v30;
        }

        v23 = *(v15 + 16);
        v24 = v23 + 1;
        if (v23 >= *(v15 + 24) >> 1)
        {
          v27 = *(v15 + 16);
          v28 = v23 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v23 = v27;
          v24 = v28;
          v15 = v30;
        }

        ++v14;
        *(v15 + 16) = v24;
        result = outlined init with take of Participant(v29, v15 + v16 + v23 * v17);
        break;
    }
  }

  __break(1u);
  return result;
}

id ParticipantGridViewController.gridView.getter()
{
  if (![v1 isViewLoaded])
  {
    return 0;
  }

  result = [v1 view];
  if (result)
  {
    v3 = OUTLINED_FUNCTION_17_1();
    type metadata accessor for ParticipantGridView(v3);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void ParticipantGridViewController.participantViews.getter()
{
  v0 = ParticipantGridViewController.gridView.getter();
  v1 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v2 = v0;
    v3 = [v0 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = specialized Array.count.getter(v4);
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = OUTLINED_FUNCTION_206();
        v7 = MEMORY[0x1BFB22010](v9);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      type metadata accessor for ParticipantView();
      if (swift_dynamicCastClass())
      {
        MEMORY[0x1BFB20CC0]();
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_32_2();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v6;
      }

      else
      {

        ++v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t ParticipantGridViewController.focusedParticipant.getter()
{
  return ParticipantGridViewController.focusedParticipant.getter();
}

{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t ParticipantGridViewController.focusedParticipant.didset(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v62[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v62[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v62[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v62[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v70 = &v62[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62[-v27];
  v72 = a1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v29 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v29) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd);
    v30 = 1;
  }

  else
  {
    (*(v3 + 16))(v28, &v20[*(v29 + 20)], v2);
    _s15ConversationKit11ParticipantVWOhTm_9();
    v30 = 0;
  }

  v31 = 1;
  __swift_storeEnumTagSinglePayload(v28, v30, 1, v2);
  v32 = v74 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v32, 1, v29))
  {
    (*(v3 + 16))(v25, v32 + *(v29 + 20), v2);
    v31 = 0;
  }

  v73 = v3;
  __swift_storeEnumTagSinglePayload(v25, v31, 1, v2);
  v33 = *(v13 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd);
    if (__swift_getEnumTagSinglePayload(&v15[v33], 1, v2) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v35 = v70;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v15[v33], 1, v2) != 1)
    {
      v57 = v73;
      v58 = *(v73 + 32);
      v64 = v32;
      v59 = v67;
      v58(v67, &v15[v33], v2);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v60 = *(v57 + 8);
      v61 = v59;
      v32 = v64;
      v60(v61, v2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd);
      v60(v35, v2);
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd);
      if (v63)
      {
        return result;
      }

      goto LABEL_12;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd);
    (*(v73 + 8))(v35, v2);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_12:
  v36 = v71;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v36, 1, v29) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    v37 = v73;
    v38 = v68;
    (*(v73 + 16))(v68, v36 + *(v29 + 20), v2);
    _s15ConversationKit11ParticipantVWOhTm_9();
    v39 = v69;
    (*(v37 + 32))(v69, v38, v2);
    v40 = ParticipantGridViewController.gridView.getter();
    if (v40)
    {
      v41 = v40;
      v42 = type metadata accessor for ParticipantView();
      v43 = ParticipantGridView.tile(for:ofAClass:)(v39, v42);
      v45 = v44;

      if (v43)
      {
        ObjectType = swift_getObjectType();
        (*(v45 + 64))(0, ObjectType, v45);
      }
    }

    (*(v37 + 8))(v39, v2);
  }

  result = __swift_getEnumTagSinglePayload(v32, 1, v29);
  if (!result)
  {
    v47 = v73;
    v48 = v65;
    (*(v73 + 16))(v65, v32 + *(v29 + 20), v2);
    v49 = v66;
    (*(v47 + 32))(v66, v48, v2);
    v50 = ParticipantGridViewController.gridView.getter();
    if (v50)
    {
      v51 = v50;
      v52 = type metadata accessor for ParticipantView();
      v53 = ParticipantGridView.tile(for:ofAClass:)(v49, v52);
      v55 = v54;

      if (v53)
      {
        v56 = swift_getObjectType();
        (*(v55 + 64))(1, v56, v55);
      }
    }

    return (*(v47 + 8))(v49, v2);
  }

  return result;
}

uint64_t key path getter for ParticipantGridViewController.focusedParticipant : ParticipantGridViewController()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

void key path setter for ParticipantGridViewController.focusedParticipant : ParticipantGridViewController()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_32_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_63_9();
  OUTLINED_FUNCTION_45_15();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  ParticipantGridViewController.focusedParticipant.setter();
  OUTLINED_FUNCTION_49();
}

void ParticipantGridViewController.focusedParticipant.setter()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_44_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_63_9();
  v11 = *v5;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of Participant?(v7, v0 + v11);
  swift_endAccess();
  v3(v1);
  OUTLINED_FUNCTION_92_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, v13);
  OUTLINED_FUNCTION_92_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v15);
  OUTLINED_FUNCTION_49();
}

uint64_t ParticipantGridViewController.fullScreenFocusedParticipant.didset(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSg_ADtMd);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  swift_beginAccess();
  v15 = *(v12 + 56);
  v47 = a1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v3) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantVSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v3) == 1)
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
LABEL_6:
    v16 = &_s15ConversationKit11ParticipantVSg_ADtMd;
LABEL_11:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v16);
LABEL_12:
    v18 = v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v22 = v46;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    (*(v20 + 48))(v1, v47, v22, ObjectType, v20);
    swift_unknownObjectRelease();
    v14 = v22;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantVSgMd);
  }

  outlined init with take of Participant(&v14[v15], v5);
  static Participant.State.== infix(_:_:)();
  if ((v17 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (*&v5[*(v3 + 28)] == 0) != (*&v10[*(v3 + 28)] == 0))
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v16 = &_s15ConversationKit11ParticipantVSgMd;
    goto LABEL_11;
  }

  v23 = *(v3 + 24);
  v24 = v10[v23];
  v25 = v10[v23 + 1];
  v26 = v10[v23 + 2];
  v27 = v10[v23 + 3];
  v28 = v10[v23 + 4];
  v29 = &v5[v23];
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v34 = v29[4];
  if (v28)
  {
    v35 = 0x100000000;
  }

  else
  {
    v35 = 0;
  }

  if (v27)
  {
    v36 = 0x1000000;
  }

  else
  {
    v36 = 0;
  }

  v37 = v26 == 0;
  v38 = 0x10000;
  if (v37)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0x10000;
  }

  v37 = v25 == 0;
  v40 = 256;
  if (v37)
  {
    v41 = 0;
  }

  else
  {
    v41 = 256;
  }

  v42 = v41 | v24 | v39 | v36;
  if (v34)
  {
    v43 = 0x100000000;
  }

  else
  {
    v43 = 0;
  }

  if (v33)
  {
    v44 = 0x1000000;
  }

  else
  {
    v44 = 0;
  }

  if (!v32)
  {
    v38 = 0;
  }

  if (!v31)
  {
    v40 = 0;
  }

  v45 = static Participant.Capabilities.== infix(_:_:)(v42 | v35, v40 | v30 | v38 | v44 | v43);
  _s15ConversationKit11ParticipantVWOhTm_9();
  _s15ConversationKit11ParticipantVWOhTm_9();
  result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantVSgMd);
  if (!v45)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t ParticipantGridViewController.participantsViewControllerDelegate.getter()
{
  return ParticipantGridViewController.participantsViewControllerDelegate.getter();
}

{
  OUTLINED_FUNCTION_6_11();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t (*ParticipantGridViewController.participantsViewControllerDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

uint64_t key path getter for ParticipantGridViewController.participantsViewControllerDelegate : ParticipantGridViewController@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t key path setter for ParticipantGridViewController.participantsViewControllerDelegate : ParticipantGridViewController(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  OUTLINED_FUNCTION_73();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantGridViewController.participantsViewControllerDelegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  OUTLINED_FUNCTION_73();
  *(v5 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ParticipantGridViewController.participantGridViewControllerDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ParticipantGridViewController.participantGridViewControllerDelegate.modify;
}

void ParticipantGridViewController.__allocating_init(participants:layoutStyle:isLocalMemberAuthorizedToChangeGroupMembership:captionsLayoutState:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_33_0();
  ParticipantGridViewController.init(participants:layoutStyle:isLocalMemberAuthorizedToChangeGroupMembership:captionsLayoutState:)();
}

void ParticipantGridViewController.init(participants:layoutStyle:isLocalMemberAuthorizedToChangeGroupMembership:captionsLayoutState:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_getObjectType();
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v40 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_67_1();
  LOBYTE(v8) = *v8;
  v17 = *v4;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus) = 0;
  v18 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_forceAudioPriorityButton;
  *(v2 + v18) = [objc_opt_self() buttonWithType_];
  v19 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_nonFullScreenConstraints) = MEMORY[0x1E69E7CC0];
  v41 = v19;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenConstraints) = v19;
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant);
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant);
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant);
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant);
  OUTLINED_FUNCTION_11_34(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_11_34(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate);
  v20 = 0;
  v39 = v8;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle) = v8;
  v38 = v2;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_isLocalMemberAuthorizedToChangeGroupMembership) = v6;
  v21 = *(v10 + 16);
  while (v21 != v20)
  {
    if (v20 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v23 = *(v13 + 72);
    OUTLINED_FUNCTION_2_112();
    _s15ConversationKit11ParticipantVWOcTm_7();
    if (*(v1 + *(v11 + 28)))
    {
      outlined init with take of Participant(v1, v40);
      v6 = v41;
      v43 = v41;
      v37 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v43;
      }

      v24 = *(v6 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v6 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v24 + 1;
        v6 = v43;
      }

      ++v20;
      *(v6 + 16) = v25;
      v41 = v6;
      outlined init with take of Participant(v40, v6 + v22 + v24 * v23);
      v17 = v37;
    }

    else
    {
      OUTLINED_FUNCTION_0_129();
      _s15ConversationKit11ParticipantVWOhTm_9();
      ++v20;
    }
  }

  LOBYTE(v43) = v39;
  v42 = v17;
  v26 = MultiwayViewController.LayoutStyle.maximumParticipantCount(portraitAspect:mediaPipIsVisible:captionsLayoutState:)(0, 0, &v42);
  v6 = specialized Collection.prefix(_:)(v26, v41, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
  v10 = v27;
  v11 = v28;
  v13 = v29;
  if ((v29 & 1) == 0)
  {
LABEL_12:
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v10, v11, v13);
    v31 = v30;
    v32 = v38;
    goto LABEL_19;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v34 != (v13 >> 1) - v11)
  {
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v32 = v38;
  if (v31)
  {
    goto LABEL_20;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_19:
  swift_unknownObjectRelease();
LABEL_20:
  *(v32 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants) = v31;
  OUTLINED_FUNCTION_3_0();
  objc_msgSendSuper2(v35, v36);
  OUTLINED_FUNCTION_30_0();
}

id ParticipantGridViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantGridViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_forceAudioPriorityButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_nonFullScreenConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenConstraints) = v2;
  v3 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_8_11(v0 + v3);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant);
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantGridViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for ParticipantGridView(0)) init];
  [v0 setView_];
}

Swift::Void __swiftcall ParticipantGridViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - v6;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v40.receiver = v0;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v9 = ParticipantGridViewController.gridView.getter();
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = &v9[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  OUTLINED_FUNCTION_73();
  *(v11 + 1) = &protocol witness table for ParticipantGridViewController;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  LOBYTE(v11) = v2[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_isLocalMemberAuthorizedToChangeGroupMembership];
  v12 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
  swift_beginAccess();
  v10[v12] = v11;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  ParticipantGridView.setParticipants(_:)(v13);

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_12_5(v7);
  if (v14)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_40_2();
    outlined init with take of Participant(v15, v16);
    ParticipantGridViewController.fullScreenFocus(on:)(v1, v17, v18, v19, v20, v21, v22, v23, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11]);
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 128))() & 1) == 0)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_49();
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();
  v24 = *&v2[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_forceAudioPriorityButton];
  outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(0x7561206563726F46, 0xEB000000006F6964, 0, v24);
  v25 = [objc_opt_self() whiteColor];
  [v24 setTintColor_];

  [v24 addTarget:v2 action:sel_forceBumpPriority forControlEvents:64];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v2 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  [v26 addSubview_];

  v28 = [v24 topAnchor];
  v29 = [v2 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  v32 = [v31 topAnchor];
  v33 = [v28 constraintEqualToAnchor:v32 constant:16.0];

  [v33 setActive_];
  v34 = [v24 trailingAnchor];
  v35 = [v2 view];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 trailingAnchor];

    v38 = [v34 constraintEqualToAnchor:v37 constant:-16.0];
    [v38 setActive_];

    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void ParticipantGridViewController.fullScreenFocus(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v102 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v101 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_63_9();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6_2();
  v41 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v43 + 104))(v21, *MEMORY[0x1E69E8020], v41);
  v45 = _dispatchPreconditionTest(_:)();
  (*(v43 + 8))(v21, v41);
  if (v45)
  {
    v100 = v22;
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_6();
LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v46 = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_4_96(v46, xmmword_1BC4BA940);
  _s15ConversationKit11ParticipantVWOcTm_7();
  v47 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  specialized >> prefix<A>(_:)();
  v52 = v51;
  v54 = v53;
  v55 = OUTLINED_FUNCTION_32_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, v56);
  v46[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v46[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
  v46[2].n128_u64[0] = v52;
  v46[2].n128_u64[1] = v54;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
  OUTLINED_FUNCTION_42_18();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_7();
  v58 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  swift_beginAccess();
  *(v25 + v58) = v57;

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v47);
  ParticipantGridViewController.select(_:forFocusing:)();
  v62 = OUTLINED_FUNCTION_32_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, v63);
  v64 = ParticipantGridViewController.gridView.getter();
  if (v64)
  {
    v99 = v64;
    v65 = 1;
    v66 = OUTLINED_FUNCTION_18_41(&a12);
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v102);
    v69 = v25 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v70 = OUTLINED_FUNCTION_29_5();
    if (!__swift_getEnumTagSinglePayload(v70, v71, v47))
    {
      (*(v101 + 16))(v105, v69 + *(v47 + 20), v102);
      v65 = 0;
    }

    OUTLINED_FUNCTION_55_11(v105, v65);
    v72 = v25 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v73 = OUTLINED_FUNCTION_44_13();
    if (__swift_getEnumTagSinglePayload(v73, v74, v47))
    {
      v75 = OUTLINED_FUNCTION_18_41(&a13);
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v102);
      (*(v101 + 16))(v103, v27 + *(v47 + 20), v102);
    }

    else
    {
      v78 = *(v101 + 16);
      v78(v104, v72 + *(v47 + 20), v102);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v102);
      v78(v103, v27 + *(v47 + 20), v102);
    }

    ParticipantGridViewController.aspectRatio(for:in:)(v27, 0, &v106);
    v82 = ParticipantGridViewController.orientation(for:in:)(v27, 0);
    Participant.videoInfo.getter();
    if (v107)
    {
      v83 = v108;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v107, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }

    else
    {
      v83 = 0;
    }

    (*(v101 + 32))(v100, v103, v102);
    v84 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    OUTLINED_FUNCTION_24_30(v100 + *(v84 + 20));
    *(v100 + *(v85 + 24)) = v82;
    *(v100 + *(v85 + 28)) = v83;
    v86 = OUTLINED_FUNCTION_17_46();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
    OUTLINED_FUNCTION_66_4();
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, v91);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, v93);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, v95);
  }

  OUTLINED_FUNCTION_2_112();
  _s15ConversationKit11ParticipantVWOcTm_7();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v47);
  OUTLINED_FUNCTION_10_56();
  ParticipantGridViewController.focusedParticipant.setter();
  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.forceBumpPriority()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000019, 0x80000001BC508070);
  if (v1)
  {
    v4 = v1;
    v2 = MEMORY[0x1BFB209B0](0xD000000000000019, 0x80000001BC5080E0);
    [v4 setBool:1 forKey:v2];

    v3 = MEMORY[0x1BFB209B0](0xD000000000000017, 0x80000001BC508100);
    [v4 setInteger:255 forKey:v3];

    [v4 synchronize];
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)();
  }
}

void ParticipantGridViewController.select(_:forFocusing:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v77 = v3;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v80 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v79 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v76 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_159();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v83 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v82 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v81 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v78 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v31 = (v30 - v29);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v31 = static OS_dispatch_queue.main.getter();
  (*(v27 + 104))(v31, *MEMORY[0x1E69E8020], v25);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v31, v25);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v33 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v34 = *(v11 + 48);
  v84 = v24;
  OUTLINED_FUNCTION_206();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v35 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v35, v36, v4);
  v37 = v4;
  if (v42)
  {
    OUTLINED_FUNCTION_115(v1 + v34, 1, v4);
    if (v42)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
      goto LABEL_7;
    }

LABEL_12:
    v43 = &_s15ConversationKit11ParticipantVSg_ADtMd;
LABEL_17:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, v43);
    goto LABEL_18;
  }

  v41 = v78;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v1 + v34, 1, v37);
  if (v42)
  {
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
    goto LABEL_12;
  }

  v44 = v76;
  outlined init with take of Participant(v1 + v34, v76);
  static Participant.State.== infix(_:_:)();
  if ((v45 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (*(v44 + *(v37 + 28)) == 0) != (*(v41 + *(v37 + 28)) == 0))
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v43 = &_s15ConversationKit11ParticipantVSgMd;
    goto LABEL_17;
  }

  v53 = *(v37 + 24);
  v54 = *(v41 + v53);
  v55 = *(v41 + v53 + 1);
  v56 = *(v41 + v53 + 2);
  v57 = *(v41 + v53 + 3);
  v58 = *(v41 + v53 + 4);
  v59 = (v44 + v53);
  v60 = *v59;
  v61 = v59[1];
  v62 = v59[2];
  v63 = v59[3];
  v64 = v59[4];
  if (v58)
  {
    v65 = 0x100000000;
  }

  else
  {
    v65 = 0;
  }

  if (v57)
  {
    v66 = 0x1000000;
  }

  else
  {
    v66 = 0;
  }

  v42 = v56 == 0;
  v67 = 0x10000;
  if (v42)
  {
    v68 = 0;
  }

  else
  {
    v68 = 0x10000;
  }

  v42 = v55 == 0;
  v69 = 256;
  if (v42)
  {
    v70 = 0;
  }

  else
  {
    v70 = 256;
  }

  v71 = v70 | v54 | v68 | v66;
  if (v64)
  {
    v72 = 0x100000000;
  }

  else
  {
    v72 = 0;
  }

  if (v63)
  {
    v73 = 0x1000000;
  }

  else
  {
    v73 = 0;
  }

  if (!v62)
  {
    v67 = 0;
  }

  if (!v61)
  {
    v69 = 0;
  }

  v74 = static Participant.Capabilities.== infix(_:_:)(v71 | v65, v69 | v60 | v67 | v73 | v72);
  _s15ConversationKit11ParticipantVWOhTm_9();
  _s15ConversationKit11ParticipantVWOhTm_9();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
  if (!v74)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v77)
  {
LABEL_18:
    v38 = v81;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    goto LABEL_19;
  }

  v38 = v81;
  v39 = OUTLINED_FUNCTION_44_13();
  __swift_storeEnumTagSinglePayload(v39, v40, 1, v37);
LABEL_19:
  v46 = v83;
  OUTLINED_FUNCTION_50_13();
  outlined assign with take of Participant?(v38, v2 + v33);
  swift_endAccess();
  v47 = v84;
  v48 = v82;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v49 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v49, v50, v37);
  if (v42)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    outlined init with take of Participant(v48, v79);
    ParticipantGridViewController.update(participant:broadcastingState:)();
    OUTLINED_FUNCTION_0_129();
    v47 = v84;
    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v51 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v51, v52, v37);
  if (v42)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    outlined init with take of Participant(v46, v80);
    ParticipantGridViewController.update(participant:broadcastingState:)();

    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v46 = v47;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.update(participant:broadcastingState:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v117 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v10 - v9);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_67_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v115 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v101[-v21];
  v23 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v29 = (v28 - v27);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v29 = static OS_dispatch_queue.main.getter();
  (*(v25 + 104))(v29, *MEMORY[0x1E69E8020], v23);
  v30 = _dispatchPreconditionTest(_:)();
  v32 = *(v25 + 8);
  v31 = v25 + 8;
  v32(v29, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_42:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v59 = v100;
    *&v3[v31] = v100;
    goto LABEL_20;
  }

  v31 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  OUTLINED_FUNCTION_3_0();
  v33 = swift_beginAccess();
  v34 = *&v3[v31];
  MEMORY[0x1EEE9AC00](v33);
  *&v101[-16] = v5;

  v112 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantGridViewController.update(participant:broadcastingState:), &v101[-32], v34);
  v36 = v35;

  if (v36)
  {
LABEL_40:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v37 = type metadata accessor for Participant(0);
  v38 = *(v37 + 20);
  v40 = v117 + 16;
  v39 = *(v117 + 16);
  v105 = v5;
  v106 = v38;
  v41 = v5 + v38;
  v42 = v37;
  v108 = v39;
  v39(v22, v41, v6);
  v43 = 1;
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v6);
  v47 = &v3[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v47, 1, v42))
  {
    v108(v0, v47 + *(v42 + 20), v6);
    v43 = 0;
  }

  v104 = v40;
  OUTLINED_FUNCTION_55_11(v0, v43);
  v48 = *(v116 + 48);
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_12_5(v2);
  v103 = v42;
  if (v51)
  {
    v49 = OUTLINED_FUNCTION_46();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, v50);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_12_5(v2 + v48);
    v5 = v115;
    if (v51)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
      v102 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v2 + v48);
    if (!v51)
    {
      v56 = v117;
      v57 = v109;
      (*(v117 + 32))(v109, v2 + v48, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v102 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *(v56 + 8);
      v58(v57, v6);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd);
      v58(v111, v6);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
      v5 = v115;
      goto LABEL_14;
    }

    v52 = OUTLINED_FUNCTION_46();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, v53);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd);
    v54 = OUTLINED_FUNCTION_32_2();
    v55(v54);
    v5 = v115;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSg_ADtMd);
  v102 = 0;
LABEL_14:
  v29 = v114;
  v2 = v105;
  if (Participant.screenState.getter() == 2)
  {
    v30 = 0;
  }

  else if (Participant.isReceivingScreenFrames.getter())
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_30_2();
  v59 = *&v3[v31];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v3[v31] = v59;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  if ((v112 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v112 < *(v59 + 16))
  {
    LODWORD(v115) = v30;
    v61 = v103;
    OUTLINED_FUNCTION_42_18();
    outlined assign with copy of Participant(v2, v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v63 + 72) * v64);
    *&v3[v31] = v59;
    swift_endAccess();
    v65 = v108;
    v108(v5, v2 + v106, v6);
    v66 = 1;
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v6);
    v70 = &v3[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v71 = OUTLINED_FUNCTION_44_13();
    if (!__swift_getEnumTagSinglePayload(v71, v72, v61))
    {
      v65(v29, &v70[*(v61 + 20)], v6);
      v66 = 0;
    }

    OUTLINED_FUNCTION_55_11(v29, v66);
    v73 = *(v116 + 48);
    v74 = v113;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v74);
    if (v51)
    {
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, v76);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, v78);
      OUTLINED_FUNCTION_12_5(v74 + v73);
      if (v51)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s10Foundation4UUIDVSgMd);
LABEL_34:
        ParticipantGridViewController.updateFullScreenInfo(with:)();
        goto LABEL_35;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_3();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_12_5(v74 + v73);
      if (!v79)
      {
        v84 = v117;
        v85 = v74 + v73;
        v86 = v109;
        (*(v117 + 32))(v109, v85, v6);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        OUTLINED_FUNCTION_44_0();
        LODWORD(v116) = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = *(v84 + 8);
        v87(v86, v6);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, v89);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, v91);
        v87(v110, v6);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, v93);
        if ((v116 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, v81);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, v83);
      (*(v117 + 8))(&_s10Foundation4UUIDVSgMd, v6);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_35:
    v94 = ParticipantGridViewController.gridView.getter();
    if (v94)
    {
      v95 = v94;
      ParticipantGridViewController.hasOtherInvitedParticipants.getter();
      ParticipantGridView.updateParticipantView(for:with:hasOtherInvitedParticipants:)();
    }

    if (Participant.isReceivingVideoFrames.getter())
    {
      v96 = &v3[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v97 = OUTLINED_FUNCTION_74_7();
        v118[3] = ObjectType;
        v118[4] = &protocol witness table for ParticipantGridViewController;
        v118[0] = v3;
        v98 = *(v96 + 8);
        v99 = v3;
        v98(v118, v2 + v106, v97, v96);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v118);
      }
    }

    goto LABEL_40;
  }

  __break(1u);
}

void ParticipantGridViewController.isSelected(_:)()
{
  OUTLINED_FUNCTION_29();
  v31[0] = v2;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v31 - v17;
  v19 = v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v20 = type metadata accessor for Participant(0);
  v21 = 1;
  v22 = OUTLINED_FUNCTION_44_13();
  if (!__swift_getEnumTagSinglePayload(v22, v23, v20))
  {
    (*(v5 + 16))(v18, v19 + *(v20 + 20), v3);
    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v21, 1, v3);
  v24 = *(v7 + 48);
  OUTLINED_FUNCTION_31_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_115(v10, 1, v3);
  if (!v25)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(&v10[v24], 1, v3);
    if (!v25)
    {
      (*(v5 + 32))(v1, &v10[v24], v3);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v5 + 8);
      v26(v1, v3);
      v27 = OUTLINED_FUNCTION_206();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, v28);
      v26(v15, v3);
      v29 = OUTLINED_FUNCTION_44_0();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, v30);
      goto LABEL_12;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s10Foundation4UUIDVSgMd);
    (*(v5 + 8))(v15, v3);
LABEL_11:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_12;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_115(&v10[v24], 1, v3);
  if (!v25)
  {
    goto LABEL_11;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd);
LABEL_12:
  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.aspectRatio(for:in:)(uint64_t a1@<X0>, void *a2@<X1>, int8x16_t *a3@<X8>)
{
  v6 = a2;
  if (a2 || (v6 = ParticipantGridViewController.gridView.getter()) != 0)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 1;
    v7 = a2;
    ParticipantGridView.aspectRatio(for:default:)(a1, v15, v13);
    v11 = v13[1];
    v12 = v13[0];
    v8 = v14;

    v10 = v11;
    v9 = v12;
  }

  else
  {
    v9 = 0uLL;
    v8 = 1;
    v10 = 0uLL;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2].i8[0] = v8;
}

uint64_t ParticipantGridViewController.orientation(for:in:)(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v4 = ParticipantGridViewController.gridView.getter();
    if (!v4)
    {
      return 1;
    }
  }

  v5 = a2;
  v6 = ParticipantGridView.orientation(for:default:)(a1, 1);

  return v6;
}

void ParticipantGridViewController.updateFullScreenInfo(with:)()
{
  OUTLINED_FUNCTION_29();
  v117 = v1;
  v118 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v6);
  v111 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v12);
  v13 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  *&v119 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v106[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v106[-v29];
  v31 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v37 = (v36 - v35);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v37 = static OS_dispatch_queue.main.getter();
  (*(v33 + 104))(v37, *MEMORY[0x1E69E8020], v31);
  v38 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v37, v31);
  if (v38)
  {
    v37 = v117;
    v39 = v117 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v40 = type metadata accessor for Participant(0);
    v41 = OUTLINED_FUNCTION_44_13();
    if (__swift_getEnumTagSinglePayload(v41, v42, v40))
    {
      OUTLINED_FUNCTION_43_12(v30);
      v43 = *(v119 + 16);
      v44 = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    else
    {
      v45 = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v46 = &v39[*(v40 + 20)];
      v43 = *(v119 + 16);
      v43(v30, v46, v13);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v13);
      v44 = v45;
    }

    v116 = v40;
    v50 = *(v40 + 20);
    v115 = v43;
    v114 = v44;
    v43(v27, (v118 + v50), v13);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v13);
    v54 = *(v18 + 48);
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_12_5(v2);
    if (v59)
    {
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, v56);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, v58);
      OUTLINED_FUNCTION_12_5(v2 + v54);
      if (v59)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
        goto LABEL_15;
      }
    }

    else
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_12_5(v2 + v54);
      if (!v59)
      {
        v60 = v119;
        v61 = v2 + v54;
        v62 = v108;
        (*(v119 + 32))(v108, v61, v13);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v107 = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = *(v60 + 8);
        v63(v62, v13);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd);
        v63(v0, v13);
        v37 = v117;
        v64 = OUTLINED_FUNCTION_33_0();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, v65);
        if ((v107 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_15:
        OUTLINED_FUNCTION_2_112();
        v66 = v118;
        OUTLINED_FUNCTION_26_3();
        _s15ConversationKit11ParticipantVWOcTm_7();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v116);
        OUTLINED_FUNCTION_10_56();
        ParticipantGridViewController.focusedParticipant.setter();
        OUTLINED_FUNCTION_32_16();
        v70();
        ParticipantGridViewController.aspectRatio(for:in:)(v66, 0, &v121);
        v71 = ParticipantGridViewController.orientation(for:in:)(v66, 0);
        Participant.videoInfo.getter();
        if (v122)
        {
          v72 = v123;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v122, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        }

        else
        {
          v72 = 0;
        }

        v73 = v113;
        v18 = v112;
        v31 = v111;
        v74 = OUTLINED_FUNCTION_33_0();
        v75(v74);
        OUTLINED_FUNCTION_24_30(v73 + v31[5]);
        *(v73 + v31[6]) = v71;
        *(v73 + v31[7]) = v72;
        if (one-time initialization token for conversationKit == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd);
      (*(v119 + 8))(v0, v13);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_26;
  }

  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_0_6();
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v76 = OUTLINED_FUNCTION_13_12();
  v119 = xmmword_1BC4BA940;
  *(v76 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_7();
  v77 = OUTLINED_FUNCTION_17_46();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v31);
  specialized >> prefix<A>(_:)();
  v81 = v80;
  v83 = v82;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  *(v76 + 56) = MEMORY[0x1E69E6158];
  *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v76 + 32) = v81;
  *(v76 + 40) = v83;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v84 = ParticipantGridViewController.gridView.getter();
  if (v84)
  {
    v117 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v85 = v116;
    OUTLINED_FUNCTION_42_18();
    *(OUTLINED_FUNCTION_41_16() + 16) = v119;
    OUTLINED_FUNCTION_2_112();
    _s15ConversationKit11ParticipantVWOcTm_7();
    v86 = 1;
    v87 = OUTLINED_FUNCTION_18_41(&v124);
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v13);
    v90 = v37 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (!__swift_getEnumTagSinglePayload(v90, 1, v85))
    {
      OUTLINED_FUNCTION_32_16();
      v91();
      v86 = 0;
    }

    v92 = 1;
    OUTLINED_FUNCTION_55_11(v109, v86);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v93 = OUTLINED_FUNCTION_44_13();
    if (!__swift_getEnumTagSinglePayload(v93, v94, v85))
    {
      OUTLINED_FUNCTION_32_16();
      v95();
      v92 = 0;
    }

    OUTLINED_FUNCTION_55_11(v110, v92);
    _s15ConversationKit11ParticipantVWOcTm_7();
    v96 = OUTLINED_FUNCTION_17_46();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v31);
    v120 = *(v37 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle);
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_66_4();
    v99 = v117;
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, v101);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, v103);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, v105);
    OUTLINED_FUNCTION_33_0();
  }

  _s15ConversationKit11ParticipantVWOhTm_9();
LABEL_26:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ParticipantGridViewController.fullScreenDefocus(to:animationStyle:)(Swift::OpaquePointer to, ConversationKit::ParticipantGridView::AnimationStyle animationStyle)
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_2();
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = (v13 - v12);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v8);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v16 = OUTLINED_FUNCTION_13_12();
  *(v16 + 16) = xmmword_1BC4BA940;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd);
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();

  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_10_56();
  ParticipantGridViewController.focusedParticipant.setter();
  ParticipantGridViewController.update(with:animationStyle:forced:)(v5, v3, 0);
  OUTLINED_FUNCTION_49();
}

uint64_t ParticipantGridViewController.update(with:animationStyle:forced:)(uint64_t a1, int a2, int a3)
{
  v222 = a3;
  v223 = a2;
  v225 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v221 = v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v220 = v204 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v219 = v204 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v215 = v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v224 = v204 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v212 = v204 - v14;
  v243 = type metadata accessor for UUID();
  v241 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v217 = v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v236 = v204 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v229 = v204 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v216 = v204 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v228 = v204 - v23;
  v246 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v246);
  v238 = v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v242 = v204 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v226 = v204 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v204 - v30;
  v32 = type metadata accessor for Participant(0);
  v237 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v227 = v204 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v214 = v204 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v213 = v204 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v240 = v204 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v235 = (v204 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v245 = v204 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v230 = (v204 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v204 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v244 = v204 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v218 = v204 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v232 = v204 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v234 = v204 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v231 = v204 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v204 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v204 - v63;
  v65 = type metadata accessor for DispatchPredicate();
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v68 = (v204 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v68 = static OS_dispatch_queue.main.getter();
  (*(v66 + 104))(v68, *MEMORY[0x1E69E8020], v65);
  v69 = _dispatchPreconditionTest(_:)();
  (*(v66 + 8))(v68, v65);
  if ((v69 & 1) == 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v70 = v239 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v32);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_s15ConversationKit11ParticipantVSgMd);
  if (EnumTagSinglePayload != 1)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1BC4BA940;
      v97 = v244;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      specialized >> prefix<A>(_:)();
      v99 = v98;
      v101 = v100;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s15ConversationKit11ParticipantVSgMd);
      *(v96 + 56) = MEMORY[0x1E69E6158];
      *(v96 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v96 + 32) = v99;
      *(v96 + 40) = v101;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

LABEL_101:
    swift_once();
    goto LABEL_22;
  }

  v72 = v32;
  v73 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
  swift_beginAccess();
  v210 = v73;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  LODWORD(v73) = __swift_getEnumTagSinglePayload(v61, 1, v32);
  result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s15ConversationKit11ParticipantVSgMd);
  if (v73 != 1)
  {
    return result;
  }

  v75 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  v76 = v239;
  swift_beginAccess();
  v211 = *(v76 + v75);

  v77 = ParticipantGridViewController.filterAndTruncate(_:)(v225);
  v233 = v75;
  *(v76 + v75) = v77;

  v209 = ParticipantGridViewController.gridView.getter();
  if (v209)
  {
    v207 = v70;
    v244 = v72;
    v78 = *(v239 + v233);
    v79 = *(v78 + 16);
    if (v79)
    {
      v80 = v78 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
      v81 = *(v237 + 72);
      v204[1] = v241 + 32;
      v205 = (v241 + 16);
      v206 = v78;

      v82 = 0;
      v208 = MEMORY[0x1E69E7CC0];
      v83 = v243;
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOcTm_7();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 4u:
            v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
            v86 = *(v85 + 48);
            outlined consume of Participant.CopresenceInfo?(*&v31[*(v85 + 64)], *&v31[*(v85 + 64) + 8]);
            outlined destroy of Participant.MediaInfo(&v31[v86]);
            v87 = type metadata accessor for Date();
            v88 = (*(*(v87 - 8) + 8))(v31, v87);
            MEMORY[0x1EEE9AC00](v88);
            v204[-2] = v48;
            v89 = v231;
            specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridViewController.update(participant:broadcastingState:), v211, v231);
            if (__swift_getEnumTagSinglePayload(v89, 1, v244) == 1)
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s15ConversationKit11ParticipantVSgMd);
            }

            else
            {
              outlined init with take of Participant(v89, v230);
              if ((Participant.isActive.getter() & 1) != 0 || (Participant.isActive.getter() & 1) == 0)
              {
                _s15ConversationKit11ParticipantVWOhTm_9();
              }

              else
              {
                (*v205)(v228, &v48[*(v244 + 20)], v83);
                v90 = v82;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v208 = v94;
                }

                v91 = *(v208 + 16);
                if (v91 >= *(v208 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v208 = v95;
                }

                _s15ConversationKit11ParticipantVWOhTm_9();
                v92 = v208;
                *(v208 + 16) = v91 + 1;
                v93 = v243;
                (*(v241 + 32))(v92 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v91, v228, v243);
                v82 = v90;
                v83 = v93;
              }
            }

            break;
          case 6u:
            break;
          default:
            v84 = type metadata accessor for Date();
            (*(*(v84 - 8) + 8))(v31, v84);
            break;
        }

        _s15ConversationKit11ParticipantVWOhTm_9();
        v80 += v81;
        --v79;
      }

      while (v79);
    }

    else
    {
      v82 = 0;
      v208 = MEMORY[0x1E69E7CC0];
      v83 = v243;
    }

    ParticipantGridView.participantIdentifiers.getter();
    v103 = v102;
    v104 = *(v239 + v233);
    v105 = *(v104 + 16);
    v106 = MEMORY[0x1E69E7CC0];
    if (v105)
    {
      v230 = v102;
      v228 = v82;
      v249[0] = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v106 = v249[0];
      v107 = *(v237 + 80);
      v206 = v104;
      v108 = v104 + ((v107 + 32) & ~v107);
      v231 = *(v237 + 72);
      v109 = (v241 + 16);
      v110 = v83;
      v111 = v216;
      do
      {
        v112 = v245;
        _s15ConversationKit11ParticipantVWOcTm_7();
        (*v109)(v111, &v112[*(v244 + 20)], v110);
        _s15ConversationKit11ParticipantVWOhTm_9();
        v249[0] = v106;
        v113 = *(v106 + 16);
        if (v113 >= *(v106 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v106 = v249[0];
        }

        *(v106 + 16) = v113 + 1;
        (*(v241 + 32))(v106 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v113, v111, v110);
        v108 += v231;
        --v105;
      }

      while (v105);

      v82 = v228;
      v83 = v110;
      v103 = v230;
    }

    specialized Array<A>.arrayCloselyMatching(_:)(v106, v103);
    v115 = v114;

    v251 = v115;
    v116 = *(v239 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus);
    v117 = v242;
    v118 = v229;
    if (v116)
    {
      v119 = *(v116 + 2);
      v120 = MEMORY[0x1E69E7CC0];
      if (v119)
      {
        v228 = v82;
        v249[0] = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v120 = v249[0];
        v121 = (*(v237 + 80) + 32) & ~*(v237 + 80);
        v216 = v116;
        v122 = &v116[v121];
        v123 = *(v237 + 72);
        v124 = (v241 + 16);
        v230 = (v241 + 32);
        v231 = v123;
        do
        {
          v125 = v245;
          _s15ConversationKit11ParticipantVWOcTm_7();
          (*v124)(v118, &v125[*(v244 + 20)], v83);
          _s15ConversationKit11ParticipantVWOhTm_9();
          v249[0] = v120;
          v126 = v83;
          v127 = *(v120 + 16);
          if (v127 >= *(v120 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v120 = v249[0];
          }

          *(v120 + 16) = v127 + 1;
          (*(v241 + 32))(v120 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v127, v118, v126);
          v122 += v231;
          --v119;
          v83 = v126;
        }

        while (v119);

        v117 = v242;
        v82 = v228;
      }

      specialized Array<A>.sortToMatch(_:)(v120);

      v115 = v251;
    }

    v128 = *(v115 + 2);
    v216 = v115;
    if (v128)
    {
      v129 = *(v241 + 16);
      v130 = &v115[(*(v241 + 80) + 32) & ~*(v241 + 80)];
      v229 = *(v241 + 72);
      v230 = v129;
      v231 = v241 + 16;
      v228 = (v241 + 8);
      v131 = MEMORY[0x1E69E7CC0];
      v132 = v236;
      do
      {
        v245 = v131;
        v133 = v243;
        v134 = (v230)(v132, v130, v243);
        v135 = *(v239 + v233);
        MEMORY[0x1EEE9AC00](v134);
        v204[-2] = v132;

        v136 = v234;
        specialized Sequence.first(where:)(partial apply for closure #1 in closure #4 in ParticipantGridViewController.update(with:animationStyle:forced:), v135, v234);

        (*v228)(v132, v133);
        if (__swift_getEnumTagSinglePayload(v136, 1, v244) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s15ConversationKit11ParticipantVSgMd);
          v117 = v242;
          v131 = v245;
        }

        else
        {
          outlined init with take of Participant(v136, v235);
          v131 = v245;
          v137 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v131 = v139;
          }

          v117 = v242;
          v138 = *(v131 + 2);
          if (v138 >= *(v131 + 3) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v131 = v140;
          }

          *(v131 + 2) = v138 + 1;
          outlined init with take of Participant(v235, &v131[((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v138]);
          v82 = v137;
        }

        v130 += v229;
        --v128;
      }

      while (v128);
    }

    else
    {
      v131 = MEMORY[0x1E69E7CC0];
    }

    v141 = *(v131 + 2);
    if (v141)
    {
      v142 = *(v237 + 80);
      v228 = v82;
      v229 = (v142 + 32) & ~v142;
      v236 = &v131[v229];

      v143 = 0;
      v144 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      v145 = v226;
      v245 = v131;
      v230 = v141;
      while (1)
      {
        if (v143 >= *(v131 + 2))
        {
          __break(1u);
          goto LABEL_100;
        }

        v146 = v144;
        v147 = *(v237 + 72);
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOcTm_7();
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        v231 = v147 * v143;
        v234 = v147;
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v149 = *(v148 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v145[*(v148 + 64)], *&v145[*(v148 + 64) + 8]);
        memcpy(v249, &v145[v149], sizeof(v249));
        v150 = type metadata accessor for Date();
        v235 = *(*(v150 - 8) + 8);
        v235(v145, v150);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        outlined destroy of Participant.MediaInfo(v249);
        if (v250[1].i64[1] == 1)
        {
          goto LABEL_61;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v250, v146);
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOhTm_9();
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          _s15ConversationKit11ParticipantVWOhTm_9();
          memset(v247, 0, 24);
          *&v247[24] = 1;
          bzero(&v247[32], 0xB1uLL);
          v153 = v243;
          v131 = v245;
          v141 = v230;
          v144 = v146;
LABEL_65:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v247, v144);
          goto LABEL_62;
        }

        v151 = *(v148 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v117[*(v148 + 64)], *&v117[*(v148 + 64) + 8]);
        v152 = &v117[v151];
        v145 = v226;
        memcpy(v249, v152, sizeof(v249));
        v235(v117, v150);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        outlined destroy of Participant.MediaInfo(v249);
        v153 = v243;
        v131 = v245;
        v141 = v230;
        v144 = v146;
        if (*&v247[24] == 1)
        {
          goto LABEL_65;
        }

        memcpy(v250, v247, 0xD1uLL);
        v154 = v250[2].i8[8];
        outlined destroy of Participant.ScreenInfo(v250);
        if (v154)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v131 = v202;
          }

          v200 = *(v131 + 2);
          if (v200 <= v143)
          {
            __break(1u);
          }

          else
          {
            v201 = &v131[v229 + v231];
            outlined init with take of Participant(v201, v213);
            specialized UnsafeMutablePointer.moveInitialize(from:count:)(v201 + v234, ~v143 + v200, v201, type metadata accessor for Participant);
            *(v131 + 2) = v200 - 1;
            _s15ConversationKit11ParticipantVWOcTm_7();
            *v247 = v131;
            if (v200 <= *(v131 + 3) >> 1)
            {
LABEL_98:
              v156 = v239;
              specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
              _s15ConversationKit11ParticipantVWOhTm_9();
              v155 = v232;
              goto LABEL_67;
            }
          }

          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v131 = v203;
          *v247 = v203;
          goto LABEL_98;
        }

LABEL_62:
        ++v143;
        v155 = v232;
        v117 = v242;
        if (v141 == v143)
        {

          v156 = v239;
          goto LABEL_67;
        }
      }

      _s15ConversationKit11ParticipantVWOhTm_9();
      memset(v250, 0, 24);
      v250[1].i64[1] = 1;
      bzero(&v250[2], 0xB1uLL);
LABEL_61:
      _s15ConversationKit11ParticipantVWOhTm_9();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v250, v146);
      v153 = v243;
      v131 = v245;
      v144 = v146;
      goto LABEL_62;
    }

    v156 = v239;
    v153 = v243;
    v155 = v232;
LABEL_67:
    *(v156 + v233) = v131;

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v157 = v244;
    if (__swift_getEnumTagSinglePayload(v155, 1, v244) == 1)
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v155, &_s15ConversationKit11ParticipantVSgMd);
      v158 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
      __swift_storeEnumTagSinglePayload(v224, 1, 1, v158);
    }

    else
    {
      v159 = v214;
      outlined init with take of Participant(v155, v214);
      (*(v241 + 16))(v217, v159 + *(v157 + 20), v153);

      v160 = v209;
      v161 = v209;
      ParticipantGridViewController.aspectRatio(for:in:)(v159, v160, v250);
      v162 = ParticipantGridViewController.orientation(for:in:)(v159, v160);

      Participant.videoInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_9();
      if (v249[0])
      {
        v163 = v249[4];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v249, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      }

      else
      {
        v163 = 0;
      }

      v164 = v215;
      (*(v241 + 32))(v215, v217, v153);
      v165 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
      v166 = (v164 + v165[5]);
      v167 = v250[1];
      *v166 = v250[0];
      v166[1] = v167;
      v166[2].i8[0] = v250[2].i8[0];
      *(v164 + v165[6]) = v162;
      *(v164 + v165[7]) = v163;
      __swift_storeEnumTagSinglePayload(v164, 0, 1, v165);
      outlined init with take of CaptionSectioner.SpeakerSection?();
    }

    v245 = v131;
    v168 = *(v225 + 16);
    if (v168)
    {
      v169 = v225 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
      v170 = *(v237 + 72);
      while (2)
      {
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOcTm_7();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 4u:
            v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
            v173 = *(v172 + 48);
            v174 = v238;
            outlined consume of Participant.CopresenceInfo?(*&v238[*(v172 + 64)], *&v238[*(v172 + 64) + 8]);
            outlined destroy of Participant.MediaInfo(&v174[v173]);
            v175 = type metadata accessor for Date();
            v176 = v174;
            v177 = v227;
            (*(*(v175 - 8) + 8))(v176, v175);
            if (!*(v177 + *(v244 + 28)))
            {
              goto LABEL_77;
            }

            v178 = v218;
            outlined init with take of Participant(v177, v218);
            v179 = v178;
            v180 = 0;
            goto LABEL_82;
          case 6u:
            goto LABEL_77;
          default:
            v171 = type metadata accessor for Date();
            (*(*(v171 - 8) + 8))(v238, v171);
LABEL_77:
            _s15ConversationKit11ParticipantVWOhTm_9();
            v169 += v170;
            if (!--v168)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    v178 = v218;
    v179 = v218;
    v180 = 1;
LABEL_82:
    v181 = v244;
    __swift_storeEnumTagSinglePayload(v179, v180, 1, v244);

    v182 = __swift_getEnumTagSinglePayload(v178, 1, v181);
    v184 = v220;
    v183 = v221;
    v185 = v219;
    if (v182 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v178, &_s15ConversationKit11ParticipantVSgMd);
      v186 = 1;
    }

    else
    {
      (*(v241 + 16))(v219, v178 + *(v181 + 20), v153);
      _s15ConversationKit11ParticipantVWOhTm_9();
      v186 = 0;
    }

    v187 = 1;
    __swift_storeEnumTagSinglePayload(v185, v186, 1, v153);
    v188 = v207;
    if (!__swift_getEnumTagSinglePayload(v207, 1, v181))
    {
      (*(v241 + 16))(v184, v188 + *(v181 + 20), v153);
      v187 = 0;
    }

    v189 = 1;
    __swift_storeEnumTagSinglePayload(v184, v187, 1, v153);
    v190 = v156 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
    swift_beginAccess();
    if (!__swift_getEnumTagSinglePayload(v190, 1, v181))
    {
      (*(v241 + 16))(v183, v190 + *(v181 + 20), v153);
      v189 = 0;
    }

    __swift_storeEnumTagSinglePayload(v183, v189, 1, v153);
    v248 = *(v156 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle);
    v191 = v224;
    v192 = v209;
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v183, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v184, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v185, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v191, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  }

  v193 = v239;
  v194 = v239 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v195 = *(v194 + 8);
  ObjectType = swift_getObjectType();
  v197 = *(v193 + v233);
  v198 = *(v195 + 32);

  v198(v193, v211, v197, ObjectType, v195);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall ParticipantGridViewController.updateLayout(_:)(ConversationKit::MultiwayViewController::LayoutStyle a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle;
  if (v2 != v1[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle])
  {
    v4 = v1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationKit);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1BBC58000, v7, v8, "[ParticipantGridViewController] updating layout from %s to %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    v4[v3] = v2;
  }
}

void ParticipantGridViewController.focus(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_79_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v131 - v31;
  v139 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v141 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v36 - v35);
  v142 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v132 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v40 - v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v46 = OUTLINED_FUNCTION_22(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v131 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v131 - v51;
  v53 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_8();
  v59 = (v58 - v57);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v59 = static OS_dispatch_queue.main.getter();
  (*(v55 + 104))(v59, *MEMORY[0x1E69E8020], v53);
  v60 = _dispatchPreconditionTest(_:)();
  (*(v55 + 8))(v59, v53);
  if (v60)
  {
    v140 = v32;
    v137 = v21;
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_6();
LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v61 = OUTLINED_FUNCTION_13_12();
  v131 = xmmword_1BC4BA940;
  *(v61 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_2_112();
  v136 = v26;
  _s15ConversationKit11ParticipantVWOcTm_7();
  v62 = OUTLINED_FUNCTION_17_46();
  v63 = v142;
  __swift_storeEnumTagSinglePayload(v62, v64, v65, v142);
  specialized >> prefix<A>(_:)();
  v67 = v66;
  v69 = v68;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit11ParticipantVSgMd);
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v61 + 32) = v67;
  *(v61 + 40) = v69;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();

  v70 = v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v71 = OUTLINED_FUNCTION_311();
  LODWORD(v67) = __swift_getEnumTagSinglePayload(v71, v72, v63);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit11ParticipantVSgMd);
  if (v67 == 1)
  {
    v73 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus) = *(v24 + v73);
  }

  _s15ConversationKit11ParticipantVWOcTm_7();
  v74 = OUTLINED_FUNCTION_17_46();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v63);
  OUTLINED_FUNCTION_16_45();
  ParticipantGridViewController.focusedParticipant.setter();
  _s15ConversationKit11ParticipantVWOcTm_7();
  v77 = OUTLINED_FUNCTION_17_46();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v63);
  ParticipantGridViewController.select(_:forFocusing:)();
  OUTLINED_FUNCTION_31_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, v81);
  v82 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_96_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v83 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v83, v84, v63);
  v85 = v139;
  if (v86)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    v87 = v138;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);

    v92 = v137;
  }

  else
  {
    OUTLINED_FUNCTION_96_2();
    outlined init with take of Participant(v93, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v95 = OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_4_96(v95, v131);
    _s15ConversationKit11ParticipantVWOcTm_7();
    OUTLINED_FUNCTION_84_4();
    v97 = v134;
    v98(v134, v82 + v96, v85);
    ParticipantGridViewController.aspectRatio(for:in:)(v82, 0, &v144);
    v99 = ParticipantGridViewController.orientation(for:in:)(v82, 0);
    Participant.videoInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v92 = v137;
    if (v145)
    {
      v100 = v146;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v145, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }

    else
    {
      v100 = 0;
    }

    v87 = v138;
    v101 = v133;
    (*(v141 + 32))(v133, v97, v85);
    v102 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    OUTLINED_FUNCTION_24_30(v101 + *(v102 + 20));
    *(v101 + *(v103 + 24)) = v99;
    *(v101 + *(v103 + 28)) = v100;
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  v108 = ParticipantGridViewController.gridView.getter();
  if (v108)
  {
    v109 = v108;
    v110 = 1;
    v111 = OUTLINED_FUNCTION_18_41(&a9);
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v85);
    v114 = OUTLINED_FUNCTION_29_5();
    v115 = v142;
    if (!__swift_getEnumTagSinglePayload(v114, v116, v142))
    {
      OUTLINED_FUNCTION_84_4();
      v118(v92, v70 + v117, v85);
      v110 = 0;
    }

    v119 = 1;
    __swift_storeEnumTagSinglePayload(v92, v110, 1, v85);
    v120 = v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v121 = OUTLINED_FUNCTION_29_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v121, v122, v115);
    v124 = v135;
    if (!EnumTagSinglePayload)
    {
      (*(v141 + 16))(v135, v120 + *(v115 + 20), v85);
      v119 = 0;
    }

    __swift_storeEnumTagSinglePayload(v124, v119, 1, v85);
    v143 = *(v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle);
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();

    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v125, v126);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v127, v128);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, v130);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ParticipantGridViewController.defocus(to:)(Swift::OpaquePointer to)
{
  OUTLINED_FUNCTION_29();
  v6 = v2;
  v137 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_159();
  v139 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v126 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v21);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v31);
  v136 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v121 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v37);
  v38 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v40 + 104))(v3, *MEMORY[0x1E69E8020], v38);
  v42 = _dispatchPreconditionTest(_:)();
  v43 = OUTLINED_FUNCTION_33_0();
  v44(v43);
  if (v42)
  {
    v131 = v1;
    v127 = v6;
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_6();
LABEL_3:
  v45 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v46 = OUTLINED_FUNCTION_13_12();
  *(v46 + 16) = xmmword_1BC4BA940;
  v145 = v137;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd);
  v47 = String.init<A>(reflecting:)();
  v49 = v48;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v46 + 32) = v47;
  *(v46 + 40) = v49;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();

  v134 = *(v137 + 16);
  if (!v134)
  {

    goto LABEL_26;
  }

  v50 = &v127[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant];
  v45 = v121;
  v51 = (*(v121 + 80) + 32) & ~*(v121 + 80);

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v52 = 0;
  v132 = *(v121 + 72);
  v130 = (v126 + 8);
  v133 = (v126 + 16);
  v49 = &_s10Foundation4UUIDVSgMd;
  OUTLINED_FUNCTION_85_0();
  while (1)
  {
    OUTLINED_FUNCTION_2_112();
    _s15ConversationKit11ParticipantVWOcTm_7();
    v5 = v50;
    if (__swift_getEnumTagSinglePayload(v50, 1, v45))
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v139);
      v56 = *v133;
    }

    else
    {
      v56 = *v133;
      OUTLINED_FUNCTION_65_8();
      v56(v57);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v50);
    }

    OUTLINED_FUNCTION_65_8();
    v56(v61);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v50);
    v45 = *(v135 + 48);
    OUTLINED_FUNCTION_96_2();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v65 = OUTLINED_FUNCTION_311();
    if (__swift_getEnumTagSinglePayload(v65, v66, v50) == 1)
    {
      break;
    }

    v5 = v139;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v4 + v45, 1, v139);
    if (v69)
    {
      OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_0_129();
      _s15ConversationKit11ParticipantVWOhTm_9();
      (*v130)(v131, v139);
      v68 = v4;
LABEL_15:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation4UUIDVSg_ADtMd);
      goto LABEL_17;
    }

    (*(v126 + 32))(v128, v4 + v45, v139);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    OUTLINED_FUNCTION_44_0();
    v129 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = v126 + 8;
    v70 = *v130;
    (*v130)(v128, v139);
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v70(v131, v139);
    v67 = v137;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4UUIDVSgMd);
    if (v129)
    {
      goto LABEL_20;
    }

LABEL_17:
    ++v52;
    v51 += v132;
    v45 = v136;
    if (v134 == v52)
    {
      OUTLINED_FUNCTION_82_5();
      goto LABEL_27;
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_51_13();
  OUTLINED_FUNCTION_0_129();
  _s15ConversationKit11ParticipantVWOhTm_9();
  OUTLINED_FUNCTION_115(v4 + v45, 1, v139);
  v67 = v137;
  v68 = v4;
  if (!v69)
  {
    goto LABEL_15;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4UUIDVSgMd);
LABEL_20:
  if (!v52)
  {
LABEL_26:
    OUTLINED_FUNCTION_82_5();
    OUTLINED_FUNCTION_85_0();
LABEL_27:
    v73 = v122;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_112();
  _s15ConversationKit11ParticipantVWOcTm_7();
  v49 = v127;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v67 = v117;
  }

  v71 = v67;
  v72 = *(v67 + 16);
  if (v72 <= v52)
  {
    __break(1u);
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v71 + v51 + v132, ~v52 + v72, v71 + v51, type metadata accessor for Participant);
    *(v71 + 16) = v72 - 1;
    _s15ConversationKit11ParticipantVWOcTm_7();
    v143 = v71;
    v137 = v71;
    if (v72 <= *(v71 + 24) >> 1)
    {
      goto LABEL_25;
    }
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v137 = v118;
  v143 = v118;
LABEL_25:
  v4 = v124;
  v73 = v122;
  v45 = &v143;
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
  OUTLINED_FUNCTION_0_129();
  _s15ConversationKit11ParticipantVWOhTm_9();
  OUTLINED_FUNCTION_85_0();
LABEL_28:
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v74 = &v49[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant];
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of Participant?(v73, v74);
  swift_endAccess();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v45);
  OUTLINED_FUNCTION_16_45();
  ParticipantGridViewController.focusedParticipant.setter();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_30_20();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v78 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v78, v79, v45);
  if (v69)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit11ParticipantVSgMd);
    ParticipantGridViewController.update(with:animationStyle:forced:)(v137, 1, 0);
  }

  else
  {
    outlined init with take of Participant(v123, v125);
    v80 = ParticipantGridViewController.gridView.getter();
    if (v80)
    {
      v81 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
      *(OUTLINED_FUNCTION_41_16() + 16) = xmmword_1BC4BA940;
      OUTLINED_FUNCTION_2_112();
      _s15ConversationKit11ParticipantVWOcTm_7();
      v82 = OUTLINED_FUNCTION_18_41(&v141);
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v139);
      v85 = OUTLINED_FUNCTION_18_41(&v142);
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v139);
      OUTLINED_FUNCTION_85_0();
      if (__swift_getEnumTagSinglePayload(v88, v89, v139))
      {
        v90 = OUTLINED_FUNCTION_18_41(&v140);
        __swift_storeEnumTagSinglePayload(v90, v91, v92, v139);
        v93 = v139;
        v94 = *(v126 + 16);
      }

      else
      {
        v93 = v139;
        v94 = *(v126 + 16);
        OUTLINED_FUNCTION_65_8();
        v94(v95);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v96, v97, v98, v5);
      }

      (v94)(v120, v125 + *(v93 + 20), v139);
      ParticipantGridViewController.aspectRatio(for:in:)(v125, 0, &v144);
      v99 = ParticipantGridViewController.orientation(for:in:)(v125, 0);
      Participant.videoInfo.getter();
      if (v145)
      {
        v100 = v146;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v145, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      }

      else
      {
        v100 = 0;
      }

      (*(v126 + 32))(v119, v120, v139);
      v101 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
      OUTLINED_FUNCTION_24_30(v119 + *(v101 + 20));
      *(v119 + *(v102 + 24)) = v99;
      *(v119 + *(v102 + 28)) = v100;
      v103 = OUTLINED_FUNCTION_17_46();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
      OUTLINED_FUNCTION_66_4();
      ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, v108);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, v110);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v111, v112);
      OUTLINED_FUNCTION_0_129();
    }

    else
    {
      OUTLINED_FUNCTION_0_129();
    }

    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  *&v49[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus] = 0;

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v113 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v113, v114, v136);
  if (v69)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    outlined init with take of Participant(v115, v116);
    ParticipantGridViewController.update(participant:broadcastingState:)();
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  OUTLINED_FUNCTION_30_0();
}