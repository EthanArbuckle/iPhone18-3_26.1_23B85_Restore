char *SystemRootLayerProxyViewController.init()()
{
  v1 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_windowSceneOrientationSubscription] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_orientationTraitSubscription] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_systemRootLayerProxyView] = [objc_allocWithZone(type metadata accessor for SystemRootLayerProxyView()) init];
  v7 = type metadata accessor for SystemRootLayerProxyViewController();
  v14.receiver = v0;
  v14.super_class = v7;
  v8 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  v12 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v1);
  *&v10[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_windowSceneOrientationSubscription] = v12;

  return v10;
}

void closure #1 in SystemRootLayerProxyViewController.init()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setPreferredContentSize_];
  }
}

id SystemRootLayerProxyViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemRootLayerProxyViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_windowSceneOrientationSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_orientationTraitSubscription) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SystemRootLayerProxyViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SystemRootLayerProxyViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setPreferredContentSize_];
}

Swift::Void __swiftcall SystemRootLayerProxyViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v3 = v2;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SystemRootLayerProxyViewController();
  [(UIWindow_optional *)&v6 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  [v3 setPreferredContentSize_];
}

void SystemRootLayerProxyViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for SystemRootLayerProxyViewController();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = partial apply for closure #1 in SystemRootLayerProxyViewController.viewWillTransition(to:with:);
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v10[3] = &block_descriptor_12;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

id SystemRootLayerProxyViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id SystemRootLayerProxyView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id SystemRootLayerProxy.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for SystemRootLayerProxyViewController());

  return [v0 init];
}

unint64_t lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy()
{
  result = lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy;
  if (!lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy;
  if (!lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SystemRootLayerProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SystemRootLayerProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance SystemRootLayerProxy()
{
  lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t partial apply for closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()(a1, v4, v5, v6);
}

void partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)()
{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)();
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)();
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)();
}

uint64_t lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UIView, CGAffineTransform> and conformance NSObject.KeyValueObservingPublisher<A, B>(unint64_t *a1, uint64_t *a2)
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

void *Participant.screenTransform.getter@<X0>(void *a1@<X8>)
{
  Participant.screenInfo.getter();
  if (*(v1 + *(type metadata accessor for Participant(0) + 28)))
  {
    outlined init with copy of Participant.ScreenInfo?();
    if (v10 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      memcpy(&__dst, MEMORY[0x1E69792E8], sizeof(__dst));
    }

    else
    {
      v4 = v12;
      outlined destroy of Participant.ScreenInfo(v9);
      static Participant.screenRotationFor(_:)(v4);
      CATransform3DMakeRotation(&__dst, v5, 0.0, 0.0, 1.0);
    }
  }

  else
  {
    outlined init with copy of Participant.ScreenInfo?();
    if (v10 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v3 = 1;
    }

    else
    {
      v3 = v11;
      outlined destroy of Participant.ScreenInfo(v9);
    }

    v6 = [objc_opt_self() currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    _s15ConversationKit11ParticipantV017transformForLocalC017deviceOrientation10cameraType12currentIdiom8defaultsSo13CATransform3DVSo09CNKDeviceH0V_AC9VideoInfoV06CameraJ0OSo015UIUserInterfaceL0VAA16DefaultsProvider_ptFZTf4nnnen_nAA0U0C_Tt3g5(v3, 2, v7, static Defaults.shared, &__dst);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  return memcpy(a1, &__dst, 0x80uLL);
}

uint64_t ParticipantViewModel.ParticipantDetails.identifier.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t ParticipantViewModel.ParticipantDetails.identifier.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_38_2();

  return v1(v0);
}

uint64_t ParticipantViewModel.ParticipantDetails.displayName.getter()
{
  type metadata accessor for ParticipantViewModel.ParticipantDetails(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t ParticipantViewModel.ParticipantDetails.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ParticipantViewModel.ParticipantDetails(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.displayName.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isMomentsAvailable.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isMomentsAvailable.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isLocal.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isLocal.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isKickingAvailable.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isKickingAvailable.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isMostActive.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isMostActive.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isPreviewingReaction.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isPreviewingReaction.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isCameraMixedWithScreen.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isCameraMixedWithScreen.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.init(participant:isMostActive:isPreviewingReaction:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Participant(0);
  v11 = *(v10 + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v12 + 16))(a5, a1 + v11);
  Participant.contactDetails.getter();

  Participant.name(_:)();
  v14 = v13;
  v16 = v15;

  v17 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v18 = (a5 + v17[5]);
  *v18 = v14;
  v18[1] = v16;
  if (*(a1 + *(v10 + 24)) == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v20 = v19 ^ 1;
  }

  else
  {
    v20 = 0;
  }

  *(a5 + v17[6]) = v20 & 1;
  OUTLINED_FUNCTION_16_29();
  *(a5 + v17[7]) = v21;
  Participant.isKickingAvailable.getter();
  v22 = OUTLINED_FUNCTION_33_5();
  if (v23 & 1) != 0 && (a4)
  {
    v22 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  *(a5 + v17[8]) = v22 & 1;
  *(a5 + v17[9]) = a2 & 1;
  *(a5 + v17[10]) = a3 & 1;
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_61();
  result = _s15ConversationKit11ParticipantVWOhTm_4();
  if (v26)
  {
    v25 = v27;
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v26, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  else
  {
    v25 = 0;
  }

  *(a5 + v17[11]) = v25 & 1;
  return result;
}

uint64_t ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _BOOL4 a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12)
{
  LODWORD(v556) = a7;
  v551 = a6;
  v504 = a5;
  LODWORD(v555) = a4;
  v559 = a3;
  v549 = a2;
  v558 = a8;
  v548 = a12;
  v525 = a11;
  *&v560 = a10;
  v547 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  v544 = &v500 - v15;
  v553 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v561 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v507 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v502 = v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v505 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v512 = v29;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v509 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v510 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v518 = v35;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v519 = v37;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v523 = v39;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v524 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v530 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v531 = v45;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v535 = v47;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v528 = v49;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v541 = v51;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v542 = v53;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v533 = v55;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v56);
  v534 = &v500 - v57;
  v552 = type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_17();
  v503 = v59 - v60;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5();
  v506 = v62;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5();
  v513 = v64;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  v521 = v66;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  v526 = v68;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5();
  v538 = v70;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v536 = v72;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5();
  v546 = v74;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v75);
  v539 = &v500 - v76;
  v554 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_17();
  v80 = v78 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v500 - v82;
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  v501 = v85;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5();
  v511 = v87;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  v517 = v89;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5();
  v515 = v91;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5();
  v508 = v93;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5();
  v514 = v95;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5();
  v516 = v97;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5();
  v520 = v99;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5();
  v522 = v101;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5();
  v532 = v103;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_5();
  v529 = v105;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5();
  v537 = v107;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5();
  v527 = v109;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5();
  v543 = v111;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5();
  v540 = v113;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5();
  v545 = v115;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v500 - v117;
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v120);
  v557 = &v500 - v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateO_AC9VideoInfoVSgtMd);
  v123 = v122 - 8;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v500 - v124;
  Participant.videoInfo.getter();
  v126 = *(v123 + 56);
  outlined init with copy of Participant.State();
  v127 = &v125[v126];
  v128 = v125;
  memcpy(v127, v573, 0x4BuLL);
  memcpy(__dst, v573, 0x4BuLL);
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 5u:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v129 + 8))(v125);
      goto LABEL_11;
    case 3u:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      OUTLINED_FUNCTION_1_62();
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_49_6();
      ParticipantViewModel.init(ringingParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)(v142, v143, v144);
      goto LABEL_9;
    case 4u:
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v131 = *(v130 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v128[*(v130 + 64)], *&v128[*(v130 + 64) + 8]);
      if (!__dst[0])
      {
        OUTLINED_FUNCTION_1_62();
        OUTLINED_FUNCTION_63_4();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v118, v559, v555 & 1, v556 & 1, v558);

        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_136;
      }

      v561 = v128;
      v132 = BYTE6(__dst[1]);
      v133 = HIBYTE(__dst[1]);
      v134 = LOBYTE(__dst[2]);
      v551 = BYTE1(__dst[2]);
      v135 = BYTE1(__dst[9]);
      v550 = a1;
      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (v135)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        OUTLINED_FUNCTION_1_62();
        v136 = v557;
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v136, v137, 0, v138, v558);

        OUTLINED_FUNCTION_0_61();
LABEL_135:
        _s15ConversationKit11ParticipantVWOhTm_4();
        v128 = v561;
        goto LABEL_136;
      }

      v182 = v550;
      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (Participant.isVideoPaused.getter())
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        if (v555)
        {
          OUTLINED_FUNCTION_1_62();
          OUTLINED_FUNCTION_30_9();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v185 = v558;
          v186 = v182;
          v187 = 1;
LABEL_27:
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v186, v183, v187, v184, v185);
LABEL_31:

LABEL_32:
          OUTLINED_FUNCTION_0_61();
          goto LABEL_135;
        }

        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        *(&v568 + 1) = &type metadata for ImageNames.ParticipantView;
        *&v569 = &protocol witness table for ImageNames.ParticipantView;
        LOBYTE(v567) = 8;
        OUTLINED_FUNCTION_56_4();
        Participant.videoProvider(for:)();
        if (*(&v571[1] + 1))
        {
          v223 = v131;
          outlined init with take of TapInteractionHandler(v571, &v562);
          OUTLINED_FUNCTION_1_62();
          outlined init with copy of Participant.State();
          v224 = v554;
          v225 = v554[5];
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_20_3();
          v227 = v533;
          (*(v226 + 16))(v533, &v118[v225]);
          Participant.contactDetails.getter();
          v228 = *&v571[0];

          Participant.name(_:)();
          v230 = v229;
          v232 = v231;

          OUTLINED_FUNCTION_68_1();
          v234 = (v227 + v233);
          *v234 = v230;
          v234[1] = v232;
          if (v118[*(v224 + 24)])
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_38_10();
          *(v227 + v292) = v291;
          *(v227 + *(v293 + 28)) = *&v118[*(v224 + 28)] == 0;
          Participant.isKickingAvailable.getter();
          v294 = OUTLINED_FUNCTION_33_5();
          v131 = v223;
          if (v295)
          {
            v296 = v547;
            if (v556)
            {
              v294 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v296 = v547;
          }

          OUTLINED_FUNCTION_31_13(v294);
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v574[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v574, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          }

          OUTLINED_FUNCTION_36_12();
          *(v227 + v327) = v328;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          outlined init with copy of IDSLookupManager(&v562, v571);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v562);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v296 & 1);
          outlined init with take of TapInteractionHandler(&v567, v572);
          v572[6] = 0;
          v572[5] = 0;
          LOBYTE(v572[13]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          OUTLINED_FUNCTION_40_12();
          v329 = v539;
LABEL_132:
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          OUTLINED_FUNCTION_65_2();
          v395 = v571 + v329;
LABEL_133:
          memcpy(v395, v572, 0x69uLL);
          OUTLINED_FUNCTION_79_4();
          goto LABEL_134;
        }

        v500 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        *&v555 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v280 = OUTLINED_FUNCTION_54();
        *(v280 + 16) = xmmword_1BC4BAA20;
        LOBYTE(v571[0]) = v134;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        *(v280 + 56) = MEMORY[0x1E69E6158];
        v281 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v281);
        v282 = v544;
        outlined init with copy of Participant.State();
        v283 = OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_58_4(v283, v284, v285);
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v282, &_s15ConversationKit11ParticipantVSgMd);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22();

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v286 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v286, v287, v288, v289, v290);

        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        __swift_destroy_boxed_opaque_existential_1(&v567);
LABEL_124:
        v131 = v500;
LABEL_134:
        OUTLINED_FUNCTION_8_44();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        OUTLINED_FUNCTION_0_61();
        goto LABEL_135;
      }

      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (Participant.isVideoSuspended.getter())
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        OUTLINED_FUNCTION_1_62();
        OUTLINED_FUNCTION_30_9();
        outlined init with copy of Participant.State();
        ParticipantViewModel.init(monogramVideoParticipant:videoProviderType:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:shouldRegisterVideoLayers:)(v549, v559, v556 & 1, v547 & 1, v548 & 1, v558);
        goto LABEL_31;
      }

      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (v132)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_56_4();
        Participant.videoProvider(for:)();
        if (*(&v571[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v571, v574);
          OUTLINED_FUNCTION_1_62();
          v188 = v540;
          outlined init with copy of Participant.State();
          v189 = v554;
          v190 = v554[5];
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_20_3();
          v192 = v541;
          (*(v191 + 16))(v541, v188 + v190);
          Participant.contactDetails.getter();
          v193 = *&v571[0];
          OUTLINED_FUNCTION_34_13();

          Participant.name(_:)();
          OUTLINED_FUNCTION_37_16();
          v194 = v553;
          v195 = (v192 + *(v553 + 20));
          *v195 = v193;
          v195[1] = v182;
          if (*(v188 + *(v189 + 24)))
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_52_4();
          *(v192 + v263) = v262;
          OUTLINED_FUNCTION_16_29();
          *(v192 + v194[7]) = v264;
          Participant.isKickingAvailable.getter();
          v265 = OUTLINED_FUNCTION_33_5();
          if (v266 & 1) != 0 && (v556)
          {
            v265 = Participant.canShowKickButtonOnVideoTile.getter();
          }

          *(v192 + v194[8]) = v265 & 1;
          OUTLINED_FUNCTION_24_17();
          *(v192 + v267) = v268;
          *(v192 + v194[10]) = 0;
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v572[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v572, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          }

          v269 = v547;
          v270 = v546;
          OUTLINED_FUNCTION_51_4();
          *(v192 + v271) = v272;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          outlined init with copy of IDSLookupManager(v574, v571);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(v574);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v269 & 1);
          v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          v274 = *(v273 + 48);
          v275 = v270 + *(v273 + 64);
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          memcpy((v270 + v274), v571, 0xACuLL);
          *v275 = 0u;
          *(v275 + 16) = 0u;
          *(v275 + 32) = 0u;
          *(v275 + 48) = 0u;
          *(v275 + 64) = 0u;
          *(v275 + 80) = 0u;
          *(v275 + 96) = 0;
          *(v275 + 104) = 6;
          OUTLINED_FUNCTION_79_4();
        }

        else
        {
          v500 = v131;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          *&v555 = static OS_os_log.conversationKit;
          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v235 = OUTLINED_FUNCTION_54();
          *(v235 + 16) = xmmword_1BC4BAA20;
          LOBYTE(v571[0]) = v134;
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_43_7();
          *(v235 + 56) = MEMORY[0x1E69E6158];
          v236 = lazy protocol witness table accessor for type String and conformance String();
          OUTLINED_FUNCTION_4_41(v236);
          v237 = v544;
          outlined init with copy of Participant.State();
          v238 = OUTLINED_FUNCTION_20_4();
          __swift_storeEnumTagSinglePayload(v238, v239, v240, v554);
          specialized >> prefix<A>(_:)();
          OUTLINED_FUNCTION_47_7();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v237, &_s15ConversationKit11ParticipantVSgMd);
          OUTLINED_FUNCTION_53_7();
          OUTLINED_FUNCTION_17_22();

          OUTLINED_FUNCTION_19_13();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v241 = OUTLINED_FUNCTION_44_7();
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v241, v242, v243, v244, v245);

          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          v131 = v500;
        }

        goto LABEL_134;
      }

      if ((Participant.isReceivingVideoFrames.getter() & 1) != 0 && Participant.videoDegradedState.getter())
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        Participant.videoInfo.getter();
        v196 = v554;
        v197 = v535;
        if (!v574[0])
        {
          goto LABEL_49;
        }

        v198 = *&v574[7];
        v199 = *&v574[8];
        v200 = v575;
        v201 = *&v574[6];
        v202 = *&v574[5];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v574, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        v203 = v202 == 1.0;
        if (v201 != 1.0)
        {
          v203 = 0;
        }

        if ((v200 & 1) == 0 && !v203)
        {
          goto LABEL_49;
        }

        v204 = 0;
        v205 = v198 == 1.0;
        if (v199 != 1.0)
        {
          v205 = 0;
        }

        v206 = 0;
        if ((v200 & 1) == 0 && !v205)
        {
LABEL_49:
          if (Participant.videoDegradedState.getter() == 2)
          {
            v207 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_5_5();
            OUTLINED_FUNCTION_48_1(v208 + 10, 0x80000001BC4F8AB0, v209, v210);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v211 = swift_allocObject();
            *(v211 + 16) = xmmword_1BC4BA940;
            Participant.contactDetails.getter();
            v212 = v131;
            v213 = *&v571[0];
            v214 = *(&v571[1] + 1);
            v215 = *&v571[2];

            v131 = v212;
            *(v211 + 56) = MEMORY[0x1E69E6158];
            *(v211 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v211 + 32) = v214;
            *(v211 + 40) = v215;
            v196 = v554;
            v204 = String.init(format:_:)();
            v206 = v216;
          }

          else
          {
            v297 = Participant.videoDegradedState.getter();
            v298 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_5_5();
            if (v297 == 3)
            {
              v303 = v302 | 6;
              v304 = v301 | 0x8000000000000000;
            }

            else
            {
              v304 = v301 | 0x8000000000000000;
              v303 = 0xD000000000000019;
            }

            v204 = OUTLINED_FUNCTION_48_1(v303, v304, v299, v300);
            v206 = v330;
          }
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v331 = Features.isPoorConnectionLabelsEnabled.getter();
        v332 = v549;
        if ((v331 & 1) == 0)
        {

          v204 = 0;
          v206 = 0;
        }

        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        if (one-time initialization token for badConnectionTitle1 != -1)
        {
          swift_once();
        }

        v567 = static SymbolImageDescription.badConnectionTitle1;
        v568 = unk_1EBCDB398;
        v569 = xmmword_1EBCDB3A8;
        v570 = unk_1EBCDB3B8;
        v333 = objc_opt_self();
        v334 = *MEMORY[0x1E69DDD80];
        v335 = OUTLINED_FUNCTION_50_7();
        outlined init with copy of SymbolImageDescription(v335, v336);
        v337 = [v333 preferredFontForTextStyle_];
        Participant.videoProvider(for:)();
        v500 = v131;
        *&v555 = v337;
        if (*(&v571[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v571, v566);
          OUTLINED_FUNCTION_1_62();
          v338 = v527;
          outlined init with copy of Participant.State();
          v339 = *(v196 + 20);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_20_3();
          (*(v340 + 16))(v197, v338 + v339);
          Participant.contactDetails.getter();
          v341 = *&v571[0];

          Participant.name(_:)();
          v343 = v342;
          v345 = v344;

          OUTLINED_FUNCTION_68_1();
          v347 = (v197 + v346);
          *v347 = v343;
          v347[1] = v345;
          OUTLINED_FUNCTION_45_8();
          if (v348)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          v362 = v536;
          OUTLINED_FUNCTION_38_10();
          *(v197 + v364) = v363;
          OUTLINED_FUNCTION_15_19();
          *(v197 + *(v365 + 28)) = v366;
          Participant.isKickingAvailable.getter();
          v367 = OUTLINED_FUNCTION_33_5();
          if (v368)
          {
            v369 = v547;
            if (v556)
            {
              v367 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v369 = v547;
          }

          v397 = v553;
          *(v197 + *(v553 + 32)) = v367 & 1;
          *(v197 + *(v397 + 36)) = v559;
          *(v197 + *(v397 + 40)) = 0;
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v572[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v572, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          }

          OUTLINED_FUNCTION_36_12();
          *(v197 + v398) = v399;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          outlined init with copy of IDSLookupManager(v566, v571);
          Participant.videoTransform.getter();

          __swift_destroy_boxed_opaque_existential_1(v566);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          memcpy(&v571[2] + 8, v576, 0x80uLL);
          OUTLINED_FUNCTION_9_28(v369 & 1);
          v562 = v567;
          v563 = v568;
          v564 = v569;
          v565 = v570;
          v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          v401 = *(v400 + 48);
          v402 = v362 + *(v400 + 64);
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          memcpy((v362 + v401), v571, 0xACuLL);
          v403 = v563;
          *v402 = v562;
          *(v402 + 16) = v403;
          v404 = v565;
          *(v402 + 32) = v564;
          *(v402 + 48) = v404;
          *(v402 + 64) = v204;
          *(v402 + 72) = v206;
          *(v402 + 80) = v555;
          *(v402 + 104) = 3;
          OUTLINED_FUNCTION_79_4();
        }

        else
        {

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          v553 = static OS_os_log.conversationKit;
          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v349 = OUTLINED_FUNCTION_54();
          *(v349 + 16) = xmmword_1BC4BAA20;
          LOBYTE(v571[0]) = v332;
          String.init<A>(reflecting:)();
          v350 = MEMORY[0x1E69E6158];
          *(v349 + 56) = MEMORY[0x1E69E6158];
          v351 = lazy protocol witness table accessor for type String and conformance String();
          OUTLINED_FUNCTION_29_12(v351);
          v352 = v544;
          outlined init with copy of Participant.State();
          __swift_storeEnumTagSinglePayload(v352, 0, 1, v554);
          specialized >> prefix<A>(_:)();
          v354 = v353;
          v356 = v355;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v352, &_s15ConversationKit11ParticipantVSgMd);
          *(v349 + 96) = v350;
          *(v349 + 104) = v332;
          *(v349 + 72) = v354;
          *(v349 + 80) = v356;
          os_log(_:dso:log:type:_:)();

          OUTLINED_FUNCTION_19_13();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v357 = OUTLINED_FUNCTION_44_7();
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v357, v358, v359, v360, v361);

          outlined destroy of SymbolImageDescription(&v567);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
        }

        goto LABEL_142;
      }

      v217 = Participant.isReceivingVideoFrames.getter();
      v218 = v554;
      if (v217 & 1) != 0 && (v133)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        LOBYTE(v572[0]) = 0;
        LOBYTE(v572[13]) = 0;
        OUTLINED_FUNCTION_56_4();
        Participant.videoProvider(for:)();
        if (*(&v571[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v571, &v567);
          OUTLINED_FUNCTION_1_62();
          v219 = v529;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v221 = v530;
          (*(v220 + 16))(v530, &v118[v219]);
          Participant.contactDetails.getter();
          OUTLINED_FUNCTION_26_15();

          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_37_16();
          OUTLINED_FUNCTION_25_20();
          if (v222)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_52_4();
          *(v221 + v317) = v316;
          OUTLINED_FUNCTION_15_19();
          *(v221 + *(v118 + 7)) = v318;
          Participant.isKickingAvailable.getter();
          v319 = OUTLINED_FUNCTION_33_5();
          if (v320)
          {
            v321 = v547;
            if (v556)
            {
              v319 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v321 = v547;
          }

          OUTLINED_FUNCTION_18_25(v319);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v574[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v574, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          }

          OUTLINED_FUNCTION_51_4();
          *(v221 + v391) = v392;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v393 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v393, v394);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v567);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v321 & 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          OUTLINED_FUNCTION_40_12();
          v329 = v538;
          goto LABEL_132;
        }

        v500 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        *&v555 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v305 = OUTLINED_FUNCTION_54();
        *(v305 + 16) = xmmword_1BC4BAA20;
        LOBYTE(v571[0]) = v134;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        *(v305 + 56) = MEMORY[0x1E69E6158];
        v306 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v306);
        v307 = v544;
        outlined init with copy of Participant.State();
        v308 = OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_58_4(v308, v309, v310);
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v307, &_s15ConversationKit11ParticipantVSgMd);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22();

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        goto LABEL_90;
      }

      v246 = Participant.isReceivingVideoFrames.getter();
      v247 = v549;
      if ((v246 & 1) != 0 && v560)
      {
        v248 = v560;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        v572[0] = v248;
        LOBYTE(v572[13]) = 5;
        v249 = v248;
        Participant.videoProvider(for:)();
        if (*(&v571[1] + 1))
        {
          *&v560 = v249;
          v250 = v131;
          outlined init with take of TapInteractionHandler(v571, &v567);
          OUTLINED_FUNCTION_1_62();
          v251 = v522;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v253 = v523;
          (*(v252 + 16))(v523, &v249[v251]);
          Participant.contactDetails.getter();
          v254 = *&v571[0];

          Participant.name(_:)();
          v256 = v255;
          v258 = v257;

          OUTLINED_FUNCTION_68_1();
          v260 = (v253 + v259);
          *v260 = v256;
          v260[1] = v258;
          OUTLINED_FUNCTION_45_8();
          if (v261)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          v131 = v250;
          OUTLINED_FUNCTION_38_10();
          *(v253 + v384) = v383;
          OUTLINED_FUNCTION_15_19();
          *(v253 + *(v385 + 28)) = v386;
          Participant.isKickingAvailable.getter();
          v387 = OUTLINED_FUNCTION_33_5();
          v388 = v560;
          if (v389)
          {
            v390 = v547;
            if (v556)
            {
              v387 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v390 = v547;
          }

          OUTLINED_FUNCTION_31_13(v387);
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v574[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v574, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          }

          OUTLINED_FUNCTION_36_12();
          *(v253 + v424) = v425;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v426 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v426, v427);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v567);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          memcpy(&v571[2] + 8, v576, 0x80uLL);
          OUTLINED_FUNCTION_9_28(v390 & 1);
          v428 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd) + 64);
          v429 = v526;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          OUTLINED_FUNCTION_65_2();
          v395 = (v429 + v428);
          goto LABEL_133;
        }

        v500 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        *&v560 = static OS_os_log.conversationKit;
        LODWORD(v555) = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v370 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_72_2(v370, xmmword_1BC4BAA20);
        String.init<A>(reflecting:)();
        v371 = MEMORY[0x1E69E6158];
        v370[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v372 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_29_12(v372);
        v373 = v544;
        outlined init with copy of Participant.State();
        __swift_storeEnumTagSinglePayload(v373, 0, 1, v554);
        specialized >> prefix<A>(_:)();
        v375 = v374;
        v377 = v376;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v373, &_s15ConversationKit11ParticipantVSgMd);
        v370[6].n128_u64[0] = v371;
        v370[6].n128_u64[1] = v218;
        v370[4].n128_u64[1] = v375;
        v370[5].n128_u64[0] = v377;
        os_log(_:dso:log:type:_:)();

        OUTLINED_FUNCTION_30_9();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v378 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v378, v379, v380, v381, v382);

        outlined destroy of ParticipantVideoOverlayView.ViewModel(v572);
        OUTLINED_FUNCTION_0_61();
        goto LABEL_123;
      }

      if ((Participant.isReceivingVideoFrames.getter() & 1) != 0 && (v134 & 1) != 0 && (v525 & 1) == 0)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        LOBYTE(v572[0]) = 1;
        OUTLINED_FUNCTION_55_5();
        Participant.videoProvider(for:)();
        if (*(&v571[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v571, &v567);
          OUTLINED_FUNCTION_1_62();
          v276 = v516;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v278 = v518;
          (*(v277 + 16))(v518, &v118[v276]);
          Participant.contactDetails.getter();
          OUTLINED_FUNCTION_26_15();

          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_37_16();
          OUTLINED_FUNCTION_25_20();
          if (v279)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_52_4();
          *(v278 + v419) = v418;
          OUTLINED_FUNCTION_15_19();
          *(v278 + *(v118 + 7)) = v420;
          Participant.isKickingAvailable.getter();
          v421 = OUTLINED_FUNCTION_33_5();
          if (v422)
          {
            v423 = v547;
            if (v556)
            {
              v421 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v423 = v547;
          }

          OUTLINED_FUNCTION_18_25(v421);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v574[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v574, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          }

          OUTLINED_FUNCTION_51_4();
          *(v278 + v437) = v438;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v439 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v439, v440);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v567);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v423 & 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          OUTLINED_FUNCTION_40_12();
          v329 = v521;
          goto LABEL_132;
        }

        v500 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        if (one-time initialization token for conversationKit == -1)
        {
          goto LABEL_147;
        }

LABEL_193:
        OUTLINED_FUNCTION_0_6();
LABEL_147:
        *&v555 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v412 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_72_2(v412, xmmword_1BC4BAA20);
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        v412[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v413 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v413);
        v414 = v544;
        outlined init with copy of Participant.State();
        v415 = OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_58_4(v415, v416, v417);
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v414, &_s15ConversationKit11ParticipantVSgMd);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22();

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
LABEL_90:
        v311 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v311, v312, v313, v314, v315);

        outlined destroy of ParticipantVideoOverlayView.ViewModel(v572);
        OUTLINED_FUNCTION_0_61();
LABEL_123:
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_124;
      }

      v322 = Participant.isReceivingVideoFrames.getter();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v322 & 1) != 0 && (v551)
      {
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        LOBYTE(v572[0]) = 0;
        OUTLINED_FUNCTION_55_5();
        Participant.videoProvider(for:)();
        if (*(&v571[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v571, &v567);
          OUTLINED_FUNCTION_1_62();
          v323 = v508;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v325 = v509;
          (*(v324 + 16))(v509, &v118[v323]);
          Participant.contactDetails.getter();
          OUTLINED_FUNCTION_26_15();

          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_37_16();
          OUTLINED_FUNCTION_25_20();
          if (v326)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          v329 = v513;
          OUTLINED_FUNCTION_52_4();
          *(v325 + v442) = v441;
          OUTLINED_FUNCTION_15_19();
          *(v325 + *(v118 + 7)) = v443;
          Participant.isKickingAvailable.getter();
          v444 = OUTLINED_FUNCTION_33_5();
          if (v445 & 1) != 0 && (v556)
          {
            v444 = Participant.canShowKickButtonOnVideoTile.getter();
          }

          OUTLINED_FUNCTION_18_25(v444);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v574[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v574, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          }

          OUTLINED_FUNCTION_51_4();
          *(v325 + v454) = v455;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v456 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v456, v457);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v567);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          WORD4(v571[10]) = 0;
          WORD5(v571[10]) = v548 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          OUTLINED_FUNCTION_40_12();
          goto LABEL_132;
        }

        v500 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        if (one-time initialization token for conversationKit == -1)
        {
          goto LABEL_147;
        }

        goto LABEL_193;
      }

      if (Participant.isReceivingVideoFrames.getter())
      {
        v405 = v515;
        outlined init with copy of Participant.State();
        v406 = v517;
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_20_3();
        v408 = v505;
        (*(v407 + 16))(v505, v406 + v405);
        Participant.contactDetails.getter();
        OUTLINED_FUNCTION_26_15();

        OUTLINED_FUNCTION_78_2();
        OUTLINED_FUNCTION_37_16();
        v409 = v553;
        v410 = (v408 + *(v553 + 20));
        *v410 = type metadata accessor for Participant;
        v410[1] = v182;
        OUTLINED_FUNCTION_45_8();
        if (v411 == 1)
        {
          Participant.hasReducedQualityVideo.getter();
        }

        v446 = v504;
        OUTLINED_FUNCTION_52_4();
        *(v408 + v448) = v447;
        OUTLINED_FUNCTION_15_19();
        *(v408 + v409[7]) = v449;
        Participant.isKickingAvailable.getter();
        v450 = OUTLINED_FUNCTION_33_5();
        if (v451 & 1) != 0 && (v556)
        {
          v450 = Participant.canShowKickButtonOnVideoTile.getter();
        }

        *(v408 + v409[8]) = v450 & 1;
        OUTLINED_FUNCTION_24_17();
        *(v408 + v452) = v453;
        *(v408 + v409[10]) = v446 & 1;
        Participant.videoInfo.getter();
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        if (v572[0])
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v572, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        }

        OUTLINED_FUNCTION_51_4();
        *(v408 + v458) = v459;
        OUTLINED_FUNCTION_3_56();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        Participant.videoProvider(for:)();
        if (*(&v571[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v571, v574);
          outlined init with copy of IDSLookupManager(v574, v571);
          Participant.videoTransform.getter();

          __swift_destroy_boxed_opaque_existential_1(v574);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          memcpy(&v571[2] + 8, v576, 0x80uLL);
          OUTLINED_FUNCTION_9_28(v547 & 1);
          v460 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
          OUTLINED_FUNCTION_3_56();
          v461 = v506;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          memcpy((v461 + v460), v571, 0xACuLL);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v500 = v131;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          *&v555 = static OS_os_log.conversationKit;
          LODWORD(v553) = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v462 = OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_72_2(v462, xmmword_1BC4BAA20);
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_43_7();
          v463 = MEMORY[0x1E69E6158];
          v462[3].n128_u64[1] = MEMORY[0x1E69E6158];
          v464 = lazy protocol witness table accessor for type String and conformance String();
          OUTLINED_FUNCTION_4_41(v464);
          v465 = v544;
          outlined init with copy of Participant.State();
          v466 = OUTLINED_FUNCTION_20_4();
          OUTLINED_FUNCTION_58_4(v466, v467, v468);
          OUTLINED_FUNCTION_47_7();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v465, &_s15ConversationKit11ParticipantVSgMd);
          v462[6].n128_u64[0] = v463;
          v462[6].n128_u64[1] = v247;
          v462[4].n128_u64[1] = v131;
          v462[5].n128_u64[0] = v218;
          os_log(_:dso:log:type:_:)();

          OUTLINED_FUNCTION_30_9();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v469 = OUTLINED_FUNCTION_44_7();
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v469, v470, v471, v472, v473);

          OUTLINED_FUNCTION_2_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          v131 = v500;
        }

        OUTLINED_FUNCTION_8_44();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        goto LABEL_32;
      }

      if (*(v182 + *(v218 + 28)) || (v555 & 1) != 0)
      {
        OUTLINED_FUNCTION_1_62();
        OUTLINED_FUNCTION_30_9();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v186 = OUTLINED_FUNCTION_44_7();
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_1_62();
      outlined init with copy of Participant.State();
      LOBYTE(v572[0]) = 1;
      OUTLINED_FUNCTION_55_5();
      Participant.videoProvider(for:)();
      v500 = v131;
      if (*(&v571[1] + 1))
      {
        outlined init with take of TapInteractionHandler(v571, &v567);
        OUTLINED_FUNCTION_1_62();
        v430 = v501;
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_20_3();
        v432 = v507;
        (*(v431 + 16))(v507, &v118[v430]);
        Participant.contactDetails.getter();
        v433 = *&v571[0];
        OUTLINED_FUNCTION_34_13();

        Participant.name(_:)();
        OUTLINED_FUNCTION_37_16();
        OUTLINED_FUNCTION_68_1();
        v435 = (v432 + v434);
        *v435 = v433;
        v435[1] = v182;
        OUTLINED_FUNCTION_45_8();
        if (v436)
        {
          Participant.hasReducedQualityVideo.getter();
        }

        OUTLINED_FUNCTION_38_10();
        *(v507 + v486) = v485;
        OUTLINED_FUNCTION_16_29();
        *(v489 + *(v487 + 28)) = v488;
        Participant.isKickingAvailable.getter();
        v490 = OUTLINED_FUNCTION_33_5();
        if (v491 & 1) != 0 && (v556)
        {
          v490 = Participant.canShowKickButtonOnVideoTile.getter();
        }

        v492 = v553;
        v493 = v507;
        *(v507 + *(v553 + 32)) = v490 & 1;
        *(v493 + *(v492 + 36)) = v559;
        *(v493 + *(v492 + 40)) = 0;
        Participant.videoInfo.getter();
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        if (v574[0])
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v574, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        }

        OUTLINED_FUNCTION_36_12();
        *(v507 + v494) = v495;
        OUTLINED_FUNCTION_6_38();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        v496 = OUTLINED_FUNCTION_50_7();
        outlined init with copy of IDSLookupManager(v496, v497);
        Participant.videoTransform.getter();

        __swift_destroy_boxed_opaque_existential_1(&v567);
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        OUTLINED_FUNCTION_41_9();
        OUTLINED_FUNCTION_9_28(v547 & 1);
        v498 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd) + 64);
        v499 = v503;
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        OUTLINED_FUNCTION_65_2();
        memcpy((v499 + v498), v572, 0x69uLL);
        OUTLINED_FUNCTION_79_4();
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        *&v555 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v474 = OUTLINED_FUNCTION_54();
        *(v474 + 16) = xmmword_1BC4BAA20;
        LOBYTE(v571[0]) = v549;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        *(v474 + 56) = MEMORY[0x1E69E6158];
        v475 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v475);
        v476 = v544;
        outlined init with copy of Participant.State();
        v477 = OUTLINED_FUNCTION_20_4();
        __swift_storeEnumTagSinglePayload(v477, v478, v479, v554);
        specialized >> prefix<A>(_:)();
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v476, &_s15ConversationKit11ParticipantVSgMd);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22();

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v480 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v480, v481, v482, v483, v484);

        outlined destroy of ParticipantVideoOverlayView.ViewModel(v572);
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
      }

LABEL_142:
      OUTLINED_FUNCTION_8_44();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      OUTLINED_FUNCTION_0_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      v128 = v561;
      v131 = v500;
LABEL_136:
      outlined destroy of Participant.MediaInfo(&v128[v131]);
LABEL_137:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      return (*(v396 + 8))(v128);
    case 6u:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
LABEL_11:
      v550 = a1;
      outlined init with copy of Participant.State();
      outlined init with copy of Participant.State();
      v145 = v554;
      v146 = v554[5];
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_20_3();
      (*(v147 + 16))(v19, v80 + v146);
      Participant.contactDetails.getter();
      v148 = *&v571[0];
      OUTLINED_FUNCTION_34_13();

      Participant.name(_:)();
      v150 = v149;
      v152 = v151;

      v153 = v553;
      v154 = (v19 + *(v553 + 20));
      *v154 = v150;
      v154[1] = v152;
      if (*(v80 + v145[6]) == 1)
      {
        Participant.hasReducedQualityVideo.getter();
      }

      OUTLINED_FUNCTION_52_4();
      *(v19 + v156) = v155;
      *(v19 + v153[7]) = *(v80 + v145[7]) == 0;
      Participant.isKickingAvailable.getter();
      v157 = OUTLINED_FUNCTION_33_5();
      if (v158 & 1) != 0 && (v556)
      {
        v157 = Participant.canShowKickButtonOnVideoTile.getter();
      }

      *(v19 + v153[8]) = v157 & 1;
      OUTLINED_FUNCTION_24_17();
      *(v19 + v159) = v160;
      *(v19 + v153[10]) = 0;
      Participant.videoInfo.getter();
      OUTLINED_FUNCTION_0_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      if (*&v571[0])
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v571, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      }

      OUTLINED_FUNCTION_51_4();
      *(v19 + v161) = v162;
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      v559 = (v555 & 1) == 0 && *&v83[v145[9] + 8] == 0;
      Participant.contactDetails.getter();
      v163 = *&v576[0];
      v164 = *&v576[1];

      Participant.name(_:)();
      v166 = v165;
      v168 = v167;

      v169 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v171, v170 | 0x8000000000000000, v172, v173);
      OUTLINED_FUNCTION_43_7();

      OUTLINED_FUNCTION_1_62();
      v174 = v557;
      outlined init with copy of Participant.State();
      Participant.contactDetails.getter();

      _s15ConversationKit11ParticipantVWOhTm_4();
      v560 = v576[0];
      v555 = v576[2];
      v556 = v576[1];
      v175 = *&v576[3];
      v176 = *&v174[v145[8]];

      _s15ConversationKit11ParticipantVWOhTm_4();
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd);
      v178 = v558 + *(v177 + 48);
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      v179 = v555;
      v180 = v556;
      *v178 = v560;
      *(v178 + 16) = v180;
      *(v178 + 32) = v179;
      *(v178 + 48) = v175;
      *(v178 + 56) = v176;
      *(v178 + 64) = 0;
      *(v178 + 65) = v559;
      *(v178 + 72) = v166;
      *(v178 + 80) = v168;
      *(v178 + 88) = v164;
      *(v178 + 96) = v148;
      swift_storeEnumTagMultiPayload();
      return _s15ConversationKit11ParticipantVWOhTm_4();
    default:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      OUTLINED_FUNCTION_1_62();
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_49_6();
      ParticipantViewModel.init(invitedWebParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)(v139, v140, v141);
LABEL_9:

      OUTLINED_FUNCTION_0_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      goto LABEL_137;
  }
}

uint64_t ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v44) = a4;
  LODWORD(v46) = a3;
  LODWORD(v45) = a2;
  v48 = a5;
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v44 - v16;
  outlined init with copy of Participant.State();
  v17 = v6[5];
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 16))(v14, &v11[v17], v18);
  Participant.contactDetails.getter();
  v19 = v53;

  Participant.name(_:)();
  v21 = v20;
  v23 = v22;

  v24 = &v14[v12[5]];
  *v24 = v21;
  *(v24 + 1) = v23;
  if (v11[v6[6]] == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v26 = v25 ^ 1;
  }

  else
  {
    v26 = 0;
  }

  v14[v12[6]] = v26 & 1;
  v14[v12[7]] = *&v11[v6[7]] == 0;
  v27 = Participant.isKickingAvailable.getter();
  v28 = 0;
  if (v27 && (v44 & 1) != 0)
  {
    v28 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  v14[v12[8]] = v28 & 1;
  v14[v12[9]] = v45 & 1;
  v14[v12[10]] = 0;
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  if (v53)
  {
    v29 = v54;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v53, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  else
  {
    v29 = 0;
  }

  v14[v12[11]] = v29 & 1;
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  if (*(a1 + v6[7]))
  {
    Participant.contactDetails.getter();
    v30 = v49;

    Participant.name(_:)();
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  if (v46)
  {

    v32 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  outlined init with copy of Participant.State();
  if (v34)
  {
    v36 = v32;
  }

  else
  {
    v36 = 0;
  }

  if (v34)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  Participant.contactDetails.getter();
  v46 = v49;
  v45 = v50;
  v44 = v51;
  v38 = v52;
  v39 = *&v8[v6[8]];

  _s15ConversationKit11ParticipantVWOhTm_4();
  _s15ConversationKit11ParticipantVWOhTm_4();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd);
  v41 = v48 + *(v40 + 48);
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  v42 = v45;
  *v41 = v46;
  *(v41 + 16) = v42;
  *(v41 + 32) = v44;
  *(v41 + 48) = v38;
  *(v41 + 56) = v39;
  *(v41 + 64) = 1;
  *(v41 + 72) = v36;
  *(v41 + 80) = v34;
  *(v41 + 88) = 0;
  *(v41 + 96) = v37;
  type metadata accessor for ParticipantViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ParticipantViewModel.init(monogramVideoParticipant:videoProviderType:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:shouldRegisterVideoLayers:)@<X0>(char a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X8>)
{
  LODWORD(v57) = a4;
  LODWORD(v58) = a3;
  LODWORD(v59) = a2;
  v61 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54[-v9];
  v11 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54[-v14];
  v16 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v54[-v20];
  Participant.videoProvider(for:)();
  if (*(&v66[1] + 1))
  {
    v55 = a5;
    outlined init with take of TapInteractionHandler(v66, v67);
    outlined init with copy of Participant.State();
    v21 = v11[5];
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 16))(v18, &v15[v21], v22);
    Participant.contactDetails.getter();
    v23 = *&v66[0];

    Participant.name(_:)();
    v25 = v24;
    v27 = v26;

    v28 = &v18[v16[5]];
    *v28 = v25;
    v28[1] = v27;
    if (v15[v11[6]] == 1)
    {
      Participant.hasReducedQualityVideo.getter();
      v30 = v29 ^ 1;
    }

    else
    {
      v30 = 0;
    }

    v18[v16[6]] = v30 & 1;
    v18[v16[7]] = *&v15[v11[7]] == 0;
    v43 = Participant.isKickingAvailable.getter();
    v44 = 0;
    if (v43 && (v58 & 1) != 0)
    {
      v44 = Participant.canShowKickButtonOnVideoTile.getter();
    }

    v18[v16[8]] = v44 & 1;
    v18[v16[9]] = v59 & 1;
    v18[v16[10]] = 0;
    Participant.videoInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_4();
    if (v68[0])
    {
      v45 = v69;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }

    else
    {
      v45 = 0;
    }

    v18[v16[11]] = v45 & 1;
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    outlined init with copy of IDSLookupManager(v67, v66);
    Participant.videoTransform.getter();
    memcpy(&v66[2] + 8, __src, 0x80uLL);
    WORD4(v66[10]) = v57 & 1;
    WORD5(v66[10]) = v55 & 1;
    v46 = v60;
    outlined init with copy of Participant.State();
    Participant.contactDetails.getter();
    _s15ConversationKit11ParticipantVWOhTm_4();
    __swift_destroy_boxed_opaque_existential_1(v67);
    v58 = v63;
    v59 = v62;
    v57 = v64;
    v47 = v65;
    v48 = *&v46[v11[8]];

    _s15ConversationKit11ParticipantVWOhTm_4();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
    v50 = *(v49 + 48);
    v51 = v61;
    v52 = v61 + *(v49 + 64);
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy((v51 + v50), v66, 0xACuLL);
    v53 = v58;
    *v52 = v59;
    *(v52 + 16) = v53;
    *(v52 + 32) = v57;
    *(v52 + 48) = v47;
    *(v52 + 56) = v48;
    *(v52 + 64) = 0;
    *(v52 + 72) = 0u;
    *(v52 + 88) = 0u;
    *(v52 + 104) = 4;
    type metadata accessor for ParticipantViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    *&v57 = static OS_os_log.conversationKit;
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BC4BAA20;
    LOBYTE(v66[0]) = a1;
    v32 = String.init<A>(reflecting:)();
    v34 = v33;
    v35 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v36 = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 64) = v36;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    outlined init with copy of Participant.State();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    specialized >> prefix<A>(_:)();
    v38 = v37;
    v40 = v39;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd);
    *(v31 + 96) = v35;
    *(v31 + 104) = v36;
    *(v31 + 72) = v38;
    *(v31 + 80) = v40;
    os_log(_:dso:log:type:_:)();

    v41 = v60;
    outlined init with copy of Participant.State();
    ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v41, v59 & 1, 0, v58 & 1, v61);
    return _s15ConversationKit11ParticipantVWOhTm_4();
  }
}

uint64_t ParticipantViewModel.init(invitedWebParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v44) = a2;
  LODWORD(v45) = a1;
  v47 = a3;
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v43 - v13;
  outlined init with copy of Participant.State();
  v14 = v3[5];
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v11, &v8[v14], v15);
  Participant.contactDetails.getter();
  v16 = v52;

  Participant.name(_:)();
  v18 = v17;
  v20 = v19;

  v21 = &v11[v9[5]];
  *v21 = v18;
  *(v21 + 1) = v20;
  if (v8[v3[6]] == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v11[v9[6]] = v23 & 1;
  v11[v9[7]] = *&v8[v3[7]] == 0;
  v24 = Participant.isKickingAvailable.getter();
  v25 = 0;
  if (v24 && (v44 & 1) != 0)
  {
    v25 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  v11[v9[8]] = v25 & 1;
  v11[v9[9]] = v45 & 1;
  v11[v9[10]] = 0;
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  if (v52)
  {
    v26 = v53;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v52, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  else
  {
    v26 = 0;
  }

  v11[v9[11]] = v26 & 1;
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  Participant.contactDetails.getter();
  v27 = v48;

  Participant.name(_:)();
  v29 = v28;
  v31 = v30;

  outlined init with copy of Participant.State();
  v32 = [objc_opt_self() conversationKit];
  v54._object = 0xE000000000000000;
  v33.value._countAndFlagsBits = 0x61737265766E6F43;
  v33.value._object = 0xEF74694B6E6F6974;
  v34._object = 0x80000001BC4F89E0;
  v34._countAndFlagsBits = 0xD00000000000002FLL;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v33, v32, v35, v54);

  Participant.contactDetails.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  v45 = v48;
  v44 = v49;
  v43 = v50;
  v37 = v51;
  v38 = *&v5[v3[8]];

  _s15ConversationKit11ParticipantVWOhTm_4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd);
  v40 = v47 + *(v39 + 48);
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  v41 = v44;
  *v40 = v45;
  *(v40 + 16) = v41;
  *(v40 + 32) = v43;
  *(v40 + 48) = v37;
  *(v40 + 56) = v38;
  *(v40 + 64) = 0;
  *(v40 + 72) = v29;
  *(v40 + 80) = v31;
  *(v40 + 88) = v36;
  type metadata accessor for ParticipantViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ParticipantViewModel.init(ringingParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v43) = a2;
  LODWORD(v44) = a1;
  v46 = a3;
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v13;
  outlined init with copy of Participant.State();
  v14 = v3[5];
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v11, &v8[v14], v15);
  Participant.contactDetails.getter();
  v16 = v54;

  Participant.name(_:)();
  v18 = v17;
  v20 = v19;

  v21 = &v11[v9[5]];
  *v21 = v18;
  *(v21 + 1) = v20;
  if (v8[v3[6]] == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v11[v9[6]] = v23 & 1;
  v11[v9[7]] = *&v8[v3[7]] == 0;
  v24 = Participant.isKickingAvailable.getter();
  v25 = 0;
  if (v24 && (v43 & 1) != 0)
  {
    v25 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  v11[v9[8]] = v25 & 1;
  v11[v9[9]] = v44 & 1;
  v11[v9[10]] = 0;
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  if (v54)
  {
    v26 = v55;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v54, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  else
  {
    v26 = 0;
  }

  v11[v9[11]] = v26 & 1;
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  outlined init with copy of Participant.State();
  Participant.contactDetails.getter();
  v27 = v51;
  v28 = v52;
  v44 = v53;

  v29 = [objc_opt_self() conversationKit];
  v56._object = 0xE000000000000000;
  v30.value._countAndFlagsBits = 0x61737265766E6F43;
  v30.value._object = 0xEF74694B6E6F6974;
  v31._object = 0x80000001BC4F8BD0;
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v56);

  Participant.contactDetails.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  v43 = v47;
  v42 = v48;
  v41 = v49;
  v34 = v50;
  v35 = *&v5[v3[8]];

  _s15ConversationKit11ParticipantVWOhTm_4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd);
  v37 = v46 + *(v36 + 48);
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  v38 = v42;
  *v37 = v43;
  *(v37 + 16) = v38;
  *(v37 + 32) = v41;
  *(v37 + 48) = v34;
  *(v37 + 56) = v35;
  *(v37 + 64) = 0;
  v39 = v44;
  *(v37 + 72) = v28;
  *(v37 + 80) = v39;
  *(v37 + 88) = v33;
  type metadata accessor for ParticipantViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

void Participant.videoTransform.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  Participant.videoInfo.getter();
  v52 = v37;
  v53 = v38;
  v50 = v40;
  v51[0] = *v41;
  *(v51 + 10) = *&v41[10];
  Participant.copresenceInfo.getter(v42);
  if (*(&v42[0] + 1))
  {
    v4 = v43;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    v5 = (v4 & 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 + 28);
  if (*(v1 + v7))
  {
    if (v37)
    {
      v8 = *(&v38 + 1);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v37, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      static Participant.rotationFor(_:cameraPosition:)(v8);
      CATransform3DMakeRotation(&__dst, v9, 0.0, 0.0, 1.0);
      goto LABEL_20;
    }

    v13 = MEMORY[0x1E69792E8];
LABEL_15:
    memcpy(&__dst, v13, sizeof(__dst));
    goto LABEL_20;
  }

  v10 = v6;
  if (v37)
  {
    v11 = *(&v38 + 1);
    v45 = v52;
    v46 = v53;
    v48 = v50;
    *v49 = v51[0];
    *&v49[10] = *(v51 + 10);
    v47 = v39;
    v12 = Participant.VideoInfo.cameraType.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v37, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  else
  {
    v12 = 2;
    v11 = 1;
  }

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v16 = static Defaults.shared;

  _s15ConversationKit11ParticipantV017transformForLocalC017deviceOrientation10cameraType12currentIdiom8defaultsSo13CATransform3DVSo09CNKDeviceH0V_AC9VideoInfoV06CameraJ0OSo015UIUserInterfaceL0VAA16DefaultsProvider_ptFZTf4nnnen_nAA0U0C_Tt3g5(v11, v12, v15, v16, __src);

  if (v12 == 1)
  {
    v13 = __src;
    goto LABEL_15;
  }

  if (*(v1 + v7))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v1 + *(v10 + 40));
  }

  static Participant.compensatedVideoRotation(_:videoTransform:effectsEnabled:)(v11, __src, v17, &__dst);
LABEL_20:
  if (*(v1 + v7) && !v5)
  {
    v18 = Participant.deviceOrientation.getter();
    if ((v19 & 1) != 0 || (v18 | 2) != 3)
    {
      if (one-time initialization token for participant != -1)
      {
        OUTLINED_FUNCTION_42_11();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.participant);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        OUTLINED_FUNCTION_75(&dword_1BBC58000, v32, v33, "Update with landscape mirrored video");
        MEMORY[0x1BFB23DF0](v31, -1, -1);
      }

      memcpy(&v34, &__dst, sizeof(v34));
      v26 = -1.0;
      v27 = 1.0;
    }

    else
    {
      if (one-time initialization token for participant != -1)
      {
        OUTLINED_FUNCTION_42_11();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.participant);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        OUTLINED_FUNCTION_75(&dword_1BBC58000, v24, v25, "Update with portrait mirrored video");
        MEMORY[0x1BFB23DF0](v23, -1, -1);
      }

      memcpy(&v34, &__dst, sizeof(v34));
      v26 = 1.0;
      v27 = -1.0;
    }

    CATransform3DScale(&v35, &v34, v26, v27, 1.0);
  }

  else
  {
    memcpy(&v35, &__dst, sizeof(v35));
  }

  memcpy(v3, &v35, 0x80uLL);
  OUTLINED_FUNCTION_30_0();
}

void ParticipantViewModel.participantDetails.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v8 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
      v9 = *v8;
      v10 = *(v8 + 72);
      v11 = *(v8 + 80);

      outlined consume of (title: String, subtitle: String?)?(v10, v11);
      OUTLINED_FUNCTION_3_56();
      OUTLINED_FUNCTION_38_2();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      goto LABEL_7;
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
    v6 = *(v5 + 48);
    v7 = *(v5 + 64);
    OUTLINED_FUNCTION_3_56();
    OUTLINED_FUNCTION_38_2();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v3 + v7);
  }

  else
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
    OUTLINED_FUNCTION_3_56();
    OUTLINED_FUNCTION_38_2();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
  }

  outlined destroy of ParticipantVideoView.ViewModel(v3 + v6);
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

void ParticipantViewModel.compatibleWithRoster.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd);
      v16 = v1;
      v12 = (v7 + *(v11 + 48));
      memcpy(v18, v12, sizeof(v18));
      v13 = v12[9];
      v14 = v12[10];
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      outlined consume of (title: String, subtitle: String?)?(v13, v14);
      v15 = *(v11 + 48);
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      memcpy(v19, v18, 0x48uLL);
      memset(&v19[72], 0, 32);
      memcpy((v16 + v15), v19, 0x68uLL);
      swift_storeEnumTagMultiPayload();
      memcpy(v20, v18, sizeof(v20));
      v21 = 0u;
      v22 = 0u;
      outlined init with copy of ParticipantMonogramView.ViewModel(v19, &v17);
      outlined destroy of ParticipantMonogramView.ViewModel(v20);
      goto LABEL_7;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
    v10 = *(v9 + 48);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v7 + *(v9 + 64));
  }

  else
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
  }

  outlined destroy of ParticipantVideoView.ViewModel(v7 + v10);
  OUTLINED_FUNCTION_2_61();
  _s15ConversationKit11ParticipantVWOhTm_4();
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

void static ParticipantViewModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v0 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v65[0] = v2 - v3;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v65[1] = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO_ACtMd);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v65 + *(v20 + 56) - v19;
  v22 = v65 - v19;
  outlined init with copy of Participant.State();
  outlined init with copy of Participant.State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_5_38();
    outlined init with copy of Participant.State();
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
    if (OUTLINED_FUNCTION_77_4())
    {
      outlined destroy of ParticipantVideoView.ViewModel(&v16[v31]);
      OUTLINED_FUNCTION_2_61();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3_56();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy(v69, &v16[v31], 0xACuLL);
    memcpy(v67, &v21[v31], 0xACuLL);
    v36 = static ParticipantViewModel.ParticipantDetails.== infix(_:_:)();
    OUTLINED_FUNCTION_2_61();
    _s15ConversationKit11ParticipantVWOhTm_4();
    if ((v36 & 1) == 0)
    {
      outlined destroy of ParticipantVideoView.ViewModel(v67);
      outlined destroy of ParticipantVideoView.ViewModel(v69);
      OUTLINED_FUNCTION_2_61();
LABEL_23:
      _s15ConversationKit11ParticipantVWOhTm_4();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_76_1();
    outlined init with copy of Participant.ScreenInfo?();
    v37 = v73[3];
    if (v73[3])
    {
      __swift_project_boxed_opaque_existential_1(v73, v73[3]);
      v38 = OUTLINED_FUNCTION_28_18();
      v39(v38);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v73);
      if ((v36 & 1) == 0)
      {
        OUTLINED_FUNCTION_71_2();
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v37);
        goto LABEL_39;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    OUTLINED_FUNCTION_71_2();
    Hasher._combine(_:)(0);
LABEL_39:
    OUTLINED_FUNCTION_15_18(v73, v69);
    OUTLINED_FUNCTION_69_2();
    CATransform3D.hash(into:)();
    ParticipantVideoView.ViewModel.contentsRect.getter();
    CGRect.hash(into:)(v52, v53, v54, v55);
    Hasher._finalize()();
    Hasher.init(_seed:)();
    outlined init with copy of Participant.ScreenInfo?();
    v56 = v71;
    if (v71)
    {
      v57 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v58 = (*(v57 + 8))(v56, v57);
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(v70);
      if ((v60 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v58);
LABEL_44:
        OUTLINED_FUNCTION_15_18(v70, v67);
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v61, v62, v63, v64);
        Hasher._finalize()();
        outlined destroy of ParticipantVideoView.ViewModel(v67);
        outlined destroy of ParticipantVideoView.ViewModel(v69);
        OUTLINED_FUNCTION_2_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_24;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    Hasher._combine(_:)(0);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_5_38();
    outlined init with copy of Participant.State();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    if (OUTLINED_FUNCTION_77_4() == 1)
    {
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      memcpy(v69, &v13[v25], 0xACuLL);
      memcpy(v68, &v13[v26], 0x69uLL);
      memcpy(v67, &v21[v25], 0xACuLL);
      memcpy(v66, &v21[v26], 0x69uLL);
      v27 = static ParticipantViewModel.ParticipantDetails.== infix(_:_:)();
      OUTLINED_FUNCTION_2_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      if (v27)
      {
        OUTLINED_FUNCTION_76_1();
        outlined init with copy of Participant.ScreenInfo?();
        v28 = v73[3];
        if (v73[3])
        {
          __swift_project_boxed_opaque_existential_1(v73, v73[3]);
          v29 = OUTLINED_FUNCTION_28_18();
          v30(v29);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v73);
          if ((v27 & 1) == 0)
          {
            OUTLINED_FUNCTION_71_2();
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v28);
            goto LABEL_29;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        }

        OUTLINED_FUNCTION_71_2();
        Hasher._combine(_:)(0);
LABEL_29:
        OUTLINED_FUNCTION_15_18(v73, v69);
        OUTLINED_FUNCTION_69_2();
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v40, v41, v42, v43);
        v44 = Hasher._finalize()();
        Hasher.init(_seed:)();
        outlined init with copy of Participant.ScreenInfo?();
        v45 = v71;
        if (v71)
        {
          __swift_project_boxed_opaque_existential_1(v70, v71);
          v46 = OUTLINED_FUNCTION_28_18();
          v47(v46);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v70);
          if ((v70 & 1) == 0)
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v45);
LABEL_34:
            OUTLINED_FUNCTION_15_18(v70, v67);
            CATransform3D.hash(into:)();
            ParticipantVideoView.ViewModel.contentsRect.getter();
            CGRect.hash(into:)(v48, v49, v50, v51);
            if (v44 != Hasher._finalize()())
            {
              outlined destroy of ParticipantVideoOverlayView.ViewModel(v66);
              outlined destroy of ParticipantVideoView.ViewModel(v67);
              outlined destroy of ParticipantVideoOverlayView.ViewModel(v68);
              outlined destroy of ParticipantVideoView.ViewModel(v69);
              OUTLINED_FUNCTION_2_61();
              _s15ConversationKit11ParticipantVWOhTm_4();
              OUTLINED_FUNCTION_12_27();
              goto LABEL_25;
            }

            static ParticipantVideoOverlayView.ViewModel.== infix(_:_:)(v68, v66);
            outlined destroy of ParticipantVideoOverlayView.ViewModel(v66);
            outlined destroy of ParticipantVideoView.ViewModel(v67);
            outlined destroy of ParticipantVideoOverlayView.ViewModel(v68);
            outlined destroy of ParticipantVideoView.ViewModel(v69);
            OUTLINED_FUNCTION_2_61();
            _s15ConversationKit11ParticipantVWOhTm_4();
            goto LABEL_24;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        }

        Hasher._combine(_:)(0);
        goto LABEL_34;
      }

      outlined destroy of ParticipantVideoOverlayView.ViewModel(v66);
      outlined destroy of ParticipantVideoView.ViewModel(v67);
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v68);
      outlined destroy of ParticipantVideoView.ViewModel(v69);
      OUTLINED_FUNCTION_2_61();
      goto LABEL_23;
    }

    outlined destroy of ParticipantVideoOverlayView.ViewModel(&v13[v26]);
    outlined destroy of ParticipantVideoView.ViewModel(&v13[v25]);
    OUTLINED_FUNCTION_2_61();
  }

  else
  {
    OUTLINED_FUNCTION_5_38();
    outlined init with copy of Participant.State();
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
    memcpy(v69, (v10 + v32), 0x68uLL);
    if (OUTLINED_FUNCTION_77_4() == 2)
    {
      memcpy(v67, &v21[v32], 0x68uLL);
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      v33 = static ParticipantViewModel.ParticipantDetails.== infix(_:_:)();
      OUTLINED_FUNCTION_2_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      if (v33)
      {
        memcpy(v73, v69, 0x68uLL);
        OUTLINED_FUNCTION_76_1();
        v34 = OUTLINED_FUNCTION_69_2();
        ParticipantMonogramView.ViewModel.hash(into:)(v34);
        Hasher._finalize()();
        memcpy(v73, v67, 0x68uLL);
        OUTLINED_FUNCTION_76_1();
        v35 = OUTLINED_FUNCTION_69_2();
        ParticipantMonogramView.ViewModel.hash(into:)(v35);
        Hasher._finalize()();
        _s15ConversationKit11ParticipantVWOhTm_4();
        outlined destroy of ParticipantMonogramView.ViewModel(v67);
        outlined destroy of ParticipantMonogramView.ViewModel(v69);
        OUTLINED_FUNCTION_12_27();
LABEL_25:
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_2_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      outlined destroy of ParticipantMonogramView.ViewModel(v67);
      outlined destroy of ParticipantMonogramView.ViewModel(v69);
LABEL_24:
      OUTLINED_FUNCTION_12_27();
      goto LABEL_25;
    }

    outlined destroy of ParticipantMonogramView.ViewModel(v69);
    OUTLINED_FUNCTION_2_61();
  }

LABEL_15:
  _s15ConversationKit11ParticipantVWOhTm_4();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit20ParticipantViewModelO_ACtMd);
LABEL_26:
  OUTLINED_FUNCTION_30_0();
}

uint64_t static ParticipantViewModel.ParticipantDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v2 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0), v3 = *(v2 + 20), v4 = *(v1 + v3), v5 = *(v1 + v3 + 8), v6 = (v0 + v3), v4 == *v6) ? (v7 = v5 == v6[1]) : (v7 = 0), (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7)))
  {
    v8 = *(v1 + *(v2 + 44)) ^ *(v0 + *(v2 + 44)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void ParticipantViewModel.hash(into:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
  v10 = OUTLINED_FUNCTION_77_4();
  if (!v10)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
    OUTLINED_FUNCTION_3_56();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy(v33, (v9 + v19), 0xACuLL);
    MEMORY[0x1BFB22640](0);
    ParticipantViewModel.ParticipantDetails.hash(into:)();
    outlined init with copy of Participant.ScreenInfo?();
    v20 = v34[3];
    if (v34[3])
    {
      v21 = v34[4];
      v22 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      (*(v21 + 8))(v20, v21);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v34);
      if ((v22 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v20);
LABEL_15:
        OUTLINED_FUNCTION_15_18(v34, v33);
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v28, v29, v30, v31);
        outlined destroy of ParticipantVideoView.ViewModel(v33);
        OUTLINED_FUNCTION_2_61();
        goto LABEL_16;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    Hasher._combine(_:)(0);
    goto LABEL_15;
  }

  if (v10 == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
    v12 = *(v11 + 48);
    v13 = *(v11 + 64);
    OUTLINED_FUNCTION_3_56();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy(v33, (v9 + v12), 0xACuLL);
    memcpy(v32, (v9 + v13), 0x69uLL);
    MEMORY[0x1BFB22640](1);
    ParticipantViewModel.ParticipantDetails.hash(into:)();
    outlined init with copy of Participant.ScreenInfo?();
    v14 = v34[3];
    if (v34[3])
    {
      v15 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v16 = (*(v15 + 8))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v34);
      if ((v18 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v16);
LABEL_12:
        OUTLINED_FUNCTION_15_18(v34, v33);
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v24, v25, v26, v27);
        ParticipantVideoOverlayView.ViewModel.hash(into:)(v1);
        outlined destroy of ParticipantVideoOverlayView.ViewModel(v32);
        outlined destroy of ParticipantVideoView.ViewModel(v33);
        OUTLINED_FUNCTION_2_61();
LABEL_16:
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_17;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    Hasher._combine(_:)(0);
    goto LABEL_12;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd);
  memcpy(v33, (v9 + *(v23 + 48)), 0x68uLL);
  OUTLINED_FUNCTION_3_56();
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  MEMORY[0x1BFB22640](2);
  ParticipantViewModel.ParticipantDetails.hash(into:)();
  memcpy(v34, v33, 0x68uLL);
  ParticipantMonogramView.ViewModel.hash(into:)(v1);
  OUTLINED_FUNCTION_2_61();
  _s15ConversationKit11ParticipantVWOhTm_4();
  outlined destroy of ParticipantMonogramView.ViewModel(v33);
LABEL_17:
  OUTLINED_FUNCTION_30_0();
}

void ParticipantViewModel.ParticipantDetails.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + v1[6]));
  Hasher._combine(_:)(*(v0 + v1[7]));
  Hasher._combine(_:)(*(v0 + v1[8]));
  Hasher._combine(_:)(*(v0 + v1[9]));
  Hasher._combine(_:)(*(v0 + v1[10]));
  Hasher._combine(_:)(*(v0 + v1[11]));
}

Swift::Int ParticipantViewModel.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantViewModel(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *static Participant.transformForLocalParticipant(deviceOrientation:cameraType:currentIdiom:defaults:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  ObjectType = swift_getObjectType();
  specialized static Participant.transformForLocalParticipant(deviceOrientation:cameraType:currentIdiom:defaults:)(a1, a2, a3, ObjectType, a4, v12);
  return memcpy(a5, v12, 0x80uLL);
}

void *static Participant.compensatedVideoRotation(_:videoTransform:effectsEnabled:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = (*(*static Defaults.shared + 656))();
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v8 & 1) == 0)
  {
    if (v10 == 2 && a1 == 1)
    {
      CGAffineTransformMakeRotation(&__dst, 1.57079633);
      *&v15.m11 = *&__dst.m11;
      *&v15.m13 = *&__dst.m13;
      *&v15.m21 = *&__dst.m21;
      CATransform3DMakeAffineTransform(&__dst, &v15);
      return memcpy(a4, &__dst, 0x80uLL);
    }

LABEL_13:
    memcpy(&__dst, a2, sizeof(__dst));
    return memcpy(a4, &__dst, 0x80uLL);
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  if ((a1 | 2) == 2)
  {
    v11 = -1.0;
    if (a3)
    {
      v12 = -1.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = 4.71238898;
  }

  else
  {
    v11 = 1.0;
    if (a3)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = -1.0;
    }

    v13 = 1.57079633;
  }

  memcpy(&__dst, a2, sizeof(__dst));
  CATransform3DRotate(&v15, &__dst, v13, 0.0, 0.0, 1.0);
  CATransform3DScale(&__dst, &v15, v11, v12, 1.0);
  return memcpy(a4, &__dst, 0x80uLL);
}

uint64_t static Participant.rotationFor(_:cameraPosition:)(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      return result;
    default:
      _StringGuts.grow(_:)(47);

      v1 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v1);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

void static Participant.affineTransformForRemote(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = xmmword_1BC4BD490;
  v7 = xmmword_1BC4C1E40;
  tx = 0.0;
  if (v5)
  {
    ty = 0.0;
  }

  else
  {
    swift_beginAccess();
    if ((static AmbientState.isPresented & 1) == 0)
    {
      ty = 0.0;
      v7 = xmmword_1BC4C1E40;
      v6 = xmmword_1BC4BD490;
      switch(a1)
      {
        case 0:
          v10 = 1.57079633;
          goto LABEL_9;
        case 1:
          goto LABEL_10;
        case 2:
          v10 = -1.57079633;
          goto LABEL_9;
        case 3:
          v10 = 3.14159265;
LABEL_9:
          CGAffineTransformMakeRotation(&v12, v10);
          v7 = *&v12.a;
          v6 = *&v12.c;
          tx = v12.tx;
          ty = v12.ty;
          goto LABEL_10;
        default:
          _StringGuts.grow(_:)(64);
          MEMORY[0x1BFB20B10](0xD00000000000003ELL, 0x80000001BC4F8B10);
          v11 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1BFB20B10](v11);

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
      }
    }

    ty = 0.0;
    v7 = xmmword_1BC4C1E40;
    v6 = xmmword_1BC4BD490;
  }

LABEL_10:
  *a2 = v7;
  *(a2 + 16) = v6;
  *(a2 + 32) = tx;
  *(a2 + 40) = ty;
}

void *static Participant.transformForRemote(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  static Participant.affineTransformForRemote(_:)(a1, &v5);
  v4 = v5;
  CATransform3DMakeAffineTransform(&__src, &v4);
  return memcpy(a2, &__src, 0x80uLL);
}

unint64_t static Participant.screenRotationFor(_:)(unint64_t result)
{
  if (result >= 4)
  {
    _StringGuts.grow(_:)(55);
    MEMORY[0x1BFB20B10](0xD000000000000035, 0x80000001BC4F8BF0);
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *_s15ConversationKit11ParticipantV017transformForLocalC017deviceOrientation10cameraType12currentIdiom8defaultsSo13CATransform3DVSo09CNKDeviceH0V_AC9VideoInfoV06CameraJ0OSo015UIUserInterfaceL0VAA16DefaultsProvider_ptFZTf4nnnen_nAA0U0C_Tt3g5@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a3 > 5 || ((1 << a3) & 0x26) == 0)
  {
    swift_beginAccess();
    if ((static AmbientState.isPresented & 1) == 0)
    {
      m.a = 1.0;
      m.b = 0.0;
      m.c = 0.0;
      m.d = 1.0;
      m.tx = 0.0;
      m.ty = 0.0;
LABEL_17:
      CATransform3DMakeAffineTransform(&__src, &m);
      return memcpy(a5, &__src, 0x80uLL);
    }
  }

  if (((*(*a4 + 920))() & 1) != 0 && a3 == 1 && a2 == 1)
  {
    if ((*(*a4 + 656))())
    {
LABEL_13:
      v14 = 3.14159265;
    }

    else
    {
LABEL_14:
      v14 = -1.57079633;
    }

LABEL_15:
    CGAffineTransformMakeRotation(&__src, v14);
    v12 = *&__src.m11;
    v11 = *&__src.m13;
    v13 = *&__src.m21;
LABEL_16:
    *&m.a = v12;
    *&m.c = v11;
    *&m.tx = v13;
    goto LABEL_17;
  }

  v11 = xmmword_1BC4BD490;
  v12 = xmmword_1BC4C1E40;
  v13 = 0uLL;
  switch(a1)
  {
    case 0:
      goto LABEL_14;
    case 1:
      goto LABEL_16;
    case 2:
      v14 = 1.57079633;
      goto LABEL_15;
    case 3:
      goto LABEL_13;
    default:
      _StringGuts.grow(_:)(70);
      MEMORY[0x1BFB20B10](0xD000000000000044, 0x80000001BC4F8B50);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v16);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t outlined init with take of ParticipantViewModel.ParticipantDetails()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_20_3();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined consume of (title: String, subtitle: String?)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined init with copy of Participant.ScreenInfo?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_20_3();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

void *specialized static Participant.transformForLocalParticipant(deviceOrientation:cameraType:currentIdiom:defaults:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  if (a3 > 5 || ((1 << a3) & 0x26) == 0)
  {
    swift_beginAccess();
    if ((static AmbientState.isPresented & 1) == 0)
    {
      m.a = 1.0;
      m.b = 0.0;
      m.c = 0.0;
      m.d = 1.0;
      m.tx = 0.0;
      m.ty = 0.0;
LABEL_17:
      CATransform3DMakeAffineTransform(&__src, &m);
      return memcpy(a6, &__src, 0x80uLL);
    }
  }

  if (((*(a5 + 624))(a4, a5) & 1) != 0 && a3 == 1 && a2 == 1)
  {
    if ((*(a5 + 648))(a4, a5))
    {
LABEL_13:
      v16 = 3.14159265;
    }

    else
    {
LABEL_14:
      v16 = -1.57079633;
    }

LABEL_15:
    CGAffineTransformMakeRotation(&__src, v16);
    v14 = *&__src.m11;
    v13 = *&__src.m13;
    v15 = *&__src.m21;
LABEL_16:
    *&m.a = v14;
    *&m.c = v13;
    *&m.tx = v15;
    goto LABEL_17;
  }

  v13 = xmmword_1BC4BD490;
  v14 = xmmword_1BC4C1E40;
  v15 = 0uLL;
  switch(a1)
  {
    case 0:
      goto LABEL_14;
    case 1:
      goto LABEL_16;
    case 2:
      v16 = 1.57079633;
      goto LABEL_15;
    case 3:
      goto LABEL_13;
    default:
      _StringGuts.grow(_:)(70);
      MEMORY[0x1BFB20B10](0xD000000000000044, 0x80000001BC4F8B50);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v18);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for ParticipantViewModel()
{
  type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel)(319, &lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel));
  if (v0 <= 0x3F)
  {
    type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel)(319, &lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantMonogramView.ViewModel));
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)()
{
  if (!lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel))
  {
    type metadata accessor for ParticipantViewModel.ParticipantDetails(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel));
    }
  }
}

void type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for ParticipantViewModel.ParticipantDetails(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata completion function for ParticipantViewModel.ParticipantDetails()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id key path getter for AudioPowerSpectrumView.viewModel : AudioPowerSpectrumView@<X0>(void *a1@<X8>)
{
  result = AudioPowerSpectrumView.viewModel.getter();
  *a1 = result;
  return result;
}

void AudioPowerSpectrumView.$viewModel.getter()
{
  type metadata accessor for AudioPowerSpectrumViewModel();
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();

  JUMPOUT(0x1BFB1E3A0);
}

unint64_t lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel()
{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel)
  {
    type metadata accessor for AudioPowerSpectrumViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel);
  }

  return result;
}

uint64_t default argument 3 of AudioPowerSpectrumView.init(viewModel:barWidth:spacingStyle:barGradientColors:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BB980;
  *(v0 + 32) = static Color.orange.getter();
  *(v0 + 40) = static Color.yellow.getter();
  *(v0 + 48) = static Color.green.getter();
  return v0;
}

void AudioPowerSpectrumView.init(viewModel:barWidth:spacingStyle:barGradientColors:)(void *a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 9);
  MEMORY[0x1BFB201F0](a5);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  type metadata accessor for AudioPowerSpectrumViewModel();
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();
  v13 = a1;
  v14 = ObservedObject.init(wrappedValue:)();
  v16 = v15;
  if (a3)
  {
    v17 = 3.0;
  }

  else
  {
    v17 = a2;
  }

  if (v12)
  {
    v18 = 0x3FF0000000000000;
  }

  else
  {
    v18 = v10;
  }

  v19 = AnyShapeStyle.init<A>(_:)();

  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v19;
  *(a6 + 24) = v17;
  *(a6 + 32) = v18;
  *(a6 + 40) = v11 & ~v12 & 1;
}

uint64_t AudioPowerSpectrumView.init<A>(viewModel:barWidth:spacingStyle:strokeShapeStyle:)@<X0>(void *a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v30 = a4;
  v31 = a6;
  v29 = a3;
  v28 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 9);
  type metadata accessor for AudioPowerSpectrumViewModel();
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();
  v17 = a1;
  v27 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  if (v29)
  {
    v20 = 3.0;
  }

  else
  {
    v20 = v28;
  }

  if (v16)
  {
    v21 = 0x3FF0000000000000;
  }

  else
  {
    v21 = v14;
  }

  v22 = v15 & ~v16;
  v23 = v30;
  (*(v10 + 16))(v12, v30, a5);
  v24 = AnyShapeStyle.init<A>(_:)();

  result = (*(v10 + 8))(v23, a5);
  *a7 = v27;
  *(a7 + 8) = v19;
  *(a7 + 16) = v24;
  *(a7 + 24) = v20;
  *(a7 + 32) = v21;
  *(a7 + 40) = v22 & 1;
  return result;
}

uint64_t AudioPowerSpectrumView.body.getter@<X0>(id (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  *(v4 + 41) = *(v1 + 25);
  *a1 = partial apply for closure #1 in AudioPowerSpectrumView.body.getter;
  a1[1] = v4;
  return outlined init with copy of AudioPowerSpectrumView(&v8, &v7);
}

id closure #1 in AudioPowerSpectrumView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  v4 = GeometryProxy.size.getter();
  if (*(a1 + 40))
  {
    (*((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0x100))(v4);
  }

  MEMORY[0x1EEE9AC00](v4);
  Path.init(_:)();
  v5 = *(a1 + 16);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = static Animation.easeOut.getter();
  v11 = *(a1 + 8);
  memcpy(a2, __src, 0x50uLL);
  *(a2 + 80) = v5;
  *(a2 + 88) = 256;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  *(a2 + 120) = v11;

  return v11;
}

void closure #1 in closure #1 in AudioPowerSpectrumView.body.getter(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x100);
  v10 = *(v9() + 16);

  v36 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x130);
    v14 = *(a5 + 24);
    while (1)
    {
      v15 = v12 + 1;
      v16 = *((v9)(v11) + 16);

      v18 = v16 - (v12 + 1);
      v19 = v13(v17);
      if ((v18 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v18 >= *(v19 + 16))
      {
        goto LABEL_23;
      }

      v20 = *(v19 + 4 * v18 + 32);

      v21 = v20 * a1;
      if (v21 <= v14)
      {
        v21 = v14;
      }

      if (v21 <= a1)
      {
        v22 = v21;
      }

      else
      {
        v22 = a1;
      }

      Path.move(to:)(__PAIR128__((a1 - v22) * 0.5, a2 - v12 * a3));
      Path.addLine(to:)(__PAIR128__(v22 + (a1 - v22) * 0.5, a2 - v12++ * a3));
      if (v15 == v36)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_11:
    v37 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x130);
    v23 = *(v37(v11) + 16);

    if (!v23)
    {
      return;
    }

    v25 = 0;
    v26 = *(a5 + 24);
    while (1)
    {
      v27 = v25 + 1;
      v28 = *((v9)(v24) + 16);

      v30 = v28 - (v25 + 1);
      v31 = v37(v29);
      if ((v30 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v30 >= *(v31 + 16))
      {
        goto LABEL_25;
      }

      v32 = *(v31 + 4 * v30 + 32);

      v33 = v32 * a1;
      if (v33 <= v26)
      {
        v33 = v26;
      }

      if (v33 <= a1)
      {
        v34 = v33;
      }

      else
      {
        v34 = a1;
      }

      Path.move(to:)(__PAIR128__((a1 - v34) * 0.5, v25 * a3 + a2));
      Path.addLine(to:)(__PAIR128__(v34 + (a1 - v34) * 0.5, v25++ * a3 + a2));
      if (v27 == v23)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

char *one-time initialization function for viewModel()
{
  v0 = objc_allocWithZone(type metadata accessor for MockAudioPowerSpectrumViewModel());
  result = MockAudioPowerSpectrumViewModel.init()();
  static AudioPowerSpectrumView_Preview.viewModel = result;
  return result;
}

__n128 static AudioPowerSpectrumView_Preview.previews.getter@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v2 = static AudioPowerSpectrumView_Preview.viewModel;
  v3 = default argument 3 of AudioPowerSpectrumView.init(viewModel:barWidth:spacingStyle:barGradientColors:)();
  MEMORY[0x1BFB201F0](v3);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  type metadata accessor for AudioPowerSpectrumViewModel();
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();
  v4 = v2;
  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  v8 = AnyShapeStyle.init<A>(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  v9 = static Color.black.getter();
  v10 = static Edge.Set.all.getter();
  *(a1 + 41) = *v12;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0x4008000000000000;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 57) = *&v12[16];
  result = *&v12[32];
  *(a1 + 73) = *&v12[32];
  *(a1 + 88) = *(&v15 + 1);
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  return result;
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance AudioPowerSpectrumView_Preview(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance AudioPowerSpectrumView_Preview(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

char *MockAudioPowerSpectrumViewModel.init()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer) = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_opt_self() defaultCenter];
  AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)();
  v4 = v3;
  type metadata accessor for NSTimer();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v4;
  v7 = @nonobjc NSTimer.__allocating_init(timeInterval:repeats:block:)(1, partial apply for closure #1 in MockAudioPowerSpectrumViewModel.init(), v5, 0.25);
  v8 = OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer;
  v9 = *&v6[OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer];
  *&v6[OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer] = v7;

  result = [objc_opt_self() mainRunLoop];
  v11 = *&v6[v8];
  if (v11)
  {
    v12 = result;
    [result addTimer:v11 forMode:*MEMORY[0x1E695DA28]];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for NSTimer()
{
  result = lazy cache variable for type metadata for NSTimer;
  if (!lazy cache variable for type metadata for NSTimer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTimer);
  }

  return result;
}

void closure #1 in MockAudioPowerSpectrumViewModel.init()(uint64_t a1)
{
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, 0.0, 1.0);
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))(v26);
    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v9 = *(*v8 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
    v10 = *v8;
    *(v10 + 16) = v9 + 1;
    *(v10 + 4 * v9 + 32) = v2;
    v6(v26, 0);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = (*((*v4 & *v11) + 0x110))(v26);
    specialized RangeReplaceableCollection.removeFirst()();
    v13(v26, 0);
  }

  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v11, 0.0, 1.0);
  v15 = v14;
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = (*((*v4 & *v16) + 0x140))(v26);
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v21 = *(*v20 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v21);
    v22 = *v20;
    *(v22 + 16) = v21 + 1;
    *(v22 + 4 * v21 + 32) = v15;
    v18(v26, 0);
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = (*((*v4 & *v23) + 0x140))(v26);
    specialized RangeReplaceableCollection.removeFirst()();
    v25(v26, 0);
  }
}

id @nonobjc NSTimer.__allocating_init(timeInterval:repeats:block:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v9[3] = &block_descriptor_13;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

id MockAudioPowerSpectrumViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockAudioPowerSpectrumViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MockAudioPowerSpectrumViewModel()
{
  result = type metadata singleton initialization cache for MockAudioPowerSpectrumViewModel;
  if (!type metadata singleton initialization cache for MockAudioPowerSpectrumViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview()
{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioPowerSpectrumView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for AudioPowerSpectrumView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit22AudioPowerSpectrumViewVAA12_FrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit22AudioPowerSpectrumViewVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView()
{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView);
  }

  return result;
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, float a2, float a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE_INT(fabs(a3 - a2)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1BFB23E10](&v7, 8);
  if (((v5 * vcvts_n_f32_u64(v7 & 0xFFFFFF, 0x18uLL)) + a2) == a3)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, a2, a3);
  }

  return result;
}

unint64_t type metadata accessor for CAShapeLayer()
{
  result = lazy cache variable for type metadata for CAShapeLayer;
  if (!lazy cache variable for type metadata for CAShapeLayer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAShapeLayer);
  }

  return result;
}

uint64_t ShapeView.shapeLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for ShapeView.fillColor : ShapeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ShapeView.fillColor : ShapeView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

void (*ShapeView.fillColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = ShapeView.shapeLayer.getter();
  v4 = [v3 fillColor];

  *a1 = v4;
  return ShapeView.fillColor.modify;
}

uint64_t key path getter for ShapeView.fillRule : ShapeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

id ShapeView.fillRule.getter()
{
  v0 = ShapeView.shapeLayer.getter();
  v1 = [v0 fillRule];

  return v1;
}

void ShapeView.fillRule.setter(void *a1)
{
  v2 = ShapeView.shapeLayer.getter();
  [v2 setFillRule_];
}

void (*ShapeView.fillRule.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = ShapeView.shapeLayer.getter();
  v4 = [v3 fillRule];

  *a1 = v4;
  return ShapeView.fillRule.modify;
}

void ShapeView.fillRule.modify(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    v3 = ShapeView.shapeLayer.getter();
    [v3 setFillRule_];
  }

  else
  {
    v2 = ShapeView.shapeLayer.getter();
    [v2 setFillRule_];
  }
}

uint64_t key path getter for ShapeView.path : ShapeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ShapeView.path : ShapeView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

id ShapeView.fillColor.getter(SEL *a1)
{
  v2 = ShapeView.shapeLayer.getter();
  v3 = [v2 *a1];

  return v3;
}

void ShapeView.fillColor.setter(void *a1, SEL *a2)
{
  v4 = ShapeView.shapeLayer.getter();
  [v4 *a2];
}

void (*ShapeView.path.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = ShapeView.shapeLayer.getter();
  v4 = [v3 path];

  *a1 = v4;
  return ShapeView.path.modify;
}

void ShapeView.fillColor.modify(id *a1, char a2, SEL *a3)
{
  if (a2)
  {
    v4 = *a1;
    v5 = ShapeView.shapeLayer.getter();
    [v5 *a3];

    v6 = v4;
  }

  else
  {
    v6 = *a1;
    v4 = ShapeView.shapeLayer.getter();
    [v4 *a3];
  }
}

id ShapeView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id ShapeView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v5 = type metadata accessor for ShapeView();
  v1 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id ShapeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShapeView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShapeView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ShapeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void Logger.traceFunctionStart(file:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = OUTLINED_FUNCTION_23();
    v17 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = StaticString.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    *(v9 + 24) = a7;
    _os_log_impl(&dword_1BBC58000, oslog, v8, "%s%s:%lu Called", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

uint64_t specialized Logger.traceFunction<A>(returning:file:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_14_20();
    v20 = OUTLINED_FUNCTION_13_31();
    *v11 = 136315906;
    v12 = OUTLINED_FUNCTION_0_62();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);
    *(v11 + 12) = 2080;
    v14 = OUTLINED_FUNCTION_10_25("traceFunction(returning:file:function:line:)");
    OUTLINED_FUNCTION_8_45(v14);
    *(v11 + 32) = 2080;
    memcpy(__dst, a9, sizeof(__dst));

    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v11 + 34) = v17;
    _os_log_impl(&dword_1BBC58000, v9, v10, "%s%s:#%ld returning %s", v11, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }
}

void specialized Logger.traceFunction<A>(returning:file:function:line:)()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = OUTLINED_FUNCTION_14_20();
    v8 = OUTLINED_FUNCTION_13_31();
    *v1 = 136315906;
    v2 = OUTLINED_FUNCTION_0_62();
    *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v8);
    *(v1 + 12) = 2080;
    *(v1 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001BC4F8DC0, &v8);
    *(v1 + 22) = 2048;
    *(v1 + 24) = 16;
    *(v1 + 32) = 2080;

    v4 = String.init<A>(reflecting:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v1 + 34) = v6;
    _os_log_impl(&dword_1BBC58000, oslog, v0, "%s%s:#%ld returning %s", v1, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }
}

{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = OUTLINED_FUNCTION_14_20();
    v12 = OUTLINED_FUNCTION_13_31();
    *v1 = 136315906;
    v2 = OUTLINED_FUNCTION_0_62();
    *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v12);
    *(v1 + 12) = 2080;
    OUTLINED_FUNCTION_1_18();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, v4, v5);
    OUTLINED_FUNCTION_8_45(v6);
    *(v1 + 32) = 2080;

    v7 = specialized CKStateMachine.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v12);

    *(v1 + 34) = v10;
    _os_log_impl(&dword_1BBC58000, oslog, v0, "%s%s:#%ld returning %s", v1, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }
}

void Logger.traceFunction<A>(returning:file:function:line:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v14))
  {
    v15 = OUTLINED_FUNCTION_14_20();
    v24 = OUTLINED_FUNCTION_13_31();
    *v15 = 136315906;
    v16 = OUTLINED_FUNCTION_0_62();
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);
    *(v15 + 12) = 2080;
    *(v15 + 14) = OUTLINED_FUNCTION_10_25("traceFunction(returning:file:function:line:)");
    *(v15 + 22) = 2048;
    *(v15 + 24) = 16;
    *(v15 + 32) = 2080;
    a1();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;

    (*(v11 + 8))(v13, a10);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

    *(v15 + 34) = v21;
    _os_log_impl(&dword_1BBC58000, v23, v14, "%s%s:#%ld returning %s", v15, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v22 = v23;
  }
}

void Logger.traceFunctionReturn(file:function:line:)()
{
  v19 = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_29(v1, v2, v3, v4, v5, v6, v7, v8, v19))
  {
    OUTLINED_FUNCTION_23();
    v21 = OUTLINED_FUNCTION_12_28();
    *v0 = 136315650;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000052, 0x80000001BC4F8D60, &v21);
    OUTLINED_FUNCTION_7_18(v9);
    OUTLINED_FUNCTION_1_18();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, v10, v11);
    OUTLINED_FUNCTION_6_39(v12);
    *(v0 + 24) = 20;
    OUTLINED_FUNCTION_5_39(&dword_1BBC58000, v13, v14, "%s%s:#%ld returning", v15, v16, v17, v18, v20);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_27();
  }
}

void Logger.traceFunctionSuspensionStart(file:function:line:)()
{
  v19 = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_29(v1, v2, v3, v4, v5, v6, v7, v8, v19))
  {
    OUTLINED_FUNCTION_23();
    v21 = OUTLINED_FUNCTION_12_28();
    *v0 = 136315650;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000052, 0x80000001BC4F8D60, &v21);
    OUTLINED_FUNCTION_7_18(v9);
    OUTLINED_FUNCTION_1_18();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, v10, v11);
    OUTLINED_FUNCTION_6_39(v12);
    *(v0 + 24) = 24;
    OUTLINED_FUNCTION_5_39(&dword_1BBC58000, v13, v14, "%s%s:#%ld suspension pt start", v15, v16, v17, v18, v20);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_27();
  }
}

void Logger.traceFunctionSuspensionEnd(file:function:line:)()
{
  v19 = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_29(v1, v2, v3, v4, v5, v6, v7, v8, v19))
  {
    OUTLINED_FUNCTION_23();
    v21 = OUTLINED_FUNCTION_12_28();
    *v0 = 136315650;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000052, 0x80000001BC4F8D60, &v21);
    OUTLINED_FUNCTION_7_18(v9);
    OUTLINED_FUNCTION_1_18();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, v10, v11);
    OUTLINED_FUNCTION_6_39(v12);
    *(v0 + 24) = 28;
    OUTLINED_FUNCTION_5_39(&dword_1BBC58000, v13, v14, "%s%s:#%ld suspension pt start", v15, v16, v17, v18, v20);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_27();
  }
}

Swift::Void __swiftcall MultiwayViewController.accessoryFlipButtonReleased()()
{
  ConversationController.swapLocalParticipantCamera()();

  MultiwayViewController.updateShouldShowReactionPickerTipView()();
}

void MultiwayViewController.accessoryZoomInByDisplayZoomValue(_:direction:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x220);
  v6 = v4;
  v5(a1, 0.1);
}

void MultiwayViewController.accessoryTrackingSummaryUpdated(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  if (Features.tapToTrackEnabled.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in MultiwayViewController.accessoryTrackingSummaryUpdated(_:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_14;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v15, v8, v19);
    _Block_release(v19);

    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationKit);
    v25 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BBC58000, v25, v21, "DockKit Tap to track feature is not enabled. Not showing tracked persons on UI", v22, 2u);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
    }

    OUTLINED_FUNCTION_30_0();
  }
}

void closure #1 in MultiwayViewController.accessoryTrackingSummaryUpdated(_:)(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MultiwayViewController.updateIndicators(for:)(a2);
  }
}

uint64_t MultiwayViewController.updateIndicators(for:)(char *a1)
{
  v2 = v1;
  v138 = type metadata accessor for CameraOrientationInternal();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v137 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v145 = (&v133 - v13);
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v150 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v136 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v133 - v26;
  v28 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
  v29 = specialized Array.count.getter(v28);
  v147 = v11;
  v141 = v2;
  v135 = a1;
  v134 = v5;
  if (v29)
  {
    v30 = v29;
    v151 = v28;
    v154 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v30 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v31 = 0;
    v32 = v154;
    v149 = (v151 & 0xC000000000000001);
    do
    {
      if (v149)
      {
        MEMORY[0x1BFB22010](v31);
      }

      else
      {
      }

      dispatch thunk of TrackedSubjectInternal.identifier.getter();

      v154 = v32;
      v33 = *(v32 + 16);
      if (v33 >= *(v32 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v154;
      }

      ++v31;
      *(v32 + 16) = v33 + 1;
      (*(v150 + 32))(v32 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v33, v27, v14);
    }

    while (v30 != v31);

    v2 = v141;
    v11 = v147;
  }

  else
  {
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5();
  v35 = v34;
  v36 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  swift_beginAccess();
  v140 = v36;
  v37 = *(v2 + v36);
  v38 = (v37 + 64);
  v39 = 1 << *(v37 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v149 = (v150 + 16);
  v146 = (v150 + 32);
  v151 = v150 + 8;
  v142 = v37;

  v43 = 0;
  v144 = v38;
  v143 = v42;
  if (!v41)
  {
LABEL_17:
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v42)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd);
        __swift_storeEnumTagSinglePayload(v11, 1, 1, v67);
        v41 = 0;
        goto LABEL_22;
      }

      v41 = *(v38 + v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  while (1)
  {
    v44 = v43;
LABEL_21:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v46 = v45 | (v44 << 6);
    v47 = v142;
    v48 = v150;
    (*(v150 + 16))(v24, *(v142 + 48) + *(v150 + 72) * v46, v14);
    v49 = *(*(v47 + 56) + 8 * v46);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd);
    v51 = *(v50 + 48);
    v52 = *(v48 + 32);
    v11 = v147;
    v52(v147, v24, v14);
    *&v11[v51] = v49;
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v50);
    v53 = v49;
LABEL_22:
    v54 = v145;
    outlined init with take of (key: UUID, value: CEKCinematicSubjectIndicatorView)?(v11, v145);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd);
    if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
    {
      break;
    }

    (*v146)(v152, v54, v14);
    v56 = *(v35 + 16);
    v148 = v151 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v56)
    {
      OUTLINED_FUNCTION_0_63();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, v57);
      dispatch thunk of Hashable._rawHashValue(seed:)();
      OUTLINED_FUNCTION_16_7();
      v60 = ~v59;
      while (1)
      {
        v61 = v58 & v60;
        if (((*(v35 + 56 + (((v58 & v60) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & v60)) & 1) == 0)
        {
          break;
        }

        v62 = v150;
        (*(v150 + 16))(v24, *(v35 + 48) + *(v150 + 72) * v61, v14);
        OUTLINED_FUNCTION_0_63();
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, v63);
        v64 = dispatch thunk of static Equatable.== infix(_:_:)();
        v65 = *(v62 + 8);
        v65(v24, v14);
        v58 = v61 + 1;
        if (v64)
        {
          v66 = v152;
          goto LABEL_29;
        }
      }
    }

    v66 = v152;
    MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(v152, 0.15);
    v65 = *v151;
LABEL_29:
    v65(v66, v14);
    v11 = v147;
    v38 = v144;
    v42 = v143;
    if (!v41)
    {
      goto LABEL_17;
    }
  }

  v68 = v135;
  v148 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
  specialized Array.count.getter(v148);
  v69 = v141;
  OUTLINED_FUNCTION_5_40();
  v70 = v140;
  v147 = v71;
  if (!v71)
  {
    goto LABEL_76;
  }

  if (v147 >= 1)
  {
    v72 = 0;
    v146 = (v148 & 0xC000000000000001);
    v145 = (v134 + 8);
    do
    {
      if (v146)
      {
        v73 = MEMORY[0x1BFB22010](v72, v148);
      }

      else
      {
        v73 = *(v148 + 8 * v72 + 32);
      }

      dispatch thunk of TrackingSummaryInternal.orientation.getter();
      dispatch thunk of TrackingSummaryInternal.referenceDimension.getter();
      MultiwayViewController.frameForTrackedObject(_:orientation:referenceDimensions:)(v74, v75, v73, v11);
      v77 = v76;
      v79 = v78;
      (*v145)(v11, v41);
      v152 = v73;
      dispatch thunk of TrackedSubjectInternal.identifier.getter();
      OUTLINED_FUNCTION_11_32();
      v80 = *(v69 + v70);
      if (*(v80 + 16) && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(), (v82 & 1) != 0))
      {
        v83 = *(*(v80 + 56) + 8 * v81);
        swift_endAccess();
        v84 = v83;
        [v84 frame];
        v86 = v85;
        v88 = v87;
        v89 = v85 * v87;
        if (v85 * v87 <= 0.0)
        {
          v91 = 1;
        }

        else
        {
          v90 = v77 * v79;
          v91 = 1;
          if (v77 * v79 > 0.0 && v90 / v89 <= 1.2)
          {
            v91 = v89 / v90 > 1.2;
          }
        }

        OUTLINED_FUNCTION_18_1();
        UIRectGetCenter();
        if (v91)
        {
          v116 = v77;
        }

        else
        {
          v116 = v86;
        }

        if (v91)
        {
          v117 = v79;
        }

        else
        {
          v117 = v88;
        }

        MultiwayViewController.animateIndicatorView(view:center:bounds:)(v84, v114, v115, 0.0, 0.0, v116, v117);
        v70 = v140;
      }

      else
      {
        swift_endAccess();
        v92 = objc_allocWithZone(MEMORY[0x1E6993838]);
        v93 = OUTLINED_FUNCTION_18_1();
        v84 = [v94 v95];
        v96 = MultiwayViewController.localParticipantView.getter();
        if (v96)
        {
          v97 = v96;
          type metadata accessor for LocalParticipantView();
          v98 = swift_dynamicCastClass();
          if (v98)
          {
            v143 = v98;
            v144 = v97;
            v11 = v68;
            v99 = v72;
            v142 = *v149;
            (v142)(v139, v24, v14);
            swift_beginAccess();
            v84 = v84;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v101 = v70;
            v102 = isUniquelyReferenced_nonNull_native;
            v153 = *(v69 + v101);
            v103 = v153;
            *(v69 + v101) = 0x8000000000000000;
            v104 = specialized __RawDictionaryStorage.find<A>(_:)();
            v106 = v103[2];
            v107 = (v105 & 1) == 0;
            v108 = v106 + v107;
            if (__OFADD__(v106, v107))
            {
              goto LABEL_78;
            }

            v41 = v104;
            v24 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSo32CEKCinematicSubjectIndicatorViewCGMd);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v102, v108))
            {
              v109 = specialized __RawDictionaryStorage.find<A>(_:)();
              if ((v24 & 1) != (v110 & 1))
              {
                goto LABEL_82;
              }

              v41 = v109;
            }

            v72 = v99;
            v68 = v11;
            v111 = v153;
            if (v24)
            {
              v112 = v153[7];
              v113 = *(v112 + 8 * v41);
              *(v112 + 8 * v41) = v84;
            }

            else
            {
              v153[(v41 >> 6) + 8] |= 1 << v41;
              (v142)(v111[6] + *(v150 + 72) * v41, v139, v14);
              *(v111[7] + 8 * v41) = v84;
              v118 = v111[2];
              v119 = __OFADD__(v118, 1);
              v120 = v118 + 1;
              if (v119)
              {
                goto LABEL_79;
              }

              v111[2] = v120;
            }

            (*v151)(v139, v14);
            v121 = v140;
            *(v69 + v140) = v111;
            v70 = v121;

            swift_endAccess();
            LocalParticipantView.addIndicatorView(_:)(v84);
            [v84 setAlpha_];
            MultiwayViewController.fadeInView(view:duration:)(v84, 0.25);

            OUTLINED_FUNCTION_5_40();
          }

          else
          {

            v84 = v97;
          }
        }
      }

      OUTLINED_FUNCTION_11_32();
      v122 = *(v69 + v70);
      if (*(v122 + 16) && (v123 = specialized __RawDictionaryStorage.find<A>(_:)(), (v124 & 1) != 0))
      {
        v125 = v72;
        v126 = *(*(v122 + 56) + 8 * v123);
        swift_endAccess();
        v127 = v126;
        if (dispatch thunk of TrackedSubjectInternal.trackingLock.getter())
        {
          [v127 setShape:1 animated:1];
        }

        else
        {
          v128 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
          if ((v129 & 1) != 0 || v128 < 1)
          {
            v130 = v127;
            v131 = 0;
          }

          else
          {
            v130 = v127;
            v131 = 2;
          }

          [v130 setShape:v131 animated:1];
        }

        v70 = v140;
        v72 = v125;
      }

      else
      {
        swift_endAccess();
      }

      ++v72;

      (*v151)(v24, v14);
    }

    while (v147 != v72);
LABEL_76:

    return MultiwayViewController.hideOrShowIndicators()();
  }

LABEL_81:
  __break(1u);
LABEL_82:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  if (*(a2 + 16))
  {
    OUTLINED_FUNCTION_0_63();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v10, v11);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v12 = a2 + 56;
    v19 = a2;
    OUTLINED_FUNCTION_16_7();
    v15 = ~v14;
    do
    {
      v16 = v13 & v15;
      if (((1 << (v13 & v15)) & *(v12 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v9, *(v19 + 48) + *(v5 + 72) * v16, v3);
      OUTLINED_FUNCTION_0_63();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, v17);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v5 + 8))(v9, v3);
      v13 = v16 + 1;
    }

    while ((v18 & 1) == 0);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t specialized Set.contains(_:)(Swift::UInt32 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
    }

    while (v6 && *(*(a2 + 48) + 4 * v5) != a1);
  }

  return v2;
}

void specialized Set.contains(_:)(void *a1, unint64_t a2)
{
  specialized Set.contains(_:)(a1, a2, &lazy cache variable for type metadata for TUHandle);
}

{
  specialized Set.contains(_:)(a1, a2, &lazy cache variable for type metadata for CNComposeRecipient);
}

void specialized Set.contains(_:)(void *a1, unint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16))
  {
    type metadata accessor for NSObject(0, a3);
    NSObject._rawHashValue(seed:)(*(a2 + 40));
    OUTLINED_FUNCTION_16_7();
    v7 = ~v6;
    do
    {
      v8 = v5 & v7;
      if (((1 << (v5 & v7)) & *(a2 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v9 = *(*(a2 + 48) + 8 * v8);
      v10 = static NSObject.== infix(_:_:)();

      v5 = v8 + 1;
    }

    while ((v10 & 1) == 0);
  }

  OUTLINED_FUNCTION_30_0();
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v4);
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
    }

    while (v6 && *(*(a2 + 48) + v5) != v4);
  }

  return v2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    MEMORY[0x1BFB22620](*(a2 + 40), a1);
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
      if (!v4)
      {
        break;
      }

      OUTLINED_FUNCTION_6_40();
    }

    while (v5 != a1);
  }

  return v2;
}

{
  v3 = *(a2 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_9_30();
    MEMORY[0x1BFB22640](v2);
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
      if (!v4)
      {
        break;
      }

      OUTLINED_FUNCTION_6_40();
    }

    while (v5 != v2);
  }

  return v3;
}

void MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  swift_beginAccess();
  v10 = *&v3[v9];
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = v13;
    [v14 alpha];
    if (v15 == 0.0)
    {
    }

    else
    {
      (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v3;
      (*(v7 + 32))(v17 + v16, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v18 = v14;
      v19 = v3;
      MultiwayViewController.fadeOutView(view:duration:completion:)(v18, partial apply for closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:), v17, a2);
    }
  }

  else
  {
    swift_endAccess();
  }
}

double MultiwayViewController.frameForTrackedObject(_:orientation:referenceDimensions:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CameraOrientationInternal();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MultiwayViewController.localParticipantView.getter();
  if (!v11)
  {
    return *MEMORY[0x1E695F058];
  }

  v12 = v11;
  type metadata accessor for LocalParticipantView();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

    return *MEMORY[0x1E695F058];
  }

  v14 = v13;
  type metadata accessor for DockKitCoreUtils();
  dispatch thunk of TrackedSubjectInternal.rect.getter();
  v54 = a1;
  v55 = a2;
  (*(v8 + 104))(v10, *MEMORY[0x1E699A2E8], v7);
  static DockKitCoreUtils.convert(rect:from:to:)();
  v16 = v15;
  v18 = v17;
  v52 = v20;
  v53 = v19;
  (*(v8 + 8))(v10, v7);
  [*(v14 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView) bounds];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  v56 = v57.size.height;
  v25 = CGRectGetHeight(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v26 = v25 / CGRectGetWidth(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v27 = CGRectGetWidth(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v28 = CGRectGetHeight(v60);
  if (v54 / v55 <= v26)
  {
    v29 = 1.0 / (v54 / v55) * v28;
  }

  else
  {
    v28 = v54 / v55 * v27;
    v29 = v27;
  }

  v48 = v29;
  v49 = v28;
  v30 = v16;
  v50 = v16;
  v51 = v18;
  v61.origin.x = v16;
  v31 = v18;
  v61.origin.y = v18;
  v33 = v52;
  v32 = v53;
  v61.size.width = v53;
  v61.size.height = v52;
  v55 = v29 * CGRectGetWidth(v61);
  v62.origin.x = v30;
  v62.origin.y = v31;
  v62.size.width = v32;
  v62.size.height = v33;
  v54 = v49 * CGRectGetHeight(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v34 = v56;
  v63.size.height = v56;
  v35 = CGRectGetWidth(v63);
  v36 = v48;
  v37 = (v48 - v35) * 0.5;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = v34;
  CGRectGetHeight(v64);
  v38 = MultiwayViewController.aspectFaceRect(from:orientation:)(a4, v50 * v36 - v37);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = v56;
  v66 = CGRectInset(v65, 3.0, 3.0);
  v67.origin.x = v38;
  v67.origin.y = v40;
  v67.size.width = v42;
  v67.size.height = v44;
  *&v45 = CGRectIntersection(v66, v67);

  return v45;
}

void MultiwayViewController.animateIndicatorView(view:center:bounds:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  v25 = partial apply for closure #1 in MultiwayViewController.animateIndicatorView(view:center:bounds:);
  v26 = v15;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed () -> ();
  v24 = &block_descriptor_24_0;
  v16 = _Block_copy(&v21);
  v17 = a1;

  [v14 animateWithDuration:2 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.6 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  v25 = partial apply for closure #2 in MultiwayViewController.animateIndicatorView(view:center:bounds:);
  v26 = v18;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed () -> ();
  v24 = &block_descriptor_30;
  v19 = _Block_copy(&v21);
  v20 = v17;

  [v14 animateWithDuration:2 delay:v19 options:0 animations:0.4 completion:0.0];
  _Block_release(v19);
}

uint64_t MultiwayViewController.hideOrShowIndicators()()
{
  v45 = type metadata accessor for UUID();
  v1 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v44 = MultiwayViewController.shouldHideIndicators()();
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = v1 + 32;
  v37 = v1 + 16;
  v41 = v1;
  v42 = v10;
  v43 = (v1 + 8);

  v17 = 0;
  v38 = v8;
  v39 = v5;
  v34 = v15;
  v35 = v11;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_9:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v18 << 6);
      v22 = v41;
      v21 = v42;
      v23 = v40;
      v24 = v45;
      (*(v41 + 16))(v40, *(v42 + 48) + *(v41 + 72) * v20, v45);
      v25 = *(*(v21 + 56) + 8 * v20);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd);
      v27 = *(v26 + 48);
      v28 = *(v22 + 32);
      v5 = v39;
      v28(v39, v23, v24);
      *&v5[v27] = v25;
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
      v29 = v25;
      v8 = v38;
      v15 = v34;
      v11 = v35;
LABEL_10:
      outlined init with take of (key: UUID, value: CEKCinematicSubjectIndicatorView)?(v5, v8);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd);
      if (__swift_getEnumTagSinglePayload(v8, 1, v30) == 1)
      {
      }

      v31 = *&v8[*(v30 + 48)];
      [v31 setHidden_];

      result = (*v43)(v8, v45);
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd);
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v32);
        v14 = 0;
        goto LABEL_10;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL MultiwayViewController.shouldHideIndicators()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) == 1)
  {
    return 1;
  }

  else
  {
    v3 = __dst[6];
    v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    return !specialized Sequence<>.contains(_:)(*(v3 + v4), &outlined read-only object #0 of MultiwayViewController.shouldHideIndicators());
  }
}

void MultiwayViewController.fadeInView(view:duration:)(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v8[4] = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_36;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 animateWithDuration:6 delay:v6 options:0 animations:a2 completion:0.0];
  _Block_release(v6);
}

double MultiwayViewController.aspectFaceRect(from:orientation:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CameraOrientationInternal();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x1E699A2D8])
  {
    v10 = v9 == *MEMORY[0x1E699A2E8] || v9 == *MEMORY[0x1E699A2C8];
    if (v10 || (v9 != *MEMORY[0x1E699A2B8] ? (v11 = v9 == *MEMORY[0x1E699A2C0]) : (v11 = 1), v11))
    {
      v12 = swift_beginAccess();
      return TPNumberPadCharacter.rawValue.getter(v12);
    }

    else if (v9 != *MEMORY[0x1E699A2D0] && v9 != *MEMORY[0x1E699A2E0] && v9 != *MEMORY[0x1E699A2F0])
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return a2;
}

id closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(int a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 alpha];
  if (v7 == 0.0)
  {
    swift_beginAccess();
    v8 = specialized Dictionary._Variant.removeValue(forKey:)(a4);
    swift_endAccess();

    return [a2 removeFromSuperview];
  }

  return result;
}

void MultiwayViewController.fadeOutView(view:duration:completion:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v18 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v19 = v9;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed () -> ();
  v17 = &block_descriptor_12;
  v10 = _Block_copy(&v14);
  v11 = a1;

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v18 = partial apply for closure #2 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v19 = v12;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v17 = &block_descriptor_18;
  v13 = _Block_copy(&v14);

  [v8 animateWithDuration:6 delay:v10 options:v13 animations:a4 completion:0.0];
  _Block_release(v13);
  _Block_release(v10);
}

id closure #2 in MultiwayViewController.animateIndicatorView(view:center:bounds:)(void *a1)
{
  [a1 setBounds_];

  return [a1 layoutIfNeeded];
}

uint64_t outlined init with take of (key: UUID, value: CEKCinematicSubjectIndicatorView)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id partial apply for closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(a1, v4, v5, v6);
}

ConversationKit::ContactHandleMap __swiftcall ContactHandleMap.init()()
{
  v1 = v0;
  result.store._rawValue = Dictionary.init(dictionaryLiteral:)();
  v1->store._rawValue = result.store._rawValue;
  return result;
}

ConversationKit::ContactHandleMap __swiftcall ContactHandleMap.init(contactsByHandle:)(Swift::OpaquePointer contactsByHandle)
{
  return ContactHandleMap.init(contactsByHandle:)(contactsByHandle._rawValue, ContactHandleMap.onContactsUpdated(_:), v1);
}

{
  return ContactHandleMap.init(contactsByHandle:)(contactsByHandle._rawValue, ContactHandleMap.onContactsUpdated(_:), v1);
}

Swift::Void __swiftcall ContactHandleMap.onContactsUpdated(_:)(Swift::OpaquePointer a1)
{
  v2 = a1._rawValue + 64;
  OUTLINED_FUNCTION_1_64();
  v4 = v3 >> 6;
  v32 = v5;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  v30 = v4;
  v31 = v2;
  if (v1)
  {
    while (1)
    {
      v8 = v6;
LABEL_6:
      v9 = (v8 << 9) | (8 * __clz(__rbit64(v1)));
      v10 = *(*(v32 + 48) + v9);
      v33 = *(*(v32 + 56) + v9);
      v11 = v33;
      v34 = v10;
      v12 = [v34 value];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
      OUTLINED_FUNCTION_3_57();
      if (v20)
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9CNContactCSgGMd);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7))
      {
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_22;
        }

        v21 = v23;
      }

      v1 &= v1 - 1;
      if (v22)
      {

        v25 = v7[7];
        v26 = *(v25 + 8 * v21);
        *(v25 + 8 * v21) = v33;
      }

      else
      {
        v7[(v21 >> 6) + 8] |= 1 << v21;
        v27 = (v7[6] + 16 * v21);
        *v27 = v13;
        v27[1] = v15;
        *(v7[7] + 8 * v21) = v33;

        v28 = v7[2];
        v20 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v20)
        {
          goto LABEL_21;
        }

        v7[2] = v29;
      }

      v6 = v8;
      v4 = v30;
      v2 = v31;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v8 >= v4)
      {
        break;
      }

      v1 = *&v2[8 * v8];
      ++v6;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    ContactHandleMap.onContactsUpdated(_:)(v7);
  }
}

{
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = a1._rawValue + 64;
  OUTLINED_FUNCTION_1_64();
  v6 = v5 >> 6;
  rawValue = a1._rawValue;

  v7 = 0;
  v40 = v6;
  v41 = a1._rawValue + 64;
  if (v1)
  {
LABEL_6:
    while (1)
    {
      v9 = __clz(__rbit64(v1)) | (v7 << 6);
      v10 = (rawValue[6] + 16 * v9);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(rawValue[7] + 8 * v9);
      if (v13)
      {

        v44 = v13;
      }

      else
      {
        v14 = *v39;
        v15 = *(*v39 + 16);

        if (v15 && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12), (v17 & 1) != 0) && (v18 = *(v14 + 56) + 16 * v16, *(v18 + 8) == 1))
        {
          v44 = *v18;
          v19 = *v18;
        }

        else
        {
          type metadata accessor for CNContact();

          v19 = @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(0, 0, v11, v12);
          v44 = v19;
        }

        v20 = v19;
      }

      v21 = v12;
      v22 = v13;
      v43 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v11;
      specialized __RawDictionaryStorage.find<A>(_:)(v11, v21);
      OUTLINED_FUNCTION_3_57();
      if (v27)
      {
        break;
      }

      v28 = v25;
      v29 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15ConversationKit16ContactHandleMapV06RemoteE033_F6BD99B7C429375F74659E621438887DLLOGMd);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v3))
      {
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v21);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_28;
        }

        v28 = v30;
      }

      if (v29)
      {

        v32 = v3[7] + 16 * v28;
        v33 = *v32;
        v34 = v44;
        *v32 = v44;
        *(v32 + 8) = v22 == 0;
      }

      else
      {
        v3[(v28 >> 6) + 8] |= 1 << v28;
        v35 = (v3[6] + 16 * v28);
        *v35 = v24;
        v35[1] = v21;
        v36 = v3[7] + 16 * v28;
        v34 = v44;
        *v36 = v44;
        *(v36 + 8) = v22 == 0;

        v37 = v3[2];
        v27 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v27)
        {
          goto LABEL_27;
        }

        v3[2] = v38;
      }

      v1 &= v1 - 1;

      v6 = v40;
      v4 = v41;
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        *v39 = v3;
        return;
      }

      v1 = *&v4[8 * v8];
      ++v7;
      if (v1)
      {
        v7 = v8;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t ContactHandleMap.init(contactsByHandle:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  *a3 = Dictionary.init(dictionaryLiteral:)();
  a2(a1);
}

CNContact_optional __swiftcall ContactHandleMap.contactLiteral(for:)(Swift::String a1)
{
  v2 = *v1;
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1._countAndFlagsBits, a1._object), !v4))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.conversationKit);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;

      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, v9, v10, "[ContactHandleMap] Contact info requested for unrecognized handle %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    goto LABEL_10;
  }

  v5 = *(v2 + 56) + 16 * v3;
  if (*(v5 + 8))
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = *v5;
  v7 = *v5;
LABEL_11:
  v16 = v6;
  result.value.super.isa = v16;
  result.is_nil = v4;
  return result;
}

CNContact __swiftcall ContactHandleMap.contact(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1._countAndFlagsBits, a1._object), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);

    return v7;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationKit);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;

      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v10, v11, "[ContactHandleMap] Contact info requested for unrecognized handle %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    type metadata accessor for CNContact();

    return @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(0, 0, countAndFlagsBits, object);
  }
}

uint64_t ContactHandleMap.contactLiteral(for:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = [a1 value];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = a2(v4, v6);

  return v7;
}

Class ContactHandleMap.oneToOneModeContact.getter()
{
  v1 = *v0;

  v3 = specialized Collection.first.getter(v2);
  if (v4)
  {
    v6 = v3;
    v7 = v4;

    if (*(v1 + 16) >= 2uLL)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.conversationKit);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v19 = v12;
        *v11 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15ConversationKit16ContactHandleMapV06RemoteC033_F6BD99B7C429375F74659E621438887DLLOGMd);
        v13 = String.init<A>(reflecting:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1BBC58000, v9, v10, "[ContactHandleMap] 1:1 contact requested but returning the first of multiple: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
        OUTLINED_FUNCTION_2_2();

LABEL_10:
        v19 = v1;
        v17._countAndFlagsBits = v6;
        v17._object = v7;
        isa = ContactHandleMap.contact(for:)(v17).super.isa;

        return isa;
      }
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t ContactHandleMap.allContacts.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = specialized Dictionary.Keys.startIndex.getter();
    v5 = result;
    v7 = v6;
    v8 = 0;
    v24 = v1 + 64;
    v22 = v6;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v24 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (*(v1 + 36) != v7)
      {
        goto LABEL_22;
      }

      v23 = v4;
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      ContactHandleMap.contact(for:)(v13);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v14 = 1 << *(v1 + 32);
      if (v5 >= v14)
      {
        goto LABEL_23;
      }

      v15 = *(v24 + 8 * v9);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v7)
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (v1 + 72 + 8 * v9);
        while (v18 < (v14 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v5, v7, v23 & 1);
            v14 = __clz(__rbit64(v20)) + v17;
            goto LABEL_17;
          }
        }

        result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v5, v7, v23 & 1);
      }

LABEL_17:
      v4 = 0;
      ++v8;
      v5 = v14;
      v7 = v22;
      if (v8 == v2)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = MEMORY[0x1BFB209B0]();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = MEMORY[0x1BFB209B0](a3, a4);

LABEL_6:
  v8 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v6 emailOrPhoneNumber:v7];

  return v8;
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t ClarityUIDialerKeypadView.init(enteredNumbers:isPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *a8 = static ClarityUIPreferences.shared;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7 & 1;
}

uint64_t ClarityUIDialerKeypadView.enteredNumbers.getter()
{
  v1 = *(v0 + 24);
  v5 = *(v0 + 8);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050](&v4, v2);
  return v4;
}

void (*ClarityUIDialerKeypadView.enteredNumbers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v3;
  v3[15] = v1;
  v4 = *(v1 + 8);
  v3[16] = v4;
  v5 = *(v1 + 16);
  v3[17] = v5;
  v3[14] = v4;
  *(v3 + 4) = *(v1 + 24);
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 1) = *(v1 + 24);
  outlined init with copy of Transaction((v3 + 14), (v3 + 4));

  outlined init with copy of String((v3 + 8), (v3 + 4));
  v3[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050]();
  return ClarityUIDialerKeypadView.enteredNumbers.modify;
}

void ClarityUIDialerKeypadView.enteredNumbers.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  *(v2 + 32) = *(*a1 + 128);
  v4 = *(v2 + 80);
  *(v2 + 40) = *(v2 + 136);
  v5 = *(v3 + 24);
  *(v2 + 96) = v4;
  v6 = *(v2 + 88);
  *(v2 + 48) = v5;
  *(v2 + 104) = v6;
  if (a2)
  {

    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of String(v2 + 64);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of String(v2 + 64);
  }

  free(v2);
}

uint64_t ClarityUIDialerKeypadView.$enteredNumbers.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ClarityUIDialerKeypadView.isPresented.getter()
{
  OUTLINED_FUNCTION_2_19();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050](&v2, v0);
  return v2;
}

uint64_t ClarityUIDialerKeypadView.isPresented.setter()
{
  OUTLINED_FUNCTION_2_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

void (*ClarityUIDialerKeypadView.isPresented.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v3[7] = v4;
  v3[8] = v5;
  v6 = *(v1 + 56);
  *(v3 + 19) = v6;
  v3[6] = v4;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;
  outlined init with copy of Transaction((v3 + 6), (v3 + 3));

  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050]();
  return ClarityUIDialerView.isPresented.modify;
}

uint64_t ClarityUIDialerKeypadView.$isPresented.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ClarityUIDialerKeypadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MoveTransition();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonM0Rd__lFQOyAA0N0VyAA0F0VyAIyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadD0V04BacknM033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AoAEAPyQrqd__AaQRd__lFQOyA0__A3_013PrimaryActionnM0A5_LLVQo_tGGAA08_PaddingG0VG_AA6SpacerVA1_0s8UIKeypadD0VtGGMd);
  closure #1 in ClarityUIDialerKeypadView.body.getter(v2, a1 + *(v13 + 44));
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GMd) + 36);
  *v22 = v2;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = static Color.clarityUIContentBackground.getter();
  v24 = static Edge.Set.all.getter();
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGMd) + 36);
  *v25 = v23;
  *(v25 + 8) = v24;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGMd) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGMd) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd) + 28);
  v29 = *MEMORY[0x1E697E6C0];
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_7_0();
  (*(v30 + 104))(v27 + v28, v29);
  *v27 = KeyPath;
  MoveTransition.init(edge:)();
  (*(v6 + 16))(v9, v12, v4);
  lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
  v31 = AnyTransition.init<A>(_:)();
  (*(v6 + 8))(v12, v4);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGMd) + 36)) = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAA26_PreferenceWritingModifierVyAA36MultimodalChromeVisiblePreferenceKeyVGGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t closure #1 in ClarityUIDialerKeypadView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVGMd);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &__src[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &__src[-1] - v9;
  static ClarityUIMetrics.standardSpacing.getter();
  v12 = v11;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = v12;
  v10[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA6VStackVyAIyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadD0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAX_A_013PrimaryActionkJ0A1_LLVQo_tGGMd);
  closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter(a1, &v10[*(v13 + 44)]);
  v14 = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  EdgeInsets.init(_all:)();
  v15 = &v10[*(v5 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  static ClarityUIMetrics.standardSpacing.getter();
  v21 = v20;
  v22 = swift_allocObject();
  v23 = a1[1];
  v22[1] = *a1;
  v22[2] = v23;
  v22[3] = a1[2];
  *(v22 + 57) = *(a1 + 41);
  __src[1] = 0;
  __src[0] = 0;
  LOBYTE(__src[2]) = 1;
  outlined init with copy of ClarityUIDialerKeypadView(a1, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CGSizeVSgMd);
  State.init(wrappedValue:)();
  v24 = v39;
  v25 = v40;
  v26 = v42;
  LOBYTE(v39) = v41;
  static ClarityUIMetrics.standardSpacing.getter();
  v28 = v27;
  closure #1 in variable initialization expression of ClarityUIKeypadView.numberPadStrings();
  v30 = v29;
  v31 = [objc_allocWithZone(MEMORY[0x1E69D89A8]) init];
  v32 = v39;
  v37 = v7;
  sub_1BBCE1258(v10, v7);
  sub_1BBCE1258(v7, a2);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtMd);
  v34 = a2 + *(v33 + 48);
  *v34 = v21;
  *(v34 + 8) = 0;
  v35 = *(v33 + 64);
  __src[0] = v24;
  __src[1] = v25;
  LOBYTE(__src[2]) = v32;
  __src[3] = v26;
  __src[4] = 0x4020000000000000;
  __src[5] = v28;
  __src[6] = v30;
  __src[7] = v31;
  __src[8] = partial apply for closure #2 in closure #1 in ClarityUIDialerKeypadView.body.getter;
  __src[9] = v22;
  memcpy((a2 + v35), __src, 0x50uLL);
  outlined init with copy of ClarityUIKeypadView(__src, &v39);
  sub_1BBCE12C0(v10);
  v39 = v24;
  v40 = v25;
  v41 = v32;
  v42 = v26;
  v43 = 0x4020000000000000;
  v44 = v28;
  v45 = v30;
  v46 = v31;
  v47 = partial apply for closure #2 in closure #1 in ClarityUIDialerKeypadView.body.getter;
  v48 = v22;
  outlined destroy of ClarityUIKeypadView(&v39);
  return sub_1BBCE12C0(v37);
}

unint64_t lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition()
{
  result = lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition;
  if (!lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition)
  {
    type metadata accessor for MoveTransition();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V013PrimaryActionfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo_Md);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V04BackfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo_Md);
  v40 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = swift_allocObject();
  v15 = a1[1];
  v14[1] = *a1;
  v14[2] = v15;
  v14[3] = a1[2];
  *(v14 + 57) = *(a1 + 41);
  outlined init with copy of ClarityUIDialerKeypadView(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(Image, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGMd);
  Button.init(action:label:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(Image, Text)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGGMd);
  lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle();
  v34 = v13;
  View.buttonStyle<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v17 = swift_allocObject();
  v18 = a1[1];
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = a1[2];
  *(v17 + 57) = *(a1 + 41);
  outlined init with copy of ClarityUIDialerKeypadView(a1, v43);
  Button.init(action:label:)();
  lazy protocol witness table accessor for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle();
  v19 = v42;
  View.buttonStyle<A>(_:)();
  v16(v9, v6);
  v20 = v41;
  v21 = *(v40 + 16);
  v22 = v13;
  v23 = v35;
  v21(v41, v22, v35);
  v25 = v36;
  v24 = v37;
  v26 = *(v36 + 16);
  v27 = v38;
  v26(v37, v19, v38);
  v28 = v39;
  v21(v39, v20, v23);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V04BackfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AcAEADyQrqd__AaERd__lFQOyAR_AU013PrimaryActionfE0AWLLVQo_tMd);
  v26(&v28[*(v29 + 48)], v24, v27);
  v30 = *(v25 + 8);
  v30(v42, v27);
  v31 = *(v40 + 8);
  v31(v34, v23);
  v30(v24, v27);
  return (v31)(v41, v23);
}

uint64_t closure #1 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v3 = Image.init(systemName:)();
  v4 = [objc_opt_self() conversationKit];
  v11._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._object = 0x80000001BC4F8EB0;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v11);

  outlined copy of Text.Storage(v8._countAndFlagsBits, v8._object, 0);
  v9 = MEMORY[0x1E69E7CC0];

  outlined consume of Text.Storage(v8._countAndFlagsBits, v8._object, 0);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = v9;
  return result;
}

void ClarityUIDialerKeypadView.makeCall()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v3 = [v2 telephonyProvider];
  type metadata accessor for TUHandle();
  v4 = *(v0 + 24);
  v12 = *(v0 + 8);
  v13 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050](&aBlock, v5);
  v6 = TUHandle.__allocating_init(type:value:)(2, aBlock, v15);
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  [v7 setHandle_];
  [v7 setOriginatingUIType_];
  v8 = swift_allocObject();
  v9 = v1[1];
  *(v8 + 24) = *v1;
  *(v8 + 16) = v7;
  *(v8 + 40) = v9;
  *(v8 + 56) = v1[2];
  *(v8 + 65) = *(v1 + 41);
  v18 = partial apply for closure #1 in ClarityUIDialerKeypadView.makeCall();
  v19 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v17 = &block_descriptor_15;
  v10 = _Block_copy(&aBlock);
  v11 = v7;
  outlined init with copy of ClarityUIDialerKeypadView(v1, &v12);

  [v2 launchAppForDialRequest:v11 completion:v10];
  _Block_release(v10);
}

uint64_t closure #4 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v3 = Image.init(systemName:)();
  v4 = [objc_opt_self() conversationKit];
  v11._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._object = 0x80000001BC4F8E90;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v11);

  outlined copy of Text.Storage(v8._countAndFlagsBits, v8._object, 0);
  v9 = MEMORY[0x1E69E7CC0];

  outlined consume of Text.Storage(v8._countAndFlagsBits, v8._object, 0);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = v9;
  return result;
}

uint64_t closure #2 in closure #1 in ClarityUIDialerKeypadView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  v16 = v7;
  v15 = *(a3 + 24);
  v11 = v7;
  v12 = v6;
  v13 = *(a3 + 24);
  outlined init with copy of Transaction(&v16, v9);

  outlined init with copy of String(&v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050](&v14);
  MEMORY[0x1BFB20B10](a1, a2);
  v9[0] = v7;
  v9[1] = v6;
  v10 = *(a3 + 24);
  Binding.wrappedValue.setter();
  outlined destroy of Transaction(&v16);

  return outlined destroy of String(&v15);
}

void closure #1 in ClarityUIDialerKeypadView.makeCall()(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.clarityUI);
    v8 = a1;
    v9 = a2;
    outlined init with copy of ClarityUIDialerKeypadView(a3, v24);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    outlined destroy of ClarityUIDialerKeypadView(a3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v12 = 138412802;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2080;
      v15 = *(a3 + 24);
      v24[0] = *(a3 + 8);
      v24[1] = v15;
      v16 = v9;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
      MEMORY[0x1BFB20050](v22, v17);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22[0], v22[1], &v23);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

      *(v12 + 24) = v21;
      _os_log_impl(&dword_1BBC58000, v10, v11, "Unable to launch app for dial request: %@, phone number: %s, error: %s", v12, 0x20u);
      outlined destroy of NSObject?(v13);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ClarityUIDialerKeypadView.BackButtonStyle.makeBody(configuration:)(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v6 = type metadata accessor for PlatterButtonType();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ButtonStyleConfiguration();
  OUTLINED_FUNCTION_1();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = (*(v15 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v18[1] = a2(v16);
  a3();
  (*(v8 + 104))(v11, *MEMORY[0x1E697C450], v6);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

double ClarityUIDialerKeypadView.BarShape.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = [objc_opt_self() bezierPathWithRoundedRect:3 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, 40.0, 40.0}];
  v7 = [v6 CGPath];

  Path.init(_:)();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t static ClarityUIDialerKeypadView.BarShape.role.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6981F18];
  v3 = type metadata accessor for ShapeRole();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double protocol witness for Shape.path(in:) in conformance ClarityUIDialerKeypadView.BarShape@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  ClarityUIDialerKeypadView.BarShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ClarityUIDialerKeypadView.BarShape(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ClarityUIDialerKeypadView.BarShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ClarityUIDialerKeypadView.BarShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ClarityUIDialerKeypadView.BarShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape();

  return MEMORY[0x1EEDE4410](a1, v2);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClarityUIDialerKeypadView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ClarityUIDialerKeypadView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAA26_PreferenceWritingModifierVyAA36MultimodalChromeVisiblePreferenceKeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey> and conformance _PreferenceWritingModifier<A>, &_s7SwiftUI26_PreferenceWritingModifierVyAA023MultimodalChromeVisibleC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DynamicTypeSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<ClarityUIDialerKeypadView.BarShape> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy15ConversationKit25ClarityUIDialerKeypadViewV8BarShape33_800E451BA992F5BB88AE265BE36FA5DELLVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAA0E0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyACyAEyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadE0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadE0VtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape()
{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle()
{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle()
{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle);
  }

  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t a1, void *a2)
{
  v4 = specialized Array.count.getter(a1);
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a2;
  v25 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v4;
  while (1)
  {
LABEL_2:
    if (v5 == v4)
    {

      return;
    }

    if (v6)
    {
      v8 = MEMORY[0x1BFB22010](v5, v20);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(v25 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      break;
    }

    v11 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {

      v12 = v9;
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(v11 + 16))
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
        v14 = *(v11 + 40);

        v15 = NSObject._rawHashValue(seed:)(v14);
        v16 = ~(-1 << *(v11 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(v11 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v18 = *(*(v11 + 48) + 8 * v17);
          v19 = static NSObject.== infix(_:_:)();

          v15 = v17 + 1;
          if (v19)
          {

            v4 = v23;
            a2 = v24;
            v7 = v21;
            v6 = v22;
            goto LABEL_2;
          }
        }

        v4 = v23;
        a2 = v24;
        v7 = v21;
        v6 = v22;
      }

LABEL_16:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1, char a2, void *a3)
{
  v5 = *a1;
  v6 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    *a1 = v5;
  }

  v8 = *(v5 + 16);
  v28 = v5 + 32;
  v34[0] = v5 + 32;
  v34[1] = v8;
  v9 = v6;
  v10 = _minimumMergeRunLength(_:)(v8);
  if (v10 >= v8)
  {
    if (v8 >= 2)
    {
      v27 = v9;
      v16 = v9;
      v17 = -1;
      v18 = 1;
      v19 = (v5 + 32);
      do
      {
        v30 = v18;
        v31 = v17;
        v20 = *(v28 + 8 * v18);
        v29 = v19;
        do
        {
          v21 = *v19;
          v22 = swift_allocObject();
          *(v22 + 16) = v16;
          *(swift_allocObject() + 16) = v16;
          v23 = v16;

          v24 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v20, v21, a2 & 1, partial apply for implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:), v22, partial apply for implicit closure #4 in implicit closure #3 in closure #2 in PeoplePickerViewController.preferredRecipient(for:));

          if ((v24 & 1) == 0)
          {
            break;
          }

          v25 = *v19;
          v20 = v19[1];
          *v19 = v20;
          v19[1] = v25;
          --v19;
        }

        while (!__CFADD__(v17++, 1));
        v18 = v30 + 1;
        v19 = v29 + 1;
        v17 = v31 - 1;
      }

      while (v30 + 1 != v8);

      v9 = v27;
    }
  }

  else
  {
    v11 = v10;
    v12 = (v8 >> 1);
    UninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5(v8 >> 1);
    v33[0] = v14;
    v33[1] = v12;
    v15 = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v33, v35, v34, v11, a2 & 1, v15);
    if (v3)
    {
      *((UninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      specialized ContiguousArray._endMutation()();

      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  specialized ContiguousArray._endMutation()();
}

ConversationKit::PeoplePickerStyle_optional __swiftcall PeoplePickerStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PeoplePickerStyle@<X0>(uint64_t *a1@<X8>)
{
  result = PeoplePickerStyle.rawValue.getter();
  *a1 = result;
  return result;
}

id PeoplePickerViewController.FakeFooterView.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action];
  *v6 = a1;
  *(v6 + 1) = a2;
  v11 = v5;
  v7 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v8, v9, v7, v11, v2);
}

id PeoplePickerViewController.FakeFooterView.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action);
  *v3 = a1;
  v3[1] = a2;
  v8 = type metadata accessor for PeoplePickerViewController.FakeFooterView();
  v4 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v5, v6, v4, v2, v8);
}

id PeoplePickerViewController.FakeFooterView.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeoplePickerViewController.FakeFooterView();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

uint64_t PeoplePickerViewController.FakeFooterView.isHidden.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PeoplePickerViewController.FakeFooterView();
  v3 = objc_msgSendSuper2(&v5, sel_setHidden_, a1 & 1);
  return (*&v1[OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action])(v3);
}

id PeoplePickerViewController.FakeFooterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PeoplePickerViewController.FakeFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TPPillView.__allocating_init(title:frame:theme:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = MEMORY[0x1BFB209B0](a1, a2);

  v16 = [v14 initWithTitle:v15 frame:a3 theme:{a4, a5, a6, a7}];

  return v16;
}

id PeoplePickerViewController.navigationSubtitle.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 2)
  {
    return 0;
  }

  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3A0))();
  if (!v2 || (v3 = outlined bridged method (ob) of @objc TUConversationActivity.concatenatedMetadataDescription.getter(v2, &selRef_concatenatedMetadataDescription), !v4))
  {
    v5 = (*((*v1 & *v0) + 0x388))();
    v6 = v7;

    if (v6)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v5 = v3;
  v6 = v4;
LABEL_6:
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setNumberOfLines_];
  [v8 setClipsToBounds_];
  [v8 setLineBreakMode_];
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_opt_self() labelColor];
  [v8 setTextColor_];

  v11 = [objc_opt_self() conversationKit];
  v20._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4F9500;
  v13._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA940;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v5;
  *(v15 + 40) = v6;
  v16 = static String.localizedStringWithFormat(_:_:)();
  v18 = v17;

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v16, v18, v8);
  return v8;
}

uint64_t key path getter for PeoplePickerViewController.callerIDs : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.callerIDs : PeoplePickerViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2C8);

  return v2(v3);
}

void PeoplePickerViewController.callerIDs.didset(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs;
  swift_beginAccess();
  v5 = *&v1[v4];

  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8TUHandleC_Tt1g5(a1, v5);
  LOBYTE(a1) = v6;

  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.peoplePicker);
    v8 = v2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd);
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Updating callerIDs to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }
  }
}

uint64_t PeoplePickerViewController.callerIDs.getter()
{
  return PeoplePickerViewController.callerIDs.getter();
}

{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t PeoplePickerViewController.callerIDs.setter()
{
  return PeoplePickerViewController.callerIDs.setter();
}

{
  OUTLINED_FUNCTION_21_17();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v0(v4);
}

uint64_t PeoplePickerViewController.callerIDs.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_44_0();
}

uint64_t key path getter for PeoplePickerViewController.selectedCallerID : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.selectedCallerID : PeoplePickerViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);
  v4 = *a1;
  return v3(v2);
}

void PeoplePickerViewController.selectedCallerID.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  if (one-time initialization token for peoplePicker != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.peoplePicker);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = *&v2[v4];
    if (v15)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v16 = v15;
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Updating selectedCallerID to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v21 = *&v2[v4];
  v22 = v21;
  PeoplePickerViewController.updatePillView(callerID:)(v21);
}

void *PeoplePickerViewController.selectedCallerID.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerViewController.selectedCallerID.setter()
{
  PeoplePickerViewController.selectedCallerID.setter();
}

{
  OUTLINED_FUNCTION_21_17();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
  v0(v4);
}

uint64_t PeoplePickerViewController.selectedCallerID.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_44_0();
}

void *PeoplePickerViewController.currentConversationIsAVLess.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  if (((*(*static Defaults.shared + 904))() & 1) == 0)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
  if (result)
  {
    return ([result avMode] == 0);
  }

  return result;
}

void *PeoplePickerViewController.smsAccount.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount);
  v3 = v2;
  if (v2 == 1)
  {
    closure #1 in PeoplePickerViewController.smsAccount.getter();
    v3 = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;
    outlined consume of IMAccount??(v5);
  }

  outlined copy of IMAccount??(v2);
  return v3;
}

void closure #1 in PeoplePickerViewController.smsAccount.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() smsService];
    v3 = [v1 accountsForService_];

    if (v3)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Array.count.getter(v4))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000001) == 0, v4);
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](0, v4);
        }

        else
        {
          v5 = *(v4 + 32);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PeoplePickerViewController.maxParticipantLimit.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit);
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit + 8) != 1)
  {
    return *v1;
  }

  result = closure #1 in PeoplePickerViewController.maxParticipantLimit.getter();
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t closure #1 in PeoplePickerViewController.maxParticipantLimit.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD000000000000013, 0x80000001BC4F94E0, v0);

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  outlined init with copy of LinkShareCoordinatorProtocol?(&v8, &v6, &_sypSgMd);
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    outlined destroy of TapInteractionHandler?(&v8, &_sypSgMd);
    return 32;
  }

  v3 = [v5 unsignedIntegerValue];

  outlined destroy of TapInteractionHandler?(&v8, &_sypSgMd);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    outlined destroy of TapInteractionHandler?(&v6, &_sypSgMd);
    goto LABEL_12;
  }

  return v3;
}

uint64_t key path getter for PeoplePickerViewController.delegate : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.delegate : PeoplePickerViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x378);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t PeoplePickerViewController.delegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PeoplePickerViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate;
  OUTLINED_FUNCTION_3_5();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PeoplePickerViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path getter for PeoplePickerViewController.appName : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x388))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.appName : PeoplePickerViewController(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x390);

  return v4(v2, v3);
}

void PeoplePickerViewController.appName.didset(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  swift_beginAccess();
  v6 = v5[1];
  if (!v6)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a2 || (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_10:
    PeoplePickerViewController.updateNavigationTitle()();
  }
}

void PeoplePickerViewController.updateNavigationTitle()()
{
  v1 = v0;
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    v26 = [v0 navigationItem];
    v2 = [objc_opt_self() conversationKit];
    v25 = 0xE000000000000000;
    v3 = 0x454341465F57454ELL;
    v6 = 0xEC000000454D4954;
    v4 = 0x61737265766E6F43;
    v5 = 0xEF74694B6E6F6974;
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 1)
  {
    v26 = [v0 navigationItem];
    v2 = [objc_opt_self() conversationKit];
    v25 = 0xE000000000000000;
    v3 = 0x504F45505F444441;
    v4 = 0x61737265766E6F43;
    v5 = 0xEF74694B6E6F6974;
    v6 = 0xEA0000000000454CLL;
LABEL_5:
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = 0;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v2, v7, *(&v25 - 1));

    outlined bridged method (mbnn) of @objc UINavigationItem.title.setter(v9._countAndFlagsBits, v9._object, v26);
    goto LABEL_9;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = [objc_opt_self() conversationKit];
  v28._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4F98F0;
  v13._countAndFlagsBits = 0xD000000000000017;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v28);

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v15._countAndFlagsBits, v15._object, v10);
  v16 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(2u).super.isa;

  [v10 setFont_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BAC30;
  *(v18 + 32) = v10;
  v19 = v10;
  UIStackView.__allocating_init(arrangedSubviews:)(v20, v18);
  v22 = v21;
  v23 = PeoplePickerViewController.navigationSubtitle.getter();
  if (v23)
  {
    v24 = v23;
    [v22 setSpacing_];
    [v22 addArrangedSubview_];
  }

  [v22 setAxis_];
  [v22 setAlignment_];
  [v22 setDistribution_];
  v26 = [v1 navigationItem];
  [v26 setTitleView_];

LABEL_9:
}

uint64_t PeoplePickerViewController.appName.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t PeoplePickerViewController.appName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  OUTLINED_FUNCTION_3_5();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  PeoplePickerViewController.appName.didset(v6, v7);
}

uint64_t PeoplePickerViewController.appName.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = v4[1];
  v3[3] = *v4;
  v3[4] = v5;

  return OUTLINED_FUNCTION_44_0();
}

void PeoplePickerViewController.appName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    PeoplePickerViewController.appName.setter(v3, v4);
  }

  else
  {
    PeoplePickerViewController.appName.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t key path getter for PeoplePickerViewController.stagedActivity : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.stagedActivity : PeoplePickerViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3A8);
  v4 = *a1;
  return v3(v2);
}

void PeoplePickerViewController.stagedActivity.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity), v6 = v5, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0))
  {
LABEL_6:
    PeoplePickerViewController.updateNavigationTitle()();
  }
}

void *PeoplePickerViewController.stagedActivity.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t PeoplePickerViewController.stagedActivity.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_44_0();
}

void PeoplePickerViewController.selectedCallerID.modify(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

uint64_t key path getter for PeoplePickerViewController.initialRecipientDestinations : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3B8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.initialRecipientDestinations : PeoplePickerViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C0);

  return v2(v3);
}

void PeoplePickerViewController.initialRecipientDestinations.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5();
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v5 = *(v2 + 16);

    v6 = 0;
LABEL_3:
    v7 = v2 + 40 + 16 * v6;
    while (v5 != v6)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      ++v6;
      v8 = v7 + 16;

      v9 = PeoplePickerViewController.composeRecipient(for:)();

      v7 = v8;
      if (v9)
      {
        MEMORY[0x1BFB20CC0](v10);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v17;
        goto LABEL_3;
      }
    }

    v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v11 setRecipients_];

    v13 = specialized Array.count.getter(v4);
    for (i = 0; v13 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB22010](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v4 + 8 * i + 32);
      }

      v16 = v15;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      PeoplePickerViewController.addRecipient(_:)(v15);
    }
  }
}

id PeoplePickerViewController.composeRecipient(for:)()
{
  v0 = MEMORY[0x1BFB209B0]();
  v1 = outlined bridged method (ob) of @objc TUConversationActivity.concatenatedMetadataDescription.getter(v0, &selRef_stringByRemovingWhitespace);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 contactStore];

  v8 = MEMORY[0x1BFB209B0](v3, v4);
  v9 = [v7 contactForDestinationId_];

  v10 = MEMORY[0x1BFB209B0](v3, v4);
  LOBYTE(v8) = [v10 destinationIdIsEmailAddress];

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v13 = MEMORY[0x1BFB209B0](v3, v4);
    v14 = [v13 destinationIdIsPhoneNumber];

    if (v14)
    {
      v11 = 1;
    }

    else
    {
      v11 = 5;
    }
  }

  v15 = objc_allocWithZone(MEMORY[0x1E6996408]);
  return @nonobjc CNComposeRecipient.init(contact:address:kind:)(v9, v3, v4, v11);
}

void PeoplePickerViewController.addRecipient(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v5;
    v21[0] = v9;
    *v8 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[PeoplePickerViewController] Adding recipient: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  v14 = [objc_opt_self() sharedManager];
  CNComposeRecipient.idsDestinations()();
  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x3D0))(v16))
  {
    v17 = 63;
  }

  else
  {
    v17 = 47;
  }

  [v14 beginQueryWithDestinations:v15.super.isa services:{v17, v20, v21[0]}];

  PeoplePickerViewController.currentRecipientsAddresses()();
  v18 = PeoplePickerViewController.callFilterPolicy(for:)();

  v19 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictionPolicy;
  swift_beginAccess();
  *(v2 + v19) = v18;

  PeoplePickerViewController.updateState()();
}

uint64_t PeoplePickerViewController.initialRecipientDestinations.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_44_0();
}

void PeoplePickerViewController.callerIDs.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (a2)
  {

    a3(v6);
  }

  else
  {
    a3(v5);
  }

  free(v4);
}

uint64_t PeoplePickerViewController.includeMessagesInIDSQueries.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 2)
  {
    return 1;
  }

  else
  {
    return PeoplePickerViewController.currentConversationIsAVLess.getter();
  }
}

unint64_t PeoplePickerViewController.defaultActionBarButtonStyle.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    return 2;
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 1)
  {
    return PeoplePickerViewController.currentConversationIsAVLess.getter() & 1;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  if ((*(*static Defaults.shared + 904))())
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

void PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v135 = a6;
  v142 = a5;
  v143 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v132 = &v127 - v12;
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v145 = v13;
  v146 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v131 = v15;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v136 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v127 - v18;
  LODWORD(v141) = *a1;
  v19 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
  v20 = objc_opt_self();
  *(v7 + v19) = [v20 systemTealColor];
  v21 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
  *(v7 + v21) = [v20 systemGrayColor];
  v22 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
  *(v7 + v22) = [v20 systemGreenColor];
  v23 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictedRecipientTintColor;
  *(v7 + v23) = [v20 systemRedColor];
  v24 = v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_constants;
  *v24 = xmmword_1BC4C33E0;
  *(v24 + 16) = 0x4034000000000000;
  v25 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager;
  *(v7 + v25) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v26 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPPillView);
  *(v7 + v26) = OUTLINED_FUNCTION_3_58();
  v27 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter;
  *(v7 + v27) = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    v28 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients) = v28;
  v29 = MEMORY[0x1E69E7CC0];
  v30 = specialized Array.count.getter(MEMORY[0x1E69E7CC0]);
  v31 = MEMORY[0x1E69E7CD0];
  if (v30)
  {
    v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients) = v32;
  v33 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v31;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations) = v31;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations) = v31;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v31;
  v34 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher;
  *(v7 + v34) = [objc_allocWithZone(FaceTimeAccountFetcher) init];
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs) = v29;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = 0;
  v35 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount) = 1;
  v36 = v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit;
  *v36 = 0;
  *(v36 + 8) = 1;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v37 = (v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations) = v29;
  v39 = (v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler);
  *v39 = 0;
  v39[1] = 0;
  v40 = v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0;
  v41 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *(v7 + v41) = PassthroughSubject.init()();
  v43 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject;
  swift_allocObject();
  *(v7 + v43) = PassthroughSubject.init()();
  v44 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject;
  v144 = v42;
  swift_allocObject();
  *(v7 + v44) = PassthroughSubject.init()();
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) = v141;
  v45 = *(v7 + v35);
  *(v7 + v35) = a3;
  v46 = a3;

  OUTLINED_FUNCTION_3_5();
  v47 = *(v7 + v38);
  *(v7 + v38) = a4;
  v129 = a4;

  if (v143)
  {
    *(v7 + v33) = v143;
  }

  v48 = (v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_setPreventsApplicationTerminationWhenModal);
  v49 = v135;
  *v48 = v142;
  v48[1] = v49;
  v50 = objc_allocWithZone(MEMORY[0x1E69963C0]);

  v51 = [v50 initWithSearchType_];
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) = v51;
  type metadata accessor for PeoplePickerViewModel();
  OUTLINED_FUNCTION_37_0();
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel) = PeoplePickerViewModel.init(activeConversation:)(a3);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  v128 = v46;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictionPolicy) = Dictionary.init(dictionaryLiteral:)();
  v52 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView) = v52;
  v53 = [objc_opt_self() buttonWithType_];
  v54 = OUTLINED_FUNCTION_47_8(v53, OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_audioButton);
  v55 = OUTLINED_FUNCTION_47_8(v54, OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_videoButton);
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addPeopleButton) = v55;
  v56 = type metadata accessor for PeoplePickerViewController();
  v149 = v7;
  v150 = v56;
  OUTLINED_FUNCTION_3_0();
  v59 = objc_msgSendSuper2(v57, v58);
  v60 = [objc_allocWithZone(type metadata accessor for iOSPeoplePickerAddButtonHandler()) init];
  v61 = &v59[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler];
  *v61 = v60;
  *(v61 + 1) = &protocol witness table for iOSPeoplePickerAddButtonHandler;
  swift_unknownObjectRelease();
  if (*v61)
  {
    v62 = *(v61 + 1);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_20();
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v65 = *(v62 + 64);
    swift_unknownObjectRetain();

    v65(partial apply for closure #1 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:), v64, ObjectType, v62);
    swift_unknownObjectRelease();

    if (*v61)
    {
      v66 = *(v61 + 1);
      v67 = swift_getObjectType();
      v68 = *(v66 + 16);
      swift_unknownObjectRetain();
      v69 = v59;
      v68(v59, v67, v66);
      swift_unknownObjectRelease();
      if (*v61)
      {
        v70 = *(v61 + 1);
        v71 = swift_getObjectType();
        v72 = *&v69[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController];
        v73 = *(v70 + 40);
        swift_unknownObjectRetain();
        v74 = v72;
        v73(v72, v71, v70);
        swift_unknownObjectRelease();
      }
    }
  }

  v147[0] = *&v59[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject];

  v75 = v131;
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v130 = objc_opt_self();
  v76 = [v130 mainRunLoop];
  v148 = v76;
  v142 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v77 = v132;
  v78 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v141 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  v140 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  v139 = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v82 = v133;
  OUTLINED_FUNCTION_12_29();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v77, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v83 = *(v146 + 8);
  v146 += 8;
  v138 = v83;
  v83(v75, v145);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_24();
  v84 = swift_allocObject();
  *(v84 + 16) = partial apply for closure #2 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:);
  *(v84 + 24) = v147;
  v137 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<PassthroughSubject<(), Never>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd);
  v85 = v59;
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_42_12();

  v136 = *(v136 + 8);
  v86 = OUTLINED_FUNCTION_40_2();
  v87(v86);
  *&v85[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer] = v82;

  v147[0] = *&v85[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject];

  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v88 = v130;
  v89 = [v130 mainRunLoop];
  v148 = v89;
  v90 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v142);
  OUTLINED_FUNCTION_12_29();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v77, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v138(v75, v145);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_24();
  v93 = swift_allocObject();
  *(v93 + 16) = partial apply for closure #3 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:);
  *(v93 + 24) = v147;
  v94 = Publisher<>.sink(receiveValue:)();

  v95 = OUTLINED_FUNCTION_40_2();
  (v136)(v95);
  *&v85[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer] = v94;

  v147[0] = *&v85[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject];

  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v96 = [v88 mainRunLoop];
  v148 = v96;
  v97 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v142);
  OUTLINED_FUNCTION_12_29();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v77, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v138(v75, v145);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_36_13();

  OUTLINED_FUNCTION_24();
  v100 = swift_allocObject();
  *(v100 + 16) = partial apply for closure #4 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:);
  *(v100 + 24) = v147;
  v101 = Publisher<>.sink(receiveValue:)();

  v102 = OUTLINED_FUNCTION_40_2();
  (v136)(v102);
  *&v85[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer] = v101;

  v103 = v143;
  if (!v143)
  {
    goto LABEL_31;
  }

  if (!*(v143 + 16))
  {

LABEL_31:

    return;
  }

  v104 = v143 + 56;
  v105 = 1 << *(v143 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & *(v143 + 56);
  v108 = (v105 + 63) >> 6;

  v109 = 0;
  v110 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v111 = v109;
    if (!v107)
    {
      break;
    }

LABEL_22:
    v112 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v113 = (*(v103 + 48) + ((v109 << 10) | (16 * v112)));
    v114 = *v113;
    v115 = v113[1];

    v116 = MEMORY[0x1BFB209B0](v114, v115);
    v117 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v117)
    {
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v110 = v123;
      }

      v121 = *(v110 + 16);
      if (v121 >= *(v110 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v110 = v124;
      }

      *(v110 + 16) = v121 + 1;
      v122 = v110 + 16 * v121;
      *(v122 + 32) = v118;
      *(v122 + 40) = v120;
      v103 = v143;
    }

    else
    {
    }
  }

  while (1)
  {
    v109 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v109 >= v108)
    {

      v125 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v110);
      v126 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
      OUTLINED_FUNCTION_3_5();
      *&v85[v126] = v125;

      PeoplePickerViewController.scheduleIDSQuery()();
      goto LABEL_31;
    }

    v107 = *(v104 + 8 * v109);
    ++v111;
    if (v107)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void closure #1 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) addRecipient_];
  }
}

void PeoplePickerViewController.scheduleIDSQuery()()
{
  v0 = [objc_opt_self() sharedManager];
  swift_beginAccess();

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v0 beginBatchQueryWithDestinations_];
}

void PeoplePickerViewController.scheduleIDSQueryForGroups()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
  swift_beginAccess();
  v2 = *(v0 + v1);

  specialized Set.union<A>(_:)(v3, v2);
  *(v0 + v1) = v4;

  v5 = [objc_opt_self() sharedManager];

  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))(v7))
  {
    v8 = 63;
  }

  else
  {
    v8 = 47;
  }

  [v5 beginBatchQueryWithDestinations:v6.super.isa services:v8];
}

void PeoplePickerViewController.scheduleIDSCachedQuery()()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
  swift_beginAccess();
  v3 = *(v0 + v2);

  specialized Set.union<A>(_:)(v4, v3);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))(v6))
  {
    v7 = 63;
  }

  else
  {
    v7 = 47;
  }

  [v1 beginCachedQueryWithDestinations:v5.super.isa services:v7];
}

void PeoplePickerViewController.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
  v3 = objc_opt_self();
  *(v1 + v2) = [v3 systemTealColor];
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
  *(v1 + v4) = [v3 systemGrayColor];
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
  *(v1 + v5) = [v3 systemGreenColor];
  v6 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictedRecipientTintColor;
  *(v1 + v6) = [v3 systemRedColor];
  v7 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_constants;
  *v7 = xmmword_1BC4C33E0;
  *(v7 + 16) = 0x4034000000000000;
  v8 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v9 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPPillView);
  *(v1 + v9) = OUTLINED_FUNCTION_3_58();
  v10 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter;
  *(v1 + v10) = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients) = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = specialized Array.count.getter(MEMORY[0x1E69E7CC0]);
  v14 = MEMORY[0x1E69E7CD0];
  if (v13)
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients) = v15;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v14;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations) = v14;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations) = v14;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v14;
  v16 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher;
  *(v1 + v16) = [objc_allocWithZone(FaceTimeAccountFetcher) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs) = v12;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount) = 1;
  v17 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations) = v12;
  v19 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler);
  *v19 = 0;
  v19[1] = 0;
  v20 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *(v1 + v21) = PassthroughSubject.init()();
  v22 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v22) = PassthroughSubject.init()();
  v23 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v23) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = 0;
  OUTLINED_FUNCTION_20_17();
  __break(1u);
}

id PeoplePickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void PeoplePickerViewController.init(nibName:bundle:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
  v3 = objc_opt_self();
  *(v1 + v2) = [v3 systemTealColor];
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
  *(v1 + v4) = [v3 systemGrayColor];
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
  *(v1 + v5) = [v3 systemGreenColor];
  v6 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictedRecipientTintColor;
  *(v1 + v6) = [v3 systemRedColor];
  v7 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_constants;
  *v7 = xmmword_1BC4C33E0;
  *(v7 + 16) = 0x4034000000000000;
  v8 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v9 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPPillView);
  *(v1 + v9) = OUTLINED_FUNCTION_3_58();
  v10 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter;
  *(v1 + v10) = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients) = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = specialized Array.count.getter(MEMORY[0x1E69E7CC0]);
  v14 = MEMORY[0x1E69E7CD0];
  if (v13)
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients) = v15;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v14;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations) = v14;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations) = v14;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v14;
  v16 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher;
  *(v1 + v16) = [objc_allocWithZone(FaceTimeAccountFetcher) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs) = v12;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount) = 1;
  v17 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations) = v12;
  v19 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler);
  *v19 = 0;
  v19[1] = 0;
  v20 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *(v1 + v21) = PassthroughSubject.init()();
  v22 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v22) = PassthroughSubject.init()();
  v23 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v23) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static PeoplePickerViewController.preferredModalPresentationStyle(trailCollection:)(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  v2 = 1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  if (v1 == 5)
  {
    return -2;
  }

  else
  {
    return v2;
  }
}

Swift::Void __swiftcall PeoplePickerViewController.viewDidLoad()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) addDelegate:v0 queue:0];
  PeoplePickerViewController.initializeMeHandles()();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setPreservesSuperviewLayoutMargins_];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() systemBackgroundColor];
      [v5 setBackgroundColor_];

      PeoplePickerViewController.setUpStackView()();
      v7 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView;
      v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView);
      PeoplePickerViewController.setUpPillView(containerView:)(v8);

      v9 = *(v0 + v7);
      PeoplePickerViewController.setUpSearchControllerView(containerView:)(v9);

      PeoplePickerViewController.refreshCallerIDPicker()();
      v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2D8))();
      PeoplePickerViewController.updatePillView(callerID:)(v10);

      v11 = [objc_opt_self() defaultCenter];
      [v11 addObserver:v0 selector:sel_handleIDSStatusChangedWithNotification_ name:*MEMORY[0x1E69D8FA0] object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void PeoplePickerViewController.initializeMeHandles()()
{
  v1 = [objc_opt_self() sharedController];
  [v1 blockUntilConnected];

  v2 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CD0];
  v3 = [objc_opt_self() sharedInstance];
  if (!v3 || (v4 = v3, v5 = [objc_opt_self() facetimeService], v6 = objc_msgSend(v4, sel_accountsForService_, v5), v4, v5, !v6))
  {
LABEL_17:
    *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v2;

    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Array.count.getter(v7);
  if (!v8)
  {

    goto LABEL_17;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB22010](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if ([v11 registrationStatus] == 5)
    {
      outlined bridged method (pb) of @objc IMAccount.strippedLogin.getter(v12);
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = String.lowercased()();

      specialized Set._Variant.insert(_:)(v16, v15._countAndFlagsBits, v15._object);
    }

    else
    {
    }

    ++v10;
    if (v13 == v9)
    {

      v2 = v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void PeoplePickerViewController.setUpStackView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView] setAxis_];
  [*&v0[v1] setAlignment_];
  [*&v0[v1] setDistribution_];
  [*&v0[v1] setPreservesSuperviewLayoutMargins_];
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 safeAreaLayoutGuide];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 keyboardLayoutGuide];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA7F0;
  v11 = [*&v0[v1] topAnchor];
  v12 = [v6 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [*&v0[v1] leadingAnchor];
  v15 = [v6 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v6 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [*&v0[v1] bottomAnchor];
  v21 = [v9 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  v23 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints_];
}

id PeoplePickerViewController.setUpPillView(containerView:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView);
  [v4 setDelegate_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addArrangedSubview_];

  return [a1 setCustomSpacing:v4 afterView:8.0];
}

void PeoplePickerViewController.setUpSearchControllerView(containerView:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v4 setDelegate_];

    v7 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5();
    outlined bridged method (mbnn) of @objc CNAutocompleteSearchController.otherRecipientAddresses.setter(v7, v4);
    [v4 setExpandRecipientsInNamedGroups_];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = type metadata accessor for PeoplePickerViewController.FakeFooterView();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action];
    *v11 = partial apply for closure #1 in PeoplePickerViewController.setUpSearchControllerView(containerView:);
    v11[1] = v8;
    v45.receiver = v10;
    v45.super_class = v9;
    v12 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v4 setFooterView_];

    [v6 setPreservesSuperviewLayoutMargins_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addChildViewController_];
    [a1 addArrangedSubview_];
    v13 = [v4 didMoveToParentViewController_];
    v14 = MEMORY[0x1E69E7D40];
    v15 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x3D8))(v13);
    v16 = objc_allocWithZone(type metadata accessor for PeoplePickerActionBar());
    v17 = PeoplePickerActionBar.init(frame:buttonsStyle:)(v15);
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v18 = *((*v14 & *v17) + 0x118);
    v19 = swift_unknownObjectRetain();
    v18(v19, &protocol witness table for PeoplePickerViewController);
    [a1 addArrangedSubview_];
    v44 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BC4BC370;
    v21 = [v17 leadingAnchor];
    v22 = [a1 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v20 + 32) = v23;
    v24 = [v17 trailingAnchor];
    v25 = [a1 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v20 + 40) = v26;
    v27 = [v17 bottomAnchor];
    v28 = [a1 &off_1E7FE9D20 + 5];
    v29 = [v27 constraintEqualToAnchor_];

    *(v20 + 48) = v29;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v44 activateConstraints_];

    v31 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
    *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = v17;
    v32 = v17;

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BC370;
    v34 = [v6 leadingAnchor];
    v35 = [a1 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v33 + 32) = v36;
    v37 = [v6 bottomAnchor];
    v38 = [v32 topAnchor];

    v39 = [v37 constraintEqualToAnchor_];
    *(v33 + 40) = v39;
    v40 = [v6 trailingAnchor];
    v41 = [a1 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    *(v33 + 48) = v42;
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v44 activateConstraints_];
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